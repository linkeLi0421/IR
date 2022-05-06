; ModuleID = '/llk/IR/drivers/cpufreq/mediatek-cpufreq-hw.c_pt.bc'
source_filename = "../drivers/cpufreq/mediatek-cpufreq-hw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtk_cpufreq_data = type { ptr, [6 x ptr], ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__UNIQUE_ID_author185 = internal constant [46 x i8] c"author=Hector Yuan <hector.yuan@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [39 x i8] c"description=Mediatek cpufreq-hw driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@mtk_cpufreq_hw_driver = internal global %struct.platform_driver { ptr @mtk_cpufreq_hw_driver_probe, ptr @mtk_cpufreq_hw_driver_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_cpufreq_hw_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"mtk-cpufreq-hw\00", align 1
@mtk_cpufreq_hw_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,cpufreq-hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpufreq_mtk_offsets }, %struct.of_device_id zeroinitializer], align 4
@cpufreq_mtk_hw_driver = internal global %struct.cpufreq_driver { [16 x i8] c"mtk-cpufreq-hw\00\00", i16 44, ptr null, ptr @mtk_cpufreq_hw_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @mtk_cpufreq_hw_target_index, ptr @mtk_cpufreq_hw_fast_switch, ptr null, ptr null, ptr null, ptr @mtk_cpufreq_hw_get, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cpufreq_hw_cpu_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @mtk_cpufreq_register_em }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CPUFreq HW driver failed to register\0A\00", align 1
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CPUFreq resource init failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\016cpufreq hardware of CPU%d is not enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\016SVS of CPU%d is not enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"performance-domains\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"#performance-domain-cells\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to get mem resource %d\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to request resource %pR\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to map resource %pR\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Domain-%d failed to create freq table\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpufreq_mtk_offsets = internal constant [6 x i16] [i16 0, i16 132, i16 136, i16 140, i16 144, i16 272], align 2
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_license187], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_cpufreq_hw_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_cpufreq_hw_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_driver_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %0, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @cpufreq_mtk_hw_driver, i32 0, i32 2), align 4
  %7 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @cpufreq_mtk_hw_driver) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = phi i32 [ -22, %1 ], [ %7, %9 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_driver_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @cpufreq_mtk_hw_driver) #8
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_cpu_init(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = tail call ptr @cpufreq_get_driver_data() #8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 40, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %144, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %13 = tail call ptr @get_cpu_device(i32 noundef %12) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @of_get_cpu_node(i32 noundef %12, ptr noundef null) #8
  br label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @of_node_get(ptr noundef %19) #8
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %20, %17 ], [ %16, %15 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %22, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %25, %24 ], [ -19, %21 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  br label %144

29:                                               ; preds = %24
  call void @of_node_put(ptr noundef nonnull %22) #8
  %30 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %144, label %33

33:                                               ; preds = %29
  call void @_set_bit(i32 noundef %12, ptr noundef %0) #8
  %34 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  br label %39

39:                                               ; preds = %64, %37
  %40 = phi i32 [ %34, %37 ], [ %65, %64 ]
  %41 = icmp eq i32 %40, %12
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %43 = call ptr @get_cpu_device(i32 noundef %40) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call ptr @of_get_cpu_node(i32 noundef %40, ptr noundef null) #8
  br label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = call ptr @of_node_get(ptr noundef %49) #8
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi ptr [ %50, %47 ], [ %46, %45 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %2) #8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  br label %64

58:                                               ; preds = %54
  call void @of_node_put(ptr noundef nonnull %52) #8
  %59 = load i32, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %60 = icmp sgt i32 %59, -1
  %61 = icmp eq i32 %31, %59
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  call void @_set_bit(i32 noundef %40, ptr noundef %0) #8
  br label %64

64:                                               ; preds = %63, %58, %57, %39
  %65 = call i32 @cpumask_next(i32 noundef %40, ptr noundef nonnull @__cpu_possible_mask) #10
  %66 = load i32, ptr @nr_cpu_ids, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %39, label %68

68:                                               ; preds = %64, %33
  %69 = call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef %31) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %31) #9
  br label %144

72:                                               ; preds = %68
  %73 = load i32, ptr %69, align 4
  %74 = getelementptr inbounds %struct.resource, ptr %69, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 1, %73
  %77 = add i32 %76, %75
  %78 = getelementptr inbounds %struct.resource, ptr %69, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %73, i32 noundef %77, ptr noundef %79, i32 noundef 0) #8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %69) #9
  br label %144

83:                                               ; preds = %72
  %84 = load i32, ptr %69, align 4
  %85 = load i32, ptr %74, align 4
  %86 = sub i32 1, %84
  %87 = add i32 %86, %85
  %88 = call ptr @ioremap(i32 noundef %84, i32 noundef %87) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %69) #9
  %91 = load i32, ptr %69, align 4
  %92 = load i32, ptr %74, align 4
  %93 = sub i32 1, %91
  %94 = add i32 %93, %92
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %91, i32 noundef %94) #8
  br label %144

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 3
  store ptr %88, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 2
  store ptr %69, ptr %97, align 4
  %98 = load i16, ptr %6, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %88, i32 %99
  %101 = getelementptr %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 1, i32 0
  store ptr %100, ptr %101, align 4
  %102 = getelementptr i16, ptr %6, i32 1
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %88, i32 %104
  %106 = getelementptr %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 1, i32 1
  store ptr %105, ptr %106, align 4
  %107 = getelementptr i16, ptr %6, i32 2
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = getelementptr i8, ptr %88, i32 %109
  %111 = getelementptr %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 1, i32 2
  store ptr %110, ptr %111, align 4
  %112 = getelementptr i16, ptr %6, i32 3
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr i8, ptr %88, i32 %114
  %116 = getelementptr %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 1, i32 3
  store ptr %115, ptr %116, align 4
  %117 = getelementptr i16, ptr %6, i32 4
  %118 = load i16, ptr %117, align 2
  %119 = zext i16 %118 to i32
  %120 = getelementptr i8, ptr %88, i32 %119
  %121 = getelementptr %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 1, i32 4
  store ptr %120, ptr %121, align 4
  %122 = getelementptr i16, ptr %6, i32 5
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = getelementptr i8, ptr %88, i32 %124
  %126 = getelementptr %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 1, i32 5
  store ptr %125, ptr %126, align 4
  %127 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 396, i32 noundef 3520) #8
  store ptr %127, ptr %8, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %138, %95
  %130 = phi i32 [ %141, %138 ], [ 0, %95 ]
  %131 = phi i32 [ %136, %138 ], [ 0, %95 ]
  %132 = shl nuw nsw i32 %130, 2
  %133 = getelementptr i8, ptr %100, i32 %132
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #8, !srcloc !9
  %135 = and i32 %134, 4095
  %136 = mul nuw nsw i32 %135, 1000
  %137 = icmp eq i32 %136, %131
  br i1 %137, label %146, label %138

138:                                              ; preds = %129
  %139 = load ptr, ptr %8, align 4
  %140 = getelementptr %struct.cpufreq_frequency_table, ptr %139, i32 %130, i32 2
  store i32 %136, ptr %140, align 4
  %141 = add nuw nsw i32 %130, 1
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %146, label %129

143:                                              ; preds = %95
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %31) #9
  br label %144

144:                                              ; preds = %143, %90, %82, %71, %29, %27, %1
  %145 = phi i32 [ %28, %27 ], [ %31, %29 ], [ -12, %1 ], [ -19, %71 ], [ -16, %82 ], [ -12, %90 ], [ -12, %143 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.2) #9
  br label %189

146:                                              ; preds = %138, %129
  %147 = phi i32 [ %130, %129 ], [ 32, %138 ]
  %148 = load ptr, ptr %8, align 4
  %149 = getelementptr %struct.cpufreq_frequency_table, ptr %148, i32 %147, i32 2
  store i32 -2, ptr %149, align 4
  %150 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %8, i32 0, i32 4
  store i32 %147, ptr %150, align 4
  %151 = load ptr, ptr %8, align 4
  %152 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  store ptr %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  store ptr %8, ptr %153, align 4
  %154 = load ptr, ptr %126, align 4
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #8, !srcloc !9
  %156 = mul i32 %155, 1000
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, i32 -1, i32 %156
  %159 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  store i32 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 26
  store i8 1, ptr %160, align 4
  %161 = load ptr, ptr %106, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 1) #8, !srcloc !10
  %162 = call i64 @ktime_get() #8
  %163 = add i64 %162, 300000000
  %164 = load ptr, ptr %116, align 4
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %166 = and i32 %165, 3
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %189, label %168

168:                                              ; preds = %171, %146
  %169 = call i64 @ktime_get() #8
  %170 = icmp sgt i64 %169, %163
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %172 = load ptr, ptr %116, align 4
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %174 = and i32 %173, 3
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %189, label %168

176:                                              ; preds = %168
  %177 = load ptr, ptr %116, align 4
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %179 = and i32 %178, 3
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %189, label %181

181:                                              ; preds = %176
  %182 = and i32 %178, 1
  %183 = icmp eq i32 %182, 0
  %184 = load i32, ptr %11, align 4
  br i1 %183, label %185, label %187

185:                                              ; preds = %181
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %184) #9
  br label %189

187:                                              ; preds = %181
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %184) #9
  br label %189

189:                                              ; preds = %187, %185, %176, %171, %146, %144
  %190 = phi i32 [ %145, %144 ], [ -19, %185 ], [ 0, %187 ], [ 0, %176 ], [ 0, %146 ], [ 0, %171 ]
  ret i32 %190
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_target_index(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.mtk_cpufreq_data, ptr %4, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #8, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_fast_switch(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = phi ptr [ %6, %2 ], [ %22, %20 ]
  %9 = phi i32 [ 0, %2 ], [ %23, %20 ]
  %10 = phi i32 [ -1, %2 ], [ %21, %20 ]
  %11 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 -2, label %24
    i32 -1, label %20
  ]

13:                                               ; preds = %7
  %14 = icmp eq i32 %12, %1
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = icmp ugt i32 %12, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = icmp eq i32 %10, -1
  %19 = select i1 %18, i32 %9, i32 %10
  br label %24

20:                                               ; preds = %15, %7
  %21 = phi i32 [ %10, %7 ], [ %9, %15 ]
  %22 = getelementptr %struct.cpufreq_frequency_table, ptr %8, i32 1
  %23 = add i32 %9, 1
  br label %7

24:                                               ; preds = %17, %13, %7
  %25 = phi i32 [ %19, %17 ], [ %9, %13 ], [ %10, %7 ]
  %26 = getelementptr %struct.mtk_cpufreq_data, ptr %4, i32 0, i32 1, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !10
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr %struct.cpufreq_frequency_table, ptr %28, i32 %25, i32 2
  %30 = load i32, ptr %29, align 4
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_get(i32 noundef %0) #2 {
  %2 = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 39
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.mtk_cpufreq_data, ptr %6, i32 0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 31)
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr %struct.cpufreq_frequency_table, ptr %11, i32 %10, i32 2
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_cpu_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !10
  tail call void @iounmap(ptr noundef %7) #8
  %10 = load i32, ptr %5, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 1, %10
  %14 = add i32 %13, %12
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %14) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cpufreq_register_em(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @get_cpu_device(i32 noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_get_driver_data() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

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
!9 = !{i64 3989367}
!10 = !{i64 3988949}
!11 = !{i64 2151708587}
!12 = !{i64 2151708972}
