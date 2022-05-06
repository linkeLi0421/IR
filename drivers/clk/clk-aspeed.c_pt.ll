; ModuleID = '/llk/IR/drivers/clk/clk-aspeed.c_pt.bc'
source_filename = "../drivers/clk/clk-aspeed.c"
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
%struct.aspeed_gate_data = type { i8, i8, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aspeed_clk_soc_data = type { ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
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

@__initcall__kmod_clk_aspeed__166_581_aspeed_clk_driver_init6 = internal global ptr @aspeed_clk_driver_init, section ".initcall6.init", align 4
@__of_table_aspeed_cc_g5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_cc_g5_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_aspeed_cc_g4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_cc_g4_of_clk_init_driver }, section "__clk_of_table", align 4
@aspeed_clk_driver = internal global %struct.platform_driver { ptr @aspeed_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @aspeed_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"aspeed-clk\00", align 1
@aspeed_clk_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no syscon regmap\0A\00", align 1
@aspeed_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @aspeed_reset_assert, ptr @aspeed_reset_deassert, ptr @aspeed_reset_status }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not register reset controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no match data for platform\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@aspeed_clk_data = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"sd_extclk_gate\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hpll\00", align 1
@scu_base = internal unnamed_addr global ptr null, align 4
@aspeed_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"sd_extclk\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-scu\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"mac12rclk\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"mac1rclk\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"mac2rclk\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"lhclk\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"bclk\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"fixed-24m\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"eclk-mux\00", align 1
@eclk_parent_names = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.7, ptr @.str.20], align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"eclk\00", align 1
@aspeed_gates = internal unnamed_addr constant [24 x %struct.aspeed_gate_data] [%struct.aspeed_gate_data { i8 0, i8 6, ptr @.str.21, ptr @.str.19, i32 0 }, %struct.aspeed_gate_data { i8 1, i8 7, ptr @.str.22, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 2, i8 -1, ptr @.str.23, ptr @.str.5, i32 2048 }, %struct.aspeed_gate_data { i8 3, i8 -1, ptr @.str.24, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 4, i8 8, ptr @.str.25, ptr @.str.15, i32 2048 }, %struct.aspeed_gate_data { i8 5, i8 -1, ptr @.str.26, ptr null, i32 2048 }, %struct.aspeed_gate_data { i8 6, i8 -1, ptr @.str.27, ptr @.str.17, i32 2048 }, %struct.aspeed_gate_data { i8 7, i8 3, ptr @.str.28, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 8, i8 5, ptr @.str.29, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 9, i8 15, ptr @.str.30, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 10, i8 13, ptr @.str.31, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 13, i8 4, ptr @.str.32, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 14, i8 14, ptr @.str.33, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 15, i8 -1, ptr @.str.34, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 16, i8 -1, ptr @.str.35, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 17, i8 -1, ptr @.str.36, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 19, i8 -1, ptr @.str.37, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 20, i8 11, ptr @.str.38, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 21, i8 12, ptr @.str.39, ptr @.str.9, i32 0 }, %struct.aspeed_gate_data { i8 24, i8 -1, ptr @.str.40, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 25, i8 -1, ptr @.str.41, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 26, i8 -1, ptr @.str.42, ptr @.str.4, i32 0 }, %struct.aspeed_gate_data { i8 27, i8 16, ptr @.str.43, ptr null, i32 0 }, %struct.aspeed_gate_data { i8 28, i8 -1, ptr @.str.44, ptr @.str.14, i32 0 }], align 4
@aspeed_resets = internal unnamed_addr constant [10 x i8] c"\19\18\17\16\12\09\0A\02\01%", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"eclk-gate\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gclk-gate\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"mclk-gate\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"vclk-gate\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"bclk-gate\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"dclk-gate\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"refclk-gate\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"usb-port2-gate\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"lclk-gate\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"usb-uhci-gate\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"d1clk-gate\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"yclk-gate\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"usb-port1-gate\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"uart1clk-gate\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"uart2clk-gate\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"uart5clk-gate\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"espiclk-gate\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"mac1clk-gate\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"mac2clk-gate\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"rsaclk-gate\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"uart3clk-gate\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"uart4clk-gate\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"sdclk-gate\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"lhclk-gate\00", align 1
@aspeed_clk_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @aspeed_clk_enable, ptr @aspeed_clk_disable, ptr @aspeed_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ast2400_data = internal constant %struct.aspeed_clk_soc_data { ptr @ast2400_div_table, ptr @ast2400_div_table, ptr @ast2400_div_table, ptr @aspeed_ast2400_calc_pll }, align 4
@ast2500_data = internal constant %struct.aspeed_clk_soc_data { ptr @ast2500_div_table, ptr @ast2500_eclk_div_table, ptr @ast2500_mac_div_table, ptr @aspeed_ast2500_calc_pll }, align 4
@ast2400_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@ast2500_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table { i32 2, i32 12 }, %struct.clk_div_table { i32 3, i32 16 }, %struct.clk_div_table { i32 4, i32 20 }, %struct.clk_div_table { i32 5, i32 24 }, %struct.clk_div_table { i32 6, i32 28 }, %struct.clk_div_table { i32 7, i32 32 }, %struct.clk_div_table zeroinitializer], align 4
@ast2500_eclk_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@ast2500_mac_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [32 x i8] c"\013clk-aspeed: no syscon regmap\0A\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"\013clk-aspeed: failed to read strapping register\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"aspeed,ast2400-scu\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"\013clk-aspeed: unknown platform, failed to add clocks\0A\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"\013clk-aspeed: failed to add DT provider: %d\0A\00", align 1
@__const.aspeed_ast2400_cc.hpll_rates = private unnamed_addr constant [2 x [4 x i16]] [[4 x i16] [i16 384, i16 360, i16 336, i16 408], [4 x i16] [i16 400, i16 375, i16 350, i16 425]], align 2
@.str.50 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"drivers/clk/clk-aspeed.c\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"strapping is zero: cannot determine ahb clock\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_clk_aspeed__166_581_aspeed_clk_driver_init6, ptr @__of_table_aspeed_cc_g4, ptr @__of_table_aspeed_cc_g5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aspeed_cc_g5_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #7
  tail call fastcc void @aspeed_cc_init(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aspeed_cc_g4_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #7
  tail call fastcc void @aspeed_cc_init(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_clk_probe(ptr noundef %0) #2 {
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
  br label %176

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %176, label %13

13:                                               ; preds = %10
  store ptr %6, ptr %11, align 4
  %14 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1, i32 8
  store i32 10, ptr %16, align 4
  store ptr @aspeed_reset_ops, ptr %14, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.aspeed_reset, ptr %11, i32 0, i32 1, i32 5
  store ptr %17, ptr %18, align 4
  %19 = tail call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef %14) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %176

22:                                               ; preds = %13
  %23 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %176

26:                                               ; preds = %22
  %27 = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %2) #7
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, 4096
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 24000000, i32 1846153
  %32 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %31, i32 noundef 0, i32 noundef 0) #7
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = ptrtoint ptr %32 to i32
  br label %176

36:                                               ; preds = %26
  %37 = load ptr, ptr @aspeed_clk_data, align 4
  %38 = getelementptr %struct.clk_hw_onecell_data, ptr %37, i32 28
  store ptr %32, ptr %38, align 4
  %39 = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %2) #7
  %40 = getelementptr inbounds %struct.aspeed_clk_soc_data, ptr %23, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %2, align 4
  %43 = call ptr %41(ptr noundef nonnull @.str.5, i32 noundef %42) #7
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = ptrtoint ptr %43 to i32
  br label %176

47:                                               ; preds = %36
  %48 = load ptr, ptr @aspeed_clk_data, align 4
  %49 = getelementptr %struct.clk_hw_onecell_data, ptr %48, i32 35
  store ptr %43, ptr %49, align 4
  %50 = load ptr, ptr @scu_base, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %51, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_clk_lock) #7
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = ptrtoint ptr %52 to i32
  br label %176

56:                                               ; preds = %47
  %57 = load ptr, ptr @scu_base, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  %59 = load ptr, ptr %23, align 4
  %60 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %58, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %59, ptr noundef nonnull @aspeed_clk_lock) #7
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = ptrtoint ptr %60 to i32
  br label %176

64:                                               ; preds = %56
  %65 = load ptr, ptr @aspeed_clk_data, align 4
  %66 = getelementptr %struct.clk_hw_onecell_data, ptr %65, i32 29
  store ptr %60, ptr %66, align 4
  %67 = load ptr, ptr @scu_base, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  %69 = getelementptr inbounds %struct.aspeed_clk_soc_data, ptr %23, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %68, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %70, ptr noundef nonnull @aspeed_clk_lock) #7
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = ptrtoint ptr %71 to i32
  br label %176

75:                                               ; preds = %64
  %76 = load ptr, ptr @aspeed_clk_data, align 4
  %77 = getelementptr %struct.clk_hw_onecell_data, ptr %76, i32 33
  store ptr %71, ptr %77, align 4
  %78 = load ptr, ptr %4, align 8
  %79 = call i32 @of_device_is_compatible(ptr noundef %78, ptr noundef nonnull @.str.10) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %75
  %82 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 50000000, i32 noundef 0, i32 noundef 0) #7
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = ptrtoint ptr %82 to i32
  br label %176

86:                                               ; preds = %81
  %87 = load ptr, ptr @scu_base, align 4
  %88 = getelementptr i8, ptr %87, i32 72
  %89 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %88, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_clk_lock) #7
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = ptrtoint ptr %89 to i32
  br label %176

93:                                               ; preds = %86
  %94 = load ptr, ptr @aspeed_clk_data, align 4
  %95 = getelementptr %struct.clk_hw_onecell_data, ptr %94, i32 37
  store ptr %89, ptr %95, align 4
  %96 = load ptr, ptr @scu_base, align 4
  %97 = getelementptr i8, ptr %96, i32 72
  %98 = call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %97, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @aspeed_clk_lock) #7
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = ptrtoint ptr %98 to i32
  br label %176

102:                                              ; preds = %93
  %103 = load ptr, ptr @aspeed_clk_data, align 4
  %104 = getelementptr %struct.clk_hw_onecell_data, ptr %103, i32 38
  store ptr %98, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %75
  %106 = load ptr, ptr @scu_base, align 4
  %107 = getelementptr i8, ptr %106, i32 8
  %108 = load ptr, ptr %23, align 4
  %109 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %107, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %108, ptr noundef nonnull @aspeed_clk_lock) #7
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = ptrtoint ptr %109 to i32
  br label %176

113:                                              ; preds = %105
  %114 = load ptr, ptr @aspeed_clk_data, align 4
  %115 = getelementptr %struct.clk_hw_onecell_data, ptr %114, i32 32
  store ptr %109, ptr %115, align 4
  %116 = load ptr, ptr @scu_base, align 4
  %117 = getelementptr i8, ptr %116, i32 216
  %118 = load ptr, ptr %23, align 4
  %119 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %117, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %118, ptr noundef nonnull @aspeed_clk_lock) #7
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = ptrtoint ptr %119 to i32
  br label %176

123:                                              ; preds = %113
  %124 = load ptr, ptr @aspeed_clk_data, align 4
  %125 = getelementptr %struct.clk_hw_onecell_data, ptr %124, i32 34
  store ptr %119, ptr %125, align 4
  %126 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24000000, i32 noundef 0, i32 noundef 0) #7
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = ptrtoint ptr %126 to i32
  br label %176

130:                                              ; preds = %123
  %131 = load ptr, ptr @aspeed_clk_data, align 4
  %132 = getelementptr %struct.clk_hw_onecell_data, ptr %131, i32 36
  store ptr %126, ptr %132, align 4
  %133 = load ptr, ptr @scu_base, align 4
  %134 = getelementptr i8, ptr %133, i32 8
  %135 = call ptr @__clk_hw_register_mux(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 3, ptr noundef nonnull @eclk_parent_names, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %134, i8 noundef zeroext 2, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @aspeed_clk_lock) #7
  %136 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = ptrtoint ptr %135 to i32
  br label %176

139:                                              ; preds = %130
  %140 = load ptr, ptr @aspeed_clk_data, align 4
  %141 = getelementptr %struct.clk_hw_onecell_data, ptr %140, i32 31
  store ptr %135, ptr %141, align 4
  %142 = load ptr, ptr @scu_base, align 4
  %143 = getelementptr i8, ptr %142, i32 8
  %144 = getelementptr inbounds %struct.aspeed_clk_soc_data, ptr %23, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %143, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef %145, ptr noundef nonnull @aspeed_clk_lock) #7
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = ptrtoint ptr %146 to i32
  br label %176

150:                                              ; preds = %139
  %151 = load ptr, ptr @aspeed_clk_data, align 4
  %152 = getelementptr %struct.clk_hw_onecell_data, ptr %151, i32 30
  store ptr %146, ptr %152, align 4
  br label %153

153:                                              ; preds = %171, %150
  %154 = phi i32 [ 0, %150 ], [ %174, %171 ]
  %155 = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %154
  %156 = load i8, ptr %155, align 4
  %157 = icmp ne i8 %156, 14
  %158 = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %154, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %154, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %154, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr [24 x %struct.aspeed_gate_data], ptr @aspeed_gates, i32 0, i32 %154, i32 1
  %165 = load i8, ptr %164, align 1
  %166 = zext i1 %157 to i8
  %167 = call fastcc ptr @aspeed_clk_hw_register_gate(ptr noundef %3, ptr noundef %159, ptr noundef %161, i32 noundef %163, ptr noundef %6, i8 noundef zeroext %156, i8 noundef zeroext %165, i8 noundef zeroext %166)
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %171

169:                                              ; preds = %153
  %170 = ptrtoint ptr %167 to i32
  br label %176

171:                                              ; preds = %153
  %172 = load ptr, ptr @aspeed_clk_data, align 4
  %173 = getelementptr %struct.clk_hw_onecell_data, ptr %172, i32 0, i32 1, i32 %154
  store ptr %167, ptr %173, align 4
  %174 = add nuw nsw i32 %154, 1
  %175 = icmp eq i32 %174, 24
  br i1 %175, label %176, label %153

176:                                              ; preds = %171, %169, %148, %137, %128, %121, %111, %100, %91, %84, %73, %62, %54, %45, %34, %25, %21, %10, %8
  %177 = phi i32 [ %9, %8 ], [ %19, %21 ], [ %35, %34 ], [ %46, %45 ], [ %55, %54 ], [ %63, %62 ], [ %74, %73 ], [ %85, %84 ], [ %92, %91 ], [ %101, %100 ], [ %112, %111 ], [ %122, %121 ], [ %129, %128 ], [ %138, %137 ], [ %149, %148 ], [ -22, %25 ], [ -12, %10 ], [ %170, %169 ], [ 0, %171 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %177
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
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @aspeed_clk_hw_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #2 {
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
  store ptr @aspeed_clk_gate_ops, ptr %16, align 4
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
  store ptr @aspeed_clk_lock, ptr %28, align 4
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
define internal i32 @aspeed_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr [10 x i8], ptr @aspeed_resets, i32 0, i32 %1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %1, 9
  %7 = add nsw i32 %5, -32
  %8 = select i1 %6, i32 212, i32 4
  %9 = select i1 %6, i32 %7, i32 %5
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = shl nuw i32 1, %9
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %8, i32 noundef %12, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr [10 x i8], ptr @aspeed_resets, i32 0, i32 %1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %1, 9
  %7 = add nsw i32 %5, -32
  %8 = select i1 %6, i32 212, i32 4
  %9 = select i1 %6, i32 %7, i32 %5
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = shl nuw i32 1, %9
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %8, i32 noundef %12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr [10 x i8], ptr @aspeed_resets, i32 0, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = icmp eq i32 %1, 9
  %9 = add nsw i32 %7, -32
  %10 = select i1 %8, i32 212, i32 4
  %11 = select i1 %8, i32 %9, i32 %7
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef %10, ptr noundef nonnull %3) #7
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %3, align 4
  %16 = lshr i32 %15, %11
  %17 = and i32 %16, 1
  %18 = select i1 %14, i32 %17, i32 %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %18
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
define internal i32 @aspeed_clk_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %14 = load i8, ptr %3, align 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = load i8, ptr %7, align 1
  %18 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 %16, i32 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %23 = icmp sgt i8 %17, -1
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = zext i8 %17 to i32
  %26 = shl nuw i32 1, %25
  %27 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 4, ptr noundef nonnull %2) #7
  %30 = load i32, ptr %2, align 4
  %31 = and i32 %30, %26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %41

34:                                               ; preds = %24, %1
  %35 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @regmap_read(ptr noundef %36, i32 noundef 12, ptr noundef nonnull %2) #7
  %38 = load i32, ptr %2, align 4
  %39 = and i32 %38, %16
  %40 = icmp eq i32 %39, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %40, label %72, label %41

41:                                               ; preds = %34, %33
  %42 = load i8, ptr %7, align 1
  %43 = icmp sgt i8 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 4, i32 noundef %10, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 21474800) #7
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i8, ptr %18, align 2
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 %6, i32 0
  %54 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 12, i32 noundef %6, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = load i8, ptr %7, align 1
  %58 = icmp sgt i8 %57, -1
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #7
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #7
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #7
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #7
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #7
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #7
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #7
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #7
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #7
  %70 = load ptr, ptr %54, align 4
  %71 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 4, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %72

72:                                               ; preds = %59, %49, %34
  %73 = load ptr, ptr %11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_clk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 0, i32 %5
  %14 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 12, i32 noundef %5, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_clk_is_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 %6, i32 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %14 = icmp sgt i8 %8, -1
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = zext i8 %8 to i32
  %17 = shl nuw i32 1, %16
  %18 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 4, ptr noundef nonnull %2) #7
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, %17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15, %1
  %25 = getelementptr inbounds %struct.aspeed_clk_gate, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 12, ptr noundef nonnull %2) #7
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, %6
  %30 = icmp eq i32 %29, %13
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %24, %15
  %33 = phi i32 [ %31, %24 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @aspeed_ast2400_calc_pll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 131072
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = lshr i32 %1, 5
  %7 = and i32 %6, 63
  %8 = shl i32 %1, 27
  %9 = ashr i32 %8, 31
  %10 = and i32 %1, 15
  %11 = add nsw i32 %9, 2
  %12 = add nuw nsw i32 %7, 2
  %13 = mul nuw nsw i32 %11, %12
  %14 = add nuw nsw i32 %10, 1
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %14, %5 ], [ 1, %2 ]
  %17 = phi i32 [ %13, %5 ], [ 1, %2 ]
  %18 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %17, i32 noundef %16) #7
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @aspeed_ast2500_calc_pll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 1048576
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = lshr i32 %1, 13
  %7 = and i32 %6, 63
  %8 = trunc i32 %1 to i16
  %9 = lshr i16 %8, 5
  %10 = and i16 %9, 255
  %11 = add nuw nsw i16 %10, 1
  %12 = and i16 %8, 31
  %13 = add nuw nsw i16 %12, 1
  %14 = udiv i16 %11, %13
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %7, 1
  br label %17

17:                                               ; preds = %5, %2
  %18 = phi i32 [ %16, %5 ], [ 1, %2 ]
  %19 = phi i32 [ %15, %5 ], [ 1, %2 ]
  %20 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %19, i32 noundef %18) #7
  ret ptr %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aspeed_cc_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %3, ptr @scu_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 156) #10
  store ptr %7, ptr @aspeed_clk_data, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %12, %9 ], [ 0, %5 ]
  %11 = getelementptr %struct.clk_hw_onecell_data, ptr %7, i32 0, i32 1, i32 %10
  store ptr inttoptr (i32 -517 to ptr), ptr %11, align 4
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 38
  br i1 %13, label %14, label %9

14:                                               ; preds = %9
  %15 = tail call ptr @syscon_node_to_regmap(ptr noundef %0) #7
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %40

19:                                               ; preds = %14
  %20 = call i32 @regmap_read(ptr noundef %15, i32 noundef 112, ptr noundef nonnull %2) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %40

24:                                               ; preds = %19
  %25 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.47) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call fastcc void @aspeed_ast2400_cc(ptr noundef %15) #8
  br label %34

28:                                               ; preds = %24
  %29 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.10) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call fastcc void @aspeed_ast2500_cc(ptr noundef %15) #8
  br label %34

32:                                               ; preds = %28
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %34

34:                                               ; preds = %32, %31, %27
  %35 = load ptr, ptr @aspeed_clk_data, align 4
  store i32 38, ptr %35, align 4
  %36 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %36) #9
  br label %40

40:                                               ; preds = %38, %34, %22, %17, %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aspeed_ast2400_cc(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @regmap_read(ptr noundef %0, i32 noundef 112, ptr noundef nonnull %2) #7
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 3
  %7 = and i32 %4, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr [2 x [4 x i16]], ptr @__const.aspeed_ast2400_cc.hpll_rates, i32 0, i32 1, i32 %6
  br label %16

11:                                               ; preds = %1
  %12 = and i32 %4, 262144
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr [4 x i16], ptr @__const.aspeed_ast2400_cc.hpll_rates, i32 0, i32 %6
  %15 = select i1 %13, i32 24000000, i32 48000000
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ 25000000, %9 ], [ %15, %11 ]
  %18 = phi ptr [ %10, %9 ], [ %14, %11 ]
  %19 = load i16, ptr %18, align 2
  %20 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %17, i32 noundef 0, i32 noundef 0) #7
  %21 = call i32 @regmap_read(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %2) #7
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = call ptr @aspeed_ast2400_calc_pll(ptr noundef nonnull @.str.7, i32 noundef %22)
  br label %31

27:                                               ; preds = %16
  %28 = zext i16 %19 to i32
  %29 = mul i32 %28, 1000000
  %30 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %29, i32 noundef 0, i32 noundef 0) #7
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi ptr [ %26, %25 ], [ %30, %27 ]
  %33 = load ptr, ptr @aspeed_clk_data, align 4
  %34 = getelementptr %struct.clk_hw_onecell_data, ptr %33, i32 25
  store ptr %32, ptr %34, align 4
  %35 = call i32 @regmap_read(ptr noundef %0, i32 noundef 112, ptr noundef nonnull %2) #7
  %36 = load i32, ptr %2, align 4
  %37 = lshr i32 %36, 10
  %38 = and i32 %37, 3
  store i32 %38, ptr %2, align 4
  %39 = add nuw nsw i32 %38, 1
  %40 = icmp eq i32 %39, 3
  %41 = icmp eq i32 %39, 4
  %42 = select i1 %41, i32 3, i32 %39
  %43 = select i1 %40, i32 4, i32 %42
  %44 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef %43) #7
  %45 = load ptr, ptr @aspeed_clk_data, align 4
  %46 = getelementptr %struct.clk_hw_onecell_data, ptr %45, i32 26
  store ptr %44, ptr %46, align 4
  %47 = load ptr, ptr @scu_base, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  %49 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %48, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ast2400_div_table, ptr noundef nonnull @aspeed_clk_lock) #7
  %50 = load ptr, ptr @aspeed_clk_data, align 4
  %51 = getelementptr %struct.clk_hw_onecell_data, ptr %50, i32 27
  store ptr %49, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aspeed_ast2500_cc(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @regmap_read(ptr noundef %0, i32 noundef 112, ptr noundef nonnull %2) #7
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 24000000, i32 25000000
  %8 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %7, i32 noundef 0, i32 noundef 0) #7
  %9 = call i32 @regmap_read(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %2) #7
  %10 = load i32, ptr %2, align 4
  %11 = call ptr @aspeed_ast2500_calc_pll(ptr noundef nonnull @.str.7, i32 noundef %10)
  %12 = load ptr, ptr @aspeed_clk_data, align 4
  %13 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 25
  store ptr %11, ptr %13, align 4
  %14 = call i32 @regmap_read(ptr noundef %0, i32 noundef 112, ptr noundef nonnull %2) #7
  %15 = load i32, ptr %2, align 4
  %16 = lshr i32 %15, 9
  %17 = and i32 %16, 7
  store i32 %17, ptr %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 675, i32 noundef 9, ptr noundef nonnull @.str.53) #7
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i32 [ %20, %19 ], [ %17, %1 ]
  %23 = shl i32 %22, 1
  %24 = add i32 %23, 2
  %25 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef %24) #7
  %26 = load ptr, ptr @aspeed_clk_data, align 4
  %27 = getelementptr %struct.clk_hw_onecell_data, ptr %26, i32 26
  store ptr %25, ptr %27, align 4
  %28 = call i32 @regmap_read(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %2) #7
  %29 = load i32, ptr %2, align 4
  %30 = lshr i32 %29, 23
  %31 = and i32 %30, 7
  store i32 %31, ptr %2, align 4
  %32 = shl nuw nsw i32 %31, 2
  %33 = add nuw nsw i32 %32, 4
  %34 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef %33) #7
  %35 = load ptr, ptr @aspeed_clk_data, align 4
  %36 = getelementptr %struct.clk_hw_onecell_data, ptr %35, i32 27
  store ptr %34, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
!9 = !{!"branch_weights", i32 1, i32 2000}
