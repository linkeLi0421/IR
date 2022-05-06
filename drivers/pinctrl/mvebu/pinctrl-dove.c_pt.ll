; ModuleID = '/llk/IR/drivers/pinctrl/mvebu/pinctrl-dove.c_pt.bc'
source_filename = "../drivers/pinctrl/mvebu/pinctrl-dove.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mvebu_pinctrl_soc_info = type { i8, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mvebu_mpp_ctrl = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.mvebu_mpp_mode = type { i8, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mvebu_mpp_ctrl_setting = type { i8, ptr, ptr, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mvebu_mpp_ctrl_data = type { %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32 }

@__initcall__kmod_pinctrl_dove__202_860_dove_pinctrl_driver_init6 = internal global ptr @dove_pinctrl_driver_init, section ".initcall6.init", align 4
@dove_pinctrl_driver = internal global %struct.platform_driver { ptr @dove_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dove_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"dove-pinctrl\00", align 1
@dove_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dove_pinctrl_info }, %struct.of_device_id zeroinitializer], align 4
@clk = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to get pdma clock\00", align 1
@dove_pinctrl_info = internal global %struct.mvebu_pinctrl_soc_info { i8 0, ptr @dove_mpp_controls, ptr null, i32 11, ptr @dove_mpp_modes, i32 33, ptr @dove_mpp_gpio_ranges, i32 3 }, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"falling back to hardcoded MPP4 resource\0A\00", align 1
@mpp4_base = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"falling back to hardcoded PMU resource\0A\00", align 1
@pmu_base = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"marvell,dove-global-config\00", align 1
@gconfmap = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"falling back to hardcoded global registers\0A\00", align 1
@gc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [75 x i8] c"[Firmware Bug]: Missing pinctrl regs in DTB. Please update your firmware.\0A\00", align 1
@dove_mpp_controls = internal constant [11 x %struct.mvebu_mpp_ctrl] [%struct.mvebu_mpp_ctrl { ptr null, i8 0, i8 16, ptr @.compoundliteral, ptr @dove_pmu_mpp_ctrl_get, ptr @dove_pmu_mpp_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr null, i8 16, i8 8, ptr @.compoundliteral.7, ptr @mvebu_mmio_mpp_ctrl_get, ptr @mvebu_mmio_mpp_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.8, i8 24, i8 16, ptr @.compoundliteral.9, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.10, i8 40, i8 6, ptr @.compoundliteral.11, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.12, i8 46, i8 6, ptr @.compoundliteral.13, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.14, i8 52, i8 6, ptr @.compoundliteral.15, ptr @dove_audio1_ctrl_get, ptr @dove_audio1_ctrl_set, ptr @dove_audio1_ctrl_gpio_req, ptr @dove_audio1_ctrl_gpio_dir }, %struct.mvebu_mpp_ctrl { ptr @.str.16, i8 58, i8 4, ptr @.compoundliteral.17, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.18, i8 62, i8 2, ptr @.compoundliteral.19, ptr @dove_mpp4_ctrl_get, ptr @dove_mpp4_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.20, i8 64, i8 8, ptr @.compoundliteral.21, ptr @dove_nand_ctrl_get, ptr @dove_nand_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.22, i8 72, i8 1, ptr @.compoundliteral.23, ptr @dove_audio0_ctrl_get, ptr @dove_audio0_ctrl_set, ptr null, ptr null }, %struct.mvebu_mpp_ctrl { ptr @.str.24, i8 73, i8 1, ptr @.compoundliteral.25, ptr @dove_twsi_ctrl_get, ptr @dove_twsi_ctrl_set, ptr null, ptr null }], align 4
@dove_mpp_modes = internal global [33 x %struct.mvebu_mpp_mode] [%struct.mvebu_mpp_mode { i8 0, ptr @.compoundliteral.46 }, %struct.mvebu_mpp_mode { i8 1, ptr @.compoundliteral.50 }, %struct.mvebu_mpp_mode { i8 2, ptr @.compoundliteral.56 }, %struct.mvebu_mpp_mode { i8 3, ptr @.compoundliteral.62 }, %struct.mvebu_mpp_mode { i8 4, ptr @.compoundliteral.67 }, %struct.mvebu_mpp_mode { i8 5, ptr @.compoundliteral.69 }, %struct.mvebu_mpp_mode { i8 6, ptr @.compoundliteral.71 }, %struct.mvebu_mpp_mode { i8 7, ptr @.compoundliteral.73 }, %struct.mvebu_mpp_mode { i8 8, ptr @.compoundliteral.77 }, %struct.mvebu_mpp_mode { i8 9, ptr @.compoundliteral.80 }, %struct.mvebu_mpp_mode { i8 10, ptr @.compoundliteral.83 }, %struct.mvebu_mpp_mode { i8 11, ptr @.compoundliteral.86 }, %struct.mvebu_mpp_mode { i8 12, ptr @.compoundliteral.88 }, %struct.mvebu_mpp_mode { i8 13, ptr @.compoundliteral.90 }, %struct.mvebu_mpp_mode { i8 14, ptr @.compoundliteral.91 }, %struct.mvebu_mpp_mode { i8 15, ptr @.compoundliteral.93 }, %struct.mvebu_mpp_mode { i8 16, ptr @.compoundliteral.96 }, %struct.mvebu_mpp_mode { i8 17, ptr @.compoundliteral.101 }, %struct.mvebu_mpp_mode { i8 18, ptr @.compoundliteral.103 }, %struct.mvebu_mpp_mode { i8 19, ptr @.compoundliteral.104 }, %struct.mvebu_mpp_mode { i8 20, ptr @.compoundliteral.105 }, %struct.mvebu_mpp_mode { i8 21, ptr @.compoundliteral.107 }, %struct.mvebu_mpp_mode { i8 22, ptr @.compoundliteral.108 }, %struct.mvebu_mpp_mode { i8 23, ptr @.compoundliteral.109 }, %struct.mvebu_mpp_mode { i8 24, ptr @.compoundliteral.111 }, %struct.mvebu_mpp_mode { i8 40, ptr @.compoundliteral.112 }, %struct.mvebu_mpp_mode { i8 46, ptr @.compoundliteral.113 }, %struct.mvebu_mpp_mode { i8 52, ptr @.compoundliteral.119 }, %struct.mvebu_mpp_mode { i8 58, ptr @.compoundliteral.121 }, %struct.mvebu_mpp_mode { i8 62, ptr @.compoundliteral.122 }, %struct.mvebu_mpp_mode { i8 64, ptr @.compoundliteral.125 }, %struct.mvebu_mpp_mode { i8 72, ptr @.compoundliteral.127 }, %struct.mvebu_mpp_mode { i8 73, ptr @.compoundliteral.132 }], align 4
@dove_mpp_gpio_ranges = internal global [3 x %struct.pinctrl_gpio_range] [%struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.133, i32 0, i32 0, i32 0, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.133, i32 1, i32 32, i32 32, i32 32, ptr null, ptr null }, %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.133, i32 2, i32 64, i32 64, i32 8, ptr null, ptr null }], align 4
@.compoundliteral = internal global [16 x i32] zeroinitializer, align 4
@.compoundliteral.7 = internal global [8 x i32] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"mpp_camera\00", align 1
@.compoundliteral.9 = internal global [16 x i32] zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"mpp_sdio0\00", align 1
@.compoundliteral.11 = internal global [6 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"mpp_sdio1\00", align 1
@.compoundliteral.13 = internal global [6 x i32] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"mpp_audio1\00", align 1
@.compoundliteral.15 = internal global [6 x i32] zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"mpp_spi0\00", align 1
@.compoundliteral.17 = internal global [4 x i32] zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"mpp_uart1\00", align 1
@.compoundliteral.19 = internal global [2 x i32] zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"mpp_nand\00", align 1
@.compoundliteral.21 = internal global [8 x i32] zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"audio0\00", align 1
@.compoundliteral.23 = internal global [1 x i32] zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"twsi\00", align 1
@.compoundliteral.25 = internal global [1 x i32] zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"sdio0\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"lcd0\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"pmu-nc\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"pmu-low\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"pmu-high\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"pmic\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"sdi\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"cpu-pwr-down\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"standby-pwr-down\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"core-pwr-good\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"bat-fault\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"ext0-wakeup\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"ext1-wakeup\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"ext2-wakeup\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"pmu-blink\00", align 1
@.compoundliteral.46 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.28, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.30, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.31, ptr @.str.32, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [4 x i8] c"cts\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"lcd1\00", align 1
@.compoundliteral.50 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.47, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.48, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.49, ptr @.str.32, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.51 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"prsnt\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"txd\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"buspwr\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.compoundliteral.56 = internal global [18 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.51, ptr @.str.52, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.53, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.54, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.55, ptr @.str.28, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"act\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"rxd\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"ledctrl\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"lcd-spi\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"cs1\00", align 1
@.compoundliteral.62 = internal global [19 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.51, ptr @.str.57, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.58, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.55, ptr @.str.47, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.60, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.63 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"sdio1\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"miso\00", align 1
@.compoundliteral.67 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.28, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.30, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.65, ptr @.str.66, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.68 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.compoundliteral.69 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.47, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.48, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.65, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.70 = private unnamed_addr constant [5 x i8] c"mosi\00", align 1
@.compoundliteral.71 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.53, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.54, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.65, ptr @.str.70, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.72 = private unnamed_addr constant [4 x i8] c"sck\00", align 1
@.compoundliteral.73 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.58, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.65, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.40, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.74 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"rstout\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"cpu-pwr-good\00", align 1
@.compoundliteral.77 = internal global [15 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.74, ptr @.str.75, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.78 = private unnamed_addr constant [5 x i8] c"pex1\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"clkreq\00", align 1
@.compoundliteral.80 = internal global [15 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.78, ptr @.str.79, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.81 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.compoundliteral.83 = internal global [15 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.81, ptr @.str.82, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.84 = private unnamed_addr constant [7 x i8] c"sata-1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"pex0\00", align 1
@.compoundliteral.86 = internal global [19 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.51, ptr @.str.52, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.84, ptr @.str.57, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.64, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.85, ptr @.str.79, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.87 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@.compoundliteral.88 = internal global [18 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.51, ptr @.str.57, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.28, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.22, ptr @.str.87, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.64, ptr @.str.30, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.89 = private unnamed_addr constant [7 x i8] c"audio1\00", align 1
@.compoundliteral.90 = internal global [18 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.47, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.89, ptr @.str.87, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.64, ptr @.str.48, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.81, ptr @.str.87, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.91 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.53, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.64, ptr @.str.54, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.81, ptr @.str.58, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.92 = private unnamed_addr constant [5 x i8] c"sfrm\00", align 1
@.compoundliteral.93 = internal global [17 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.27, ptr @.str.58, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.64, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.81, ptr @.str.92, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 16, ptr @.str.33, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 17, ptr @.str.34, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 18, ptr @.str.35, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 19, ptr @.str.36, ptr @.str.37, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 20, ptr @.str.38, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 21, ptr @.str.39, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 24, ptr @.str.76, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 26, ptr @.str.41, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 27, ptr @.str.42, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 28, ptr @.str.43, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 29, ptr @.str.44, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 30, ptr @.str.45, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.94 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"sdi1\00", align 1
@.compoundliteral.96 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.28, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.30, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.60, ptr @.str.61, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.94, ptr @.str.95, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.97 = private unnamed_addr constant [7 x i8] c"ac97-1\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"sysclko\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"sdi2\00", align 1
@.compoundliteral.101 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.97, ptr @.str.98, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.47, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.48, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.24, ptr @.str.99, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.94, ptr @.str.100, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.102 = private unnamed_addr constant [5 x i8] c"sdi3\00", align 1
@.compoundliteral.103 = internal global [6 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.53, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.54, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.31, ptr @.str.32, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.94, ptr @.str.102, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.104 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.63, ptr @.str.58, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.29, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.24, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.105 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.94, ptr @.str.98, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.60, ptr @.str.66, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.30, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.29, ptr @.str.30, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.65, ptr @.str.66, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.106 = private unnamed_addr constant [4 x i8] c"cs0\00", align 1
@.compoundliteral.107 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.55, ptr @.str.28, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.60, ptr @.str.106, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.48, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.81, ptr @.str.92, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.29, ptr @.str.48, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.65, ptr @.str.68, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.108 = internal global [8 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.55, ptr @.str.47, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.60, ptr @.str.70, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.54, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.81, ptr @.str.53, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.29, ptr @.str.54, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.65, ptr @.str.70, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.109 = internal global [7 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.60, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.64, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 4, ptr @.str.81, ptr @.str.82, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 5, ptr @.str.29, ptr @.str.59, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 6, ptr @.str.65, ptr @.str.72, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.110 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.compoundliteral.111 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.110, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.112 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.29, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.113 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.64, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.114 = private unnamed_addr constant [12 x i8] c"i2s1/spdifo\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"spdifo\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"ssp/spdifo\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"ssp/twsi\00", align 1
@.compoundliteral.119 = internal global [9 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.114, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.115, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 8, ptr @.str.116, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 10, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 11, ptr @.str.24, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 12, ptr @.str.117, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 14, ptr @.str.81, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 15, ptr @.str.118, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.120 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.121 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.120, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.compoundliteral.122 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.55, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.26, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.123 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"gpo\00", align 1
@.compoundliteral.125 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.123, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.124, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.126 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@.compoundliteral.127 = internal global [3 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.126, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.94, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.128 = private unnamed_addr constant [10 x i8] c"twsi-none\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"twsi-opt1\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"twsi-opt2\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"twsi-opt3\00", align 1
@.compoundliteral.132 = internal global [5 x %struct.mvebu_mpp_ctrl_setting] [%struct.mvebu_mpp_ctrl_setting { i8 0, ptr @.str.128, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 1, ptr @.str.129, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 2, ptr @.str.130, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting { i8 3, ptr @.str.131, ptr null, i8 -1, i8 0 }, %struct.mvebu_mpp_ctrl_setting zeroinitializer], align 4
@.str.133 = private unnamed_addr constant [11 x i8] c"mvebu-gpio\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_dove__202_860_dove_pinctrl_driver_init6], section "llvm.metadata"
@switch.table.dove_twsi_ctrl_set = private unnamed_addr constant [3 x i32] [i32 128, i32 0, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dove_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dove_pinctrl_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @dove_pinctrl_of_match, ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %6, ptr %7, align 4
  %8 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #8
  store ptr %8, ptr @clk, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  %11 = load ptr, ptr @clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %95

13:                                               ; preds = %1
  %14 = tail call i32 @clk_prepare(ptr noundef %8) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @clk_enable(ptr noundef %8) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %20

20:                                               ; preds = %19, %16, %13
  %21 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %22 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %21) #8
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %22 to i32
  br label %95

26:                                               ; preds = %20
  %27 = load i32, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @dove_pinctrl_info, i32 0, i32 3), align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 8) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %95, label %30, !prof !8

30:                                               ; preds = %26
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %31, i32 noundef 3520) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %95, label %34

34:                                               ; preds = %30
  store ptr %32, ptr getelementptr inbounds (%struct.mvebu_pinctrl_soc_info, ptr @dove_pinctrl_info, i32 0, i32 2), align 4
  store ptr %22, ptr %32, align 4
  %35 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 1
  store ptr %22, ptr %35, align 4
  %36 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 2
  store ptr %22, ptr %36, align 4
  %37 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 3
  store ptr %22, ptr %37, align 4
  %38 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 4
  store ptr %22, ptr %38, align 4
  %39 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 5
  store ptr %22, ptr %39, align 4
  %40 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 6
  store ptr %22, ptr %40, align 4
  %41 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 7
  store ptr %22, ptr %41, align 4
  %42 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 8
  store ptr %22, ptr %42, align 4
  %43 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 9
  store ptr %22, ptr %43, align 4
  %44 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %32, i32 10
  store ptr %22, ptr %44, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef align 4 dereferenceable(32) %21, i32 32, i1 false)
  store i32 0, ptr %2, align 4
  %45 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %48 = load i32, ptr %21, align 4
  %49 = and i32 %48, -1048576
  %50 = or i32 %49, 853056
  %51 = call i32 @adjust_resource(ptr noundef nonnull %2, i32 noundef %50, i32 noundef 4) #8
  br label %52

52:                                               ; preds = %47, %34
  %53 = phi ptr [ %45, %34 ], [ %2, %47 ]
  %54 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %53) #8
  store ptr %54, ptr @mpp4_base, align 4
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = ptrtoint ptr %54 to i32
  br label %95

58:                                               ; preds = %52
  %59 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 2) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %62 = load i32, ptr %21, align 4
  %63 = and i32 %62, -1048576
  %64 = or i32 %63, 884780
  %65 = call i32 @adjust_resource(ptr noundef nonnull %2, i32 noundef %64, i32 noundef 8) #8
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi ptr [ %59, %58 ], [ %2, %61 ]
  %68 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %67) #8
  store ptr %68, ptr @pmu_base, align 4
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %68 to i32
  br label %95

72:                                               ; preds = %66
  %73 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.4) #8
  store ptr %73, ptr @gconfmap, align 4
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  %76 = load i32, ptr %21, align 4
  %77 = and i32 %76, -1048576
  %78 = or i32 %77, 950316
  %79 = call i32 @adjust_resource(ptr noundef nonnull %2, i32 noundef %78, i32 noundef 20) #8
  %80 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %2) #8
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = ptrtoint ptr %80 to i32
  br label %95

84:                                               ; preds = %75
  %85 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %80, ptr noundef nonnull @gc_regmap_config, ptr noundef null, ptr noundef null) #8
  store ptr %85, ptr @gconfmap, align 4
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = ptrtoint ptr %85 to i32
  br label %95

89:                                               ; preds = %84, %72
  %90 = load i32, ptr %2, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %93

93:                                               ; preds = %92, %89
  %94 = call i32 @mvebu_pinctrl_probe(ptr noundef %0) #8
  br label %95

95:                                               ; preds = %93, %87, %82, %70, %56, %30, %26, %24, %10
  %96 = phi i32 [ %12, %10 ], [ %25, %24 ], [ %57, %56 ], [ %71, %70 ], [ %94, %93 ], [ -12, %30 ], [ -12, %26 ], [ %88, %87 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pinctrl_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_pmu_mpp_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %7 = shl nuw i32 1, %1
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @mvebu_mmio_mpp_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %23

12:                                               ; preds = %3
  %13 = shl i32 %1, 2
  %14 = and i32 %13, 28
  %15 = lshr i32 %1, 1
  %16 = and i32 %15, 2147483644
  %17 = load ptr, ptr @pmu_base, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = lshr i32 %19, %14
  %21 = and i32 %20, 15
  %22 = or i32 %21, 16
  store i32 %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %12, %10
  %24 = phi i32 [ %11, %10 ], [ 0, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_pmu_mpp_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %7 = and i32 %2, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %10 = shl nuw i32 1, %1
  %11 = xor i32 %10, -1
  %12 = and i32 %6, %11
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !14
  %15 = tail call i32 @mvebu_mmio_mpp_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  br label %36

16:                                               ; preds = %3
  %17 = shl i32 %1, 2
  %18 = and i32 %17, 28
  %19 = lshr i32 %1, 1
  %20 = and i32 %19, 2147483644
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %21 = shl nuw i32 1, %1
  %22 = or i32 %6, %21
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !14
  %25 = load ptr, ptr @pmu_base, align 4
  %26 = getelementptr i8, ptr %25, i32 %20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %28 = shl nuw i32 15, %18
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = and i32 %2, 15
  %32 = shl nuw i32 %31, %18
  %33 = or i32 %30, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr @pmu_base, align 4
  %35 = getelementptr i8, ptr %34, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !14
  br label %36

36:                                               ; preds = %16, %9
  %37 = phi i32 [ %15, %9 ], [ 0, %16 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_get(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mmio_mpp_ctrl_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_mpp4_ctrl_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = load ptr, ptr @mpp4_base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  switch i32 %1, label %15 [
    i32 24, label %10
    i32 40, label %6
    i32 46, label %7
    i32 58, label %8
    i32 62, label %9
  ]

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %3
  %11 = phi i32 [ 16, %9 ], [ 32, %8 ], [ 2, %7 ], [ 1, %6 ], [ 4, %3 ]
  %12 = and i32 %11, %5
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, ptr %2, align 4
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ 0, %10 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_mpp4_ctrl_set(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr @mpp4_base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  switch i32 %1, label %18 [
    i32 24, label %10
    i32 40, label %6
    i32 46, label %7
    i32 58, label %8
    i32 62, label %9
  ]

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %3
  %11 = phi i32 [ 16, %9 ], [ 32, %8 ], [ 2, %7 ], [ 1, %6 ], [ 4, %3 ]
  %12 = xor i32 %11, -1
  %13 = and i32 %5, %12
  %14 = icmp eq i32 %2, 0
  %15 = or i32 %11, %5
  %16 = select i1 %14, i32 %13, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr @mpp4_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #8, !srcloc !14
  br label %18

18:                                               ; preds = %10, %3
  %19 = phi i32 [ 0, %10 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_audio1_ctrl_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @mpp4_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !22
  %9 = load ptr, ptr @gconfmap, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 8, ptr noundef nonnull %4) #8
  %11 = load ptr, ptr @gconfmap, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 16, ptr noundef nonnull %5) #8
  %13 = load ptr, ptr @gconfmap, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %6) #8
  %15 = and i32 %8, 8
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = or i32 %15, 4
  store i32 %20, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ %15, %3 ]
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = or i32 %22, 2
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %27, %26 ], [ %22, %21 ]
  %30 = load i32, ptr %6, align 4
  %31 = and i32 %30, 4194304
  %32 = icmp ne i32 %31, 0
  %33 = lshr exact i32 %31, 22
  %34 = or i32 %33, %29
  %35 = and i32 %29, 8
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %29, -6
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = or i1 %32, %36
  %40 = and i32 %38, 2
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = and i32 %38, -2
  %45 = select i1 %41, i32 %44, i32 %38
  store i32 %45, ptr %2, align 4
  br label %46

46:                                               ; preds = %43, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_audio1_ctrl_set(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr @mpp4_base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %6 = and i32 %5, -9
  %7 = and i32 %2, 8
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr @mpp4_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #8, !srcloc !14
  %10 = load ptr, ptr @gconfmap, align 4
  %11 = lshr i32 %2, 2
  %12 = and i32 %11, 1
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8, i32 noundef 1, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = load ptr, ptr @gconfmap, align 4
  %15 = and i32 %2, 2
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 16, i32 noundef 2, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = load ptr, ptr @gconfmap, align 4
  %18 = shl i32 %2, 22
  %19 = and i32 %18, 4194304
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4, i32 noundef 4194304, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_audio1_ctrl_gpio_req(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !22
  %4 = call i32 @dove_audio1_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  %5 = load i32, ptr %3, align 4
  switch i32 %5, label %12 [
    i32 2, label %6
    i32 14, label %6
    i32 8, label %9
    i32 11, label %9
    i32 10, label %13
  ]

6:                                                ; preds = %2, %2
  %7 = icmp ugt i32 %1, 55
  %8 = select i1 %7, i32 0, i32 -524
  br label %13

9:                                                ; preds = %2, %2
  %10 = icmp ult i32 %1, 56
  %11 = select i1 %10, i32 0, i32 -524
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9, %6, %2
  %14 = phi i32 [ -524, %12 ], [ %8, %6 ], [ %11, %9 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dove_audio1_ctrl_gpio_dir(ptr nocapture noundef readnone %0, i32 noundef %1, i1 noundef zeroext %2) #7 {
  %4 = add i32 %1, -58
  %5 = icmp ult i32 %4, -6
  %6 = select i1 %5, i32 -524, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_nand_ctrl_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !22
  %5 = load ptr, ptr @gconfmap, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %4) #8
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 1
  store i32 %8, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_nand_ctrl_set(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr @gconfmap, align 4
  %5 = icmp ne i32 %2, 0
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 16, i32 noundef 1, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_audio0_ctrl_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_audio0_ctrl_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %7 = and i32 %6, -65537
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, i32 0, i32 65536
  %10 = or i32 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_twsi_ctrl_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !22
  %6 = load ptr, ptr @gconfmap, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #8
  %8 = load ptr, ptr @gconfmap, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %5) #8
  store i32 0, ptr %2, align 4
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = and i32 %14, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %13, %3
  %21 = phi i32 [ 1, %3 ], [ 2, %13 ], [ 3, %17 ]
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_twsi_ctrl_set(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds [3 x i32], ptr @switch.table.dove_twsi_ctrl_set, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %4, 20
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %3 ], [ %8, %6 ]
  %12 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %13 = load ptr, ptr @gconfmap, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 128, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = load ptr, ptr @gconfmap, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 4, i32 noundef 3145728, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 388230}
!10 = !{i64 2152220049}
!11 = !{i64 2152220477}
!12 = !{i64 2152220910}
!13 = !{i64 2152221293}
!14 = !{i64 387812}
!15 = !{i64 2152221789}
!16 = !{i64 2152222333}
!17 = !{i64 2152222536}
!18 = !{i64 2152222981}
!19 = !{i64 2152223704}
!20 = !{i64 2152224295}
!21 = !{i64 2152226233}
!22 = !{!"auto-init"}
!23 = !{i64 2152227563}
!24 = !{i64 2152227980}
!25 = !{i64 2152225013}
!26 = !{i64 2152225436}
!27 = !{i64 2152225794}
