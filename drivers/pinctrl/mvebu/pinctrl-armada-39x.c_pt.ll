; ModuleID = '/llk/IR/drivers/pinctrl/mvebu/pinctrl-armada-39x.c_pt.bc'
source_filename = "../drivers/pinctrl/mvebu/pinctrl-armada-39x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mvebu_pinctrl_soc_info = type { i8, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.mvebu_mpp_ctrl = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mvebu_mpp_mode = type { i8, ptr }
%struct.mvebu_mpp_ctrl_setting = type { i8, ptr, ptr, i8, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_pinctrl_armada_39x__202_415_armada_39x_pinctrl_driver_init6 = internal global ptr @armada_39x_pinctrl_driver_init, section ".initcall6.init", align 4
@armada_39x_pinctrl_driver = internal global %struct.platform_driver { ptr @armada_39x_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_39x_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [19 x i8] c"armada-39x-pinctrl\00", align 1
@armada_39x_pinctrl_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv88f6920-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv88f6925-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv88f6928-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@armada_39x_pinctrl_info = internal global %struct.mvebu_pinctrl_soc_info zeroinitializer, align 4
@armada_39x_mpp_controls = internal constant [1 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 60, ptr @.compoundliteral, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }], align 4
@armada_39x_mpp_gpio_ranges = internal global [2 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.1, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.1, i32 1, i32 32, i32 32, i32 28, ptr null, ptr null }], align 4
@armada_39x_mpp_modes = internal global [60 x %struct.mvebu_mpp_mode] [%struct.mvebu_mpp_mode { i8 0, ptr @.compoundliteral.5 }, %struct.mvebu_mpp_mode { i8 1, ptr @.compoundliteral.7 }, %struct.mvebu_mpp_mode { i8 2, ptr @.compoundliteral.10 }, %struct.mvebu_mpp_mode { i8 3, ptr @.compoundliteral.12 }, %struct.mvebu_mpp_mode { i8 4, ptr @.compoundliteral.17 }, %struct.mvebu_mpp_mode { i8 5, ptr @.compoundliteral.20 }, %struct.mvebu_mpp_mode { i8 6, ptr @.compoundliteral.24 }, %struct.mvebu_mpp_mode { i8 7, ptr @.compoundliteral.26 }, %struct.mvebu_mpp_mode { i8 8, ptr @.compoundliteral.30 }, %struct.mvebu_mpp_mode { i8 9, ptr @.compoundliteral.33 }, %struct.mvebu_mpp_mode { i8 10, ptr @.compoundliteral.36 }, %struct.mvebu_mpp_mode { i8 11, ptr @.compoundliteral.39 }, %struct.mvebu_mpp_mode { i8 12, ptr @.compoundliteral.44 }, %struct.mvebu_mpp_mode { i8 13, ptr @.compoundliteral.49 }, %struct.mvebu_mpp_mode { i8 14, ptr @.compoundliteral.53 }, %struct.mvebu_mpp_mode { i8 15, ptr @.compoundliteral.57 }, %struct.mvebu_mpp_mode { i8 16, ptr @.compoundliteral.60 }, %struct.mvebu_mpp_mode { i8 17, ptr @.compoundliteral.64 }, %struct.mvebu_mpp_mode { i8 18, ptr @.compoundliteral.67 }, %struct.mvebu_mpp_mode { i8 19, ptr @.compoundliteral.68 }, %struct.mvebu_mpp_mode { i8 20, ptr @.compoundliteral.69 }, %struct.mvebu_mpp_mode { i8 21, ptr @.compoundliteral.76 }, %struct.mvebu_mpp_mode { i8 22, ptr @.compoundliteral.78 }, %struct.mvebu_mpp_mode { i8 23, ptr @.compoundliteral.80 }, %struct.mvebu_mpp_mode { i8 24, ptr @.compoundliteral.83 }, %struct.mvebu_mpp_mode { i8 25, ptr @.compoundliteral.85 }, %struct.mvebu_mpp_mode { i8 26, ptr @.compoundliteral.88 }, %struct.mvebu_mpp_mode { i8 27, ptr @.compoundliteral.91 }, %struct.mvebu_mpp_mode { i8 28, ptr @.compoundliteral.94 }, %struct.mvebu_mpp_mode { i8 29, ptr @.compoundliteral.97 }, %struct.mvebu_mpp_mode { i8 30, ptr @.compoundliteral.100 }, %struct.mvebu_mpp_mode { i8 31, ptr @.compoundliteral.103 }, %struct.mvebu_mpp_mode { i8 32, ptr @.compoundliteral.106 }, %struct.mvebu_mpp_mode { i8 33, ptr @.compoundliteral.108 }, %struct.mvebu_mpp_mode { i8 34, ptr @.compoundliteral.110 }, %struct.mvebu_mpp_mode { i8 35, ptr @.compoundliteral.114 }, %struct.mvebu_mpp_mode { i8 36, ptr @.compoundliteral.116 }, %struct.mvebu_mpp_mode { i8 37, ptr @.compoundliteral.120 }, %struct.mvebu_mpp_mode { i8 38, ptr @.compoundliteral.125 }, %struct.mvebu_mpp_mode { i8 39, ptr @.compoundliteral.129 }, %struct.mvebu_mpp_mode { i8 40, ptr @.compoundliteral.133 }, %struct.mvebu_mpp_mode { i8 41, ptr @.compoundliteral.139 }, %struct.mvebu_mpp_mode { i8 42, ptr @.compoundliteral.141 }, %struct.mvebu_mpp_mode { i8 43, ptr @.compoundliteral.144 }, %struct.mvebu_mpp_mode { i8 44, ptr @.compoundliteral.147 }, %struct.mvebu_mpp_mode { i8 45, ptr @.compoundliteral.148 }, %struct.mvebu_mpp_mode { i8 46, ptr @.compoundliteral.149 }, %struct.mvebu_mpp_mode { i8 47, ptr @.compoundliteral.150 }, %struct.mvebu_mpp_mode { i8 48, ptr @.compoundliteral.155 }, %struct.mvebu_mpp_mode { i8 49, ptr @.compoundliteral.159 }, %struct.mvebu_mpp_mode { i8 50, ptr @.compoundliteral.162 }, %struct.mvebu_mpp_mode { i8 51, ptr @.compoundliteral.165 }, %struct.mvebu_mpp_mode { i8 52, ptr @.compoundliteral.169 }, %struct.mvebu_mpp_mode { i8 53, ptr @.compoundliteral.172 }, %struct.mvebu_mpp_mode { i8 54, ptr @.compoundliteral.174 }, %struct.mvebu_mpp_mode { i8 55, ptr @.compoundliteral.175 }, %struct.mvebu_mpp_mode { i8 56, ptr @.compoundliteral.176 }, %struct.mvebu_mpp_mode { i8 57, ptr @.compoundliteral.177 }, %struct.mvebu_mpp_mode { i8 58, ptr @.compoundliteral.178 }, %struct.mvebu_mpp_mode { i8 59, ptr @.compoundliteral.179 }], align 4
@.compoundliteral = internal global [60 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mvebu-gpio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ua0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rxd\00", align 1
@.compoundliteral.5 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.3, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"txd\00", align 1
@.compoundliteral.7 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.3, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sck\00", align 1
@.compoundliteral.10 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.8, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.compoundliteral.12 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.8, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"ua1\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1
@.compoundliteral.17 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.3, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.15, ptr @.str.16, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"cts\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.compoundliteral.20 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.3, ptr @.str.18, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.15, ptr @.str.19, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"cs3\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"xsmi\00", align 1
@.compoundliteral.24 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.22, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.23, ptr @.str.19, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"ad9\00", align 1
@.compoundliteral.26 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.25, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.23, ptr @.str.16, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"ad10\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"trig\00", align 1
@.compoundliteral.30 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.27, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.28, ptr @.str.29, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"ad11\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@.compoundliteral.33 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.31, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.28, ptr @.str.32, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"ad12\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"evreq\00", align 1
@.compoundliteral.36 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.34, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.28, ptr @.str.35, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"ad13\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@.compoundliteral.39 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.37, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.38, ptr @.str.32, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"pcie0\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"rstout\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"ad14\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"stb\00", align 1
@.compoundliteral.44 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.42, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.38, ptr @.str.43, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"ad15\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"pcie2\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"clkreq\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.compoundliteral.49 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.45, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.46, ptr @.str.47, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.38, ptr @.str.48, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.50 = private unnamed_addr constant [5 x i8] c"dram\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"vttctrl\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"we1\00", align 1
@.compoundliteral.53 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.50, ptr @.str.51, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.52, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.54 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"mosi\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.compoundliteral.57 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.54, ptr @.str.55, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.56, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"deccerr\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"miso\00", align 1
@.compoundliteral.60 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.50, ptr @.str.58, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.54, ptr @.str.59, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.40, ptr @.str.47, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.56, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.61 = private unnamed_addr constant [6 x i8] c"sata1\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"prsnt\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"sata0\00", align 1
@.compoundliteral.64 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.54, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.15, ptr @.str.19, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.65 = private unnamed_addr constant [4 x i8] c"cs0\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.compoundliteral.67 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.54, ptr @.str.65, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.66, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.68 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.3, ptr @.str.18, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.66, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.69 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.3, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.15, ptr @.str.16, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.70 = private unnamed_addr constant [4 x i8] c"cs1\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"bootcs\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"rxd0\00", align 1
@.compoundliteral.76 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.70, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.72, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.73, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.75, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.77 = private unnamed_addr constant [4 x i8] c"ad0\00", align 1
@.compoundliteral.78 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.55, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.77, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.79 = private unnamed_addr constant [4 x i8] c"ad2\00", align 1
@.compoundliteral.80 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.79, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.81 = private unnamed_addr constant [3 x i8] c"d4\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.compoundliteral.83 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.59, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.3, ptr @.str.18, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.81, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.82, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.84 = private unnamed_addr constant [3 x i8] c"d5\00", align 1
@.compoundliteral.85 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.65, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.3, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.65, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.86 = private unnamed_addr constant [4 x i8] c"cs2\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"d6\00", align 1
@.compoundliteral.88 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.86, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.56, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.87, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.70, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.89 = private unnamed_addr constant [3 x i8] c"d7\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"txclkout\00", align 1
@.compoundliteral.91 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.54, ptr @.str.22, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.56, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.89, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.86, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.90, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.92 = private unnamed_addr constant [4 x i8] c"ad5\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"txd0\00", align 1
@.compoundliteral.94 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.32, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.92, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.93, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.95 = private unnamed_addr constant [5 x i8] c"ale0\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"txd1\00", align 1
@.compoundliteral.97 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.95, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.96, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.98 = private unnamed_addr constant [3 x i8] c"oe\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"txd2\00", align 1
@.compoundliteral.100 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.98, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.99, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.101 = private unnamed_addr constant [5 x i8] c"ale1\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"txd3\00", align 1
@.compoundliteral.103 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.101, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.102, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.104 = private unnamed_addr constant [4 x i8] c"we0\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"txctl\00", align 1
@.compoundliteral.106 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.104, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.105, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.107 = private unnamed_addr constant [4 x i8] c"ad3\00", align 1
@.compoundliteral.108 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.50, ptr @.str.58, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.107, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.109 = private unnamed_addr constant [4 x i8] c"ad1\00", align 1
@.compoundliteral.110 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.109, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.111 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"clk_out1\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.compoundliteral.114 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.111, ptr @.str.112, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.113, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.115 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.compoundliteral.116 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.115, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.117 = private unnamed_addr constant [3 x i8] c"d3\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"ad8\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"rxclk\00", align 1
@.compoundliteral.120 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.117, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.118, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.119, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.121 = private unnamed_addr constant [9 x i8] c"clk_out0\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"d0\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"ad4\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"rxd1\00", align 1
@.compoundliteral.125 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.111, ptr @.str.121, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.122, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.123, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.124, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.126 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"rxd2\00", align 1
@.compoundliteral.129 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.56, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.3, ptr @.str.18, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.126, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.127, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.128, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.130 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"ad6\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"rxd3\00", align 1
@.compoundliteral.133 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.56, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.3, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.71, ptr @.str.130, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.131, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.132, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.134 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"burst/last\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"rb0\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"rxctl\00", align 1
@.compoundliteral.139 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.3, ptr @.str.18, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.22, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.135, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.136, ptr @.str.137, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.74, ptr @.str.138, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.140 = private unnamed_addr constant [4 x i8] c"ad7\00", align 1
@.compoundliteral.141 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.3, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.140, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.142 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"rb1\00", align 1
@.compoundliteral.144 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr @.str.47, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.50, ptr @.str.51, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.50, ptr @.str.58, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.86, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.21, ptr @.str.142, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.136, ptr @.str.143, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.145 = private unnamed_addr constant [6 x i8] c"sata2\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"sata3\00", align 1
@.compoundliteral.147 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.145, ptr @.str.62, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.146, ptr @.str.62, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.38, ptr @.str.32, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.148 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.111, ptr @.str.121, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.149 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.111, ptr @.str.112, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.38, ptr @.str.43, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.150 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.145, ptr @.str.62, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.146, ptr @.str.62, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.38, ptr @.str.48, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.151 = private unnamed_addr constant [4 x i8] c"tdm\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.compoundliteral.155 = internal global [9 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.50, ptr @.str.51, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.151, ptr @.str.152, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.153, ptr @.str.154, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.81, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.40, ptr @.str.47, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.156 = private unnamed_addr constant [6 x i8] c"fsync\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"lrclk\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"ua2\00", align 1
@.compoundliteral.159 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.145, ptr @.str.62, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.146, ptr @.str.62, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.151, ptr @.str.156, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.153, ptr @.str.157, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.158, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.160 = private unnamed_addr constant [4 x i8] c"drx\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@.compoundliteral.162 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.151, ptr @.str.160, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.153, ptr @.str.161, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.72, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.158, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.163 = private unnamed_addr constant [4 x i8] c"dtx\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"sdo\00", align 1
@.compoundliteral.165 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.151, ptr @.str.163, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.153, ptr @.str.164, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.50, ptr @.str.58, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.158, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.166 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"sdi\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.compoundliteral.169 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.151, ptr @.str.166, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.153, ptr @.str.167, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.87, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.168, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.170 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"bclk\00", align 1
@.compoundliteral.172 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.151, ptr @.str.170, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.153, ptr @.str.171, i8 4, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.89, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.168, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.173 = private unnamed_addr constant [4 x i8] c"ua3\00", align 1
@.compoundliteral.174 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.63, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.61, ptr @.str.62, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.117, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.173, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.175 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.13, ptr @.str.18, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.70, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.122, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 7, ptr @.str.173, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.176 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.13, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.50, ptr @.str.58, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.55, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.177 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.32, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.6, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.178 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.56, ptr @.str.9, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.46, ptr @.str.47, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.59, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.126, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.13, ptr @.str.4, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.179 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.2, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.40, ptr @.str.41, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.56, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.65, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.71, ptr @.str.130, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_armada_39x__202_415_armada_39x_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_39x_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada_39x_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_39x_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @armada_39x_pinctrl_of_match, ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr @armada_39x_pinctrl_info, align 4
  store ptr @armada_39x_mpp_controls, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_39x_pinctrl_info, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_39x_pinctrl_info, i32 0, i32 3), align 4
  store ptr @armada_39x_mpp_gpio_ranges, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_39x_pinctrl_info, i32 0, i32 6), align 4
  store i32 2, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_39x_pinctrl_info, i32 0, i32 7), align 4
  store ptr @armada_39x_mpp_modes, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_39x_pinctrl_info, i32 0, i32 4), align 4
  store i32 60, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_39x_pinctrl_info, i32 0, i32 5), align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr @armada_39x_pinctrl_info, ptr %10, align 4
  %11 = tail call i32 @mvebu_pinctrl_simple_mmio_probe(ptr noundef %0) #3
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -19, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pinctrl_simple_mmio_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_get(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_set(ptr noundef, i32 noundef, i32 noundef) #1

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
