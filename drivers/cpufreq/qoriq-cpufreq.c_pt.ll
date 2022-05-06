; ModuleID = '/llk/IR/drivers/cpufreq/qoriq-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/qoriq-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpu_data = type { ptr, ptr }

@__initcall__kmod_qoriq_cpufreq__178_304_qoriq_cpufreq_platform_driver_init6 = internal global ptr @qoriq_cpufreq_platform_driver_init, section ".initcall6.init", align 4
@qoriq_cpufreq_platform_driver = internal global %struct.platform_driver { ptr @qoriq_cpufreq_probe, ptr @qoriq_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_qoriq_cpufreq_platform_driver_exit = internal global ptr @qoriq_cpufreq_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias179 = internal constant [43 x i8] c"qoriq_cpufreq.alias=platform:qoriq-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [49 x i8] c"qoriq_cpufreq.file=drivers/cpufreq/qoriq-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [26 x i8] c"qoriq_cpufreq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author182 = internal constant [65 x i8] c"qoriq_cpufreq.author=Tang Yuantian <Yuantian.Tang@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description183 = internal constant [73 x i8] c"qoriq_cpufreq.description=cpufreq driver for Freescale QorIQ series SoCs\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"qoriq-cpufreq\00", align 1
@qoriq_cpufreq_blacklist = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4420-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4860-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t2080-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t4240-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Disabling due to erratum A-008083\00", align 1
@qoriq_cpufreq_driver = internal global %struct.cpufreq_driver { [16 x i8] c"qoriq_cpufreq\00\00\00", i16 6, ptr null, ptr @qoriq_cpufreq_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @qoriq_cpufreq_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr @qoriq_cpufreq_cpu_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Freescale QorIQ CPU frequency scaling driver\0A\00", align 1
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"\013qoriq_cpufreq: %s: no clock information\0A\00", align 1
@__func__.qoriq_cpufreq_cpu_init = private unnamed_addr constant [23 x i8] c"qoriq_cpufreq_cpu_init\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"\013qoriq_cpufreq: %s: no clock for cpu %d\0A\00", align 1
@__func__.set_affected_cpus = private unnamed_addr constant [18 x i8] c"set_affected_cpus\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"cg-pll0-div1\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013qoriq_cpufreq: %s: can't get bus frequency %ld\0A\00", align 1
@__func__.get_bus_freq = private unnamed_addr constant [13 x i8] c"get_bus_freq\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_author182, ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__exitcall_qoriq_cpufreq_platform_driver_exit, ptr @__initcall__kmod_qoriq_cpufreq__178_304_qoriq_cpufreq_platform_driver_init6, ptr @qoriq_cpufreq_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qoriq_cpufreq_platform_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @qoriq_cpufreq_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @qoriq_cpufreq_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @qoriq_cpufreq_blacklist, ptr noundef null) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @qoriq_cpufreq_driver) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4, %1
  %8 = phi ptr [ @.str.1, %1 ], [ @.str.2, %4 ]
  %9 = phi i32 [ -19, %1 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %5, %4 ], [ %9, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @qoriq_cpufreq_driver) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_cpu_init(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @of_get_cpu_node(i32 noundef %4, ptr noundef null) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %163, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %162, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @of_clk_get(ptr noundef nonnull %5, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qoriq_cpufreq_cpu_init) #10
  br label %161

17:                                               ; preds = %11
  %18 = tail call ptr @__clk_get_hw(ptr noundef %12) #9
  %19 = tail call i32 @clk_hw_get_num_parents(ptr noundef %18) #9
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #9
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %17
  store ptr null, ptr %9, align 8
  br label %161

23:                                               ; preds = %17
  %24 = extractvalue { i32, i1 } %20, 0
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #12
  store ptr %25, ptr %9, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %161, label %27

27:                                               ; preds = %23
  %28 = add nuw nsw i32 %19, 1
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 12) #9
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %160, label %31, !prof !8

31:                                               ; preds = %27
  %32 = extractvalue { i32, i1 } %29, 0
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %160, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %19, 0
  br i1 %36, label %103, label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %48, %37 ], [ 0, %35 ]
  %39 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %18, i32 noundef %38) #9
  %40 = getelementptr inbounds %struct.clk_hw, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr ptr, ptr %42, i32 %38
  store ptr %41, ptr %43, align 4
  %44 = tail call i32 @clk_get_rate(ptr noundef %41) #9
  %45 = udiv i32 %44, 1000
  %46 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %38, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %38, i32 1
  store i32 %38, ptr %47, align 4
  %48 = add nuw nsw i32 %38, 1
  %49 = icmp eq i32 %48, %19
  br i1 %49, label %50, label %37

50:                                               ; preds = %37
  %51 = icmp sgt i32 %19, 1
  br i1 %51, label %52, label %103

52:                                               ; preds = %67, %50
  %53 = phi i32 [ %68, %67 ], [ 1, %50 ]
  %54 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %53, i32 2
  br label %55

55:                                               ; preds = %64, %52
  %56 = phi i32 [ 0, %52 ], [ %65, %64 ]
  %57 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %56, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %54, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -1, ptr %54, align 4
  br label %67

64:                                               ; preds = %60, %55
  %65 = add nuw nsw i32 %56, 1
  %66 = icmp eq i32 %65, %53
  br i1 %66, label %67, label %55

67:                                               ; preds = %64, %63
  %68 = add nuw nsw i32 %53, 1
  %69 = icmp eq i32 %68, %19
  br i1 %69, label %70, label %52

70:                                               ; preds = %67
  %71 = add i32 %19, -1
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %101, %70
  %74 = phi i32 [ %77, %101 ], [ 0, %70 ]
  %75 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %74, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = add nuw nsw i32 %74, 1
  %78 = icmp slt i32 %77, %19
  br i1 %78, label %79, label %101

79:                                               ; preds = %79, %73
  %80 = phi i32 [ %89, %79 ], [ %76, %73 ]
  %81 = phi i32 [ %88, %79 ], [ %74, %73 ]
  %82 = phi i32 [ %90, %79 ], [ %77, %73 ]
  %83 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %82, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp ne i32 %84, -1
  %86 = icmp ugt i32 %84, %80
  %87 = select i1 %85, i1 %86, i1 false
  %88 = select i1 %87, i32 %82, i32 %81
  %89 = select i1 %87, i32 %84, i32 %80
  %90 = add nuw nsw i32 %82, 1
  %91 = icmp eq i32 %90, %19
  br i1 %91, label %92, label %79

92:                                               ; preds = %79
  %93 = icmp eq i32 %88, %74
  br i1 %93, label %101, label %94

94:                                               ; preds = %92
  %95 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %74, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %88, i32 1
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %95, align 4
  %99 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %88, i32 2
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %75, align 4
  store i32 %96, ptr %97, align 4
  store i32 %76, ptr %99, align 4
  br label %101

101:                                              ; preds = %94, %92, %73
  %102 = icmp eq i32 %77, %71
  br i1 %102, label %103, label %73

103:                                              ; preds = %101, %70, %50, %35
  %104 = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %19, i32 2
  store i32 -2, ptr %104, align 4
  %105 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  store ptr %33, ptr %105, align 4
  %106 = getelementptr inbounds %struct.cpu_data, ptr %9, i32 0, i32 1
  store ptr %33, ptr %106, align 4
  %107 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #13
  %108 = load i32, ptr @nr_cpu_ids, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %127, %103
  %111 = phi i32 [ %128, %127 ], [ %107, %103 ]
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_present_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %110
  %120 = tail call ptr @of_get_cpu_node(i32 noundef %111, ptr noundef null) #9
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  %123 = tail call ptr @of_clk_get(ptr noundef nonnull %120, i32 noundef 0) #9
  tail call void @of_node_put(ptr noundef nonnull %120) #9
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_affected_cpus, i32 noundef %111) #10
  br label %127

127:                                              ; preds = %135, %131, %125
  %128 = tail call i32 @cpumask_next(i32 noundef %111, ptr noundef nonnull @__cpu_present_mask) #13
  %129 = load i32, ptr @nr_cpu_ids, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %110, label %136

131:                                              ; preds = %122, %119, %110
  %132 = phi ptr [ %123, %122 ], [ null, %110 ], [ null, %119 ]
  %133 = load ptr, ptr %13, align 4
  %134 = tail call zeroext i1 @clk_is_match(ptr noundef %133, ptr noundef %132) #9
  br i1 %134, label %135, label %127

135:                                              ; preds = %131
  tail call void @_set_bit(i32 noundef %111, ptr noundef %0) #9
  br label %127

136:                                              ; preds = %127, %103
  %137 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  store ptr %9, ptr %137, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %138 = tail call ptr @of_find_node_by_type(ptr noundef null, ptr noundef nonnull @.str.5) #9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %138, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  call void @of_node_put(ptr noundef nonnull %138) #9
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, ptr %2, align 4
  br label %153

145:                                              ; preds = %140, %136
  %146 = call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.7) #9
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = ptrtoint ptr %146 to i32
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.get_bus_freq, i32 noundef %149) #10
  br label %153

151:                                              ; preds = %145
  %152 = call i32 @clk_get_rate(ptr noundef %146) #9
  br label %153

153:                                              ; preds = %151, %148, %143
  %154 = phi i32 [ %149, %148 ], [ %152, %151 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %155 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %154, i64 12000000000) #14, !srcloc !10
  %156 = extractvalue { i64, i64 } %155, 1
  %157 = trunc i64 %156 to i32
  %158 = add i32 %157, 1
  %159 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  store i32 %158, ptr %159, align 4
  call void @of_node_put(ptr noundef nonnull %5) #9
  br label %163

160:                                              ; preds = %31, %27
  tail call void @kfree(ptr noundef nonnull %25) #9
  br label %161

161:                                              ; preds = %160, %23, %22, %15
  tail call void @kfree(ptr noundef nonnull %9) #9
  br label %162

162:                                              ; preds = %161, %7
  tail call void @of_node_put(ptr noundef nonnull %5) #9
  br label %163

163:                                              ; preds = %162, %153, %1
  %164 = phi i32 [ -19, %162 ], [ 0, %153 ], [ -19, %1 ]
  ret i32 %164
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_target(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpu_data, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.cpufreq_frequency_table, ptr %7, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr ptr, ptr %5, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_set_parent(ptr noundef %13, ptr noundef %11) #9
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_cpu_exit(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.cpu_data, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #9
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148361108, i64 2148361388, i64 2148361722, i64 2148362056}
