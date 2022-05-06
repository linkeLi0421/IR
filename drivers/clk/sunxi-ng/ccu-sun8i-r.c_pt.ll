; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun8i-r.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-r.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
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

@__initcall__kmod_sun8i_r_ccu__162_298_sun8i_r_ccu_driver_init6 = internal global ptr @sun8i_r_ccu_driver_init, section ".initcall6.init", align 4
@sun8i_r_ccu_driver = internal global %struct.platform_driver { ptr @sun8i_r_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun8i_r_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun8i_r_ccu_driver_exit = internal global ptr @sun8i_r_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [32 x i8] c"sun8i_r_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [50 x i8] c"sun8i_r_ccu.file=drivers/clk/sunxi-ng/sun8i-r-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [24 x i8] c"sun8i_r_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sun8i-r-ccu\00", align 1
@sun8i_r_ccu_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_r_ccu_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_r_ccu_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_r_ccu_desc }, %struct.of_device_id zeroinitializer], align 4
@sun8i_a83t_r_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_a83t_r_ccu_clks, i32 10, ptr @sun8i_a83t_r_hw_clks, ptr @sun8i_a83t_r_ccu_resets, i32 6 }, align 4
@sun8i_h3_r_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_h3_r_ccu_clks, i32 9, ptr @sun8i_h3_r_hw_clks, ptr @sun8i_h3_r_ccu_resets, i32 6 }, align 4
@sun50i_a64_r_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun50i_a64_r_ccu_clks, i32 10, ptr @sun50i_a64_r_hw_clks, ptr @sun50i_a64_r_ccu_resets, i32 6 }, align 4
@sun8i_a83t_r_ccu_clks = internal global [10 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 4), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 4), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 4), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 4), ptr getelementptr (i8, ptr @a83t_ir_clk, i64 72)], align 4
@sun8i_a83t_r_ccu_resets = internal global [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 176, i32 2 }, %struct.ccu_reset_map { i16 176, i32 4 }, %struct.ccu_reset_map { i16 176, i32 8 }, %struct.ccu_reset_map { i16 176, i32 16 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 64 }], align 4
@ar100_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr @ar100_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } }, i32 0 }, align 4
@apb0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } }, i32 0 }, align 4
@apb0_pio_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } } }, align 4
@apb0_ir_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 } } }, align 4
@apb0_timer_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@apb0_rsb_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, align 4
@apb0_uart_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, align 4
@apb0_i2c_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@apb0_twd_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, align 4
@a83t_ir_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr @a83t_ir_predivs, i8 1, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } } }, align 4
@ar100_predivs = internal constant [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 2, i8 8, i8 5 }], align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ar100\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@ar100_parents = internal constant [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }], align 4
@.compoundliteral = internal global %struct.clk_init_data { ptr @.str.1, ptr @ccu_div_ops, ptr null, ptr @ar100_parents, ptr null, i8 4, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"losc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"pll-periph\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"iosc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"apb0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ahb0\00", align 1
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.6, ptr @ccu_div_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"apb0-pio\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@apb0_gate_parent = internal global [1 x ptr] [ptr getelementptr (i8, ptr @apb0_clk, i64 68)], align 4
@.compoundliteral.11 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"apb0-ir\00", align 1
@.compoundliteral.13 = internal global %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"apb0-timer\00", align 1
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.14, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"apb0-rsb\00", align 1
@.compoundliteral.17 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"apb0-uart\00", align 1
@.compoundliteral.19 = internal global %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"apb0-i2c\00", align 1
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"apb0-twd\00", align 1
@.compoundliteral.23 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_gate_ops, ptr null, ptr null, ptr @apb0_gate_parent, i8 1, i32 0 }, align 4
@a83t_ir_predivs = internal constant [1 x %struct.ccu_mux_fixed_prediv] [%struct.ccu_mux_fixed_prediv { i8 0, i16 16 }], align 2
@.str.24 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@a83t_r_mod0_parents = internal constant [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }], align 4
@.compoundliteral.25 = internal global %struct.clk_init_data { ptr @.str.24, ptr @ccu_mp_ops, ptr null, ptr @a83t_r_mod0_parents, ptr null, i8 2, i32 0 }, align 4
@ahb0_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, i32 1, i32 1 }, align 4
@sun8i_a83t_r_hw_clks = internal global { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @ahb0_clk, ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 24), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 24), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 24), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 24), ptr getelementptr (i8, ptr @a83t_ir_clk, i64 92)] }, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.27 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68)], align 4
@.compoundliteral.28 = internal global %struct.clk_init_data { ptr @.str.7, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.27, i8 1, i32 0 }, align 4
@sun8i_h3_r_ccu_clks = internal global [9 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 4), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 4), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 4), ptr getelementptr (i8, ptr @ir_clk, i64 72)], align 4
@sun8i_h3_r_ccu_resets = internal global [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 176, i32 2 }, %struct.ccu_reset_map { i16 176, i32 4 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 16 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 64 }], align 4
@ir_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, align 4
@r_mod0_default_parents = internal constant [2 x ptr] [ptr @.str.30, ptr @.str.31], align 4
@.compoundliteral.29 = internal global %struct.clk_init_data { ptr @.str.24, ptr @ccu_mp_ops, ptr @r_mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@sun8i_h3_r_hw_clks = internal global { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @ahb0_clk, ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_uart_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 24), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 24), ptr getelementptr (i8, ptr @ir_clk, i64 92)] }, align 4
@sun50i_a64_r_ccu_clks = internal global [10 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 4), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 4), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 4), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 4), ptr getelementptr (i8, ptr @ir_clk, i64 72)], align 4
@sun50i_a64_r_ccu_resets = internal global [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 176, i32 2 }, %struct.ccu_reset_map { i16 176, i32 4 }, %struct.ccu_reset_map { i16 176, i32 8 }, %struct.ccu_reset_map { i16 176, i32 16 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 176, i32 64 }], align 4
@sun50i_a64_r_hw_clks = internal global { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @ar100_clk, i64 68), ptr @ahb0_clk, ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_timer_clk, i64 24), ptr getelementptr (i8, ptr @apb0_rsb_clk, i64 24), ptr getelementptr (i8, ptr @apb0_uart_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2c_clk, i64 24), ptr getelementptr (i8, ptr @apb0_twd_clk, i64 24), ptr getelementptr (i8, ptr @ir_clk, i64 92)] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun8i_r_ccu_driver_exit, ptr @__initcall__kmod_sun8i_r_ccu__162_298_sun8i_r_ccu_driver_init6, ptr @sun8i_r_ccu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_r_ccu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_r_ccu_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_r_ccu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_r_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_r_ccu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %12

10:                                               ; preds = %5
  %11 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %2, ptr noundef %6, ptr noundef nonnull %3) #3
  br label %12

12:                                               ; preds = %10, %8, %1
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
