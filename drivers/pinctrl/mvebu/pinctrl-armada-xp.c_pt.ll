; ModuleID = '/llk/IR/drivers/pinctrl/mvebu/pinctrl-armada-xp.c_pt.bc'
source_filename = "../drivers/pinctrl/mvebu/pinctrl-armada-xp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mvebu_pinctrl_soc_info = type { i8, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.mvebu_mpp_ctrl = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.mvebu_mpp_mode = type { i8, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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

@__initcall__kmod_pinctrl_armada_xp__202_648_armada_xp_pinctrl_driver_init6 = internal global ptr @armada_xp_pinctrl_driver_init, section ".initcall6.init", align 4
@armada_xp_pinctrl_driver = internal global %struct.platform_driver { ptr @armada_xp_pinctrl_probe, ptr null, ptr null, ptr @armada_xp_pinctrl_suspend, ptr @armada_xp_pinctrl_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_xp_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [18 x i8] c"armada-xp-pinctrl\00", align 1
@armada_xp_pinctrl_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78230-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78260-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78460-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,98dx3236-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,98dx4251-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 32 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@armada_xp_pinctrl_info = internal global %struct.mvebu_pinctrl_soc_info zeroinitializer, align 4
@mv78230_mpp_controls = internal constant [1 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 49, ptr @.compoundliteral, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }], align 4
@armada_xp_mpp_modes = internal global [67 x %struct.mvebu_mpp_mode] [%struct.mvebu_mpp_mode { i8 0, ptr @.compoundliteral.6 }, %struct.mvebu_mpp_mode { i8 1, ptr @.compoundliteral.9 }, %struct.mvebu_mpp_mode { i8 2, ptr @.compoundliteral.12 }, %struct.mvebu_mpp_mode { i8 3, ptr @.compoundliteral.15 }, %struct.mvebu_mpp_mode { i8 4, ptr @.compoundliteral.18 }, %struct.mvebu_mpp_mode { i8 5, ptr @.compoundliteral.21 }, %struct.mvebu_mpp_mode { i8 6, ptr @.compoundliteral.24 }, %struct.mvebu_mpp_mode { i8 7, ptr @.compoundliteral.27 }, %struct.mvebu_mpp_mode { i8 8, ptr @.compoundliteral.30 }, %struct.mvebu_mpp_mode { i8 9, ptr @.compoundliteral.33 }, %struct.mvebu_mpp_mode { i8 10, ptr @.compoundliteral.36 }, %struct.mvebu_mpp_mode { i8 11, ptr @.compoundliteral.39 }, %struct.mvebu_mpp_mode { i8 12, ptr @.compoundliteral.43 }, %struct.mvebu_mpp_mode { i8 13, ptr @.compoundliteral.48 }, %struct.mvebu_mpp_mode { i8 14, ptr @.compoundliteral.52 }, %struct.mvebu_mpp_mode { i8 15, ptr @.compoundliteral.55 }, %struct.mvebu_mpp_mode { i8 16, ptr @.compoundliteral.59 }, %struct.mvebu_mpp_mode { i8 17, ptr @.compoundliteral.63 }, %struct.mvebu_mpp_mode { i8 18, ptr @.compoundliteral.68 }, %struct.mvebu_mpp_mode { i8 19, ptr @.compoundliteral.72 }, %struct.mvebu_mpp_mode { i8 20, ptr @.compoundliteral.76 }, %struct.mvebu_mpp_mode { i8 21, ptr @.compoundliteral.81 }, %struct.mvebu_mpp_mode { i8 22, ptr @.compoundliteral.86 }, %struct.mvebu_mpp_mode { i8 23, ptr @.compoundliteral.90 }, %struct.mvebu_mpp_mode { i8 24, ptr @.compoundliteral.94 }, %struct.mvebu_mpp_mode { i8 25, ptr @.compoundliteral.97 }, %struct.mvebu_mpp_mode { i8 26, ptr @.compoundliteral.99 }, %struct.mvebu_mpp_mode { i8 27, ptr @.compoundliteral.102 }, %struct.mvebu_mpp_mode { i8 28, ptr @.compoundliteral.105 }, %struct.mvebu_mpp_mode { i8 29, ptr @.compoundliteral.108 }, %struct.mvebu_mpp_mode { i8 30, ptr @.compoundliteral.111 }, %struct.mvebu_mpp_mode { i8 31, ptr @.compoundliteral.114 }, %struct.mvebu_mpp_mode { i8 32, ptr @.compoundliteral.116 }, %struct.mvebu_mpp_mode { i8 33, ptr @.compoundliteral.119 }, %struct.mvebu_mpp_mode { i8 34, ptr @.compoundliteral.122 }, %struct.mvebu_mpp_mode { i8 35, ptr @.compoundliteral.124 }, %struct.mvebu_mpp_mode { i8 36, ptr @.compoundliteral.126 }, %struct.mvebu_mpp_mode { i8 37, ptr @.compoundliteral.127 }, %struct.mvebu_mpp_mode { i8 38, ptr @.compoundliteral.128 }, %struct.mvebu_mpp_mode { i8 39, ptr @.compoundliteral.129 }, %struct.mvebu_mpp_mode { i8 40, ptr @.compoundliteral.136 }, %struct.mvebu_mpp_mode { i8 41, ptr @.compoundliteral.141 }, %struct.mvebu_mpp_mode { i8 42, ptr @.compoundliteral.146 }, %struct.mvebu_mpp_mode { i8 43, ptr @.compoundliteral.150 }, %struct.mvebu_mpp_mode { i8 44, ptr @.compoundliteral.154 }, %struct.mvebu_mpp_mode { i8 45, ptr @.compoundliteral.156 }, %struct.mvebu_mpp_mode { i8 46, ptr @.compoundliteral.159 }, %struct.mvebu_mpp_mode { i8 47, ptr @.compoundliteral.164 }, %struct.mvebu_mpp_mode { i8 48, ptr @.compoundliteral.169 }, %struct.mvebu_mpp_mode { i8 49, ptr @.compoundliteral.171 }, %struct.mvebu_mpp_mode { i8 50, ptr @.compoundliteral.173 }, %struct.mvebu_mpp_mode { i8 51, ptr @.compoundliteral.175 }, %struct.mvebu_mpp_mode { i8 52, ptr @.compoundliteral.177 }, %struct.mvebu_mpp_mode { i8 53, ptr @.compoundliteral.179 }, %struct.mvebu_mpp_mode { i8 54, ptr @.compoundliteral.181 }, %struct.mvebu_mpp_mode { i8 55, ptr @.compoundliteral.183 }, %struct.mvebu_mpp_mode { i8 56, ptr @.compoundliteral.185 }, %struct.mvebu_mpp_mode { i8 57, ptr @.compoundliteral.187 }, %struct.mvebu_mpp_mode { i8 58, ptr @.compoundliteral.189 }, %struct.mvebu_mpp_mode { i8 59, ptr @.compoundliteral.191 }, %struct.mvebu_mpp_mode { i8 60, ptr @.compoundliteral.193 }, %struct.mvebu_mpp_mode { i8 61, ptr @.compoundliteral.195 }, %struct.mvebu_mpp_mode { i8 62, ptr @.compoundliteral.197 }, %struct.mvebu_mpp_mode { i8 63, ptr @.compoundliteral.199 }, %struct.mvebu_mpp_mode { i8 64, ptr @.compoundliteral.201 }, %struct.mvebu_mpp_mode { i8 65, ptr @.compoundliteral.203 }, %struct.mvebu_mpp_mode { i8 66, ptr @.compoundliteral.205 }], align 4
@mv78230_mpp_gpio_ranges = internal global [2 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 1, i32 32, i32 32, i32 17, ptr null, ptr null }], align 4
@mv78260_mpp_controls = internal constant [1 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 67, ptr @.compoundliteral.207, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }], align 4
@mv78260_mpp_gpio_ranges = internal global [3 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 1, i32 32, i32 32, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 2, i32 64, i32 64, i32 3, ptr null, ptr null }], align 4
@mv78460_mpp_controls = internal constant [1 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 67, ptr @.compoundliteral.208, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }], align 4
@mv78460_mpp_gpio_ranges = internal global [3 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 1, i32 32, i32 32, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 2, i32 64, i32 64, i32 3, ptr null, ptr null }], align 4
@mv98dx3236_mpp_controls = internal global [1 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 33, ptr @.compoundliteral.209, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }], align 4
@mv98dx3236_mpp_modes = internal global [33 x %struct.mvebu_mpp_mode] [%struct.mvebu_mpp_mode { i8 0, ptr @.compoundliteral.212 }, %struct.mvebu_mpp_mode { i8 1, ptr @.compoundliteral.214 }, %struct.mvebu_mpp_mode { i8 2, ptr @.compoundliteral.216 }, %struct.mvebu_mpp_mode { i8 3, ptr @.compoundliteral.218 }, %struct.mvebu_mpp_mode { i8 4, ptr @.compoundliteral.221 }, %struct.mvebu_mpp_mode { i8 5, ptr @.compoundliteral.225 }, %struct.mvebu_mpp_mode { i8 6, ptr @.compoundliteral.227 }, %struct.mvebu_mpp_mode { i8 7, ptr @.compoundliteral.229 }, %struct.mvebu_mpp_mode { i8 8, ptr @.compoundliteral.231 }, %struct.mvebu_mpp_mode { i8 9, ptr @.compoundliteral.233 }, %struct.mvebu_mpp_mode { i8 10, ptr @.compoundliteral.235 }, %struct.mvebu_mpp_mode { i8 11, ptr @.compoundliteral.237 }, %struct.mvebu_mpp_mode { i8 12, ptr @.compoundliteral.239 }, %struct.mvebu_mpp_mode { i8 13, ptr @.compoundliteral.243 }, %struct.mvebu_mpp_mode { i8 14, ptr @.compoundliteral.245 }, %struct.mvebu_mpp_mode { i8 15, ptr @.compoundliteral.247 }, %struct.mvebu_mpp_mode { i8 16, ptr @.compoundliteral.249 }, %struct.mvebu_mpp_mode { i8 17, ptr @.compoundliteral.250 }, %struct.mvebu_mpp_mode { i8 18, ptr @.compoundliteral.251 }, %struct.mvebu_mpp_mode { i8 19, ptr @.compoundliteral.252 }, %struct.mvebu_mpp_mode { i8 20, ptr @.compoundliteral.254 }, %struct.mvebu_mpp_mode { i8 21, ptr @.compoundliteral.256 }, %struct.mvebu_mpp_mode { i8 22, ptr @.compoundliteral.258 }, %struct.mvebu_mpp_mode { i8 23, ptr @.compoundliteral.260 }, %struct.mvebu_mpp_mode { i8 24, ptr @.compoundliteral.262 }, %struct.mvebu_mpp_mode { i8 25, ptr @.compoundliteral.264 }, %struct.mvebu_mpp_mode { i8 26, ptr @.compoundliteral.266 }, %struct.mvebu_mpp_mode { i8 27, ptr @.compoundliteral.268 }, %struct.mvebu_mpp_mode { i8 28, ptr @.compoundliteral.270 }, %struct.mvebu_mpp_mode { i8 29, ptr @.compoundliteral.272 }, %struct.mvebu_mpp_mode { i8 30, ptr @.compoundliteral.274 }, %struct.mvebu_mpp_mode { i8 31, ptr @.compoundliteral.277 }, %struct.mvebu_mpp_mode { i8 32, ptr @.compoundliteral.279 }], align 4
@mv98dx3236_mpp_gpio_ranges = internal global [1 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.206, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }], align 4
@mpp_saved_regs = internal unnamed_addr global ptr null, align 4
@.compoundliteral = internal global [49 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ge0\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"txclkout\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"d0\00", align 1
@.compoundliteral.6 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.3, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.5, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"txd0\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.compoundliteral.9 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.7, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.8, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"txd1\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.compoundliteral.12 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.10, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"txd2\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"d3\00", align 1
@.compoundliteral.15 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.13, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"txd3\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"d4\00", align 1
@.compoundliteral.18 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.16, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.17, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"txctl\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"d5\00", align 1
@.compoundliteral.21 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.19, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.20, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"rxd0\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"d6\00", align 1
@.compoundliteral.24 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.22, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.23, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"rxd1\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"d7\00", align 1
@.compoundliteral.27 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.25, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.26, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"rxd2\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"d8\00", align 1
@.compoundliteral.30 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.28, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.29, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"rxd3\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"d9\00", align 1
@.compoundliteral.33 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.31, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.32, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"rxctl\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"d10\00", align 1
@.compoundliteral.36 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.34, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.35, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"rxclk\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"d11\00", align 1
@.compoundliteral.39 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.37, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.38, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [5 x i8] c"txd4\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ge1\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"d12\00", align 1
@.compoundliteral.43 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.40, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.3, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.42, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"txd5\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"mosi\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"d13\00", align 1
@.compoundliteral.48 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.44, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.7, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.45, ptr @.str.46, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.47, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.49 = private unnamed_addr constant [5 x i8] c"txd6\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"sck\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"d14\00", align 1
@.compoundliteral.52 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.49, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.10, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.45, ptr @.str.50, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.51, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.53 = private unnamed_addr constant [5 x i8] c"txd7\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"d15\00", align 1
@.compoundliteral.55 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.53, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.13, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.54, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [6 x i8] c"txclk\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"cs0\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"d16\00", align 1
@.compoundliteral.59 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.56, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.16, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.45, ptr @.str.57, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.58, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.60 = private unnamed_addr constant [4 x i8] c"col\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"miso\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"d17\00", align 1
@.compoundliteral.63 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.60, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.19, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.45, ptr @.str.61, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.62, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.64 = private unnamed_addr constant [6 x i8] c"rxerr\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"trig\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"d18\00", align 1
@.compoundliteral.68 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.64, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.22, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.65, ptr @.str.66, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.67, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.69 = private unnamed_addr constant [4 x i8] c"crs\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"evreq\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"d19\00", align 1
@.compoundliteral.72 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.69, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.25, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.65, ptr @.str.70, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.71, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.73 = private unnamed_addr constant [5 x i8] c"rxd4\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"d20\00", align 1
@.compoundliteral.76 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.73, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.28, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.65, ptr @.str.74, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.75, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.77 = private unnamed_addr constant [5 x i8] c"rxd5\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"dram\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"bat\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"d21\00", align 1
@.compoundliteral.81 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.77, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.31, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.78, ptr @.str.79, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.80, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.82 = private unnamed_addr constant [5 x i8] c"rxd6\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"sata0\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"prsnt\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"d22\00", align 1
@.compoundliteral.86 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.82, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.34, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.83, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.85, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.87 = private unnamed_addr constant [5 x i8] c"rxd7\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"sata1\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"d23\00", align 1
@.compoundliteral.90 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.2, ptr @.str.87, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.41, ptr @.str.37, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.88, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.89, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.91 = private unnamed_addr constant [4 x i8] c"tdm\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"hsync\00", align 1
@.compoundliteral.94 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.88, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.92, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.93, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.95 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.compoundliteral.97 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.83, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.95, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.96, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.98 = private unnamed_addr constant [6 x i8] c"fsync\00", align 1
@.compoundliteral.99 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.98, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.74, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.100 = private unnamed_addr constant [4 x i8] c"dtx\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.compoundliteral.102 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.66, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.100, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.101, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.103 = private unnamed_addr constant [4 x i8] c"drx\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.compoundliteral.105 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.70, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.103, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.104, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.106 = private unnamed_addr constant [5 x i8] c"int0\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"ref-clk\00", align 1
@.compoundliteral.108 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.65, ptr @.str.74, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.106, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.107, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.109 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"int1\00", align 1
@.compoundliteral.111 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.109, ptr @.str.74, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.110, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.112 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"int2\00", align 1
@.compoundliteral.114 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.109, ptr @.str.112, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.113, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.115 = private unnamed_addr constant [5 x i8] c"int3\00", align 1
@.compoundliteral.116 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.109, ptr @.str.5, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.115, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.117 = private unnamed_addr constant [5 x i8] c"int4\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"vttctrl\00", align 1
@.compoundliteral.119 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.109, ptr @.str.8, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.117, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.79, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.78, ptr @.str.118, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.120 = private unnamed_addr constant [5 x i8] c"int5\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"deccerr\00", align 1
@.compoundliteral.122 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.109, ptr @.str.11, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.83, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.120, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.121, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.123 = private unnamed_addr constant [5 x i8] c"int6\00", align 1
@.compoundliteral.124 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.109, ptr @.str.14, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.88, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.123, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.125 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.126 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.125, ptr @.str.46, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.127 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.125, ptr @.str.61, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.128 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.125, ptr @.str.50, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.129 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.125, ptr @.str.57, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.130 = private unnamed_addr constant [4 x i8] c"cs1\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"cts\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"vga-hsync\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"clkreq0\00", align 1
@.compoundliteral.136 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.125, ptr @.str.130, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.131, ptr @.str.132, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.133, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.134, ptr @.str.135, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.130, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.137 = private unnamed_addr constant [4 x i8] c"cs2\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"vga-vsync\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"clkreq1\00", align 1
@.compoundliteral.141 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.125, ptr @.str.137, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.131, ptr @.str.138, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.88, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.4, ptr @.str.139, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.134, ptr @.str.140, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.137, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.142 = private unnamed_addr constant [4 x i8] c"rxd\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"int7\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.compoundliteral.146 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.131, ptr @.str.142, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.143, ptr @.str.132, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.91, ptr @.str.144, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.91, ptr @.str.145, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.147 = private unnamed_addr constant [4 x i8] c"txd\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"cs3\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"rstout\00", align 1
@.compoundliteral.150 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.131, ptr @.str.147, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.143, ptr @.str.138, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.125, ptr @.str.148, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.134, ptr @.str.149, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.148, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.151 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"cs4\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"clkreq2\00", align 1
@.compoundliteral.154 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.131, ptr @.str.132, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.151, ptr @.str.142, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.125, ptr @.str.152, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.78, ptr @.str.79, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.134, ptr @.str.153, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.152, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.155 = private unnamed_addr constant [4 x i8] c"cs5\00", align 1
@.compoundliteral.156 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.131, ptr @.str.138, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.151, ptr @.str.147, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.125, ptr @.str.155, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.88, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.78, ptr @.str.118, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.155, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.157 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"cs6\00", align 1
@.compoundliteral.159 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.151, ptr @.str.138, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.157, ptr @.str.138, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.125, ptr @.str.158, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.83, ptr @.str.84, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.158, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.160 = private unnamed_addr constant [4 x i8] c"cs7\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"clkreq3\00", align 1
@.compoundliteral.164 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.151, ptr @.str.132, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.157, ptr @.str.132, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.125, ptr @.str.160, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.161, ptr @.str.162, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.134, ptr @.str.163, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.45, ptr @.str.160, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.165 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"burst/last\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.compoundliteral.169 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.162, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.165, ptr @.str.166, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.167, ptr @.str.168, i8 7, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.170 = private unnamed_addr constant [4 x i8] c"we3\00", align 1
@.compoundliteral.171 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.170, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.172 = private unnamed_addr constant [4 x i8] c"we2\00", align 1
@.compoundliteral.173 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.172, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.174 = private unnamed_addr constant [5 x i8] c"ad16\00", align 1
@.compoundliteral.175 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.174, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.176 = private unnamed_addr constant [5 x i8] c"ad17\00", align 1
@.compoundliteral.177 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.176, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.178 = private unnamed_addr constant [5 x i8] c"ad18\00", align 1
@.compoundliteral.179 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.178, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.180 = private unnamed_addr constant [5 x i8] c"ad19\00", align 1
@.compoundliteral.181 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.180, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.182 = private unnamed_addr constant [5 x i8] c"ad20\00", align 1
@.compoundliteral.183 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.182, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.184 = private unnamed_addr constant [5 x i8] c"ad21\00", align 1
@.compoundliteral.185 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.184, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.186 = private unnamed_addr constant [5 x i8] c"ad22\00", align 1
@.compoundliteral.187 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.186, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.188 = private unnamed_addr constant [5 x i8] c"ad23\00", align 1
@.compoundliteral.189 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.188, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.190 = private unnamed_addr constant [5 x i8] c"ad24\00", align 1
@.compoundliteral.191 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.190, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.192 = private unnamed_addr constant [5 x i8] c"ad25\00", align 1
@.compoundliteral.193 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.192, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.194 = private unnamed_addr constant [5 x i8] c"ad26\00", align 1
@.compoundliteral.195 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.194, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.196 = private unnamed_addr constant [5 x i8] c"ad27\00", align 1
@.compoundliteral.197 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.196, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.198 = private unnamed_addr constant [5 x i8] c"ad28\00", align 1
@.compoundliteral.199 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.198, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.200 = private unnamed_addr constant [5 x i8] c"ad29\00", align 1
@.compoundliteral.201 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.200, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.202 = private unnamed_addr constant [5 x i8] c"ad30\00", align 1
@.compoundliteral.203 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.202, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.204 = private unnamed_addr constant [5 x i8] c"ad31\00", align 1
@.compoundliteral.205 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.165, ptr @.str.204, i8 6, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.206 = private unnamed_addr constant [11 x i8] c"mvebu-gpio\00", align 1
@.compoundliteral.207 = internal global [67 x i32] zeroinitializer, align 4
@.compoundliteral.208 = internal global [67 x i32] zeroinitializer, align 4
@.compoundliteral.209 = internal global [33 x i32] zeroinitializer, align 4
@.str.210 = private unnamed_addr constant [4 x i8] c"gpo\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"ad8\00", align 1
@.compoundliteral.212 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.125, ptr @.str.46, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.211, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.213 = private unnamed_addr constant [4 x i8] c"ad9\00", align 1
@.compoundliteral.214 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.125, ptr @.str.61, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.213, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.215 = private unnamed_addr constant [5 x i8] c"ad10\00", align 1
@.compoundliteral.216 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.125, ptr @.str.50, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.215, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.217 = private unnamed_addr constant [5 x i8] c"ad11\00", align 1
@.compoundliteral.218 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.125, ptr @.str.57, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.217, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.219 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1
@.compoundliteral.221 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.125, ptr @.str.130, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.219, ptr @.str.220, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.57, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.222 = private unnamed_addr constant [4 x i8] c"pex\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"rsto\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"bootcs\00", align 1
@.compoundliteral.225 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.222, ptr @.str.223, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.109, ptr @.str.112, i8 32, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.224, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.226 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.compoundliteral.227 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.109, ptr @.str.74, i8 32, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.226, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.228 = private unnamed_addr constant [5 x i8] c"ale0\00", align 1
@.compoundliteral.229 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.109, ptr @.str.5, i8 32, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.228, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.230 = private unnamed_addr constant [5 x i8] c"ale1\00", align 1
@.compoundliteral.231 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.109, ptr @.str.8, i8 32, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.230, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.232 = private unnamed_addr constant [7 x i8] c"ready0\00", align 1
@.compoundliteral.233 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.109, ptr @.str.11, i8 32, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.232, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.234 = private unnamed_addr constant [5 x i8] c"ad12\00", align 1
@.compoundliteral.235 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.109, ptr @.str.14, i8 32, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.234, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.236 = private unnamed_addr constant [5 x i8] c"ad13\00", align 1
@.compoundliteral.237 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.157, ptr @.str.142, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.143, ptr @.str.132, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.236, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.238 = private unnamed_addr constant [5 x i8] c"ad14\00", align 1
@.compoundliteral.239 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.157, ptr @.str.147, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.143, ptr @.str.138, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.238, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.240 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"ad15\00", align 1
@.compoundliteral.243 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.240, ptr @.str.241, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.242, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.244 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.compoundliteral.245 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.244, ptr @.str.50, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.246 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.compoundliteral.247 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.244, ptr @.str.246, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.248 = private unnamed_addr constant [3 x i8] c"oe\00", align 1
@.compoundliteral.249 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.248, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.250 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.162, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.251 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.157, ptr @.str.147, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.252 = internal global [4 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.157, ptr @.str.142, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.167, ptr @.str.168, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.253 = private unnamed_addr constant [4 x i8] c"we0\00", align 1
@.compoundliteral.254 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.253, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.255 = private unnamed_addr constant [4 x i8] c"ad0\00", align 1
@.compoundliteral.256 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.255, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.257 = private unnamed_addr constant [4 x i8] c"ad1\00", align 1
@.compoundliteral.258 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.257, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.259 = private unnamed_addr constant [4 x i8] c"ad2\00", align 1
@.compoundliteral.260 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.259, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.261 = private unnamed_addr constant [4 x i8] c"ad3\00", align 1
@.compoundliteral.262 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.261, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.263 = private unnamed_addr constant [4 x i8] c"ad4\00", align 1
@.compoundliteral.264 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.263, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.265 = private unnamed_addr constant [4 x i8] c"ad5\00", align 1
@.compoundliteral.266 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.265, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.267 = private unnamed_addr constant [4 x i8] c"ad6\00", align 1
@.compoundliteral.268 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.267, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.269 = private unnamed_addr constant [4 x i8] c"ad7\00", align 1
@.compoundliteral.270 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.269, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.271 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.compoundliteral.272 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.271, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.273 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.compoundliteral.274 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.210, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.273, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.275 = private unnamed_addr constant [8 x i8] c"slv_smi\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"we1\00", align 1
@.compoundliteral.277 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.275, ptr @.str.220, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.219, ptr @.str.220, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.276, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.278 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.compoundliteral.279 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.1, ptr null, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.275, ptr @.str.278, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.219, ptr @.str.278, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.165, ptr @.str.130, i8 56, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_armada_xp__202_648_armada_xp_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_xp_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada_xp_pinctrl_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @armada_xp_pinctrl_of_match, ptr noundef %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr @armada_xp_pinctrl_info, align 4
  switch i8 %9, label %10 [
    i8 1, label %12
    i8 2, label %13
    i8 4, label %14
    i8 8, label %15
    i8 16, label %15
    i8 32, label %15
  ]

10:                                               ; preds = %5
  %11 = load i32, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 5), align 4
  br label %18

12:                                               ; preds = %5
  store ptr @mv78230_mpp_controls, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 3), align 4
  store ptr @armada_xp_mpp_modes, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 4), align 4
  store i32 49, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 5), align 4
  store ptr @mv78230_mpp_gpio_ranges, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 6), align 4
  store i32 2, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 7), align 4
  br label %18

13:                                               ; preds = %5
  store ptr @mv78260_mpp_controls, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 3), align 4
  store ptr @armada_xp_mpp_modes, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 4), align 4
  store i32 67, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 5), align 4
  store ptr @mv78260_mpp_gpio_ranges, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 6), align 4
  store i32 3, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 7), align 4
  br label %18

14:                                               ; preds = %5
  store ptr @mv78460_mpp_controls, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 3), align 4
  store ptr @armada_xp_mpp_modes, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 4), align 4
  store i32 67, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 5), align 4
  store ptr @mv78460_mpp_gpio_ranges, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 6), align 4
  store i32 3, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 7), align 4
  br label %18

15:                                               ; preds = %5, %5, %5
  store ptr @mv98dx3236_mpp_controls, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 3), align 4
  store ptr @mv98dx3236_mpp_modes, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 4), align 4
  %16 = load i8, ptr getelementptr inbounds ([1 x %struct.mvebu_mpp_ctrl], ptr @mv98dx3236_mpp_controls, i32 0, i32 0, i32 2), align 1
  %17 = zext i8 %16 to i32
  store i32 %17, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 5), align 4
  store ptr @mv98dx3236_mpp_gpio_ranges, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 6), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @armada_xp_pinctrl_info, i32 0, i32 7), align 4
  br label %18

18:                                               ; preds = %15, %14, %13, %12, %10
  %19 = phi i32 [ %11, %10 ], [ %17, %15 ], [ 67, %14 ], [ 67, %13 ], [ 49, %12 ]
  %20 = add i32 %19, 7
  %21 = sdiv i32 %20, 8
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #4
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %18
  store ptr null, ptr @mpp_saved_regs, align 4
  br label %32

25:                                               ; preds = %18
  %26 = extractvalue { i32, i1 } %22, 0
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %26, i32 noundef 3264) #4
  store ptr %27, ptr @mpp_saved_regs, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr @armada_xp_pinctrl_info, ptr %30, align 4
  %31 = tail call i32 @mvebu_pinctrl_simple_mmio_probe(ptr noundef %0) #4
  br label %32

32:                                               ; preds = %29, %25, %24, %1
  %33 = phi i32 [ %31, %29 ], [ -19, %1 ], [ -12, %25 ], [ -12, %24 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_pinctrl_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 7
  %8 = sdiv i32 %7, 8
  %9 = icmp sgt i32 %7, 7
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %21, %12 ]
  %14 = load ptr, ptr %11, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %13, 2
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %19 = load ptr, ptr @mpp_saved_regs, align 4
  %20 = getelementptr i32, ptr %19, i32 %13
  store i32 %18, ptr %20, align 4
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_pinctrl_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 7
  %7 = sdiv i32 %6, 8
  %8 = icmp sgt i32 %6, 7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %3, i32 0, i32 2
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %20, %11 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr @mpp_saved_regs, align 4
  %14 = getelementptr i32, ptr %13, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = shl i32 %12, 2
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #4, !srcloc !12
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, %7
  br i1 %21, label %22, label %11

22:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pinctrl_simple_mmio_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_get(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 387928}
!10 = !{i64 2152278508}
!11 = !{i64 2152278787}
!12 = !{i64 387510}
