; ModuleID = '/llk/IR/drivers/pinctrl/berlin/berlin-bg2.c_pt.bc'
source_filename = "../drivers/pinctrl/berlin/berlin-bg2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.berlin_pinctrl_desc = type { ptr, i32 }
%struct.berlin_desc_group = type { ptr, i8, i8, i8, ptr }
%struct.berlin_desc_function = type { ptr, i8 }
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

@__initcall__kmod_berlin_bg2__162_243_berlin2_pinctrl_driver_init6 = internal global ptr @berlin2_pinctrl_driver_init, section ".initcall6.init", align 4
@berlin2_pinctrl_driver = internal global %struct.platform_driver { ptr @berlin2_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @berlin2_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [19 x i8] c"berlin-bg2-pinctrl\00", align 1
@berlin2_pinctrl_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-soc-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2_soc_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-system-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2_sysmgr_pinctrl_data }, %struct.of_device_id zeroinitializer], align 4
@berlin2_soc_pinctrl_data = internal constant %struct.berlin_pinctrl_desc { ptr @berlin2_soc_pinctrl_groups, i32 29 }, align 4
@berlin2_sysmgr_pinctrl_data = internal constant %struct.berlin_pinctrl_desc { ptr @berlin2_sysmgr_pinctrl_groups, i32 12 }, align 4
@berlin2_soc_pinctrl_groups = internal constant [29 x %struct.berlin_desc_group] [%struct.berlin_desc_group { ptr @.str.1, i8 0, i8 1, i8 0, ptr @.compoundliteral }, %struct.berlin_desc_group { ptr @.str.4, i8 0, i8 2, i8 1, ptr @.compoundliteral.6 }, %struct.berlin_desc_group { ptr @.str.7, i8 0, i8 2, i8 2, ptr @.compoundliteral.10 }, %struct.berlin_desc_group { ptr @.str.11, i8 0, i8 2, i8 4, ptr @.compoundliteral.14 }, %struct.berlin_desc_group { ptr @.str.15, i8 0, i8 2, i8 6, ptr @.compoundliteral.16 }, %struct.berlin_desc_group { ptr @.str.17, i8 0, i8 3, i8 8, ptr @.compoundliteral.22 }, %struct.berlin_desc_group { ptr @.str.23, i8 0, i8 2, i8 11, ptr @.compoundliteral.25 }, %struct.berlin_desc_group { ptr @.str.26, i8 0, i8 3, i8 13, ptr @.compoundliteral.28 }, %struct.berlin_desc_group { ptr @.str.29, i8 0, i8 3, i8 16, ptr @.compoundliteral.34 }, %struct.berlin_desc_group { ptr @.str.35, i8 0, i8 3, i8 19, ptr @.compoundliteral.36 }, %struct.berlin_desc_group { ptr @.str.37, i8 0, i8 2, i8 22, ptr @.compoundliteral.40 }, %struct.berlin_desc_group { ptr @.str.41, i8 0, i8 2, i8 24, ptr @.compoundliteral.44 }, %struct.berlin_desc_group { ptr @.str.45, i8 0, i8 3, i8 26, ptr @.compoundliteral.49 }, %struct.berlin_desc_group { ptr @.str.50, i8 4, i8 3, i8 0, ptr @.compoundliteral.51 }, %struct.berlin_desc_group { ptr @.str.52, i8 4, i8 1, i8 3, ptr @.compoundliteral.53 }, %struct.berlin_desc_group { ptr @.str.54, i8 4, i8 2, i8 4, ptr @.compoundliteral.56 }, %struct.berlin_desc_group { ptr @.str.57, i8 4, i8 3, i8 6, ptr @.compoundliteral.60 }, %struct.berlin_desc_group { ptr @.str.61, i8 4, i8 3, i8 9, ptr @.compoundliteral.62 }, %struct.berlin_desc_group { ptr @.str.63, i8 4, i8 1, i8 12, ptr @.compoundliteral.65 }, %struct.berlin_desc_group { ptr @.str.66, i8 4, i8 1, i8 13, ptr @.compoundliteral.67 }, %struct.berlin_desc_group { ptr @.str.68, i8 4, i8 1, i8 14, ptr @.compoundliteral.71 }, %struct.berlin_desc_group { ptr @.str.72, i8 4, i8 3, i8 15, ptr @.compoundliteral.76 }, %struct.berlin_desc_group { ptr @.str.77, i8 4, i8 3, i8 18, ptr @.compoundliteral.79 }, %struct.berlin_desc_group { ptr @.str.80, i8 4, i8 3, i8 21, ptr @.compoundliteral.83 }, %struct.berlin_desc_group { ptr @.str.84, i8 4, i8 2, i8 24, ptr @.compoundliteral.85 }, %struct.berlin_desc_group { ptr @.str.86, i8 4, i8 2, i8 26, ptr @.compoundliteral.88 }, %struct.berlin_desc_group { ptr @.str.89, i8 4, i8 1, i8 28, ptr @.compoundliteral.91 }, %struct.berlin_desc_group { ptr @.str.92, i8 4, i8 1, i8 29, ptr @.compoundliteral.93 }, %struct.berlin_desc_group { ptr @.str.94, i8 4, i8 2, i8 30, ptr @.compoundliteral.97 }], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"G0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.compoundliteral = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.2, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"G1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.compoundliteral.6 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.2, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function { ptr @.str.5, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"G2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@.compoundliteral.10 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.2, i8 1 }, %struct.berlin_desc_function { ptr @.str.8, i8 2 }, %struct.berlin_desc_function { ptr @.str.9, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"G3\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.compoundliteral.14 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.12, i8 0 }, %struct.berlin_desc_function { ptr @.str.2, i8 1 }, %struct.berlin_desc_function { ptr @.str.3, i8 2 }, %struct.berlin_desc_function { ptr @.str.13, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"G4\00", align 1
@.compoundliteral.16 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.2, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function { ptr @.str.8, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"G5\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sts1\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"et\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"i2s3\00", align 1
@.compoundliteral.22 = internal global [6 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.18, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.20, i8 3 }, %struct.berlin_desc_function { ptr @.str.21, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"G6\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"sts0\00", align 1
@.compoundliteral.25 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.24, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"G7\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"vdac\00", align 1
@.compoundliteral.28 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.24, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.27, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"G8\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"usb0_dbg\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"sata_dbg\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"usb1_dbg\00", align 1
@.compoundliteral.34 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.30, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.31, i8 3 }, %struct.berlin_desc_function { ptr @.str.32, i8 4 }, %struct.berlin_desc_function { ptr @.str.33, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [3 x i8] c"G9\00", align 1
@.compoundliteral.36 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.30, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.31, i8 3 }, %struct.berlin_desc_function { ptr @.str.32, i8 4 }, %struct.berlin_desc_function { ptr @.str.33, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"G10\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"twsi0\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.compoundliteral.40 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.12, i8 0 }, %struct.berlin_desc_function { ptr @.str.38, i8 1 }, %struct.berlin_desc_function { ptr @.str.3, i8 2 }, %struct.berlin_desc_function { ptr @.str.39, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"G11\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"twsi1\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"eddc\00", align 1
@.compoundliteral.44 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.12, i8 0 }, %struct.berlin_desc_function { ptr @.str.42, i8 1 }, %struct.berlin_desc_function { ptr @.str.3, i8 2 }, %struct.berlin_desc_function { ptr @.str.43, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [4 x i8] c"G12\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"sts2\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@.compoundliteral.49 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.46, i8 0 }, %struct.berlin_desc_function { ptr @.str.47, i8 1 }, %struct.berlin_desc_function { ptr @.str.48, i8 2 }, %struct.berlin_desc_function { ptr @.str.31, i8 3 }, %struct.berlin_desc_function { ptr @.str.18, i8 4 }, %struct.berlin_desc_function { ptr @.str.33, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"G13\00", align 1
@.compoundliteral.51 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.47, i8 1 }, %struct.berlin_desc_function { ptr @.str.48, i8 2 }, %struct.berlin_desc_function { ptr @.str.31, i8 3 }, %struct.berlin_desc_function { ptr @.str.18, i8 4 }, %struct.berlin_desc_function { ptr @.str.33, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.52 = private unnamed_addr constant [4 x i8] c"G14\00", align 1
@.compoundliteral.53 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.54 = private unnamed_addr constant [4 x i8] c"G15\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"osco\00", align 1
@.compoundliteral.56 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.55, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"G16\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"dvio\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.compoundliteral.60 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.58, i8 1 }, %struct.berlin_desc_function { ptr @.str.59, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.61 = private unnamed_addr constant [4 x i8] c"G17\00", align 1
@.compoundliteral.62 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.58, i8 1 }, %struct.berlin_desc_function { ptr @.str.59, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.63 = private unnamed_addr constant [4 x i8] c"G18\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.compoundliteral.65 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.64, i8 0 }, %struct.berlin_desc_function { ptr @.str.9, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.66 = private unnamed_addr constant [4 x i8] c"G19\00", align 1
@.compoundliteral.67 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.9, i8 0 }, %struct.berlin_desc_function { ptr @.str.8, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.68 = private unnamed_addr constant [4 x i8] c"G20\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.compoundliteral.71 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.69, i8 0 }, %struct.berlin_desc_function { ptr @.str.70, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.72 = private unnamed_addr constant [4 x i8] c"G21\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"adac_dbg\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"pdm_a\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"pdm_b\00", align 1
@.compoundliteral.76 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.58, i8 1 }, %struct.berlin_desc_function { ptr @.str.59, i8 2 }, %struct.berlin_desc_function { ptr @.str.73, i8 3 }, %struct.berlin_desc_function { ptr @.str.74, i8 4 }, %struct.berlin_desc_function { ptr @.str.75, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.77 = private unnamed_addr constant [4 x i8] c"G22\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"dv0\00", align 1
@.compoundliteral.79 = internal global [6 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.78, i8 1 }, %struct.berlin_desc_function { ptr @.str.59, i8 2 }, %struct.berlin_desc_function { ptr @.str.38, i8 3 }, %struct.berlin_desc_function { ptr @.str.8, i8 4 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.80 = private unnamed_addr constant [4 x i8] c"G23\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"vclki\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"pdm\00", align 1
@.compoundliteral.83 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.81, i8 0 }, %struct.berlin_desc_function { ptr @.str.78, i8 1 }, %struct.berlin_desc_function { ptr @.str.59, i8 2 }, %struct.berlin_desc_function { ptr @.str.9, i8 3 }, %struct.berlin_desc_function { ptr @.str.8, i8 4 }, %struct.berlin_desc_function { ptr @.str.82, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.84 = private unnamed_addr constant [4 x i8] c"G24\00", align 1
@.compoundliteral.85 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.20, i8 0 }, %struct.berlin_desc_function { ptr @.str.13, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.86 = private unnamed_addr constant [4 x i8] c"G25\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.compoundliteral.88 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.87, i8 1 }, %struct.berlin_desc_function { ptr @.str.20, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.89 = private unnamed_addr constant [4 x i8] c"G26\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@.compoundliteral.91 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.87, i8 0 }, %struct.berlin_desc_function { ptr @.str.90, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.92 = private unnamed_addr constant [4 x i8] c"G27\00", align 1
@.compoundliteral.93 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.87, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.94 = private unnamed_addr constant [4 x i8] c"G28\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"dvo\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.compoundliteral.97 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.95, i8 0 }, %struct.berlin_desc_function { ptr @.str.96, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@berlin2_sysmgr_pinctrl_groups = internal constant [12 x %struct.berlin_desc_group] [%struct.berlin_desc_group { ptr @.str.98, i8 64, i8 2, i8 0, ptr @.compoundliteral.101 }, %struct.berlin_desc_group { ptr @.str.102, i8 64, i8 2, i8 2, ptr @.compoundliteral.103 }, %struct.berlin_desc_group { ptr @.str.104, i8 64, i8 2, i8 4, ptr @.compoundliteral.106 }, %struct.berlin_desc_group { ptr @.str.107, i8 64, i8 2, i8 6, ptr @.compoundliteral.110 }, %struct.berlin_desc_group { ptr @.str.111, i8 64, i8 2, i8 8, ptr @.compoundliteral.113 }, %struct.berlin_desc_group { ptr @.str.114, i8 64, i8 2, i8 10, ptr @.compoundliteral.118 }, %struct.berlin_desc_group { ptr @.str.119, i8 64, i8 2, i8 12, ptr @.compoundliteral.121 }, %struct.berlin_desc_group { ptr @.str.122, i8 64, i8 1, i8 14, ptr @.compoundliteral.124 }, %struct.berlin_desc_group { ptr @.str.125, i8 64, i8 1, i8 15, ptr @.compoundliteral.126 }, %struct.berlin_desc_group { ptr @.str.127, i8 64, i8 1, i8 16, ptr @.compoundliteral.129 }, %struct.berlin_desc_group { ptr @.str.130, i8 64, i8 1, i8 17, ptr @.compoundliteral.131 }, %struct.berlin_desc_group { ptr @.str.132, i8 64, i8 1, i8 18, ptr @.compoundliteral.133 }], align 4
@.str.98 = private unnamed_addr constant [5 x i8] c"GSM0\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"eth1\00", align 1
@.compoundliteral.101 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.99, i8 1 }, %struct.berlin_desc_function { ptr @.str.100, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.102 = private unnamed_addr constant [5 x i8] c"GSM1\00", align 1
@.compoundliteral.103 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.99, i8 1 }, %struct.berlin_desc_function { ptr @.str.100, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.104 = private unnamed_addr constant [5 x i8] c"GSM2\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"twsi2\00", align 1
@.compoundliteral.106 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.105, i8 0 }, %struct.berlin_desc_function { ptr @.str.99, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.107 = private unnamed_addr constant [5 x i8] c"GSM3\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.compoundliteral.110 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.108, i8 1 }, %struct.berlin_desc_function { ptr @.str.109, i8 2 }, %struct.berlin_desc_function { ptr @.str.105, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.111 = private unnamed_addr constant [5 x i8] c"GSM4\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"irda0\00", align 1
@.compoundliteral.113 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.108, i8 0 }, %struct.berlin_desc_function { ptr @.str.112, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.114 = private unnamed_addr constant [5 x i8] c"GSM5\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"irda1\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"twsi3\00", align 1
@.compoundliteral.118 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.115, i8 1 }, %struct.berlin_desc_function { ptr @.str.116, i8 2 }, %struct.berlin_desc_function { ptr @.str.117, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.119 = private unnamed_addr constant [5 x i8] c"GSM6\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"clki\00", align 1
@.compoundliteral.121 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.99, i8 1 }, %struct.berlin_desc_function { ptr @.str.120, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.122 = private unnamed_addr constant [5 x i8] c"GSM7\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.compoundliteral.124 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.123, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.125 = private unnamed_addr constant [5 x i8] c"GSM8\00", align 1
@.compoundliteral.126 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.123, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.127 = private unnamed_addr constant [5 x i8] c"GSM9\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@.compoundliteral.129 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.128, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.130 = private unnamed_addr constant [6 x i8] c"GSM10\00", align 1
@.compoundliteral.131 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.128, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.132 = private unnamed_addr constant [6 x i8] c"GSM11\00", align 1
@.compoundliteral.133 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.128, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_berlin_bg2__162_243_berlin2_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @berlin2_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @berlin2_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @berlin2_pinctrl_match, ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @berlin_pinctrl_probe(ptr noundef %0, ptr noundef %5) #3
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

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
