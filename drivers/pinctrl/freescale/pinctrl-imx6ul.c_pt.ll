; ModuleID = '/llk/IR/drivers/pinctrl/freescale/pinctrl-imx6ul.c_pt.bc'
source_filename = "../drivers/pinctrl/freescale/pinctrl-imx6ul.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_pinctrl_soc_info = type { ptr, i32, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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

@__initcall__kmod_pinctrl_imx6ul__202_355_imx6ul_pinctrl_init3 = internal global ptr @imx6ul_pinctrl_init, section ".initcall3.init", align 4
@imx6ul_pinctrl_driver = internal global %struct.platform_driver { ptr @imx6ul_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx6ul_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"imx6ul-pinctrl\00", align 1
@imx6ul_pinctrl_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-iomuxc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_pinctrl_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-iomuxc-snvs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ull_snvs_pinctrl_info }, %struct.of_device_id zeroinitializer], align 4
@imx6ul_pinctrl_info = internal constant %struct.imx_pinctrl_soc_info { ptr @imx6ul_pinctrl_pads, i32 129, i32 0, ptr @.str.1, i32 0, i8 0, i8 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx6ull_snvs_pinctrl_info = internal constant %struct.imx_pinctrl_soc_info { ptr @imx6ull_snvs_pinctrl_pads, i32 12, i32 2, ptr null, i32 0, i8 0, i8 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx6ul_pinctrl_pads = internal constant [129 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.130, ptr null }], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fsl,imx6ul-iomuxc-gpr\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE0\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE1\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE3\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE4\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE5\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE6\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE7\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE8\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_RESERVE9\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_RESERVE10\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"MX6UL_PAD_SNVS_TAMPER4\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_RESERVE12\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_RESERVE13\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_RESERVE14\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_RESERVE15\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_RESERVE16\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_JTAG_MOD\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_JTAG_TMS\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_JTAG_TDO\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_JTAG_TDI\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_JTAG_TCK\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_JTAG_TRST_B\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO00\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO01\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO02\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO03\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO04\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO05\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO06\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO07\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO08\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_GPIO1_IO09\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART1_TX_DATA\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART1_RX_DATA\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_UART1_CTS_B\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_UART1_RTS_B\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART2_TX_DATA\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART2_RX_DATA\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_UART2_CTS_B\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_UART2_RTS_B\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART3_TX_DATA\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART3_RX_DATA\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_UART3_CTS_B\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_UART3_RTS_B\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART4_TX_DATA\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART4_RX_DATA\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART5_TX_DATA\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"MX6UL_PAD_UART5_RX_DATA\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET1_RX_DATA0\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET1_RX_DATA1\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_ENET1_RX_EN\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET1_TX_DATA0\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET1_TX_DATA1\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_ENET1_TX_EN\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"MX6UL_PAD_ENET1_TX_CLK\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_ENET1_RX_ER\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET2_RX_DATA0\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET2_RX_DATA1\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_ENET2_RX_EN\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET2_TX_DATA0\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"MX6UL_PAD_ENET2_TX_DATA1\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_ENET2_TX_EN\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"MX6UL_PAD_ENET2_TX_CLK\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_ENET2_RX_ER\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"MX6UL_PAD_LCD_CLK\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_ENABLE\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_LCD_HSYNC\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_LCD_VSYNC\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_LCD_RESET\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA00\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA01\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA02\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA03\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA04\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA05\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA06\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA07\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA08\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA09\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA10\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA11\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA12\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA13\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA14\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA15\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA16\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA17\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA18\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA19\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA20\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA21\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA22\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_LCD_DATA23\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_NAND_RE_B\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_NAND_WE_B\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA00\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA01\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA02\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA03\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA04\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA05\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA06\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"MX6UL_PAD_NAND_DATA07\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_NAND_ALE\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_NAND_WP_B\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"MX6UL_PAD_NAND_READY_B\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_NAND_CE0_B\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_NAND_CE1_B\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_NAND_CLE\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_NAND_DQS\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"MX6UL_PAD_SD1_CMD\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"MX6UL_PAD_SD1_CLK\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_SD1_DATA0\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_SD1_DATA1\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_SD1_DATA2\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_SD1_DATA3\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"MX6UL_PAD_CSI_MCLK\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_PIXCLK\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_CSI_VSYNC\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"MX6UL_PAD_CSI_HSYNC\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA00\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA01\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA02\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA03\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA04\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA05\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA06\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"MX6UL_PAD_CSI_DATA07\00", align 1
@imx6ull_snvs_pinctrl_pads = internal constant [12 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.142, ptr null }], align 4
@.str.131 = private unnamed_addr constant [22 x i8] c"MX6ULL_PAD_BOOT_MODE0\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"MX6ULL_PAD_BOOT_MODE1\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER0\00", align 1
@.str.134 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER1\00", align 1
@.str.135 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER2\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER3\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER4\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER5\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER6\00", align 1
@.str.140 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER7\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER8\00", align 1
@.str.142 = private unnamed_addr constant [24 x i8] c"MX6ULL_PAD_SNVS_TAMPER9\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_imx6ul__202_355_imx6ul_pinctrl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx6ul_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx6ul_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6ul_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @imx_pinctrl_probe(ptr noundef %0, ptr noundef nonnull %3) #3
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -19, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

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
