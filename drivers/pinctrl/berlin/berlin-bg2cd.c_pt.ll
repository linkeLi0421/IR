; ModuleID = '/llk/IR/drivers/pinctrl/berlin/berlin-bg2cd.c_pt.bc'
source_filename = "../drivers/pinctrl/berlin/berlin-bg2cd.c"
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

@__initcall__kmod_berlin_bg2cd__162_188_berlin2cd_pinctrl_driver_init6 = internal global ptr @berlin2cd_pinctrl_driver_init, section ".initcall6.init", align 4
@berlin2cd_pinctrl_driver = internal global %struct.platform_driver { ptr @berlin2cd_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @berlin2cd_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [21 x i8] c"berlin-bg2cd-pinctrl\00", align 1
@berlin2cd_pinctrl_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2cd-soc-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2cd_soc_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2cd-system-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2cd_sysmgr_pinctrl_data }, %struct.of_device_id zeroinitializer], align 4
@berlin2cd_soc_pinctrl_data = internal constant %struct.berlin_pinctrl_desc { ptr @berlin2cd_soc_pinctrl_groups, i32 30 }, align 4
@berlin2cd_sysmgr_pinctrl_data = internal constant %struct.berlin_pinctrl_desc { ptr @berlin2cd_sysmgr_pinctrl_groups, i32 12 }, align 4
@berlin2cd_soc_pinctrl_groups = internal constant [30 x %struct.berlin_desc_group] [%struct.berlin_desc_group { ptr @.str.1, i8 0, i8 3, i8 0, ptr @.compoundliteral }, %struct.berlin_desc_group { ptr @.str.6, i8 0, i8 3, i8 3, ptr @.compoundliteral.10 }, %struct.berlin_desc_group { ptr @.str.11, i8 0, i8 3, i8 6, ptr @.compoundliteral.14 }, %struct.berlin_desc_group { ptr @.str.15, i8 0, i8 3, i8 9, ptr @.compoundliteral.17 }, %struct.berlin_desc_group { ptr @.str.18, i8 0, i8 3, i8 12, ptr @.compoundliteral.20 }, %struct.berlin_desc_group { ptr @.str.21, i8 0, i8 3, i8 15, ptr @.compoundliteral.23 }, %struct.berlin_desc_group { ptr @.str.24, i8 0, i8 3, i8 18, ptr @.compoundliteral.26 }, %struct.berlin_desc_group { ptr @.str.27, i8 0, i8 3, i8 21, ptr @.compoundliteral.30 }, %struct.berlin_desc_group { ptr @.str.31, i8 0, i8 3, i8 24, ptr @.compoundliteral.33 }, %struct.berlin_desc_group { ptr @.str.34, i8 0, i8 3, i8 27, ptr @.compoundliteral.36 }, %struct.berlin_desc_group { ptr @.str.37, i8 0, i8 2, i8 30, ptr @.compoundliteral.38 }, %struct.berlin_desc_group { ptr @.str.39, i8 4, i8 2, i8 0, ptr @.compoundliteral.40 }, %struct.berlin_desc_group { ptr @.str.41, i8 4, i8 3, i8 2, ptr @.compoundliteral.43 }, %struct.berlin_desc_group { ptr @.str.44, i8 4, i8 3, i8 5, ptr @.compoundliteral.46 }, %struct.berlin_desc_group { ptr @.str.47, i8 4, i8 1, i8 8, ptr @.compoundliteral.48 }, %struct.berlin_desc_group { ptr @.str.49, i8 4, i8 3, i8 9, ptr @.compoundliteral.50 }, %struct.berlin_desc_group { ptr @.str.51, i8 4, i8 3, i8 12, ptr @.compoundliteral.52 }, %struct.berlin_desc_group { ptr @.str.53, i8 4, i8 3, i8 15, ptr @.compoundliteral.54 }, %struct.berlin_desc_group { ptr @.str.55, i8 4, i8 2, i8 18, ptr @.compoundliteral.56 }, %struct.berlin_desc_group { ptr @.str.57, i8 4, i8 2, i8 20, ptr @.compoundliteral.58 }, %struct.berlin_desc_group { ptr @.str.59, i8 4, i8 2, i8 22, ptr @.compoundliteral.60 }, %struct.berlin_desc_group { ptr @.str.61, i8 4, i8 3, i8 24, ptr @.compoundliteral.62 }, %struct.berlin_desc_group { ptr @.str.63, i8 4, i8 3, i8 27, ptr @.compoundliteral.64 }, %struct.berlin_desc_group { ptr @.str.65, i8 8, i8 3, i8 0, ptr @.compoundliteral.66 }, %struct.berlin_desc_group { ptr @.str.67, i8 8, i8 2, i8 3, ptr @.compoundliteral.68 }, %struct.berlin_desc_group { ptr @.str.69, i8 8, i8 2, i8 5, ptr @.compoundliteral.70 }, %struct.berlin_desc_group { ptr @.str.71, i8 8, i8 1, i8 7, ptr @.compoundliteral.72 }, %struct.berlin_desc_group { ptr @.str.73, i8 8, i8 2, i8 8, ptr @.compoundliteral.74 }, %struct.berlin_desc_group { ptr @.str.75, i8 8, i8 3, i8 10, ptr @.compoundliteral.76 }, %struct.berlin_desc_group { ptr @.str.77, i8 8, i8 3, i8 13, ptr @.compoundliteral.78 }], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"G0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"jtag\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.compoundliteral = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.2, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function { ptr @.str.4, i8 2 }, %struct.berlin_desc_function { ptr @.str.5, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"G1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"usb0_dbg\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"usb1_dbg\00", align 1
@.compoundliteral.10 = internal global [5 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.7, i8 1 }, %struct.berlin_desc_function { ptr @.str.8, i8 6 }, %struct.berlin_desc_function { ptr @.str.9, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"G2\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.compoundliteral.14 = internal global [7 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.7, i8 1 }, %struct.berlin_desc_function { ptr @.str.12, i8 2 }, %struct.berlin_desc_function { ptr @.str.13, i8 3 }, %struct.berlin_desc_function { ptr @.str.8, i8 6 }, %struct.berlin_desc_function { ptr @.str.9, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"G3\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"twsi2\00", align 1
@.compoundliteral.17 = internal global [8 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.7, i8 1 }, %struct.berlin_desc_function { ptr @.str.16, i8 2 }, %struct.berlin_desc_function { ptr @.str.13, i8 3 }, %struct.berlin_desc_function { ptr @.str.12, i8 4 }, %struct.berlin_desc_function { ptr @.str.8, i8 6 }, %struct.berlin_desc_function { ptr @.str.9, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"G4\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"twsi3\00", align 1
@.compoundliteral.20 = internal global [8 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.7, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.13, i8 3 }, %struct.berlin_desc_function { ptr @.str.5, i8 4 }, %struct.berlin_desc_function { ptr @.str.8, i8 6 }, %struct.berlin_desc_function { ptr @.str.9, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"G5\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.compoundliteral.23 = internal global [8 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.7, i8 1 }, %struct.berlin_desc_function { ptr @.str.19, i8 2 }, %struct.berlin_desc_function { ptr @.str.22, i8 3 }, %struct.berlin_desc_function { ptr @.str.5, i8 4 }, %struct.berlin_desc_function { ptr @.str.8, i8 6 }, %struct.berlin_desc_function { ptr @.str.9, i8 7 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"G6\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.compoundliteral.26 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.25, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [3 x i8] c"G7\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"eddc\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"twsi1\00", align 1
@.compoundliteral.30 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.28, i8 0 }, %struct.berlin_desc_function { ptr @.str.29, i8 1 }, %struct.berlin_desc_function { ptr @.str.3, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"G8\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.33 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.32, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [3 x i8] c"G9\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"twsi0\00", align 1
@.compoundliteral.36 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.3, i8 0 }, %struct.berlin_desc_function { ptr @.str.32, i8 1 }, %struct.berlin_desc_function { ptr @.str.35, i8 3 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"G10\00", align 1
@.compoundliteral.38 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.32, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"G11\00", align 1
@.compoundliteral.40 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.32, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"G12\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.compoundliteral.43 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.42, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"G13\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.compoundliteral.46 = internal global [4 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.45, i8 0 }, %struct.berlin_desc_function { ptr @.str.8, i8 1 }, %struct.berlin_desc_function { ptr @.str.9, i8 2 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [4 x i8] c"G14\00", align 1
@.compoundliteral.48 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.45, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.49 = private unnamed_addr constant [4 x i8] c"G15\00", align 1
@.compoundliteral.50 = internal global [3 x %struct.berlin_desc_function] [%struct.berlin_desc_function { ptr @.str.2, i8 0 }, %struct.berlin_desc_function { ptr @.str.3, i8 1 }, %struct.berlin_desc_function zeroinitializer], align 4
@.str.51 = private unnamed_addr constant [4 x i8] c"G16\00", align 1
@.compoundliteral.52 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.53 = private unnamed_addr constant [4 x i8] c"G17\00", align 1
@.compoundliteral.54 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.55 = private unnamed_addr constant [4 x i8] c"G18\00", align 1
@.compoundliteral.56 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"G19\00", align 1
@.compoundliteral.58 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.59 = private unnamed_addr constant [4 x i8] c"G20\00", align 1
@.compoundliteral.60 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.61 = private unnamed_addr constant [4 x i8] c"G21\00", align 1
@.compoundliteral.62 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.63 = private unnamed_addr constant [4 x i8] c"G22\00", align 1
@.compoundliteral.64 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.65 = private unnamed_addr constant [4 x i8] c"G23\00", align 1
@.compoundliteral.66 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"G24\00", align 1
@.compoundliteral.68 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.69 = private unnamed_addr constant [4 x i8] c"G25\00", align 1
@.compoundliteral.70 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.71 = private unnamed_addr constant [4 x i8] c"G26\00", align 1
@.compoundliteral.72 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.73 = private unnamed_addr constant [4 x i8] c"G27\00", align 1
@.compoundliteral.74 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.75 = private unnamed_addr constant [4 x i8] c"G28\00", align 1
@.compoundliteral.76 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.77 = private unnamed_addr constant [4 x i8] c"G29\00", align 1
@.compoundliteral.78 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@berlin2cd_sysmgr_pinctrl_groups = internal constant [12 x %struct.berlin_desc_group] [%struct.berlin_desc_group { ptr @.str.79, i8 64, i8 2, i8 0, ptr @.compoundliteral.80 }, %struct.berlin_desc_group { ptr @.str.81, i8 64, i8 2, i8 2, ptr @.compoundliteral.82 }, %struct.berlin_desc_group { ptr @.str.83, i8 64, i8 2, i8 4, ptr @.compoundliteral.84 }, %struct.berlin_desc_group { ptr @.str.85, i8 64, i8 2, i8 6, ptr @.compoundliteral.86 }, %struct.berlin_desc_group { ptr @.str.87, i8 64, i8 2, i8 8, ptr @.compoundliteral.88 }, %struct.berlin_desc_group { ptr @.str.89, i8 64, i8 2, i8 10, ptr @.compoundliteral.90 }, %struct.berlin_desc_group { ptr @.str.91, i8 64, i8 2, i8 12, ptr @.compoundliteral.92 }, %struct.berlin_desc_group { ptr @.str.93, i8 64, i8 1, i8 14, ptr @.compoundliteral.94 }, %struct.berlin_desc_group { ptr @.str.95, i8 64, i8 1, i8 15, ptr @.compoundliteral.96 }, %struct.berlin_desc_group { ptr @.str.97, i8 64, i8 1, i8 16, ptr @.compoundliteral.98 }, %struct.berlin_desc_group { ptr @.str.99, i8 64, i8 1, i8 17, ptr @.compoundliteral.100 }, %struct.berlin_desc_group { ptr @.str.101, i8 64, i8 1, i8 18, ptr @.compoundliteral.102 }], align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"GSM0\00", align 1
@.compoundliteral.80 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.81 = private unnamed_addr constant [5 x i8] c"GSM1\00", align 1
@.compoundliteral.82 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.83 = private unnamed_addr constant [5 x i8] c"GSM2\00", align 1
@.compoundliteral.84 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.85 = private unnamed_addr constant [5 x i8] c"GSM3\00", align 1
@.compoundliteral.86 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.87 = private unnamed_addr constant [5 x i8] c"GSM4\00", align 1
@.compoundliteral.88 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.89 = private unnamed_addr constant [5 x i8] c"GSM5\00", align 1
@.compoundliteral.90 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.91 = private unnamed_addr constant [5 x i8] c"GSM6\00", align 1
@.compoundliteral.92 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.93 = private unnamed_addr constant [5 x i8] c"GSM7\00", align 1
@.compoundliteral.94 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.95 = private unnamed_addr constant [5 x i8] c"GSM8\00", align 1
@.compoundliteral.96 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.97 = private unnamed_addr constant [5 x i8] c"GSM9\00", align 1
@.compoundliteral.98 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.99 = private unnamed_addr constant [6 x i8] c"GSM10\00", align 1
@.compoundliteral.100 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@.str.101 = private unnamed_addr constant [6 x i8] c"GSM11\00", align 1
@.compoundliteral.102 = internal global [2 x %struct.berlin_desc_function] zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_berlin_bg2cd__162_188_berlin2cd_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @berlin2cd_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @berlin2cd_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2cd_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @berlin2cd_pinctrl_match, ptr noundef %2) #3
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
