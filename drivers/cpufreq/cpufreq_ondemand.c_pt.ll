; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq_ondemand.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_ondemand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_od_register_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22od_register_powersave_bias_handler\22\09\09\09\09\09"
module asm "__kstrtabns_od_register_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_od_unregister_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22od_unregister_powersave_bias_handler\22\09\09\09\09\09"
module asm "__kstrtabns_od_unregister_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dbs_data = type { %struct.gov_attr_set, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.od_policy_dbs_info = type { %struct.policy_dbs_info, i32, i32, i32, i8 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@od_ops.0 = internal unnamed_addr global ptr @generic_powersave_bias_target, align 4
@__kstrtab_od_register_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_od_register_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_od_register_powersave_bias_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @od_register_powersave_bias_handler to i32), ptr @__kstrtab_od_register_powersave_bias_handler, ptr @__kstrtabns_od_register_powersave_bias_handler }, section "___ksymtab_gpl+od_register_powersave_bias_handler", align 4
@__kstrtab_od_unregister_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_od_unregister_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_od_unregister_powersave_bias_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @od_unregister_powersave_bias_handler to i32), ptr @__kstrtab_od_unregister_powersave_bias_handler, ptr @__kstrtabns_od_unregister_powersave_bias_handler }, section "___ksymtab_gpl+od_unregister_powersave_bias_handler", align 4
@__UNIQUE_ID_author207 = internal constant [76 x i8] c"cpufreq_ondemand.author=Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author208 = internal constant [78 x i8] c"cpufreq_ondemand.author=Alexey Starikovskiy <alexey.y.starikovskiy@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description209 = internal constant [133 x i8] c"cpufreq_ondemand.description='cpufreq_ondemand' - A dynamic cpufreq governor for Low Latency Frequency Transition capable processors\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [55 x i8] c"cpufreq_ondemand.file=drivers/cpufreq/cpufreq_ondemand\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [29 x i8] c"cpufreq_ondemand.license=GPL\00", section ".modinfo", align 1
@od_dbs_gov = internal global %struct.dbs_governor { %struct.cpufreq_governor { [16 x i8] c"ondemand\00\00\00\00\00\00\00\00", ptr @cpufreq_dbs_governor_init, ptr @cpufreq_dbs_governor_exit, ptr @cpufreq_dbs_governor_start, ptr @cpufreq_dbs_governor_stop, ptr @cpufreq_dbs_governor_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 1 }, %struct.kobj_type { ptr null, ptr null, ptr null, ptr @od_groups, ptr null, ptr null, ptr null }, ptr null, ptr @od_dbs_update, ptr @od_alloc, ptr @od_free, ptr @od_init, ptr @od_exit, ptr @od_start }, align 4
@__initcall__kmod_cpufreq_ondemand__212_480_CPU_FREQ_GOV_ONDEMAND_init1 = internal global ptr @CPU_FREQ_GOV_ONDEMAND_init, section ".initcall1.init", align 4
@__exitcall_CPU_FREQ_GOV_ONDEMAND_exit = internal global ptr @CPU_FREQ_GOV_ONDEMAND_exit, section ".exitcall.exit", align 4
@default_powersave_bias = internal unnamed_addr global i32 0, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpufreq_frequency_table_target.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"include/linux/cpufreq.h\00", align 1
@od_groups = internal global [2 x ptr] [ptr @od_group, ptr null], align 4
@od_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @od_attrs, ptr null }, align 4
@od_attrs = internal global [7 x ptr] [ptr @sampling_rate, ptr @up_threshold, ptr @sampling_down_factor, ptr @ignore_nice_load, ptr @powersave_bias, ptr @io_is_busy, ptr null], align 4
@sampling_rate = internal global %struct.governor_attr { %struct.attribute { ptr @.str.1, i16 420 }, ptr @show_sampling_rate, ptr @store_sampling_rate }, align 4
@up_threshold = internal global %struct.governor_attr { %struct.attribute { ptr @.str.3, i16 420 }, ptr @show_up_threshold, ptr @store_up_threshold }, align 4
@sampling_down_factor = internal global %struct.governor_attr { %struct.attribute { ptr @.str.5, i16 420 }, ptr @show_sampling_down_factor, ptr @store_sampling_down_factor }, align 4
@ignore_nice_load = internal global %struct.governor_attr { %struct.attribute { ptr @.str.6, i16 420 }, ptr @show_ignore_nice_load, ptr @store_ignore_nice_load }, align 4
@powersave_bias = internal global %struct.governor_attr { %struct.attribute { ptr @.str.7, i16 420 }, ptr @show_powersave_bias, ptr @store_powersave_bias }, align 4
@io_is_busy = internal global %struct.governor_attr { %struct.attribute { ptr @.str.8, i16 420 }, ptr @show_io_is_busy, ptr @store_io_is_busy }, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sampling_rate\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"up_threshold\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"sampling_down_factor\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ignore_nice_load\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"powersave_bias\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"io_is_busy\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @CPU_FREQ_GOV_ONDEMAND_exit, ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_CPU_FREQ_GOV_ONDEMAND_exit, ptr @__initcall__kmod_cpufreq_ondemand__212_480_CPU_FREQ_GOV_ONDEMAND_init1, ptr @__ksymtab_od_register_powersave_bias_handler, ptr @__ksymtab_od_unregister_powersave_bias_handler], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @od_register_powersave_bias_handler(ptr noundef %0, i32 noundef %1) #0 {
  store ptr %0, ptr @od_ops.0, align 4
  tail call fastcc void @od_set_powersave_bias(i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @od_set_powersave_bias(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %0, ptr @default_powersave_bias, align 4
  store i32 0, ptr %2, align 4
  tail call void @cpus_read_lock() #12
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %36

6:                                                ; preds = %32, %1
  %7 = phi i32 [ %33, %32 ], [ %3, %1 ]
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %7, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %6
  %14 = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %7) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @od_dbs_gov
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 4
  %26 = or i32 %25, %8
  store i32 %26, ptr %2, align 4
  %27 = getelementptr inbounds %struct.policy_dbs_info, ptr %22, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dbs_data, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr @default_powersave_bias, align 4
  store i32 %31, ptr %30, align 4
  br label %32

32:                                               ; preds = %24, %20, %16, %13, %6
  %33 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_online_mask) #13
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %6, label %36

36:                                               ; preds = %32, %1
  tail call void @cpus_read_unlock() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @od_unregister_powersave_bias_handler() #0 {
  store ptr @generic_powersave_bias_target, ptr @od_ops.0, align 4
  tail call fastcc void @od_set_powersave_bias(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_powersave_bias_target(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %5, i32 0, i32 1
  store i32 0, ptr %12, align 8
  br label %314

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dbs_data, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %2, -5
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20, !prof !8

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %22 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %23 = icmp eq i32 %18, 1
  %24 = icmp ult i32 %16, 3
  br i1 %24, label %25, label %185

25:                                               ; preds = %20
  %26 = and i32 %2, 4
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 29
  %29 = load i8, ptr %28, align 1, !range !9
  %30 = icmp ne i8 %29, 0
  %31 = and i1 %27, %30
  br label %34

32:                                               ; preds = %13
  %33 = tail call i32 @cpufreq_table_index_unsorted(ptr noundef %0, i32 noundef %1, i32 noundef %16) #12
  br label %193

34:                                               ; preds = %188, %25
  %35 = phi i1 [ false, %188 ], [ %31, %25 ]
  switch i32 %16, label %124 [
    i32 0, label %36
    i32 1, label %80
  ]

36:                                               ; preds = %34
  %37 = load i32, ptr %21, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %1) #12
  %39 = load i32, ptr %22, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %38, i32 %39) #12
  br i1 %23, label %41, label %58

41:                                               ; preds = %54, %36
  %42 = phi ptr [ %56, %54 ], [ %9, %36 ]
  %43 = phi i32 [ %57, %54 ], [ 0, %36 ]
  %44 = phi i32 [ %55, %54 ], [ -1, %36 ]
  %45 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %42, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %47 [
    i32 -2, label %188
    i32 -1, label %54
  ]

47:                                               ; preds = %41
  br i1 %35, label %48, label %52

48:                                               ; preds = %47
  %49 = load i32, ptr %42, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %47
  %53 = icmp ult i32 %46, %40
  br i1 %53, label %54, label %188

54:                                               ; preds = %52, %48, %41
  %55 = phi i32 [ %44, %48 ], [ %44, %41 ], [ %43, %52 ]
  %56 = getelementptr %struct.cpufreq_frequency_table, ptr %42, i32 1
  %57 = add i32 %43, 1
  br label %41

58:                                               ; preds = %76, %36
  %59 = phi ptr [ %78, %76 ], [ %9, %36 ]
  %60 = phi i32 [ %79, %76 ], [ 0, %36 ]
  %61 = phi i32 [ %77, %76 ], [ -1, %36 ]
  %62 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %59, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %64 [
    i32 -2, label %188
    i32 -1, label %76
  ]

64:                                               ; preds = %58
  br i1 %35, label %65, label %69

65:                                               ; preds = %64
  %66 = load i32, ptr %59, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65, %64
  %70 = icmp eq i32 %63, %40
  br i1 %70, label %188, label %71

71:                                               ; preds = %69
  %72 = icmp ugt i32 %63, %40
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = icmp eq i32 %61, -1
  %75 = select i1 %74, i32 %60, i32 %61
  br label %188

76:                                               ; preds = %71, %65, %58
  %77 = phi i32 [ %61, %65 ], [ %61, %58 ], [ %60, %71 ]
  %78 = getelementptr %struct.cpufreq_frequency_table, ptr %59, i32 1
  %79 = add i32 %60, 1
  br label %58

80:                                               ; preds = %34
  %81 = load i32, ptr %21, align 4
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 %1) #12
  %83 = load i32, ptr %22, align 4
  %84 = tail call i32 @llvm.umin.i32(i32 %82, i32 %83) #12
  br i1 %23, label %85, label %107

85:                                               ; preds = %103, %80
  %86 = phi ptr [ %105, %103 ], [ %9, %80 ]
  %87 = phi i32 [ %106, %103 ], [ 0, %80 ]
  %88 = phi i32 [ %104, %103 ], [ -1, %80 ]
  %89 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %86, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  switch i32 %90, label %91 [
    i32 -2, label %188
    i32 -1, label %103
  ]

91:                                               ; preds = %85
  br i1 %35, label %92, label %96

92:                                               ; preds = %91
  %93 = load i32, ptr %86, align 4
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92, %91
  %97 = icmp eq i32 %90, %84
  br i1 %97, label %188, label %98

98:                                               ; preds = %96
  %99 = icmp ult i32 %90, %84
  br i1 %99, label %103, label %100

100:                                              ; preds = %98
  %101 = icmp eq i32 %88, -1
  %102 = select i1 %101, i32 %87, i32 %88
  br label %188

103:                                              ; preds = %98, %92, %85
  %104 = phi i32 [ %88, %92 ], [ %88, %85 ], [ %87, %98 ]
  %105 = getelementptr %struct.cpufreq_frequency_table, ptr %86, i32 1
  %106 = add i32 %87, 1
  br label %85

107:                                              ; preds = %120, %80
  %108 = phi ptr [ %122, %120 ], [ %9, %80 ]
  %109 = phi i32 [ %123, %120 ], [ 0, %80 ]
  %110 = phi i32 [ %121, %120 ], [ -1, %80 ]
  %111 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %108, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  switch i32 %112, label %113 [
    i32 -2, label %188
    i32 -1, label %120
  ]

113:                                              ; preds = %107
  br i1 %35, label %114, label %118

114:                                              ; preds = %113
  %115 = load i32, ptr %108, align 4
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %113
  %119 = icmp ugt i32 %112, %84
  br i1 %119, label %120, label %188

120:                                              ; preds = %118, %114, %107
  %121 = phi i32 [ %110, %114 ], [ %110, %107 ], [ %109, %118 ]
  %122 = getelementptr %struct.cpufreq_frequency_table, ptr %108, i32 1
  %123 = add i32 %109, 1
  br label %107

124:                                              ; preds = %34
  %125 = load i32, ptr %21, align 4
  %126 = tail call i32 @llvm.umax.i32(i32 %125, i32 %1) #12
  %127 = load i32, ptr %22, align 4
  %128 = tail call i32 @llvm.umin.i32(i32 %126, i32 %127) #12
  br i1 %23, label %129, label %157

129:                                              ; preds = %153, %124
  %130 = phi ptr [ %155, %153 ], [ %9, %124 ]
  %131 = phi i32 [ %156, %153 ], [ 0, %124 ]
  %132 = phi i32 [ %154, %153 ], [ -1, %124 ]
  %133 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %130, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  switch i32 %134, label %135 [
    i32 -2, label %188
    i32 -1, label %153
  ]

135:                                              ; preds = %129
  br i1 %35, label %136, label %140

136:                                              ; preds = %135
  %137 = load i32, ptr %130, align 4
  %138 = and i32 %137, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %136, %135
  %141 = icmp eq i32 %134, %128
  br i1 %141, label %188, label %142

142:                                              ; preds = %140
  %143 = icmp ult i32 %134, %128
  br i1 %143, label %153, label %144

144:                                              ; preds = %142
  %145 = icmp eq i32 %132, -1
  br i1 %145, label %188, label %146

146:                                              ; preds = %144
  %147 = getelementptr %struct.cpufreq_frequency_table, ptr %9, i32 %132, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = sub i32 %128, %148
  %150 = sub i32 %134, %128
  %151 = icmp ugt i32 %149, %150
  %152 = select i1 %151, i32 %131, i32 %132
  br label %188

153:                                              ; preds = %142, %136, %129
  %154 = phi i32 [ %132, %136 ], [ %132, %129 ], [ %131, %142 ]
  %155 = getelementptr %struct.cpufreq_frequency_table, ptr %130, i32 1
  %156 = add i32 %131, 1
  br label %129

157:                                              ; preds = %181, %124
  %158 = phi ptr [ %183, %181 ], [ %9, %124 ]
  %159 = phi i32 [ %184, %181 ], [ 0, %124 ]
  %160 = phi i32 [ %182, %181 ], [ -1, %124 ]
  %161 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %158, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  switch i32 %162, label %163 [
    i32 -2, label %188
    i32 -1, label %181
  ]

163:                                              ; preds = %157
  br i1 %35, label %164, label %168

164:                                              ; preds = %163
  %165 = load i32, ptr %158, align 4
  %166 = and i32 %165, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %164, %163
  %169 = icmp eq i32 %128, %162
  br i1 %169, label %188, label %170

170:                                              ; preds = %168
  %171 = icmp ult i32 %128, %162
  br i1 %171, label %181, label %172

172:                                              ; preds = %170
  %173 = icmp eq i32 %160, -1
  br i1 %173, label %188, label %174

174:                                              ; preds = %172
  %175 = getelementptr %struct.cpufreq_frequency_table, ptr %9, i32 %160, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = sub i32 %176, %128
  %178 = sub i32 %128, %162
  %179 = icmp ugt i32 %177, %178
  %180 = select i1 %179, i32 %159, i32 %160
  br label %188

181:                                              ; preds = %170, %164, %157
  %182 = phi i32 [ %160, %164 ], [ %160, %157 ], [ %159, %170 ]
  %183 = getelementptr %struct.cpufreq_frequency_table, ptr %158, i32 1
  %184 = add i32 %159, 1
  br label %157

185:                                              ; preds = %20
  %186 = load i1, ptr @cpufreq_frequency_table_target.__already_done, align 1
  br i1 %186, label %193, label %187, !prof !10

187:                                              ; preds = %185
  store i1 true, ptr @cpufreq_frequency_table_target.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1050, i32 noundef 9, ptr noundef null) #12
  br label %193

188:                                              ; preds = %174, %172, %168, %157, %146, %144, %140, %129, %118, %107, %100, %96, %85, %73, %69, %58, %52, %41
  %189 = phi i32 [ %75, %73 ], [ %102, %100 ], [ %131, %144 ], [ %152, %146 ], [ %159, %172 ], [ %180, %174 ], [ %131, %140 ], [ %132, %129 ], [ %159, %168 ], [ %160, %157 ], [ %44, %41 ], [ %43, %52 ], [ %60, %69 ], [ %61, %58 ], [ %87, %96 ], [ %88, %85 ], [ %110, %107 ], [ %109, %118 ]
  %190 = icmp sgt i32 %189, -1
  %191 = xor i1 %35, true
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %193, label %34

193:                                              ; preds = %188, %187, %185, %32
  %194 = phi i32 [ %33, %32 ], [ 0, %187 ], [ 0, %185 ], [ %189, %188 ]
  %195 = getelementptr %struct.cpufreq_frequency_table, ptr %9, i32 %194, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = load i32, ptr %15, align 4
  %198 = mul i32 %197, %196
  %199 = udiv i32 %198, 1000
  %200 = sub i32 %196, %199
  %201 = and i32 %2, 4
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %204 = load i32, ptr %203, align 4
  %205 = tail call i32 @llvm.umax.i32(i32 %204, i32 %200) #12
  %206 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %207 = load i32, ptr %206, align 4
  %208 = tail call i32 @llvm.umin.i32(i32 %205, i32 %207) #12
  %209 = load i32, ptr %17, align 4
  %210 = icmp eq i32 %209, 1
  %211 = load ptr, ptr %8, align 4
  br i1 %210, label %212, label %234

212:                                              ; preds = %230, %193
  %213 = phi ptr [ %232, %230 ], [ %211, %193 ]
  %214 = phi i32 [ %233, %230 ], [ 0, %193 ]
  %215 = phi i32 [ %231, %230 ], [ -1, %193 ]
  %216 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %213, i32 0, i32 2
  %217 = load i32, ptr %216, align 4
  switch i32 %217, label %218 [
    i32 -2, label %251
    i32 -1, label %230
  ]

218:                                              ; preds = %212
  br i1 %202, label %223, label %219

219:                                              ; preds = %218
  %220 = load i32, ptr %213, align 4
  %221 = and i32 %220, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219, %218
  %224 = icmp eq i32 %217, %208
  br i1 %224, label %251, label %225

225:                                              ; preds = %223
  %226 = icmp ult i32 %217, %208
  br i1 %226, label %230, label %227

227:                                              ; preds = %225
  %228 = icmp eq i32 %215, -1
  %229 = select i1 %228, i32 %214, i32 %215
  br label %251

230:                                              ; preds = %225, %219, %212
  %231 = phi i32 [ %215, %219 ], [ %215, %212 ], [ %214, %225 ]
  %232 = getelementptr %struct.cpufreq_frequency_table, ptr %213, i32 1
  %233 = add i32 %214, 1
  br label %212

234:                                              ; preds = %247, %193
  %235 = phi ptr [ %249, %247 ], [ %211, %193 ]
  %236 = phi i32 [ %250, %247 ], [ 0, %193 ]
  %237 = phi i32 [ %248, %247 ], [ -1, %193 ]
  %238 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %235, i32 0, i32 2
  %239 = load i32, ptr %238, align 4
  switch i32 %239, label %240 [
    i32 -2, label %251
    i32 -1, label %247
  ]

240:                                              ; preds = %234
  br i1 %202, label %245, label %241

241:                                              ; preds = %240
  %242 = load i32, ptr %235, align 4
  %243 = and i32 %242, 2
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %241, %240
  %246 = icmp ugt i32 %239, %208
  br i1 %246, label %247, label %251

247:                                              ; preds = %245, %241, %234
  %248 = phi i32 [ %237, %241 ], [ %237, %234 ], [ %236, %245 ]
  %249 = getelementptr %struct.cpufreq_frequency_table, ptr %235, i32 1
  %250 = add i32 %236, 1
  br label %234

251:                                              ; preds = %245, %234, %227, %223, %212
  %252 = phi i32 [ %229, %227 ], [ %215, %212 ], [ %214, %223 ], [ %236, %245 ], [ %237, %234 ]
  %253 = getelementptr %struct.cpufreq_frequency_table, ptr %9, i32 %252, i32 2
  %254 = load i32, ptr %253, align 4
  br i1 %210, label %255, label %272

255:                                              ; preds = %268, %251
  %256 = phi ptr [ %270, %268 ], [ %211, %251 ]
  %257 = phi i32 [ %271, %268 ], [ 0, %251 ]
  %258 = phi i32 [ %269, %268 ], [ -1, %251 ]
  %259 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %256, i32 0, i32 2
  %260 = load i32, ptr %259, align 4
  switch i32 %260, label %261 [
    i32 -2, label %294
    i32 -1, label %268
  ]

261:                                              ; preds = %255
  br i1 %202, label %266, label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %256, align 4
  %264 = and i32 %263, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %262, %261
  %267 = icmp ult i32 %260, %208
  br i1 %267, label %268, label %294

268:                                              ; preds = %266, %262, %255
  %269 = phi i32 [ %258, %262 ], [ %258, %255 ], [ %257, %266 ]
  %270 = getelementptr %struct.cpufreq_frequency_table, ptr %256, i32 1
  %271 = add i32 %257, 1
  br label %255

272:                                              ; preds = %290, %251
  %273 = phi ptr [ %292, %290 ], [ %211, %251 ]
  %274 = phi i32 [ %293, %290 ], [ 0, %251 ]
  %275 = phi i32 [ %291, %290 ], [ -1, %251 ]
  %276 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %273, i32 0, i32 2
  %277 = load i32, ptr %276, align 4
  switch i32 %277, label %278 [
    i32 -2, label %294
    i32 -1, label %290
  ]

278:                                              ; preds = %272
  br i1 %202, label %283, label %279

279:                                              ; preds = %278
  %280 = load i32, ptr %273, align 4
  %281 = and i32 %280, 2
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %279, %278
  %284 = icmp eq i32 %277, %208
  br i1 %284, label %294, label %285

285:                                              ; preds = %283
  %286 = icmp ugt i32 %277, %208
  br i1 %286, label %290, label %287

287:                                              ; preds = %285
  %288 = icmp eq i32 %275, -1
  %289 = select i1 %288, i32 %274, i32 %275
  br label %294

290:                                              ; preds = %285, %279, %272
  %291 = phi i32 [ %275, %279 ], [ %275, %272 ], [ %274, %285 ]
  %292 = getelementptr %struct.cpufreq_frequency_table, ptr %273, i32 1
  %293 = add i32 %274, 1
  br label %272

294:                                              ; preds = %287, %283, %272, %266, %255
  %295 = phi i32 [ %289, %287 ], [ %257, %266 ], [ %258, %255 ], [ %275, %272 ], [ %274, %283 ]
  %296 = getelementptr %struct.cpufreq_frequency_table, ptr %9, i32 %295, i32 2
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, %254
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %5, i32 0, i32 1
  store i32 0, ptr %300, align 8
  br label %314

301:                                              ; preds = %294
  %302 = sub i32 %200, %254
  %303 = getelementptr inbounds %struct.dbs_data, ptr %7, i32 0, i32 3
  %304 = load i32, ptr %303, align 4
  %305 = mul i32 %304, %302
  %306 = sub i32 %297, %254
  %307 = lshr i32 %306, 1
  %308 = add i32 %305, %307
  %309 = udiv i32 %308, %306
  %310 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %5, i32 0, i32 3
  store i32 %309, ptr %310, align 8
  %311 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %5, i32 0, i32 1
  store i32 %254, ptr %311, align 8
  %312 = load i32, ptr %303, align 4
  %313 = sub i32 %312, %309
  br label %314

314:                                              ; preds = %301, %299, %11
  %315 = phi i32 [ %313, %301 ], [ 0, %299 ], [ 0, %11 ]
  %316 = phi i32 [ %297, %301 ], [ %254, %299 ], [ %1, %11 ]
  %317 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %5, i32 0, i32 2
  store i32 %315, ptr %317, align 4
  ret i32 %316
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @cpufreq_default_governor() local_unnamed_addr #1 {
  ret ptr @od_dbs_gov
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @CPU_FREQ_GOV_ONDEMAND_init() #2 section ".init.text" {
  %1 = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @od_dbs_gov) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @CPU_FREQ_GOV_ONDEMAND_exit() #2 section ".exit.text" {
  tail call void @cpufreq_unregister_governor(ptr noundef nonnull @od_dbs_gov) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_unregister_governor(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_table_index_unsorted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_exit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_start(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_stop(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_limits(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @od_dbs_update(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = and i8 %7, -2
  store i8 %9, ptr %6, align 4
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %17, i32 noundef 5) #12
  %19 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  br label %98

21:                                               ; preds = %11, %1
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.policy_dbs_info, ptr %22, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dbs_data, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @dbs_update(ptr noundef %0) #12
  %28 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %22, i32 0, i32 1
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.dbs_data, ptr %24, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dbs_data, ptr %24, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.policy_dbs_info, ptr %22, i32 0, i32 9
  store i32 %40, ptr %41, align 8
  %42 = load i32, ptr %35, align 4
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i32 [ %42, %38 ], [ %36, %32 ]
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.policy_dbs_info, ptr %45, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dbs_data, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load ptr, ptr @od_ops.0, align 4
  %54 = tail call i32 %53(ptr noundef %0, i32 noundef %44, i32 noundef 5) #12
  %55 = load i32, ptr %49, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 5, i32 4
  br label %61

58:                                               ; preds = %43
  %59 = load i32, ptr %33, align 4
  %60 = icmp eq i32 %59, %44
  br i1 %60, label %83, label %61

61:                                               ; preds = %58, %52
  %62 = phi i32 [ %57, %52 ], [ 5, %58 ]
  %63 = phi i32 [ %54, %52 ], [ %44, %58 ]
  %64 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %63, i32 noundef %62) #12
  br label %83

65:                                               ; preds = %21
  %66 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %66, align 4
  %70 = sub i32 %69, %68
  %71 = mul i32 %70, %27
  %72 = udiv i32 %71, 100
  %73 = add i32 %72, %68
  %74 = getelementptr inbounds %struct.policy_dbs_info, ptr %22, i32 0, i32 9
  store i32 1, ptr %74, align 8
  %75 = load i32, ptr %26, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = load ptr, ptr @od_ops.0, align 4
  %79 = tail call i32 %78(ptr noundef %0, i32 noundef %73, i32 noundef 4) #12
  br label %80

80:                                               ; preds = %77, %65
  %81 = phi i32 [ %79, %77 ], [ %73, %65 ]
  %82 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %81, i32 noundef 6) #12
  br label %83

83:                                               ; preds = %80, %61, %58
  %84 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i8, ptr %6, align 4
  %89 = or i8 %88, 1
  store i8 %89, ptr %6, align 4
  %90 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 3
  %91 = load i32, ptr %90, align 8
  br label %98

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 9
  %96 = load i32, ptr %95, align 8
  %97 = mul i32 %96, %94
  br label %98

98:                                               ; preds = %92, %87, %15
  %99 = phi i32 [ %20, %15 ], [ %91, %87 ], [ %97, %92 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @od_alloc() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 120) #14
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @od_free(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @od_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = tail call i64 @get_cpu_idle_time_us(i32 noundef %8, ptr noundef null) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %10 = icmp eq i64 %9, -1
  %11 = select i1 %10, i32 80, i32 95
  %12 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 4
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr @default_powersave_bias, align 4
  store i32 %15, ptr %3, align 8
  %16 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 6
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  store ptr %3, ptr %17, align 4
  br label %18

18:                                               ; preds = %5, %1
  %19 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @od_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @od_start(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, -2
  store i8 %6, ptr %4, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %7, i32 0, i32 1
  store i32 0, ptr %8, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_sampling_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_sampling_rate(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_up_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_up_threshold(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4)
  %6 = icmp ne i32 %5, 1
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %7, 100
  %9 = select i1 %6, i1 true, i1 %8
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  store i32 %7, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %2, %12 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_sampling_down_factor(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_sampling_down_factor(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4)
  %6 = icmp ne i32 %5, 1
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %7, 100000
  %9 = select i1 %6, i1 true, i1 %8
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 4
  store i32 %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %23, label %17

17:                                               ; preds = %17, %12
  %18 = phi ptr [ %21, %17 ], [ %15, %12 ]
  %19 = getelementptr i8, ptr %18, i32 -76
  call void @mutex_lock(ptr noundef %19) #12
  %20 = getelementptr i8, ptr %18, i32 8
  store i32 1, ptr %20, align 8
  call void @mutex_unlock(ptr noundef %19) #12
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, %14
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %12, %3
  %24 = phi i32 [ -22, %3 ], [ %2, %12 ], [ %2, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ignore_nice_load(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_ignore_nice_load(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, ptr %4, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 1, %10 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 %12, ptr %13, align 4
  call void @gov_update_cpu_data(ptr noundef %0) #12
  br label %17

17:                                               ; preds = %16, %11, %3
  %18 = phi i32 [ %2, %16 ], [ -22, %3 ], [ %2, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_update_cpu_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_powersave_bias(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_powersave_bias(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !13
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp ugt i32 %10, 1000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1000, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 1000, %12 ], [ %10, %9 ]
  store i32 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %13
  %19 = phi ptr [ %25, %18 ], [ %16, %13 ]
  %20 = getelementptr i8, ptr %19, i32 -80
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, ptr %21, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %23, i32 0, i32 1
  store i32 0, ptr %24, align 8
  %25 = load ptr, ptr %19, align 4
  %26 = icmp eq ptr %25, %15
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %13, %3
  %28 = phi i32 [ -22, %3 ], [ %2, %13 ], [ %2, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_io_is_busy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_io_is_busy(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  call void @gov_update_cpu_data(ptr noundef %0) #12
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %2, %7 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbs_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152203927}
!12 = !{i64 2152204103}
!13 = !{!"auto-init"}
