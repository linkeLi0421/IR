; ModuleID = '/llk/IR/drivers/base/arch_topology.c_pt.bc'
source_filename = "../drivers/base/arch_topology.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_topology_set_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22topology_set_scale_freq_source\22\09\09\09\09\09"
module asm "__kstrtabns_topology_set_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_topology_clear_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22topology_clear_scale_freq_source\22\09\09\09\09\09"
module asm "__kstrtabns_topology_clear_scale_freq_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arch_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22arch_freq_scale\22\09\09\09\09\09"
module asm "__kstrtabns_arch_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_scale\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_topology_update_thermal_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22topology_update_thermal_pressure\22\09\09\09\09\09"
module asm "__kstrtabns_topology_update_thermal_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_topology:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_topology\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_topology:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.scale_freq_data = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@scale_freq_counters_mask = internal global %struct.cpumask zeroinitializer, align 4
@scale_freq_invariant = internal unnamed_addr global i8 0, align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sft_data = internal global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_topology_set_scale_freq_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_topology_set_scale_freq_source = external dso_local constant [0 x i8], align 1
@__ksymtab_topology_set_scale_freq_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @topology_set_scale_freq_source to i32), ptr @__kstrtab_topology_set_scale_freq_source, ptr @__kstrtabns_topology_set_scale_freq_source }, section "___ksymtab_gpl+topology_set_scale_freq_source", align 4
@__kstrtab_topology_clear_scale_freq_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_topology_clear_scale_freq_source = external dso_local constant [0 x i8], align 1
@__ksymtab_topology_clear_scale_freq_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @topology_clear_scale_freq_source to i32), ptr @__kstrtab_topology_clear_scale_freq_source, ptr @__kstrtabns_topology_clear_scale_freq_source }, section "___ksymtab_gpl+topology_clear_scale_freq_source", align 4
@arch_freq_scale = dso_local global i32 1024, section ".data..percpu", align 4
@__kstrtab_arch_freq_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns_arch_freq_scale = external dso_local constant [0 x i8], align 1
@__ksymtab_arch_freq_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arch_freq_scale to i32), ptr @__kstrtab_arch_freq_scale, ptr @__kstrtabns_arch_freq_scale }, section "___ksymtab_gpl+arch_freq_scale", align 4
@topology_set_freq_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [29 x i8] c"drivers/base/arch_topology.c\00", align 1
@cpu_scale = dso_local global i32 1024, section ".data..percpu", align 4
@__kstrtab_cpu_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_scale = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_scale to i32), ptr @__kstrtab_cpu_scale, ptr @__kstrtabns_cpu_scale }, section "___ksymtab_gpl+cpu_scale", align 4
@freq_factor = internal global i32 1, section ".data..percpu", align 4
@thermal_pressure = dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_topology_update_thermal_pressure = external dso_local constant [0 x i8], align 1
@__kstrtabns_topology_update_thermal_pressure = external dso_local constant [0 x i8], align 1
@__ksymtab_topology_update_thermal_pressure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @topology_update_thermal_pressure to i32), ptr @__kstrtab_topology_update_thermal_pressure, ptr @__kstrtabns_topology_update_thermal_pressure }, section "___ksymtab_gpl+topology_update_thermal_pressure", align 4
@__initcall__kmod_arch_topology__245_234_register_cpu_capacity_sysctl4 = internal global ptr @register_cpu_capacity_sysctl, section ".initcall4.init", align 4
@update_topology = internal unnamed_addr global i1 false, align 4
@raw_capacity = internal unnamed_addr global ptr null, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@topology_parse_cpu_capacity.cap_parsing_failed = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"capacity-dmips-mhz\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\013cpu_capacity: missing %pOF raw capacity\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\013cpu_capacity: partial information: fallback to 1024 for all CPUs\0A\00", align 1
@__initcall__kmod_arch_topology__248_410_register_cpufreq_notifier1 = internal global ptr @register_cpufreq_notifier, section ".initcall1.init", align 4
@cpu_topology = dso_local global [16 x %struct.cpu_topology] zeroinitializer, align 4
@__kstrtab_cpu_topology = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_topology = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_topology = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_topology to i32), ptr @__kstrtab_cpu_topology, ptr @__kstrtabns_cpu_topology }, section "___ksymtab_gpl+cpu_topology", align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"\013%s: too early to get CPU%d device!\0A\00", align 1
@__func__.register_cpu_capacity_sysctl = private unnamed_addr constant [29 x i8] c"register_cpu_capacity_sysctl\00", align 1
@dev_attr_cpu_capacity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @cpu_capacity_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"cpu_capacity\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@cpus_to_visit.0 = internal unnamed_addr global i32 0, align 4
@init_cpu_capacity_notifier = internal global %struct.notifier_block { ptr @init_cpu_capacity_callback, ptr null, i32 0 }, align 4
@update_topology_flags_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @update_topology_flags_work, i64 4), ptr getelementptr (i8, ptr @update_topology_flags_work, i64 4) }, ptr @update_topology_flags_workfn }, align 4
@parsing_done_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @parsing_done_work, i64 4), ptr getelementptr (i8, ptr @parsing_done_work, i64 4) }, ptr @parsing_done_workfn }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_arch_topology__245_234_register_cpu_capacity_sysctl4, ptr @__initcall__kmod_arch_topology__248_410_register_cpufreq_notifier1, ptr @__ksymtab_arch_freq_scale, ptr @__ksymtab_cpu_scale, ptr @__ksymtab_cpu_topology, ptr @__ksymtab_topology_clear_scale_freq_source, ptr @__ksymtab_topology_set_scale_freq_source, ptr @__ksymtab_topology_update_thermal_pressure], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @topology_scale_freq_invariant() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %1, label %9, label %2

2:                                                ; preds = %0
  %3 = load i32, ptr @__cpu_online_mask, align 4
  %4 = load i32, ptr @scale_freq_counters_mask, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %3, 65535
  %7 = and i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %2, %0
  %10 = phi i1 [ true, %0 ], [ %8, %2 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_supports_freq_invariance() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @topology_set_scale_freq_source(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @scale_freq_counters_mask, align 4
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr @__cpu_online_mask, align 4
  %10 = load i32, ptr @scale_freq_counters_mask, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, 65535
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %8, %6
  %16 = phi i1 [ true, %6 ], [ %14, %8 ]
  %17 = zext i1 %16 to i8
  store i8 %17, ptr @scale_freq_invariant, align 1
  br label %18

18:                                               ; preds = %15, %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %19 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #14
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %39, %18
  %23 = phi i32 [ %40, %39 ], [ %20, %18 ]
  %24 = phi i32 [ %41, %39 ], [ %19, %18 ]
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @sft_data to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %39, label %34

34:                                               ; preds = %31, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %35 = load i32, ptr %25, align 4
  %36 = add i32 %35, ptrtoint (ptr @sft_data to i32)
  %37 = inttoptr i32 %36 to ptr
  store volatile ptr %0, ptr %37, align 4
  tail call void @_set_bit(i32 noundef %24, ptr noundef nonnull @scale_freq_counters_mask) #13
  %38 = load i32, ptr @nr_cpu_ids, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %38, %34 ], [ %23, %31 ]
  %41 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef %1) #14
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %22, label %43

43:                                               ; preds = %39, %18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %44 = load i8, ptr @scale_freq_invariant, align 1, !range !12
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = load i32, ptr @__cpu_online_mask, align 4
  %50 = load i32, ptr @scale_freq_counters_mask, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, 65535
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %46
  store i8 1, ptr @scale_freq_invariant, align 1
  br label %56

56:                                               ; preds = %55, %48, %43
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @topology_clear_scale_freq_source(i32 noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #14
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %20, %2
  %7 = phi i32 [ %21, %20 ], [ %4, %2 ]
  %8 = phi i32 [ %22, %20 ], [ %3, %2 ]
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @sft_data to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr %13, align 4
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  store volatile ptr null, ptr %12, align 4
  tail call void @_clear_bit(i32 noundef %8, ptr noundef nonnull @scale_freq_counters_mask) #13
  %19 = load i32, ptr @nr_cpu_ids, align 4
  br label %20

20:                                               ; preds = %18, %15, %6
  %21 = phi i32 [ %19, %18 ], [ %7, %15 ], [ %7, %6 ]
  %22 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef %1) #14
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %6, label %24

24:                                               ; preds = %20, %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  tail call void @synchronize_rcu() #13
  %25 = load i8, ptr @scale_freq_invariant, align 1, !range !12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = tail call zeroext i1 @cpufreq_supports_freq_invariance() #13
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr @__cpu_online_mask, align 4
  %31 = load i32, ptr @scale_freq_counters_mask, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, 65535
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i8 0, ptr @scale_freq_invariant, align 1
  br label %37

37:                                               ; preds = %36, %29, %27, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @topology_scale_freq_tick() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #9, !srcloc !13
  %4 = add i32 %3, ptrtoint (ptr @sft_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.scale_freq_data, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %10() #13
  br label %11

11:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @topology_set_freq_scale(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = icmp eq i32 %2, 0
  %6 = or i1 %4, %5
  %7 = load i1, ptr @topology_set_freq_scale.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %3
  store i1 true, ptr @topology_set_freq_scale.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %3
  br i1 %6, label %34, label %12

12:                                               ; preds = %11
  %13 = load i32, ptr %0, align 4
  %14 = load i32, ptr @scale_freq_counters_mask, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, 65535
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %12
  %20 = shl i32 %1, 10
  %21 = udiv i32 %20, %2
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #14
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %25, %19
  %26 = phi i32 [ %31, %25 ], [ %22, %19 ]
  %27 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, ptrtoint (ptr @arch_freq_scale to i32)
  %30 = inttoptr i32 %29 to ptr
  store i32 %21, ptr %30, align 4
  %31 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef %0) #14
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %25, %19, %12, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @topology_set_cpu_scale(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @cpu_scale to i32)
  %6 = inttoptr i32 %5 to ptr
  store i32 %1, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @topology_update_thermal_pressure(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @_find_first_bit_le(ptr noundef %0, i32 noundef 16) #13
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @cpu_scale to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %5, ptrtoint (ptr @freq_factor to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %1, 1000
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = freeze i32 %8
  %16 = freeze i32 %11
  %17 = udiv i32 %15, %16
  %18 = mul i32 %17, %16
  %19 = sub i32 %15, %18
  %20 = mul i32 %17, %12
  %21 = mul i32 %19, %12
  %22 = udiv i32 %21, %11
  %23 = add i32 %22, %20
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i32 [ %23, %14 ], [ %8, %2 ]
  %26 = sub i32 %8, %25
  %27 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #14
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %30, %24
  %31 = phi i32 [ %36, %30 ], [ %27, %24 ]
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @thermal_pressure to i32)
  %35 = inttoptr i32 %34 to ptr
  store volatile i32 %26, ptr %35, align 4
  %36 = tail call i32 @cpumask_next(i32 noundef %31, ptr noundef %0) #14
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @register_cpu_capacity_sysctl() #0 {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %16

4:                                                ; preds = %10, %0
  %5 = phi i32 [ %11, %10 ], [ %1, %0 ]
  %6 = tail call ptr @get_cpu_device(i32 noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.register_cpu_capacity_sysctl, i32 noundef %5) #15
  br label %10

10:                                               ; preds = %14, %8
  %11 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #14
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %4, label %16

14:                                               ; preds = %4
  %15 = tail call i32 @device_create_file(ptr noundef nonnull %6, ptr noundef nonnull @dev_attr_cpu_capacity) #13
  br label %10

16:                                               ; preds = %10, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @topology_update_cpu_topology() local_unnamed_addr #5 {
  %1 = load i1, ptr @update_topology, align 4
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @topology_normalize_cpu_scale() local_unnamed_addr #0 {
  %1 = load ptr, ptr @raw_capacity, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %11, %3
  %8 = phi i64 [ 1, %3 ], [ %23, %11 ]
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %10 = icmp ult i32 %9, %4
  br i1 %10, label %26, label %49

11:                                               ; preds = %11, %3
  %12 = phi i32 [ %24, %11 ], [ %5, %3 ]
  %13 = phi i64 [ %23, %11 ], [ 1, %3 ]
  %14 = getelementptr i32, ptr %1, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, ptrtoint (ptr @freq_factor to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %15
  %22 = zext i32 %21 to i64
  %23 = tail call i64 @llvm.umax.i64(i64 %13, i64 %22)
  %24 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #14
  %25 = icmp ult i32 %24, %4
  br i1 %25, label %11, label %7

26:                                               ; preds = %47, %7
  %27 = phi ptr [ %48, %47 ], [ %1, %7 ]
  %28 = phi i32 [ %44, %47 ], [ %9, %7 ]
  %29 = getelementptr i32, ptr %27, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, ptrtoint (ptr @freq_factor to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %30
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 10
  %39 = tail call i64 @div64_u64(i64 noundef %38, i64 noundef %8) #13
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr %31, align 4
  %42 = add i32 %41, ptrtoint (ptr @cpu_scale to i32)
  %43 = inttoptr i32 %42 to ptr
  store i32 %40, ptr %43, align 4
  %44 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #14
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load ptr, ptr @raw_capacity, align 4
  br label %26

49:                                               ; preds = %26, %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @topology_parse_cpu_capacity(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !15
  %4 = load i1, ptr @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %7 = icmp sgt i32 %6, -1
  %8 = load ptr, ptr @raw_capacity, align 4
  %9 = icmp eq ptr %8, null
  br i1 %7, label %10, label %36

10:                                               ; preds = %5
  br i1 %9, label %11, label %23

11:                                               ; preds = %10
  %12 = load i32, ptr @__cpu_possible_mask, align 4
  %13 = and i32 %12, 65535
  %14 = call i32 @__sw_hweight32(i32 noundef %13) #13
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #13
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %17, label %18, !prof !14

17:                                               ; preds = %11
  store ptr null, ptr @raw_capacity, align 4
  br label %22

18:                                               ; preds = %11
  %19 = extractvalue { i32, i1 } %15, 0
  %20 = call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #16
  store ptr %20, ptr @raw_capacity, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %17
  store i1 true, ptr @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  br label %43

23:                                               ; preds = %18, %10
  %24 = phi ptr [ %20, %18 ], [ %8, %10 ]
  %25 = load i32, ptr %3, align 4
  %26 = getelementptr i32, ptr %24, i32 %1
  store i32 %25, ptr %26, align 4
  %27 = call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #13
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = call i32 @clk_get_rate(ptr noundef %27) #13
  %31 = udiv i32 %30, 1000
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @freq_factor to i32)
  %35 = inttoptr i32 %34 to ptr
  store i32 %31, ptr %35, align 4
  call void @clk_put(ptr noundef %27) #13
  br label %43

36:                                               ; preds = %5
  br i1 %9, label %41, label %37

37:                                               ; preds = %36
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #15
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  %40 = load ptr, ptr @raw_capacity, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi ptr [ %40, %37 ], [ null, %36 ]
  store i1 true, ptr @topology_parse_cpu_capacity.cap_parsing_failed, align 1
  call void @kfree(ptr noundef %42) #13
  store ptr null, ptr @raw_capacity, align 4
  br label %43

43:                                               ; preds = %41, %29, %23, %22, %2
  %44 = phi i1 [ false, %22 ], [ false, %2 ], [ true, %23 ], [ true, %29 ], [ false, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i1 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @register_cpufreq_notifier() #6 section ".init.text" {
  %1 = load ptr, ptr @raw_capacity, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %4, ptr @cpus_to_visit.0, align 4
  %5 = tail call i32 @cpufreq_register_notifier(ptr noundef nonnull @init_cpu_capacity_notifier, i32 noundef 1) #13
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ -22, %0 ], [ %5, %3 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @cpu_coregroup_mask(i32 noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr @__cpu_online_mask, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %3, 65535
  %7 = and i32 %6, %5
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr %2, ptr @__cpu_online_mask
  %10 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %9, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, 65535
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr %14, ptr %9
  br label %22

22:                                               ; preds = %13, %1
  %23 = phi ptr [ %9, %1 ], [ %21, %13 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @cpu_clustergroup_mask(i32 noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 7
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_siblings_masks(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %48

5:                                                ; preds = %1
  %6 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 4
  %7 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 8
  %8 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 3
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 2
  %10 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 7
  %11 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 6
  %12 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 1
  %13 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 5
  br label %14

14:                                               ; preds = %44, %5
  %15 = phi i32 [ %2, %5 ], [ %45, %44 ]
  %16 = load i32, ptr %6, align 4
  %17 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef %15, ptr noundef %7) #13
  %21 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 8
  tail call void @_set_bit(i32 noundef %0, ptr noundef %21) #13
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, ptr %8, align 4
  %24 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %28, %30
  %32 = icmp eq i32 %28, -1
  %33 = or i1 %32, %31
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef %15, ptr noundef %10) #13
  %35 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 7
  tail call void @_set_bit(i32 noundef %0, ptr noundef %35) #13
  br label %36

36:                                               ; preds = %34, %27
  %37 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 6
  tail call void @_set_bit(i32 noundef %0, ptr noundef %37) #13
  tail call void @_set_bit(i32 noundef %15, ptr noundef %11) #13
  %38 = load i32, ptr %12, align 4
  %39 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %15, i32 5
  tail call void @_set_bit(i32 noundef %0, ptr noundef %43) #13
  tail call void @_set_bit(i32 noundef %15, ptr noundef %13) #13
  br label %44

44:                                               ; preds = %42, %36, %22
  %45 = tail call i32 @cpumask_next(i32 noundef %15, ptr noundef nonnull @__cpu_online_mask) #14
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %14, label %48

48:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @reset_cpu_topology() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %7, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %6, i8 -1, i64 20, i1 false)
  tail call fastcc void @clear_cpu_topology(i32 noundef %5)
  %7 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #14
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %4, label %10

10:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clear_cpu_topology(i32 noundef %0) unnamed_addr #0 {
  %2 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 8
  store i32 0, ptr %2, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %2) #13
  %3 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 7
  store i32 0, ptr %3, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %3) #13
  %4 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 6
  store i32 0, ptr %4, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %4) #13
  %5 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 5
  store i32 0, ptr %5, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @remove_cpu_topology(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 6
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %2) #14
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %4, %1 ], [ %15, %11 ]
  %8 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 5
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %8) #14
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %22, label %17

11:                                               ; preds = %11, %1
  %12 = phi i32 [ %14, %11 ], [ %3, %1 ]
  %13 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %12, i32 6
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %13) #13
  %14 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef %2) #14
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %11, label %6

17:                                               ; preds = %22, %6
  %18 = phi i32 [ %7, %6 ], [ %26, %22 ]
  %19 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 7
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %19) #14
  %21 = icmp ult i32 %20, %18
  br i1 %21, label %33, label %28

22:                                               ; preds = %22, %6
  %23 = phi i32 [ %25, %22 ], [ %9, %6 ]
  %24 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %23, i32 5
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %24) #13
  %25 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef %8) #14
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %22, label %17

28:                                               ; preds = %33, %17
  %29 = phi i32 [ %18, %17 ], [ %37, %33 ]
  %30 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 8
  %31 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %30) #14
  %32 = icmp ult i32 %31, %29
  br i1 %32, label %39, label %45

33:                                               ; preds = %33, %17
  %34 = phi i32 [ %36, %33 ], [ %20, %17 ]
  %35 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %34, i32 7
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %35) #13
  %36 = tail call i32 @cpumask_next(i32 noundef %34, ptr noundef %19) #14
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %33, label %28

39:                                               ; preds = %39, %28
  %40 = phi i32 [ %42, %39 ], [ %31, %28 ]
  %41 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %40, i32 8
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %41) #13
  %42 = tail call i32 @cpumask_next(i32 noundef %40, ptr noundef %30) #14
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %39, label %45

45:                                               ; preds = %39, %28
  store i32 0, ptr %30, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %30) #13
  store i32 0, ptr %19, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %19) #13
  store i32 0, ptr %2, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %2) #13
  store i32 0, ptr %8, align 4
  tail call void @_set_bit(i32 noundef %0, ptr noundef %8) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local i32 @parse_acpi_topology() local_unnamed_addr #6 section ".init.text" {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_capacity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpu_scale to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %10) #13
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @init_cpu_capacity_callback(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = load ptr, ptr @raw_capacity, align 4
  %5 = icmp ne ptr %4, null
  %6 = icmp eq i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %43

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 1
  %10 = load i32, ptr @cpus_to_visit.0, align 4
  %11 = load i32, ptr %9, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, 65535
  %14 = and i32 %13, %12
  store i32 %14, ptr @cpus_to_visit.0, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %9) #14
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 6
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %15, %18 ], [ %28, %20 ]
  %22 = load i32, ptr %19, align 4
  %23 = udiv i32 %22, 1000
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, ptrtoint (ptr @freq_factor to i32)
  %27 = inttoptr i32 %26 to ptr
  store i32 %23, ptr %27, align 4
  %28 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef %9) #14
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %20, label %31

31:                                               ; preds = %20
  %32 = load i32, ptr @cpus_to_visit.0, align 4
  br label %33

33:                                               ; preds = %31, %8
  %34 = phi i32 [ %32, %31 ], [ %14, %8 ]
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  tail call void @topology_normalize_cpu_scale()
  %38 = load ptr, ptr @system_wq, align 4
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef nonnull @update_topology_flags_work) #13
  %40 = load ptr, ptr @raw_capacity, align 4
  tail call void @kfree(ptr noundef %40) #13
  store ptr null, ptr @raw_capacity, align 4
  %41 = load ptr, ptr @system_wq, align 4
  %42 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef nonnull @parsing_done_work) #13
  br label %43

43:                                               ; preds = %37, %33, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update_topology_flags_workfn(ptr nocapture noundef readnone %0) #0 {
  store i1 true, ptr @update_topology, align 4
  tail call void @partition_sched_domains(i32 noundef 1, ptr noundef null, ptr noundef null) #13
  store i1 false, ptr @update_topology, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @partition_sched_domains(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parsing_done_workfn(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @cpufreq_unregister_notifier(ptr noundef nonnull @init_cpu_capacity_notifier, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2149512854}
!10 = !{i64 2153411091}
!11 = !{i64 2149513071}
!12 = !{i8 0, i8 2}
!13 = !{i64 434496}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
