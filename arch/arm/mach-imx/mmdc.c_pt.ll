; ModuleID = '/llk/IR/arch/arm/mach-imx/mmdc.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mmdc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.perf_pmu_events_attr = type { %struct.device_attribute, i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.fsl_mmdc_devtype_data = type { i32 }
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
%struct.mmdc_pmu = type { %struct.pmu, ptr, %struct.cpumask, %struct.hrtimer, i32, ptr, [6 x ptr], %struct.hlist_node, ptr, ptr }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }

@__param_str_pmu_pmu_poll_period_us = internal constant [28 x i8] c"mmdc.pmu_pmu_poll_period_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mmdc_pmu_poll_period_us = internal global i32 1000000, align 4
@__param_pmu_pmu_poll_period_us = internal constant %struct.kernel_param { ptr @__param_str_pmu_pmu_poll_period_us, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @mmdc_pmu_poll_period_us } }, section "__param", align 4
@__UNIQUE_ID_pmu_pmu_poll_period_ustype236 = internal constant [42 x i8] c"mmdc.parmtype=pmu_pmu_poll_period_us:uint\00", section ".modinfo", align 1
@ddr_type = internal unnamed_addr global i32 0, align 4
@__initcall__kmod_mmdc__239_602_imx_mmdc_init2 = internal global ptr @imx_mmdc_init, section ".initcall2.init", align 4
@imx_mmdc_driver = internal global %struct.platform_driver { ptr @imx_mmdc_probe, ptr @imx_mmdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_mmdc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"imx-mmdc\00", align 1
@imx_mmdc_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-mmdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-mmdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6qp_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to enable mmdc ipg clock.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"arch/arm/mach-imx/mmdc.c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\013failed to allocate PMU device!\0A\00", align 1
@cpuhp_mmdc_state = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"perf/arm/mmdc:online\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\013cpuhp_setup_state_multi failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mmdc\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mmdc%d\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\014MMDC Perf PMU failed (%d), disabled\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@attr_groups = internal global [4 x ptr] [ptr @mmdc_pmu_events_attr_group, ptr @mmdc_pmu_format_attr_group, ptr @mmdc_pmu_cpumask_attr_group, ptr null], align 4
@mmdc_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@mmdc_pmu_events_attr_group = internal global %struct.attribute_group { ptr @.str.9, ptr null, ptr null, ptr @mmdc_pmu_events_attrs, ptr null }, align 4
@mmdc_pmu_format_attr_group = internal global %struct.attribute_group { ptr @.str.28, ptr null, ptr null, ptr @mmdc_pmu_format_attrs, ptr null }, align 4
@mmdc_pmu_cpumask_attr_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mmdc_pmu_cpumask_attrs, ptr null }, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@mmdc_pmu_events_attrs = internal global [11 x ptr] [ptr @mmdc_pmu_total_cycles, ptr @mmdc_pmu_busy_cycles, ptr @mmdc_pmu_read_accesses, ptr @mmdc_pmu_write_accesses, ptr @mmdc_pmu_read_bytes, ptr @mmdc_pmu_read_bytes_unit, ptr @mmdc_pmu_read_bytes_scale, ptr @mmdc_pmu_write_bytes, ptr @mmdc_pmu_write_bytes_unit, ptr @mmdc_pmu_write_bytes_scale, ptr null], align 4
@mmdc_pmu_total_cycles = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.11 }, align 8
@mmdc_pmu_busy_cycles = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.13 }, align 8
@mmdc_pmu_read_accesses = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.15 }, align 8
@mmdc_pmu_write_accesses = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.17 }, align 8
@mmdc_pmu_read_bytes = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.19 }, align 8
@mmdc_pmu_read_bytes_unit = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.21 }, align 8
@mmdc_pmu_read_bytes_scale = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.23 }, align 8
@mmdc_pmu_write_bytes = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.25 }, align 8
@mmdc_pmu_write_bytes_unit = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.21 }, align 8
@mmdc_pmu_write_bytes_scale = internal global %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.23 }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"total-cycles\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"event=0x00\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"busy-cycles\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"event=0x01\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"read-accesses\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"event=0x02\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"write-accesses\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"event=0x03\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"read-bytes\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"event=0x04\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"read-bytes.unit\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"read-bytes.scale\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"0.000001\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"write-bytes\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"event=0x05\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"write-bytes.unit\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"write-bytes.scale\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@mmdc_pmu_format_attrs = internal global [3 x ptr] [ptr @format_attr_event, ptr @format_attr_axi_id, ptr null], align 4
@format_attr_event = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @event_show, ptr null }, align 4
@format_attr_axi_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @axi_id_show, ptr null }, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"config:0-63\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"axi_id\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"config1:0-63\0A\00", align 1
@mmdc_pmu_cpumask_attrs = internal global [2 x ptr] [ptr @mmdc_pmu_cpumask_attr, ptr null], align 4
@mmdc_pmu_cpumask_attr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @mmdc_pmu_cpumask_show, ptr null }, align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Can't provide per-task data!\0A\00", align 1
@mmdc_pmu_read_counter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"invalid configuration %d for mmdc counter\00", align 1
@imx6q_data = internal constant %struct.fsl_mmdc_devtype_data zeroinitializer, align 4
@imx6qp_data = internal constant %struct.fsl_mmdc_devtype_data { i32 1 }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_pmu_pmu_poll_period_ustype236, ptr @__initcall__kmod_mmdc__239_602_imx_mmdc_init2, ptr @__param_pmu_pmu_poll_period_us], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @imx_mmdc_get_ddr_type() local_unnamed_addr #0 {
  %1 = load i32, ptr @ddr_type, align 4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_mmdc_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_mmdc_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_mmdc_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #12
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = select i1 %6, ptr null, ptr %5
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %11, %13 ], [ %8, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #13
  br label %93

16:                                               ; preds = %10
  %17 = tail call ptr @of_iomap(ptr noundef %4, i32 noundef 0) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 560, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr i8, ptr %17, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !9
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 3
  store i32 %24, ptr @ddr_type, align 4
  %25 = getelementptr i8, ptr %17, i32 1028
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !9
  %27 = and i32 %26, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #12, !srcloc !10
  %28 = tail call ptr @of_match_device(ptr noundef nonnull @imx_mmdc_dt_ids, ptr noundef %2) #12
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 264) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %91

34:                                               ; preds = %20
  %35 = load i32, ptr @cpuhp_mmdc_state, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.4, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @mmdc_pmu_offline_cpu, i1 noundef zeroext true) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %87

42:                                               ; preds = %37
  store i32 %38, ptr @cpuhp_mmdc_state, align 4
  br label %43

43:                                               ; preds = %42, %34
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i32 16, i1 false) #12
  %44 = getelementptr inbounds i8, ptr %30, i32 16
  store ptr @attr_groups, ptr %44, align 8
  %45 = getelementptr inbounds i8, ptr %30, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %45, i8 0, i32 12, i1 false) #12
  %46 = getelementptr inbounds i8, ptr %30, i32 32
  store i32 128, ptr %46, align 8
  %47 = getelementptr inbounds i8, ptr %30, i32 36
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %47, i8 0, i32 12, i1 false) #12
  %48 = getelementptr inbounds i8, ptr %30, i32 48
  store i32 -1, ptr %48, align 8
  %49 = getelementptr inbounds i8, ptr %30, i32 52
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %49, i8 0, i32 16, i1 false) #12
  %50 = getelementptr inbounds i8, ptr %30, i32 68
  store ptr @mmdc_pmu_event_init, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %30, i32 72
  store i64 0, ptr %51, align 8
  %52 = getelementptr inbounds i8, ptr %30, i32 80
  store ptr @mmdc_pmu_event_add, ptr %52, align 8
  %53 = getelementptr inbounds i8, ptr %30, i32 84
  store ptr @mmdc_pmu_event_del, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %30, i32 88
  store ptr @mmdc_pmu_event_start, ptr %54, align 8
  %55 = getelementptr inbounds i8, ptr %30, i32 92
  store ptr @mmdc_pmu_event_stop, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %30, i32 96
  store ptr @mmdc_pmu_event_update, ptr %56, align 8
  %57 = getelementptr inbounds i8, ptr %30, i32 100
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %57, i8 0, i32 60, i1 false) #12
  %58 = getelementptr inbounds i8, ptr %30, i32 160
  store ptr %17, ptr %58, align 8
  %59 = getelementptr inbounds i8, ptr %30, i32 164
  %60 = getelementptr inbounds i8, ptr %30, i32 220
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(56) %59, i8 0, i64 56, i1 false) #12
  store ptr %2, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %30, i32 224
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %61, i8 0, i64 40, i1 false) #12
  %62 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mmdc_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  %63 = getelementptr inbounds %struct.mmdc_pmu, ptr %30, i32 0, i32 9
  store ptr %7, ptr %63, align 4
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %43
  %66 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %62) #12
  br label %67

67:                                               ; preds = %65, %43
  %68 = phi ptr [ %66, %65 ], [ @.str.6, %43 ]
  %69 = getelementptr inbounds %struct.of_device_id, ptr %28, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mmdc_pmu, ptr %30, i32 0, i32 8
  store ptr %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.mmdc_pmu, ptr %30, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %72, i32 noundef 1, i32 noundef 1) #12
  %73 = getelementptr inbounds %struct.mmdc_pmu, ptr %30, i32 0, i32 3, i32 2
  store ptr @mmdc_pmu_timer_handler, ptr %73, align 8
  %74 = tail call ptr @llvm.thread.pointer() #12
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  tail call void @_set_bit(i32 noundef %76, ptr noundef %59) #12
  %77 = load i32, ptr @cpuhp_mmdc_state, align 4
  %78 = getelementptr inbounds %struct.mmdc_pmu, ptr %30, i32 0, i32 7
  %79 = tail call i32 @__cpuhp_state_add_instance(i32 noundef %77, ptr noundef %78, i1 noundef zeroext false) #12
  %80 = tail call i32 @perf_pmu_register(ptr noundef nonnull %30, ptr noundef %68, i32 noundef -1) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %67
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %80) #13
  %84 = load i32, ptr @cpuhp_mmdc_state, align 4
  %85 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %84, ptr noundef %78, i1 noundef zeroext false) #12
  %86 = tail call i32 @hrtimer_cancel(ptr noundef %72) #12
  br label %87

87:                                               ; preds = %82, %40
  %88 = phi i32 [ %80, %82 ], [ %38, %40 ]
  tail call void @kfree(ptr noundef nonnull %30) #12
  br label %91

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %30, ptr %90, align 8
  br label %93

91:                                               ; preds = %87, %32
  %92 = phi i32 [ -12, %32 ], [ %88, %87 ]
  tail call void @iounmap(ptr noundef %17) #12
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %93

93:                                               ; preds = %91, %89, %14
  %94 = phi i32 [ %15, %14 ], [ %92, %91 ], [ 0, %89 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_mmdc_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @cpuhp_mmdc_state, align 4
  %5 = getelementptr inbounds %struct.mmdc_pmu, ptr %3, i32 0, i32 7
  %6 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %4, ptr noundef %5, i1 noundef zeroext false) #12
  tail call void @perf_pmu_unregister(ptr noundef %3) #12
  %7 = getelementptr inbounds %struct.mmdc_pmu, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  tail call void @iounmap(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.mmdc_pmu, ptr %3, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_offline_cpu(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -248
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.mmdc_pmu, ptr %5, i32 0, i32 2
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef %0, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #15
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @perf_pmu_migrate_context(ptr noundef %5, i32 noundef %0, i32 noundef %10) #12
  tail call void @_set_bit(i32 noundef %10, ptr noundef %6) #12
  br label %14

14:                                               ; preds = %13, %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_timer_handler(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 56
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 60
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr i8, ptr %0, i32 64
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr i8, ptr %0, i32 68
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %18) #12
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr i8, ptr %0, i32 72
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %23) #12
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr i8, ptr %0, i32 76
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %28) #12
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, ptr @mmdc_pmu_poll_period_us, align 4
  %33 = zext i32 %32 to i64
  %34 = mul nuw nsw i64 %33, 1000
  %35 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i64 %38() #12
  %40 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %39, i64 noundef %34) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_event_init(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 8
  %10 = getelementptr inbounds %struct.pmu, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %82

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 34
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.34) #13
  br label %82

29:                                               ; preds = %22
  %30 = icmp ugt i32 %8, 5
  br i1 %30, label %82, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %34 = getelementptr inbounds %struct.perf_event, ptr %33, i32 0, i32 21, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  call void @_set_bit(i32 noundef %36, ptr noundef nonnull %2) #12
  %37 = icmp eq ptr %33, %0
  br i1 %37, label %51, label %38

38:                                               ; preds = %31
  %39 = load i64, ptr %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load ptr, ptr %3, align 8
  %47 = icmp eq ptr %46, %4
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = call i32 @_test_and_set_bit(i32 noundef %40, ptr noundef nonnull %2) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %48, %38, %31
  %52 = getelementptr inbounds %struct.perf_event, ptr %33, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %33
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.perf_event, ptr %33, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %79, label %59

59:                                               ; preds = %75, %55
  %60 = phi ptr [ %76, %75 ], [ %57, %55 ]
  %61 = getelementptr i8, ptr %60, i32 144
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = getelementptr i8, ptr %60, i32 68
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = getelementptr i8, ptr %60, i32 80
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, %4
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = call i32 @_test_and_set_bit(i32 noundef %63, ptr noundef nonnull %2) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %59
  %76 = load ptr, ptr %60, align 8
  %77 = icmp eq ptr %76, %56
  br i1 %77, label %79, label %59

78:                                               ; preds = %72, %68, %48, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %82

79:                                               ; preds = %75, %55, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %80 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 2
  %81 = call i32 @_find_first_bit_le(ptr noundef %80, i32 noundef 16) #12
  store i32 %81, ptr %23, align 4
  br label %82

82:                                               ; preds = %79, %78, %29, %26, %17, %13, %1
  %83 = phi i32 [ -95, %26 ], [ 0, %79 ], [ -2, %1 ], [ -95, %17 ], [ -95, %13 ], [ -22, %29 ], [ -22, %78 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_event_add(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 1040
  %14 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 3
  %15 = load i32, ptr @mmdc_pmu_poll_period_us, align 4
  %16 = zext i32 %15 to i64
  %17 = mul nuw nsw i64 %16, 1000
  tail call void @hrtimer_start_range_ns(ptr noundef %14, i64 noundef %17, i64 noundef 0, i32 noundef 3) #12
  %18 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !11
  %19 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %18, ptr %18, i64 0) #12, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 2) #12, !srcloc !10
  %20 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 9
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr i8, ptr %12, i32 1044
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !14
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #12, !srcloc !10
  %24 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 1, i32 17
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %29) #12, !srcloc !10
  br label %30

30:                                               ; preds = %10, %2
  %31 = getelementptr %struct.mmdc_pmu, ptr %4, i32 0, i32 6, i32 %7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  store ptr %0, ptr %31, align 4
  %35 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %39 = icmp ult i32 %7, 6
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i1, ptr @mmdc_pmu_read_counter.__already_done, align 1
  br i1 %41, label %50, label %42, !prof !16

42:                                               ; preds = %40
  store i1 true, ptr @mmdc_pmu_read_counter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.35, i32 noundef %7) #12
  br label %50

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = shl i32 %7, 2
  %47 = add i32 %46, 1048
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %50

50:                                               ; preds = %43, %42, %40
  %51 = phi i32 [ %49, %43 ], [ 1, %42 ], [ 1, %40 ]
  %52 = zext i32 %51 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #12, !srcloc !11
  %53 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %38, ptr %38, i64 %52) #12, !srcloc !12
  br label %54

54:                                               ; preds = %50, %30
  %55 = phi i32 [ 0, %50 ], [ -11, %30 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_del(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr %struct.mmdc_pmu, ptr %4, i32 0, i32 6, i32 %7
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 3
  %15 = tail call i32 @hrtimer_cancel(ptr noundef %14) #12
  br label %16

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.mmdc_pmu, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 1040
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 4) #12, !srcloc !10
  %21 = getelementptr i8, ptr %19, i32 1044
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #12, !srcloc !10
  tail call void @mmdc_pmu_event_update(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_start(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1040
  %8 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 3
  %9 = load i32, ptr @mmdc_pmu_poll_period_us, align 4
  %10 = zext i32 %9 to i64
  %11 = mul nuw nsw i64 %10, 1000
  tail call void @hrtimer_start_range_ns(ptr noundef %8, i64 noundef %11, i64 noundef 0, i32 noundef 3) #12
  %12 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !11
  %13 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %12, ptr %12, i64 0) #12, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #12, !srcloc !10
  %14 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 9
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr i8, ptr %6, i32 1044
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !14
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #12, !srcloc !10
  %18 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 17
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %23) #12, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_stop(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmdc_pmu, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1040
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 4) #12, !srcloc !10
  %8 = getelementptr i8, ptr %6, i32 1044
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #12, !srcloc !10
  tail call void @mmdc_pmu_event_update(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_update(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 2
  %6 = getelementptr inbounds %struct.mmdc_pmu, ptr %3, i32 0, i32 1
  br label %7

7:                                                ; preds = %28, %1
  %8 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %4, ptr elementtype(i64) %4) #12, !srcloc !20
  %9 = load i64, ptr %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i1, ptr @mmdc_pmu_read_counter.__already_done, align 1
  br i1 %13, label %21, label %14, !prof !16

14:                                               ; preds = %12
  store i1 true, ptr @mmdc_pmu_read_counter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.35, i32 noundef %10) #12
  br label %21

15:                                               ; preds = %7
  %16 = load ptr, ptr %6, align 8
  %17 = shl i32 %10, 2
  %18 = add i32 %17, 1048
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %21

21:                                               ; preds = %15, %14, %12
  %22 = phi i32 [ %20, %15 ], [ 1, %14 ], [ 1, %12 ]
  %23 = zext i32 %22 to i64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !11
  br label %24

24:                                               ; preds = %24, %21
  %25 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %4, ptr %4, i64 %8, i64 %23, ptr elementtype(i64) %4) #12, !srcloc !22
  %26 = extractvalue { i32, i64 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i64 } %25, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %31, label %7

31:                                               ; preds = %28
  %32 = sub i64 %23, %8
  %33 = and i64 %32, 4294967295
  %34 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #12, !srcloc !11
  %35 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %34, ptr %34, i64 %33, ptr elementtype(i64) %34) #12, !srcloc !24
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_sysfs_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %2, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i32 13, i1 false)
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @axi_id_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.32, i32 14, i1 false)
  ret i32 13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_cpumask_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmdc_pmu, ptr %5, i32 0, i32 2
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %2, ptr noundef %6, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }

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
!9 = !{i64 3095143}
!10 = !{i64 3094725}
!11 = !{i64 453586, i64 2147943557, i64 2147943583, i64 2147943630, i64 2147943652, i64 2147943680, i64 2147943700}
!12 = !{i64 443445, i64 443465, i64 443493, i64 443523, i64 443539}
!13 = !{i64 2153596022}
!14 = !{i64 2153596314}
!15 = !{i64 2153596619}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2153585450}
!18 = !{i64 2153599509}
!19 = !{i64 2153599805}
!20 = !{i64 443200, i64 443221}
!21 = !{i64 2148110093}
!22 = !{i64 446815, i64 446841, i64 446869, i64 446887, i64 446905, i64 446927}
!23 = !{i64 2148110295}
!24 = !{i64 2147967001, i64 2147967029, i64 2147967063, i64 2147967097, i64 2147967131, i64 2147967167, i64 2147967190}
