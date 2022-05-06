; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi3660.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3660.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_hi3660_clk_crgctrl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-crgctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_crgctrl_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_hi3660__162_637_hi3660_clk_init1 = internal global ptr @hi3660_clk_init, section ".initcall1.init", align 4
@clk_crgctrl_data = internal unnamed_addr global ptr null, align 4
@hi3660_fixed_rate_clks = internal constant [15 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.1, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.2, ptr null, i32 0, i32 128000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.3, ptr null, i32 0, i32 1600000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.4, ptr null, i32 0, i32 1866000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.5, ptr null, i32 0, i32 -1414967296 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.6, ptr null, i32 0, i32 1290000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.7, ptr null, i32 0, i32 245760000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.8, ptr null, i32 0, i32 20000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.9, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.10, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.11, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.12, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.13, ptr null, i32 0, i32 480000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.14, ptr null, i32 0, i32 10000000 }], align 4
@.str = private unnamed_addr constant [10 x i8] c"clkin_sys\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"clkin_ref\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clk_fll_src\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"clk_ppll0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"clk_ppll1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"clk_ppll2\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"clk_ppll3\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"clk_scpll\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"clk_uart0_dbg\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"clk_uart6\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"osc19m\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"clk_480m\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"clk_inv\00", align 1
@hi3660_clk_driver = internal global %struct.platform_driver { ptr @hi3660_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3660_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"hi3660-clk\00", align 1
@hi3660_clk_match_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-crgctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_crgctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-pctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_pctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-pmuctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_pmuctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-sctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_sctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-iomcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_iomcu_init }, %struct.of_device_id zeroinitializer], align 4
@hi3660_crgctrl_gate_sep_clks = internal constant [62 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 141, ptr @.str.17, ptr @.str, i32 4, i32 0, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.18, ptr @.str.19, i32 4, i32 0, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.20, ptr @.str.19, i32 4, i32 0, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.21, ptr @.str.22, i32 4, i32 0, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.23, ptr @.str.24, i32 4, i32 16, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.25, ptr @.str.24, i32 4, i32 16, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.26, ptr @.str.24, i32 4, i32 16, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.27, ptr @.str.24, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.28, ptr @.str.24, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.29, ptr @.str.24, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.30, ptr @.str.24, i32 4, i32 16, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.31, ptr @.str.24, i32 4, i32 16, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.32, ptr @.str.24, i32 4, i32 16, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.33, ptr @.str.24, i32 4, i32 16, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 41, ptr @.str.34, ptr @.str.24, i32 4, i32 16, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 42, ptr @.str.35, ptr @.str.24, i32 4, i32 16, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 43, ptr @.str.36, ptr @.str.24, i32 4, i32 16, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 44, ptr @.str.37, ptr @.str.24, i32 4, i32 16, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 45, ptr @.str.38, ptr @.str.24, i32 4, i32 16, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 46, ptr @.str.39, ptr @.str.24, i32 4, i32 16, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 47, ptr @.str.40, ptr @.str.24, i32 4, i32 16, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 48, ptr @.str.41, ptr @.str.24, i32 4, i32 16, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 49, ptr @.str.42, ptr @.str.43, i32 4, i32 16, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.44, ptr @.str.43, i32 4, i32 16, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 51, ptr @.str.45, ptr @.str.24, i32 4, i32 16, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 52, ptr @.str.46, ptr @.str.24, i32 4, i32 16, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 53, ptr @.str.47, ptr @.str.43, i32 4, i32 16, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 54, ptr @.str.48, ptr @.str.49, i32 4, i32 16, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 55, ptr @.str.50, ptr @.str.49, i32 4, i32 32, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 56, ptr @.str.51, ptr @.str.52, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 57, ptr @.str.53, ptr @.str.54, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 58, ptr @.str.55, ptr @.str.56, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.57, ptr @.str.54, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 60, ptr @.str.58, ptr @.str.56, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 61, ptr @.str.59, ptr @.str.49, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 62, ptr @.str.60, ptr @.str.19, i32 4, i32 48, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 142, ptr @.str.61, ptr @.str.62, i32 4, i32 48, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 143, ptr @.str.63, ptr @.str.64, i32 4, i32 48, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 63, ptr @.str.65, ptr @.str.24, i32 4, i32 48, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 64, ptr @.str.66, ptr @.str.67, i32 4, i32 48, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 65, ptr @.str.68, ptr @.str.69, i32 4, i32 48, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 66, ptr @.str.70, ptr @.str.71, i32 4, i32 48, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 67, ptr @.str.67, ptr @.str.72, i32 4, i32 48, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 68, ptr @.str.73, ptr @.str.74, i32 4, i32 48, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 69, ptr @.str.75, ptr @.str, i32 4, i32 48, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 70, ptr @.str.76, ptr @.str, i32 4, i32 48, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 71, ptr @.str.77, ptr @.str, i32 4, i32 48, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 72, ptr @.str.78, ptr @.str, i32 4, i32 48, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 73, ptr @.str.79, ptr @.str.80, i32 4, i32 64, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 74, ptr @.str.81, ptr @.str.52, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 75, ptr @.str.82, ptr @.str.83, i32 4, i32 64, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 76, ptr @.str.84, ptr @.str.85, i32 4, i32 64, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 151, ptr @.str.86, ptr @.str.87, i32 4, i32 80, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 152, ptr @.str.88, ptr @.str.87, i32 4, i32 80, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 153, ptr @.str.89, ptr @.str.87, i32 4, i32 80, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 77, ptr @.str.90, ptr @.str.19, i32 2052, i32 80, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 78, ptr @.str.91, ptr @.str.24, i32 4, i32 80, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 79, ptr @.str.92, ptr @.str.24, i32 4, i32 80, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 80, ptr @.str.93, ptr @.str.94, i32 4, i32 1056, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 81, ptr @.str.95, ptr @.str.94, i32 4, i32 1056, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 82, ptr @.str.96, ptr @.str, i32 4, i32 1056, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 83, ptr @.str.97, ptr @.str.94, i32 4, i32 1056, i8 9, i8 0, ptr null }], align 4
@hi3660_crgctrl_gate_clks = internal constant [22 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 84, ptr @.str.98, ptr @.str.99, i32 4, i32 240, i8 6, i8 2, ptr null }, %struct.hisi_gate_clock { i32 85, ptr @.str.100, ptr @.str.101, i32 4, i32 240, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 86, ptr @.str.102, ptr @.str.103, i32 4, i32 240, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 145, ptr @.str.104, ptr @.str.105, i32 4, i32 240, i8 15, i8 2, ptr null }, %struct.hisi_gate_clock { i32 144, ptr @.str.106, ptr @.str.107, i32 4, i32 244, i8 0, i8 2, ptr null }, %struct.hisi_gate_clock { i32 87, ptr @.str.108, ptr @.str.109, i32 4, i32 244, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 88, ptr @.str.110, ptr @.str.111, i32 4, i32 244, i8 2, i8 2, ptr null }, %struct.hisi_gate_clock { i32 89, ptr @.str.112, ptr @.str.113, i32 4, i32 244, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 90, ptr @.str.114, ptr @.str.115, i32 4, i32 244, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 91, ptr @.str.116, ptr @.str.117, i32 4, i32 244, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 92, ptr @.str.118, ptr @.str.119, i32 4, i32 244, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 93, ptr @.str.120, ptr @.str.119, i32 4, i32 244, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 94, ptr @.str.121, ptr @.str.119, i32 4, i32 244, i8 11, i8 2, ptr null }, %struct.hisi_gate_clock { i32 95, ptr @.str.122, ptr @.str.119, i32 4, i32 244, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 96, ptr @.str.123, ptr @.str.124, i32 4, i32 248, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 97, ptr @.str.125, ptr @.str.5, i32 4, i32 248, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 98, ptr @.str.126, ptr @.str.127, i32 4, i32 248, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 154, ptr @.str.128, ptr @.str.129, i32 4, i32 264, i8 2, i8 2, ptr null }, %struct.hisi_gate_clock { i32 99, ptr @.str.130, ptr @.str.131, i32 4, i32 1028, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 100, ptr @.str.131, ptr @.str.19, i32 4, i32 1028, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 101, ptr @.str.132, ptr @.str.133, i32 4, i32 1056, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 102, ptr @.str.134, ptr @.str.135, i32 4, i32 1056, i8 14, i8 0, ptr null }], align 4
@hi3660_crgctrl_mux_clks = internal constant [21 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 103, ptr @.str.136, ptr @clk_mux_sysbus_p, i8 2, i32 4, i32 172, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 104, ptr @.str.137, ptr @clk_mux_uart0_p, i8 2, i32 4, i32 172, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 105, ptr @.str.56, ptr @clk_mux_uart1_p, i8 2, i32 4, i32 172, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 106, ptr @.str.54, ptr @clk_mux_uarth_p, i8 2, i32 4, i32 172, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 107, ptr @.str.52, ptr @clk_mux_spi_p, i8 2, i32 4, i32 172, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 108, ptr @.str.49, ptr @clk_mux_i2c_p, i8 2, i32 4, i32 172, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 109, ptr @.str.111, ptr @clk_mux_pll02p, i8 2, i32 4, i32 180, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 110, ptr @.str.101, ptr @clk_mux_ldi0_p, i8 16, i32 4, i32 180, i8 8, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 111, ptr @.str.99, ptr @clk_mux_ldi0_p, i8 16, i32 4, i32 180, i8 12, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 112, ptr @.str.113, ptr @clk_mux_pll_p, i8 4, i32 4, i32 184, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 113, ptr @.str.83, ptr @clk_mux_sd_sys_p, i8 2, i32 4, i32 184, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 114, ptr @.str.103, ptr @clk_mux_edc0_p, i8 16, i32 4, i32 188, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 115, ptr @.str.85, ptr @clk_mux_sdio_sys_p, i8 2, i32 4, i32 192, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 116, ptr @.str.117, ptr @clk_mux_pll_p, i8 4, i32 4, i32 192, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 146, ptr @.str.107, ptr @clk_mux_venc_p, i8 4, i32 4, i32 200, i8 11, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 147, ptr @.str.105, ptr @clk_mux_pll0123_p, i8 4, i32 4, i32 204, i8 5, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 117, ptr @.str.124, ptr @clk_mux_pll0123_p, i8 4, i32 4, i32 208, i8 12, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 118, ptr @.str.115, ptr @clk_mux_pll02p, i8 2, i32 4, i32 212, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 119, ptr @.str.127, ptr @clk_mux_pll02p, i8 2, i32 4, i32 256, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 155, ptr @.str.87, ptr @clk_mux_isp_snclk_p, i8 2, i32 4, i32 264, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 120, ptr @.str.138, ptr @clk_mux_ioperi_p, i8 2, i32 4, i32 264, i8 10, i8 1, i8 4, ptr null, ptr null }], align 4
@hi3660_crg_fixed_factor_clks = internal constant [15 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 15, ptr @.str.148, ptr @.str.149, i32 1, i32 16, i32 0 }, %struct.hisi_fixed_factor_clock { i32 16, ptr @.str.144, ptr @.str, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 17, ptr @.str.150, ptr @.str.151, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 18, ptr @.str.152, ptr @.str.153, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 19, ptr @.str.154, ptr @.str.155, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 20, ptr @.str.156, ptr @.str.157, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 21, ptr @.str.19, ptr @.str.136, i32 1, i32 7, i32 0 }, %struct.hisi_fixed_factor_clock { i32 22, ptr @.str.119, ptr @.str.126, i32 1, i32 5, i32 0 }, %struct.hisi_fixed_factor_clock { i32 23, ptr @.str.129, ptr @.str.114, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 24, ptr @.str.158, ptr @.str.3, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 25, ptr @.str.159, ptr @.str.3, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 26, ptr @.str.160, ptr @.str.161, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 27, ptr @.str.162, ptr @.str.163, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 140, ptr @.str.164, ptr @.str.17, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 150, ptr @.str.165, ptr @.str.128, i32 1, i32 10, i32 0 }], align 4
@hi3660_crgctrl_divider_clks = internal constant [22 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 121, ptr @.str.139, ptr @.str.118, i32 4, i32 176, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 122, ptr @.str.140, ptr @.str.120, i32 4, i32 176, i8 8, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 123, ptr @.str.141, ptr @.str.121, i32 4, i32 176, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 124, ptr @.str.166, ptr @.str.110, i32 4, i32 180, i8 3, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 125, ptr @.str.145, ptr @.str.112, i32 4, i32 184, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 126, ptr @.str.74, ptr @.str.102, i32 4, i32 188, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 127, ptr @.str.71, ptr @.str.98, i32 4, i32 188, i8 10, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 128, ptr @.str.146, ptr @.str.116, i32 4, i32 192, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 129, ptr @.str.69, ptr @.str.100, i32 4, i32 192, i8 8, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 130, ptr @.str.142, ptr @.str.122, i32 4, i32 196, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 148, ptr @.str.62, ptr @.str.106, i32 4, i32 200, i8 6, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 149, ptr @.str.64, ptr @.str.104, i32 4, i32 204, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 131, ptr @.str.72, ptr @.str.123, i32 4, i32 208, i8 7, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 132, ptr @.str.143, ptr @.str.119, i32 4, i32 232, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 133, ptr @.str.133, ptr @.str.108, i32 4, i32 232, i8 9, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 134, ptr @.str.24, ptr @.str.19, i32 4, i32 236, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 135, ptr @.str.80, ptr @.str.130, i32 4, i32 236, i8 2, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 136, ptr @.str.94, ptr @.str.19, i32 4, i32 236, i8 3, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 137, ptr @.str.109, ptr @.str.90, i32 4, i32 236, i8 14, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 138, ptr @.str.22, ptr @.str.125, i32 4, i32 256, i8 7, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 156, ptr @.str.147, ptr @.str.165, i32 4, i32 264, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 139, ptr @.str.43, ptr @.str.138, i32 4, i32 264, i8 11, i8 4, i8 8, ptr null, ptr null }], align 4
@.str.16 = private unnamed_addr constant [48 x i8] c"\013Failed to register crgctrl clock[%d] err=%ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"peri_volt_hold\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"hclk_gate_sdio0\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"clk_div_sysbus\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"hclk_gate_sd\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"clk_gate_aomm\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"clk_div_aomm\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"pclk_gpio0\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"clk_div_cfgbus\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"pclk_gpio3\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"pclk_gpio4\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"pclk_gpio5\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"pclk_gpio6\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"pclk_gpio7\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"pclk_gpio8\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"pclk_gpio9\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"pclk_gpio10\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"pclk_gpio11\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"pclk_gpio12\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"pclk_gpio13\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"pclk_gpio14\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"pclk_gpio15\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"pclk_gpio16\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"pclk_gpio17\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"pclk_gpio18\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"clk_div_ioperi\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"pclk_gpio19\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"pclk_gpio20\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"pclk_gpio21\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"clk_gate_spi3\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c7\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"clk_mux_i2c\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c3\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"clk_gate_spi1\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"clk_mux_spi\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"clk_gate_uart1\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"clk_mux_uarth\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"clk_gate_uart2\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"clk_mux_uart1\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"clk_gate_uart4\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"clk_gate_uart5\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c4\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"clk_gate_dmac\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"clk_gate_venc\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"clk_div_venc\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"clk_gate_vdec\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"clk_div_vdec\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"pclk_gate_dss\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"aclk_gate_dss\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"clk_gate_vivobus\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"clk_gate_ldi1\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"clk_div_ldi1\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"clk_gate_ldi0\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"clk_div_ldi0\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"clk_div_vivobus\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"clk_gate_edc0\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"clk_div_edc0\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy0_cfg\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy0_ref\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy1_cfg\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy1_ref\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"aclk_gate_usb3otg\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"clk_div_mmc0bus\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"clk_gate_spi4\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"clk_gate_sd\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"clk_mux_sd_sys\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"clk_gate_sdio0\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"clk_mux_sdio_sys\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"clk_gate_isp_snclk0\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"clk_isp_snclk_mux\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"clk_gate_isp_snclk1\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"clk_gate_isp_snclk2\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"clk_gate_ufs_subsys\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"pclk_gate_dsi0\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"pclk_gate_dsi1\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"aclk_gate_pcie\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"clk_div_mmc1bus\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"pclk_gate_pcie_sys\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"clk_gate_pcieaux\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"pclk_gate_pcie_phy\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"clk_andgt_ldi0\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"clk_mux_ldi0\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"clk_andgt_ldi1\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"clk_mux_ldi1\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"clk_andgt_edc0\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"clk_mux_edc0\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"clk_andgt_vdec\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"clk_mux_vdec\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"clk_andgt_venc\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"clk_mux_venc\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"clk_gate_ufsphy_gt\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"clk_div_ufsperi\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"clk_andgt_mmc\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"clk_mux_mmc_pll\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"clk_andgt_sd\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"clk_mux_sd_pll\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"clk_a53hpm_andgt\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"clk_mux_a53hpm\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"clk_andgt_sdio\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"clk_mux_sdio_pll\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"clk_andgt_uart0\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"clk_div_320m\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"clk_andgt_uart1\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"clk_andgt_uarth\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"clk_andgt_spi\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"clk_vivobus_andgt\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"clk_mux_vivobus\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"clk_aomm_andgt\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"clk_320m_pll_gt\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"clk_mux_320m\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_angt\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"clk_div_a53hpm\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"autodiv_emmc0bus\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"autodiv_sysbus\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"clk_gate_ufsphy_cfg\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"clk_div_ufsphy_cfg\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"clk_gate_ufsio_ref\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"clk_gate_ufs_tcxo_en\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"clk_mux_sysbus\00", align 1
@clk_mux_sysbus_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.3], align 4
@.str.137 = private unnamed_addr constant [14 x i8] c"clk_mux_uart0\00", align 1
@clk_mux_uart0_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.139], align 4
@clk_mux_uart1_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.140], align 4
@clk_mux_uarth_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.141], align 4
@clk_mux_spi_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.142], align 4
@clk_mux_i2c_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.143], align 4
@clk_mux_pll02p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.5], align 4
@clk_mux_ldi0_p = internal constant [16 x ptr] [ptr @.str.14, ptr @.str.3, ptr @.str.5, ptr @.str.14, ptr @.str.4, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.6, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14], align 4
@clk_mux_pll_p = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.5], align 4
@clk_mux_sd_sys_p = internal constant [2 x ptr] [ptr @.str.144, ptr @.str.145], align 4
@clk_mux_edc0_p = internal constant [16 x ptr] [ptr @.str.14, ptr @.str.3, ptr @.str.4, ptr @.str.14, ptr @.str.5, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.6, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14], align 4
@clk_mux_sdio_sys_p = internal constant [2 x ptr] [ptr @.str.144, ptr @.str.146], align 4
@clk_mux_venc_p = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.6], align 4
@clk_mux_pll0123_p = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@clk_mux_isp_snclk_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.147], align 4
@.str.138 = private unnamed_addr constant [15 x i8] c"clk_mux_ioperi\00", align 1
@clk_mux_ioperi_p = internal constant [2 x ptr] [ptr @.str.119, ptr @.str.129], align 4
@.str.139 = private unnamed_addr constant [14 x i8] c"clk_div_uart0\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"clk_div_uart1\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"clk_div_uarth\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"clk_div_spi\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"clk_div_i2c\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"clk_factor_mmc\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"clk_div_sd\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"clk_div_sdio\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"clk_isp_snclk_div\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"clk_factor_uart3\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"iomcu_peri0\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c0\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"clk_i2c0_iomcu\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c1\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"clk_i2c1_iomcu\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c2\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"clk_i2c2_iomcu\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c6\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"clk_i2c6_iomcu\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"clk_gate_spi0\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"clk_gate_spi2\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"clk_pciephy_ref\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"clk_div_pciephy\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"clk_abb_usb\00", align 1
@.str.163 = private unnamed_addr constant [21 x i8] c"clk_gate_usb_tcxo_en\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"venc_volt_hold\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"clk_isp_snclk_fac\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"clk_div_mmc\00", align 1
@hi3660_pctrl_gate_clks = internal constant [2 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.135, ptr @.str.167, i32 4, i32 16, i8 0, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.163, ptr @.str.167, i32 4, i32 16, i8 1, i8 2, ptr null }], align 4
@.str.167 = private unnamed_addr constant [17 x i8] c"clk_gate_abb_192\00", align 1
@hi3660_pmu_gate_clks = internal constant [1 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.167, ptr @.str, i32 4, i32 1064, i8 3, i8 0, ptr null }], align 4
@hi3660_sctrl_gate_clks = internal constant [5 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 9, ptr @.str.168, ptr @.str.169, i32 4, i32 600, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.170, ptr @.str.3, i32 4, i32 608, i8 11, i8 8, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.171, ptr @.str.2, i32 4, i32 608, i8 12, i8 8, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.172, ptr @.str, i32 4, i32 608, i8 13, i8 8, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.173, ptr @.str.3, i32 4, i32 616, i8 11, i8 8, ptr null }], align 4
@hi3660_sctrl_gate_sep_clks = internal constant [9 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.174, ptr @.str.175, i32 4, i32 352, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.176, ptr @.str.175, i32 4, i32 352, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.177, ptr @.str.175, i32 4, i32 352, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.178, ptr @.str.175, i32 4, i32 352, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.179, ptr @.str.175, i32 4, i32 352, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.180, ptr @.str.175, i32 4, i32 352, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.181, ptr @.str.175, i32 4, i32 352, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.182, ptr @.str.183, i32 4, i32 368, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.184, ptr @.str.185, i32 4, i32 368, i8 24, i8 0, ptr null }], align 4
@hi3660_sctrl_mux_clks = internal constant [2 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 14, ptr @.str.185, ptr @aclk_mux_mmbuf_p, i8 2, i32 4, i32 592, i8 12, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 15, ptr @.str.169, ptr @clk_sw_mmbuf_p, i8 4, i32 4, i32 600, i8 8, i8 2, i8 4, ptr null, ptr null }], align 4
@hi3660_sctrl_divider_clks = internal constant [4 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 16, ptr @.str.175, ptr @.str.3, i32 4, i32 596, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 17, ptr @.str.183, ptr @.str.168, i32 4, i32 600, i8 10, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 18, ptr @.str.186, ptr @.str.170, i32 4, i32 600, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 19, ptr @.str.161, ptr @.str.173, i32 4, i32 616, i8 12, i8 4, i8 8, ptr null, ptr null }], align 4
@.str.168 = private unnamed_addr constant [17 x i8] c"pclk_mmbuf_andgt\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"clk_sw_mmbuf\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"clk_mmbuf_pll_andgt\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"clk_fll_mmbuf_andgt\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"clk_sys_mmbuf_andgt\00", align 1
@.str.173 = private unnamed_addr constant [20 x i8] c"clk_gate_pciephy_gt\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio0\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"clk_div_aobus\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio1\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio2\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio3\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio4\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio5\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio6\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"pclk_gate_mmbuf\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"pclk_div_mmbuf\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"clk_gate_dss_axi_mm\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"aclk_mux_mmbuf\00", align 1
@aclk_mux_mmbuf_p = internal constant [2 x ptr] [ptr @.str.186, ptr @.str.21], align 4
@clk_sw_mmbuf_p = internal constant [4 x ptr] [ptr @.str.172, ptr @.str.171, ptr @.str.185, ptr @.str.185], align 4
@.str.186 = private unnamed_addr constant [15 x i8] c"aclk_div_mmbuf\00", align 1
@hi3660_iomcu_gate_sep_clks = internal constant [5 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.151, ptr @.str.2, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.153, ptr @.str.2, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.155, ptr @.str.2, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.157, ptr @.str.2, i32 4, i32 16, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.149, ptr @.str.3, i32 4, i32 144, i8 0, i8 0, ptr null }], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_hi3660__162_637_hi3660_clk_init1, ptr @__of_table_hi3660_clk_crgctrl], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3660_clk_crgctrl_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  %3 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 157) #4
  store ptr %3, ptr @clk_crgctrl_data, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr ptr, ptr %7, i32 %6
  store ptr inttoptr (i32 -517 to ptr), ptr %8, align 4
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 157
  br i1 %10, label %11, label %5

11:                                               ; preds = %5
  %12 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3660_fixed_rate_clks, i32 noundef 15, ptr noundef nonnull %3) #4
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3660_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3660_clk_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %4) #4
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ 0, %7 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3660_clk_crgctrl_init(ptr noundef %0) #2 {
  %2 = load ptr, ptr @clk_crgctrl_data, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 157) #4
  store ptr %5, ptr @clk_crgctrl_data, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %11, %7 ], [ 0, %4 ]
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  store ptr inttoptr (i32 -517 to ptr), ptr %10, align 4
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp eq i32 %11, 157
  br i1 %12, label %13, label %7

13:                                               ; preds = %7
  %14 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3660_fixed_rate_clks, i32 noundef 15, ptr noundef nonnull %5) #4
  %15 = load ptr, ptr @clk_crgctrl_data, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %13, %1
  %18 = phi ptr [ %15, %13 ], [ %2, %1 ]
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3660_crgctrl_gate_sep_clks, i32 noundef 62, ptr noundef nonnull %18) #4
  %19 = load ptr, ptr @clk_crgctrl_data, align 4
  %20 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_crgctrl_gate_clks, i32 noundef 22, ptr noundef %19) #4
  %21 = load ptr, ptr @clk_crgctrl_data, align 4
  %22 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3660_crgctrl_mux_clks, i32 noundef 21, ptr noundef %21) #4
  %23 = load ptr, ptr @clk_crgctrl_data, align 4
  %24 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3660_crg_fixed_factor_clks, i32 noundef 15, ptr noundef %23) #4
  %25 = load ptr, ptr @clk_crgctrl_data, align 4
  %26 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3660_crgctrl_divider_clks, i32 noundef 22, ptr noundef %25) #4
  %27 = load ptr, ptr @clk_crgctrl_data, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.clk_onecell_data, ptr %27, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %44, %17
  %33 = phi ptr [ %45, %44 ], [ %27, %17 ]
  %34 = phi i32 [ %46, %44 ], [ 0, %17 ]
  %35 = getelementptr ptr, ptr %28, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ule ptr %36, inttoptr (i32 -4096 to ptr)
  %38 = icmp eq ptr %36, inttoptr (i32 -517 to ptr)
  %39 = or i1 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = ptrtoint ptr %36 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %34, i32 noundef %41) #5
  %43 = load ptr, ptr @clk_crgctrl_data, align 4
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi ptr [ %33, %32 ], [ %43, %40 ]
  %46 = add nuw i32 %34, 1
  %47 = getelementptr inbounds %struct.clk_onecell_data, ptr %45, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %32, label %50

50:                                               ; preds = %44, %17, %13, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3660_clk_pctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 2) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_pctrl_gate_clks, i32 noundef 2, ptr noundef nonnull %2) #4
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3660_clk_pmuctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 1) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_pmu_gate_clks, i32 noundef 1, ptr noundef nonnull %2) #4
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3660_clk_sctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 20) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_sctrl_gate_clks, i32 noundef 5, ptr noundef nonnull %2) #4
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3660_sctrl_gate_sep_clks, i32 noundef 9, ptr noundef nonnull %2) #4
  %6 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3660_sctrl_mux_clks, i32 noundef 2, ptr noundef nonnull %2) #4
  %7 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3660_sctrl_divider_clks, i32 noundef 4, ptr noundef nonnull %2) #4
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3660_clk_iomcu_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 5) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3660_iomcu_gate_sep_clks, i32 noundef 5, ptr noundef nonnull %2) #4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_clk_register_gate_sep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_factor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
