; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c"
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

@__initcall__kmod_sun9i_a80_de_ccu__162_273_sun9i_a80_de_clk_driver_init6 = internal global ptr @sun9i_a80_de_clk_driver_init, section ".initcall6.init", align 4
@sun9i_a80_de_clk_driver = internal global %struct.platform_driver { ptr @sun9i_a80_de_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun9i_a80_de_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun9i_a80_de_clk_driver_exit = internal global ptr @sun9i_a80_de_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [37 x i8] c"sun9i_a80_de_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [60 x i8] c"sun9i_a80_de_ccu.file=drivers/clk/sunxi-ng/sun9i-a80-de-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [29 x i8] c"sun9i_a80_de_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"sun9i-a80-de-clks\00", align 1
@sun9i_a80_de_clk_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-de-clks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Couldn't get bus clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't get reset control: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't enable bus clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Couldn't deassert reset control: %d\0A\00", align 1
@sun9i_a80_de_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun9i_a80_de_clks, i32 37, ptr @sun9i_a80_de_hw_clks, ptr @sun9i_a80_de_resets, i32 11 }, align 4
@sun9i_a80_de_clks = internal global [37 x ptr] [ptr getelementptr (i8, ptr @fe0_clk, i64 4), ptr getelementptr (i8, ptr @fe1_clk, i64 4), ptr getelementptr (i8, ptr @fe2_clk, i64 4), ptr getelementptr (i8, ptr @iep_deu0_clk, i64 4), ptr getelementptr (i8, ptr @iep_deu1_clk, i64 4), ptr getelementptr (i8, ptr @be0_clk, i64 4), ptr getelementptr (i8, ptr @be1_clk, i64 4), ptr getelementptr (i8, ptr @be2_clk, i64 4), ptr getelementptr (i8, ptr @iep_drc0_clk, i64 4), ptr getelementptr (i8, ptr @iep_drc1_clk, i64 4), ptr getelementptr (i8, ptr @merge_clk, i64 4), ptr getelementptr (i8, ptr @dram_fe0_clk, i64 4), ptr getelementptr (i8, ptr @dram_fe1_clk, i64 4), ptr getelementptr (i8, ptr @dram_fe2_clk, i64 4), ptr getelementptr (i8, ptr @dram_deu0_clk, i64 4), ptr getelementptr (i8, ptr @dram_deu1_clk, i64 4), ptr getelementptr (i8, ptr @dram_be0_clk, i64 4), ptr getelementptr (i8, ptr @dram_be1_clk, i64 4), ptr getelementptr (i8, ptr @dram_be2_clk, i64 4), ptr getelementptr (i8, ptr @dram_drc0_clk, i64 4), ptr getelementptr (i8, ptr @dram_drc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_fe0_clk, i64 4), ptr getelementptr (i8, ptr @bus_fe1_clk, i64 4), ptr getelementptr (i8, ptr @bus_fe2_clk, i64 4), ptr getelementptr (i8, ptr @bus_deu0_clk, i64 4), ptr getelementptr (i8, ptr @bus_deu1_clk, i64 4), ptr getelementptr (i8, ptr @bus_be0_clk, i64 4), ptr getelementptr (i8, ptr @bus_be1_clk, i64 4), ptr getelementptr (i8, ptr @bus_be2_clk, i64 4), ptr getelementptr (i8, ptr @bus_drc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_drc1_clk, i64 4), ptr getelementptr (i8, ptr @fe0_div_clk, i64 48), ptr getelementptr (i8, ptr @fe1_div_clk, i64 48), ptr getelementptr (i8, ptr @fe2_div_clk, i64 48), ptr getelementptr (i8, ptr @be0_div_clk, i64 48), ptr getelementptr (i8, ptr @be1_div_clk, i64 48), ptr getelementptr (i8, ptr @be2_div_clk, i64 48)], align 4
@sun9i_a80_de_resets = internal global [11 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 12, i32 1 }, %struct.ccu_reset_map { i16 12, i32 2 }, %struct.ccu_reset_map { i16 12, i32 4 }, %struct.ccu_reset_map { i16 12, i32 16 }, %struct.ccu_reset_map { i16 12, i32 32 }, %struct.ccu_reset_map { i16 12, i32 256 }, %struct.ccu_reset_map { i16 12, i32 512 }, %struct.ccu_reset_map { i16 12, i32 1024 }, %struct.ccu_reset_map { i16 12, i32 4096 }, %struct.ccu_reset_map { i16 12, i32 8192 }, %struct.ccu_reset_map { i16 12, i32 1048576 }], align 4
@fe0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 } } }, align 4
@fe1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@fe2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 } } }, align 4
@iep_deu0_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 } } }, align 4
@iep_deu1_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, align 4
@be0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, align 4
@be1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 } } }, align 4
@be2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 } } }, align 4
@iep_drc0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 } } }, align 4
@iep_drc1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 } } }, align 4
@merge_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 } } }, align 4
@dram_fe0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 } } }, align 4
@dram_fe1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 } } }, align 4
@dram_fe2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 } } }, align 4
@dram_deu0_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 } } }, align 4
@dram_deu1_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 } } }, align 4
@dram_be0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 } } }, align 4
@dram_be1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 } } }, align 4
@dram_be2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 } } }, align 4
@dram_drc0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 } } }, align 4
@dram_drc1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 } } }, align 4
@bus_fe0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 } } }, align 4
@bus_fe1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 } } }, align 4
@bus_fe2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 } } }, align 4
@bus_deu0_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 } } }, align 4
@bus_deu1_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 } } }, align 4
@bus_be0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 } } }, align 4
@bus_be1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 } } }, align 4
@bus_be2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 } } }, align 4
@bus_drc0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 } } }, align 4
@bus_drc1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 } } }, align 4
@fe0_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 } }, i32 0 }, align 4
@fe1_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 } }, i32 0 }, align 4
@fe2_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.112 } }, i32 0 }, align 4
@be0_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.114 } }, i32 0 }, align 4
@be1_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 20, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 } }, i32 0 }, align 4
@be2_div_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 24, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 } }, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"fe0\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"fe0-div\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.8 = internal global %struct.clk_init_data { ptr @.str.6, ptr @ccu_gate_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"fe1\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"fe1-div\00", align 1
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.9, ptr @ccu_gate_ops, ptr @.compoundliteral.11, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"fe2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"fe2-div\00", align 1
@.compoundliteral.15 = internal global [1 x ptr] [ptr @.str.14], align 4
@.compoundliteral.16 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_gate_ops, ptr @.compoundliteral.15, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"iep-deu0\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.compoundliteral.19 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.20 = internal global %struct.clk_init_data { ptr @.str.17, ptr @ccu_gate_ops, ptr @.compoundliteral.19, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"iep-deu1\00", align 1
@.compoundliteral.22 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.23 = internal global %struct.clk_init_data { ptr @.str.21, ptr @ccu_gate_ops, ptr @.compoundliteral.22, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"be0\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"be0-div\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.25], align 4
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.24, ptr @ccu_gate_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"be1\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"be1-div\00", align 1
@.compoundliteral.30 = internal global [1 x ptr] [ptr @.str.29], align 4
@.compoundliteral.31 = internal global %struct.clk_init_data { ptr @.str.28, ptr @ccu_gate_ops, ptr @.compoundliteral.30, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"be2\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"be2-div\00", align 1
@.compoundliteral.34 = internal global [1 x ptr] [ptr @.str.33], align 4
@.compoundliteral.35 = internal global %struct.clk_init_data { ptr @.str.32, ptr @ccu_gate_ops, ptr @.compoundliteral.34, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.36 = private unnamed_addr constant [9 x i8] c"iep-drc0\00", align 1
@.compoundliteral.37 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.38 = internal global %struct.clk_init_data { ptr @.str.36, ptr @ccu_gate_ops, ptr @.compoundliteral.37, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"iep-drc1\00", align 1
@.compoundliteral.40 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.41 = internal global %struct.clk_init_data { ptr @.str.39, ptr @ccu_gate_ops, ptr @.compoundliteral.40, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.compoundliteral.43 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.44 = internal global %struct.clk_init_data { ptr @.str.42, ptr @ccu_gate_ops, ptr @.compoundliteral.43, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"dram-fe0\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@.compoundliteral.47 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.48 = internal global %struct.clk_init_data { ptr @.str.45, ptr @ccu_gate_ops, ptr @.compoundliteral.47, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"dram-fe1\00", align 1
@.compoundliteral.50 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.51 = internal global %struct.clk_init_data { ptr @.str.49, ptr @ccu_gate_ops, ptr @.compoundliteral.50, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"dram-fe2\00", align 1
@.compoundliteral.53 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.54 = internal global %struct.clk_init_data { ptr @.str.52, ptr @ccu_gate_ops, ptr @.compoundliteral.53, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [10 x i8] c"dram-deu0\00", align 1
@.compoundliteral.56 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.57 = internal global %struct.clk_init_data { ptr @.str.55, ptr @ccu_gate_ops, ptr @.compoundliteral.56, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.58 = private unnamed_addr constant [10 x i8] c"dram-deu1\00", align 1
@.compoundliteral.59 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.60 = internal global %struct.clk_init_data { ptr @.str.58, ptr @ccu_gate_ops, ptr @.compoundliteral.59, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [9 x i8] c"dram-be0\00", align 1
@.compoundliteral.62 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.63 = internal global %struct.clk_init_data { ptr @.str.61, ptr @ccu_gate_ops, ptr @.compoundliteral.62, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.64 = private unnamed_addr constant [9 x i8] c"dram-be1\00", align 1
@.compoundliteral.65 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.66 = internal global %struct.clk_init_data { ptr @.str.64, ptr @ccu_gate_ops, ptr @.compoundliteral.65, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.67 = private unnamed_addr constant [9 x i8] c"dram-be2\00", align 1
@.compoundliteral.68 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.69 = internal global %struct.clk_init_data { ptr @.str.67, ptr @ccu_gate_ops, ptr @.compoundliteral.68, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.70 = private unnamed_addr constant [10 x i8] c"dram-drc0\00", align 1
@.compoundliteral.71 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.72 = internal global %struct.clk_init_data { ptr @.str.70, ptr @ccu_gate_ops, ptr @.compoundliteral.71, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.73 = private unnamed_addr constant [10 x i8] c"dram-drc1\00", align 1
@.compoundliteral.74 = internal global [1 x ptr] [ptr @.str.46], align 4
@.compoundliteral.75 = internal global %struct.clk_init_data { ptr @.str.73, ptr @ccu_gate_ops, ptr @.compoundliteral.74, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.76 = private unnamed_addr constant [8 x i8] c"bus-fe0\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"bus-de\00", align 1
@.compoundliteral.78 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.79 = internal global %struct.clk_init_data { ptr @.str.76, ptr @ccu_gate_ops, ptr @.compoundliteral.78, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"bus-fe1\00", align 1
@.compoundliteral.81 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.82 = internal global %struct.clk_init_data { ptr @.str.80, ptr @ccu_gate_ops, ptr @.compoundliteral.81, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"bus-fe2\00", align 1
@.compoundliteral.84 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.83, ptr @ccu_gate_ops, ptr @.compoundliteral.84, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"bus-deu0\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.88 = internal global %struct.clk_init_data { ptr @.str.86, ptr @ccu_gate_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.89 = private unnamed_addr constant [9 x i8] c"bus-deu1\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.91 = internal global %struct.clk_init_data { ptr @.str.89, ptr @ccu_gate_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"bus-be0\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.94 = internal global %struct.clk_init_data { ptr @.str.92, ptr @ccu_gate_ops, ptr @.compoundliteral.93, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.95 = private unnamed_addr constant [8 x i8] c"bus-be1\00", align 1
@.compoundliteral.96 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.97 = internal global %struct.clk_init_data { ptr @.str.95, ptr @ccu_gate_ops, ptr @.compoundliteral.96, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.98 = private unnamed_addr constant [8 x i8] c"bus-be2\00", align 1
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.100 = internal global %struct.clk_init_data { ptr @.str.98, ptr @ccu_gate_ops, ptr @.compoundliteral.99, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.101 = private unnamed_addr constant [9 x i8] c"bus-drc0\00", align 1
@.compoundliteral.102 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.103 = internal global %struct.clk_init_data { ptr @.str.101, ptr @ccu_gate_ops, ptr @.compoundliteral.102, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.104 = private unnamed_addr constant [9 x i8] c"bus-drc1\00", align 1
@.compoundliteral.105 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.106 = internal global %struct.clk_init_data { ptr @.str.104, ptr @ccu_gate_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 0 }, align 4
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.107 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.108 = internal global %struct.clk_init_data { ptr @.str.7, ptr @ccu_div_ops, ptr @.compoundliteral.107, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.109 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.110 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_div_ops, ptr @.compoundliteral.109, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.111 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.112 = internal global %struct.clk_init_data { ptr @.str.14, ptr @ccu_div_ops, ptr @.compoundliteral.111, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.113 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.114 = internal global %struct.clk_init_data { ptr @.str.25, ptr @ccu_div_ops, ptr @.compoundliteral.113, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.29, ptr @ccu_div_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.117 = internal global [1 x ptr] [ptr @.str.18], align 4
@.compoundliteral.118 = internal global %struct.clk_init_data { ptr @.str.33, ptr @ccu_div_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, align 4
@sun9i_a80_de_hw_clks = internal global { i32, [37 x ptr] } { i32 37, [37 x ptr] [ptr getelementptr (i8, ptr @fe0_clk, i64 24), ptr getelementptr (i8, ptr @fe1_clk, i64 24), ptr getelementptr (i8, ptr @fe2_clk, i64 24), ptr getelementptr (i8, ptr @iep_deu0_clk, i64 24), ptr getelementptr (i8, ptr @iep_deu1_clk, i64 24), ptr getelementptr (i8, ptr @be0_clk, i64 24), ptr getelementptr (i8, ptr @be1_clk, i64 24), ptr getelementptr (i8, ptr @be2_clk, i64 24), ptr getelementptr (i8, ptr @iep_drc0_clk, i64 24), ptr getelementptr (i8, ptr @iep_drc1_clk, i64 24), ptr getelementptr (i8, ptr @merge_clk, i64 24), ptr getelementptr (i8, ptr @dram_fe0_clk, i64 24), ptr getelementptr (i8, ptr @dram_fe1_clk, i64 24), ptr getelementptr (i8, ptr @dram_fe2_clk, i64 24), ptr getelementptr (i8, ptr @dram_deu0_clk, i64 24), ptr getelementptr (i8, ptr @dram_deu1_clk, i64 24), ptr getelementptr (i8, ptr @dram_be0_clk, i64 24), ptr getelementptr (i8, ptr @dram_be1_clk, i64 24), ptr getelementptr (i8, ptr @dram_be2_clk, i64 24), ptr getelementptr (i8, ptr @dram_drc0_clk, i64 24), ptr getelementptr (i8, ptr @dram_drc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_fe0_clk, i64 24), ptr getelementptr (i8, ptr @bus_fe1_clk, i64 24), ptr getelementptr (i8, ptr @bus_fe2_clk, i64 24), ptr getelementptr (i8, ptr @bus_deu0_clk, i64 24), ptr getelementptr (i8, ptr @bus_deu1_clk, i64 24), ptr getelementptr (i8, ptr @bus_be0_clk, i64 24), ptr getelementptr (i8, ptr @bus_be1_clk, i64 24), ptr getelementptr (i8, ptr @bus_be2_clk, i64 24), ptr getelementptr (i8, ptr @bus_drc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_drc1_clk, i64 24), ptr getelementptr (i8, ptr @fe0_div_clk, i64 68), ptr getelementptr (i8, ptr @fe1_div_clk, i64 68), ptr getelementptr (i8, ptr @fe2_div_clk, i64 68), ptr getelementptr (i8, ptr @be0_div_clk, i64 68), ptr getelementptr (i8, ptr @be1_div_clk, i64 68), ptr getelementptr (i8, ptr @be2_div_clk, i64 68)] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun9i_a80_de_clk_driver_exit, ptr @__initcall__kmod_sun9i_a80_de_ccu__162_273_sun9i_a80_de_clk_driver_init6, ptr @sun9i_a80_de_clk_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_a80_de_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_de_clk_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_de_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun9i_a80_de_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_de_clk_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %41

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.1) #4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %11, label %41, label %12

12:                                               ; preds = %10
  %13 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %13) #5
  br label %41

14:                                               ; preds = %6
  %15 = tail call ptr @__devm_reset_control_get(ptr noundef %7, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = icmp eq ptr %15, inttoptr (i32 -517 to ptr)
  br i1 %18, label %41, label %19

19:                                               ; preds = %17
  %20 = ptrtoint ptr %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %20) #5
  br label %41

21:                                               ; preds = %14
  %22 = tail call i32 @clk_prepare(ptr noundef %8) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call i32 @clk_enable(ptr noundef %8) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %25, %27 ], [ %22, %21 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %29) #5
  br label %41

30:                                               ; preds = %24
  %31 = tail call i32 @reset_control_deassert(ptr noundef %15) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %31) #5
  br label %39

34:                                               ; preds = %30
  %35 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @sun9i_a80_de_clk_desc) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @reset_control_assert(ptr noundef %15) #4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %31, %33 ], [ %35, %37 ]
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %41

41:                                               ; preds = %39, %34, %28, %19, %17, %12, %10, %4
  %42 = phi i32 [ %5, %4 ], [ %29, %28 ], [ %40, %39 ], [ %13, %12 ], [ -517, %10 ], [ %20, %19 ], [ -517, %17 ], [ 0, %34 ]
  ret i32 %42
}

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
