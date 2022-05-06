; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq-dt.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq-dt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.private_data = type { %struct.list_head, [1 x %struct.cpumask], ptr, ptr, ptr, i8 }
%struct.cpufreq_dt_platform_data = type { i8, ptr, ptr, ptr, ptr }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_cpufreq_dt__259_369_dt_cpufreq_platdrv_init6 = internal global ptr @dt_cpufreq_platdrv_init, section ".initcall6.init", align 4
@dt_cpufreq_platdrv = internal global %struct.platform_driver { ptr @dt_cpufreq_probe, ptr @dt_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dt_cpufreq_platdrv_exit = internal global ptr @dt_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias260 = internal constant [37 x i8] c"cpufreq_dt.alias=platform:cpufreq-dt\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [57 x i8] c"cpufreq_dt.author=Viresh Kumar <viresh.kumar@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [51 x i8] c"cpufreq_dt.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [46 x i8] c"cpufreq_dt.description=Generic cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [43 x i8] c"cpufreq_dt.file=drivers/cpufreq/cpufreq-dt\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [23 x i8] c"cpufreq_dt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@dt_cpufreq_driver = internal global %struct.cpufreq_driver { [16 x i8] c"cpufreq-dt\00\00\00\00\00\00", i16 36, ptr null, ptr @cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @set_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr @cpufreq_online, ptr @cpufreq_offline, ptr @cpufreq_exit, ptr @cpufreq_generic_suspend, ptr null, ptr null, ptr @cpufreq_dt_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed register driver: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to set regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"OPP table can't be empty\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: failed to mark OPPs as shared: %d\0A\00", align 1
@__func__.dt_cpufreq_early_init = private unnamed_addr constant [22 x i8] c"dt_cpufreq_early_init\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to init cpufreq table: %d\0A\00", align 1
@priv_list = internal global %struct.list_head { ptr @priv_list, ptr @priv_list }, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"drivers/cpufreq/cpufreq-dt.c\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cpu0-supply\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cpu-supply\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@cpufreq_dt_attr = internal global [3 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr null, ptr null], align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"\013cpufreq_dt: failed to find data for cpu%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: failed to get clk: %d\0A\00", align 1
@__func__.cpufreq_init = private unnamed_addr constant [13 x i8] c"cpufreq_init\00", align 1
@cpufreq_freq_attr_scaling_boost_freqs = external dso_local global %struct.freq_attr, align 4
@cpufreq_freq_attr_scaling_available_freqs = external dso_local global %struct.freq_attr, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_dt_cpufreq_platdrv_exit, ptr @__initcall__kmod_cpufreq_dt__259_369_dt_cpufreq_platdrv_init6, ptr @dt_cpufreq_platdrv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dt_cpufreq_platdrv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dt_cpufreq_platdrv, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dt_cpufreq_platdrv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dt_cpufreq_platdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dt_cpufreq_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %100, %1
  %7 = phi i32 [ -1, %1 ], [ %8, %100 ]
  %8 = call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #9
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %103

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %12 = lshr i32 %8, 5
  %13 = and i32 %8, 31
  %14 = shl nuw i32 1, %13
  br label %15

15:                                               ; preds = %19, %11
  %16 = phi ptr [ @priv_list, %11 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @priv_list
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.private_data, ptr %17, i32 0, i32 1
  %21 = getelementptr i32, ptr %20, i32 %12
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, %14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %15, label %25

25:                                               ; preds = %19
  %26 = icmp eq ptr %17, null
  br i1 %26, label %27, label %100

27:                                               ; preds = %25, %15
  %28 = call ptr @get_cpu_device(i32 noundef %8) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %98, label %30

30:                                               ; preds = %27
  %31 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %98, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 1
  call void @_set_bit(i32 noundef %8, ptr noundef %34) #8
  %35 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 2
  store ptr %28, ptr %35, align 4
  %36 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @of_node_get(ptr noundef %39) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 79, i32 noundef 9, ptr noundef null) #8
  store ptr null, ptr %2, align 4
  br label %61

43:                                               ; preds = %33
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = call ptr @of_find_property(ptr noundef nonnull %40, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %43
  %49 = call ptr @of_find_property(ptr noundef nonnull %40, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @of_node_put(ptr noundef nonnull %40) #8
  store ptr null, ptr %2, align 4
  br label %61

52:                                               ; preds = %48, %45
  %53 = phi ptr [ @.str.10, %48 ], [ @.str.8, %45 ]
  call void @of_node_put(ptr noundef nonnull %40) #8
  store ptr %53, ptr %2, align 4
  %54 = call ptr @dev_pm_opp_set_regulators(ptr noundef nonnull %28, ptr noundef nonnull %2, i32 noundef 1) #8
  %55 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 3
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = icmp eq ptr %54, inttoptr (i32 -517 to ptr)
  br i1 %58, label %98, label %59

59:                                               ; preds = %57
  %60 = ptrtoint ptr %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %28, ptr noundef nonnull @.str.2, i32 noundef %60) #10
  br label %100

61:                                               ; preds = %52, %51, %42
  %62 = call i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef nonnull %28, ptr noundef %34) #8
  switch i32 %62, label %89 [
    i32 0, label %66
    i32 -2, label %63
  ]

63:                                               ; preds = %61
  %64 = call i32 @dev_pm_opp_get_sharing_cpus(ptr noundef nonnull %28, ptr noundef %34) #8
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i1 [ false, %61 ], [ %65, %63 ]
  %68 = call i32 @dev_pm_opp_of_cpumask_add_table(ptr noundef %34) #8
  switch i32 %68, label %71 [
    i32 0, label %69
    i32 -517, label %89
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 5
  store i8 1, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %28) #8
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %28, ptr noundef nonnull @.str.3) #10
  br label %89

75:                                               ; preds = %71
  br i1 %67, label %76, label %80

76:                                               ; preds = %75
  store i32 -1, ptr %34, align 4
  %77 = call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %28, ptr noundef %34) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %28, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dt_cpufreq_early_init, i32 noundef %77) #10
  br label %80

80:                                               ; preds = %79, %76, %75
  %81 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 4
  %82 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef nonnull %28, ptr noundef %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %28, ptr noundef nonnull @.str.5, i32 noundef %82) #10
  br label %89

85:                                               ; preds = %80
  %86 = load ptr, ptr @priv_list, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %31, ptr %87, align 4
  store ptr %86, ptr %31, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr @priv_list, ptr %88, align 4
  store volatile ptr %31, ptr @priv_list, align 4
  br label %100

89:                                               ; preds = %84, %74, %66, %61
  %90 = phi i32 [ -19, %74 ], [ %82, %84 ], [ %62, %61 ], [ %68, %66 ]
  %91 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 5
  %92 = load i8, ptr %91, align 4, !range !9
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %34) #8
  br label %95

95:                                               ; preds = %94, %89
  %96 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %97) #8
  br label %100

98:                                               ; preds = %57, %30, %27
  %99 = phi i32 [ -517, %57 ], [ -12, %30 ], [ -517, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %130

100:                                              ; preds = %95, %85, %59, %25
  %101 = phi i32 [ 0, %85 ], [ 0, %25 ], [ %60, %59 ], [ %90, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %6, label %130

103:                                              ; preds = %6
  %104 = icmp eq ptr %5, null
  br i1 %104, label %126, label %105

105:                                              ; preds = %103
  %106 = load i8, ptr %5, align 4, !range !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i16, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 1), align 4
  %110 = or i16 %109, 8
  store i16 %110, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 1), align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %5, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  store ptr %113, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 19), align 4
  %114 = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %5, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  store ptr %115, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 18), align 4
  br label %118

118:                                              ; preds = %117, %111
  %119 = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %5, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %5, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  store ptr %124, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 11), align 4
  %125 = load ptr, ptr %119, align 4
  store ptr %125, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 10), align 4
  br label %126

126:                                              ; preds = %122, %118, %103
  %127 = call i32 @cpufreq_register_driver(ptr noundef nonnull @dt_cpufreq_driver) #8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %127) #10
  br label %130

130:                                              ; preds = %129, %100, %98
  %131 = phi i32 [ %127, %129 ], [ %99, %98 ], [ %101, %100 ]
  %132 = load ptr, ptr @priv_list, align 4
  %133 = icmp eq ptr %132, @priv_list
  br i1 %133, label %153, label %134

134:                                              ; preds = %145, %130
  %135 = phi ptr [ %136, %145 ], [ %132, %130 ]
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.private_data, ptr %135, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.private_data, ptr %135, i32 0, i32 4
  call void @dev_pm_opp_free_cpufreq_table(ptr noundef %138, ptr noundef %139) #8
  %140 = getelementptr inbounds %struct.private_data, ptr %135, i32 0, i32 5
  %141 = load i8, ptr %140, align 4, !range !9
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.private_data, ptr %135, i32 0, i32 1
  call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %144) #8
  br label %145

145:                                              ; preds = %143, %134
  %146 = getelementptr inbounds %struct.private_data, ptr %135, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %147) #8
  %148 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %135, align 4
  %151 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  store ptr %149, ptr %151, align 4
  store volatile ptr %150, ptr %149, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %135, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %148, align 4
  %152 = icmp eq ptr %136, @priv_list
  br i1 %152, label %153, label %134

153:                                              ; preds = %145, %130, %126
  %154 = phi i32 [ 0, %126 ], [ %131, %130 ], [ %131, %145 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dt_cpufreq_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @dt_cpufreq_driver) #8
  %3 = load ptr, ptr @priv_list, align 4
  %4 = icmp eq ptr %3, @priv_list
  br i1 %4, label %24, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %7, %16 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.private_data, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.private_data, ptr %6, i32 0, i32 4
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %9, ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.private_data, ptr %6, i32 0, i32 5
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.private_data, ptr %6, i32 0, i32 1
  tail call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %5
  %17 = getelementptr inbounds %struct.private_data, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @dev_pm_opp_put_regulators(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = icmp eq ptr %7, @priv_list
  br i1 %23, label %24, label %5

24:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_cpumask_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_cpumask_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 5
  %5 = and i32 %3, 31
  %6 = shl nuw i32 1, %5
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ @priv_list, %1 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @priv_list
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.private_data, ptr %9, i32 0, i32 1
  %13 = getelementptr i32, ptr %12, i32 %4
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, %6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %9, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %17, %7
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %3) #10
  br label %49

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.private_data, ptr %9, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @clk_get(ptr noundef %23, ptr noundef null) #8
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = ptrtoint ptr %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cpufreq_init, i32 noundef %27) #10
  br label %49

28:                                               ; preds = %21
  %29 = tail call i32 @dev_pm_opp_get_max_transition_latency(ptr noundef %23) #8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 -1, i32 %29
  %32 = load i32, ptr %12, align 4
  store i32 %32, ptr %0, align 4
  %33 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  store ptr %9, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  store ptr %24, ptr %34, align 4
  %35 = getelementptr inbounds %struct.private_data, ptr %9, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  store ptr %36, ptr %37, align 4
  %38 = tail call i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef %23) #8
  %39 = udiv i32 %38, 1000
  %40 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 10
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  store i32 %31, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 31
  store i8 1, ptr %42, align 4
  %43 = tail call zeroext i1 @policy_has_boost_freq(ptr noundef %0) #8
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = tail call i32 @cpufreq_enable_boost_support() #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store ptr @cpufreq_freq_attr_scaling_boost_freqs, ptr getelementptr inbounds ([3 x ptr], ptr @cpufreq_dt_attr, i32 0, i32 1), align 4
  br label %49

48:                                               ; preds = %44
  tail call void @clk_put(ptr noundef %24) #8
  br label %49

49:                                               ; preds = %48, %47, %28, %26, %19
  %50 = phi i32 [ %27, %26 ], [ %45, %48 ], [ -19, %19 ], [ 0, %47 ], [ 0, %28 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_target(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.cpufreq_frequency_table, ptr %6, i32 %1, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = mul i32 %8, 1000
  %12 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %10, i32 noundef %11) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_online(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_offline(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_put(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_suspend(ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @get_cpu_device(i32 noundef %3) #8
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %6 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %4, ptr noundef %5) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_max_transition_latency(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @policy_has_boost_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_enable_boost_support() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
