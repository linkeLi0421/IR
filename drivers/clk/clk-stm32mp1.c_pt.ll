; ModuleID = '/llk/IR/drivers/clk/clk-stm32mp1.c_pt.bc'
source_filename = "../drivers/clk/clk-stm32mp1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.stm32_rcc_match_data = type { ptr, i32, i32, i32, ptr }
%struct.clock_config = type { i32, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.gate_cfg = type { i32, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_gate_cfg = type { ptr, ptr, ptr }
%struct.div_cfg = type { i32, i8, i8, i8, ptr }
%struct.stm32_div_cfg = type { ptr, ptr }
%struct.stm32_composite_cfg = type { ptr, ptr, ptr }
%struct.fixed_factor_cfg = type { i32, i32 }
%struct.stm32_pll_cfg = type { i32, i32 }
%struct.mux_cfg = type { i32, i8, i8, i8, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.stm32_mux_cfg = type { ptr, ptr, ptr }
%struct.stm32_cktim_cfg = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stm32_mgate = type { i8, i32 }
%struct.stm32_mmux = type { i8, [2 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_reset_data = type { %struct.spinlock, %struct.reset_controller_dev, ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.stm32_clk_mgate = type { %struct.clk_gate, ptr, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.stm32_clk_mmux = type { %struct.clk_mux, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.stm32_pll_obj = type { ptr, ptr, %struct.clk_hw, %struct.clk_mux }
%struct.timer_cker = type { ptr, ptr, ptr, %struct.clk_hw }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_clk_stm32mp1__166_2429_stm32mp1_clocks_init1 = internal global ptr @stm32mp1_clocks_init, section ".initcall1.init", align 4
@stm32mp1_rcc_clocks_driver = internal global %struct.platform_driver { ptr @stm32mp1_rcc_clocks_probe, ptr @stm32mp1_rcc_clocks_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32mp1_match_data, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"stm32mp1_rcc\00", align 1
@stm32mp1_match_data = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-rcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-rcc-secure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_data_secure }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hsi\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"hse\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lsi\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lse\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\013%pOFn: unable to map resource\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"match data not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\013stm32mp1 reset failed to initialize\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\013stm32mp1 clock failed to initialize\0A\00", align 1
@stm32_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @stm32_reset_assert, ptr @stm32_reset_deassert, ptr @stm32_reset_status }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rlock = internal global %struct.spinlock zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't register clk %s: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\013Unable to register %s\0A\00", align 1
@stm32mp1_data = internal global %struct.stm32_rcc_match_data { ptr @stm32mp1_clock_cfg, i32 210, i32 232, i32 4, ptr null }, align 4
@stm32mp1_data_secure = internal global %struct.stm32_rcc_match_data { ptr @stm32mp1_clock_cfg, i32 210, i32 232, i32 4, ptr @stm32_check_security }, align 4
@stm32mp1_clock_cfg = internal constant [210 x %struct.clock_config] [%struct.clock_config { i32 0, ptr @.str.12, ptr @.str.13, ptr null, i32 0, i32 0, ptr @.compoundliteral.14, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 1, ptr @.str.15, ptr @.str.16, ptr null, i32 0, i32 2048, ptr @.compoundliteral.18, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 4, ptr @.str.19, ptr null, ptr @.compoundliteral.21, i32 1, i32 0, ptr @.compoundliteral.26, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 2, ptr @.str.27, ptr @.str.28, ptr null, i32 0, i32 0, ptr @.compoundliteral.29, ptr @_clk_hw_register_gate }, %struct.clock_config { i32 3, ptr @.str.30, ptr @.str.31, ptr null, i32 0, i32 0, ptr @.compoundliteral.32, ptr @_clk_hw_register_gate }, %struct.clock_config { i32 5, ptr @.str.33, ptr @.str.12, ptr null, i32 0, i32 0, ptr @.compoundliteral.34, ptr @_clk_hw_register_fixed_factor }, %struct.clock_config { i32 176, ptr @.str.35, ptr null, ptr @ref12_parents, i32 2, i32 8, ptr @.compoundliteral.36, ptr @_clk_register_pll }, %struct.clock_config { i32 177, ptr @.str.37, ptr null, ptr @ref12_parents, i32 2, i32 8, ptr @.compoundliteral.38, ptr @_clk_register_pll }, %struct.clock_config { i32 178, ptr @.str.39, ptr null, ptr @ref3_parents, i32 3, i32 8, ptr @.compoundliteral.40, ptr @_clk_register_pll }, %struct.clock_config { i32 179, ptr @.str.41, ptr null, ptr @ref4_parents, i32 3, i32 8, ptr @.compoundliteral.42, ptr @_clk_register_pll }, %struct.clock_config { i32 180, ptr @.str.43, ptr null, ptr @.compoundliteral.44, i32 1, i32 0, ptr @.compoundliteral.49, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 183, ptr @.str.50, ptr null, ptr @.compoundliteral.51, i32 1, i32 0, ptr @.compoundliteral.56, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 184, ptr @.str.57, ptr null, ptr @.compoundliteral.58, i32 1, i32 0, ptr @.compoundliteral.63, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 185, ptr @.str.64, ptr null, ptr @.compoundliteral.65, i32 1, i32 2048, ptr @.compoundliteral.70, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 186, ptr @.str.71, ptr null, ptr @.compoundliteral.72, i32 1, i32 0, ptr @.compoundliteral.77, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 187, ptr @.str.78, ptr null, ptr @.compoundliteral.79, i32 1, i32 0, ptr @.compoundliteral.84, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 188, ptr @.str.85, ptr null, ptr @.compoundliteral.86, i32 1, i32 0, ptr @.compoundliteral.91, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 189, ptr @.str.92, ptr null, ptr @.compoundliteral.93, i32 1, i32 0, ptr @.compoundliteral.98, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 190, ptr @.str.99, ptr null, ptr @.compoundliteral.100, i32 1, i32 0, ptr @.compoundliteral.105, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 191, ptr @.str.106, ptr null, ptr @.compoundliteral.107, i32 1, i32 0, ptr @.compoundliteral.112, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 193, ptr @.str.113, ptr null, ptr @per_src, i32 3, i32 4096, ptr @.compoundliteral.114, ptr @_clk_hw_register_mux }, %struct.clock_config { i32 194, ptr @.str.115, ptr null, ptr @cpu_src, i32 3, i32 6144, ptr @.compoundliteral.116, ptr @_clk_hw_register_mux }, %struct.clock_config { i32 195, ptr @.str.117, ptr null, ptr @axi_src, i32 3, i32 6144, ptr @.compoundliteral.122, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 196, ptr @.str.123, ptr null, ptr @mcu_src, i32 4, i32 6144, ptr @.compoundliteral.128, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 -1, ptr @.str.129, ptr @.str.123, ptr null, i32 0, i32 8, ptr @.compoundliteral.130, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.131, ptr @.str.123, ptr null, i32 0, i32 8, ptr @.compoundliteral.132, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.133, ptr @.str.123, ptr null, i32 0, i32 8, ptr @.compoundliteral.134, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.135, ptr @.str.117, ptr null, i32 0, i32 8, ptr @.compoundliteral.136, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.137, ptr @.str.117, ptr null, i32 0, i32 8, ptr @.compoundliteral.138, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.139, ptr @.str.129, ptr null, i32 0, i32 0, ptr @.compoundliteral.140, ptr @_clk_register_cktim }, %struct.clock_config { i32 -1, ptr @.str.141, ptr @.str.131, ptr null, i32 0, i32 0, ptr @.compoundliteral.142, ptr @_clk_register_cktim }, %struct.clock_config { i32 197, ptr @.str.143, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.145, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 198, ptr @.str.146, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.148, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 199, ptr @.str.149, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.151, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 200, ptr @.str.152, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.154, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 201, ptr @.str.155, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.157, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 202, ptr @.str.158, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.160, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 203, ptr @.str.161, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.163, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 204, ptr @.str.164, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.166, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 205, ptr @.str.167, ptr @.str.139, ptr null, i32 0, i32 4, ptr @.compoundliteral.169, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 206, ptr @.str.170, ptr @.str.141, ptr null, i32 0, i32 4, ptr @.compoundliteral.172, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 207, ptr @.str.173, ptr @.str.141, ptr null, i32 0, i32 4, ptr @.compoundliteral.175, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 208, ptr @.str.176, ptr @.str.141, ptr null, i32 0, i32 4, ptr @.compoundliteral.178, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 209, ptr @.str.179, ptr @.str.141, ptr null, i32 0, i32 4, ptr @.compoundliteral.181, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 210, ptr @.str.182, ptr @.str.141, ptr null, i32 0, i32 4, ptr @.compoundliteral.184, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 6, ptr @.str.185, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 588), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 7, ptr @.str.186, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 600), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 8, ptr @.str.187, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 612), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 9, ptr @.str.188, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 624), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 10, ptr @.str.189, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 636), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 11, ptr @.str.190, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 648), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 12, ptr @.str.191, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 660), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 13, ptr @.str.192, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 672), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 14, ptr @.str.193, ptr @.str.129, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 684), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 15, ptr @.str.194, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 300), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 16, ptr @.str.195, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 60), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 17, ptr @.str.196, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 72), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 18, ptr @.str.197, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 204), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 19, ptr @.str.198, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 228), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 20, ptr @.str.199, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 216), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 21, ptr @.str.200, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 240), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 22, ptr @.str.201, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 276), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 23, ptr @.str.202, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 288), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 24, ptr @.str.203, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 132), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 25, ptr @.str.204, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 144), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 26, ptr @.str.205, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 156), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 27, ptr @.str.206, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 180), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 28, ptr @.str.207, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 120), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 29, ptr @.str.208, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 516), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 30, ptr @.str.209, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 504), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 31, ptr @.str.210, ptr @.str.129, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 696), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 32, ptr @.str.211, ptr @.str.131, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 708), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 33, ptr @.str.212, ptr @.str.131, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 720), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 34, ptr @.str.213, ptr @.str.131, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 732), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 35, ptr @.str.214, ptr @.str.131, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 744), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 36, ptr @.str.215, ptr @.str.131, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 756), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 37, ptr @.str.216, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 48), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 38, ptr @.str.217, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 84), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 39, ptr @.str.218, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 96), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 40, ptr @.str.219, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 264), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 41, ptr @.str.220, ptr @.str.131, ptr null, i32 0, i32 0, ptr @per_gate_cfg, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 42, ptr @.str.221, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 12), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 43, ptr @.str.222, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 24), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 44, ptr @.str.223, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 564), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 45, ptr @.str.224, ptr @.str.131, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 492), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 46, ptr @.str.225, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 312), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 47, ptr @.str.226, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 324), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 48, ptr @.str.227, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 336), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 49, ptr @.str.228, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 348), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 50, ptr @.str.229, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 36), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 51, ptr @.str.230, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 768), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 52, ptr @.str.231, ptr @.str.133, ptr null, i32 0, i32 13, ptr getelementptr (i8, ptr @per_gate_cfg, i64 780), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 53, ptr @.str.232, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 792), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 54, ptr @.str.233, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 804), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 55, ptr @.str.234, ptr @.str.133, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 816), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 56, ptr @.str.235, ptr @.str.135, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 360), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 57, ptr @.str.236, ptr @.str.135, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 372), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 58, ptr @.str.237, ptr @.str.135, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 828), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 59, ptr @.str.238, ptr @.str.135, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 456), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 60, ptr @.str.239, ptr @.str.135, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 840), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 61, ptr @.str.240, ptr @.str.137, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 108), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 62, ptr @.str.241, ptr @.str.137, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 168), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 63, ptr @.str.242, ptr @.str.137, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 192), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 64, ptr @.str.243, ptr @.str.137, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 252), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 65, ptr @.str.244, ptr @.str.137, ptr null, i32 0, i32 2056, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1188), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 66, ptr @.str.245, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1200), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 113, ptr @.str.246, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1212), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 67, ptr @.str.247, ptr @.str.137, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1224), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 68, ptr @.str.248, ptr @.str.137, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1236), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 69, ptr @.str.249, ptr @.str.137, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1248), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 70, ptr @.str.250, ptr @.str.137, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 552), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 71, ptr @.str.251, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 852), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 72, ptr @.str.252, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 864), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 73, ptr @.str.253, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 876), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 74, ptr @.str.254, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 528), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 75, ptr @.str.255, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 444), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 76, ptr @.str.256, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 432), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 77, ptr @.str.257, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 888), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 78, ptr @.str.258, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 900), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 79, ptr @.str.259, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 912), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 80, ptr @.str.260, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 480), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 81, ptr @.str.261, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 924), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 82, ptr @.str.262, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 936), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 83, ptr @.str.263, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 948), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 84, ptr @.str.264, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 960), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 85, ptr @.str.265, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 972), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 86, ptr @.str.266, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 984), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 87, ptr @.str.267, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 996), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 88, ptr @.str.268, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1008), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 89, ptr @.str.269, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1020), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 90, ptr @.str.270, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1032), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 91, ptr @.str.271, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1044), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 92, ptr @.str.272, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1056), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 93, ptr @.str.273, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1068), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 94, ptr @.str.274, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1080), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 95, ptr @.str.275, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1260), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 96, ptr @.str.276, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1272), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 97, ptr @.str.277, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1284), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 98, ptr @.str.278, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 468), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 99, ptr @.str.279, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1296), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 100, ptr @.str.280, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1092), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 101, ptr @.str.281, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 540), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 103, ptr @.str.282, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1116), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 104, ptr @.str.283, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1128), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 105, ptr @.str.284, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1140), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 106, ptr @.str.285, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 396), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 107, ptr @.str.286, ptr @.str.117, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 384), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 108, ptr @.str.287, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 408), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 109, ptr @.str.288, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 420), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 110, ptr @.str.289, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1152), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 111, ptr @.str.290, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1164), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 112, ptr @.str.291, ptr @.str.117, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1176), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 231, ptr @.str.292, ptr @.str.135, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1308), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 118, ptr @.str.293, ptr null, ptr @sdmmc12_src, i32 4, i32 4224, ptr @.compoundliteral.294, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 119, ptr @.str.295, ptr null, ptr @sdmmc12_src, i32 4, i32 4224, ptr @.compoundliteral.296, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 120, ptr @.str.297, ptr null, ptr @sdmmc3_src, i32 4, i32 4224, ptr @.compoundliteral.298, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 121, ptr @.str.299, ptr null, ptr @fmc_src, i32 4, i32 4224, ptr @.compoundliteral.300, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 122, ptr @.str.301, ptr null, ptr @qspi_src, i32 4, i32 4224, ptr @.compoundliteral.302, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 124, ptr @.str.303, ptr null, ptr @rng_src, i32 4, i32 4224, ptr @.compoundliteral.304, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 125, ptr @.str.305, ptr null, ptr @rng_src, i32 4, i32 4224, ptr @.compoundliteral.306, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 127, ptr @.str.307, ptr null, ptr @usbphy_src, i32 3, i32 4224, ptr @.compoundliteral.308, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 128, ptr @.str.309, ptr null, ptr @stgen_src, i32 2, i32 6272, ptr @.compoundliteral.310, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 129, ptr @.str.311, ptr null, ptr @spdif_src, i32 3, i32 4224, ptr @.compoundliteral.312, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 130, ptr @.str.313, ptr null, ptr @spi123_src, i32 5, i32 4224, ptr @.compoundliteral.314, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 131, ptr @.str.315, ptr null, ptr @spi123_src, i32 5, i32 4224, ptr @.compoundliteral.316, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 132, ptr @.str.317, ptr null, ptr @spi123_src, i32 5, i32 4224, ptr @.compoundliteral.318, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 133, ptr @.str.319, ptr null, ptr @spi45_src, i32 5, i32 4224, ptr @.compoundliteral.320, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 134, ptr @.str.321, ptr null, ptr @spi45_src, i32 5, i32 4224, ptr @.compoundliteral.322, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 135, ptr @.str.323, ptr null, ptr @spi6_src, i32 6, i32 4224, ptr @.compoundliteral.324, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 136, ptr @.str.325, ptr null, ptr @cec_src, i32 3, i32 4224, ptr @.compoundliteral.326, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 137, ptr @.str.327, ptr null, ptr @i2c12_src, i32 4, i32 4224, ptr @.compoundliteral.328, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 138, ptr @.str.329, ptr null, ptr @i2c12_src, i32 4, i32 4224, ptr @.compoundliteral.330, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 139, ptr @.str.331, ptr null, ptr @i2c35_src, i32 4, i32 4224, ptr @.compoundliteral.332, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 141, ptr @.str.333, ptr null, ptr @i2c35_src, i32 4, i32 4224, ptr @.compoundliteral.334, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 140, ptr @.str.335, ptr null, ptr @i2c46_src, i32 4, i32 4224, ptr @.compoundliteral.336, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 142, ptr @.str.337, ptr null, ptr @i2c46_src, i32 4, i32 4224, ptr @.compoundliteral.338, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 143, ptr @.str.339, ptr null, ptr @lptim1_src, i32 6, i32 4224, ptr @.compoundliteral.340, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 144, ptr @.str.341, ptr null, ptr @lptim23_src, i32 5, i32 4224, ptr @.compoundliteral.342, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 145, ptr @.str.343, ptr null, ptr @lptim23_src, i32 5, i32 4224, ptr @.compoundliteral.344, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 146, ptr @.str.345, ptr null, ptr @lptim45_src, i32 6, i32 4224, ptr @.compoundliteral.346, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 147, ptr @.str.347, ptr null, ptr @lptim45_src, i32 6, i32 4224, ptr @.compoundliteral.348, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 148, ptr @.str.349, ptr null, ptr @usart1_src, i32 6, i32 4224, ptr @.compoundliteral.350, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 149, ptr @.str.351, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.352, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 150, ptr @.str.353, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.354, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 151, ptr @.str.355, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.356, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 152, ptr @.str.357, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.358, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 153, ptr @.str.359, ptr null, ptr @usart6_src, i32 5, i32 4224, ptr @.compoundliteral.360, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 154, ptr @.str.361, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.362, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 155, ptr @.str.363, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.364, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 157, ptr @.str.365, ptr null, ptr @fdcan_src, i32 4, i32 4224, ptr @.compoundliteral.366, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 158, ptr @.str.367, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.368, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 159, ptr @.str.369, ptr null, ptr @sai2_src, i32 6, i32 4224, ptr @.compoundliteral.370, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 160, ptr @.str.371, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.372, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 161, ptr @.str.373, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.374, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 162, ptr @.str.375, ptr null, ptr @adc12_src, i32 3, i32 4224, ptr @.compoundliteral.376, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 163, ptr @.str.377, ptr null, ptr @dsi_src, i32 2, i32 4224, ptr @.compoundliteral.378, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 165, ptr @.str.379, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.380, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 166, ptr @.str.381, ptr null, ptr @usbo_src, i32 2, i32 4224, ptr @.compoundliteral.382, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 123, ptr @.str.383, ptr null, ptr @eth_src, i32 2, i32 4224, ptr @.compoundliteral.384, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 156, ptr @.str.385, ptr @.str.123, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 564), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 164, ptr @.str.386, ptr @.str.99, ptr null, i32 0, i32 4, ptr getelementptr (i8, ptr @per_gate_cfg, i64 372), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 167, ptr @.str.387, ptr @.str.99, ptr null, i32 0, i32 4, ptr getelementptr (i8, ptr @per_gate_cfg, i64 360), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 126, ptr @.str.388, ptr @.str.57, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 540), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 168, ptr @.str.389, ptr @.str.27, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 504), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 169, ptr @.str.390, ptr null, ptr @eth_src, i32 2, i32 4224, ptr @.compoundliteral.393, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 192, ptr @.str.394, ptr null, ptr @rtc_src, i32 4, i32 4096, ptr @.compoundliteral.401, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 211, ptr @.str.402, ptr null, ptr @mco1_src, i32 5, i32 4224, ptr @.compoundliteral.409, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 212, ptr @.str.410, ptr null, ptr @mco2_src, i32 6, i32 4224, ptr @.compoundliteral.417, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 214, ptr @.str.418, ptr @.str.117, ptr null, i32 0, i32 8, ptr @.compoundliteral.419, ptr @_clk_hw_register_gate }, %struct.clock_config { i32 215, ptr @.str.420, ptr null, ptr @ck_trace_src, i32 1, i32 4096, ptr @.compoundliteral.425, ptr @_clk_stm32_register_composite }], align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"ck_hse\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"clk-hse\00", align 1
@.compoundliteral = internal global %struct.gate_cfg { i32 12, i8 8, i8 0 }, align 4
@mp1_gate_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mp1_gate_clk_enable, ptr @mp1_gate_clk_disable, ptr @clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.14 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"ck_csi\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"clk-csi\00", align 1
@.compoundliteral.17 = internal global %struct.gate_cfg { i32 12, i8 4, i8 0 }, align 4
@.compoundliteral.18 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.17, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"ck_hsi\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"clk-hsi\00", align 1
@.compoundliteral.21 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.22 = internal global %struct.gate_cfg { i32 12, i8 0, i8 0 }, align 4
@.compoundliteral.23 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.22, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.compoundliteral.24 = internal global %struct.div_cfg { i32 24, i8 0, i8 2, i8 34, ptr null }, align 4
@.compoundliteral.25 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.24, ptr null }, align 4
@.compoundliteral.26 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.23, ptr @.compoundliteral.25, ptr null }, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"ck_lsi\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"clk-lsi\00", align 1
@.compoundliteral.29 = internal global %struct.gate_cfg { i32 324, i8 0, i8 0 }, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"ck_lse\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"clk-lse\00", align 1
@.compoundliteral.32 = internal global %struct.gate_cfg { i32 320, i8 0, i8 0 }, align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"clk-hse-div2\00", align 1
@.compoundliteral.34 = internal global %struct.fixed_factor_cfg { i32 1, i32 2 }, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@ref12_parents = internal constant [2 x ptr] [ptr @.str.19, ptr @.str.12], align 4
@.compoundliteral.36 = internal global %struct.stm32_pll_cfg { i32 128, i32 40 }, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.compoundliteral.38 = internal global %struct.stm32_pll_cfg { i32 148, i32 40 }, align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@ref3_parents = internal constant [3 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.15], align 4
@.compoundliteral.40 = internal global %struct.stm32_pll_cfg { i32 2176, i32 2080 }, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@ref4_parents = internal constant [3 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.15], align 4
@.compoundliteral.42 = internal global %struct.stm32_pll_cfg { i32 2196, i32 2084 }, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"pll1_p\00", align 1
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.35], align 4
@.compoundliteral.45 = internal global %struct.gate_cfg { i32 128, i8 4, i8 0 }, align 4
@.compoundliteral.46 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.45, ptr null, ptr null }, align 4
@.compoundliteral.47 = internal global %struct.div_cfg { i32 136, i8 0, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.48 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.47, ptr null }, align 4
@.compoundliteral.49 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.46, ptr @.compoundliteral.48, ptr null }, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"pll2_p\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.37], align 4
@.compoundliteral.52 = internal global %struct.gate_cfg { i32 148, i8 4, i8 0 }, align 4
@.compoundliteral.53 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.52, ptr null, ptr null }, align 4
@.compoundliteral.54 = internal global %struct.div_cfg { i32 156, i8 0, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.55 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.54, ptr null }, align 4
@.compoundliteral.56 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.53, ptr @.compoundliteral.55, ptr null }, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"pll2_q\00", align 1
@.compoundliteral.58 = internal global [1 x ptr] [ptr @.str.37], align 4
@.compoundliteral.59 = internal global %struct.gate_cfg { i32 148, i8 5, i8 0 }, align 4
@.compoundliteral.60 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.59, ptr null, ptr null }, align 4
@.compoundliteral.61 = internal global %struct.div_cfg { i32 156, i8 8, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.62 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.61, ptr null }, align 4
@.compoundliteral.63 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.60, ptr @.compoundliteral.62, ptr null }, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"pll2_r\00", align 1
@.compoundliteral.65 = internal global [1 x ptr] [ptr @.str.37], align 4
@.compoundliteral.66 = internal global %struct.gate_cfg { i32 148, i8 6, i8 0 }, align 4
@.compoundliteral.67 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.66, ptr null, ptr null }, align 4
@.compoundliteral.68 = internal global %struct.div_cfg { i32 156, i8 16, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.69 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.68, ptr null }, align 4
@.compoundliteral.70 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.67, ptr @.compoundliteral.69, ptr null }, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"pll3_p\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.73 = internal global %struct.gate_cfg { i32 2176, i8 4, i8 0 }, align 4
@.compoundliteral.74 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.73, ptr null, ptr null }, align 4
@.compoundliteral.75 = internal global %struct.div_cfg { i32 2184, i8 0, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.76 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.75, ptr null }, align 4
@.compoundliteral.77 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.74, ptr @.compoundliteral.76, ptr null }, align 4
@.str.78 = private unnamed_addr constant [7 x i8] c"pll3_q\00", align 1
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.80 = internal global %struct.gate_cfg { i32 2176, i8 5, i8 0 }, align 4
@.compoundliteral.81 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.80, ptr null, ptr null }, align 4
@.compoundliteral.82 = internal global %struct.div_cfg { i32 2184, i8 8, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.83 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.82, ptr null }, align 4
@.compoundliteral.84 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.81, ptr @.compoundliteral.83, ptr null }, align 4
@.str.85 = private unnamed_addr constant [7 x i8] c"pll3_r\00", align 1
@.compoundliteral.86 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.87 = internal global %struct.gate_cfg { i32 2176, i8 6, i8 0 }, align 4
@.compoundliteral.88 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.87, ptr null, ptr null }, align 4
@.compoundliteral.89 = internal global %struct.div_cfg { i32 2184, i8 16, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.90 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.89, ptr null }, align 4
@.compoundliteral.91 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.88, ptr @.compoundliteral.90, ptr null }, align 4
@.str.92 = private unnamed_addr constant [7 x i8] c"pll4_p\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.94 = internal global %struct.gate_cfg { i32 2196, i8 4, i8 0 }, align 4
@.compoundliteral.95 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.94, ptr null, ptr null }, align 4
@.compoundliteral.96 = internal global %struct.div_cfg { i32 2204, i8 0, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.97 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.96, ptr null }, align 4
@.compoundliteral.98 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.95, ptr @.compoundliteral.97, ptr null }, align 4
@.str.99 = private unnamed_addr constant [7 x i8] c"pll4_q\00", align 1
@.compoundliteral.100 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.101 = internal global %struct.gate_cfg { i32 2196, i8 5, i8 0 }, align 4
@.compoundliteral.102 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.101, ptr null, ptr null }, align 4
@.compoundliteral.103 = internal global %struct.div_cfg { i32 2204, i8 8, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.104 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.103, ptr null }, align 4
@.compoundliteral.105 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.102, ptr @.compoundliteral.104, ptr null }, align 4
@.str.106 = private unnamed_addr constant [7 x i8] c"pll4_r\00", align 1
@.compoundliteral.107 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.108 = internal global %struct.gate_cfg { i32 2196, i8 6, i8 0 }, align 4
@.compoundliteral.109 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.108, ptr null, ptr null }, align 4
@.compoundliteral.110 = internal global %struct.div_cfg { i32 2204, i8 16, i8 7, i8 0, ptr null }, align 4
@.compoundliteral.111 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.110, ptr null }, align 4
@.compoundliteral.112 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.109, ptr @.compoundliteral.111, ptr null }, align 4
@.str.113 = private unnamed_addr constant [7 x i8] c"ck_per\00", align 1
@per_src = internal constant [3 x ptr] [ptr @.str.19, ptr @.str.15, ptr @.str.12], align 4
@.compoundliteral.114 = internal global %struct.mux_cfg { i32 208, i8 0, i8 2, i8 0, ptr null }, align 4
@.str.115 = private unnamed_addr constant [7 x i8] c"ck_mpu\00", align 1
@cpu_src = internal constant [3 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.43], align 4
@.compoundliteral.116 = internal global %struct.mux_cfg { i32 32, i8 0, i8 2, i8 0, ptr null }, align 4
@.str.117 = private unnamed_addr constant [7 x i8] c"ck_axi\00", align 1
@axi_src = internal constant [3 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.50], align 4
@axi_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 4 }, %struct.clk_div_table { i32 6, i32 4 }, %struct.clk_div_table { i32 7, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.compoundliteral.118 = internal global %struct.div_cfg { i32 48, i8 0, i8 3, i8 0, ptr @axi_div_table }, align 4
@.compoundliteral.119 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.118, ptr null }, align 4
@.compoundliteral.120 = internal global %struct.mux_cfg { i32 36, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.121 = internal global %struct.stm32_mux_cfg { ptr @.compoundliteral.120, ptr null, ptr null }, align 4
@.compoundliteral.122 = internal global %struct.stm32_composite_cfg { ptr null, ptr @.compoundliteral.119, ptr @.compoundliteral.121 }, align 4
@.str.123 = private unnamed_addr constant [7 x i8] c"ck_mcu\00", align 1
@mcu_src = internal constant [4 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.15, ptr @.str.71], align 4
@mcu_div_table = internal constant [17 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 32 }, %struct.clk_div_table { i32 6, i32 64 }, %struct.clk_div_table { i32 7, i32 128 }, %struct.clk_div_table { i32 8, i32 256 }, %struct.clk_div_table { i32 9, i32 512 }, %struct.clk_div_table { i32 10, i32 512 }, %struct.clk_div_table { i32 11, i32 512 }, %struct.clk_div_table { i32 12, i32 512 }, %struct.clk_div_table { i32 13, i32 512 }, %struct.clk_div_table { i32 14, i32 512 }, %struct.clk_div_table { i32 15, i32 512 }, %struct.clk_div_table zeroinitializer], align 4
@.compoundliteral.124 = internal global %struct.div_cfg { i32 2096, i8 0, i8 4, i8 0, ptr @mcu_div_table }, align 4
@.compoundliteral.125 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.124, ptr null }, align 4
@.compoundliteral.126 = internal global %struct.mux_cfg { i32 72, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.127 = internal global %struct.stm32_mux_cfg { ptr @.compoundliteral.126, ptr null, ptr null }, align 4
@.compoundliteral.128 = internal global %struct.stm32_composite_cfg { ptr null, ptr @.compoundliteral.125, ptr @.compoundliteral.127 }, align 4
@.str.129 = private unnamed_addr constant [6 x i8] c"pclk1\00", align 1
@apb_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 16 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.compoundliteral.130 = internal global %struct.div_cfg { i32 2100, i8 0, i8 3, i8 32, ptr @apb_div_table }, align 4
@.str.131 = private unnamed_addr constant [6 x i8] c"pclk2\00", align 1
@.compoundliteral.132 = internal global %struct.div_cfg { i32 2104, i8 0, i8 3, i8 32, ptr @apb_div_table }, align 4
@.str.133 = private unnamed_addr constant [6 x i8] c"pclk3\00", align 1
@.compoundliteral.134 = internal global %struct.div_cfg { i32 2108, i8 0, i8 3, i8 32, ptr @apb_div_table }, align 4
@.str.135 = private unnamed_addr constant [6 x i8] c"pclk4\00", align 1
@.compoundliteral.136 = internal global %struct.div_cfg { i32 60, i8 0, i8 3, i8 32, ptr @apb_div_table }, align 4
@.str.137 = private unnamed_addr constant [6 x i8] c"pclk5\00", align 1
@.compoundliteral.138 = internal global %struct.div_cfg { i32 64, i8 0, i8 3, i8 32, ptr @apb_div_table }, align 4
@.str.139 = private unnamed_addr constant [8 x i8] c"ck1_tim\00", align 1
@.compoundliteral.140 = internal global %struct.stm32_cktim_cfg { i32 2100, i32 2088 }, align 4
@.str.141 = private unnamed_addr constant [8 x i8] c"ck2_tim\00", align 1
@.compoundliteral.142 = internal global %struct.stm32_cktim_cfg { i32 2104, i32 2092 }, align 4
@.str.143 = private unnamed_addr constant [7 x i8] c"tim2_k\00", align 1
@.compoundliteral.144 = internal global %struct.gate_cfg { i32 2560, i8 0, i8 0 }, align 4
@.compoundliteral.145 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.144, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.146 = private unnamed_addr constant [7 x i8] c"tim3_k\00", align 1
@.compoundliteral.147 = internal global %struct.gate_cfg { i32 2560, i8 1, i8 0 }, align 4
@.compoundliteral.148 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.147, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.149 = private unnamed_addr constant [7 x i8] c"tim4_k\00", align 1
@.compoundliteral.150 = internal global %struct.gate_cfg { i32 2560, i8 2, i8 0 }, align 4
@.compoundliteral.151 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.150, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.152 = private unnamed_addr constant [7 x i8] c"tim5_k\00", align 1
@.compoundliteral.153 = internal global %struct.gate_cfg { i32 2560, i8 3, i8 0 }, align 4
@.compoundliteral.154 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.153, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.155 = private unnamed_addr constant [7 x i8] c"tim6_k\00", align 1
@.compoundliteral.156 = internal global %struct.gate_cfg { i32 2560, i8 4, i8 0 }, align 4
@.compoundliteral.157 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.156, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.158 = private unnamed_addr constant [7 x i8] c"tim7_k\00", align 1
@.compoundliteral.159 = internal global %struct.gate_cfg { i32 2560, i8 5, i8 0 }, align 4
@.compoundliteral.160 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.159, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.161 = private unnamed_addr constant [8 x i8] c"tim12_k\00", align 1
@.compoundliteral.162 = internal global %struct.gate_cfg { i32 2560, i8 6, i8 0 }, align 4
@.compoundliteral.163 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.162, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.164 = private unnamed_addr constant [8 x i8] c"tim13_k\00", align 1
@.compoundliteral.165 = internal global %struct.gate_cfg { i32 2560, i8 7, i8 0 }, align 4
@.compoundliteral.166 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.165, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.167 = private unnamed_addr constant [8 x i8] c"tim14_k\00", align 1
@.compoundliteral.168 = internal global %struct.gate_cfg { i32 2560, i8 8, i8 0 }, align 4
@.compoundliteral.169 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.168, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.170 = private unnamed_addr constant [7 x i8] c"tim1_k\00", align 1
@.compoundliteral.171 = internal global %struct.gate_cfg { i32 2568, i8 0, i8 0 }, align 4
@.compoundliteral.172 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.171, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.173 = private unnamed_addr constant [7 x i8] c"tim8_k\00", align 1
@.compoundliteral.174 = internal global %struct.gate_cfg { i32 2568, i8 1, i8 0 }, align 4
@.compoundliteral.175 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.174, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.176 = private unnamed_addr constant [8 x i8] c"tim15_k\00", align 1
@.compoundliteral.177 = internal global %struct.gate_cfg { i32 2568, i8 2, i8 0 }, align 4
@.compoundliteral.178 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.177, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.179 = private unnamed_addr constant [8 x i8] c"tim16_k\00", align 1
@.compoundliteral.180 = internal global %struct.gate_cfg { i32 2568, i8 3, i8 0 }, align 4
@.compoundliteral.181 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.180, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.182 = private unnamed_addr constant [8 x i8] c"tim17_k\00", align 1
@.compoundliteral.183 = internal global %struct.gate_cfg { i32 2568, i8 4, i8 0 }, align 4
@.compoundliteral.184 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.183, ptr null, ptr @mp1_gate_clk_ops }, align 4
@.str.185 = private unnamed_addr constant [5 x i8] c"tim2\00", align 1
@per_gate_cfg = internal global [110 x %struct.stm32_gate_cfg] [%struct.stm32_gate_cfg { ptr @.compoundliteral.426, ptr @mp1_mgate, ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.427, ptr getelementptr (i8, ptr @mp1_mgate, i64 8), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.428, ptr getelementptr (i8, ptr @mp1_mgate, i64 16), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.429, ptr getelementptr (i8, ptr @mp1_mgate, i64 24), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.430, ptr getelementptr (i8, ptr @mp1_mgate, i64 32), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.431, ptr getelementptr (i8, ptr @mp1_mgate, i64 40), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.432, ptr getelementptr (i8, ptr @mp1_mgate, i64 48), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.433, ptr getelementptr (i8, ptr @mp1_mgate, i64 56), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.434, ptr getelementptr (i8, ptr @mp1_mgate, i64 64), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.435, ptr getelementptr (i8, ptr @mp1_mgate, i64 72), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.436, ptr getelementptr (i8, ptr @mp1_mgate, i64 80), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.437, ptr getelementptr (i8, ptr @mp1_mgate, i64 88), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.438, ptr getelementptr (i8, ptr @mp1_mgate, i64 96), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.439, ptr getelementptr (i8, ptr @mp1_mgate, i64 104), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.440, ptr getelementptr (i8, ptr @mp1_mgate, i64 112), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.441, ptr getelementptr (i8, ptr @mp1_mgate, i64 120), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.442, ptr getelementptr (i8, ptr @mp1_mgate, i64 128), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.443, ptr getelementptr (i8, ptr @mp1_mgate, i64 136), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.444, ptr getelementptr (i8, ptr @mp1_mgate, i64 144), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.445, ptr getelementptr (i8, ptr @mp1_mgate, i64 152), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.446, ptr getelementptr (i8, ptr @mp1_mgate, i64 160), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.447, ptr getelementptr (i8, ptr @mp1_mgate, i64 168), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.448, ptr getelementptr (i8, ptr @mp1_mgate, i64 176), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.449, ptr getelementptr (i8, ptr @mp1_mgate, i64 184), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.450, ptr getelementptr (i8, ptr @mp1_mgate, i64 192), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.451, ptr getelementptr (i8, ptr @mp1_mgate, i64 200), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.452, ptr getelementptr (i8, ptr @mp1_mgate, i64 208), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.453, ptr getelementptr (i8, ptr @mp1_mgate, i64 216), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.454, ptr getelementptr (i8, ptr @mp1_mgate, i64 224), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.455, ptr getelementptr (i8, ptr @mp1_mgate, i64 232), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.456, ptr getelementptr (i8, ptr @mp1_mgate, i64 240), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.457, ptr getelementptr (i8, ptr @mp1_mgate, i64 248), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.458, ptr getelementptr (i8, ptr @mp1_mgate, i64 256), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.459, ptr getelementptr (i8, ptr @mp1_mgate, i64 264), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.460, ptr getelementptr (i8, ptr @mp1_mgate, i64 272), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.461, ptr getelementptr (i8, ptr @mp1_mgate, i64 280), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.462, ptr getelementptr (i8, ptr @mp1_mgate, i64 288), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.463, ptr getelementptr (i8, ptr @mp1_mgate, i64 296), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.464, ptr getelementptr (i8, ptr @mp1_mgate, i64 304), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.465, ptr getelementptr (i8, ptr @mp1_mgate, i64 312), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.466, ptr getelementptr (i8, ptr @mp1_mgate, i64 320), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.467, ptr getelementptr (i8, ptr @mp1_mgate, i64 328), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.468, ptr getelementptr (i8, ptr @mp1_mgate, i64 336), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.469, ptr getelementptr (i8, ptr @mp1_mgate, i64 344), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.470, ptr getelementptr (i8, ptr @mp1_mgate, i64 352), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.471, ptr getelementptr (i8, ptr @mp1_mgate, i64 360), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.472, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.473, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.474, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.475, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.476, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.477, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.478, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.479, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.480, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.481, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.482, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.483, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.484, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.485, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.486, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.487, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.488, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.489, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.490, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.491, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.492, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.493, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.494, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.495, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.496, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.497, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.498, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.499, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.500, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.501, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.502, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.503, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.504, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.505, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.506, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.507, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.508, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.509, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.510, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.511, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.512, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.513, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.514, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.515, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.516, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.517, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.518, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.519, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.520, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.521, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.522, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.523, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.524, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.525, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.526, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.527, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.528, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.529, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.530, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.531, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.532, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.533, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.534, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.535, ptr null, ptr @mp1_gate_clk_ops }], align 4
@.str.186 = private unnamed_addr constant [5 x i8] c"tim3\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"tim4\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"tim5\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"tim6\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"tim7\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"tim12\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"tim13\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"tim14\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"lptim1\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"spi3\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"usart2\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"usart3\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"uart5\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"uart7\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"uart8\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"i2c5\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"dac12\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"tim1\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"tim8\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"tim15\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"tim16\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"tim17\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"spi4\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"spi5\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"usart6\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c"sai1\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"sai2\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"sai3\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"dfsdm\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"fdcan\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"lptim2\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"lptim3\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"lptim4\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"lptim5\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"sai4\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"syscfg\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"tmpsens\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"pmbctrl\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"hdp\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"ltdc\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"iwdg2\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"usbphy\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"stgenro\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"spi6\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"i2c6\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"usart1\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"rtcapb\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"tzc1\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"tzc2\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"tzpc\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"iwdg1\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"bsec\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"stgen\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"dma1\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"dma2\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"dmamux\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"adc12\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"usbo\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"sdmmc3\00", align 1
@.str.257 = private unnamed_addr constant [5 x i8] c"dcmi\00", align 1
@.str.258 = private unnamed_addr constant [6 x i8] c"cryp2\00", align 1
@.str.259 = private unnamed_addr constant [6 x i8] c"hash2\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"rng2\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"crc2\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"hsem\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"ipcc\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"gpioa\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c"gpiob\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"gpioc\00", align 1
@.str.267 = private unnamed_addr constant [6 x i8] c"gpiod\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"gpioe\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"gpiof\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"gpiog\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"gpioh\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"gpioi\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"gpioj\00", align 1
@.str.274 = private unnamed_addr constant [6 x i8] c"gpiok\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"gpioz\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"cryp1\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"hash1\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"rng1\00", align 1
@.str.279 = private unnamed_addr constant [8 x i8] c"bkpsram\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"mdma\00", align 1
@.str.281 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.282 = private unnamed_addr constant [6 x i8] c"ethtx\00", align 1
@.str.283 = private unnamed_addr constant [6 x i8] c"ethrx\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"ethmac\00", align 1
@.str.285 = private unnamed_addr constant [4 x i8] c"fmc\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.287 = private unnamed_addr constant [7 x i8] c"sdmmc1\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"sdmmc2\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"crc1\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"usbh\00", align 1
@.str.291 = private unnamed_addr constant [7 x i8] c"ethstp\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"ddrperfm\00", align 1
@.str.293 = private unnamed_addr constant [9 x i8] c"sdmmc1_k\00", align 1
@sdmmc12_src = internal constant [4 x ptr] [ptr @.str.117, ptr @.str.85, ptr @.str.92, ptr @.str.19], align 4
@ker_mux_cfg = internal constant [35 x %struct.stm32_mux_cfg] [%struct.stm32_mux_cfg { ptr @.compoundliteral.536, ptr @ker_mux, ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.537, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.538, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.539, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.540, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.541, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.542, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.543, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.544, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.545, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.546, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.547, ptr getelementptr (i8, ptr @ker_mux, i64 132), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.548, ptr getelementptr (i8, ptr @ker_mux, i64 144), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.549, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.550, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.551, ptr getelementptr (i8, ptr @ker_mux, i64 180), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.552, ptr getelementptr (i8, ptr @ker_mux, i64 192), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.553, ptr getelementptr (i8, ptr @ker_mux, i64 204), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.554, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.555, ptr getelementptr (i8, ptr @ker_mux, i64 228), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.556, ptr getelementptr (i8, ptr @ker_mux, i64 240), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.557, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.558, ptr getelementptr (i8, ptr @ker_mux, i64 264), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.559, ptr getelementptr (i8, ptr @ker_mux, i64 276), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.560, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.561, ptr getelementptr (i8, ptr @ker_mux, i64 300), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.562, ptr getelementptr (i8, ptr @ker_mux, i64 312), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.563, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.564, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.565, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.566, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.567, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.568, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.569, ptr getelementptr (i8, ptr @ker_mux, i64 396), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.570, ptr null, ptr null }], align 4
@.compoundliteral.294 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 408), ptr null, ptr @ker_mux_cfg }, align 4
@.str.295 = private unnamed_addr constant [9 x i8] c"sdmmc2_k\00", align 1
@.compoundliteral.296 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 420), ptr null, ptr @ker_mux_cfg }, align 4
@.str.297 = private unnamed_addr constant [9 x i8] c"sdmmc3_k\00", align 1
@sdmmc3_src = internal constant [4 x ptr] [ptr @.str.123, ptr @.str.85, ptr @.str.92, ptr @.str.19], align 4
@.compoundliteral.298 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 432), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 12) }, align 4
@.str.299 = private unnamed_addr constant [6 x i8] c"fmc_k\00", align 1
@fmc_src = internal constant [4 x ptr] [ptr @.str.117, ptr @.str.85, ptr @.str.92, ptr @.str.113], align 4
@.compoundliteral.300 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 396), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 24) }, align 4
@.str.301 = private unnamed_addr constant [7 x i8] c"qspi_k\00", align 1
@qspi_src = internal constant [4 x ptr] [ptr @.str.117, ptr @.str.85, ptr @.str.92, ptr @.str.113], align 4
@.compoundliteral.302 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 384), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 36) }, align 4
@.str.303 = private unnamed_addr constant [7 x i8] c"rng1_k\00", align 1
@rng_src = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.106, ptr @.str.30, ptr @.str.27], align 4
@.compoundliteral.304 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 468), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 48) }, align 4
@.str.305 = private unnamed_addr constant [7 x i8] c"rng2_k\00", align 1
@.compoundliteral.306 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 480), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 60) }, align 4
@.str.307 = private unnamed_addr constant [9 x i8] c"usbphy_k\00", align 1
@usbphy_src = internal constant [3 x ptr] [ptr @.str.12, ptr @.str.106, ptr @.str.33], align 4
@.compoundliteral.308 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 456), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 72) }, align 4
@.str.309 = private unnamed_addr constant [8 x i8] c"stgen_k\00", align 1
@stgen_src = internal constant [2 x ptr] [ptr @.str.19, ptr @.str.12], align 4
@.compoundliteral.310 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 552), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 96) }, align 4
@.str.311 = private unnamed_addr constant [8 x i8] c"spdif_k\00", align 1
@spdif_src = internal constant [3 x ptr] [ptr @.str.92, ptr @.str.78, ptr @.str.19], align 4
@.compoundliteral.312 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 120), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 108) }, align 4
@.str.313 = private unnamed_addr constant [7 x i8] c"spi1_k\00", align 1
@spi123_src = internal constant [5 x ptr] [ptr @.str.92, ptr @.str.78, ptr @.str.571, ptr @.str.113, ptr @.str.85], align 4
@.compoundliteral.314 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 48), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 120) }, align 4
@.str.315 = private unnamed_addr constant [7 x i8] c"spi2_k\00", align 1
@.compoundliteral.316 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 60), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 132) }, align 4
@.str.317 = private unnamed_addr constant [7 x i8] c"spi3_k\00", align 1
@.compoundliteral.318 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 72), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 132) }, align 4
@.str.319 = private unnamed_addr constant [7 x i8] c"spi4_k\00", align 1
@spi45_src = internal constant [5 x ptr] [ptr @.str.131, ptr @.str.99, ptr @.str.19, ptr @.str.15, ptr @.str.12], align 4
@.compoundliteral.320 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 84), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 144) }, align 4
@.str.321 = private unnamed_addr constant [7 x i8] c"spi5_k\00", align 1
@.compoundliteral.322 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 96), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 144) }, align 4
@.str.323 = private unnamed_addr constant [7 x i8] c"spi6_k\00", align 1
@spi6_src = internal constant [6 x ptr] [ptr @.str.137, ptr @.str.99, ptr @.str.19, ptr @.str.15, ptr @.str.12, ptr @.str.78], align 4
@.compoundliteral.324 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 108), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 156) }, align 4
@.str.325 = private unnamed_addr constant [6 x i8] c"cec_k\00", align 1
@cec_src = internal constant [3 x ptr] [ptr @.str.30, ptr @.str.27, ptr @.str.15], align 4
@.compoundliteral.326 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 516), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 168) }, align 4
@.str.327 = private unnamed_addr constant [7 x i8] c"i2c1_k\00", align 1
@i2c12_src = internal constant [4 x ptr] [ptr @.str.129, ptr @.str.106, ptr @.str.19, ptr @.str.15], align 4
@.compoundliteral.328 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 132), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 180) }, align 4
@.str.329 = private unnamed_addr constant [7 x i8] c"i2c2_k\00", align 1
@.compoundliteral.330 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 144), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 180) }, align 4
@.str.331 = private unnamed_addr constant [7 x i8] c"i2c3_k\00", align 1
@i2c35_src = internal constant [4 x ptr] [ptr @.str.129, ptr @.str.106, ptr @.str.19, ptr @.str.15], align 4
@.compoundliteral.332 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 156), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 192) }, align 4
@.str.333 = private unnamed_addr constant [7 x i8] c"i2c5_k\00", align 1
@.compoundliteral.334 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 180), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 192) }, align 4
@.str.335 = private unnamed_addr constant [7 x i8] c"i2c4_k\00", align 1
@i2c46_src = internal constant [4 x ptr] [ptr @.str.137, ptr @.str.78, ptr @.str.19, ptr @.str.15], align 4
@.compoundliteral.336 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 168), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 204) }, align 4
@.str.337 = private unnamed_addr constant [7 x i8] c"i2c6_k\00", align 1
@.compoundliteral.338 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 192), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 204) }, align 4
@.str.339 = private unnamed_addr constant [9 x i8] c"lptim1_k\00", align 1
@lptim1_src = internal constant [6 x ptr] [ptr @.str.129, ptr @.str.92, ptr @.str.78, ptr @.str.30, ptr @.str.27, ptr @.str.113], align 4
@.compoundliteral.340 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 300), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 216) }, align 4
@.str.341 = private unnamed_addr constant [9 x i8] c"lptim2_k\00", align 1
@lptim23_src = internal constant [5 x ptr] [ptr @.str.133, ptr @.str.99, ptr @.str.113, ptr @.str.30, ptr @.str.27], align 4
@.compoundliteral.342 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 312), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 228) }, align 4
@.str.343 = private unnamed_addr constant [9 x i8] c"lptim3_k\00", align 1
@.compoundliteral.344 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 324), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 228) }, align 4
@.str.345 = private unnamed_addr constant [9 x i8] c"lptim4_k\00", align 1
@lptim45_src = internal constant [6 x ptr] [ptr @.str.133, ptr @.str.92, ptr @.str.78, ptr @.str.30, ptr @.str.27, ptr @.str.113], align 4
@.compoundliteral.346 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 336), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 240) }, align 4
@.str.347 = private unnamed_addr constant [9 x i8] c"lptim5_k\00", align 1
@.compoundliteral.348 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 348), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 240) }, align 4
@.str.349 = private unnamed_addr constant [9 x i8] c"usart1_k\00", align 1
@usart1_src = internal constant [6 x ptr] [ptr @.str.137, ptr @.str.78, ptr @.str.19, ptr @.str.15, ptr @.str.99, ptr @.str.12], align 4
@.compoundliteral.350 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 252), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 252) }, align 4
@.str.351 = private unnamed_addr constant [9 x i8] c"usart2_k\00", align 1
@usart234578_src = internal constant [5 x ptr] [ptr @.str.129, ptr @.str.99, ptr @.str.19, ptr @.str.15, ptr @.str.12], align 4
@.compoundliteral.352 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 204), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 264) }, align 4
@.str.353 = private unnamed_addr constant [9 x i8] c"usart3_k\00", align 1
@.compoundliteral.354 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 228), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 276) }, align 4
@.str.355 = private unnamed_addr constant [8 x i8] c"uart4_k\00", align 1
@.compoundliteral.356 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 216), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 264) }, align 4
@.str.357 = private unnamed_addr constant [8 x i8] c"uart5_k\00", align 1
@.compoundliteral.358 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 240), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 276) }, align 4
@.str.359 = private unnamed_addr constant [8 x i8] c"uart6_k\00", align 1
@usart6_src = internal constant [5 x ptr] [ptr @.str.131, ptr @.str.99, ptr @.str.19, ptr @.str.15, ptr @.str.12], align 4
@.compoundliteral.360 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 264), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 288) }, align 4
@.str.361 = private unnamed_addr constant [8 x i8] c"uart7_k\00", align 1
@.compoundliteral.362 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 276), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 300) }, align 4
@.str.363 = private unnamed_addr constant [8 x i8] c"uart8_k\00", align 1
@.compoundliteral.364 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 288), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 300) }, align 4
@.str.365 = private unnamed_addr constant [8 x i8] c"fdcan_k\00", align 1
@fdcan_src = internal constant [4 x ptr] [ptr @.str.12, ptr @.str.78, ptr @.str.99, ptr @.str.106], align 4
@.compoundliteral.366 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 492), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 372) }, align 4
@.str.367 = private unnamed_addr constant [7 x i8] c"sai1_k\00", align 1
@sai_src = internal constant [5 x ptr] [ptr @.str.99, ptr @.str.78, ptr @.str.571, ptr @.str.113, ptr @.str.85], align 4
@.compoundliteral.368 = internal global %struct.stm32_composite_cfg { ptr @per_gate_cfg, ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 312) }, align 4
@.str.369 = private unnamed_addr constant [7 x i8] c"sai2_k\00", align 1
@sai2_src = internal constant [6 x ptr] [ptr @.str.99, ptr @.str.78, ptr @.str.571, ptr @.str.113, ptr @.str.572, ptr @.str.85], align 4
@.compoundliteral.370 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 12), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 324) }, align 4
@.str.371 = private unnamed_addr constant [7 x i8] c"sai3_k\00", align 1
@.compoundliteral.372 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 24), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 336) }, align 4
@.str.373 = private unnamed_addr constant [7 x i8] c"sai4_k\00", align 1
@.compoundliteral.374 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 36), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 348) }, align 4
@.str.375 = private unnamed_addr constant [8 x i8] c"adc12_k\00", align 1
@adc12_src = internal constant [3 x ptr] [ptr @.str.106, ptr @.str.113, ptr @.str.78], align 4
@.compoundliteral.376 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 528), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 384) }, align 4
@.str.377 = private unnamed_addr constant [6 x i8] c"dsi_k\00", align 1
@dsi_src = internal constant [2 x ptr] [ptr @.str.573, ptr @.str.92], align 4
@.compoundliteral.378 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 372), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 360) }, align 4
@.str.379 = private unnamed_addr constant [9 x i8] c"adfsdm_k\00", align 1
@.compoundliteral.380 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 576), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 312) }, align 4
@.str.381 = private unnamed_addr constant [7 x i8] c"usbo_k\00", align 1
@usbo_src = internal constant [2 x ptr] [ptr @.str.106, ptr @.str.574], align 4
@.compoundliteral.382 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 444), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 84) }, align 4
@.str.383 = private unnamed_addr constant [8 x i8] c"ethck_k\00", align 1
@eth_src = internal constant [2 x ptr] [ptr @.str.92, ptr @.str.78], align 4
@.compoundliteral.384 = internal global %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 1104), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 396) }, align 4
@.str.385 = private unnamed_addr constant [8 x i8] c"dfsdm_k\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"dsi_px\00", align 1
@.str.387 = private unnamed_addr constant [8 x i8] c"ltdc_px\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"gpu_k\00", align 1
@.str.389 = private unnamed_addr constant [8 x i8] c"dac12_k\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"ethptp_k\00", align 1
@.compoundliteral.391 = internal global %struct.div_cfg { i32 2300, i8 4, i8 4, i8 0, ptr null }, align 4
@.compoundliteral.392 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.391, ptr null }, align 4
@.compoundliteral.393 = internal global %struct.stm32_composite_cfg { ptr null, ptr @.compoundliteral.392, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 396) }, align 4
@.str.394 = private unnamed_addr constant [7 x i8] c"ck_rtc\00", align 1
@rtc_src = internal constant [4 x ptr] [ptr @.str.575, ptr @.str.30, ptr @.str.27, ptr @.str.12], align 4
@.compoundliteral.395 = internal global %struct.gate_cfg { i32 320, i8 20, i8 0 }, align 4
@.compoundliteral.396 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.395, ptr null, ptr null }, align 4
@.compoundliteral.397 = internal global %struct.div_cfg { i32 68, i8 0, i8 6, i8 0, ptr null }, align 4
@rtc_div_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_rtc_recalc_rate, ptr null, ptr @clk_divider_rtc_determine_rate, ptr null, ptr null, ptr @clk_divider_rtc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.398 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.397, ptr @rtc_div_clk_ops }, align 4
@.compoundliteral.399 = internal global %struct.mux_cfg { i32 320, i8 16, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.400 = internal global %struct.stm32_mux_cfg { ptr @.compoundliteral.399, ptr null, ptr null }, align 4
@.compoundliteral.401 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.396, ptr @.compoundliteral.398, ptr @.compoundliteral.400 }, align 4
@.str.402 = private unnamed_addr constant [8 x i8] c"ck_mco1\00", align 1
@mco1_src = internal constant [5 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.15, ptr @.str.27, ptr @.str.30], align 4
@.compoundliteral.403 = internal global %struct.gate_cfg { i32 2048, i8 12, i8 0 }, align 4
@.compoundliteral.404 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.403, ptr null, ptr null }, align 4
@.compoundliteral.405 = internal global %struct.div_cfg { i32 2048, i8 4, i8 4, i8 0, ptr null }, align 4
@.compoundliteral.406 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.405, ptr null }, align 4
@.compoundliteral.407 = internal global %struct.mux_cfg { i32 2048, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.408 = internal global %struct.stm32_mux_cfg { ptr @.compoundliteral.407, ptr null, ptr null }, align 4
@.compoundliteral.409 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.404, ptr @.compoundliteral.406, ptr @.compoundliteral.408 }, align 4
@.str.410 = private unnamed_addr constant [8 x i8] c"ck_mco2\00", align 1
@mco2_src = internal constant [6 x ptr] [ptr @.str.115, ptr @.str.117, ptr @.str.123, ptr @.str.92, ptr @.str.12, ptr @.str.19], align 4
@.compoundliteral.411 = internal global %struct.gate_cfg { i32 2052, i8 12, i8 0 }, align 4
@.compoundliteral.412 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.411, ptr null, ptr null }, align 4
@.compoundliteral.413 = internal global %struct.div_cfg { i32 2052, i8 4, i8 4, i8 0, ptr null }, align 4
@.compoundliteral.414 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.413, ptr null }, align 4
@.compoundliteral.415 = internal global %struct.mux_cfg { i32 2052, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.416 = internal global %struct.stm32_mux_cfg { ptr @.compoundliteral.415, ptr null, ptr null }, align 4
@.compoundliteral.417 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.412, ptr @.compoundliteral.414, ptr @.compoundliteral.416 }, align 4
@.str.418 = private unnamed_addr constant [11 x i8] c"ck_sys_dbg\00", align 1
@.compoundliteral.419 = internal global %struct.gate_cfg { i32 2060, i8 8, i8 0 }, align 4
@.str.420 = private unnamed_addr constant [9 x i8] c"ck_trace\00", align 1
@ck_trace_src = internal constant [1 x ptr] [ptr @.str.117], align 4
@.compoundliteral.421 = internal global %struct.gate_cfg { i32 2060, i8 9, i8 0 }, align 4
@.compoundliteral.422 = internal global %struct.stm32_gate_cfg { ptr @.compoundliteral.421, ptr null, ptr null }, align 4
@ck_trace_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 16 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.compoundliteral.423 = internal global %struct.div_cfg { i32 2060, i8 0, i8 3, i8 0, ptr @ck_trace_div_table }, align 4
@.compoundliteral.424 = internal global %struct.stm32_div_cfg { ptr @.compoundliteral.423, ptr null }, align 4
@.compoundliteral.425 = internal global %struct.stm32_composite_cfg { ptr @.compoundliteral.422, ptr @.compoundliteral.424, ptr null }, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pll_enable, ptr @pll_disable, ptr @pll_is_enabled, ptr null, ptr null, ptr null, ptr @pll_recalc_rate, ptr null, ptr null, ptr null, ptr @pll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@timer_ker_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timer_ker_recalc_rate, ptr @timer_ker_round_rate, ptr null, ptr null, ptr null, ptr @timer_ker_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.426 = internal global %struct.gate_cfg { i32 2568, i8 16, i8 0 }, align 4
@mp1_mgate = internal global [110 x %struct.stm32_mgate] zeroinitializer, align 4
@mp1_mgate_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mp1_mgate_clk_enable, ptr @mp1_mgate_clk_disable, ptr @clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.427 = internal global %struct.gate_cfg { i32 2568, i8 17, i8 0 }, align 4
@.compoundliteral.428 = internal global %struct.gate_cfg { i32 2568, i8 18, i8 0 }, align 4
@.compoundliteral.429 = internal global %struct.gate_cfg { i32 2576, i8 8, i8 0 }, align 4
@.compoundliteral.430 = internal global %struct.gate_cfg { i32 2568, i8 8, i8 0 }, align 4
@.compoundliteral.431 = internal global %struct.gate_cfg { i32 2560, i8 11, i8 0 }, align 4
@.compoundliteral.432 = internal global %struct.gate_cfg { i32 2560, i8 12, i8 0 }, align 4
@.compoundliteral.433 = internal global %struct.gate_cfg { i32 2568, i8 9, i8 0 }, align 4
@.compoundliteral.434 = internal global %struct.gate_cfg { i32 2568, i8 10, i8 0 }, align 4
@.compoundliteral.435 = internal global %struct.gate_cfg { i32 520, i8 0, i8 0 }, align 4
@.compoundliteral.436 = internal global %struct.gate_cfg { i32 2560, i8 26, i8 0 }, align 4
@.compoundliteral.437 = internal global %struct.gate_cfg { i32 2560, i8 21, i8 0 }, align 4
@.compoundliteral.438 = internal global %struct.gate_cfg { i32 2560, i8 22, i8 0 }, align 4
@.compoundliteral.439 = internal global %struct.gate_cfg { i32 2560, i8 23, i8 0 }, align 4
@.compoundliteral.440 = internal global %struct.gate_cfg { i32 520, i8 2, i8 0 }, align 4
@.compoundliteral.441 = internal global %struct.gate_cfg { i32 2560, i8 24, i8 0 }, align 4
@.compoundliteral.442 = internal global %struct.gate_cfg { i32 520, i8 3, i8 0 }, align 4
@.compoundliteral.443 = internal global %struct.gate_cfg { i32 2560, i8 14, i8 0 }, align 4
@.compoundliteral.444 = internal global %struct.gate_cfg { i32 2560, i8 16, i8 0 }, align 4
@.compoundliteral.445 = internal global %struct.gate_cfg { i32 2560, i8 15, i8 0 }, align 4
@.compoundliteral.446 = internal global %struct.gate_cfg { i32 2560, i8 17, i8 0 }, align 4
@.compoundliteral.447 = internal global %struct.gate_cfg { i32 520, i8 4, i8 0 }, align 4
@.compoundliteral.448 = internal global %struct.gate_cfg { i32 2568, i8 13, i8 0 }, align 4
@.compoundliteral.449 = internal global %struct.gate_cfg { i32 2560, i8 18, i8 0 }, align 4
@.compoundliteral.450 = internal global %struct.gate_cfg { i32 2560, i8 19, i8 0 }, align 4
@.compoundliteral.451 = internal global %struct.gate_cfg { i32 2560, i8 9, i8 0 }, align 4
@.compoundliteral.452 = internal global %struct.gate_cfg { i32 2576, i8 0, i8 0 }, align 4
@.compoundliteral.453 = internal global %struct.gate_cfg { i32 2576, i8 1, i8 0 }, align 4
@.compoundliteral.454 = internal global %struct.gate_cfg { i32 2576, i8 2, i8 0 }, align 4
@.compoundliteral.455 = internal global %struct.gate_cfg { i32 2576, i8 3, i8 0 }, align 4
@.compoundliteral.456 = internal global %struct.gate_cfg { i32 512, i8 0, i8 0 }, align 4
@.compoundliteral.457 = internal global %struct.gate_cfg { i32 512, i8 4, i8 0 }, align 4
@.compoundliteral.458 = internal global %struct.gate_cfg { i32 536, i8 14, i8 0 }, align 4
@.compoundliteral.459 = internal global %struct.gate_cfg { i32 536, i8 12, i8 0 }, align 4
@.compoundliteral.460 = internal global %struct.gate_cfg { i32 536, i8 16, i8 0 }, align 4
@.compoundliteral.461 = internal global %struct.gate_cfg { i32 536, i8 17, i8 0 }, align 4
@.compoundliteral.462 = internal global %struct.gate_cfg { i32 2584, i8 16, i8 0 }, align 4
@.compoundliteral.463 = internal global %struct.gate_cfg { i32 2584, i8 8, i8 0 }, align 4
@.compoundliteral.464 = internal global %struct.gate_cfg { i32 512, i8 16, i8 0 }, align 4
@.compoundliteral.465 = internal global %struct.gate_cfg { i32 528, i8 6, i8 0 }, align 4
@.compoundliteral.466 = internal global %struct.gate_cfg { i32 2592, i8 6, i8 0 }, align 4
@.compoundliteral.467 = internal global %struct.gate_cfg { i32 2568, i8 24, i8 0 }, align 4
@.compoundliteral.468 = internal global %struct.gate_cfg { i32 2560, i8 29, i8 0 }, align 4
@.compoundliteral.469 = internal global %struct.gate_cfg { i32 2560, i8 27, i8 0 }, align 4
@.compoundliteral.470 = internal global %struct.gate_cfg { i32 2584, i8 5, i8 0 }, align 4
@.compoundliteral.471 = internal global %struct.gate_cfg { i32 536, i8 5, i8 0 }, align 4
@.compoundliteral.472 = internal global %struct.gate_cfg { i32 520, i8 20, i8 0 }, align 4
@.compoundliteral.473 = internal global %struct.gate_cfg { i32 2568, i8 20, i8 0 }, align 4
@.compoundliteral.474 = internal global %struct.gate_cfg { i32 2568, i8 21, i8 0 }, align 4
@.compoundliteral.475 = internal global %struct.gate_cfg { i32 2560, i8 0, i8 0 }, align 4
@.compoundliteral.476 = internal global %struct.gate_cfg { i32 2560, i8 1, i8 0 }, align 4
@.compoundliteral.477 = internal global %struct.gate_cfg { i32 2560, i8 2, i8 0 }, align 4
@.compoundliteral.478 = internal global %struct.gate_cfg { i32 2560, i8 3, i8 0 }, align 4
@.compoundliteral.479 = internal global %struct.gate_cfg { i32 2560, i8 4, i8 0 }, align 4
@.compoundliteral.480 = internal global %struct.gate_cfg { i32 2560, i8 5, i8 0 }, align 4
@.compoundliteral.481 = internal global %struct.gate_cfg { i32 2560, i8 6, i8 0 }, align 4
@.compoundliteral.482 = internal global %struct.gate_cfg { i32 2560, i8 7, i8 0 }, align 4
@.compoundliteral.483 = internal global %struct.gate_cfg { i32 2560, i8 8, i8 0 }, align 4
@.compoundliteral.484 = internal global %struct.gate_cfg { i32 2560, i8 31, i8 0 }, align 4
@.compoundliteral.485 = internal global %struct.gate_cfg { i32 2568, i8 0, i8 0 }, align 4
@.compoundliteral.486 = internal global %struct.gate_cfg { i32 2568, i8 1, i8 0 }, align 4
@.compoundliteral.487 = internal global %struct.gate_cfg { i32 2568, i8 2, i8 0 }, align 4
@.compoundliteral.488 = internal global %struct.gate_cfg { i32 2568, i8 3, i8 0 }, align 4
@.compoundliteral.489 = internal global %struct.gate_cfg { i32 2568, i8 4, i8 0 }, align 4
@.compoundliteral.490 = internal global %struct.gate_cfg { i32 2576, i8 11, i8 0 }, align 4
@.compoundliteral.491 = internal global %struct.gate_cfg { i32 2576, i8 13, i8 0 }, align 4
@.compoundliteral.492 = internal global %struct.gate_cfg { i32 2576, i8 16, i8 0 }, align 4
@.compoundliteral.493 = internal global %struct.gate_cfg { i32 2576, i8 17, i8 0 }, align 4
@.compoundliteral.494 = internal global %struct.gate_cfg { i32 2576, i8 20, i8 0 }, align 4
@.compoundliteral.495 = internal global %struct.gate_cfg { i32 512, i8 15, i8 0 }, align 4
@.compoundliteral.496 = internal global %struct.gate_cfg { i32 512, i8 20, i8 0 }, align 4
@.compoundliteral.497 = internal global %struct.gate_cfg { i32 2584, i8 0, i8 0 }, align 4
@.compoundliteral.498 = internal global %struct.gate_cfg { i32 2584, i8 1, i8 0 }, align 4
@.compoundliteral.499 = internal global %struct.gate_cfg { i32 2584, i8 2, i8 0 }, align 4
@.compoundliteral.500 = internal global %struct.gate_cfg { i32 2592, i8 0, i8 0 }, align 4
@.compoundliteral.501 = internal global %struct.gate_cfg { i32 2592, i8 4, i8 0 }, align 4
@.compoundliteral.502 = internal global %struct.gate_cfg { i32 2592, i8 5, i8 0 }, align 4
@.compoundliteral.503 = internal global %struct.gate_cfg { i32 2592, i8 7, i8 0 }, align 4
@.compoundliteral.504 = internal global %struct.gate_cfg { i32 2592, i8 11, i8 0 }, align 4
@.compoundliteral.505 = internal global %struct.gate_cfg { i32 2592, i8 12, i8 0 }, align 4
@.compoundliteral.506 = internal global %struct.gate_cfg { i32 2600, i8 0, i8 0 }, align 4
@.compoundliteral.507 = internal global %struct.gate_cfg { i32 2600, i8 1, i8 0 }, align 4
@.compoundliteral.508 = internal global %struct.gate_cfg { i32 2600, i8 2, i8 0 }, align 4
@.compoundliteral.509 = internal global %struct.gate_cfg { i32 2600, i8 3, i8 0 }, align 4
@.compoundliteral.510 = internal global %struct.gate_cfg { i32 2600, i8 4, i8 0 }, align 4
@.compoundliteral.511 = internal global %struct.gate_cfg { i32 2600, i8 5, i8 0 }, align 4
@.compoundliteral.512 = internal global %struct.gate_cfg { i32 2600, i8 6, i8 0 }, align 4
@.compoundliteral.513 = internal global %struct.gate_cfg { i32 2600, i8 7, i8 0 }, align 4
@.compoundliteral.514 = internal global %struct.gate_cfg { i32 2600, i8 8, i8 0 }, align 4
@.compoundliteral.515 = internal global %struct.gate_cfg { i32 2600, i8 9, i8 0 }, align 4
@.compoundliteral.516 = internal global %struct.gate_cfg { i32 2600, i8 10, i8 0 }, align 4
@.compoundliteral.517 = internal global %struct.gate_cfg { i32 536, i8 0, i8 0 }, align 4
@.compoundliteral.518 = internal global %struct.gate_cfg { i32 536, i8 7, i8 0 }, align 4
@.compoundliteral.519 = internal global %struct.gate_cfg { i32 536, i8 8, i8 0 }, align 4
@.compoundliteral.520 = internal global %struct.gate_cfg { i32 536, i8 9, i8 0 }, align 4
@.compoundliteral.521 = internal global %struct.gate_cfg { i32 536, i8 10, i8 0 }, align 4
@.compoundliteral.522 = internal global %struct.gate_cfg { i32 536, i8 20, i8 0 }, align 4
@.compoundliteral.523 = internal global %struct.gate_cfg { i32 536, i8 24, i8 0 }, align 4
@.compoundliteral.524 = internal global %struct.gate_cfg { i32 792, i8 11, i8 0 }, align 4
@.compoundliteral.525 = internal global %struct.gate_cfg { i32 520, i8 8, i8 0 }, align 4
@.compoundliteral.526 = internal global %struct.gate_cfg { i32 520, i8 11, i8 0 }, align 4
@.compoundliteral.527 = internal global %struct.gate_cfg { i32 520, i8 12, i8 0 }, align 4
@.compoundliteral.528 = internal global %struct.gate_cfg { i32 520, i8 13, i8 0 }, align 4
@.compoundliteral.529 = internal global %struct.gate_cfg { i32 520, i8 15, i8 0 }, align 4
@.compoundliteral.530 = internal global %struct.gate_cfg { i32 520, i8 16, i8 0 }, align 4
@.compoundliteral.531 = internal global %struct.gate_cfg { i32 528, i8 0, i8 0 }, align 4
@.compoundliteral.532 = internal global %struct.gate_cfg { i32 528, i8 4, i8 0 }, align 4
@.compoundliteral.533 = internal global %struct.gate_cfg { i32 528, i8 5, i8 0 }, align 4
@.compoundliteral.534 = internal global %struct.gate_cfg { i32 528, i8 8, i8 0 }, align 4
@.compoundliteral.535 = internal global %struct.gate_cfg { i32 512, i8 8, i8 0 }, align 4
@.compoundliteral.536 = internal global %struct.mux_cfg { i32 2292, i8 0, i8 3, i8 0, ptr null }, align 4
@ker_mux = internal global [35 x %struct.stm32_mmux] zeroinitializer, align 4
@clk_mmux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @clk_mmux_set_parent, ptr @clk_mmux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral.537 = internal global %struct.mux_cfg { i32 2296, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.538 = internal global %struct.mux_cfg { i32 2308, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.539 = internal global %struct.mux_cfg { i32 2304, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.540 = internal global %struct.mux_cfg { i32 204, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.541 = internal global %struct.mux_cfg { i32 2336, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.542 = internal global %struct.mux_cfg { i32 2332, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.543 = internal global %struct.mux_cfg { i32 2332, i8 4, i8 1, i8 0, ptr null }, align 4
@.compoundliteral.544 = internal global %struct.mux_cfg { i32 212, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.545 = internal global %struct.mux_cfg { i32 2324, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.546 = internal global %struct.mux_cfg { i32 2264, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.547 = internal global %struct.mux_cfg { i32 2268, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.548 = internal global %struct.mux_cfg { i32 2272, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.549 = internal global %struct.mux_cfg { i32 196, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.550 = internal global %struct.mux_cfg { i32 2328, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.551 = internal global %struct.mux_cfg { i32 2240, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.552 = internal global %struct.mux_cfg { i32 2244, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.553 = internal global %struct.mux_cfg { i32 192, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.554 = internal global %struct.mux_cfg { i32 2356, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.555 = internal global %struct.mux_cfg { i32 2352, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.556 = internal global %struct.mux_cfg { i32 2348, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.557 = internal global %struct.mux_cfg { i32 200, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.558 = internal global %struct.mux_cfg { i32 2280, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.559 = internal global %struct.mux_cfg { i32 2284, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.560 = internal global %struct.mux_cfg { i32 2276, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.561 = internal global %struct.mux_cfg { i32 2288, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.562 = internal global %struct.mux_cfg { i32 2248, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.563 = internal global %struct.mux_cfg { i32 2252, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.564 = internal global %struct.mux_cfg { i32 2256, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.565 = internal global %struct.mux_cfg { i32 2260, i8 0, i8 3, i8 0, ptr null }, align 4
@.compoundliteral.566 = internal global %struct.mux_cfg { i32 2340, i8 0, i8 1, i8 0, ptr null }, align 4
@.compoundliteral.567 = internal global %struct.mux_cfg { i32 2316, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.568 = internal global %struct.mux_cfg { i32 2344, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.569 = internal global %struct.mux_cfg { i32 2300, i8 0, i8 2, i8 0, ptr null }, align 4
@.compoundliteral.570 = internal global %struct.mux_cfg { i32 208, i8 0, i8 2, i8 0, ptr null }, align 4
@.str.571 = private unnamed_addr constant [9 x i8] c"i2s_ckin\00", align 1
@.str.572 = private unnamed_addr constant [14 x i8] c"spdif_ck_symb\00", align 1
@.str.573 = private unnamed_addr constant [11 x i8] c"ck_dsi_phy\00", align 1
@.str.574 = private unnamed_addr constant [12 x i8] c"ck_usbo_48m\00", align 1
@.str.575 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@stm32mp1_clock_secured = internal unnamed_addr constant [36 x i32] [i32 0, i32 4, i32 1, i32 2, i32 3, i32 176, i32 177, i32 180, i32 183, i32 184, i32 185, i32 194, i32 195, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 113, i32 67, i32 68, i32 69, i32 70, i32 95, i32 96, i32 97, i32 98, i32 99, i32 124, i32 128, i32 135, i32 140, i32 142, i32 148, i32 192], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_stm32mp1__166_2429_stm32mp1_clocks_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32mp1_clocks_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32mp1_rcc_clocks_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mp1_rcc_clocks_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %196, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  br i1 %6, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %7, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ null, %5 ]
  %12 = tail call ptr @of_clk_get_by_name(ptr noundef %11, ptr noundef nonnull @.str.1) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  switch i32 %15, label %196 [
    i32 -22, label %19
    i32 -2, label %19
  ]

16:                                               ; preds = %10
  %17 = tail call ptr @__clk_get_name(ptr noundef %12) #9
  %18 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %17) #9
  store ptr %18, ptr %3, align 4
  tail call void @clk_put(ptr noundef %12) #9
  br label %19

19:                                               ; preds = %16, %14, %14
  br i1 %6, label %22, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %7, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi ptr [ %21, %20 ], [ null, %19 ]
  %24 = tail call ptr @of_clk_get_by_name(ptr noundef %23, ptr noundef nonnull @.str.2) #9
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @__clk_get_name(ptr noundef %24) #9
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %27) #9
  %29 = getelementptr ptr, ptr %3, i32 1
  store ptr %28, ptr %29, align 4
  tail call void @clk_put(ptr noundef %24) #9
  br label %32

30:                                               ; preds = %22
  %31 = ptrtoint ptr %24 to i32
  switch i32 %31, label %196 [
    i32 -22, label %32
    i32 -2, label %32
  ]

32:                                               ; preds = %30, %30, %26
  br i1 %6, label %35, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %7, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi ptr [ %34, %33 ], [ null, %32 ]
  %37 = tail call ptr @of_clk_get_by_name(ptr noundef %36, ptr noundef nonnull @.str.3) #9
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @__clk_get_name(ptr noundef %37) #9
  %41 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %40) #9
  %42 = getelementptr ptr, ptr %3, i32 2
  store ptr %41, ptr %42, align 4
  tail call void @clk_put(ptr noundef %37) #9
  br label %45

43:                                               ; preds = %35
  %44 = ptrtoint ptr %37 to i32
  switch i32 %44, label %196 [
    i32 -22, label %45
    i32 -2, label %45
  ]

45:                                               ; preds = %43, %43, %39
  br i1 %6, label %48, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr %7, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi ptr [ %47, %46 ], [ null, %45 ]
  %50 = tail call ptr @of_clk_get_by_name(ptr noundef %49, ptr noundef nonnull @.str.4) #9
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @__clk_get_name(ptr noundef %50) #9
  %54 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %53) #9
  %55 = getelementptr ptr, ptr %3, i32 3
  store ptr %54, ptr %55, align 4
  tail call void @clk_put(ptr noundef %50) #9
  br label %58

56:                                               ; preds = %48
  %57 = ptrtoint ptr %50 to i32
  switch i32 %57, label %196 [
    i32 -22, label %58
    i32 -2, label %58
  ]

58:                                               ; preds = %56, %56, %52
  br i1 %6, label %61, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %7, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi ptr [ %60, %59 ], [ null, %58 ]
  %63 = tail call ptr @of_clk_get_by_name(ptr noundef %62, ptr noundef nonnull @.str.5) #9
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @__clk_get_name(ptr noundef %63) #9
  %67 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %66) #9
  %68 = getelementptr ptr, ptr %3, i32 4
  store ptr %67, ptr %68, align 4
  tail call void @clk_put(ptr noundef %63) #9
  br label %71

69:                                               ; preds = %61
  %70 = ptrtoint ptr %63 to i32
  switch i32 %70, label %196 [
    i32 -22, label %71
    i32 -2, label %71
  ]

71:                                               ; preds = %69, %69, %65
  br i1 %6, label %72, label %75

72:                                               ; preds = %71
  %73 = tail call ptr @of_iomap(ptr noundef null, i32 noundef 0) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %83

75:                                               ; preds = %71
  %76 = load ptr, ptr %7, align 8
  %77 = tail call ptr @of_iomap(ptr noundef %76, i32 noundef 0) #9
  %78 = icmp eq ptr %77, null
  %79 = load ptr, ptr %7, align 8
  br i1 %78, label %80, label %83

80:                                               ; preds = %75, %72
  %81 = phi ptr [ null, %72 ], [ %79, %75 ]
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %81) #10
  br label %190

83:                                               ; preds = %75, %72
  %84 = phi ptr [ %73, %72 ], [ %77, %75 ]
  %85 = phi ptr [ null, %72 ], [ %79, %75 ]
  %86 = tail call ptr @of_match_node(ptr noundef nonnull @stm32mp1_match_data, ptr noundef %85) #9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %188

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.of_device_id, ptr %86, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 56) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %110, label %95

95:                                               ; preds = %89
  store i32 0, ptr %93, align 8
  %96 = getelementptr inbounds %struct.stm32_reset_data, ptr %93, i32 0, i32 2
  store ptr %84, ptr %96, align 8
  %97 = getelementptr inbounds %struct.stm32_reset_data, ptr %93, i32 0, i32 1
  %98 = getelementptr inbounds %struct.stm32_reset_data, ptr %93, i32 0, i32 1, i32 1
  store ptr null, ptr %98, align 8
  store ptr @stm32_reset_ops, ptr %97, align 4
  br i1 %6, label %101, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %7, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi ptr [ %100, %99 ], [ null, %95 ]
  %103 = getelementptr inbounds %struct.stm32_reset_data, ptr %93, i32 0, i32 1, i32 5
  store ptr %102, ptr %103, align 8
  %104 = getelementptr inbounds %struct.stm32_reset_data, ptr %93, i32 0, i32 1, i32 8
  store i32 65535, ptr %104, align 4
  %105 = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %91, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.stm32_reset_data, ptr %93, i32 0, i32 3
  store i32 %106, ptr %107, align 4
  %108 = tail call i32 @reset_controller_register(ptr noundef %97) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %101, %89
  %111 = phi i32 [ %108, %101 ], [ -12, %89 ]
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %188

113:                                              ; preds = %101
  %114 = load ptr, ptr %90, align 4
  %115 = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %116, i32 4) #9
  %118 = extractvalue { i32, i1 } %117, 1
  %119 = extractvalue { i32, i1 } %117, 0
  %120 = tail call i32 @llvm.uadd.sat.i32(i32 %119, i32 4) #9
  %121 = select i1 %118, i32 -1, i32 %120
  %122 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %121, i32 noundef 3520) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %188

126:                                              ; preds = %113
  store i32 %116, ptr %122, align 4
  %127 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %122, i32 0, i32 1
  %128 = icmp sgt i32 %116, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %135, %126
  %130 = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %114, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %177, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %114, i32 0, i32 4
  br label %140

135:                                              ; preds = %135, %126
  %136 = phi i32 [ %138, %135 ], [ 0, %126 ]
  %137 = getelementptr ptr, ptr %127, i32 %136
  store ptr inttoptr (i32 -2 to ptr), ptr %137, align 4
  %138 = add nuw nsw i32 %136, 1
  %139 = icmp eq i32 %138, %116
  br i1 %139, label %129, label %135

140:                                              ; preds = %173, %133
  %141 = phi i32 [ 0, %133 ], [ %174, %173 ]
  %142 = load ptr, ptr %134, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %114, align 4
  %146 = getelementptr %struct.clock_config, ptr %145, i32 %141
  %147 = tail call zeroext i1 %142(ptr noundef %146) #9
  br i1 %147, label %173, label %148

148:                                              ; preds = %144, %140
  %149 = load ptr, ptr %114, align 4
  %150 = getelementptr %struct.clock_config, ptr %149, i32 %141
  %151 = getelementptr %struct.clock_config, ptr %149, i32 %141, i32 7
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %162, label %154

154:                                              ; preds = %148
  %155 = tail call ptr %152(ptr noundef %2, ptr noundef nonnull %122, ptr noundef %84, ptr noundef nonnull @rlock, ptr noundef %150) #9
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load i32, ptr %150, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %173, label %160

160:                                              ; preds = %157
  %161 = getelementptr ptr, ptr %127, i32 %158
  store ptr %155, ptr %161, align 4
  br label %173

162:                                              ; preds = %154, %148
  %163 = phi ptr [ %155, %154 ], [ inttoptr (i32 -2 to ptr), %148 ]
  %164 = getelementptr %struct.clock_config, ptr %149, i32 %141, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %165) #10
  %167 = icmp eq ptr %163, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = ptrtoint ptr %163 to i32
  %170 = load ptr, ptr %114, align 4
  %171 = getelementptr %struct.clock_config, ptr %170, i32 %141, i32 1
  %172 = load ptr, ptr %171, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %172, i32 noundef %169) #10
  br label %183

173:                                              ; preds = %162, %160, %157, %144
  %174 = add nuw i32 %141, 1
  %175 = load i32, ptr %130, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %140, label %177

177:                                              ; preds = %173, %129
  br i1 %6, label %180, label %178

178:                                              ; preds = %177
  %179 = load ptr, ptr %7, align 8
  br label %180

180:                                              ; preds = %178, %177
  %181 = phi ptr [ %179, %178 ], [ null, %177 ]
  %182 = tail call i32 @of_clk_add_hw_provider(ptr noundef %181, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %122) #9
  br label %183

183:                                              ; preds = %180, %168
  %184 = phi i32 [ %169, %168 ], [ %182, %180 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %183
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %188

188:                                              ; preds = %186, %124, %110, %88
  %189 = phi i32 [ %184, %186 ], [ -12, %124 ], [ %111, %110 ], [ -19, %88 ]
  tail call void @iounmap(ptr noundef nonnull %84) #9
  br label %190

190:                                              ; preds = %188, %80
  %191 = phi i32 [ %189, %188 ], [ -12, %80 ]
  br i1 %6, label %194, label %192

192:                                              ; preds = %190
  %193 = load ptr, ptr %7, align 8
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi ptr [ %193, %192 ], [ null, %190 ]
  tail call void @of_node_put(ptr noundef %195) #9
  br label %196

196:                                              ; preds = %194, %183, %69, %56, %43, %30, %14, %1
  %197 = phi i32 [ %191, %194 ], [ 0, %183 ], [ -12, %1 ], [ %70, %69 ], [ %57, %56 ], [ %44, %43 ], [ %31, %30 ], [ %15, %14 ]
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mp1_rcc_clocks_remove(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef null) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  tail call void @of_clk_del_provider(ptr noundef nonnull %12) #9
  %13 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %12) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_reset_assert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw nsw i32 %3, 2
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %13 = shl nuw i32 1, %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %13) #9, !srcloc !9
  br label %26

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #9
  %17 = getelementptr i8, ptr %0, i32 44
  %18 = load ptr, ptr %17, align 4
  %19 = shl nuw nsw i32 %3, 2
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %22 = shl nuw i32 1, %4
  %23 = or i32 %21, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #9
  br label %26

26:                                               ; preds = %14, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_reset_deassert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw nsw i32 %3, 2
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %14 = shl nuw i32 1, %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #9, !srcloc !9
  br label %28

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = getelementptr i8, ptr %0, i32 44
  %19 = load ptr, ptr %18, align 4
  %20 = shl nuw nsw i32 %3, 2
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %23 = shl nuw i32 1, %4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr i8, ptr %26, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #9
  br label %28

28:                                               ; preds = %15, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 31
  %4 = getelementptr i8, ptr %0, i32 44
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 3
  %7 = and i32 %6, 536870908
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = lshr i32 %9, %3
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_stm32_register_gate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store ptr %11, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  %16 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %16, i8 0, i32 12, i1 false) #9
  store ptr %9, ptr %7, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %13, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  %21 = getelementptr inbounds %struct.stm32_gate_cfg, ptr %15, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @clk_gate_ops, ptr %22
  store ptr %24, ptr %20, align 4
  %25 = getelementptr inbounds %struct.stm32_gate_cfg, ptr %15, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %5
  %29 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %15, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %2, i32 %33
  %35 = getelementptr inbounds %struct.clk_gate, ptr %29, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gate_cfg, ptr %32, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = getelementptr inbounds %struct.clk_gate, ptr %29, i32 0, i32 2
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.gate_cfg, ptr %32, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.clk_gate, ptr %29, i32 0, i32 3
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.clk_gate, ptr %29, i32 0, i32 4
  store ptr %3, ptr %42, align 4
  %43 = load ptr, ptr %25, align 4
  %44 = load i8, ptr %43, align 4
  %45 = add i8 %44, 1
  store i8 %45, ptr %43, align 4
  %46 = zext i8 %44 to i32
  %47 = shl nuw i32 1, %46
  %48 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %29, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %29, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  br label %66

51:                                               ; preds = %5
  %52 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %15, align 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %2, i32 %56
  %58 = getelementptr inbounds %struct.clk_gate, ptr %52, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.gate_cfg, ptr %55, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = getelementptr inbounds %struct.clk_gate, ptr %52, i32 0, i32 2
  store i8 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gate_cfg, ptr %55, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds %struct.clk_gate, ptr %52, i32 0, i32 3
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.clk_gate, ptr %52, i32 0, i32 4
  store ptr %3, ptr %65, align 4
  br label %66

66:                                               ; preds = %54, %31
  %67 = phi ptr [ %29, %31 ], [ %52, %54 ]
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.clk_hw, ptr %67, i32 0, i32 2
  store ptr %7, ptr %70, align 4
  %71 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %67) #9
  %72 = icmp eq i32 %71, 0
  %73 = inttoptr i32 %71 to ptr
  %74 = select i1 %72, ptr %67, ptr %73
  br label %75

75:                                               ; preds = %69, %66, %51, %28
  %76 = phi ptr [ inttoptr (i32 -12 to ptr), %66 ], [ inttoptr (i32 -12 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %51 ], [ %74, %69 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret ptr %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_stm32_register_composite(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stm32_composite_cfg, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.stm32_mux_cfg, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %19
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %17, align 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = getelementptr inbounds %struct.clk_mux, ptr %24, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mux_cfg, ptr %27, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = getelementptr inbounds %struct.clk_mux, ptr %24, i32 0, i32 4
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mux_cfg, ptr %27, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nsw i32 -1, %36
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds %struct.clk_mux, ptr %24, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mux_cfg, ptr %27, i32 0, i32 3
  %41 = load i8, ptr %40, align 2
  %42 = getelementptr inbounds %struct.clk_mux, ptr %24, i32 0, i32 5
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.mux_cfg, ptr %27, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.clk_mux, ptr %24, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_mux, ptr %24, i32 0, i32 6
  store ptr %3, ptr %46, align 4
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr inbounds %struct.stm32_clk_mmux, ptr %24, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = load i8, ptr %47, align 4
  %50 = add i8 %49, 1
  store i8 %50, ptr %47, align 4
  %51 = zext i8 %49 to i32
  %52 = getelementptr %struct.stm32_mmux, ptr %47, i32 0, i32 1, i32 %51
  store ptr %24, ptr %52, align 4
  br label %77

53:                                               ; preds = %19
  %54 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %86, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %17, align 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %2, i32 %58
  %60 = getelementptr inbounds %struct.clk_mux, ptr %54, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mux_cfg, ptr %57, i32 0, i32 1
  %62 = load i8, ptr %61, align 4
  %63 = getelementptr inbounds %struct.clk_mux, ptr %54, i32 0, i32 4
  store i8 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.mux_cfg, ptr %57, i32 0, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nsw i32 -1, %66
  %68 = xor i32 %67, -1
  %69 = getelementptr inbounds %struct.clk_mux, ptr %54, i32 0, i32 3
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mux_cfg, ptr %57, i32 0, i32 3
  %71 = load i8, ptr %70, align 2
  %72 = getelementptr inbounds %struct.clk_mux, ptr %54, i32 0, i32 5
  store i8 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.mux_cfg, ptr %57, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.clk_mux, ptr %54, i32 0, i32 2
  store ptr %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.clk_mux, ptr %54, i32 0, i32 6
  store ptr %3, ptr %76, align 4
  br label %77

77:                                               ; preds = %56, %26
  %78 = phi ptr [ %24, %26 ], [ %54, %56 ]
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %16, align 4
  %82 = getelementptr inbounds %struct.stm32_mux_cfg, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr @clk_mux_ops, ptr %83
  br label %86

86:                                               ; preds = %80, %77, %53, %23, %5
  %87 = phi ptr [ null, %77 ], [ null, %5 ], [ %85, %80 ], [ null, %23 ], [ null, %53 ]
  %88 = phi ptr [ %78, %77 ], [ null, %5 ], [ %78, %80 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -12 to ptr), %53 ]
  %89 = getelementptr inbounds %struct.stm32_composite_cfg, ptr %13, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %120, label %92

92:                                               ; preds = %86
  %93 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 28, i32 noundef 3520) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %120, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %90, align 4
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %2, i32 %97
  %99 = getelementptr inbounds %struct.clk_divider, ptr %93, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.div_cfg, ptr %96, i32 0, i32 1
  %101 = load i8, ptr %100, align 4
  %102 = getelementptr inbounds %struct.clk_divider, ptr %93, i32 0, i32 2
  store i8 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.div_cfg, ptr %96, i32 0, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr inbounds %struct.clk_divider, ptr %93, i32 0, i32 3
  store i8 %104, ptr %105, align 1
  %106 = getelementptr inbounds %struct.div_cfg, ptr %96, i32 0, i32 3
  %107 = load i8, ptr %106, align 2
  %108 = getelementptr inbounds %struct.clk_divider, ptr %93, i32 0, i32 4
  store i8 %107, ptr %108, align 2
  %109 = getelementptr inbounds %struct.div_cfg, ptr %96, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.clk_divider, ptr %93, i32 0, i32 5
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.clk_divider, ptr %93, i32 0, i32 6
  store ptr %3, ptr %112, align 4
  %113 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %120, label %114

114:                                              ; preds = %95
  %115 = load ptr, ptr %89, align 4
  %116 = getelementptr inbounds %struct.stm32_div_cfg, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  %119 = select i1 %118, ptr @clk_divider_ops, ptr %117
  br label %120

120:                                              ; preds = %114, %95, %92, %86
  %121 = phi ptr [ null, %95 ], [ null, %86 ], [ %119, %114 ], [ null, %92 ]
  %122 = phi ptr [ %93, %95 ], [ null, %86 ], [ %93, %114 ], [ inttoptr (i32 -12 to ptr), %92 ]
  %123 = load ptr, ptr %13, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %176, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.stm32_gate_cfg, ptr %123, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %152, label %129

129:                                              ; preds = %125
  %130 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #9
  %131 = icmp eq ptr %130, null
  br i1 %131, label %176, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %123, align 4
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i8, ptr %2, i32 %134
  %136 = getelementptr inbounds %struct.clk_gate, ptr %130, i32 0, i32 1
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.gate_cfg, ptr %133, i32 0, i32 1
  %138 = load i8, ptr %137, align 4
  %139 = getelementptr inbounds %struct.clk_gate, ptr %130, i32 0, i32 2
  store i8 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.gate_cfg, ptr %133, i32 0, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = getelementptr inbounds %struct.clk_gate, ptr %130, i32 0, i32 3
  store i8 %141, ptr %142, align 1
  %143 = getelementptr inbounds %struct.clk_gate, ptr %130, i32 0, i32 4
  store ptr %3, ptr %143, align 4
  %144 = load ptr, ptr %126, align 4
  %145 = load i8, ptr %144, align 4
  %146 = add i8 %145, 1
  store i8 %146, ptr %144, align 4
  %147 = zext i8 %145 to i32
  %148 = shl nuw i32 1, %147
  %149 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %130, i32 0, i32 2
  store i32 %148, ptr %149, align 4
  %150 = load ptr, ptr %126, align 4
  %151 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %130, i32 0, i32 1
  store ptr %150, ptr %151, align 4
  br label %167

152:                                              ; preds = %125
  %153 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #9
  %154 = icmp eq ptr %153, null
  br i1 %154, label %176, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %123, align 4
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr i8, ptr %2, i32 %157
  %159 = getelementptr inbounds %struct.clk_gate, ptr %153, i32 0, i32 1
  store ptr %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.gate_cfg, ptr %156, i32 0, i32 1
  %161 = load i8, ptr %160, align 4
  %162 = getelementptr inbounds %struct.clk_gate, ptr %153, i32 0, i32 2
  store i8 %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.gate_cfg, ptr %156, i32 0, i32 2
  %164 = load i8, ptr %163, align 1
  %165 = getelementptr inbounds %struct.clk_gate, ptr %153, i32 0, i32 3
  store i8 %164, ptr %165, align 1
  %166 = getelementptr inbounds %struct.clk_gate, ptr %153, i32 0, i32 4
  store ptr %3, ptr %166, align 4
  br label %167

167:                                              ; preds = %155, %132
  %168 = phi ptr [ %130, %132 ], [ %153, %155 ]
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %176, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %13, align 4
  %172 = getelementptr inbounds %struct.stm32_gate_cfg, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  %175 = select i1 %174, ptr @clk_gate_ops, ptr %173
  br label %176

176:                                              ; preds = %170, %167, %152, %129, %120
  %177 = phi ptr [ null, %167 ], [ null, %120 ], [ %175, %170 ], [ null, %129 ], [ null, %152 ]
  %178 = phi ptr [ %168, %167 ], [ null, %120 ], [ %168, %170 ], [ inttoptr (i32 -12 to ptr), %129 ], [ inttoptr (i32 -12 to ptr), %152 ]
  %179 = tail call ptr @clk_hw_register_composite(ptr noundef %0, ptr noundef %7, ptr noundef %9, i32 noundef %11, ptr noundef %88, ptr noundef %87, ptr noundef %122, ptr noundef %121, ptr noundef %178, ptr noundef %177, i32 noundef %15) #9
  ret ptr %179
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_gate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr i8, ptr %2, i32 %14
  %16 = getelementptr inbounds %struct.gate_cfg, ptr %7, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gate_cfg, ptr %7, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = tail call ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef null, ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef null, i32 noundef %13, ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext %19, ptr noundef %3) #9
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_fixed_factor(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr inbounds %struct.fixed_factor_cfg, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef %0, ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %14, i32 noundef %16) #9
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_register_pll(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = alloca %struct.clk_init_data, align 4
  %7 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %8, align 4
  %16 = getelementptr inbounds %struct.stm32_pll_cfg, ptr %8, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  %20 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %20, i8 0, i32 12, i1 false) #9, !annotation !14
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 52, i32 noundef 3520) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %5
  %24 = getelementptr i8, ptr %2, i32 %17
  %25 = getelementptr i8, ptr %2, i32 %15
  store ptr %10, ptr %6, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @pll_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 %19, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %12, ptr %28, align 4
  %29 = trunc i32 %14 to i8
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 3, i32 6
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 3, i32 1
  %33 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 3, i32 4
  store i8 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 3, i32 3
  store i32 3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 3, i32 5
  store i8 8, ptr %35, align 1
  store ptr %24, ptr %32, align 4
  %36 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 2
  %37 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 2, i32 2
  store ptr %6, ptr %37, align 4
  %38 = getelementptr inbounds %struct.stm32_pll_obj, ptr %21, i32 0, i32 1
  store ptr %25, ptr %38, align 4
  store ptr %3, ptr %21, align 4
  %39 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef %36) #9
  %40 = icmp eq i32 %39, 0
  %41 = inttoptr i32 %39 to ptr
  %42 = select i1 %40, ptr %36, ptr %41
  br label %43

43:                                               ; preds = %23, %5
  %44 = phi ptr [ inttoptr (i32 -12 to ptr), %5 ], [ %42, %23 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_mux(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = getelementptr inbounds %struct.mux_cfg, ptr %7, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mux_cfg, ptr %7, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.mux_cfg, ptr %7, i32 0, i32 3
  %27 = load i8, ptr %26, align 2
  %28 = tail call ptr @__clk_hw_register_mux(ptr noundef %0, ptr noundef null, ptr noundef %9, i8 noundef zeroext %12, ptr noundef %14, ptr noundef null, ptr noundef null, i32 noundef %16, ptr noundef %18, i8 noundef zeroext %20, i32 noundef %25, i8 noundef zeroext %27, ptr noundef null, ptr noundef %3) #9
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_divider_table(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr i8, ptr %2, i32 %14
  %16 = getelementptr inbounds %struct.div_cfg, ptr %7, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.div_cfg, ptr %7, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.div_cfg, ptr %7, i32 0, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.div_cfg, ptr %7, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @__clk_hw_register_divider(ptr noundef %0, ptr noundef null, ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef null, i32 noundef %13, ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext %19, i8 noundef zeroext %21, ptr noundef %23, ptr noundef %3) #9
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @_clk_register_cktim(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  %8 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clock_config, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %9, align 4
  %17 = getelementptr inbounds %struct.stm32_cktim_cfg, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store ptr %13, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  %19 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %19, i8 0, i32 12, i1 false) #9, !annotation !14
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %5
  %23 = getelementptr i8, ptr %2, i32 %18
  %24 = getelementptr i8, ptr %2, i32 %16
  store ptr %11, ptr %7, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @timer_ker_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.timer_cker, ptr %20, i32 0, i32 3
  %30 = getelementptr inbounds %struct.timer_cker, ptr %20, i32 0, i32 3, i32 2
  store ptr %7, ptr %30, align 4
  store ptr %3, ptr %20, align 4
  %31 = getelementptr inbounds %struct.timer_cker, ptr %20, i32 0, i32 1
  store ptr %24, ptr %31, align 4
  %32 = getelementptr inbounds %struct.timer_cker, ptr %20, i32 0, i32 2
  store ptr %23, ptr %32, align 4
  %33 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef %29) #9
  %34 = icmp eq i32 %33, 0
  %35 = inttoptr i32 %33 to ptr
  %36 = select i1 %34, ptr %29, ptr %35
  br label %37

37:                                               ; preds = %22, %5
  %38 = phi ptr [ inttoptr (i32 -12 to ptr), %5 ], [ %36, %22 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mp1_gate_clk_enable(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %3 = tail call i32 %2(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %7 = tail call i32 %6(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mp1_gate_clk_disable(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %3 = tail call i32 %2(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #9, !srcloc !9
  %16 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %8) #9
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_gate_is_enabled(ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pll_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  %13 = or i32 %12, 1
  %14 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #9, !srcloc !9
  %15 = load ptr, ptr %5, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !10
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %10
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 25769760) #9
  %21 = load ptr, ptr %5, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 25769760) #9
  %27 = load ptr, ptr %5, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !10
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 25769760) #9
  %33 = load ptr, ptr %5, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !10
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 25769760) #9
  %39 = load ptr, ptr %5, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !10
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 25769760) #9
  br label %45

45:                                               ; preds = %43, %37, %31, %25, %19, %10
  %46 = phi i32 [ %17, %10 ], [ %23, %19 ], [ %29, %25 ], [ %35, %31 ], [ %41, %37 ], [ 0, %43 ]
  %47 = lshr exact i32 %46, 1
  %48 = xor i32 %47, 1
  br label %49

49:                                               ; preds = %45, %1
  %50 = phi i32 [ 0, %1 ], [ %48, %45 ]
  %51 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %4) #9
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pll_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = and i32 %7, -2
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !9
  %10 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pll_is_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = and i32 %7, 1
  %9 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %4) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 63
  %9 = add nuw nsw i32 %8, 1
  %10 = and i32 %6, 511
  %11 = add nuw nsw i32 %10, 1
  %12 = zext i32 %1 to i64
  %13 = zext i32 %11 to i64
  %14 = mul nuw nsw i64 %13, %12
  %15 = icmp ult i64 %14, 4294967296
  br i1 %15, label %16, label %20, !prof !15

16:                                               ; preds = %2
  %17 = trunc i64 %14 to i32
  %18 = udiv i32 %17, %9
  %19 = zext i32 %18 to i64
  br label %23

20:                                               ; preds = %2
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %14) #12, !srcloc !16
  %22 = extractvalue { i64, i64 } %21, 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i64 [ %19, %16 ], [ %22, %20 ]
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !10
  %28 = and i32 %27, 65536
  %29 = icmp eq i32 %28, 0
  %30 = lshr i32 %27, 3
  %31 = and i32 %30, 8191
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %29, i1 true, i1 %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %23
  %35 = zext i32 %31 to i64
  %36 = mul nuw nsw i64 %35, %12
  %37 = shl nuw nsw i32 %9, 13
  %38 = icmp ult i64 %36, 4294967296
  br i1 %38, label %39, label %43, !prof !15

39:                                               ; preds = %34
  %40 = trunc i64 %36 to i32
  %41 = udiv i32 %40, %37
  %42 = zext i32 %41 to i64
  br label %46

43:                                               ; preds = %34
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %36) #12, !srcloc !16
  %45 = extractvalue { i64, i64 } %44, 1
  br label %46

46:                                               ; preds = %43, %39, %23
  %47 = phi i64 [ 0, %23 ], [ %42, %39 ], [ %45, %43 ]
  %48 = add i64 %47, %24
  %49 = trunc i64 %48 to i32
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @pll_get_parent(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 16
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %8 = tail call zeroext i8 %7(ptr noundef %2) #9
  ret i8 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_ker_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  %6 = and i32 %5, 7
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = icmp eq i32 %6, 0
  %11 = shl i32 %9, 1
  %12 = and i32 %11, 2
  %13 = add nuw nsw i32 %12, 2
  %14 = select i1 %10, i32 1, i32 %13
  %15 = mul i32 %14, %1
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_ker_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = udiv i32 %1, %4
  %12 = icmp ult i32 %11, 4
  %13 = select i1 %12, i32 2, i32 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %16 = load i32, ptr %2, align 4
  %17 = mul i32 %16, %15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_ker_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  br label %22

13:                                               ; preds = %3
  %14 = udiv i32 %1, %2
  %15 = icmp ult i32 %14, 4
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = getelementptr i8, ptr %0, i32 -4
  %19 = load ptr, ptr %18, align 4
  br i1 %15, label %20, label %21

20:                                               ; preds = %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !9
  br label %22

21:                                               ; preds = %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #9, !srcloc !9
  br label %22

22:                                               ; preds = %21, %20, %10
  %23 = phi i32 [ %17, %21 ], [ %17, %20 ], [ %12, %10 ]
  %24 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %23) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mp1_mgate_clk_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_mgate, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %3
  store i32 %8, ptr %6, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %10 = tail call i32 %9(ptr noundef %0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %14 = tail call i32 %13(ptr noundef %0) #9
  br label %15

15:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mp1_mgate_clk_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = xor i32 %3, -1
  %5 = getelementptr inbounds %struct.stm32_clk_mgate, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_mgate, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.stm32_mgate, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %16 = tail call i32 %15(ptr noundef %0) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #9, !srcloc !9
  %29 = load ptr, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %21) #9
  br label %30

30:                                               ; preds = %18, %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mmux_set_parent(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 13), align 4
  %4 = tail call i32 %3(ptr noundef %0, i8 noundef zeroext %1) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.stm32_clk_mmux, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %22, %6
  %13 = phi i8 [ %23, %22 ], [ %10, %6 ]
  %14 = phi ptr [ %24, %22 ], [ %9, %6 ]
  %15 = phi i32 [ %25, %22 ], [ 0, %6 ]
  %16 = getelementptr %struct.stm32_mmux, ptr %14, i32 0, i32 1, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  tail call void @clk_hw_reparent(ptr noundef %17, ptr noundef %7) #9
  %20 = load ptr, ptr %8, align 4
  %21 = load i8, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i8 [ %13, %12 ], [ %21, %19 ]
  %24 = phi ptr [ %14, %12 ], [ %20, %19 ]
  %25 = add nuw nsw i32 %15, 1
  %26 = zext i8 %23 to i32
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %12, label %28

28:                                               ; preds = %22, %6, %2
  %29 = phi i32 [ %4, %2 ], [ 0, %6 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_mmux_get_parent(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %3 = tail call zeroext i8 %2(ptr noundef %0) #9
  ret i8 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_reparent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_rtc_recalc_rate(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %4 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 3) #9
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10), align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ %1, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_rtc_determine_rate(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 3) #9
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12), align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #9
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %1, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ 0, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_rtc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %5 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 3) #9
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 15), align 4
  %9 = tail call i32 %8(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %2, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @stm32_check_security(ptr nocapture noundef readonly %0) #8 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %8, %1
  %5 = phi i32 [ %6, %8 ], [ 0, %1 ]
  %6 = add nuw nsw i32 %5, 1
  %7 = icmp eq i32 %6, 36
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr [36 x i32], ptr @stm32mp1_clock_secured, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %2, %10
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = icmp ult i32 %5, 35
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i1 [ true, %1 ], [ %13, %12 ]
  ret i1 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 2151844718}
!9 = !{i64 3456297}
!10 = !{i64 3456715}
!11 = !{i64 2151845631}
!12 = !{i64 2151845993}
!13 = !{i64 2151846528}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148416711, i64 2148416991, i64 2148417325, i64 2148417659}
