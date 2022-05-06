; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun8i-de2.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-de2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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

@__initcall__kmod_sun8i_de2_ccu__162_397_sunxi_de2_clk_driver_init6 = internal global ptr @sunxi_de2_clk_driver_init, section ".initcall6.init", align 4
@sunxi_de2_clk_driver = internal global %struct.platform_driver { ptr @sunxi_de2_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_de2_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sunxi_de2_clk_driver_exit = internal global ptr @sunxi_de2_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [34 x i8] c"sun8i_de2_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [54 x i8] c"sun8i_de2_ccu.file=drivers/clk/sunxi-ng/sun8i-de2-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [26 x i8] c"sun8i_de2_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"sunxi-de2-clks\00", align 1
@sunxi_de2_clk_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-de3-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_de2_clk_desc }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Couldn't get bus clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Couldn't get mod clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Couldn't get reset control: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Couldn't enable bus clk: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't enable mod clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Couldn't deassert reset control: %d\0A\00", align 1
@sun8i_a83t_de2_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_a83t_de2_clks, i32 12, ptr @sun8i_a83t_de2_hw_clks, ptr @sun8i_a83t_de2_resets, i32 4 }, align 4
@sun8i_h3_de2_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_h3_de2_clks, i32 9, ptr @sun8i_h3_de2_hw_clks, ptr @sun8i_h3_de2_resets, i32 3 }, align 4
@sun8i_r40_de2_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun50i_a64_de2_clks, i32 12, ptr @sun50i_a64_de2_hw_clks, ptr @sun8i_a83t_de2_resets, i32 4 }, align 4
@sun8i_v3s_de2_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_v3s_de2_clks, i32 6, ptr @sun8i_v3s_de2_hw_clks, ptr @sun8i_a83t_de2_resets, i32 4 }, align 4
@sun50i_a64_de2_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun50i_a64_de2_clks, i32 12, ptr @sun50i_a64_de2_hw_clks, ptr @sun50i_a64_de2_resets, i32 4 }, align 4
@sun50i_h5_de2_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_h3_de2_clks, i32 9, ptr @sun8i_h3_de2_hw_clks, ptr @sun50i_h5_de2_resets, i32 3 }, align 4
@sun8i_a83t_de2_clks = internal global [12 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @mixer1_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_a83_clk, i64 48), ptr getelementptr (i8, ptr @mixer1_div_a83_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_a83_clk, i64 48), ptr getelementptr (i8, ptr @bus_rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_div_a83_clk, i64 48)], align 4
@sun8i_a83t_de2_resets = internal global [4 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 8, i32 4 }, %struct.ccu_reset_map { i16 8, i32 8 }], align 4
@mixer0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } } }, align 4
@mixer1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@wb_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, align 4
@bus_mixer0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, align 4
@bus_mixer1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 } } }, align 4
@bus_wb_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, align 4
@mixer0_div_a83_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 } }, i32 0 }, align 4
@mixer1_div_a83_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 } }, i32 0 }, align 4
@wb_div_a83_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 } }, i32 0 }, align 4
@bus_rot_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 } } }, align 4
@rot_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 } } }, align 4
@rot_div_a83_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 12, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 } }, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"mixer0\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"mixer0-div\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.11 = internal global %struct.clk_init_data { ptr @.str.9, ptr @ccu_gate_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"mixer1\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mixer1-div\00", align 1
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"wb-div\00", align 1
@.compoundliteral.18 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.19 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr @.compoundliteral.18, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"bus-mixer0\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"bus-de\00", align 1
@.compoundliteral.22 = internal global [1 x ptr] [ptr @.str.21], align 4
@.compoundliteral.23 = internal global %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr @.compoundliteral.22, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"bus-mixer1\00", align 1
@.compoundliteral.25 = internal global [1 x ptr] [ptr @.str.21], align 4
@.compoundliteral.26 = internal global %struct.clk_init_data { ptr @.str.24, ptr @ccu_gate_ops, ptr @.compoundliteral.25, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"bus-wb\00", align 1
@.compoundliteral.28 = internal global [1 x ptr] [ptr @.str.21], align 4
@.compoundliteral.29 = internal global %struct.clk_init_data { ptr @.str.27, ptr @ccu_gate_ops, ptr @.compoundliteral.28, ptr null, ptr null, i8 1, i32 0 }, align 4
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"pll-de\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.30], align 4
@.compoundliteral.32 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_div_ops, ptr @.compoundliteral.31, ptr null, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.33 = internal global [1 x ptr] [ptr @.str.30], align 4
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_div_ops, ptr @.compoundliteral.33, ptr null, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.35 = internal global [1 x ptr] [ptr @.str.30], align 4
@.compoundliteral.36 = internal global %struct.clk_init_data { ptr @.str.17, ptr @ccu_div_ops, ptr @.compoundliteral.35, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"bus-rot\00", align 1
@.compoundliteral.38 = internal global [1 x ptr] [ptr @.str.21], align 4
@.compoundliteral.39 = internal global %struct.clk_init_data { ptr @.str.37, ptr @ccu_gate_ops, ptr @.compoundliteral.38, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"rot\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"rot-div\00", align 1
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.43 = internal global %struct.clk_init_data { ptr @.str.40, ptr @ccu_gate_ops, ptr @.compoundliteral.42, ptr null, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.30], align 4
@.compoundliteral.45 = internal global %struct.clk_init_data { ptr @.str.41, ptr @ccu_div_ops, ptr @.compoundliteral.44, ptr null, ptr null, i8 1, i32 4 }, align 4
@sun8i_a83t_de2_hw_clks = internal global { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 24), ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_a83_clk, i64 68), ptr getelementptr (i8, ptr @mixer1_div_a83_clk, i64 68), ptr getelementptr (i8, ptr @wb_div_a83_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr getelementptr (i8, ptr @mixer1_clk, i64 24), ptr getelementptr (i8, ptr @wb_clk, i64 24), ptr getelementptr (i8, ptr @bus_rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_div_a83_clk, i64 68)] }, align 4
@sun8i_h3_de2_clks = internal global [9 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @mixer1_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 48), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_clk, i64 48)], align 4
@sun8i_h3_de2_resets = internal global [3 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 8, i32 4 }], align 4
@mixer0_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 } }, i32 0 }, align 4
@mixer1_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 } }, i32 0 }, align 4
@wb_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 } }, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.compoundliteral.48 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_div_ops, ptr @.compoundliteral.48, ptr null, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.50 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.51 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_div_ops, ptr @.compoundliteral.50, ptr null, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.52 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.53 = internal global %struct.clk_init_data { ptr @.str.17, ptr @ccu_div_ops, ptr @.compoundliteral.52, ptr null, ptr null, i8 1, i32 4 }, align 4
@sun8i_h3_de2_hw_clks = internal global { i32, [9 x ptr] } { i32 9, [9 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 24), ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 68), ptr getelementptr (i8, ptr @wb_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr getelementptr (i8, ptr @mixer1_clk, i64 24), ptr getelementptr (i8, ptr @wb_clk, i64 24)] }, align 4
@sun50i_a64_de2_clks = internal global [12 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @mixer1_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 48), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_clk, i64 48), ptr getelementptr (i8, ptr @bus_rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_div_clk, i64 48)], align 4
@rot_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 12, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 } }, i32 0 }, align 4
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.56 = internal global %struct.clk_init_data { ptr @.str.41, ptr @ccu_div_ops, ptr @.compoundliteral.55, ptr null, ptr null, i8 1, i32 4 }, align 4
@sun50i_a64_de2_hw_clks = internal global { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 24), ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 68), ptr getelementptr (i8, ptr @wb_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr getelementptr (i8, ptr @mixer1_clk, i64 24), ptr getelementptr (i8, ptr @wb_clk, i64 24), ptr getelementptr (i8, ptr @bus_rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_div_clk, i64 68)] }, align 4
@sun8i_v3s_de2_clks = internal global [6 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_clk, i64 48)], align 4
@sun8i_v3s_de2_hw_clks = internal global { i32, [9 x ptr] } { i32 9, [9 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 68), ptr null, ptr getelementptr (i8, ptr @wb_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @wb_clk, i64 24)] }, align 4
@sun50i_a64_de2_resets = internal global [4 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map { i16 8, i32 2 }, %struct.ccu_reset_map { i16 8, i32 4 }, %struct.ccu_reset_map { i16 8, i32 8 }], align 4
@sun50i_h5_de2_resets = internal global [3 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map { i16 8, i32 2 }, %struct.ccu_reset_map { i16 8, i32 4 }], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sunxi_de2_clk_driver_exit, ptr @__initcall__kmod_sun8i_de2_ccu__162_397_sunxi_de2_clk_driver_init6, ptr @sunxi_de2_clk_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_de2_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_de2_clk_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sunxi_de2_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_de2_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_de2_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %62

10:                                               ; preds = %5
  %11 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = icmp eq ptr %11, inttoptr (i32 -517 to ptr)
  br i1 %14, label %62, label %15

15:                                               ; preds = %13
  %16 = ptrtoint ptr %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %16) #5
  br label %62

17:                                               ; preds = %10
  %18 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, inttoptr (i32 -517 to ptr)
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  %23 = ptrtoint ptr %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %23) #5
  br label %62

24:                                               ; preds = %17
  %25 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, inttoptr (i32 -517 to ptr)
  br i1 %28, label %62, label %29

29:                                               ; preds = %27
  %30 = ptrtoint ptr %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %30) #5
  br label %62

31:                                               ; preds = %24
  %32 = tail call i32 @clk_prepare(ptr noundef %11) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = tail call i32 @clk_enable(ptr noundef %11) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %11) #4
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %35, %37 ], [ %32, %31 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %39) #5
  br label %62

40:                                               ; preds = %34
  %41 = tail call i32 @clk_prepare(ptr noundef %18) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = tail call i32 @clk_enable(ptr noundef %18) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  tail call void @clk_unprepare(ptr noundef %18) #4
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32 [ %44, %46 ], [ %41, %40 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %48) #5
  br label %60

49:                                               ; preds = %43
  %50 = tail call i32 @reset_control_deassert(ptr noundef %25) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %50) #5
  br label %58

53:                                               ; preds = %49
  %54 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %2, ptr noundef %6, ptr noundef nonnull %3) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @reset_control_assert(ptr noundef %25) #4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %50, %52 ], [ %54, %56 ]
  tail call void @clk_disable(ptr noundef %18) #4
  tail call void @clk_unprepare(ptr noundef %18) #4
  br label %60

60:                                               ; preds = %58, %47
  %61 = phi i32 [ %48, %47 ], [ %59, %58 ]
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  br label %62

62:                                               ; preds = %60, %53, %38, %29, %27, %22, %20, %15, %13, %8, %1
  %63 = phi i32 [ %9, %8 ], [ %39, %38 ], [ %61, %60 ], [ -22, %1 ], [ %16, %15 ], [ -517, %13 ], [ %23, %22 ], [ -517, %20 ], [ %30, %29 ], [ -517, %27 ], [ 0, %53 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
