; ModuleID = '/llk/IR/drivers/clk/actions/owl-s500.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-s500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.owl_clk_desc = type { ptr, i32, ptr, ptr, i32, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.owl_reset_map = type { i32, i32 }
%struct.owl_pll = type { %struct.owl_pll_hw, %struct.owl_clk_common }
%struct.owl_pll_hw = type { i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.owl_clk_common = type { ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.owl_mux = type { %struct.owl_mux_hw, %struct.owl_clk_common }
%struct.owl_mux_hw = type { i32, i8, i8 }
%struct.owl_gate = type { %struct.owl_gate_hw, %struct.owl_clk_common }
%struct.owl_gate_hw = type { i32, i8, i8 }
%struct.owl_composite = type { %struct.owl_mux_hw, %struct.owl_gate_hw, %union.owl_rate, ptr, %struct.owl_clk_common }
%union.owl_rate = type { %struct.clk_fixed_factor }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.owl_divider = type { %struct.owl_divider_hw, %struct.owl_clk_common }
%struct.owl_divider_hw = type { i32, i8, i8, i8, ptr }
%struct.owl_factor = type { %struct.owl_factor_hw, %struct.owl_clk_common }
%struct.owl_factor_hw = type { i32, i8, i8, i8, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll_table = type { i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_factor_table = type { i32, i32, i32 }
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
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.owl_reset = type { %struct.reset_controller_dev, ptr, ptr }

@__initcall__kmod_owl_s500__162_642_s500_clk_init1 = internal global ptr @s500_clk_init, section ".initcall1.init", align 4
@s500_clk_driver = internal global %struct.platform_driver { ptr @s500_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s500_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"s500-cmu\00", align 1
@s500_clk_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-cmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@s500_clk_desc = internal global %struct.owl_clk_desc { ptr @s500_clks, i32 57, ptr @s500_hw_clks, ptr @s500_resets, i32 54, ptr null }, align 4
@owl_reset_ops = external dso_local constant %struct.reset_control_ops, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register reset controller\0A\00", align 1
@s500_clks = internal global [57 x ptr] [ptr getelementptr (i8, ptr @ethernet_pll_clk, i64 20), ptr getelementptr (i8, ptr @core_pll_clk, i64 20), ptr getelementptr (i8, ptr @ddr_pll_clk, i64 20), ptr getelementptr (i8, ptr @dev_pll_clk, i64 20), ptr getelementptr (i8, ptr @nand_pll_clk, i64 20), ptr getelementptr (i8, ptr @audio_pll_clk, i64 20), ptr getelementptr (i8, ptr @display_pll_clk, i64 20), ptr getelementptr (i8, ptr @dev_clk, i64 8), ptr getelementptr (i8, ptr @timer_clk, i64 8), ptr getelementptr (i8, ptr @i2c0_clk, i64 40), ptr getelementptr (i8, ptr @i2c1_clk, i64 40), ptr getelementptr (i8, ptr @i2c2_clk, i64 40), ptr getelementptr (i8, ptr @i2c3_clk, i64 40), ptr getelementptr (i8, ptr @uart0_clk, i64 40), ptr getelementptr (i8, ptr @uart1_clk, i64 40), ptr getelementptr (i8, ptr @uart2_clk, i64 40), ptr getelementptr (i8, ptr @uart3_clk, i64 40), ptr getelementptr (i8, ptr @uart4_clk, i64 40), ptr getelementptr (i8, ptr @uart5_clk, i64 40), ptr getelementptr (i8, ptr @uart6_clk, i64 40), ptr getelementptr (i8, ptr @pwm0_clk, i64 40), ptr getelementptr (i8, ptr @pwm1_clk, i64 40), ptr getelementptr (i8, ptr @pwm2_clk, i64 40), ptr getelementptr (i8, ptr @pwm3_clk, i64 40), ptr getelementptr (i8, ptr @pwm4_clk, i64 40), ptr getelementptr (i8, ptr @pwm5_clk, i64 40), ptr getelementptr (i8, ptr @sensor0_clk, i64 40), ptr getelementptr (i8, ptr @sensor1_clk, i64 40), ptr getelementptr (i8, ptr @sd0_clk, i64 40), ptr getelementptr (i8, ptr @sd1_clk, i64 40), ptr getelementptr (i8, ptr @sd2_clk, i64 40), ptr getelementptr (i8, ptr @bisp_clk, i64 40), ptr getelementptr (i8, ptr @ahb_clk, i64 40), ptr getelementptr (i8, ptr @ahbprediv_clk, i64 40), ptr getelementptr (i8, ptr @h_clk, i64 12), ptr getelementptr (i8, ptr @spi0_clk, i64 8), ptr getelementptr (i8, ptr @spi1_clk, i64 8), ptr getelementptr (i8, ptr @spi2_clk, i64 8), ptr getelementptr (i8, ptr @spi3_clk, i64 8), ptr getelementptr (i8, ptr @rmii_ref_clk, i64 12), ptr getelementptr (i8, ptr @de_clk, i64 40), ptr getelementptr (i8, ptr @de1_clk, i64 12), ptr getelementptr (i8, ptr @de2_clk, i64 12), ptr getelementptr (i8, ptr @i2srx_clk, i64 40), ptr getelementptr (i8, ptr @i2stx_clk, i64 40), ptr getelementptr (i8, ptr @hdmia_clk, i64 40), ptr getelementptr (i8, ptr @hdmi_clk, i64 8), ptr getelementptr (i8, ptr @vce_clk, i64 40), ptr getelementptr (i8, ptr @vde_clk, i64 40), ptr getelementptr (i8, ptr @spdif_clk, i64 40), ptr getelementptr (i8, ptr @nand_clk, i64 40), ptr getelementptr (i8, ptr @ecc_clk, i64 40), ptr getelementptr (i8, ptr @apb_clk, i64 12), ptr getelementptr (i8, ptr @dmac_clk, i64 8), ptr getelementptr (i8, ptr @gpio_clk, i64 8), ptr getelementptr (i8, ptr @nic_clk, i64 40), ptr getelementptr (i8, ptr @ethernet_clk, i64 40)], align 4
@s500_resets = internal constant [54 x %struct.owl_reset_map] [%struct.owl_reset_map { i32 168, i32 1 }, %struct.owl_reset_map { i32 168, i32 2 }, %struct.owl_reset_map { i32 168, i32 4 }, %struct.owl_reset_map { i32 168, i32 8 }, %struct.owl_reset_map { i32 168, i32 16 }, %struct.owl_reset_map { i32 168, i32 32 }, %struct.owl_reset_map { i32 168, i32 64 }, %struct.owl_reset_map { i32 168, i32 128 }, %struct.owl_reset_map { i32 168, i32 256 }, %struct.owl_reset_map { i32 168, i32 512 }, %struct.owl_reset_map { i32 168, i32 1024 }, %struct.owl_reset_map { i32 168, i32 2048 }, %struct.owl_reset_map { i32 168, i32 4096 }, %struct.owl_reset_map { i32 168, i32 16384 }, %struct.owl_reset_map { i32 168, i32 32768 }, %struct.owl_reset_map { i32 168, i32 131072 }, %struct.owl_reset_map { i32 168, i32 262144 }, %struct.owl_reset_map { i32 168, i32 524288 }, %struct.owl_reset_map { i32 168, i32 1048576 }, %struct.owl_reset_map { i32 168, i32 4194304 }, %struct.owl_reset_map { i32 168, i32 8388608 }, %struct.owl_reset_map { i32 168, i32 67108864 }, %struct.owl_reset_map { i32 168, i32 134217728 }, %struct.owl_reset_map { i32 172, i32 1 }, %struct.owl_reset_map { i32 172, i32 2 }, %struct.owl_reset_map { i32 172, i32 4 }, %struct.owl_reset_map { i32 172, i32 8 }, %struct.owl_reset_map { i32 172, i32 16 }, %struct.owl_reset_map { i32 172, i32 32 }, %struct.owl_reset_map { i32 172, i32 64 }, %struct.owl_reset_map { i32 172, i32 128 }, %struct.owl_reset_map { i32 172, i32 256 }, %struct.owl_reset_map { i32 172, i32 512 }, %struct.owl_reset_map { i32 172, i32 1024 }, %struct.owl_reset_map { i32 172, i32 2048 }, %struct.owl_reset_map { i32 172, i32 4096 }, %struct.owl_reset_map { i32 172, i32 8192 }, %struct.owl_reset_map { i32 172, i32 16384 }, %struct.owl_reset_map { i32 172, i32 32768 }, %struct.owl_reset_map { i32 172, i32 65536 }, %struct.owl_reset_map { i32 172, i32 131072 }, %struct.owl_reset_map { i32 172, i32 262144 }, %struct.owl_reset_map { i32 172, i32 524288 }, %struct.owl_reset_map { i32 172, i32 1048576 }, %struct.owl_reset_map { i32 172, i32 2097152 }, %struct.owl_reset_map { i32 172, i32 4194304 }, %struct.owl_reset_map { i32 172, i32 16777216 }, %struct.owl_reset_map { i32 172, i32 33554432 }, %struct.owl_reset_map { i32 172, i32 67108864 }, %struct.owl_reset_map { i32 172, i32 134217728 }, %struct.owl_reset_map { i32 172, i32 268435456 }, %struct.owl_reset_map { i32 172, i32 536870912 }, %struct.owl_reset_map { i32 172, i32 1073741824 }, %struct.owl_reset_map { i32 172, i32 -2147483648 }], align 4
@ethernet_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 132, i32 500000000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 25, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } } }, align 4
@core_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 0, i32 12000000, i8 9, i8 0, i8 8, i8 4, i8 -122, i8 -106, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 } } }, align 4
@ddr_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 8, i32 12000000, i8 8, i8 0, i8 8, i8 1, i8 67, i8 63, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 } } }, align 4
@dev_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 4, i32 6000000, i8 8, i8 0, i8 7, i8 8, i8 126, i8 28, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 } } }, align 4
@nand_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 12, i32 6000000, i8 8, i8 0, i8 7, i8 2, i8 86, i8 44, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 } } }, align 4
@audio_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 20, i32 0, i8 4, i8 0, i8 1, i8 0, i8 0, i8 100, ptr @clk_audio_pll_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@display_pll_clk = internal global %struct.owl_pll { %struct.owl_pll_hw { i32 16, i32 6000000, i8 8, i8 0, i8 8, i8 2, i8 126, i8 57, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 } } }, align 4
@dev_clk = internal global %struct.owl_mux { %struct.owl_mux_hw { i32 4, i8 12, i8 1 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 } } }, align 4
@timer_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 27, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 } } }, align 4
@i2c0_clk = internal global %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 14, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, align 4
@i2c1_clk = internal global %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 15, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 } } }, align 4
@i2c2_clk = internal global %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 30, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, align 4
@i2c3_clk = internal global %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 31, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 5 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 } } }, align 4
@ahb_clk = internal global %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw zeroinitializer, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 1 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 } } }, align 4
@h_clk = internal global %struct.owl_divider { %struct.owl_divider_hw { i32 56, i8 2, i8 2, i8 0, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 } } }, align 4
@spi0_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 10, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.102 } } }, align 4
@spi1_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 11, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 } } }, align 4
@spi2_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 12, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 } } }, align 4
@spi3_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 13, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.111 } } }, align 4
@rmii_ref_clk = internal global %struct.owl_divider { %struct.owl_divider_hw { i32 132, i8 1, i8 1, i8 0, ptr @rmii_ref_div_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.114 } } }, align 4
@de_clk = internal global %struct.owl_composite { %struct.owl_mux_hw { i32 48, i8 12, i8 1 }, %struct.owl_gate_hw { i32 160, i8 8, i8 0 }, %union.owl_rate zeroinitializer, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 } } }, align 4
@de1_clk = internal global %struct.owl_factor { %struct.owl_factor_hw { i32 48, i8 0, i8 4, i8 0, ptr @de_factor_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 } } }, align 4
@de2_clk = internal global %struct.owl_factor { %struct.owl_factor_hw { i32 48, i8 4, i8 4, i8 0, ptr @de_factor_table }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 } } }, align 4
@hdmi_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 164, i8 3, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 } } }, align 4
@apb_clk = internal global %struct.owl_divider { %struct.owl_divider_hw { i32 56, i8 14, i8 2, i8 0, ptr null }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 } } }, align 4
@dmac_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 160, i8 1, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.156 } } }, align 4
@gpio_clk = internal global %struct.owl_gate { %struct.owl_gate_hw { i32 160, i8 18, i8 0 }, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.159 } } }, align 4
@ethernet_clk = internal global %struct.owl_composite { %struct.owl_mux_hw zeroinitializer, %struct.owl_gate_hw { i32 164, i8 22, i8 0 }, %union.owl_rate { %struct.clk_fixed_factor { %struct.clk_hw zeroinitializer, i32 1, i32 20 } }, ptr @clk_fixed_factor_ops, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 } } }, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ethernet_pll_clk\00", align 1
@owl_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global %struct.clk_init_data { ptr @.str.2, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"core_pll_clk\00", align 1
@.compoundliteral.4 = internal global %struct.clk_init_data { ptr @.str.3, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ddr_pll_clk\00", align 1
@.compoundliteral.6 = internal global %struct.clk_init_data { ptr @.str.5, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"dev_pll_clk\00", align 1
@.compoundliteral.8 = internal global %struct.clk_init_data { ptr @.str.7, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"nand_pll_clk\00", align 1
@.compoundliteral.10 = internal global %struct.clk_init_data { ptr @.str.9, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@clk_audio_pll_table = internal constant [3 x %struct.clk_pll_table] [%struct.clk_pll_table { i32 0, i32 45158400 }, %struct.clk_pll_table { i32 1, i32 49152000 }, %struct.clk_pll_table zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"audio_pll_clk\00", align 1
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.11, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"display_pll_clk\00", align 1
@.compoundliteral.14 = internal global %struct.clk_init_data { ptr @.str.13, ptr @owl_pll_ops, ptr null, ptr null, ptr null, i8 0, i32 8 }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"dev_clk\00", align 1
@owl_mux_ops = external dso_local constant %struct.clk_ops, align 4
@dev_clk_mux_p = internal constant [2 x ptr] [ptr @.str.17, ptr @.str.7], align 4
@.compoundliteral.16 = internal global %struct.clk_init_data { ptr @.str.15, ptr @owl_mux_ops, ptr @dev_clk_mux_p, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"timer_clk\00", align 1
@owl_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.19 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.20 = internal global %struct.clk_init_data { ptr @.str.18, ptr @owl_gate_ops, ptr @.compoundliteral.19, ptr null, ptr null, i8 1, i32 0 }, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"i2c0_clk\00", align 1
@owl_comp_fix_fact_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.22 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.23 = internal global %struct.clk_init_data { ptr @.str.21, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.22, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"i2c1_clk\00", align 1
@.compoundliteral.25 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.26 = internal global %struct.clk_init_data { ptr @.str.24, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.25, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"i2c2_clk\00", align 1
@.compoundliteral.28 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.29 = internal global %struct.clk_init_data { ptr @.str.27, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.28, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"i2c3_clk\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.32 = internal global %struct.clk_init_data { ptr @.str.30, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.31, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@owl_comp_div_ops = external dso_local constant %struct.clk_ops, align 4
@uart_clk_mux_p = internal constant [2 x ptr] [ptr @.str.17, ptr @.str.7], align 4
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.33, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart0_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 92, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 6, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 92, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 } } }, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.36, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart1_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 96, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 7, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 96, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } } }, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"uart2_clk\00", align 1
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.39, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart2_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 100, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 8, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 100, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 } } }, align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"uart3_clk\00", align 1
@.compoundliteral.43 = internal global %struct.clk_init_data { ptr @.str.42, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart3_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 176, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 19, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 176, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 } } }, align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"uart4_clk\00", align 1
@.compoundliteral.46 = internal global %struct.clk_init_data { ptr @.str.45, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart4_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 180, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 20, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 180, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 } } }, align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"uart5_clk\00", align 1
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.48, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart5_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 184, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 21, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 184, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 } } }, align 4
@.str.51 = private unnamed_addr constant [10 x i8] c"uart6_clk\00", align 1
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.51, ptr @owl_comp_div_ops, ptr @uart_clk_mux_p, ptr null, ptr null, i8 2, i32 8 }, align 4
@uart6_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 188, i8 16, i8 1 }, %struct.owl_gate_hw { i32 164, i8 18, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 188, i8 0, i8 8, i8 16, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 } } }, align 4
@.str.54 = private unnamed_addr constant [9 x i8] c"pwm0_clk\00", align 1
@pwm_clk_mux_p = internal constant [2 x ptr] [ptr @.str.57, ptr @.str.17], align 4
@.compoundliteral.55 = internal global %struct.clk_init_data { ptr @.str.54, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@pwm0_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 112, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 23, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 112, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 } } }, align 4
@.str.57 = private unnamed_addr constant [5 x i8] c"losc\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"pwm1_clk\00", align 1
@.compoundliteral.59 = internal global %struct.clk_init_data { ptr @.str.58, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@pwm1_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 116, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 24, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 116, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 } } }, align 4
@.str.61 = private unnamed_addr constant [9 x i8] c"pwm2_clk\00", align 1
@.compoundliteral.62 = internal global %struct.clk_init_data { ptr @.str.61, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@pwm2_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 120, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 25, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 120, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 } } }, align 4
@.str.64 = private unnamed_addr constant [9 x i8] c"pwm3_clk\00", align 1
@.compoundliteral.65 = internal global %struct.clk_init_data { ptr @.str.64, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@pwm3_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 124, i8 12, i8 1 }, %struct.owl_gate_hw { i32 164, i8 26, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 124, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 } } }, align 4
@.str.67 = private unnamed_addr constant [9 x i8] c"pwm4_clk\00", align 1
@.compoundliteral.68 = internal global %struct.clk_init_data { ptr @.str.67, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@pwm4_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 104, i8 12, i8 1 }, %struct.owl_gate_hw { i32 160, i8 11, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 104, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 } } }, align 4
@.str.70 = private unnamed_addr constant [9 x i8] c"pwm5_clk\00", align 1
@.compoundliteral.71 = internal global %struct.clk_init_data { ptr @.str.70, ptr @owl_comp_div_ops, ptr @pwm_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@pwm5_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 108, i8 12, i8 1 }, %struct.owl_gate_hw { i32 160, i8 0, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 108, i8 0, i8 10, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 } } }, align 4
@std12rate_div_table = internal global [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table zeroinitializer], align 4
@.str.73 = private unnamed_addr constant [12 x i8] c"sensor0_clk\00", align 1
@sensor_clk_mux_p = internal constant [2 x ptr] [ptr @.str.17, ptr @.str.76], align 4
@.compoundliteral.74 = internal global %struct.clk_init_data { ptr @.str.73, ptr @owl_comp_div_ops, ptr @sensor_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@sensor0_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 32, i8 4, i8 1 }, %struct.owl_gate_hw { i32 160, i8 14, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 32, i8 0, i8 4, i8 0, ptr @std12rate_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 } } }, align 4
@.str.76 = private unnamed_addr constant [9 x i8] c"bisp_clk\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"sensor1_clk\00", align 1
@.compoundliteral.78 = internal global %struct.clk_init_data { ptr @.str.77, ptr @owl_comp_div_ops, ptr @sensor_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@sensor1_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 32, i8 4, i8 1 }, %struct.owl_gate_hw { i32 160, i8 14, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 32, i8 8, i8 4, i8 0, ptr @std12rate_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 } } }, align 4
@sd_factor_table = internal global [51 x %struct.clk_factor_table] [%struct.clk_factor_table { i32 0, i32 1, i32 1 }, %struct.clk_factor_table { i32 1, i32 1, i32 2 }, %struct.clk_factor_table { i32 2, i32 1, i32 3 }, %struct.clk_factor_table { i32 3, i32 1, i32 4 }, %struct.clk_factor_table { i32 4, i32 1, i32 5 }, %struct.clk_factor_table { i32 5, i32 1, i32 6 }, %struct.clk_factor_table { i32 6, i32 1, i32 7 }, %struct.clk_factor_table { i32 7, i32 1, i32 8 }, %struct.clk_factor_table { i32 8, i32 1, i32 9 }, %struct.clk_factor_table { i32 9, i32 1, i32 10 }, %struct.clk_factor_table { i32 10, i32 1, i32 11 }, %struct.clk_factor_table { i32 11, i32 1, i32 12 }, %struct.clk_factor_table { i32 12, i32 1, i32 13 }, %struct.clk_factor_table { i32 13, i32 1, i32 14 }, %struct.clk_factor_table { i32 14, i32 1, i32 15 }, %struct.clk_factor_table { i32 15, i32 1, i32 16 }, %struct.clk_factor_table { i32 16, i32 1, i32 17 }, %struct.clk_factor_table { i32 17, i32 1, i32 18 }, %struct.clk_factor_table { i32 18, i32 1, i32 19 }, %struct.clk_factor_table { i32 19, i32 1, i32 20 }, %struct.clk_factor_table { i32 20, i32 1, i32 21 }, %struct.clk_factor_table { i32 21, i32 1, i32 22 }, %struct.clk_factor_table { i32 22, i32 1, i32 23 }, %struct.clk_factor_table { i32 23, i32 1, i32 24 }, %struct.clk_factor_table { i32 24, i32 1, i32 25 }, %struct.clk_factor_table { i32 256, i32 1, i32 128 }, %struct.clk_factor_table { i32 257, i32 1, i32 256 }, %struct.clk_factor_table { i32 258, i32 1, i32 384 }, %struct.clk_factor_table { i32 259, i32 1, i32 512 }, %struct.clk_factor_table { i32 260, i32 1, i32 640 }, %struct.clk_factor_table { i32 261, i32 1, i32 768 }, %struct.clk_factor_table { i32 262, i32 1, i32 896 }, %struct.clk_factor_table { i32 263, i32 1, i32 1024 }, %struct.clk_factor_table { i32 264, i32 1, i32 1152 }, %struct.clk_factor_table { i32 265, i32 1, i32 1280 }, %struct.clk_factor_table { i32 266, i32 1, i32 1408 }, %struct.clk_factor_table { i32 267, i32 1, i32 1536 }, %struct.clk_factor_table { i32 268, i32 1, i32 1664 }, %struct.clk_factor_table { i32 269, i32 1, i32 1792 }, %struct.clk_factor_table { i32 270, i32 1, i32 1920 }, %struct.clk_factor_table { i32 271, i32 1, i32 2048 }, %struct.clk_factor_table { i32 272, i32 1, i32 2176 }, %struct.clk_factor_table { i32 273, i32 1, i32 2304 }, %struct.clk_factor_table { i32 274, i32 1, i32 2432 }, %struct.clk_factor_table { i32 275, i32 1, i32 2560 }, %struct.clk_factor_table { i32 276, i32 1, i32 2688 }, %struct.clk_factor_table { i32 277, i32 1, i32 2816 }, %struct.clk_factor_table { i32 278, i32 1, i32 2944 }, %struct.clk_factor_table { i32 279, i32 1, i32 3072 }, %struct.clk_factor_table { i32 280, i32 1, i32 3200 }, %struct.clk_factor_table zeroinitializer], align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"sd0_clk\00", align 1
@owl_comp_fact_ops = external dso_local constant %struct.clk_ops, align 4
@sd_clk_mux_p = internal constant [2 x ptr] [ptr @.str.15, ptr @.str.9], align 4
@.compoundliteral.81 = internal global %struct.clk_init_data { ptr @.str.80, ptr @owl_comp_fact_ops, ptr @sd_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@sd0_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 80, i8 9, i8 1 }, %struct.owl_gate_hw { i32 160, i8 5, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 80, i8 0, i8 9, i8 0, ptr @sd_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 } } }, align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"sd1_clk\00", align 1
@.compoundliteral.84 = internal global %struct.clk_init_data { ptr @.str.83, ptr @owl_comp_fact_ops, ptr @sd_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@sd1_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 84, i8 9, i8 1 }, %struct.owl_gate_hw { i32 160, i8 6, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 84, i8 0, i8 9, i8 0, ptr @sd_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 } } }, align 4
@.str.86 = private unnamed_addr constant [8 x i8] c"sd2_clk\00", align 1
@.compoundliteral.87 = internal global %struct.clk_init_data { ptr @.str.86, ptr @owl_comp_fact_ops, ptr @sd_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@sd2_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 88, i8 9, i8 1 }, %struct.owl_gate_hw { i32 160, i8 7, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 88, i8 0, i8 9, i8 0, ptr @sd_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 } } }, align 4
@bisp_clk_mux_p = internal constant [2 x ptr] [ptr @.str.13, ptr @.str.15], align 4
@.compoundliteral.89 = internal global %struct.clk_init_data { ptr @.str.76, ptr @owl_comp_div_ops, ptr @bisp_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@bisp_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 52, i8 4, i8 1 }, %struct.owl_gate_hw { i32 160, i8 14, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 52, i8 0, i8 4, i8 0, ptr @std12rate_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 } } }, align 4
@.str.91 = private unnamed_addr constant [8 x i8] c"ahb_clk\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"h_clk\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.92], align 4
@.compoundliteral.94 = internal global %struct.clk_init_data { ptr @.str.91, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.93, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.95 = private unnamed_addr constant [14 x i8] c"ahbprediv_clk\00", align 1
@ahbprediv_clk_mux_p = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.13, ptr @.str.9, ptr @.str.5], align 4
@.compoundliteral.96 = internal global %struct.clk_init_data { ptr @.str.95, ptr @owl_comp_div_ops, ptr @ahbprediv_clk_mux_p, ptr null, ptr null, i8 4, i32 4 }, align 4
@ahbprediv_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 56, i8 8, i8 3 }, %struct.owl_gate_hw zeroinitializer, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 56, i8 12, i8 2, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 } } }, align 4
@owl_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.98 = internal global [1 x ptr] [ptr @.str.95], align 4
@.compoundliteral.99 = internal global %struct.clk_init_data { ptr @.str.92, ptr @owl_divider_ops, ptr @.compoundliteral.98, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.100 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@.compoundliteral.101 = internal global [1 x ptr] [ptr @.str.91], align 4
@.compoundliteral.102 = internal global %struct.clk_init_data { ptr @.str.100, ptr @owl_gate_ops, ptr @.compoundliteral.101, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.103 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@.compoundliteral.104 = internal global [1 x ptr] [ptr @.str.91], align 4
@.compoundliteral.105 = internal global %struct.clk_init_data { ptr @.str.103, ptr @owl_gate_ops, ptr @.compoundliteral.104, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.106 = private unnamed_addr constant [9 x i8] c"spi2_clk\00", align 1
@.compoundliteral.107 = internal global [1 x ptr] [ptr @.str.91], align 4
@.compoundliteral.108 = internal global %struct.clk_init_data { ptr @.str.106, ptr @owl_gate_ops, ptr @.compoundliteral.107, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"spi3_clk\00", align 1
@.compoundliteral.110 = internal global [1 x ptr] [ptr @.str.91], align 4
@.compoundliteral.111 = internal global %struct.clk_init_data { ptr @.str.109, ptr @owl_gate_ops, ptr @.compoundliteral.110, ptr null, ptr null, i8 1, i32 8 }, align 4
@rmii_ref_div_table = internal global [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table zeroinitializer], align 4
@.str.112 = private unnamed_addr constant [13 x i8] c"rmii_ref_clk\00", align 1
@.compoundliteral.113 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.114 = internal global %struct.clk_init_data { ptr @.str.112, ptr @owl_divider_ops, ptr @.compoundliteral.113, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.115 = private unnamed_addr constant [7 x i8] c"de_clk\00", align 1
@owl_comp_pass_ops = external dso_local constant %struct.clk_ops, align 4
@de_clk_mux_p = internal constant [2 x ptr] [ptr @.str.13, ptr @.str.15], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.115, ptr @owl_comp_pass_ops, ptr @de_clk_mux_p, ptr null, ptr null, i8 2, i32 0 }, align 4
@de_factor_table = internal global [10 x %struct.clk_factor_table] [%struct.clk_factor_table { i32 0, i32 1, i32 1 }, %struct.clk_factor_table { i32 1, i32 2, i32 3 }, %struct.clk_factor_table { i32 2, i32 1, i32 2 }, %struct.clk_factor_table { i32 3, i32 2, i32 5 }, %struct.clk_factor_table { i32 4, i32 1, i32 3 }, %struct.clk_factor_table { i32 5, i32 1, i32 4 }, %struct.clk_factor_table { i32 6, i32 1, i32 6 }, %struct.clk_factor_table { i32 7, i32 1, i32 8 }, %struct.clk_factor_table { i32 8, i32 1, i32 12 }, %struct.clk_factor_table zeroinitializer], align 4
@.str.117 = private unnamed_addr constant [8 x i8] c"de_clk1\00", align 1
@owl_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.115], align 4
@.compoundliteral.119 = internal global %struct.clk_init_data { ptr @.str.117, ptr @owl_factor_ops, ptr @.compoundliteral.118, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.120 = private unnamed_addr constant [8 x i8] c"de_clk2\00", align 1
@.compoundliteral.121 = internal global [1 x ptr] [ptr @.str.115], align 4
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.120, ptr @owl_factor_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 0 }, align 4
@i2s_div_table = internal global [10 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 6 }, %struct.clk_div_table { i32 5, i32 8 }, %struct.clk_div_table { i32 6, i32 12 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table zeroinitializer], align 4
@.str.123 = private unnamed_addr constant [10 x i8] c"i2srx_clk\00", align 1
@i2s_clk_mux_p = internal constant [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.124 = internal global %struct.clk_init_data { ptr @.str.123, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, align 4
@i2srx_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 21, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 20, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 } } }, align 4
@.str.126 = private unnamed_addr constant [10 x i8] c"i2stx_clk\00", align 1
@.compoundliteral.127 = internal global %struct.clk_init_data { ptr @.str.126, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, align 4
@i2stx_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 20, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 16, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 } } }, align 4
@.str.129 = private unnamed_addr constant [10 x i8] c"hdmia_clk\00", align 1
@.compoundliteral.130 = internal global %struct.clk_init_data { ptr @.str.129, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, align 4
@hdmia_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 22, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 24, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.130 } } }, align 4
@.str.132 = private unnamed_addr constant [9 x i8] c"hdmi_clk\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.134 = internal global %struct.clk_init_data { ptr @.str.132, ptr @owl_gate_ops, ptr @.compoundliteral.133, ptr null, ptr null, i8 1, i32 0 }, align 4
@hde_factor_table = internal global [9 x %struct.clk_factor_table] [%struct.clk_factor_table { i32 0, i32 1, i32 1 }, %struct.clk_factor_table { i32 1, i32 2, i32 3 }, %struct.clk_factor_table { i32 2, i32 1, i32 2 }, %struct.clk_factor_table { i32 3, i32 2, i32 5 }, %struct.clk_factor_table { i32 4, i32 1, i32 3 }, %struct.clk_factor_table { i32 5, i32 1, i32 4 }, %struct.clk_factor_table { i32 6, i32 1, i32 6 }, %struct.clk_factor_table { i32 7, i32 1, i32 8 }, %struct.clk_factor_table zeroinitializer], align 4
@.str.135 = private unnamed_addr constant [8 x i8] c"vce_clk\00", align 1
@hde_clk_mux_p = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.13, ptr @.str.9, ptr @.str.5], align 4
@.compoundliteral.136 = internal global %struct.clk_init_data { ptr @.str.135, ptr @owl_comp_fact_ops, ptr @hde_clk_mux_p, ptr null, ptr null, i8 4, i32 0 }, align 4
@vce_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 68, i8 4, i8 2 }, %struct.owl_gate_hw { i32 160, i8 26, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 68, i8 0, i8 3, i8 0, ptr @hde_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 } } }, align 4
@.str.138 = private unnamed_addr constant [8 x i8] c"vde_clk\00", align 1
@.compoundliteral.139 = internal global %struct.clk_init_data { ptr @.str.138, ptr @owl_comp_fact_ops, ptr @hde_clk_mux_p, ptr null, ptr null, i8 4, i32 0 }, align 4
@vde_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_factor_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 64, i8 4, i8 2 }, %struct.owl_gate_hw { i32 160, i8 25, i8 0 }, { %struct.owl_factor_hw, [8 x i8] } { %struct.owl_factor_hw { i32 64, i8 0, i8 3, i8 0, ptr @hde_factor_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.139 } } }, align 4
@.str.141 = private unnamed_addr constant [10 x i8] c"spdif_clk\00", align 1
@.compoundliteral.142 = internal global %struct.clk_init_data { ptr @.str.141, ptr @owl_comp_div_ops, ptr @i2s_clk_mux_p, ptr null, ptr null, i8 1, i32 0 }, align 4
@spdif_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 20, i8 24, i8 1 }, %struct.owl_gate_hw { i32 160, i8 23, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 20, i8 28, i8 4, i8 0, ptr @i2s_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 } } }, align 4
@nand_div_table = internal global [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 10 }, %struct.clk_div_table { i32 6, i32 12 }, %struct.clk_div_table { i32 7, i32 14 }, %struct.clk_div_table { i32 8, i32 16 }, %struct.clk_div_table { i32 9, i32 18 }, %struct.clk_div_table { i32 10, i32 20 }, %struct.clk_div_table { i32 11, i32 22 }, %struct.clk_div_table zeroinitializer], align 4
@.str.144 = private unnamed_addr constant [9 x i8] c"nand_clk\00", align 1
@nand_clk_mux_p = internal constant [4 x ptr] [ptr @.str.9, ptr @.str.13, ptr @.str.15, ptr @.str.5], align 4
@.compoundliteral.145 = internal global %struct.clk_init_data { ptr @.str.144, ptr @owl_comp_div_ops, ptr @nand_clk_mux_p, ptr null, ptr null, i8 4, i32 4 }, align 4
@nand_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 76, i8 8, i8 2 }, %struct.owl_gate_hw { i32 160, i8 4, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 76, i8 0, i8 3, i8 0, ptr @nand_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 } } }, align 4
@.str.147 = private unnamed_addr constant [8 x i8] c"ecc_clk\00", align 1
@.compoundliteral.148 = internal global %struct.clk_init_data { ptr @.str.147, ptr @owl_comp_div_ops, ptr @nand_clk_mux_p, ptr null, ptr null, i8 4, i32 4 }, align 4
@ecc_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 76, i8 8, i8 2 }, %struct.owl_gate_hw { i32 160, i8 4, i8 0 }, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 76, i8 4, i8 3, i8 0, ptr @nand_div_table }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.148 } } }, align 4
@.str.150 = private unnamed_addr constant [8 x i8] c"apb_clk\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"nic_clk\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.151], align 4
@.compoundliteral.153 = internal global %struct.clk_init_data { ptr @.str.150, ptr @owl_divider_ops, ptr @.compoundliteral.152, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.154 = private unnamed_addr constant [9 x i8] c"dmac_clk\00", align 1
@.compoundliteral.155 = internal global [1 x ptr] [ptr @.str.92], align 4
@.compoundliteral.156 = internal global %struct.clk_init_data { ptr @.str.154, ptr @owl_gate_ops, ptr @.compoundliteral.155, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.157 = private unnamed_addr constant [9 x i8] c"gpio_clk\00", align 1
@.compoundliteral.158 = internal global [1 x ptr] [ptr @.str.150], align 4
@.compoundliteral.159 = internal global %struct.clk_init_data { ptr @.str.157, ptr @owl_gate_ops, ptr @.compoundliteral.158, ptr null, ptr null, i8 1, i32 0 }, align 4
@nic_clk_mux_p = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.13, ptr @.str.9, ptr @.str.5], align 4
@.compoundliteral.160 = internal global %struct.clk_init_data { ptr @.str.151, ptr @owl_comp_div_ops, ptr @nic_clk_mux_p, ptr null, ptr null, i8 4, i32 0 }, align 4
@nic_clk = internal global { %struct.owl_mux_hw, %struct.owl_gate_hw, { %struct.owl_divider_hw, [8 x i8] }, ptr, %struct.owl_clk_common } { %struct.owl_mux_hw { i32 56, i8 4, i8 3 }, %struct.owl_gate_hw zeroinitializer, { %struct.owl_divider_hw, [8 x i8] } { %struct.owl_divider_hw { i32 56, i8 16, i8 2, i8 0, ptr null }, [8 x i8] undef }, ptr null, %struct.owl_clk_common { ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 } } }, align 4
@.str.162 = private unnamed_addr constant [13 x i8] c"ethernet_clk\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.164 = internal global %struct.clk_init_data { ptr @.str.162, ptr @owl_comp_fix_fact_ops, ptr @.compoundliteral.163, ptr null, ptr null, i8 1, i32 0 }, align 4
@s500_hw_clks = internal global { i32, [60 x ptr] } { i32 60, [60 x ptr] [ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @core_pll_clk, i64 24), ptr getelementptr (i8, ptr @dev_pll_clk, i64 24), ptr getelementptr (i8, ptr @ddr_pll_clk, i64 24), ptr getelementptr (i8, ptr @nand_pll_clk, i64 24), ptr getelementptr (i8, ptr @display_pll_clk, i64 24), ptr getelementptr (i8, ptr @ethernet_pll_clk, i64 24), ptr getelementptr (i8, ptr @audio_pll_clk, i64 24), ptr getelementptr (i8, ptr @dev_clk, i64 12), ptr getelementptr (i8, ptr @h_clk, i64 16), ptr getelementptr (i8, ptr @ahbprediv_clk, i64 44), ptr getelementptr (i8, ptr @ahb_clk, i64 44), ptr getelementptr (i8, ptr @de_clk, i64 44), ptr getelementptr (i8, ptr @bisp_clk, i64 44), ptr getelementptr (i8, ptr @vce_clk, i64 44), ptr getelementptr (i8, ptr @vde_clk, i64 44), ptr getelementptr (i8, ptr @timer_clk, i64 12), ptr getelementptr (i8, ptr @i2c0_clk, i64 44), ptr getelementptr (i8, ptr @i2c1_clk, i64 44), ptr getelementptr (i8, ptr @i2c2_clk, i64 44), ptr getelementptr (i8, ptr @i2c3_clk, i64 44), ptr getelementptr (i8, ptr @pwm0_clk, i64 44), ptr getelementptr (i8, ptr @pwm1_clk, i64 44), ptr getelementptr (i8, ptr @pwm2_clk, i64 44), ptr getelementptr (i8, ptr @pwm3_clk, i64 44), ptr getelementptr (i8, ptr @pwm4_clk, i64 44), ptr getelementptr (i8, ptr @pwm5_clk, i64 44), ptr getelementptr (i8, ptr @sd0_clk, i64 44), ptr getelementptr (i8, ptr @sd1_clk, i64 44), ptr getelementptr (i8, ptr @sd2_clk, i64 44), ptr getelementptr (i8, ptr @sensor0_clk, i64 44), ptr getelementptr (i8, ptr @sensor1_clk, i64 44), ptr getelementptr (i8, ptr @spi0_clk, i64 12), ptr getelementptr (i8, ptr @spi1_clk, i64 12), ptr getelementptr (i8, ptr @spi2_clk, i64 12), ptr getelementptr (i8, ptr @spi3_clk, i64 12), ptr getelementptr (i8, ptr @uart0_clk, i64 44), ptr getelementptr (i8, ptr @uart1_clk, i64 44), ptr getelementptr (i8, ptr @uart2_clk, i64 44), ptr getelementptr (i8, ptr @uart3_clk, i64 44), ptr getelementptr (i8, ptr @uart4_clk, i64 44), ptr getelementptr (i8, ptr @uart5_clk, i64 44), ptr getelementptr (i8, ptr @uart6_clk, i64 44), ptr getelementptr (i8, ptr @de1_clk, i64 16), ptr getelementptr (i8, ptr @de2_clk, i64 16), ptr getelementptr (i8, ptr @i2srx_clk, i64 44), ptr getelementptr (i8, ptr @i2stx_clk, i64 44), ptr getelementptr (i8, ptr @hdmia_clk, i64 44), ptr getelementptr (i8, ptr @hdmi_clk, i64 12), ptr getelementptr (i8, ptr @spdif_clk, i64 44), ptr getelementptr (i8, ptr @nand_clk, i64 44), ptr getelementptr (i8, ptr @ecc_clk, i64 44), ptr getelementptr (i8, ptr @rmii_ref_clk, i64 16), ptr getelementptr (i8, ptr @gpio_clk, i64 12), ptr getelementptr (i8, ptr @apb_clk, i64 16), ptr getelementptr (i8, ptr @dmac_clk, i64 12), ptr getelementptr (i8, ptr @nic_clk, i64 44), ptr getelementptr (i8, ptr @ethernet_clk, i64 44)] }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_owl_s500__162_642_s500_clk_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s500_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s500_clk_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s500_clk_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @owl_clk_regmap_init(ptr noundef %0, ptr noundef nonnull @s500_clk_desc) #4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.reset_controller_dev, ptr %4, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  store ptr @owl_reset_ops, ptr %4, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 4), align 4
  %11 = getelementptr inbounds %struct.reset_controller_dev, ptr %4, i32 0, i32 8
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 3), align 4
  %13 = getelementptr inbounds %struct.owl_reset, ptr %4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 5), align 4
  %15 = getelementptr inbounds %struct.owl_reset, ptr %4, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef nonnull %4) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  br label %19

19:                                               ; preds = %18, %6
  %20 = load ptr, ptr getelementptr inbounds (%struct.owl_clk_desc, ptr @s500_clk_desc, i32 0, i32 2), align 4
  %21 = tail call i32 @owl_clk_probe(ptr noundef %3, ptr noundef %20) #4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ -12, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_clk_regmap_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_clk_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
