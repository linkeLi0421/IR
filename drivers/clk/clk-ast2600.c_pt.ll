; ModuleID = '/llk/IR/drivers/clk/clk-ast2600.c_pt.bc'
source_filename = "../drivers/clk/clk-ast2600.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.aspeed_gate_data = type { i8, i8, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_reset = type { ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.aspeed_clk_gate = type { %struct.clk_hw, ptr, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_ast2600__166_690_aspeed_g6_clk_driver_init6 = internal global ptr @aspeed_g6_clk_driver_init, section ".initcall6.init", align 4
@__of_table_aspeed_cc_g6 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_cc_g6_of_clk_init_driver }, section "__clk_of_table", align 4
@aspeed_g6_clk_driver = internal global %struct.platform_driver { ptr @aspeed_g6_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @aspeed_g6_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"ast2600-clk\00", align 1
@aspeed_g6_clk_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no syscon regmap\0A\00", align 1
@aspeed_g6_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @aspeed_g6_reset_assert, ptr @aspeed_g6_reset_deassert, ptr @aspeed_g6_reset_status }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not register reset controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@aspeed_g6_clk_data = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"uartx\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"emmc_extclk_hpll_in\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hpll\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"emmc_extclk_mux\00", align 1
@emmc_extclk_parent_names = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.26], align 4
@scu_g6_base = internal unnamed_addr global ptr null, align 4
@aspeed_g6_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"emmc_extclk_gate\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"emmc_extclk\00", align 1
@ast2600_emmc_extclk_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"sd_extclk_gate\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"sd_extclk\00", align 1
@ast2600_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table { i32 2, i32 12 }, %struct.clk_div_table { i32 3, i32 16 }, %struct.clk_div_table { i32 4, i32 20 }, %struct.clk_div_table { i32 5, i32 24 }, %struct.clk_div_table { i32 6, i32 28 }, %struct.clk_div_table { i32 7, i32 32 }, %struct.clk_div_table zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"mac12rclk\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"mac12\00", align 1
@ast2600_mac_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"mac1rclk\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"mac2rclk\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"mac34rclk\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"mac34\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"mac3rclk\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"mac4rclk\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"lhclk\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"d1clk\00", align 1
@d1clk_parent_names = internal constant [5 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"bclk\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"vclk\00", align 1
@vclk_parent_names = internal constant [4 x ptr] [ptr @.str.27, ptr @.str.32, ptr @.str.17, ptr @.str.33], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"eclk\00", align 1
@ast2600_eclk_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@aspeed_g6_gates = internal unnamed_addr constant [46 x %struct.aspeed_gate_data] [%struct.aspeed_gate_data { i8 1, i8 6, ptr @.str.34, ptr @.str.25, i32 0 }, %struct.aspeed_gate_data { i8 2, i8 7, ptr @.str.35, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 0, i8 -1, ptr @.str.36, ptr @.str.26, i32 2048 }, %struct.aspeed_gate_data { i8 3, i8 -1, ptr @.str.37, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 4, i8 8, ptr @.str.38, ptr @.str.23, i32 0 }, %struct.aspeed_gate_data { i8 5, i8 -1, ptr @.str.39, ptr null, i32 2048 }, %struct.aspeed_gate_data { i8 32, i8 32, ptr @.str.40, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 37, i8 -1, ptr @.str.41, ptr @.str.21, i32 0 }, %struct.aspeed_gate_data { i8 10, i8 13, ptr @.str.42, ptr @.str.22, i32 0 }, %struct.aspeed_gate_data { i8 13, i8 4, ptr @.str.43, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 6, i8 -1, ptr @.str.44, ptr @.str.45, i32 2048 }, %struct.aspeed_gate_data { i8 34, i8 -1, ptr @.str.46, ptr @.str.45, i32 2048 }, %struct.aspeed_gate_data { i8 33, i8 -1, ptr @.str.47, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 9, i8 15, ptr @.str.48, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 14, i8 14, ptr @.str.49, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 7, i8 3, ptr @.str.50, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 24, i8 4, ptr @.str.51, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 25, i8 9, ptr @.str.52, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 20, i8 11, ptr @.str.53, ptr @.str.13, i32 0 }, %struct.aspeed_gate_data { i8 21, i8 12, ptr @.str.54, ptr @.str.13, i32 0 }, %struct.aspeed_gate_data { i8 52, i8 52, ptr @.str.55, ptr @.str.18, i32 0 }, %struct.aspeed_gate_data { i8 53, i8 53, ptr @.str.56, ptr @.str.18, i32 0 }, %struct.aspeed_gate_data { i8 48, i8 -1, ptr @.str.57, ptr @.str.3, i32 0 }, %struct.aspeed_gate_data { i8 49, i8 -1, ptr @.str.58, ptr @.str.3, i32 0 }, %struct.aspeed_gate_data { i8 50, i8 -1, ptr @.str.59, ptr @.str.3, i32 0 }, %struct.aspeed_gate_data { i8 51, i8 -1, ptr @.str.60, ptr @.str.3, i32 0 }, %struct.aspeed_gate_data { i8 15, i8 -1, ptr @.str.61, ptr @.str.3, i32 0 }, %struct.aspeed_gate_data { i8 54, i8 -1, ptr @.str.62, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 55, i8 -1, ptr @.str.63, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 56, i8 -1, ptr @.str.64, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 57, i8 -1, ptr @.str.65, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 58, i8 -1, ptr @.str.66, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 59, i8 -1, ptr @.str.67, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 60, i8 -1, ptr @.str.68, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 61, i8 -1, ptr @.str.69, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 36, i8 56, ptr @.str.70, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 27, i8 16, ptr @.str.71, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 40, i8 40, ptr @.str.72, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 41, i8 41, ptr @.str.73, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 42, i8 42, ptr @.str.74, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 43, i8 43, ptr @.str.75, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 44, i8 44, ptr @.str.76, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 45, i8 45, ptr @.str.77, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 46, i8 46, ptr @.str.78, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 47, i8 47, ptr @.str.79, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 62, i8 59, ptr @.str.80, ptr null, i32 0 }], align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"epll\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"usb-phy-40m\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"gpioc6_clkin\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"dp_phy_pll\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"d1pll\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"eclk-gate\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"gclk-gate\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"mclk-gate\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"vclk-gate\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"bclk-gate\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"dclk-gate\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"lclk-gate\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"lhclk-gate\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"d1clk-gate\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"yclk-gate\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"ref0clk-gate\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ref1clk-gate\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"espiclk-gate\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"usb-uhci-gate\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"usb-port1-gate\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"usb-port2-gate\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"rsaclk-gate\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"rvasclk-gate\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"mac1clk-gate\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"mac2clk-gate\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"mac3clk-gate\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"mac4clk-gate\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"uart1clk-gate\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"uart2clk-gate\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"uart3clk-gate\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"uart4clk-gate\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"uart5clk-gate\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"uart6clk-gate\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"uart7clk-gate\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"uart8clk-gate\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"uart9clk-gate\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"uart10clk-gate\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"uart11clk-gate\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"uart12clk-gate\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"uart13clk-gate\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"sdclk-gate\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"emmcclk-gate\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"i3c0clk-gate\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"i3c1clk-gate\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"i3c2clk-gate\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"i3c3clk-gate\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"i3c4clk-gate\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"i3c5clk-gate\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"i3c6clk-gate\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"i3c7clk-gate\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"fsiclk-gate\00", align 1
@aspeed_g6_clk_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @aspeed_g6_clk_enable, ptr @aspeed_g6_clk_disable, ptr @aspeed_g6_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@soc_rev = internal unnamed_addr global i8 0, align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"\013clk-ast2600: no syscon regmap\0A\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"\013clk-ast2600: failed to add DT provider: %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@ast2600_a1_axi_ahb200_tbl = internal unnamed_addr constant [8 x i32] [i32 3, i32 4, i32 3, i32 4, i32 2, i32 2, i32 2, i32 2], align 4
@ast2600_a1_axi_ahb_div1_tbl = internal unnamed_addr constant [4 x i32] [i32 3, i32 4, i32 6, i32 8], align 4
@ast2600_a1_axi_ahb_div0_tbl = internal unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 3, i32 4], align 4
@ast2600_a0_axi_ahb_div_table = internal unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 3, i32 5], align 4
@.str.84 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"apb2\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_ast2600__166_690_aspeed_g6_clk_driver_init6, ptr @__of_table_aspeed_cc_g6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_g6_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aspeed_cc_g6_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #7
  tail call fastcc void @aspeed_g6_cc_init(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #7
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  %9 = ptrtoint ptr %6 to i32
  br label %224

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %224, label %13

13:                                               ; preds = %10
  store ptr %6, ptr %11, align 4
  %14 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1, i32 8
  store i32 64, ptr %16, align 4
  store ptr @aspeed_g6_reset_ops, ptr %14, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1, i32 5
  store ptr %17, ptr %18, align 4
  %19 = tail call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef %14) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %224

22:                                               ; preds = %13
  %23 = call i32 @regmap_read(ptr noundef %6, i32 noundef 192, ptr noundef nonnull %2) #7
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 24000000, i32 1846153
  %28 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %27, i32 noundef 0, i32 noundef 0) #7
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = ptrtoint ptr %28 to i32
  br label %224

32:                                               ; preds = %22
  %33 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %34 = getelementptr %struct.clk_hw_onecell_data, ptr %33, i32 59
  store ptr %28, ptr %34, align 4
  %35 = call i32 @regmap_read(ptr noundef %6, i32 noundef 128, ptr noundef nonnull %2) #7
  %36 = load i32, ptr %2, align 4
  %37 = icmp sgt i32 %36, -1
  %38 = select i1 %37, i32 24000000, i32 1846153
  %39 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef 0) #7
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = ptrtoint ptr %39 to i32
  br label %224

43:                                               ; preds = %32
  %44 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %45 = getelementptr %struct.clk_hw_onecell_data, ptr %44, i32 60
  store ptr %39, ptr %45, align 4
  %46 = call ptr @clk_hw_register_fixed_factor(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = ptrtoint ptr %46 to i32
  br label %224

50:                                               ; preds = %43
  %51 = load ptr, ptr @scu_g6_base, align 4
  %52 = getelementptr i8, ptr %51, i32 768
  %53 = call ptr @__clk_hw_register_mux(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @emmc_extclk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %52, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = ptrtoint ptr %53 to i32
  br label %224

57:                                               ; preds = %50
  %58 = load ptr, ptr @scu_g6_base, align 4
  %59 = getelementptr i8, ptr %58, i32 768
  %60 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %59, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = ptrtoint ptr %60 to i32
  br label %224

64:                                               ; preds = %57
  %65 = load ptr, ptr @scu_g6_base, align 4
  %66 = getelementptr i8, ptr %65, i32 768
  %67 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %66, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_emmc_extclk_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = ptrtoint ptr %67 to i32
  br label %224

71:                                               ; preds = %64
  %72 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %73 = getelementptr %struct.clk_hw_onecell_data, ptr %72, i32 62
  store ptr %67, ptr %73, align 4
  %74 = load ptr, ptr @scu_g6_base, align 4
  %75 = getelementptr i8, ptr %74, i32 784
  %76 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %75, i8 noundef zeroext 31, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = ptrtoint ptr %76 to i32
  br label %224

80:                                               ; preds = %71
  %81 = load ptr, ptr @scu_g6_base, align 4
  %82 = getelementptr i8, ptr %81, i32 784
  %83 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %82, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = ptrtoint ptr %83 to i32
  br label %224

87:                                               ; preds = %80
  %88 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %89 = getelementptr %struct.clk_hw_onecell_data, ptr %88, i32 61
  store ptr %83, ptr %89, align 4
  %90 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 50000000, i32 noundef 0, i32 noundef 0) #7
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = ptrtoint ptr %90 to i32
  br label %224

94:                                               ; preds = %87
  %95 = load ptr, ptr @scu_g6_base, align 4
  %96 = getelementptr i8, ptr %95, i32 768
  %97 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %96, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_mac_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = ptrtoint ptr %97 to i32
  br label %224

101:                                              ; preds = %94
  %102 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %103 = getelementptr %struct.clk_hw_onecell_data, ptr %102, i32 65
  store ptr %97, ptr %103, align 4
  %104 = load ptr, ptr @scu_g6_base, align 4
  %105 = getelementptr i8, ptr %104, i32 832
  %106 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %105, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = ptrtoint ptr %106 to i32
  br label %224

110:                                              ; preds = %101
  %111 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %112 = getelementptr %struct.clk_hw_onecell_data, ptr %111, i32 68
  store ptr %106, ptr %112, align 4
  %113 = load ptr, ptr @scu_g6_base, align 4
  %114 = getelementptr i8, ptr %113, i32 832
  %115 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %114, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = ptrtoint ptr %115 to i32
  br label %224

119:                                              ; preds = %110
  %120 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %121 = getelementptr %struct.clk_hw_onecell_data, ptr %120, i32 69
  store ptr %115, ptr %121, align 4
  %122 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 50000000, i32 noundef 0, i32 noundef 0) #7
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = ptrtoint ptr %122 to i32
  br label %224

126:                                              ; preds = %119
  %127 = load ptr, ptr @scu_g6_base, align 4
  %128 = getelementptr i8, ptr %127, i32 784
  %129 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %128, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_mac_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = ptrtoint ptr %129 to i32
  br label %224

133:                                              ; preds = %126
  %134 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %135 = getelementptr %struct.clk_hw_onecell_data, ptr %134, i32 66
  store ptr %129, ptr %135, align 4
  %136 = load ptr, ptr @scu_g6_base, align 4
  %137 = getelementptr i8, ptr %136, i32 848
  %138 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %137, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %139 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = ptrtoint ptr %138 to i32
  br label %224

142:                                              ; preds = %133
  %143 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %144 = getelementptr %struct.clk_hw_onecell_data, ptr %143, i32 70
  store ptr %138, ptr %144, align 4
  %145 = load ptr, ptr @scu_g6_base, align 4
  %146 = getelementptr i8, ptr %145, i32 848
  %147 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %146, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = ptrtoint ptr %147 to i32
  br label %224

151:                                              ; preds = %142
  %152 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %153 = getelementptr %struct.clk_hw_onecell_data, ptr %152, i32 71
  store ptr %147, ptr %153, align 4
  %154 = load ptr, ptr @scu_g6_base, align 4
  %155 = getelementptr i8, ptr %154, i32 768
  %156 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %155, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %157 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = ptrtoint ptr %156 to i32
  br label %224

160:                                              ; preds = %151
  %161 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %162 = getelementptr %struct.clk_hw_onecell_data, ptr %161, i32 58
  store ptr %156, ptr %162, align 4
  %163 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 768, i32 noundef 1792, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %164 = load ptr, ptr @scu_g6_base, align 4
  %165 = getelementptr i8, ptr %164, i32 768
  %166 = call ptr @__clk_hw_register_mux(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 5, ptr noundef nonnull @d1clk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %165, i8 noundef zeroext 8, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %167 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = ptrtoint ptr %166 to i32
  br label %224

170:                                              ; preds = %160
  %171 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %172 = getelementptr %struct.clk_hw_onecell_data, ptr %171, i32 56
  store ptr %166, ptr %172, align 4
  %173 = call i32 @regmap_write(ptr noundef %6, i32 noundef 776, i32 noundef 73728) #7
  %174 = load ptr, ptr @scu_g6_base, align 4
  %175 = getelementptr i8, ptr %174, i32 768
  %176 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %175, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %177 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = ptrtoint ptr %176 to i32
  br label %224

180:                                              ; preds = %170
  %181 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %182 = getelementptr %struct.clk_hw_onecell_data, ptr %181, i32 55
  store ptr %176, ptr %182, align 4
  %183 = load ptr, ptr @scu_g6_base, align 4
  %184 = getelementptr i8, ptr %183, i32 772
  %185 = call ptr @__clk_hw_register_mux(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 4, ptr noundef nonnull @vclk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %184, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %186 = icmp ugt ptr %185, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = ptrtoint ptr %185 to i32
  br label %224

189:                                              ; preds = %180
  %190 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %191 = getelementptr %struct.clk_hw_onecell_data, ptr %190, i32 57
  store ptr %185, ptr %191, align 4
  %192 = load ptr, ptr @scu_g6_base, align 4
  %193 = getelementptr i8, ptr %192, i32 768
  %194 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %193, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2600_eclk_div_table, ptr noundef nonnull @aspeed_g6_clk_lock) #7
  %195 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = ptrtoint ptr %194 to i32
  br label %224

198:                                              ; preds = %189
  %199 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %200 = getelementptr %struct.clk_hw_onecell_data, ptr %199, i32 63
  store ptr %194, ptr %200, align 4
  br label %201

201:                                              ; preds = %219, %198
  %202 = phi i32 [ 0, %198 ], [ %222, %219 ]
  %203 = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %202
  %204 = load i8, ptr %203, align 4
  %205 = icmp ne i8 %204, 14
  %206 = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %202, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %202, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %202, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr [46 x %struct.aspeed_gate_data], ptr @aspeed_g6_gates, i32 0, i32 %202, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = zext i1 %205 to i8
  %215 = call fastcc ptr @aspeed_g6_clk_hw_register_gate(ptr noundef %3, ptr noundef %207, ptr noundef %209, i32 noundef %211, ptr noundef %6, i8 noundef zeroext %204, i8 noundef zeroext %213, i8 noundef zeroext %214)
  %216 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  br i1 %216, label %217, label %219

217:                                              ; preds = %201
  %218 = ptrtoint ptr %215 to i32
  br label %224

219:                                              ; preds = %201
  %220 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %221 = getelementptr %struct.clk_hw_onecell_data, ptr %220, i32 0, i32 1, i32 %202
  store ptr %215, ptr %221, align 4
  %222 = add nuw nsw i32 %202, 1
  %223 = icmp eq i32 %222, 46
  br i1 %223, label %224, label %201

224:                                              ; preds = %219, %217, %196, %187, %178, %168, %158, %149, %140, %131, %124, %117, %108, %99, %92, %85, %78, %69, %62, %55, %48, %41, %30, %21, %10, %8
  %225 = phi i32 [ %9, %8 ], [ %19, %21 ], [ %31, %30 ], [ %42, %41 ], [ %49, %48 ], [ %56, %55 ], [ %63, %62 ], [ %70, %69 ], [ %79, %78 ], [ %86, %85 ], [ %93, %92 ], [ %100, %99 ], [ %109, %108 ], [ %118, %117 ], [ %125, %124 ], [ %132, %131 ], [ %141, %140 ], [ %150, %149 ], [ %159, %158 ], [ %169, %168 ], [ %179, %178 ], [ %188, %187 ], [ %197, %196 ], [ -12, %10 ], [ %218, %217 ], [ 0, %219 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %225
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @aspeed_g6_clk_hw_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #2 {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #7
  %11 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 12, i1 false), !annotation !8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %8
  store ptr %1, ptr %10, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @aspeed_g6_clk_gate_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 %3, ptr %17, align 4
  %18 = icmp eq ptr %2, null
  %19 = select i1 %18, ptr null, ptr %9
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ne ptr %2, null
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %13, i32 0, i32 1
  store ptr %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %13, i32 0, i32 2
  store i8 %5, ptr %25, align 8
  %26 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %13, i32 0, i32 3
  store i8 %6, ptr %26, align 1
  %27 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %13, i32 0, i32 4
  store i8 %7, ptr %27, align 2
  %28 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %13, i32 0, i32 5
  store ptr @aspeed_g6_clk_lock, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %10, ptr %29, align 8
  %30 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %13) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %13) #7
  %33 = inttoptr i32 %30 to ptr
  br label %34

34:                                               ; preds = %32, %15, %8
  %35 = phi ptr [ %33, %32 ], [ %13, %15 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #7
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_g6_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  %6 = icmp ugt i32 %1, 31
  %7 = select i1 %6, i32 80, i32 64
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %7, i32 noundef %5) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_g6_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  %6 = icmp ugt i32 %1, 31
  %7 = load ptr, ptr %3, align 4
  %8 = select i1 %6, i32 84, i32 68
  %9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %8, i32 noundef %5) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_g6_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = and i32 %1, 31
  %6 = icmp ugt i32 %1, 31
  %7 = select i1 %6, i32 80, i32 64
  %8 = load ptr, ptr %4, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #7
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr %3, align 4
  %12 = lshr i32 %11, %5
  %13 = and i32 %12, 1
  %14 = select i1 %10, i32 %13, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 31
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 31
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = load i8, ptr %3, align 4
  %17 = and i8 %16, 31
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = and i8 %20, 31
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ult i8 %20, 32
  %29 = select i1 %28, i32 64, i32 80
  %30 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %2) #7
  %31 = load i32, ptr %2, align 4
  %32 = and i32 %31, %25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %52

35:                                               ; preds = %22
  %36 = load i8, ptr %3, align 4
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi i8 [ %36, %35 ], [ %16, %1 ]
  %39 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ult i8 %38, 32
  %42 = select i1 %41, i32 128, i32 144
  %43 = call i32 @regmap_read(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %2) #7
  %44 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 %19, i32 0
  %49 = load i32, ptr %2, align 4
  %50 = and i32 %49, %19
  %51 = icmp eq i32 %50, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %51, label %94, label %52

52:                                               ; preds = %37, %34
  %53 = load i8, ptr %8, align 1
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ult i8 %53, 32
  %59 = select i1 %58, i32 64, i32 80
  %60 = call i32 @regmap_write(ptr noundef %57, i32 noundef %59, i32 noundef %12) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 21474800) #7
  br label %62

62:                                               ; preds = %55, %52
  %63 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  %67 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load i8, ptr %3, align 4
  %70 = icmp ult i8 %69, 32
  %71 = select i1 %70, i32 128, i32 144
  %72 = select i1 %70, i32 132, i32 148
  %73 = select i1 %66, i32 %71, i32 %72
  %74 = call i32 @regmap_write(ptr noundef %68, i32 noundef %73, i32 noundef %7) #7
  %75 = load i8, ptr %8, align 1
  %76 = icmp sgt i8 %75, -1
  br i1 %76, label %77, label %94

77:                                               ; preds = %62
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #7
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #7
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #7
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #7
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 214748000) #7
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #7
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748000) #7
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748000) #7
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #7
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #7
  %88 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load i8, ptr %8, align 1
  %91 = icmp slt i8 %90, 32
  %92 = select i1 %91, i32 68, i32 84
  %93 = call i32 @regmap_write(ptr noundef %89, i32 noundef %92, i32 noundef %12) #7
  br label %94

94:                                               ; preds = %77, %62, %37
  %95 = load ptr, ptr %13, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %15) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_g6_clk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %2, align 4
  %17 = icmp ult i8 %16, 32
  %18 = select i1 %17, i32 132, i32 148
  %19 = select i1 %17, i32 128, i32 144
  %20 = select i1 %13, i32 %18, i32 %19
  %21 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %20, i32 noundef %6) #7
  %22 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_g6_clk_is_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 31
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = and i8 %9, 31
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ult i8 %9, 32
  %18 = select i1 %17, i32 64, i32 80
  %19 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %2) #7
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, %14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %11
  %24 = load i8, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi i8 [ %24, %23 ], [ %4, %1 ]
  %27 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp ult i8 %26, 32
  %30 = select i1 %29, i32 128, i32 144
  %31 = call i32 @regmap_read(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %2) #7
  %32 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 %7, i32 0
  %37 = load i32, ptr %2, align 4
  %38 = and i32 %37, %7
  %39 = icmp eq i32 %38, %36
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %25, %11
  %42 = phi i32 [ %40, %25 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aspeed_g6_cc_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %2, ptr @scu_g6_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %2, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %7 = lshr i32 %6, 16
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr @soc_rev, align 1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 288) #10
  store ptr %10, ptr @aspeed_g6_clk_data, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %12, %4
  %13 = phi i32 [ %15, %12 ], [ 0, %4 ]
  %14 = getelementptr %struct.clk_hw_onecell_data, ptr %10, i32 0, i32 1, i32 %13
  store ptr inttoptr (i32 -517 to ptr), ptr %14, align 4
  %15 = add nuw nsw i32 %13, 1
  %16 = icmp eq i32 %15, 71
  br i1 %16, label %17, label %12

17:                                               ; preds = %12
  %18 = tail call ptr @syscon_node_to_regmap(ptr noundef %0) #7
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #9
  br label %28

22:                                               ; preds = %17
  tail call fastcc void @aspeed_g6_cc(ptr noundef %18) #8
  %23 = load ptr, ptr @aspeed_g6_clk_data, align 4
  store i32 71, ptr %23, align 4
  %24 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %24) #9
  br label %28

28:                                               ; preds = %26, %22, %20, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aspeed_g6_cc(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 25000000, i32 noundef 0, i32 noundef 0) #7
  %4 = call i32 @regmap_read(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %2) #7
  %5 = load i32, ptr %2, align 4
  %6 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.6, i32 noundef %5)
  %7 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %8 = getelementptr %struct.clk_hw_onecell_data, ptr %7, i32 47
  store ptr %6, ptr %8, align 4
  %9 = call i32 @regmap_read(ptr noundef %0, i32 noundef 544, ptr noundef nonnull %2) #7
  %10 = load i32, ptr %2, align 4
  %11 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.26, i32 noundef %10)
  %12 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %13 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 48
  store ptr %11, ptr %13, align 4
  %14 = call i32 @regmap_read(ptr noundef %0, i32 noundef 608, ptr noundef nonnull %2) #7
  %15 = load i32, ptr %2, align 4
  %16 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.27, i32 noundef %15)
  %17 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %18 = getelementptr %struct.clk_hw_onecell_data, ptr %17, i32 49
  store ptr %16, ptr %18, align 4
  %19 = call i32 @regmap_read(ptr noundef %0, i32 noundef 576, ptr noundef nonnull %2) #7
  %20 = load i32, ptr %2, align 4
  %21 = call fastcc ptr @ast2600_calc_pll(ptr noundef nonnull @.str.28, i32 noundef %20)
  %22 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %23 = getelementptr %struct.clk_hw_onecell_data, ptr %22, i32 50
  store ptr %21, ptr %23, align 4
  %24 = call i32 @regmap_read(ptr noundef %0, i32 noundef 528, ptr noundef nonnull %2) #7
  %25 = load i32, ptr %2, align 4
  %26 = load i8, ptr @soc_rev, align 1
  %27 = icmp ugt i8 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = and i32 %25, 16777216
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = and i32 %25, 8191
  %33 = lshr i32 %25, 13
  %34 = and i32 %33, 63
  %35 = lshr i32 %25, 19
  %36 = and i32 %35, 15
  %37 = add nuw nsw i32 %32, 1
  %38 = add nuw nsw i32 %34, 1
  %39 = add nuw nsw i32 %36, 1
  %40 = mul nuw nsw i32 %38, %39
  br label %54

41:                                               ; preds = %1
  %42 = and i32 %25, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = lshr i32 %25, 5
  %46 = and i32 %45, 63
  %47 = shl i32 %25, 27
  %48 = ashr i32 %47, 31
  %49 = and i32 %25, 15
  %50 = add nsw i32 %48, 2
  %51 = add nuw nsw i32 %46, 2
  %52 = mul nuw nsw i32 %50, %51
  %53 = add nuw nsw i32 %49, 1
  br label %54

54:                                               ; preds = %44, %41, %31, %28
  %55 = phi i32 [ %40, %31 ], [ %53, %44 ], [ 1, %28 ], [ 1, %41 ]
  %56 = phi i32 [ %37, %31 ], [ %52, %44 ], [ 1, %28 ], [ 1, %41 ]
  %57 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef %56, i32 noundef %55) #7
  %58 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %59 = getelementptr %struct.clk_hw_onecell_data, ptr %58, i32 51
  store ptr %57, ptr %59, align 4
  %60 = call i32 @regmap_read(ptr noundef %0, i32 noundef 1280, ptr noundef nonnull %2) #7
  %61 = load i32, ptr %2, align 4
  %62 = and i32 %61, 65536
  %63 = icmp eq i32 %62, 0
  %64 = lshr i32 %61, 11
  %65 = and i32 %64, 3
  %66 = load i8, ptr @soc_rev, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %54
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %68
  %71 = lshr i32 %61, 8
  %72 = and i32 %71, 3
  %73 = getelementptr [8 x i32], ptr @ast2600_a1_axi_ahb200_tbl, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = xor i1 %63, true
  %76 = zext i1 %75 to i32
  %77 = shl i32 %74, %76
  br label %88

78:                                               ; preds = %68
  br i1 %63, label %82, label %79

79:                                               ; preds = %78
  %80 = getelementptr [4 x i32], ptr @ast2600_a1_axi_ahb_div1_tbl, i32 0, i32 %65
  %81 = load i32, ptr %80, align 4
  br label %88

82:                                               ; preds = %78
  %83 = getelementptr [4 x i32], ptr @ast2600_a1_axi_ahb_div0_tbl, i32 0, i32 %65
  %84 = load i32, ptr %83, align 4
  br label %88

85:                                               ; preds = %54
  %86 = getelementptr [4 x i32], ptr @ast2600_a0_axi_ahb_div_table, i32 0, i32 %65
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %82, %79, %70
  %89 = phi i32 [ %81, %79 ], [ %84, %82 ], [ %87, %85 ], [ %77, %70 ]
  %90 = select i1 %63, i32 2, i32 1
  %91 = mul i32 %89, %90
  %92 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 1, i32 noundef %91) #7
  %93 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %94 = getelementptr %struct.clk_hw_onecell_data, ptr %93, i32 52
  store ptr %92, ptr %94, align 4
  %95 = call i32 @regmap_read(ptr noundef %0, i32 noundef 768, ptr noundef nonnull %2) #7
  %96 = load i32, ptr %2, align 4
  %97 = lshr i32 %96, 23
  %98 = and i32 %97, 7
  store i32 %98, ptr %2, align 4
  %99 = shl nuw nsw i32 %98, 2
  %100 = add nuw nsw i32 %99, 4
  %101 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 1, i32 noundef %100) #7
  %102 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %103 = getelementptr %struct.clk_hw_onecell_data, ptr %102, i32 53
  store ptr %101, ptr %103, align 4
  %104 = call i32 @regmap_read(ptr noundef %0, i32 noundef 784, ptr noundef nonnull %2) #7
  %105 = load i32, ptr %2, align 4
  %106 = lshr i32 %105, 9
  %107 = and i32 %106, 7
  store i32 %107, ptr %2, align 4
  %108 = shl nuw nsw i32 %107, 1
  %109 = add nuw nsw i32 %108, 2
  %110 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef 0, i32 noundef 1, i32 noundef %109) #7
  %111 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %112 = getelementptr %struct.clk_hw_onecell_data, ptr %111, i32 54
  store ptr %110, ptr %112, align 4
  %113 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 40000000, i32 noundef 0, i32 noundef 0) #7
  %114 = load ptr, ptr @aspeed_g6_clk_data, align 4
  %115 = getelementptr %struct.clk_hw_onecell_data, ptr %114, i32 67
  store ptr %113, ptr %115, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ast2600_calc_pll(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = and i32 %1, 16777216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = lshr i32 %1, 13
  %7 = lshr i32 %1, 19
  %8 = and i32 %7, 15
  %9 = trunc i32 %1 to i16
  %10 = and i16 %9, 8191
  %11 = add nuw nsw i16 %10, 1
  %12 = trunc i32 %6 to i16
  %13 = and i16 %12, 63
  %14 = add nuw nsw i16 %13, 1
  %15 = udiv i16 %11, %14
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %8, 1
  br label %18

18:                                               ; preds = %5, %2
  %19 = phi i32 [ %17, %5 ], [ 1, %2 ]
  %20 = phi i32 [ %16, %5 ], [ 1, %2 ]
  %21 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef %20, i32 noundef %19) #7
  ret ptr %21
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2829623}
!10 = !{i64 2151656058}
