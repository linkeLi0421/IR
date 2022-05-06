; ModuleID = '/llk/IR/drivers/clk/renesas/renesas-cpg-mssr.c_pt.bc'
source_filename = "../drivers/clk/renesas/renesas-cpg-mssr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpg_mssr_info = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_power_governor = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.cpg_mssr_clk_domain = type { %struct.generic_pm_domain, i32, [0 x i32] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.mssr_mod_clk = type { ptr, i32, i32 }
%struct.cpg_mssr_priv = type { %struct.reset_controller_dev, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, %struct.raw_notifier_head, ptr, ptr, ptr, ptr, [28 x %struct.anon.7], [0 x ptr] }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.7 = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mstp_clock = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mssr_mod_reparent = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@cpg_mssr_clk_domain = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@cpg_mssr_priv = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_renesas_cpg_mssr__166_1108_cpg_mssr_init4 = internal global ptr @cpg_mssr_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description167 = internal constant [53 x i8] c"renesas_cpg_mssr.description=Renesas CPG/MSSR Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [59 x i8] c"renesas_cpg_mssr.file=drivers/clk/renesas/renesas-cpg-mssr\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [32 x i8] c"renesas_cpg_mssr.license=GPL v2\00", section ".modinfo", align 1
@mstpsr = internal constant [12 x i16] [i16 48, i16 56, i16 64, i16 72, i16 76, i16 60, i16 448, i16 452, i16 2464, i16 2468, i16 2472, i16 2476], align 2
@smstpcr = internal constant [12 x i16] [i16 304, i16 308, i16 312, i16 316, i16 320, i16 324, i16 328, i16 332, i16 2448, i16 2452, i16 2456, i16 2460], align 2
@srcr = internal constant [12 x i16] [i16 160, i16 168, i16 176, i16 184, i16 188, i16 196, i16 456, i16 460, i16 2336, i16 2340, i16 2344, i16 2348], align 2
@srstclr = internal constant [12 x i16] [i16 2368, i16 2372, i16 2376, i16 2380, i16 2384, i16 2388, i16 2392, i16 2396, i16 2400, i16 2404, i16 2408, i16 2412], align 2
@stbcr = internal constant [11 x i16] [i16 -1, i16 16, i16 20, i16 1040, i16 1044, i16 1048, i16 1052, i16 1056, i16 1060, i16 1064, i16 1068], align 2
@mstpsr_for_gen4 = internal constant [28 x i16] [i16 11776, i16 11780, i16 11784, i16 11788, i16 11792, i16 11796, i16 11800, i16 11804, i16 11808, i16 11812, i16 11816, i16 11820, i16 11824, i16 11828, i16 11832, i16 11836, i16 11840, i16 11844, i16 11848, i16 11852, i16 11856, i16 11860, i16 11864, i16 11868, i16 11872, i16 11876, i16 11880, i16 11884], align 2
@mstpcr_for_gen4 = internal constant [28 x i16] [i16 11520, i16 11524, i16 11528, i16 11532, i16 11536, i16 11540, i16 11544, i16 11548, i16 11552, i16 11556, i16 11560, i16 11564, i16 11568, i16 11572, i16 11576, i16 11580, i16 11584, i16 11588, i16 11592, i16 11596, i16 11600, i16 11604, i16 11608, i16 11612, i16 11616, i16 11620, i16 11624, i16 11628], align 2
@srcr_for_gen4 = internal constant [28 x i16] [i16 11264, i16 11268, i16 11272, i16 11276, i16 11280, i16 11284, i16 11288, i16 11292, i16 11296, i16 11300, i16 11304, i16 11308, i16 11312, i16 11316, i16 11320, i16 11324, i16 11328, i16 11332, i16 11336, i16 11340, i16 11344, i16 11348, i16 11352, i16 11356, i16 11360, i16 11364, i16 11368, i16 11372], align 2
@srstclr_for_gen4 = internal constant [28 x i16] [i16 11392, i16 11396, i16 11400, i16 11404, i16 11408, i16 11412, i16 11416, i16 11420, i16 11424, i16 11428, i16 11432, i16 11436, i16 11440, i16 11444, i16 11448, i16 11452, i16 11456, i16 11460, i16 11464, i16 11468, i16 11472, i16 11476, i16 11480, i16 11484, i16 11488, i16 11492, i16 11496, i16 11500], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid %s clock index %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid CPG clock type %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot get %s clock %u: %ld\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s has unsupported core clock type %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to register %s clock %s: %ld\0A\00", align 1
@cpg_mstp_clock_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cpg_mstp_clock_enable, ptr @cpg_mstp_clock_disable, ptr @cpg_mstp_clock_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to enable SMSTP %p[%d]\0A\00", align 1
@cpg_mssr_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpg_mssr_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_mssr_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"renesas-cpg-mssr\00", align 1
@cpg_mssr_match = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s9210-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r7s9210_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7742_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7745-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7745_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77470-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77470_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7790_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7792_cpg_mssr_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7794-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7794_cpg_mssr_info }, %struct.of_device_id zeroinitializer], align 4
@cpg_mssr_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_mssr_suspend_noirq, ptr @cpg_mssr_resume_noirq, ptr @cpg_mssr_suspend_noirq, ptr @cpg_mssr_resume_noirq, ptr @cpg_mssr_suspend_noirq, ptr @cpg_mssr_resume_noirq, ptr null, ptr null, ptr null }, align 4
@r7s9210_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7742_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7743_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7745_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a77470_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7790_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7791_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7792_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@r8a7794_cpg_mssr_info = external dso_local constant %struct.cpg_mssr_info, align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to enable %s%u[0x%x]\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"STB\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"SMSTP\00", align 1
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@cpg_mssr_reset_ops = internal constant %struct.reset_control_ops { ptr @cpg_mssr_reset, ptr @cpg_mssr_assert, ptr @cpg_mssr_deassert, ptr @cpg_mssr_status }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Invalid reset index %u\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__initcall__kmod_renesas_cpg_mssr__166_1108_cpg_mssr_init4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpg_mssr_attach_dev(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = load ptr, ptr @cpg_mssr_clk_domain, align 4
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %2
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cpg_mssr_clk_domain, ptr %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 1
  br label %17

17:                                               ; preds = %40, %11
  %18 = phi i32 [ 0, %11 ], [ %41, %40 ]
  %19 = load ptr, ptr %3, align 4
  %20 = load ptr, ptr %12, align 8
  %21 = icmp eq ptr %19, %20
  %22 = load i32, ptr %13, align 4
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i32, ptr %14, align 4
  switch i32 %26, label %40 [
    i32 0, label %27
    i32 1, label %44
  ]

27:                                               ; preds = %25
  %28 = load i32, ptr %15, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %16, align 4
  br label %35

32:                                               ; preds = %35
  %33 = add nuw i32 %36, 1
  %34 = icmp eq i32 %33, %28
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ 0, %30 ], [ %33, %32 ]
  %37 = getelementptr %struct.cpg_mssr_clk_domain, ptr %4, i32 0, i32 2, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %31, %38
  br i1 %39, label %44, label %32

40:                                               ; preds = %32, %27, %25, %17
  call void @of_node_put(ptr noundef %19) #11
  %41 = add i32 %18, 1
  %42 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %41, ptr noundef nonnull %3) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %17, label %59

44:                                               ; preds = %35, %25
  %45 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #11
  %46 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %46) #11
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = ptrtoint ptr %45 to i32
  br label %59

50:                                               ; preds = %44
  %51 = call i32 @pm_clk_create(ptr noundef %1) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 @pm_clk_add_clk(ptr noundef %1, ptr noundef %45) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  call void @pm_clk_destroy(ptr noundef %1) #11
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %51, %50 ], [ %54, %56 ]
  call void @clk_put(ptr noundef %45) #11
  br label %59

59:                                               ; preds = %57, %53, %48, %40, %8, %2
  %60 = phi i32 [ %49, %48 ], [ %58, %57 ], [ -517, %2 ], [ 0, %53 ], [ 0, %8 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpg_mssr_detach_dev(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4, %2
  tail call void @pm_clk_destroy(ptr noundef %1) #11
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cpg_mssr_early_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 section ".init.text" {
  %3 = tail call fastcc i32 @cpg_mssr_common_init(ptr noundef null, ptr noundef %0, ptr noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cpg_mssr_info, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %15, %5
  %10 = getelementptr inbounds %struct.cpg_mssr_info, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpg_mssr_info, ptr %1, i32 0, i32 2
  br label %23

15:                                               ; preds = %15, %5
  %16 = phi i32 [ %20, %15 ], [ 0, %5 ]
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr %struct.cpg_core_clk, ptr %17, i32 %16
  %19 = load ptr, ptr @cpg_mssr_priv, align 4
  tail call fastcc void @cpg_mssr_register_core_clk(ptr noundef %18, ptr noundef %1, ptr noundef %19) #12
  %20 = add nuw i32 %16, 1
  %21 = load i32, ptr %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %15, label %9

23:                                               ; preds = %23, %13
  %24 = phi i32 [ 0, %13 ], [ %28, %23 ]
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr %struct.mssr_mod_clk, ptr %25, i32 %24
  %27 = load ptr, ptr @cpg_mssr_priv, align 4
  tail call fastcc void @cpg_mssr_register_mod_clk(ptr noundef %26, ptr noundef %1, ptr noundef %27) #12
  %28 = add nuw i32 %24, 1
  %29 = load i32, ptr %10, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %23, label %31

31:                                               ; preds = %23, %9, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mssr_common_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 section ".init.text" {
  %4 = getelementptr inbounds %struct.cpg_mssr_info, ptr %2, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.cpg_mssr_info, ptr %2, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpg_mssr_info, ptr %2, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #11
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 320) #11
  %20 = select i1 %17, i32 -1, i32 %19
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %72, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 5
  store ptr %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 4
  store i32 0, ptr %26, align 8
  %27 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #11
  %28 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 2
  store ptr %27, ptr %28, align 16
  %29 = icmp eq ptr %27, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %23
  store ptr %21, ptr @cpg_mssr_priv, align 4
  %31 = load i32, ptr %11, align 4
  %32 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 6
  store i32 %31, ptr %32, align 64
  %33 = load i32, ptr %13, align 4
  %34 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 7
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cpg_mssr_info, ptr %2, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 8
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 9
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cpg_mssr_info, ptr %2, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  switch i32 %40, label %67 [
    i32 0, label %42
    i32 1, label %47
    i32 2, label %49
  ]

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 10
  store ptr @mstpsr, ptr %43, align 16
  %44 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 11
  store ptr @smstpcr, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 12
  store ptr @srcr, ptr %45, align 8
  %46 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 13
  store ptr @srstclr, ptr %46, align 4
  br label %54

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 11
  store ptr @stbcr, ptr %48, align 4
  br label %54

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 10
  store ptr @mstpsr_for_gen4, ptr %50, align 16
  %51 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 11
  store ptr @mstpcr_for_gen4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 12
  store ptr @srcr_for_gen4, ptr %52, align 8
  %53 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %21, i32 0, i32 13
  store ptr @srstclr_for_gen4, ptr %53, align 4
  br label %54

54:                                               ; preds = %49, %47, %42
  %55 = icmp eq i32 %15, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ %59, %56 ], [ 0, %54 ]
  %58 = getelementptr %struct.cpg_mssr_priv, ptr %21, i32 0, i32 15, i32 %57
  store ptr inttoptr (i32 -2 to ptr), ptr %58, align 4
  %59 = add nuw i32 %57, 1
  %60 = icmp eq i32 %59, %15
  br i1 %60, label %61, label %56

61:                                               ; preds = %56, %54
  %62 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @cpg_mssr_clk_src_twocell_get, ptr noundef nonnull %21) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %28, align 16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %30
  %68 = phi i32 [ %62, %64 ], [ -22, %30 ]
  %69 = phi ptr [ %65, %64 ], [ %27, %30 ]
  tail call void @iounmap(ptr noundef nonnull %69) #11
  br label %70

70:                                               ; preds = %67, %64, %23
  %71 = phi i32 [ %68, %67 ], [ %62, %64 ], [ -12, %23 ]
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %72

72:                                               ; preds = %70, %61, %10, %7
  %73 = phi i32 [ %71, %70 ], [ %8, %7 ], [ -12, %10 ], [ 0, %61 ]
  ret i32 %73
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cpg_mssr_register_core_clk(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %84, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %62 [
    i32 0, label %16
    i32 1, label %20
    i32 2, label %20
    i32 3, label %20
    i32 4, label %58
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @of_clk_get_by_name(ptr noundef %18, ptr noundef nonnull %11) #11
  br label %73

20:                                               ; preds = %13, %13, %13
  %21 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.cpg_mssr_priv, ptr %2, i32 0, i32 15, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %80, label %26

26:                                               ; preds = %20
  %27 = tail call ptr @__clk_get_name(ptr noundef %24) #11
  store ptr %27, ptr %4, align 4
  %28 = load i32, ptr %14, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %37 = and i32 %36, 63
  %38 = add nuw nsw i32 %37, 1
  %39 = mul i32 %38, %10
  %40 = load i32, ptr %14, align 4
  br label %41

41:                                               ; preds = %30, %26
  %42 = phi i32 [ %40, %30 ], [ %28, %26 ]
  %43 = phi i32 [ %39, %30 ], [ %10, %26 ]
  %44 = icmp eq i32 %42, 2
  %45 = load ptr, ptr %0, align 4
  br i1 %44, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %48, i32 %50
  %52 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 9
  %53 = call ptr @cpg_div6_register(ptr noundef %45, i32 noundef 1, ptr noundef nonnull %4, ptr noundef %51, ptr noundef %52) #11
  br label %73

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %45, ptr noundef %27, i32 noundef 0, i32 noundef %56, i32 noundef %43) #11
  br label %73

58:                                               ; preds = %13
  %59 = getelementptr inbounds %struct.cpg_core_clk, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull %11, ptr noundef null, i32 noundef 0, i32 noundef %60) #11
  br label %73

62:                                               ; preds = %13
  %63 = getelementptr inbounds %struct.cpg_mssr_info, ptr %1, i32 0, i32 17
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 15
  %68 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 9
  %71 = tail call ptr %64(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %67, ptr noundef %69, ptr noundef %70) #11
  br label %73

72:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %11, i32 noundef %15) #14
  br label %80

73:                                               ; preds = %66, %58, %54, %46, %16
  %74 = phi ptr [ %71, %66 ], [ %61, %58 ], [ %53, %46 ], [ %57, %54 ], [ %19, %16 ]
  %75 = icmp eq ptr %74, null
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %77 = or i1 %75, %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = getelementptr %struct.cpg_mssr_priv, ptr %2, i32 0, i32 15, i32 %8
  store ptr %74, ptr %79, align 4
  br label %84

80:                                               ; preds = %73, %72, %20
  %81 = phi ptr [ %74, %73 ], [ %24, %20 ], [ inttoptr (i32 -524 to ptr), %72 ]
  %82 = load ptr, ptr %0, align 4
  %83 = ptrtoint ptr %81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, ptr noundef %82, i32 noundef %83) #14
  br label %84

84:                                               ; preds = %80, %78, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cpg_mssr_register_mod_clk(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #4 section ".init.text" {
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mssr_mod_clk, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !8
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %76, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mssr_mod_clk, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.cpg_mssr_priv, ptr %2, i32 0, i32 15, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %71, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 20) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  store ptr %23, ptr %4, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @cpg_mstp_clock_ops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 4, ptr %25, align 4
  %26 = tail call ptr @__clk_get_name(ptr noundef %16) #11
  store ptr %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %2, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %9, %30
  %32 = getelementptr inbounds %struct.mstp_clock, ptr %20, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mstp_clock, ptr %20, i32 0, i32 2
  store ptr %2, ptr %33, align 8
  %34 = getelementptr inbounds %struct.clk_hw, ptr %20, i32 0, i32 2
  store ptr %4, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cpg_mssr_info, ptr %1, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.cpg_mssr_info, ptr %1, i32 0, i32 12
  br label %40

40:                                               ; preds = %55, %38
  %41 = phi i32 [ %36, %38 ], [ %56, %55 ]
  %42 = phi i32 [ 0, %38 ], [ %57, %55 ]
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr i32, ptr %43, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %9, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = call i32 @cpg_mstp_clock_is_enabled(ptr noundef nonnull %20)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, ptr %35, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, ptr %25, align 4
  %54 = or i32 %53, 2048
  store i32 %54, ptr %25, align 4
  br label %59

55:                                               ; preds = %50, %40
  %56 = phi i32 [ %51, %50 ], [ %41, %40 ]
  %57 = add nuw i32 %42, 1
  %58 = icmp ult i32 %57, %56
  br i1 %58, label %40, label %59

59:                                               ; preds = %55, %52, %22
  %60 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %20) #11
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = getelementptr %struct.cpg_mssr_priv, ptr %2, i32 0, i32 15, i32 %9
  store ptr %60, ptr %63, align 4
  %64 = load i32, ptr %32, align 4
  %65 = and i32 %64, 31
  %66 = shl nuw i32 1, %65
  %67 = lshr i32 %64, 5
  %68 = getelementptr %struct.cpg_mssr_priv, ptr %2, i32 0, i32 14, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %66, %69
  store i32 %70, ptr %68, align 4
  br label %76

71:                                               ; preds = %59, %18, %12
  %72 = phi ptr [ %20, %59 ], [ null, %12 ], [ null, %18 ]
  %73 = phi ptr [ %60, %59 ], [ %16, %12 ], [ inttoptr (i32 -12 to ptr), %18 ]
  %74 = load ptr, ptr %0, align 4
  %75 = ptrtoint ptr %73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %74, i32 noundef %75) #14
  call void @kfree(ptr noundef %72) #11
  br label %76

76:                                               ; preds = %71, %62, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpg_mssr_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @cpg_mssr_driver, ptr noundef nonnull @cpg_mssr_probe, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cpg_core_nullify_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 section ".init.text" {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %4
  %7 = phi i32 [ %16, %15 ], [ 0, %4 ]
  %8 = getelementptr %struct.cpg_core_clk, ptr %0, i32 %7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %2
  %11 = icmp ugt i32 %9, %3
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = getelementptr %struct.cpg_core_clk, ptr %0, i32 %7
  store ptr null, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %6
  %16 = add nuw i32 %7, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mssr_mod_nullify(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 section ".init.text" {
  %5 = icmp ne i32 %1, 0
  %6 = icmp ne i32 %3, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %19, %4
  %9 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %10 = phi i32 [ %21, %19 ], [ 0, %4 ]
  %11 = getelementptr %struct.mssr_mod_clk, ptr %0, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i32, ptr %2, i32 %9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = getelementptr %struct.mssr_mod_clk, ptr %0, i32 %10
  store ptr null, ptr %17, align 4
  %18 = add nuw i32 %9, 1
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i32 [ %18, %16 ], [ %9, %8 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp ult i32 %21, %1
  %23 = icmp ult i32 %20, %3
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %8, label %25

25:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mssr_mod_reparent(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 section ".init.text" {
  %5 = icmp ne i32 %1, 0
  %6 = icmp ne i32 %3, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %21, %4
  %9 = phi i32 [ %22, %21 ], [ 0, %4 ]
  %10 = phi i32 [ %23, %21 ], [ 0, %4 ]
  %11 = getelementptr %struct.mssr_mod_clk, ptr %0, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.mssr_mod_reparent, ptr %2, i32 %9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = getelementptr %struct.mssr_mod_reparent, ptr %2, i32 %9, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.mssr_mod_clk, ptr %0, i32 %10, i32 2
  store i32 %18, ptr %19, align 4
  %20 = add nuw i32 %9, 1
  br label %21

21:                                               ; preds = %16, %8
  %22 = phi i32 [ %20, %16 ], [ %9, %8 ]
  %23 = add nuw i32 %10, 1
  %24 = icmp ult i32 %23, %1
  %25 = icmp ult i32 %22, %3
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %8, label %27

27:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cpg_mssr_clk_src_twocell_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %3, align 4
  switch i32 %8, label %47 [
    i32 0, label %9
    i32 1, label %14
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %5, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %5) #14
  br label %56

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = freeze i32 %5
  %20 = udiv i32 %19, 10
  %21 = shl i32 %20, 5
  %22 = mul i32 %20, 10
  %23 = sub i32 %19, %22
  %24 = or i32 %21, %23
  %25 = sub nsw i32 7, %23
  br label %34

26:                                               ; preds = %14
  %27 = freeze i32 %5
  %28 = udiv i32 %27, 100
  %29 = mul i32 %28, -68
  %30 = add i32 %29, %5
  %31 = mul i32 %28, 100
  %32 = sub i32 %27, %31
  %33 = sub nsw i32 31, %32
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i32 [ %24, %18 ], [ %30, %26 ]
  %36 = phi i32 [ %25, %18 ], [ %33, %26 ]
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %35, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %5) #14
  br label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %35
  br label %48

47:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %8) #14
  br label %56

48:                                               ; preds = %43, %9
  %49 = phi ptr [ @.str.4, %43 ], [ @.str.2, %9 ]
  %50 = phi i32 [ %46, %43 ], [ %5, %9 ]
  %51 = getelementptr %struct.cpg_mssr_priv, ptr %1, i32 0, i32 15, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = ptrtoint ptr %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %49, i32 noundef %5, i32 noundef %55) #14
  br label %56

56:                                               ; preds = %54, %48, %47, %42, %13
  %57 = phi ptr [ inttoptr (i32 -22 to ptr), %47 ], [ inttoptr (i32 -22 to ptr), %42 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %52, %48 ], [ %52, %54 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpg_div6_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 5
  %15 = getelementptr i16, ptr %11, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %8, i32 %17
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %20 = zext i8 %19 to i32
  br label %32

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 5
  %27 = getelementptr i16, ptr %23, i32 %26
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %8, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %32

32:                                               ; preds = %21, %9
  %33 = phi i32 [ %20, %9 ], [ %31, %21 ]
  %34 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 31
  %37 = xor i32 %33, -1
  %38 = lshr i32 %37, %36
  %39 = and i32 %38, 1
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpg_mstp_clock_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mstp_clock_endisable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mstp_clock, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = and i32 %6, 31
  %9 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw i32 1, %8
  %12 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  %17 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i16, ptr %20, i32 %7
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %18, i32 %23
  br i1 %16, label %25, label %52

25:                                               ; preds = %2
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %27 = zext i8 %26 to i32
  %28 = xor i32 %11, -1
  %29 = and i32 %27, %28
  %30 = or i32 %11, %27
  %31 = select i1 %1, i32 %29, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr %17, align 4
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr i16, ptr %34, i32 %7
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %33, i32 %37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %32) #11, !srcloc !16
  %39 = load ptr, ptr %17, align 4
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr i16, ptr %40, i32 %7
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %39, i32 %43
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %46 = load ptr, ptr %17, align 4
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr i16, ptr %47, i32 %7
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "", "r,~{memory}"(ptr %51) #11, !srcloc !18
  br label %64

52:                                               ; preds = %2
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %54 = xor i32 %11, -1
  %55 = and i32 %53, %54
  %56 = or i32 %53, %11
  %57 = select i1 %1, i32 %55, i32 %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %58 = load ptr, ptr %17, align 4
  %59 = load ptr, ptr %19, align 4
  %60 = getelementptr i16, ptr %59, i32 %7
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %58, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %57) #11, !srcloc !21
  br label %64

64:                                               ; preds = %52, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #11
  br i1 %1, label %65, label %93

65:                                               ; preds = %64
  %66 = load i32, ptr %14, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %93, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 2
  %70 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 10
  br label %71

71:                                               ; preds = %82, %68
  %72 = phi i32 [ 1000, %68 ], [ %83, %82 ]
  %73 = load ptr, ptr %69, align 4
  %74 = load ptr, ptr %70, align 4
  %75 = getelementptr i16, ptr %74, i32 %7
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %73, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %80 = and i32 %79, %11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !24
  %83 = add nsw i32 %72, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %71

85:                                               ; preds = %82
  %86 = load ptr, ptr %69, align 4
  %87 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %4, i32 0, i32 11
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i16, ptr %88, i32 %7
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %86, i32 %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef %92, i32 noundef %8) #14
  br label %93

93:                                               ; preds = %85, %71, %65, %64
  %94 = phi i32 [ -110, %85 ], [ 0, %65 ], [ 0, %64 ], [ 0, %71 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpg_mssr_probe(ptr noundef %0) #4 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %6 = load ptr, ptr @cpg_mssr_priv, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = tail call fastcc i32 @cpg_mssr_common_init(ptr noundef %2, ptr noundef %9, ptr noundef %5) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load ptr, ptr @cpg_mssr_priv, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ %6, %1 ]
  %16 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %15, i32 0, i32 1
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds %struct.cpg_mssr_info, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.cpg_mssr_info, ptr %5, i32 0, i32 4
  br label %29

23:                                               ; preds = %29, %14
  %24 = getelementptr inbounds %struct.cpg_mssr_info, ptr %5, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpg_mssr_info, ptr %5, i32 0, i32 9
  br label %36

29:                                               ; preds = %29, %21
  %30 = phi i32 [ 0, %21 ], [ %33, %29 ]
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr %struct.cpg_core_clk, ptr %31, i32 %30
  tail call fastcc void @cpg_mssr_register_core_clk(ptr noundef %32, ptr noundef %5, ptr noundef %15) #12
  %33 = add nuw i32 %30, 1
  %34 = load i32, ptr %18, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %29, label %23

36:                                               ; preds = %36, %27
  %37 = phi i32 [ 0, %27 ], [ %40, %36 ]
  %38 = load ptr, ptr %28, align 4
  %39 = getelementptr %struct.mssr_mod_clk, ptr %38, i32 %37
  tail call fastcc void @cpg_mssr_register_mod_clk(ptr noundef %39, ptr noundef %5, ptr noundef %15) #12
  %40 = add nuw i32 %37, 1
  %41 = load i32, ptr %24, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %36, label %43

43:                                               ; preds = %36, %23
  %44 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @cpg_mssr_del_clk_provider, ptr noundef %4) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @of_clk_del_provider(ptr noundef %4) #11
  br label %60

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpg_mssr_info, ptr %5, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.cpg_mssr_info, ptr %5, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = tail call fastcc i32 @cpg_mssr_add_clk_domain(ptr noundef %2, ptr noundef %49, i32 noundef %51) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %15, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @cpg_mssr_reset_controller_register(ptr noundef %15)
  br label %60

60:                                               ; preds = %58, %54, %47, %46, %8
  %61 = phi i32 [ %10, %8 ], [ %44, %46 ], [ %52, %47 ], [ 0, %54 ], [ %59, %58 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_suspend_noirq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 11
  br label %10

10:                                               ; preds = %32, %6
  %11 = phi i32 [ 0, %6 ], [ %33, %32 ]
  %12 = getelementptr %struct.cpg_mssr_priv, ptr %3, i32 0, i32 14, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %7, align 4
  %17 = icmp eq i32 %16, 1
  %18 = load ptr, ptr %8, align 4
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i16, ptr %19, i32 %11
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %18, i32 %22
  br i1 %17, label %24, label %27

24:                                               ; preds = %15
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %26 = zext i8 %25 to i32
  br label %29

27:                                               ; preds = %15
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %26, %24 ], [ %28, %27 ]
  %31 = getelementptr %struct.cpg_mssr_priv, ptr %3, i32 0, i32 14, i32 %11, i32 1
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %10
  %33 = add nuw nsw i32 %11, 1
  %34 = icmp eq i32 %33, 28
  br i1 %34, label %35, label %10

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 9
  %37 = tail call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef 2, ptr noundef null) #11
  br label %38

38:                                               ; preds = %35, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_resume_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %97, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 9
  %8 = tail call i32 @raw_notifier_call_chain(ptr noundef %7, i32 noundef 16, ptr noundef null) #11
  %9 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 11
  %12 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %3, i32 0, i32 10
  br label %13

13:                                               ; preds = %94, %6
  %14 = phi i32 [ 0, %6 ], [ %95, %94 ]
  %15 = getelementptr %struct.cpg_mssr_priv, ptr %3, i32 0, i32 14, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %94, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 1
  %21 = load ptr, ptr %10, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i16, ptr %22, i32 %14
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %21, i32 %25
  br i1 %20, label %27, label %30

27:                                               ; preds = %18
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %29 = zext i8 %28 to i32
  br label %32

30:                                               ; preds = %18
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ]
  %34 = xor i32 %16, -1
  %35 = and i32 %33, %34
  %36 = getelementptr %struct.cpg_mssr_priv, ptr %3, i32 0, i32 14, i32 %14, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %16
  %39 = or i32 %38, %35
  %40 = icmp eq i32 %39, %33
  br i1 %40, label %94, label %41

41:                                               ; preds = %32
  %42 = load i32, ptr %9, align 4
  %43 = icmp eq i32 %42, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = trunc i32 %39 to i8
  %46 = load ptr, ptr %10, align 4
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i16, ptr %47, i32 %14
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %45) #11, !srcloc !16
  %52 = load ptr, ptr %10, align 4
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr i16, ptr %53, i32 %14
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %52, i32 %56
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !29
  %59 = load ptr, ptr %10, align 4
  %60 = load ptr, ptr %11, align 4
  %61 = getelementptr i16, ptr %60, i32 %14
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "", "r,~{memory}"(ptr %64) #11, !srcloc !30
  br label %94

65:                                               ; preds = %41
  %66 = load ptr, ptr %10, align 4
  %67 = load ptr, ptr %11, align 4
  %68 = getelementptr i16, ptr %67, i32 %14
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %66, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %39) #11, !srcloc !21
  %72 = load i32, ptr %36, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %16, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %87, %65
  %77 = phi i32 [ %88, %87 ], [ 1000, %65 ]
  %78 = load ptr, ptr %10, align 4
  %79 = load ptr, ptr %12, align 4
  %80 = getelementptr i16, ptr %79, i32 %14
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %78, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  %85 = and i32 %84, %74
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !33
  %88 = add nsw i32 %77, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %76

90:                                               ; preds = %87
  %91 = load i32, ptr %9, align 4
  %92 = icmp eq i32 %91, 1
  %93 = select i1 %92, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %93, i32 noundef %14, i32 noundef %85) #14
  br label %94

94:                                               ; preds = %90, %76, %65, %44, %32, %13
  %95 = add nuw nsw i32 %14, 1
  %96 = icmp eq i32 %95, 28
  br i1 %96, label %97, label %13

97:                                               ; preds = %94, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpg_mssr_del_clk_provider(ptr noundef %0) #0 {
  tail call void @of_clk_del_provider(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mssr_add_clk_domain(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 section ".init.text" {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = shl i32 %2, 2
  %7 = add i32 %6, 808
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %7, i32 noundef 3520) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cpg_mssr_clk_domain, ptr %8, i32 0, i32 1
  store i32 %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.cpg_mssr_clk_domain, ptr %8, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 4 %1, i32 %6, i1 false)
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 10
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 32
  store i32 13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 30
  store ptr @cpg_mssr_attach_dev, ptr %16, align 4
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 31
  store ptr @cpg_mssr_detach_dev, ptr %17, align 8
  %18 = tail call i32 @pm_genpd_init(ptr noundef nonnull %8, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @cpg_mssr_genpd_remove, ptr noundef nonnull %8) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @pm_genpd_remove(ptr noundef nonnull %8) #11
  br label %27

25:                                               ; preds = %20
  store ptr %8, ptr @cpg_mssr_clk_domain, align 4
  %26 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %5, ptr noundef nonnull %8) #11
  br label %27

27:                                               ; preds = %25, %23, %10, %3
  %28 = phi i32 [ %26, %25 ], [ -12, %3 ], [ %18, %10 ], [ %21, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mssr_reset_controller_register(ptr noundef %0) unnamed_addr #0 {
  store ptr @cpg_mssr_reset_ops, ptr %0, align 4
  %2 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 5
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 6
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 7
  store ptr @cpg_mssr_reset_xlate, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 8
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef %0) #11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpg_mssr_genpd_remove(ptr noundef %0) #0 {
  %2 = tail call i32 @pm_genpd_remove(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_reset_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = udiv i32 %5, 100
  %7 = mul i32 %6, 100
  %8 = sub i32 %5, %7
  %9 = icmp ugt i32 %8, 31
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = mul i32 %6, -68
  %12 = add i32 %11, %4
  %13 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %2
  %17 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14, i32 noundef %4) #14
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ -22, %16 ], [ %12, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i16, ptr %9, i32 %3
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #11, !srcloc !21
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 7516180) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i16, ptr %17, i32 %3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %5) #11, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !36
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i16, ptr %9, i32 %3
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #11, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i16, ptr %9, i32 %3
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #11, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_mssr_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpg_mssr_priv, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i16, ptr %8, i32 %3
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !38
  %14 = lshr i32 %13, %4
  %15 = and i32 %14, 1
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{i64 3847601}
!10 = !{i64 2151638358}
!11 = !{i64 3847381}
!12 = !{i64 2151633992}
!13 = !{i64 2151634422}
!14 = !{i64 2151629904}
!15 = !{i64 2151630110}
!16 = !{i64 3846986}
!17 = !{i64 2151630427}
!18 = !{i64 2151630482}
!19 = !{i64 2151630901}
!20 = !{i64 2151631107}
!21 = !{i64 3847183}
!22 = !{i64 2151631647}
!23 = !{i64 2151631893}
!24 = !{i64 2151631735}
!25 = !{i64 2151656053}
!26 = !{i64 2151656444}
!27 = !{i64 2151657172}
!28 = !{i64 2151657563}
!29 = !{i64 2151662149}
!30 = !{i64 2151662204}
!31 = !{i64 2151662981}
!32 = !{i64 2151663227}
!33 = !{i64 2151663069}
!34 = !{i64 2151646215}
!35 = !{i64 2151647123}
!36 = !{i64 2151649363}
!37 = !{i64 2151651615}
!38 = !{i64 2151653491}
