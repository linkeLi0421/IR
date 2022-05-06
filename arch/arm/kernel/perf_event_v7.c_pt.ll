; ModuleID = '/llk/IR/arch/arm/kernel/perf_event_v7.c_pt.bc'
source_filename = "../arch/arm/kernel/perf_event_v7.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pmu_probe_info = type { i32, i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.perf_pmu_events_attr = type { %struct.device_attribute, i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.perf_sample_data = type { i64, ptr, ptr, i64, %union.perf_sample_weight, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.87, i64, i64, i64, %struct.anon.88, ptr, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, i64, i64 }
%union.perf_sample_weight = type { i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.87 = type { i32, i32 }
%struct.anon.88 = type { i32, i32 }
%struct.perf_regs = type { i64, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.70, i64, i64, i64, %union.anon.71, i32, %union.anon.72, %union.anon.73, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.70 = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { i64 }
%union.anon.73 = type { i64 }
%struct.hw_perf_event = type { %union.anon.74, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.81, i64, i64, i64, i64 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_perf_event_v7__237_2046_armv7_pmu_driver_init6 = internal global ptr @armv7_pmu_driver_init, section ".initcall6.init", align 4
@armv7_pmu_driver = internal global %struct.platform_driver { ptr @armv7_pmu_device_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @armv7_pmu_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"armv7-pmu\00", align 1
@armv7_pmu_of_device_ids = internal constant [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a17-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a17_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a15-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a15_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a12-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a12_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a9_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a8-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a8_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a7-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a7_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a5-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a5_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,krait-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @krait_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scorpion-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scorpion_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scorpion-mp-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scorpion_mp_pmu_init }, %struct.of_device_id zeroinitializer], align 4
@armv7_pmu_probe_table = internal constant [3 x %struct.pmu_probe_info] [%struct.pmu_probe_info { i32 1090568320, i32 -16711696, ptr @armv7_a8_pmu_init }, %struct.pmu_probe_info { i32 1090568336, i32 -16711696, ptr @armv7_a9_pmu_init }, %struct.pmu_probe_info zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"armv7_cortex_a8\00", align 1
@armv7_pmuv1_events_attr_group = internal global %struct.attribute_group { ptr @.str.7, ptr null, ptr null, ptr @armv7_pmuv1_event_attrs, ptr null }, align 4
@armv7_pmu_format_attr_group = internal global %struct.attribute_group { ptr @.str.46, ptr null, ptr null, ptr @armv7_pmu_format_attrs, ptr null }, align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"\013CPU%u enabling wrong PMNC counter IRQ enable %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\013CPU%u disabling wrong PMNC counter IRQ enable %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\013CPU%u reading wrong counter %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013CPU%u writing wrong counter %d\0A\00", align 1
@armv7_a8_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 12, i32 16, i32 65535, i32 86, i32 65535, i32 65535], align 4
@armv7_a8_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 80, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 67, i32 68], [2 x i32] [i32 67, i32 68], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@armv7_pmuv1_event_attrs = internal global [20 x ptr] [ptr @armv7_event_attr_sw_incr, ptr @armv7_event_attr_l1i_cache_refill, ptr @armv7_event_attr_l1i_tlb_refill, ptr @armv7_event_attr_l1d_cache_refill, ptr @armv7_event_attr_l1d_cache, ptr @armv7_event_attr_l1d_tlb_refill, ptr @armv7_event_attr_ld_retired, ptr @armv7_event_attr_st_retired, ptr @armv7_event_attr_inst_retired, ptr @armv7_event_attr_exc_taken, ptr @armv7_event_attr_exc_return, ptr @armv7_event_attr_cid_write_retired, ptr @armv7_event_attr_pc_write_retired, ptr @armv7_event_attr_br_immed_retired, ptr @armv7_event_attr_br_return_retired, ptr @armv7_event_attr_unaligned_ldst_retired, ptr @armv7_event_attr_br_mis_pred, ptr @armv7_event_attr_cpu_cycles, ptr @armv7_event_attr_br_pred, ptr null], align 4
@armv7_event_attr_sw_incr = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.9 }, align 8
@armv7_event_attr_l1i_cache_refill = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.11 }, align 8
@armv7_event_attr_l1i_tlb_refill = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.13 }, align 8
@armv7_event_attr_l1d_cache_refill = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.15 }, align 8
@armv7_event_attr_l1d_cache = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.17 }, align 8
@armv7_event_attr_l1d_tlb_refill = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.19 }, align 8
@armv7_event_attr_ld_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.21 }, align 8
@armv7_event_attr_st_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.23 }, align 8
@armv7_event_attr_inst_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.25 }, align 8
@armv7_event_attr_exc_taken = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.27 }, align 8
@armv7_event_attr_exc_return = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.29 }, align 8
@armv7_event_attr_cid_write_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.31 }, align 8
@armv7_event_attr_pc_write_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.33 }, align 8
@armv7_event_attr_br_immed_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.35 }, align 8
@armv7_event_attr_br_return_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.37 }, align 8
@armv7_event_attr_unaligned_ldst_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.39 }, align 8
@armv7_event_attr_br_mis_pred = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.41 }, align 8
@armv7_event_attr_cpu_cycles = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.43 }, align 8
@armv7_event_attr_br_pred = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.45 }, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"sw_incr\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"event=0x00\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"l1i_cache_refill\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"event=0x01\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"l1i_tlb_refill\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"event=0x02\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"l1d_cache_refill\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"event=0x03\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"l1d_cache\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"event=0x04\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"l1d_tlb_refill\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"event=0x05\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"ld_retired\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"event=0x06\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"st_retired\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"event=0x07\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"inst_retired\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"event=0x08\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"exc_taken\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"event=0x09\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"exc_return\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"event=0x0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"cid_write_retired\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"event=0x0B\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"pc_write_retired\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"event=0x0C\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"br_immed_retired\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"event=0x0D\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"br_return_retired\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"event=0x0E\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"unaligned_ldst_retired\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"event=0x0F\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"br_mis_pred\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"event=0x10\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"cpu_cycles\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"event=0x11\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"br_pred\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"event=0x12\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@armv7_pmu_format_attrs = internal global [2 x ptr] [ptr @format_attr_event, ptr null], align 4
@format_attr_event = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @event_show, ptr null }, align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"config:0-7\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"armv7_cortex_a9\00", align 1
@armv7_a9_perf_map = internal constant [10 x i32] [i32 255, i32 104, i32 4, i32 3, i32 12, i32 16, i32 65535, i32 96, i32 102, i32 65535], align 4
@armv7_a9_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@.str.50 = private unnamed_addr constant [17 x i8] c"armv7_cortex_a17\00", align 1
@armv7_pmuv2_events_attr_group = internal global %struct.attribute_group { ptr @.str.7, ptr null, ptr null, ptr @armv7_pmuv2_event_attrs, ptr null }, align 4
@armv7_pmuv2_event_attrs = internal global [31 x ptr] [ptr @armv7_event_attr_sw_incr, ptr @armv7_event_attr_l1i_cache_refill, ptr @armv7_event_attr_l1i_tlb_refill, ptr @armv7_event_attr_l1d_cache_refill, ptr @armv7_event_attr_l1d_cache, ptr @armv7_event_attr_l1d_tlb_refill, ptr @armv7_event_attr_ld_retired, ptr @armv7_event_attr_st_retired, ptr @armv7_event_attr_inst_retired, ptr @armv7_event_attr_exc_taken, ptr @armv7_event_attr_exc_return, ptr @armv7_event_attr_cid_write_retired, ptr @armv7_event_attr_pc_write_retired, ptr @armv7_event_attr_br_immed_retired, ptr @armv7_event_attr_br_return_retired, ptr @armv7_event_attr_unaligned_ldst_retired, ptr @armv7_event_attr_br_mis_pred, ptr @armv7_event_attr_cpu_cycles, ptr @armv7_event_attr_br_pred, ptr @armv7_event_attr_mem_access, ptr @armv7_event_attr_l1i_cache, ptr @armv7_event_attr_l1d_cache_wb, ptr @armv7_event_attr_l2d_cache, ptr @armv7_event_attr_l2d_cache_refill, ptr @armv7_event_attr_l2d_cache_wb, ptr @armv7_event_attr_bus_access, ptr @armv7_event_attr_memory_error, ptr @armv7_event_attr_inst_spec, ptr @armv7_event_attr_ttbr_write_retired, ptr @armv7_event_attr_bus_cycles, ptr null], align 4
@armv7_event_attr_mem_access = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.52 }, align 8
@armv7_event_attr_l1i_cache = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.54 }, align 8
@armv7_event_attr_l1d_cache_wb = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.56 }, align 8
@armv7_event_attr_l2d_cache = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.58 }, align 8
@armv7_event_attr_l2d_cache_refill = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.60 }, align 8
@armv7_event_attr_l2d_cache_wb = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.62 }, align 8
@armv7_event_attr_bus_access = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.64 }, align 8
@armv7_event_attr_memory_error = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.66 }, align 8
@armv7_event_attr_inst_spec = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.68 }, align 8
@armv7_event_attr_ttbr_write_retired = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.70 }, align 8
@armv7_event_attr_bus_cycles = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.72 }, align 8
@.str.51 = private unnamed_addr constant [11 x i8] c"mem_access\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"event=0x13\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"l1i_cache\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"event=0x14\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"l1d_cache_wb\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"event=0x15\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"l2d_cache\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"event=0x16\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"l2d_cache_refill\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"event=0x17\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"l2d_cache_wb\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"event=0x18\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"bus_access\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"event=0x19\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"memory_error\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"event=0x1A\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"inst_spec\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"event=0x1B\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"ttbr_write_retired\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"event=0x1C\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"bus_cycles\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"event=0x1D\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"armv7_cortex_a15\00", align 1
@armv7_a15_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 118, i32 16, i32 29, i32 65535, i32 65535, i32 65535], align 4
@armv7_a15_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 64, i32 66], [2 x i32] [i32 65, i32 67], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 80, i32 82], [2 x i32] [i32 81, i32 83], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 76], [2 x i32] [i32 65535, i32 77], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@.str.74 = private unnamed_addr constant [17 x i8] c"armv7_cortex_a12\00", align 1
@armv7_a12_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 118, i32 16, i32 29, i32 65535, i32 65535, i32 65535], align 4
@armv7_a12_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 64, i32 3], [2 x i32] [i32 65, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 80, i32 23], [2 x i32] [i32 81, i32 23], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 231]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@.str.75 = private unnamed_addr constant [16 x i8] c"armv7_cortex_a7\00", align 1
@armv7_a7_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 12, i32 16, i32 29, i32 65535, i32 65535, i32 65535], align 4
@armv7_a7_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 22, i32 23], [2 x i32] [i32 22, i32 23], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@.str.76 = private unnamed_addr constant [16 x i8] c"armv7_cortex_a5\00", align 1
@armv7_a5_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 12, i32 16, i32 65535, i32 65535, i32 65535, i32 65535], align 4
@armv7_a5_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 194, i32 195]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 194, i32 195]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@.str.77 = private unnamed_addr constant [12 x i8] c"armv7_krait\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"qcom,no-pc-write\00", align 1
@krait_perf_map_no_branch = internal constant [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 65535, i32 16, i32 17, i32 65535, i32 65535, i32 65535], align 4
@krait_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65553, i32 65552], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 74256, i32 65535], [2 x i32] [i32 74256, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 74274, i32 65535], [2 x i32] [i32 74274, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@krait_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 12, i32 16, i32 17, i32 65535, i32 65535, i32 65535], align 4
@krait_get_pmresrn_event.pmresrn_table = internal unnamed_addr constant [3 x i32] [i32 204, i32 208, i32 212], align 4
@.str.79 = private unnamed_addr constant [15 x i8] c"armv7_scorpion\00", align 1
@scorpion_perf_map = internal constant [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 12, i32 16, i32 17, i32 65535, i32 65535, i32 65535], align 4
@scorpion_perf_cache_map = internal constant [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65619, i32 65618], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 73747, i32 73746], [2 x i32] [i32 73747, i32 73746], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 73761], [2 x i32] [i32 65535, i32 73761], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], align 4
@scorpion_get_pmresrn_event.pmresrn_table = internal unnamed_addr constant [4 x i32] [i32 76, i32 80, i32 84, i32 88], align 4
@.str.80 = private unnamed_addr constant [18 x i8] c"armv7_scorpion_mp\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_perf_event_v7__237_2046_armv7_pmu_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armv7_pmu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @armv7_pmu_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_pmu_device_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @arm_pmu_device_probe(ptr noundef %0, ptr noundef nonnull @armv7_pmu_of_device_ids, ptr noundef nonnull @armv7_pmu_probe_table) #12
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_pmu_device_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a8_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a8_map_event, ptr %13, align 8
  %14 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv1_events_attr_group, ptr %14, align 4
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %15, align 4
  %16 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %18 = tail call i32 @smp_call_function_any(ptr noundef %16, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %17, i32 noundef 1) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a9_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.49, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a9_map_event, ptr %13, align 8
  %14 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv1_events_attr_group, ptr %14, align 4
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %15, align 4
  %16 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %18 = tail call i32 @smp_call_function_any(ptr noundef %16, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %17, i32 noundef 1) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a8_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @armv7_a8_perf_map, ptr noundef nonnull @armv7_a8_perf_cache_map, i32 noundef 255) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7pmu_handle_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.perf_sample_data, align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(192) %2, i8 0, i32 192, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #6, !srcloc !10
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 3", "=r"() #12, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %11) #12, !srcloc !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #6, !srcloc !10
  %17 = add i32 %16, ptrtoint (ptr @__irq_regs to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %21 = load i32, ptr %20, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.perf_sample_data, ptr %2, i32 0, i32 3
  %25 = getelementptr inbounds %struct.perf_sample_data, ptr %2, i32 0, i32 4
  %26 = getelementptr inbounds %struct.perf_sample_data, ptr %2, i32 0, i32 6
  %27 = getelementptr inbounds %struct.perf_sample_data, ptr %2, i32 0, i32 5
  %28 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  br label %29

29:                                               ; preds = %51, %23
  %30 = phi i32 [ 0, %23 ], [ %52, %51 ]
  %31 = getelementptr [32 x ptr], ptr %10, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %29
  %35 = add nuw i32 %30, 31
  %36 = and i32 %35, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = call i64 @armpmu_event_update(ptr noundef nonnull %32) #12
  %42 = getelementptr inbounds %struct.perf_event, ptr %32, i32 0, i32 25, i32 7
  %43 = load i64, ptr %42, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %2, i8 0, i64 16, i1 false) #12
  store i64 %43, ptr %24, align 16
  store i64 0, ptr %25, align 8
  store i64 84410401, ptr %26, align 8
  store i64 0, ptr %27, align 32
  %44 = call i32 @armpmu_event_set_period(ptr noundef nonnull %32) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = call i32 @perf_event_overflow(ptr noundef nonnull %32, ptr noundef nonnull %2, ptr noundef %19) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %28, align 4
  call void %50(ptr noundef nonnull %32) #12
  br label %51

51:                                               ; preds = %49, %46, %40, %34, %29
  %52 = add nuw nsw i32 %30, 1
  %53 = load i32, ptr %20, align 8
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %29, label %55

55:                                               ; preds = %51, %13
  call void @irq_work_run() #12
  br label %56

56:                                               ; preds = %55, %1
  %57 = phi i32 [ 1, %55 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %2) #12
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_enable_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #6, !srcloc !10
  %9 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 17
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, -1
  %16 = icmp slt i32 %15, %10
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %1
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %20, i32 noundef %10) #13
  br label %41

22:                                               ; preds = %12
  %23 = ptrtoint ptr %5 to i32
  %24 = add i32 %8, %23
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.pmu_hw_events, ptr %25, i32 0, i32 2
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = add nuw i32 %10, 31
  %29 = and i32 %28, 31
  %30 = shl nuw i32 1, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %30) #12, !srcloc !13
  %31 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 9
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ne ptr %32, null
  %34 = icmp ne i32 %10, 0
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %29) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %39 = and i32 %38, -939523841
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %39) #12, !srcloc !16
  br label %40

40:                                               ; preds = %36, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 1", "r"(i32 %30) #12, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 1", "r"(i32 %30) #12, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  br label %41

41:                                               ; preds = %40, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_disable_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #6, !srcloc !10
  %9 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 17
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, -1
  %16 = icmp slt i32 %15, %10
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %1
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %20, i32 noundef %10) #13
  br label %31

22:                                               ; preds = %12
  %23 = ptrtoint ptr %5 to i32
  %24 = add i32 %8, %23
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.pmu_hw_events, ptr %25, i32 0, i32 2
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = add nuw i32 %10, 31
  %29 = and i32 %28, 31
  %30 = shl nuw i32 1, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %30) #12, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %30) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %30) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  br label %31

31:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @armv7pmu_read_counter(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %7, i32 0, i32 17
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  %11 = icmp slt i32 %10, %3
  br i1 %11, label %12, label %17

12:                                               ; preds = %5, %1
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %15, i32 noundef %3) #13
  br label %25

17:                                               ; preds = %5
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c13, 0", "=r"() #12, !srcloc !23
  br label %25

21:                                               ; preds = %17
  %22 = add nuw i32 %3, 31
  %23 = and i32 %22, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %23) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %24 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c13, 2", "=r"() #12, !srcloc !24
  br label %25

25:                                               ; preds = %21, %19, %12
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ], [ 0, %12 ]
  %27 = zext i32 %26 to i64
  ret i64 %27
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_write_counter(ptr nocapture noundef readonly %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %8, i32 0, i32 17
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -1
  %12 = icmp slt i32 %11, %4
  br i1 %12, label %13, label %18

13:                                               ; preds = %6, %2
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %16, i32 noundef %4) #13
  br label %26

18:                                               ; preds = %6
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = trunc i64 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 0", "r"(i32 %21) #12, !srcloc !25
  br label %26

22:                                               ; preds = %18
  %23 = add nuw i32 %4, 31
  %24 = and i32 %23, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %24) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %25 = trunc i64 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 2", "r"(i32 %25) #12, !srcloc !26
  br label %26

26:                                               ; preds = %22, %20, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7pmu_get_event_idx(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 255
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %9, i32 0, i32 17
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %19, label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %15) #12
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -11
  br label %27

19:                                               ; preds = %23, %7
  %20 = phi i32 [ %24, %23 ], [ 1, %7 ]
  %21 = tail call i32 @_test_and_set_bit(i32 noundef %20, ptr noundef %10) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %20, 1
  %25 = load i32, ptr %11, align 8
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %19, label %27

27:                                               ; preds = %23, %19, %14, %7
  %28 = phi i32 [ %18, %14 ], [ -11, %7 ], [ %20, %19 ], [ -11, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_clear_event_idx(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %4, ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #6, !srcloc !10
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.pmu_hw_events, ptr %9, i32 0, i32 2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %12 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 0", "=r"() #12, !srcloc !27
  %13 = and i32 %12, 62
  %14 = or i32 %13, 1
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 %14) #12, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #6, !srcloc !10
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.pmu_hw_events, ptr %9, i32 0, i32 2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %12 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 0", "=r"() #12, !srcloc !27
  %13 = and i32 %12, 62
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 %13) #12, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7pmu_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 18
  %5 = load i8, ptr %4, align 4, !range !30
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c1, 1", "=r"() #12, !srcloc !31
  %9 = or i32 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c1, 1", "r"(i32 %9) #12, !srcloc !32
  br label %10

10:                                               ; preds = %7, %1
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %17, %12 ], [ 0, %10 ]
  %14 = add i32 %13, 31
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %16) #12, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %16) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %16) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %10
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 6) #12, !srcloc !29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @armpmu_event_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_event_set_period(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_overflow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_map_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_sysfs_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) @.str.48, i32 12, i1 false)
  ret i32 11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_any(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armv7_read_num_pmnc_events(ptr nocapture noundef writeonly %0) #2 {
  %2 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 0", "=r"() #12, !srcloc !27
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 31
  %5 = add nuw nsw i32 %4, 1
  store i32 %5, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a9_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @armv7_a9_perf_map, ptr noundef nonnull @armv7_a9_perf_cache_map, i32 noundef 255) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a17_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.74, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a12_map_event, ptr %13, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 9
  store ptr @armv7pmu_set_event_filter, ptr %14, align 8
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv2_events_attr_group, ptr %15, align 4
  %16 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %16, align 4
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %19 = tail call i32 @smp_call_function_any(ptr noundef %17, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %18, i32 noundef 1) #12
  store ptr @.str.50, ptr %12, align 4
  store ptr @armv7_pmuv2_events_attr_group, ptr %15, align 4
  store ptr @armv7_pmu_format_attr_group, ptr %16, align 4
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a15_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.73, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a15_map_event, ptr %13, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 9
  store ptr @armv7pmu_set_event_filter, ptr %14, align 8
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv2_events_attr_group, ptr %15, align 4
  %16 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %16, align 4
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %19 = tail call i32 @smp_call_function_any(ptr noundef %17, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %18, i32 noundef 1) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a12_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.74, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a12_map_event, ptr %13, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 9
  store ptr @armv7pmu_set_event_filter, ptr %14, align 8
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv2_events_attr_group, ptr %15, align 4
  %16 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %16, align 4
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %19 = tail call i32 @smp_call_function_any(ptr noundef %17, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %18, i32 noundef 1) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a7_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.75, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a7_map_event, ptr %13, align 8
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 9
  store ptr @armv7pmu_set_event_filter, ptr %14, align 8
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv2_events_attr_group, ptr %15, align 4
  %16 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %16, align 4
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %19 = tail call i32 @smp_call_function_any(ptr noundef %17, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %18, i32 noundef 1) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a5_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.76, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @armv7_a5_map_event, ptr %13, align 8
  %14 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 1
  store ptr @armv7_pmuv1_events_attr_group, ptr %14, align 4
  %15 = getelementptr %struct.arm_pmu, ptr %0, i32 0, i32 25, i32 2
  store ptr @armv7_pmu_format_attr_group, ptr %15, align 4
  %16 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %18 = tail call i32 @smp_call_function_any(ptr noundef %16, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %17, i32 noundef 1) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @krait_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  store ptr @armv7pmu_enable_event, ptr %3, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  store ptr @armv7pmu_disable_event, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  store ptr @armv7pmu_get_event_idx, ptr %7, align 8
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  store ptr @armv7pmu_clear_event_idx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  store ptr @armv7pmu_reset, ptr %11, align 4
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.77, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.78, ptr noundef null) #12
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @krait_map_event, ptr @krait_map_event_no_branch
  %20 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 9
  store ptr @armv7pmu_set_event_filter, ptr %21, align 8
  store ptr @krait_pmu_reset, ptr %11, align 4
  store ptr @krait_pmu_enable_event, ptr %3, align 8
  store ptr @krait_pmu_disable_event, ptr %4, align 4
  store ptr @krait_pmu_get_event_idx, ptr %7, align 8
  store ptr @krait_pmu_clear_event_idx, ptr %8, align 4
  %22 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %24 = tail call i32 @smp_call_function_any(ptr noundef %22, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %23, i32 noundef 1) #12
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scorpion_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.79, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @scorpion_map_event, ptr %13, align 8
  store ptr @scorpion_pmu_reset, ptr %11, align 4
  store ptr @scorpion_pmu_enable_event, ptr %3, align 8
  store ptr @scorpion_pmu_disable_event, ptr %4, align 4
  store ptr @scorpion_pmu_get_event_idx, ptr %7, align 8
  store ptr @scorpion_pmu_clear_event_idx, ptr %8, align 4
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %16 = tail call i32 @smp_call_function_any(ptr noundef %14, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %15, i32 noundef 1) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scorpion_mp_pmu_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 4
  store ptr @armv7pmu_handle_irq, ptr %2, align 4
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 10
  store ptr @armv7pmu_read_counter, ptr %5, align 4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 11
  store ptr @armv7pmu_write_counter, ptr %6, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  store ptr @armv7pmu_start, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  store ptr @armv7pmu_stop, ptr %10, align 8
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  store ptr @.str.80, ptr %12, align 4
  %13 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 15
  store ptr @scorpion_map_event, ptr %13, align 8
  store ptr @scorpion_pmu_reset, ptr %11, align 4
  store ptr @scorpion_pmu_enable_event, ptr %3, align 8
  store ptr @scorpion_pmu_disable_event, ptr %4, align 4
  store ptr @scorpion_pmu_get_event_idx, ptr %7, align 8
  store ptr @scorpion_pmu_clear_event_idx, ptr %8, align 4
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %16 = tail call i32 @smp_call_function_any(ptr noundef %14, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %15, i32 noundef 1) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a15_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @armv7_a15_perf_map, ptr noundef nonnull @armv7_a15_perf_cache_map, i32 noundef 255) #12
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @armv7pmu_set_event_filter(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 128
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = trunc i64 %4 to i32
  %9 = shl i32 %8, 26
  %10 = and i32 %9, -1073741824
  %11 = and i64 %4, 64
  %12 = icmp eq i64 %11, 0
  %13 = or i32 %10, 134217728
  %14 = select i1 %12, i32 %13, i32 %10
  %15 = getelementptr inbounds %struct.anon.75, ptr %0, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i32 [ 0, %7 ], [ -1, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a12_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @armv7_a12_perf_map, ptr noundef nonnull @armv7_a12_perf_cache_map, i32 noundef 255) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a7_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @armv7_a7_perf_map, ptr noundef nonnull @armv7_a7_perf_cache_map, i32 noundef 255) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armv7_a5_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @armv7_a5_perf_map, ptr noundef nonnull @armv7_a5_perf_cache_map, i32 noundef 255) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @krait_map_event_no_branch(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @krait_perf_map_no_branch, ptr noundef nonnull @krait_perf_cache_map, i32 noundef 1048575) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @krait_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @krait_perf_map, ptr noundef nonnull @krait_perf_cache_map, i32 noundef 1048575) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @krait_pmu_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 18
  %5 = load i8, ptr %4, align 4, !range !30
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c1, 1", "=r"() #12, !srcloc !31
  %9 = or i32 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c1, 1", "r"(i32 %9) #12, !srcloc !32
  br label %10

10:                                               ; preds = %7, %1
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %17, %12 ], [ 0, %10 ]
  %14 = add i32 %13, 31
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %16) #12, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %16) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %16) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %10
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 6) #12, !srcloc !29
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 0", "r"(i32 0) #12, !srcloc !33
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 1", "r"(i32 0) #12, !srcloc !34
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 2", "r"(i32 0) #12, !srcloc !35
  %20 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #14, !srcloc !36
  %21 = or i32 %20, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %21) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  %22 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #14, !srcloc !39
  %23 = or i32 %22, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %23) #12, !srcloc !40
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 0) #12, !srcloc !41
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %22) #12, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %20) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  br i1 %11, label %30, label %24

24:                                               ; preds = %24, %19
  %25 = phi i32 [ %28, %24 ], [ 0, %19 ]
  %26 = add i32 %25, 31
  %27 = and i32 %26, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %27) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #12, !srcloc !44
  %28 = add nuw i32 %25, 1
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %30, label %24

30:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @krait_pmu_enable_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #12
  %16 = add i32 %3, 31
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %18) #12, !srcloc !13
  %19 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %1
  %24 = and i32 %20, 15
  %25 = lshr i32 %20, 4
  %26 = and i32 %25, 255
  %27 = and i32 %20, 131072
  %28 = icmp eq i32 %27, 0
  %29 = shl nuw nsw i32 %24, 3
  %30 = shl i32 255, %29
  br i1 %28, label %31, label %62

31:                                               ; preds = %23
  %32 = lshr i32 %20, 12
  %33 = and i32 %32, 15
  %34 = getelementptr [3 x i32], ptr @krait_get_pmresrn_event.pmresrn_table, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %24
  %37 = and i32 %20, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %17) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %38 = and i32 %36, -939523841
  %39 = or i32 %38, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %39) #12, !srcloc !16
  switch i32 %33, label %40 [
    i32 0, label %41
    i32 1, label %48
    i32 2, label %55
  ]

40:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1345, 0\0A.popsection", ""() #12, !srcloc !45
  unreachable

41:                                               ; preds = %31
  %42 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 0", "=r"() #12, !srcloc !46
  %43 = xor i32 %30, -1
  %44 = and i32 %42, %43
  %45 = shl i32 %26, %29
  %46 = or i32 %45, %44
  %47 = or i32 %46, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 0", "r"(i32 %47) #12, !srcloc !33
  br label %78

48:                                               ; preds = %31
  %49 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 1", "=r"() #12, !srcloc !47
  %50 = xor i32 %30, -1
  %51 = and i32 %49, %50
  %52 = shl i32 %26, %29
  %53 = or i32 %52, %51
  %54 = or i32 %53, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 1", "r"(i32 %54) #12, !srcloc !34
  br label %78

55:                                               ; preds = %31
  %56 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 2", "=r"() #12, !srcloc !48
  %57 = xor i32 %30, -1
  %58 = and i32 %56, %57
  %59 = shl i32 %26, %29
  %60 = or i32 %59, %58
  %61 = or i32 %60, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 2", "r"(i32 %61) #12, !srcloc !35
  br label %78

62:                                               ; preds = %23
  %63 = add nuw nsw i32 %24, 216
  %64 = and i32 %20, -1073741824
  %65 = or i32 %63, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %17) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %65) #12, !srcloc !16
  %66 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #14, !srcloc !36
  %67 = or i32 %66, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %67) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  %68 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #14, !srcloc !39
  %69 = or i32 %68, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %69) #12, !srcloc !40
  %70 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #12, !srcloc !49
  %71 = xor i32 %30, -1
  %72 = and i32 %70, %71
  %73 = shl i32 %26, %29
  %74 = or i32 %73, %72
  %75 = or i32 %74, -2147483648
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %75) #12, !srcloc !41
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %68) #12, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %66) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  br label %78

76:                                               ; preds = %1
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %17) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %77 = and i32 %20, -939523841
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %77) #12, !srcloc !16
  br label %78

78:                                               ; preds = %76, %62, %55, %48, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 1", "r"(i32 %18) #12, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 1", "r"(i32 %18) #12, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @krait_pmu_disable_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #12
  %16 = add i32 %3, 31
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %18) #12, !srcloc !13
  %19 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %1
  %24 = and i32 %20, 15
  %25 = and i32 %20, 131072
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #14, !srcloc !36
  %29 = or i32 %28, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %29) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  %30 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #14, !srcloc !39
  %31 = or i32 %30, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %31) #12, !srcloc !40
  %32 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #12, !srcloc !49
  %33 = shl nuw nsw i32 %24, 3
  %34 = shl i32 255, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = and i32 %36, 2147483647
  %38 = icmp eq i32 %37, 0
  %39 = or i32 %36, -2147483648
  %40 = select i1 %38, i32 0, i32 %39
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %40) #12, !srcloc !41
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %30) #12, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %28) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  br label %75

41:                                               ; preds = %23
  %42 = lshr i32 %20, 12
  %43 = and i32 %42, 15
  switch i32 %43, label %44 [
    i32 0, label %45
    i32 1, label %55
    i32 2, label %65
  ]

44:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1345, 0\0A.popsection", ""() #12, !srcloc !45
  unreachable

45:                                               ; preds = %41
  %46 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 0", "=r"() #12, !srcloc !46
  %47 = shl nuw nsw i32 %24, 3
  %48 = shl i32 255, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  %51 = and i32 %50, 2147483647
  %52 = icmp eq i32 %51, 0
  %53 = or i32 %50, -2147483648
  %54 = select i1 %52, i32 0, i32 %53
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 0", "r"(i32 %54) #12, !srcloc !33
  br label %75

55:                                               ; preds = %41
  %56 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 1", "=r"() #12, !srcloc !47
  %57 = shl nuw nsw i32 %24, 3
  %58 = shl i32 255, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  %61 = and i32 %60, 2147483647
  %62 = icmp eq i32 %61, 0
  %63 = or i32 %60, -2147483648
  %64 = select i1 %62, i32 0, i32 %63
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 1", "r"(i32 %64) #12, !srcloc !34
  br label %75

65:                                               ; preds = %41
  %66 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 2", "=r"() #12, !srcloc !48
  %67 = shl nuw nsw i32 %24, 3
  %68 = shl i32 255, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = and i32 %70, 2147483647
  %72 = icmp eq i32 %71, 0
  %73 = or i32 %70, -2147483648
  %74 = select i1 %72, i32 0, i32 %73
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 2", "r"(i32 %74) #12, !srcloc !35
  br label %75

75:                                               ; preds = %65, %55, %45, %27, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %18) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %18) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @krait_pmu_get_event_idx(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  %7 = and i32 %4, 15
  %8 = and i32 %4, 131072
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %4, 196608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %2
  %13 = icmp ugt i32 %7, 3
  %14 = icmp ugt i32 %6, 2
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %70, label %16

16:                                               ; preds = %12
  %17 = and i32 %4, 3584
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %9, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  br i1 %9, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr [3 x i32], ptr @krait_get_pmresrn_event.pmresrn_table, i32 0, i32 %6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -204
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %26, %23 ], [ 12, %20 ]
  %29 = add i32 %28, %7
  %30 = getelementptr inbounds %struct.arm_pmu, ptr %22, i32 0, i32 17
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %29, %31
  %33 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %34 = tail call i32 @_test_and_set_bit(i32 noundef %32, ptr noundef %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %27
  %37 = load i32, ptr %3, align 8
  br label %38

38:                                               ; preds = %36, %2
  %39 = phi i32 [ %37, %36 ], [ %4, %2 ]
  %40 = phi i32 [ %32, %36 ], [ -1, %2 ]
  %41 = and i32 %39, 255
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %47 = getelementptr inbounds %struct.arm_pmu, ptr %45, i32 0, i32 17
  %48 = load i32, ptr %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %55, label %63

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %52 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %51) #12
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 -11
  br label %63

55:                                               ; preds = %59, %43
  %56 = phi i32 [ %60, %59 ], [ 1, %43 ]
  %57 = tail call i32 @_test_and_set_bit(i32 noundef %56, ptr noundef %46) #12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = add nuw nsw i32 %56, 1
  %61 = load i32, ptr %47, align 8
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %55, label %63

63:                                               ; preds = %59, %50, %43
  %64 = phi i32 [ %54, %50 ], [ -11, %43 ], [ -11, %59 ]
  %65 = icmp slt i32 %64, 0
  %66 = icmp sgt i32 %40, -1
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %40, ptr noundef %69) #12
  br label %70

70:                                               ; preds = %68, %63, %55, %27, %16, %12
  %71 = phi i32 [ -22, %12 ], [ -22, %16 ], [ -11, %27 ], [ %64, %68 ], [ %64, %63 ], [ %56, %55 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @krait_pmu_clear_event_idx(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  %7 = and i32 %4, 15
  %8 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %9, ptr noundef %10) #12
  %11 = and i32 %4, 196608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %3, align 8
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr [3 x i32], ptr @krait_get_pmresrn_event.pmresrn_table, i32 0, i32 %6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -204
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i32 [ %22, %19 ], [ 12, %13 ]
  %25 = add i32 %24, %7
  %26 = getelementptr inbounds %struct.arm_pmu, ptr %15, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %25, %27
  tail call void @_clear_bit(i32 noundef %28, ptr noundef %10) #12
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scorpion_map_event(ptr noundef %0) #2 {
  %2 = tail call i32 @armpmu_map_event(ptr noundef %0, ptr noundef nonnull @scorpion_perf_map, ptr noundef nonnull @scorpion_perf_cache_map, i32 noundef 1048575) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scorpion_pmu_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 18
  %5 = load i8, ptr %4, align 4, !range !30
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c1, 1", "=r"() #12, !srcloc !31
  %9 = or i32 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c1, 1", "r"(i32 %9) #12, !srcloc !32
  br label %10

10:                                               ; preds = %7, %1
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %17, %12 ], [ 0, %10 ]
  %14 = add i32 %13, 31
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %16) #12, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %16) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %16) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %10
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 6) #12, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r"(i32 0) #12, !srcloc !50
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c0, 0", "r"(i32 0) #12, !srcloc !51
  tail call void asm sideeffect "mcr p15, 2, $0, c15, c0, 0", "r"(i32 0) #12, !srcloc !52
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c2, 0", "r"(i32 0) #12, !srcloc !53
  %20 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #14, !srcloc !36
  %21 = or i32 %20, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %21) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  %22 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #14, !srcloc !39
  %23 = or i32 %22, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %23) #12, !srcloc !40
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 0) #12, !srcloc !41
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %22) #12, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %20) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  br i1 %11, label %30, label %24

24:                                               ; preds = %24, %19
  %25 = phi i32 [ %28, %24 ], [ 0, %19 ]
  %26 = add i32 %25, 31
  %27 = and i32 %26, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %27) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #12, !srcloc !54
  %28 = add nuw i32 %25, 1
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %30, label %24

30:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scorpion_pmu_enable_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #12
  %16 = add i32 %3, 31
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %18) #12, !srcloc !13
  %19 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %83, label %23

23:                                               ; preds = %1
  %24 = and i32 %20, 15
  %25 = lshr i32 %20, 4
  %26 = and i32 %25, 255
  %27 = and i32 %20, 131072
  %28 = icmp eq i32 %27, 0
  %29 = shl nuw nsw i32 %24, 3
  %30 = shl i32 255, %29
  br i1 %28, label %31, label %69

31:                                               ; preds = %23
  %32 = lshr i32 %20, 12
  %33 = and i32 %32, 15
  %34 = getelementptr [4 x i32], ptr @scorpion_get_pmresrn_event.pmresrn_table, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %24
  %37 = and i32 %20, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %17) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %38 = and i32 %36, -939523841
  %39 = or i32 %38, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %39) #12, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #12, !srcloc !55
  switch i32 %33, label %40 [
    i32 0, label %41
    i32 1, label %48
    i32 2, label %55
    i32 3, label %62
  ]

40:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #12, !srcloc !56
  unreachable

41:                                               ; preds = %31
  %42 = tail call i32 asm sideeffect "mrc p15, 0, $0, c15, c0, 0", "=r"() #12, !srcloc !57
  %43 = xor i32 %30, -1
  %44 = and i32 %42, %43
  %45 = shl i32 %26, %29
  %46 = or i32 %45, %44
  %47 = or i32 %46, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r"(i32 %47) #12, !srcloc !50
  br label %87

48:                                               ; preds = %31
  %49 = tail call i32 asm sideeffect "mrc p15, 1, $0, c15, c0, 0", "=r"() #12, !srcloc !58
  %50 = xor i32 %30, -1
  %51 = and i32 %49, %50
  %52 = shl i32 %26, %29
  %53 = or i32 %52, %51
  %54 = or i32 %53, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c0, 0", "r"(i32 %54) #12, !srcloc !51
  br label %87

55:                                               ; preds = %31
  %56 = tail call i32 asm sideeffect "mrc p15, 2, $0, c15, c0, 0", "=r"() #12, !srcloc !59
  %57 = xor i32 %30, -1
  %58 = and i32 %56, %57
  %59 = shl i32 %26, %29
  %60 = or i32 %59, %58
  %61 = or i32 %60, -2147483648
  tail call void asm sideeffect "mcr p15, 2, $0, c15, c0, 0", "r"(i32 %61) #12, !srcloc !52
  br label %87

62:                                               ; preds = %31
  %63 = tail call i32 asm sideeffect "mrc p15, 3, $0, c15, c2, 0", "=r"() #12, !srcloc !60
  %64 = xor i32 %30, -1
  %65 = and i32 %63, %64
  %66 = shl i32 %26, %29
  %67 = or i32 %66, %65
  %68 = or i32 %67, -2147483648
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c2, 0", "r"(i32 %68) #12, !srcloc !53
  br label %87

69:                                               ; preds = %23
  %70 = add nuw nsw i32 %24, 92
  %71 = and i32 %20, -1073741824
  %72 = or i32 %70, %71
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %17) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %72) #12, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #12, !srcloc !55
  %73 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #14, !srcloc !36
  %74 = or i32 %73, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %74) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  %75 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #14, !srcloc !39
  %76 = or i32 %75, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %76) #12, !srcloc !40
  %77 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #12, !srcloc !49
  %78 = xor i32 %30, -1
  %79 = and i32 %77, %78
  %80 = shl i32 %26, %29
  %81 = or i32 %80, %79
  %82 = or i32 %81, -2147483648
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %82) #12, !srcloc !41
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %75) #12, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %73) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  br label %87

83:                                               ; preds = %1
  %84 = icmp eq i32 %3, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %17) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %86 = and i32 %20, -939523841
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %86) #12, !srcloc !16
  br label %87

87:                                               ; preds = %85, %83, %69, %62, %55, %48, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 1", "r"(i32 %18) #12, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 1", "r"(i32 %18) #12, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scorpion_pmu_disable_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #12
  %16 = add i32 %3, 31
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %18) #12, !srcloc !13
  %19 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %85, label %23

23:                                               ; preds = %1
  %24 = and i32 %20, 15
  %25 = and i32 %20, 131072
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #14, !srcloc !36
  %29 = or i32 %28, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %29) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  %30 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #14, !srcloc !39
  %31 = or i32 %30, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %31) #12, !srcloc !40
  %32 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #12, !srcloc !49
  %33 = shl nuw nsw i32 %24, 3
  %34 = shl i32 255, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = and i32 %36, 2147483647
  %38 = icmp eq i32 %37, 0
  %39 = or i32 %36, -2147483648
  %40 = select i1 %38, i32 0, i32 %39
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %40) #12, !srcloc !41
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %30) #12, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %28) #12, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !38
  br label %85

41:                                               ; preds = %23
  %42 = lshr i32 %20, 12
  %43 = and i32 %42, 15
  switch i32 %43, label %44 [
    i32 0, label %45
    i32 1, label %55
    i32 2, label %65
    i32 3, label %75
  ]

44:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #12, !srcloc !56
  unreachable

45:                                               ; preds = %41
  %46 = tail call i32 asm sideeffect "mrc p15, 0, $0, c15, c0, 0", "=r"() #12, !srcloc !57
  %47 = shl nuw nsw i32 %24, 3
  %48 = shl i32 255, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  %51 = and i32 %50, 2147483647
  %52 = icmp eq i32 %51, 0
  %53 = or i32 %50, -2147483648
  %54 = select i1 %52, i32 0, i32 %53
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r"(i32 %54) #12, !srcloc !50
  br label %85

55:                                               ; preds = %41
  %56 = tail call i32 asm sideeffect "mrc p15, 1, $0, c15, c0, 0", "=r"() #12, !srcloc !58
  %57 = shl nuw nsw i32 %24, 3
  %58 = shl i32 255, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  %61 = and i32 %60, 2147483647
  %62 = icmp eq i32 %61, 0
  %63 = or i32 %60, -2147483648
  %64 = select i1 %62, i32 0, i32 %63
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c0, 0", "r"(i32 %64) #12, !srcloc !51
  br label %85

65:                                               ; preds = %41
  %66 = tail call i32 asm sideeffect "mrc p15, 2, $0, c15, c0, 0", "=r"() #12, !srcloc !59
  %67 = shl nuw nsw i32 %24, 3
  %68 = shl i32 255, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = and i32 %70, 2147483647
  %72 = icmp eq i32 %71, 0
  %73 = or i32 %70, -2147483648
  %74 = select i1 %72, i32 0, i32 %73
  tail call void asm sideeffect "mcr p15, 2, $0, c15, c0, 0", "r"(i32 %74) #12, !srcloc !52
  br label %85

75:                                               ; preds = %41
  %76 = tail call i32 asm sideeffect "mrc p15, 3, $0, c15, c2, 0", "=r"() #12, !srcloc !60
  %77 = shl nuw nsw i32 %24, 3
  %78 = shl i32 255, %77
  %79 = xor i32 %78, -1
  %80 = and i32 %76, %79
  %81 = and i32 %80, 2147483647
  %82 = icmp eq i32 %81, 0
  %83 = or i32 %80, -2147483648
  %84 = select i1 %82, i32 0, i32 %83
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c2, 0", "r"(i32 %84) #12, !srcloc !53
  br label %85

85:                                               ; preds = %75, %65, %55, %45, %27, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %18) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %18) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scorpion_pmu_get_event_idx(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  %7 = and i32 %4, 15
  %8 = and i32 %4, 131072
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %4, 196608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = icmp ugt i32 %7, 3
  %14 = icmp ugt i32 %6, 3
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %66, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %18 = load ptr, ptr %17, align 8
  br i1 %9, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr [4 x i32], ptr @scorpion_get_pmresrn_event.pmresrn_table, i32 0, i32 %6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -76
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %22, %19 ], [ 16, %16 ]
  %25 = add i32 %24, %7
  %26 = getelementptr inbounds %struct.arm_pmu, ptr %18, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %25, %27
  %29 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %30 = tail call i32 @_test_and_set_bit(i32 noundef %28, ptr noundef %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %23
  %33 = load i32, ptr %3, align 8
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i32 [ %33, %32 ], [ %4, %2 ]
  %36 = phi i32 [ %28, %32 ], [ -1, %2 ]
  %37 = and i32 %35, 255
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %43 = getelementptr inbounds %struct.arm_pmu, ptr %41, i32 0, i32 17
  %44 = load i32, ptr %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %51, label %59

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  %48 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %47) #12
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 0, i32 -11
  br label %59

51:                                               ; preds = %55, %39
  %52 = phi i32 [ %56, %55 ], [ 1, %39 ]
  %53 = tail call i32 @_test_and_set_bit(i32 noundef %52, ptr noundef %42) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = add nuw nsw i32 %52, 1
  %57 = load i32, ptr %43, align 8
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %51, label %59

59:                                               ; preds = %55, %46, %39
  %60 = phi i32 [ %50, %46 ], [ -11, %39 ], [ -11, %55 ]
  %61 = icmp slt i32 %60, 0
  %62 = icmp sgt i32 %36, -1
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %36, ptr noundef %65) #12
  br label %66

66:                                               ; preds = %64, %59, %51, %23, %12
  %67 = phi i32 [ -22, %12 ], [ -11, %23 ], [ %60, %64 ], [ %60, %59 ], [ %52, %51 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scorpion_pmu_clear_event_idx(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  %7 = and i32 %4, 15
  %8 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pmu_hw_events, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %9, ptr noundef %10) #12
  %11 = and i32 %4, 196608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %3, align 8
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr [4 x i32], ptr @scorpion_get_pmresrn_event.pmresrn_table, i32 0, i32 %6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -76
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i32 [ %22, %19 ], [ 16, %13 ]
  %25 = add i32 %24, %7
  %26 = getelementptr inbounds %struct.arm_pmu, ptr %15, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %25, %27
  tail call void @_clear_bit(i32 noundef %28, ptr noundef %10) #12
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i64 412863}
!11 = !{i64 32349}
!12 = !{i64 32461}
!13 = !{i64 31718}
!14 = !{i64 30090}
!15 = !{i64 2153668746}
!16 = !{i64 31388}
!17 = !{i64 31886}
!18 = !{i64 31548}
!19 = !{i64 32055}
!20 = !{i64 2153674410}
!21 = !{i64 32195}
!22 = !{i64 2153674547}
!23 = !{i64 30531}
!24 = !{i64 30636}
!25 = !{i64 31082}
!26 = !{i64 31193}
!27 = !{i64 29392}
!28 = !{i64 2153667652}
!29 = !{i64 29545}
!30 = !{i8 0, i8 2}
!31 = !{i64 39149}
!32 = !{i64 39236}
!33 = !{i64 46875}
!34 = !{i64 46953}
!35 = !{i64 47031}
!36 = !{i64 234243}
!37 = !{i64 234403}
!38 = !{i64 2147790541}
!39 = !{i64 2153689580, i64 2153689603}
!40 = !{i64 2153689691, i64 2153689714}
!41 = !{i64 47342}
!42 = !{i64 2153690823, i64 2153690846}
!43 = !{i64 2153690939}
!44 = !{i64 52255}
!45 = !{i64 2153686774, i64 2153687271, i64 2153686811, i64 2153686867, i64 2153686901, i64 2153686925, i64 2153686966, i64 2153686987, i64 2153687015, i64 2153687049}
!46 = !{i64 46486}
!47 = !{i64 46563}
!48 = !{i64 46640}
!49 = !{i64 47226}
!50 = !{i64 57043}
!51 = !{i64 57121}
!52 = !{i64 57199}
!53 = !{i64 57277}
!54 = !{i64 61575}
!55 = !{i64 58350}
!56 = !{i64 2153699132, i64 2153699629, i64 2153699169, i64 2153699225, i64 2153699259, i64 2153699283, i64 2153699324, i64 2153699345, i64 2153699373, i64 2153699407}
!57 = !{i64 56571}
!58 = !{i64 56648}
!59 = !{i64 56725}
!60 = !{i64 56802}
