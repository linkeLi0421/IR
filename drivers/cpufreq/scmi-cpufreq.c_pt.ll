; ModuleID = '/llk/IR/drivers/cpufreq/scmi-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/scmi-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.scmi_data = type { i32, i32, ptr, [1 x %struct.cpumask] }
%struct.scmi_perf_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_scmi_cpufreq__178_332_scmi_cpufreq_drv_init6 = internal global ptr @scmi_cpufreq_drv_init, section ".initcall6.init", align 4
@scmi_cpufreq_drv = internal global %struct.scmi_driver { ptr @.str.1, ptr @scmi_cpufreq_probe, ptr @scmi_cpufreq_remove, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, align 4
@__exitcall_scmi_cpufreq_drv_exit = internal global ptr @scmi_cpufreq_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author179 = internal constant [56 x i8] c"scmi_cpufreq.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [59 x i8] c"scmi_cpufreq.description=ARM SCMI CPUFreq interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [47 x i8] c"scmi_cpufreq.file=drivers/cpufreq/scmi-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [28 x i8] c"scmi_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"scmi_cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"scmi-cpufreq\00", align 1
@scmi_id_table = internal constant [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 19, ptr @.str.10 }, %struct.scmi_device_id zeroinitializer], align 4
@ph = internal global ptr null, align 4
@perf_ops = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@scmi_cpufreq_driver = internal global %struct.cpufreq_driver { [16 x i8] c"scmi\00\00\00\00\00\00\00\00\00\00\00\00", i16 44, ptr null, ptr @scmi_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @scmi_cpufreq_set_target, ptr @scmi_cpufreq_fast_switch, ptr null, ptr null, ptr null, ptr @scmi_cpufreq_get_rate, ptr null, ptr null, ptr null, ptr null, ptr @scmi_cpufreq_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @scmi_cpufreq_register_em }, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: registering cpufreq failed, err: %d\0A\00", align 1
@__func__.scmi_cpufreq_probe = private unnamed_addr constant [19 x i8] c"scmi_cpufreq_probe\00", align 1
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"\013scmi_cpufreq: failed to get cpu%d device\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to get sharing cpumask\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to add opps to the device\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: No OPPs for this device: %d\0A\00", align 1
@__func__.scmi_cpufreq_init = private unnamed_addr constant [18 x i8] c"scmi_cpufreq_init\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: failed to mark OPPs as shared: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to init cpufreq table: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__exitcall_scmi_cpufreq_drv_exit, ptr @__initcall__kmod_scmi_cpufreq__178_332_scmi_cpufreq_drv_init6, ptr @scmi_cpufreq_drv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_cpufreq_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_cpufreq_drv_exit() #0 section ".exit.text" {
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_cpufreq_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scmi_handle, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8(ptr noundef %0, i8 noundef zeroext 19, ptr noundef nonnull @ph) #7
  store ptr %9, ptr @perf_ops, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %9 to i32
  br label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %2, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef null) #7
  br label %20

20:                                               ; preds = %18, %13
  %21 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @scmi_cpufreq_driver) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.scmi_cpufreq_probe, i32 noundef %21) #8
  br label %24

24:                                               ; preds = %23, %20, %11, %1
  %25 = phi i32 [ %12, %11 ], [ -19, %1 ], [ %21, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_cpufreq_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @scmi_cpufreq_driver) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @get_cpu_device(i32 noundef %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %8) #8
  br label %110

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 16) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %110, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.scmi_data, ptr %12, i32 0, i32 3
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr @perf_ops, align 4
  %17 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef nonnull %5) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 28
  br label %27

27:                                               ; preds = %41, %25
  %28 = phi i32 [ %22, %25 ], [ %42, %41 ]
  %29 = load i32, ptr %26, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @get_cpu_device(i32 noundef %28) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @perf_ops, align 4
  %36 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef nonnull %32) #7
  %39 = icmp eq i32 %38, %19
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void @_set_bit(i32 noundef %28, ptr noundef %0) #7
  br label %41

41:                                               ; preds = %40, %34, %31, %27
  %42 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #10
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %27, label %46

45:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #8
  br label %108

46:                                               ; preds = %41, %21
  %47 = tail call i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef nonnull %5, ptr noundef %15) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %15, align 4
  %51 = and i32 %50, 65535
  %52 = tail call i32 @__sw_hweight32(i32 noundef %51) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %46
  %55 = load i32, ptr %0, align 4
  store i32 %55, ptr %15, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %5) #7
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load ptr, ptr @perf_ops, align 4
  %61 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %60, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr @ph, align 4
  %64 = tail call i32 %62(ptr noundef %63, ptr noundef nonnull %5) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %5, ptr noundef nonnull @.str.6) #8
  br label %108

67:                                               ; preds = %59
  %68 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %5) #7
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.scmi_cpufreq_init, i32 noundef %68) #8
  br label %106

71:                                               ; preds = %67
  %72 = tail call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %5, ptr noundef %15) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.scmi_cpufreq_init, i32 noundef %72) #8
  br label %106

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.scmi_data, ptr %12, i32 0, i32 1
  store i32 %68, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %56
  %78 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef nonnull %5, ptr noundef nonnull %2) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, i32 noundef %78) #8
  br label %106

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.scmi_data, ptr %12, i32 0, i32 2
  store ptr %5, ptr %82, align 8
  %83 = load ptr, ptr @perf_ops, align 4
  %84 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %83, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef nonnull %5) #7
  store i32 %86, ptr %12, align 8
  %87 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  store ptr %12, ptr %87, align 4
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 31
  store i8 1, ptr %90, align 4
  %91 = load ptr, ptr @perf_ops, align 4
  %92 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr @ph, align 4
  %95 = call i32 %93(ptr noundef %94, ptr noundef nonnull %5) #7
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 -1, i32 %95
  %98 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr @perf_ops, align 4
  %100 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %99, i32 0, i32 10
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr @ph, align 4
  %103 = call zeroext i1 %101(ptr noundef %102, ptr noundef nonnull %5) #7
  %104 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 26
  %105 = zext i1 %103 to i8
  store i8 %105, ptr %104, align 4
  br label %110

106:                                              ; preds = %80, %74, %70
  %107 = phi i32 [ -19, %70 ], [ %72, %74 ], [ %78, %80 ]
  call void @dev_pm_opp_remove_all_dynamic(ptr noundef nonnull %5) #7
  br label %108

108:                                              ; preds = %106, %66, %45
  %109 = phi i32 [ %19, %45 ], [ %64, %66 ], [ %107, %106 ]
  call void @kfree(ptr noundef nonnull %12) #7
  br label %110

110:                                              ; preds = %108, %81, %10, %7
  %111 = phi i32 [ %109, %108 ], [ 0, %81 ], [ -19, %7 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_set_target(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.cpufreq_frequency_table, ptr %6, i32 %1, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr @perf_ops, align 4
  %10 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr @ph, align 4
  %13 = load i32, ptr %4, align 4
  %14 = mul i32 %8, 1000
  %15 = tail call i32 %11(ptr noundef %12, i32 noundef %13, i32 noundef %14, i1 noundef zeroext false) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_fast_switch(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @perf_ops, align 4
  %6 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr @ph, align 4
  %9 = load i32, ptr %4, align 4
  %10 = mul i32 %1, 1000
  %11 = tail call i32 %7(ptr noundef %8, i32 noundef %9, i32 noundef %10, i1 noundef zeroext true) #7
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %1, i32 0
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_get_rate(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %0) #7
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = load ptr, ptr @perf_ops, align 4
  %7 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @ph, align 4
  %10 = load i32, ptr %5, align 4
  %11 = call i32 %8(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %2, i1 noundef zeroext false) #7
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %2, align 4
  %14 = udiv i32 %13, 1000
  %15 = select i1 %12, i32 %14, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scmi_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %5, ptr noundef %6) #7
  %7 = load ptr, ptr %4, align 4
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef %7) #7
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_cpufreq_register_em(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @perf_ops, align 4
  %3 = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %2, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @ph, align 4
  %6 = tail call zeroext i1 %4(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scmi_data, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @get_cpu_device(i32 noundef %14) #7
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
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
