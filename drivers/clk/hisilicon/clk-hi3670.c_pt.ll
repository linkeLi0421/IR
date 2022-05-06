; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi3670.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3670.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
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

@__initcall__kmod_clk_hi3670__162_1016_hi3670_clk_init1 = internal global ptr @hi3670_clk_init, section ".initcall1.init", align 4
@hi3670_clk_driver = internal global %struct.platform_driver { ptr @hi3670_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3670_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"hi3670-clk\00", align 1
@hi3670_clk_match_table = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-crgctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_crgctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-pctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_pctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-pmuctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_pmuctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-sctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_sctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-iomcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_iomcu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-media1-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_media1_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-media2-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_media2_init }, %struct.of_device_id zeroinitializer], align 4
@hi3670_fixed_rate_clks = internal constant [20 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str.1, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.2, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.3, ptr null, i32 0, i32 134400000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.4, ptr null, i32 0, i32 1660000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.5, ptr null, i32 0, i32 1866000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.6, ptr null, i32 0, i32 1920000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.7, ptr null, i32 0, i32 1200000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.8, ptr null, i32 0, i32 900000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.9, ptr null, i32 0, i32 393216000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.10, ptr null, i32 0, i32 1008000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.11, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.12, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.13, ptr null, i32 0, i32 245760000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.14, ptr null, i32 0, i32 20000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.15, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.16, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.17, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.18, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 18, ptr @.str.19, ptr null, i32 0, i32 480000000 }, %struct.hisi_fixed_rate_clock { i32 19, ptr @.str.20, ptr null, i32 0, i32 10000000 }], align 4
@hi3670_crgctrl_gate_sep_clks = internal constant [107 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 114, ptr @.str.21, ptr @.str.5, i32 4, i32 0, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 115, ptr @.str.22, ptr @.str.6, i32 4, i32 0, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 116, ptr @.str.23, ptr @.str.7, i32 4, i32 0, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 117, ptr @.str.24, ptr @.str.5, i32 4, i32 1120, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 118, ptr @.str.25, ptr @.str.6, i32 4, i32 1120, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 119, ptr @.str.26, ptr @.str.7, i32 4, i32 1120, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 120, ptr @.str.27, ptr @.str.6, i32 4, i32 1040, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 121, ptr @.str.28, ptr @.str.7, i32 4, i32 1040, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 122, ptr @.str.29, ptr @.str.8, i32 4, i32 1040, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 123, ptr @.str.30, ptr @.str.9, i32 4, i32 1040, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 124, ptr @.str.31, ptr @.str.10, i32 4, i32 1040, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 125, ptr @.str.32, ptr @.str.33, i32 4, i32 16, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 126, ptr @.str.34, ptr @.str.33, i32 4, i32 16, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 127, ptr @.str.35, ptr @.str.33, i32 4, i32 16, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 128, ptr @.str.36, ptr @.str.33, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 129, ptr @.str.37, ptr @.str.33, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 130, ptr @.str.38, ptr @.str.33, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 131, ptr @.str.39, ptr @.str.33, i32 4, i32 16, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 132, ptr @.str.40, ptr @.str.33, i32 4, i32 16, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 133, ptr @.str.41, ptr @.str.33, i32 4, i32 16, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 134, ptr @.str.42, ptr @.str.33, i32 4, i32 16, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 135, ptr @.str.43, ptr @.str.33, i32 4, i32 16, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 136, ptr @.str.44, ptr @.str.33, i32 4, i32 16, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 137, ptr @.str.45, ptr @.str.33, i32 4, i32 16, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 138, ptr @.str.46, ptr @.str.33, i32 4, i32 16, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 139, ptr @.str.47, ptr @.str.33, i32 4, i32 16, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 140, ptr @.str.48, ptr @.str.33, i32 4, i32 16, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 141, ptr @.str.49, ptr @.str.33, i32 4, i32 16, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 142, ptr @.str.50, ptr @.str.33, i32 4, i32 16, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 143, ptr @.str.51, ptr @.str.33, i32 4, i32 16, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 144, ptr @.str.52, ptr @.str.33, i32 4, i32 16, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 145, ptr @.str.53, ptr @.str.33, i32 4, i32 80, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 146, ptr @.str.54, ptr @.str.33, i32 4, i32 80, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 147, ptr @.str.55, ptr @.str.56, i32 4, i32 0, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 148, ptr @.str.57, ptr @.str.58, i32 4, i32 64, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 149, ptr @.str.59, ptr @.str.56, i32 4, i32 0, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 150, ptr @.str.60, ptr @.str.61, i32 4, i32 1056, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 151, ptr @.str.62, ptr @.str.63, i32 4, i32 1056, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 152, ptr @.str.63, ptr @.str.64, i32 4, i32 48, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 153, ptr @.str.65, ptr @.str.66, i32 4, i32 64, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 154, ptr @.str.67, ptr @.str.61, i32 4, i32 1056, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 155, ptr @.str.68, ptr @.str.56, i32 4, i32 48, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 156, ptr @.str.69, ptr @.str.70, i32 4, i32 0, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 157, ptr @.str.71, ptr @.str.72, i32 4, i32 556, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 158, ptr @.str.73, ptr @.str.72, i32 4, i32 80, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 159, ptr @.str.74, ptr @.str.75, i32 4, i32 64, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 160, ptr @.str.76, ptr @.str.56, i32 4, i32 0, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 161, ptr @.str.77, ptr @.str.78, i32 4, i32 64, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 162, ptr @.str.79, ptr @.str.80, i32 4, i32 80, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 163, ptr @.str.81, ptr @.str.80, i32 4, i32 80, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 164, ptr @.str.82, ptr @.str.80, i32 4, i32 1152, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 165, ptr @.str.83, ptr @.str.80, i32 4, i32 1152, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 166, ptr @.str.84, ptr @.str.80, i32 4, i32 1152, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 167, ptr @.str.85, ptr @.str.80, i32 4, i32 80, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 168, ptr @.str.86, ptr @.str.80, i32 4, i32 80, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 169, ptr @.str.87, ptr @.str.80, i32 4, i32 80, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 170, ptr @.str.88, ptr @.str.89, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 171, ptr @.str.90, ptr @.str.89, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 172, ptr @.str.91, ptr @.str.89, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 173, ptr @.str.92, ptr @.str.89, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 174, ptr @.str.93, ptr @.str.94, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 175, ptr @.str.95, ptr @.str.94, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 176, ptr @.str.96, ptr @.str.94, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 177, ptr @.str.97, ptr @.str.94, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 178, ptr @.str.98, ptr @.str.99, i32 4, i32 32, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 179, ptr @.str.100, ptr @.str.101, i32 4, i32 32, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 180, ptr @.str.102, ptr @.str.101, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 181, ptr @.str.103, ptr @.str.101, i32 4, i32 16, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 182, ptr @.str.104, ptr @.str.101, i32 4, i32 32, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 183, ptr @.str.105, ptr @.str.101, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 184, ptr @.str.106, ptr @.str.101, i32 4, i32 16, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 185, ptr @.str.107, ptr @.str.108, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 186, ptr @.str.109, ptr @.str.108, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 187, ptr @.str.110, ptr @.str.108, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 188, ptr @.str.111, ptr @.str.108, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 189, ptr @.str.112, ptr @.str.1, i32 4, i32 64, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 190, ptr @.str.113, ptr @.str.1, i32 4, i32 1040, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 191, ptr @.str.114, ptr @.str.1, i32 4, i32 1056, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 192, ptr @.str.115, ptr @.str.116, i32 4, i32 1056, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 193, ptr @.str.116, ptr @.str.117, i32 4, i32 80, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 194, ptr @.str.118, ptr @.str.11, i32 4, i32 1136, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 195, ptr @.str.119, ptr @.str.11, i32 4, i32 1136, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 196, ptr @.str.120, ptr @.str.11, i32 4, i32 1136, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 197, ptr @.str.121, ptr @.str.11, i32 4, i32 1136, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 198, ptr @.str.122, ptr @.str.123, i32 4, i32 0, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 199, ptr @.str.124, ptr @.str.125, i32 4, i32 32, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 200, ptr @.str.126, ptr @.str.127, i32 4, i32 48, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 201, ptr @.str.128, ptr @.str.129, i32 4, i32 48, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 202, ptr @.str.130, ptr @.str.125, i32 4, i32 32, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 203, ptr @.str.131, ptr @.str.132, i32 4, i32 48, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 204, ptr @.str.133, ptr @.str.132, i32 4, i32 48, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 205, ptr @.str.134, ptr @.str.131, i32 4, i32 48, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 206, ptr @.str.135, ptr @.str.133, i32 4, i32 64, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 207, ptr @.str.136, ptr @.str.137, i32 4, i32 0, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 208, ptr @.str.138, ptr @.str.1, i32 4, i32 0, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 209, ptr @.str.139, ptr @.str.1, i32 4, i32 0, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 210, ptr @.str.140, ptr @.str.141, i32 4, i32 80, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 211, ptr @.str.142, ptr @.str.143, i32 4, i32 80, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 212, ptr @.str.144, ptr @.str.145, i32 4, i32 80, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 213, ptr @.str.146, ptr @.str.147, i32 4, i32 48, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 214, ptr @.str.148, ptr @.str.147, i32 4, i32 48, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 215, ptr @.str.149, ptr @.str.147, i32 4, i32 48, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 216, ptr @.str.150, ptr @.str.1, i32 4, i32 48, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 217, ptr @.str.151, ptr @.str.1, i32 4, i32 48, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 218, ptr @.str.152, ptr @.str.1, i32 4, i32 48, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 219, ptr @.str.153, ptr @.str.1, i32 4, i32 48, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 220, ptr @.str.154, ptr @.str.1, i32 4, i32 64, i8 6, i8 0, ptr null }], align 4
@hi3670_crgctrl_gate_clks = internal constant [28 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 38, ptr @.str.155, ptr @.str.56, i32 4, i32 1028, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.58, ptr @.str.155, i32 4, i32 1028, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.156, ptr @.str.157, i32 4, i32 248, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 41, ptr @.str.158, ptr @.str.159, i32 4, i32 240, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 42, ptr @.str.160, ptr @.str.161, i32 4, i32 244, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 43, ptr @.str.162, ptr @.str.1, i32 4, i32 244, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 44, ptr @.str.163, ptr @.str.164, i32 4, i32 244, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 45, ptr @.str.165, ptr @.str.1, i32 4, i32 244, i8 6, i8 2, ptr null }, %struct.hisi_gate_clock { i32 46, ptr @.str.166, ptr @.str.167, i32 4, i32 244, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 47, ptr @.str.168, ptr @.str.169, i32 4, i32 248, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 48, ptr @.str.170, ptr @.str.157, i32 4, i32 244, i8 11, i8 2, ptr null }, %struct.hisi_gate_clock { i32 49, ptr @.str.171, ptr @.str.157, i32 4, i32 244, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.172, ptr @.str.157, i32 4, i32 244, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 51, ptr @.str.173, ptr @.str.157, i32 4, i32 244, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 52, ptr @.str.174, ptr @.str.175, i32 4, i32 252, i8 15, i8 2, ptr null }, %struct.hisi_gate_clock { i32 53, ptr @.str.176, ptr @.str.177, i32 4, i32 244, i8 4, i8 2, ptr null }, %struct.hisi_gate_clock { i32 54, ptr @.str.178, ptr @.str.6, i32 4, i32 244, i8 14, i8 2, ptr null }, %struct.hisi_gate_clock { i32 55, ptr @.str.179, ptr @.str.6, i32 4, i32 244, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 56, ptr @.str.180, ptr @.str.157, i32 4, i32 248, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 57, ptr @.str.181, ptr @.str.4, i32 4, i32 240, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 58, ptr @.str.182, ptr @.str.4, i32 4, i32 240, i8 11, i8 2, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.183, ptr @.str.9, i32 4, i32 248, i8 15, i8 2, ptr null }, %struct.hisi_gate_clock { i32 60, ptr @.str.184, ptr @.str.185, i32 4, i32 240, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 61, ptr @.str.186, ptr @.str.187, i32 4, i32 240, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 62, ptr @.str.188, ptr @.str.80, i32 4, i32 264, i8 2, i8 2, ptr null }, %struct.hisi_gate_clock { i32 63, ptr @.str.189, ptr @.str.80, i32 4, i32 240, i8 12, i8 2, ptr null }, %struct.hisi_gate_clock { i32 64, ptr @.str.190, ptr @.str.191, i32 4, i32 240, i8 14, i8 2, ptr null }, %struct.hisi_gate_clock { i32 65, ptr @.str.192, ptr @.str.155, i32 4, i32 1028, i8 3, i8 2, ptr null }], align 4
@hi3670_crgctrl_mux_clks = internal constant [22 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 66, ptr @.str.193, ptr @clk_mux_sysbus_p, i8 2, i32 4, i32 172, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 67, ptr @.str.159, ptr @clk_mux_vcodecbus_p, i8 16, i32 4, i32 200, i8 0, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 68, ptr @.str.75, ptr @clk_mux_sd_sys_p, i8 2, i32 4, i32 184, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 69, ptr @.str.161, ptr @clk_mux_sd_pll_p, i8 4, i32 4, i32 184, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 70, ptr @.str.78, ptr @clk_mux_sdio_sys_p, i8 2, i32 4, i32 192, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 71, ptr @.str.164, ptr @clk_mux_sdio_pll_p, i8 4, i32 4, i32 192, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 72, ptr @.str.167, ptr @clk_mux_a53hpm_p, i8 2, i32 4, i32 212, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 73, ptr @.str.169, ptr @clk_mux_320m_p, i8 2, i32 4, i32 256, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 74, ptr @.str.89, ptr @clk_mux_uarth_p, i8 2, i32 4, i32 172, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 75, ptr @.str.94, ptr @clk_mux_uartl_p, i8 2, i32 4, i32 172, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 76, ptr @.str.99, ptr @clk_mux_uart0_p, i8 2, i32 4, i32 172, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 77, ptr @.str.101, ptr @clk_mux_i2c_p, i8 2, i32 4, i32 172, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 78, ptr @.str.108, ptr @clk_mux_spi_p, i8 2, i32 4, i32 172, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 79, ptr @.str.175, ptr @clk_mux_pcieaxi_p, i8 2, i32 4, i32 180, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 80, ptr @.str.177, ptr @clk_mux_ao_asp_p, i8 2, i32 4, i32 256, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 81, ptr @.str.185, ptr @clk_mux_vdec_p, i8 16, i32 4, i32 200, i8 8, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 82, ptr @.str.187, ptr @clk_mux_venc_p, i8 16, i32 4, i32 200, i8 4, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 83, ptr @.str.141, ptr @clk_isp_snclk_mux0_p, i8 2, i32 4, i32 264, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 84, ptr @.str.143, ptr @clk_isp_snclk_mux1_p, i8 2, i32 4, i32 268, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 85, ptr @.str.145, ptr @clk_isp_snclk_mux2_p, i8 2, i32 4, i32 268, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 86, ptr @.str.147, ptr @clk_mux_rxdphy_cfg_p, i8 2, i32 4, i32 196, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 87, ptr @.str.191, ptr @clk_mux_ics_p, i8 16, i32 4, i32 200, i8 12, i8 4, i8 4, ptr null, ptr null }], align 4
@hi3670_crg_fixed_factor_clks = internal constant [18 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 20, ptr @.str.56, ptr @.str.193, i32 1, i32 7, i32 0 }, %struct.hisi_fixed_factor_clock { i32 21, ptr @.str.207, ptr @.str.1, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 22, ptr @.str.194, ptr @.str.162, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 23, ptr @.str.196, ptr @.str.165, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 24, ptr @.str.80, ptr @.str.166, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 25, ptr @.str.157, ptr @.str.168, i32 1, i32 5, i32 0 }, %struct.hisi_fixed_factor_clock { i32 26, ptr @.str.208, ptr @.str.94, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 27, ptr @.str.209, ptr @.str.99, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 28, ptr @.str.210, ptr @.str.4, i32 1, i32 60, i32 0 }, %struct.hisi_fixed_factor_clock { i32 29, ptr @.str.211, ptr @.str.212, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 30, ptr @.str.213, ptr @.str.1, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 31, ptr @.str.214, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 32, ptr @.str.215, ptr @.str.139, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 33, ptr @.str.216, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 34, ptr @.str.217, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 35, ptr @.str.218, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 36, ptr @.str.219, ptr @.str.188, i32 1, i32 10, i32 0 }, %struct.hisi_fixed_factor_clock { i32 37, ptr @.str.206, ptr @.str.189, i32 1, i32 6, i32 0 }], align 4
@hi3670_crgctrl_divider_clks = internal constant [26 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 88, ptr @.str.33, ptr @.str.56, i32 4, i32 236, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 89, ptr @.str.66, ptr @.str.58, i32 4, i32 236, i8 2, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 90, ptr @.str.61, ptr @.str.56, i32 4, i32 236, i8 3, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 91, ptr @.str.64, ptr @.str.156, i32 4, i32 180, i8 6, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 92, ptr @.str.70, ptr @.str.158, i32 4, i32 188, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 93, ptr @.str.195, ptr @.str.160, i32 4, i32 184, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 94, ptr @.str.197, ptr @.str.163, i32 4, i32 192, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 95, ptr @.str.198, ptr @.str.170, i32 4, i32 176, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 96, ptr @.str.199, ptr @.str.171, i32 4, i32 176, i8 8, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 97, ptr @.str.200, ptr @.str.172, i32 4, i32 176, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 98, ptr @.str.201, ptr @.str.157, i32 4, i32 232, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 99, ptr @.str.202, ptr @.str.173, i32 4, i32 196, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 100, ptr @.str.117, ptr @.str.174, i32 4, i32 180, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 101, ptr @.str.123, ptr @.str.176, i32 4, i32 264, i8 6, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 102, ptr @.str.127, ptr @.str.178, i32 4, i32 212, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 103, ptr @.str.129, ptr @.str.179, i32 4, i32 212, i8 10, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 104, ptr @.str.125, ptr @.str.180, i32 4, i32 216, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 105, ptr @.str.220, ptr @.str.181, i32 4, i32 224, i8 4, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 106, ptr @.str.221, ptr @.str.182, i32 4, i32 224, i8 10, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 107, ptr @.str.137, ptr @.str.183, i32 4, i32 188, i8 11, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 108, ptr @.str.222, ptr @.str.184, i32 4, i32 196, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 109, ptr @.str.223, ptr @.str.186, i32 4, i32 192, i8 8, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 110, ptr @.str.203, ptr @.str.219, i32 4, i32 264, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 111, ptr @.str.204, ptr @.str.219, i32 4, i32 268, i8 14, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 112, ptr @.str.205, ptr @.str.219, i32 4, i32 268, i8 11, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 113, ptr @.str.224, ptr @.str.190, i32 4, i32 228, i8 9, i8 6, i8 8, ptr null, ptr null }], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"clkin_sys\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"clkin_ref\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clk_fll_src\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"clk_ppll0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"clk_ppll1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"clk_ppll2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"clk_ppll3\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"clk_ppll4\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"clk_ppll6\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"clk_ppll7\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"clk_ppll_pcie\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"clk_pciepll_rev\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"clk_scpll\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"clk_uart0_dbg\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"clk_uart6\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"osc19m\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"clk_480m\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"clk_invalid\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"ppll1_en_acpu\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"ppll2_en_acpu\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"ppll3_en_acpu\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"ppll1_gt_cpu\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"ppll2_gt_cpu\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"ppll3_gt_cpu\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"clk_gate_ppll2_media\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"clk_gate_ppll3_media\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"clk_gate_ppll4_media\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"clk_gate_ppll6_media\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"clk_gate_ppll7_media\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"pclk_gpio0\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"clk_div_cfgbus\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"pclk_gpio3\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"pclk_gpio4\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"pclk_gpio5\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"pclk_gpio6\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"pclk_gpio7\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"pclk_gpio8\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"pclk_gpio9\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"pclk_gpio10\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"pclk_gpio11\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"pclk_gpio12\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"pclk_gpio13\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"pclk_gpio14\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"pclk_gpio15\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"pclk_gpio16\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"pclk_gpio17\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"pclk_gpio20\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"pclk_gpio21\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"pclk_gate_dsi0\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"pclk_gate_dsi1\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"hclk_gate_usb3otg\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"clk_div_sysbus\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"aclk_gate_usb3dvfs\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"autodiv_emmc0bus\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"hclk_gate_sdio\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"pclk_gate_pcie_sys\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"clk_div_mmc1bus\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"pclk_gate_pcie_phy\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"pclk_gate_mmc1_pcie\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"pclk_div_mmc1_pcie\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"pclk_gate_mmc0_ioc\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"clk_div_mmc0bus\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"pclk_gate_mmc1_ioc\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"clk_gate_dmac\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"clk_gate_vcodecbus2ddr\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"clk_div_vcodecbus\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"clk_cci400_bypass\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"clk_ddrc_freq\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"clk_gate_cci400\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"clk_gate_sd\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"clk_mux_sd_sys\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"hclk_gate_sd\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"clk_gate_sdio\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"clk_mux_sdio_sys\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"clk_gate_a57hpm\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"clk_div_a53hpm\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"clk_gate_a53hpm\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"clk_gate_pa_a53\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"clk_gate_pa_a57\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"clk_gate_pa_g3d\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"clk_gate_gpuhpm\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"clk_gate_perihpm\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"clk_gate_aohpm\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"clk_gate_uart1\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"clk_mux_uarth\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"clk_gate_uart4\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"pclk_gate_uart1\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"pclk_gate_uart4\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"clk_gate_uart2\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"clk_mux_uartl\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"clk_gate_uart5\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"pclk_gate_uart2\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"pclk_gate_uart5\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"clk_gate_uart0\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"clk_mux_uart0\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c3\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"clk_mux_i2c\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c4\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c7\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"pclk_gate_i2c3\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"pclk_gate_i2c4\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"pclk_gate_i2c7\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"clk_gate_spi1\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"clk_mux_spi\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"clk_gate_spi4\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"pclk_gate_spi1\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"pclk_gate_spi4\00", align 1
@.str.112 = private unnamed_addr constant [21 x i8] c"clk_gate_usb3otg_ref\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"clk_gate_usb2phy_ref\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"clk_gate_pcieaux\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"aclk_gate_pcie\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"clk_gate_mmc1_pcieaxi\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"clk_div_pcieaxi\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"clk_gate_pciephy_ref\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"clk_gate_pcie_debounce\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"clk_gate_pcieio\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"clk_gate_pcie_hp\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"clk_gate_ao_asp\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"clk_div_ao_asp\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"pclk_gate_pctrl\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"clk_div_ptp\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"clk_csi_trans_gt\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"clk_div_csi_trans\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"clk_dsi_trans_gt\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"clk_div_dsi_trans\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"clk_gate_pwm\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"abb_audio_en0\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"clk_gate_abb_192\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"abb_audio_en1\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"abb_audio_gt_en0\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"abb_audio_gt_en1\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"clk_gate_dp_audio_pll_ao\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"clkdiv_dp_audio_pll_ao\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"peri_volt_hold\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"peri_volt_middle\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"clk_gate_isp_snclk0\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_mux0\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"clk_gate_isp_snclk1\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_mux1\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"clk_gate_isp_snclk2\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_mux2\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"clk_gate_rxdphy0_cfg\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"clk_mux_rxdphy_cfg\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"clk_gate_rxdphy1_cfg\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"clk_gate_rxdphy2_cfg\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy0_cfg\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy0_ref\00", align 1
@.str.152 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy1_cfg\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"clk_gate_txdphy1_ref\00", align 1
@.str.154 = private unnamed_addr constant [20 x i8] c"clk_gate_media_tcxo\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"autodiv_sysbus\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"pclk_andgt_mmc1_pcie\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"clk_div_320m\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"clk_gate_vcodecbus_gt\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"clk_mux_vcodecbus\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"clk_andgt_sd\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"clk_mux_sd_pll\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"clk_sd_sys_gt\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"clk_andgt_sdio\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"clk_mux_sdio_pll\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"clk_sdio_sys_gt\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"clk_a53hpm_andgt\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"clk_mux_a53hpm\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"clk_320m_pll_gt\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"clk_mux_320m\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"clk_andgt_uarth\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"clk_andgt_uartl\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"clk_andgt_uart0\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"clk_andgt_spi\00", align 1
@.str.174 = private unnamed_addr constant [18 x i8] c"clk_andgt_pcieaxi\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"clk_mux_pcieaxi\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"clk_div_ao_asp_gt\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"clk_mux_ao_asp\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"clk_gate_csi_trans\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"clk_gate_dsi_trans\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"clk_andgt_ptp\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"clk_andgt_out0\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"clk_andgt_out1\00", align 1
@.str.183 = private unnamed_addr constant [22 x i8] c"clkgt_dp_audio_pll_ao\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"clk_andgt_vdec\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"clk_mux_vdec\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"clk_andgt_venc\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"clk_mux_venc\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_angt\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"clk_andgt_rxdphy\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"clk_andgt_ics\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"clk_mux_ics\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"autodiv_dmabus\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"clk_mux_sysbus\00", align 1
@clk_mux_sysbus_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.4], align 4
@clk_mux_vcodecbus_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.7, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_mux_sd_sys_p = internal constant [2 x ptr] [ptr @.str.194, ptr @.str.195], align 4
@clk_mux_sd_pll_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.7, ptr @.str.6, ptr @.str.6], align 4
@clk_mux_sdio_sys_p = internal constant [2 x ptr] [ptr @.str.196, ptr @.str.197], align 4
@clk_mux_sdio_pll_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.7, ptr @.str.6, ptr @.str.6], align 4
@clk_mux_a53hpm_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.6], align 4
@clk_mux_320m_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.4], align 4
@clk_mux_uarth_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.198], align 4
@clk_mux_uartl_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.199], align 4
@clk_mux_uart0_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.200], align 4
@clk_mux_i2c_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.201], align 4
@clk_mux_spi_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.202], align 4
@clk_mux_pcieaxi_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.4], align 4
@clk_mux_ao_asp_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.7], align 4
@clk_mux_vdec_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_mux_venc_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_isp_snclk_mux0_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.203], align 4
@clk_isp_snclk_mux1_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.204], align 4
@clk_isp_snclk_mux2_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.205], align 4
@clk_mux_rxdphy_cfg_p = internal constant [2 x ptr] [ptr @.str.206, ptr @.str.1], align 4
@clk_mux_ics_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.7, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@.str.194 = private unnamed_addr constant [11 x i8] c"clk_sd_sys\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"clk_div_sd\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"clk_sdio_sys\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"clk_div_sdio\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"clk_div_uarth\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"clk_div_uartl\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"clk_div_uart0\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"clk_div_i2c\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"clk_div_spi\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_div0\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_div1\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"clk_isp_snclk_div2\00", align 1
@.str.206 = private unnamed_addr constant [18 x i8] c"clk_factor_rxdphy\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"clk_factor_mmc\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"pclk_gate_uart0\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"clk_factor_uart0\00", align 1
@.str.210 = private unnamed_addr constant [23 x i8] c"clk_factor_usb3phy_pll\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"clk_gate_abb_usb\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"clk_gate_usb_tcxo_en\00", align 1
@.str.213 = private unnamed_addr constant [20 x i8] c"clk_gate_ufsphy_ref\00", align 1
@.str.214 = private unnamed_addr constant [14 x i8] c"ics_volt_high\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"ics_volt_middle\00", align 1
@.str.216 = private unnamed_addr constant [15 x i8] c"venc_volt_hold\00", align 1
@.str.217 = private unnamed_addr constant [15 x i8] c"vdec_volt_hold\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"edc_volt_hold\00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c"clk_isp_snclk_fac\00", align 1
@.str.220 = private unnamed_addr constant [20 x i8] c"clk_div_clkout0_pll\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"clk_div_clkout1_pll\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"clk_div_vdec\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"clk_div_venc\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"clk_div_ics\00", align 1
@hi3670_pctrl_gate_clks = internal constant [2 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.225, ptr @.str.132, i32 4, i32 16, i8 0, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.212, ptr @.str.132, i32 4, i32 16, i8 1, i8 2, ptr null }], align 4
@.str.225 = private unnamed_addr constant [21 x i8] c"clk_gate_ufs_tcxo_en\00", align 1
@hi3670_pmu_gate_clks = internal constant [1 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.132, ptr @.str.1, i32 4, i32 220, i8 0, i8 0, ptr null }], align 4
@hi3670_sctrl_gate_sep_clks = internal constant [24 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 15, ptr @.str.226, ptr @.str.4, i32 4, i32 400, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 16, ptr @.str.227, ptr @.str.4, i32 4, i32 400, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.228, ptr @.str.4, i32 4, i32 432, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.229, ptr @.str.230, i32 4, i32 432, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.231, ptr @.str.230, i32 4, i32 432, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.232, ptr @.str.233, i32 4, i32 432, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.234, ptr @.str.233, i32 4, i32 432, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.235, ptr @.str.236, i32 4, i32 432, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.237, ptr @.str.1, i32 4, i32 432, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.238, ptr @.str.230, i32 4, i32 352, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.239, ptr @.str.230, i32 4, i32 352, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.240, ptr @.str.230, i32 4, i32 352, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.241, ptr @.str.230, i32 4, i32 352, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.242, ptr @.str.230, i32 4, i32 352, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.243, ptr @.str.230, i32 4, i32 352, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.244, ptr @.str.230, i32 4, i32 352, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.245, ptr @.str.246, i32 4, i32 352, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.247, ptr @.str.248, i32 4, i32 352, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.249, ptr @.str.230, i32 4, i32 352, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.250, ptr @.str.1, i32 4, i32 352, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.251, ptr @.str.252, i32 4, i32 368, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.253, ptr @.str.254, i32 4, i32 368, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.255, ptr @.str.1, i32 4, i32 352, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.256, ptr @.str.136, i32 4, i32 432, i8 7, i8 0, ptr null }], align 4
@hi3670_sctrl_gate_clks = internal constant [3 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.257, ptr @.str.4, i32 4, i32 624, i8 6, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.258, ptr @.str.4, i32 4, i32 616, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.259, ptr @.str.4, i32 4, i32 600, i8 0, i8 2, ptr null }], align 4
@hi3670_sctrl_mux_clks = internal constant [5 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 3, ptr @.str.260, ptr @clk_mux_ufs_subsys_p, i8 2, i32 4, i32 628, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 4, ptr @.str.246, ptr @clk_mux_clkout0_p, i8 4, i32 4, i32 596, i8 12, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 5, ptr @.str.248, ptr @clk_mux_clkout1_p, i8 4, i32 4, i32 596, i8 14, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 6, ptr @.str.252, ptr @clk_mux_asp_subsys_peri_p, i8 2, i32 4, i32 616, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 7, ptr @.str.254, ptr @clk_mux_asp_pll_p, i8 4, i32 4, i32 616, i8 9, i8 2, i8 4, ptr null, ptr null }], align 4
@hi3670_sctrl_divider_clks = internal constant [7 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 8, ptr @.str.230, ptr @.str.4, i32 4, i32 596, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 9, ptr @.str.236, ptr @.str.260, i32 4, i32 628, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 10, ptr @.str.233, ptr @.str.257, i32 4, i32 624, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 11, ptr @.str.261, ptr @.str.1, i32 4, i32 596, i8 6, i8 3, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 12, ptr @.str.262, ptr @.str.1, i32 4, i32 596, i8 9, i8 3, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 13, ptr @.str.263, ptr @.str.258, i32 4, i32 616, i8 0, i8 3, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 14, ptr @.str.264, ptr @.str.259, i32 4, i32 592, i8 0, i8 3, i8 8, ptr null, ptr null }], align 4
@.str.226 = private unnamed_addr constant [14 x i8] c"ppll0_en_acpu\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"ppll0_gt_cpu\00", align 1
@.str.228 = private unnamed_addr constant [21 x i8] c"clk_gate_ppll0_media\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"pclk_gpio18\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"clk_div_aobus\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"pclk_gpio19\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"clk_gate_spi\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"clk_div_ioperi\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"pclk_gate_spi\00", align 1
@.str.235 = private unnamed_addr constant [20 x i8] c"clk_gate_ufs_subsys\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"clk_div_ufs_subsys\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c"clk_gate_ufsio_ref\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio0\00", align 1
@.str.239 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio1\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio2\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio3\00", align 1
@.str.242 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio4\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio5\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"pclk_ao_gpio6\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"clk_gate_out0\00", align 1
@.str.246 = private unnamed_addr constant [16 x i8] c"clk_mux_clkout0\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"clk_gate_out1\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"clk_mux_clkout1\00", align 1
@.str.249 = private unnamed_addr constant [17 x i8] c"pclk_gate_syscnt\00", align 1
@.str.250 = private unnamed_addr constant [16 x i8] c"clk_gate_syscnt\00", align 1
@.str.251 = private unnamed_addr constant [25 x i8] c"clk_gate_asp_subsys_peri\00", align 1
@.str.252 = private unnamed_addr constant [24 x i8] c"clk_mux_asp_subsys_peri\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"clk_gate_asp_subsys\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"clk_mux_asp_pll\00", align 1
@.str.255 = private unnamed_addr constant [18 x i8] c"clk_gate_asp_tcxo\00", align 1
@.str.256 = private unnamed_addr constant [22 x i8] c"clk_gate_dp_audio_pll\00", align 1
@.str.257 = private unnamed_addr constant [17 x i8] c"clk_andgt_ioperi\00", align 1
@.str.258 = private unnamed_addr constant [25 x i8] c"clkandgt_asp_subsys_peri\00", align 1
@.str.259 = private unnamed_addr constant [20 x i8] c"clk_angt_asp_subsys\00", align 1
@.str.260 = private unnamed_addr constant [19 x i8] c"clk_mux_ufs_subsys\00", align 1
@clk_mux_ufs_subsys_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.4], align 4
@clk_mux_clkout0_p = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.261, ptr @.str.220, ptr @.str.220], align 4
@clk_mux_clkout1_p = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.262, ptr @.str.221, ptr @.str.221], align 4
@clk_mux_asp_subsys_peri_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.3], align 4
@clk_mux_asp_pll_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.3, ptr @.str.122, ptr @.str.12], align 4
@.str.261 = private unnamed_addr constant [21 x i8] c"clk_div_clkout0_tcxo\00", align 1
@.str.262 = private unnamed_addr constant [21 x i8] c"clk_div_clkout1_tcxo\00", align 1
@.str.263 = private unnamed_addr constant [24 x i8] c"clk_asp_subsys_peri_div\00", align 1
@.str.264 = private unnamed_addr constant [19 x i8] c"clk_div_asp_subsys\00", align 1
@hi3670_iomcu_gate_sep_clks = internal constant [7 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 6, ptr @.str.265, ptr @.str.3, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.266, ptr @.str.3, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.267, ptr @.str.3, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.268, ptr @.str.3, i32 4, i32 16, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.269, ptr @.str.3, i32 4, i32 16, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.270, ptr @.str.271, i32 4, i32 16, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.271, ptr @.str.4, i32 4, i32 144, i8 0, i8 0, ptr null }], align 4
@hi3670_iomcu_fixed_factor_clks = internal constant [6 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 0, ptr @.str.272, ptr @.str.265, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 1, ptr @.str.273, ptr @.str.266, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 2, ptr @.str.274, ptr @.str.267, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 3, ptr @.str.275, ptr @.str.268, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 4, ptr @.str.276, ptr @.str.269, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 5, ptr @.str.277, ptr @.str.270, i32 1, i32 16, i32 0 }], align 4
@.str.265 = private unnamed_addr constant [20 x i8] c"clk_i2c0_gate_iomcu\00", align 1
@.str.266 = private unnamed_addr constant [20 x i8] c"clk_i2c1_gate_iomcu\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"clk_i2c2_gate_iomcu\00", align 1
@.str.268 = private unnamed_addr constant [20 x i8] c"clk_spi0_gate_iomcu\00", align 1
@.str.269 = private unnamed_addr constant [20 x i8] c"clk_spi2_gate_iomcu\00", align 1
@.str.270 = private unnamed_addr constant [21 x i8] c"clk_uart3_gate_iomcu\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"clk_gate_iomcu_peri0\00", align 1
@.str.272 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c0\00", align 1
@.str.273 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c1\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"clk_gate_i2c2\00", align 1
@.str.275 = private unnamed_addr constant [14 x i8] c"clk_gate_spi0\00", align 1
@.str.276 = private unnamed_addr constant [14 x i8] c"clk_gate_spi2\00", align 1
@.str.277 = private unnamed_addr constant [15 x i8] c"clk_gate_uart3\00", align 1
@hi3670_media1_gate_sep_clks = internal constant [17 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 17, ptr @.str.278, ptr @.str.279, i32 4, i32 16, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.280, ptr @.str.281, i32 4, i32 16, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.282, ptr @.str.281, i32 4, i32 32, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.281, ptr @.str.56, i32 4, i32 16, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.279, ptr @.str.283, i32 4, i32 16, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.284, ptr @.str.281, i32 4, i32 0, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.285, ptr @.str.279, i32 4, i32 0, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.283, ptr @.str.286, i32 4, i32 0, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.287, ptr @.str.288, i32 4, i32 0, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.289, ptr @.str.290, i32 4, i32 0, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.291, ptr @.str.292, i32 4, i32 0, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.293, ptr @.str.294, i32 4, i32 0, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.295, ptr @.str.296, i32 4, i32 32, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.297, ptr @.str.296, i32 4, i32 32, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.296, ptr @.str.298, i32 4, i32 32, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.299, ptr @.str.300, i32 4, i32 32, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.301, ptr @.str.286, i32 4, i32 16, i8 1, i8 0, ptr null }], align 4
@hi3670_media1_gate_clks = internal constant [6 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.302, ptr @.str.303, i32 4, i32 132, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.304, ptr @.str.305, i32 4, i32 132, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.306, ptr @.str.307, i32 4, i32 132, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.308, ptr @.str.309, i32 4, i32 132, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.310, ptr @.str.311, i32 4, i32 132, i8 14, i8 2, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.312, ptr @.str.298, i32 4, i32 132, i8 15, i8 2, ptr null }], align 4
@hi3670_media1_mux_clks = internal constant [5 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 6, ptr @.str.303, ptr @clk_mux_vivobus_p, i8 16, i32 4, i32 116, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 7, ptr @.str.305, ptr @clk_mux_edc0_p, i8 16, i32 4, i32 104, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 8, ptr @.str.307, ptr @clk_mux_ldi0_p, i8 16, i32 4, i32 96, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 9, ptr @.str.309, ptr @clk_mux_ldi1_p, i8 16, i32 4, i32 100, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 10, ptr @.str.311, ptr @clk_sw_mmbuf_p, i8 16, i32 4, i32 136, i8 0, i8 4, i8 4, ptr null, ptr null }], align 4
@hi3670_media1_divider_clks = internal constant [6 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 11, ptr @.str.286, ptr @.str.302, i32 4, i32 116, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 12, ptr @.str.288, ptr @.str.304, i32 4, i32 104, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 13, ptr @.str.290, ptr @.str.306, i32 4, i32 96, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 14, ptr @.str.292, ptr @.str.308, i32 4, i32 100, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 15, ptr @.str.298, ptr @.str.310, i32 4, i32 124, i8 10, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 16, ptr @.str.300, ptr @.str.312, i32 4, i32 120, i8 0, i8 2, i8 8, ptr null, ptr null }], align 4
@.str.278 = private unnamed_addr constant [18 x i8] c"aclk_gate_noc_dss\00", align 1
@.str.279 = private unnamed_addr constant [26 x i8] c"aclk_gate_disp_noc_subsys\00", align 1
@.str.280 = private unnamed_addr constant [22 x i8] c"pclk_gate_noc_dss_cfg\00", align 1
@.str.281 = private unnamed_addr constant [26 x i8] c"pclk_gate_disp_noc_subsys\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"pclk_gate_mmbuf_cfg\00", align 1
@.str.283 = private unnamed_addr constant [21 x i8] c"clk_gate_vivobusfreq\00", align 1
@.str.284 = private unnamed_addr constant [14 x i8] c"pclk_gate_dss\00", align 1
@.str.285 = private unnamed_addr constant [14 x i8] c"aclk_gate_dss\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"clk_div_vivobus\00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"clk_gate_edc0\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"clk_div_edc0\00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"clk_gate_ldi0\00", align 1
@.str.290 = private unnamed_addr constant [13 x i8] c"clk_div_ldi0\00", align 1
@.str.291 = private unnamed_addr constant [18 x i8] c"clk_gate_ldi1freq\00", align 1
@.str.292 = private unnamed_addr constant [13 x i8] c"clk_div_ldi1\00", align 1
@.str.293 = private unnamed_addr constant [13 x i8] c"clk_gate_brg\00", align 1
@.str.294 = private unnamed_addr constant [21 x i8] c"clk_media_common_div\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"aclk_gate_asc\00", align 1
@.str.296 = private unnamed_addr constant [15 x i8] c"clk_gate_mmbuf\00", align 1
@.str.297 = private unnamed_addr constant [20 x i8] c"clk_gate_dss_axi_mm\00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c"aclk_div_mmbuf\00", align 1
@.str.299 = private unnamed_addr constant [16 x i8] c"pclk_gate_mmbuf\00", align 1
@.str.300 = private unnamed_addr constant [15 x i8] c"pclk_div_mmbuf\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"clk_gate_atdiv_vivo\00", align 1
@.str.302 = private unnamed_addr constant [23 x i8] c"clk_gate_vivobus_andgt\00", align 1
@.str.303 = private unnamed_addr constant [16 x i8] c"clk_mux_vivobus\00", align 1
@.str.304 = private unnamed_addr constant [15 x i8] c"clk_andgt_edc0\00", align 1
@.str.305 = private unnamed_addr constant [13 x i8] c"clk_mux_edc0\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"clk_andgt_ldi0\00", align 1
@.str.307 = private unnamed_addr constant [13 x i8] c"clk_mux_ldi0\00", align 1
@.str.308 = private unnamed_addr constant [15 x i8] c"clk_andgt_ldi1\00", align 1
@.str.309 = private unnamed_addr constant [13 x i8] c"clk_mux_ldi1\00", align 1
@.str.310 = private unnamed_addr constant [20 x i8] c"clk_mmbuf_pll_andgt\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"clk_sw_mmbuf\00", align 1
@.str.312 = private unnamed_addr constant [17 x i8] c"pclk_mmbuf_andgt\00", align 1
@clk_mux_vivobus_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.20, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_mux_edc0_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.20, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_mux_ldi0_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.31, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_mux_ldi1_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.31, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@clk_sw_mmbuf_p = internal constant [16 x ptr] [ptr @.str.20, ptr @.str.20, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 4
@hi3670_media2_gate_sep_clks = internal constant [3 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.313, ptr @.str.222, i32 4, i32 0, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.314, ptr @.str.223, i32 4, i32 0, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.315, ptr @.str.224, i32 4, i32 0, i8 2, i8 0, ptr null }], align 4
@.str.313 = private unnamed_addr constant [18 x i8] c"clk_gate_vdecfreq\00", align 1
@.str.314 = private unnamed_addr constant [18 x i8] c"clk_gate_vencfreq\00", align 1
@.str.315 = private unnamed_addr constant [17 x i8] c"clk_gate_icsfreq\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_hi3670__162_1016_hi3670_clk_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3670_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3670_clk_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3670_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %4) #3
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ 0, %7 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_crgctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 221) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3670_fixed_rate_clks, i32 noundef 20, ptr noundef nonnull %2) #3
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_crgctrl_gate_sep_clks, i32 noundef 107, ptr noundef nonnull %2) #3
  %6 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_crgctrl_gate_clks, i32 noundef 28, ptr noundef nonnull %2) #3
  %7 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3670_crgctrl_mux_clks, i32 noundef 22, ptr noundef nonnull %2) #3
  %8 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3670_crg_fixed_factor_clks, i32 noundef 18, ptr noundef nonnull %2) #3
  %9 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3670_crgctrl_divider_clks, i32 noundef 26, ptr noundef nonnull %2) #3
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_pctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 2) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_pctrl_gate_clks, i32 noundef 2, ptr noundef nonnull %2) #3
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_pmuctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 1) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_pmu_gate_clks, i32 noundef 1, ptr noundef nonnull %2) #3
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_sctrl_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 39) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_sctrl_gate_sep_clks, i32 noundef 24, ptr noundef nonnull %2) #3
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_sctrl_gate_clks, i32 noundef 3, ptr noundef nonnull %2) #3
  %6 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3670_sctrl_mux_clks, i32 noundef 5, ptr noundef nonnull %2) #3
  %7 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3670_sctrl_divider_clks, i32 noundef 7, ptr noundef nonnull %2) #3
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_iomcu_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 13) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_iomcu_gate_sep_clks, i32 noundef 7, ptr noundef nonnull %2) #3
  %6 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3670_iomcu_fixed_factor_clks, i32 noundef 6, ptr noundef nonnull %2) #3
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_media1_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 34) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_media1_gate_sep_clks, i32 noundef 17, ptr noundef nonnull %2) #3
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_media1_gate_clks, i32 noundef 6, ptr noundef nonnull %2) #3
  %6 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3670_media1_mux_clks, i32 noundef 5, ptr noundef nonnull %2) #3
  %7 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3670_media1_divider_clks, i32 noundef 6, ptr noundef nonnull %2) #3
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3670_clk_media2_init(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 3) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_media2_gate_sep_clks, i32 noundef 3, ptr noundef nonnull %2) #3
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
