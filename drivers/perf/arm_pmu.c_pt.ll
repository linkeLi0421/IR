; ModuleID = '/llk/IR/drivers/perf/arm_pmu.c_pt.bc'
source_filename = "../drivers/perf/arm_pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pmu_irq_ops = type { ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.66, i64, i64, i64, %union.anon.67, i32, %union.anon.68, %union.anon.69, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.66 = type { i64 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i64 }
%union.anon.69 = type { i64 }
%struct.hw_perf_event = type { %union.anon.70, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.77, i64, i64, i64, i64 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, %struct.local64_t }
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
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@cpu_irq = internal global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [23 x i8] c"drivers/perf/arm_pmu.c\00", align 1
@cpu_irq_ops = internal global ptr null, section ".data..percpu", align 4
@cpu_armpmu = internal global ptr null, section ".data..percpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"\014hw perfevents: unable to set irq affinity (irq=%d, cpu=%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"arm-pmu\00", align 1
@pmuirq_ops = internal constant %struct.pmu_irq_ops { ptr @enable_irq, ptr @disable_irq_nosync, ptr @armpmu_free_pmuirq }, align 4
@has_nmi = internal unnamed_addr global i1 false, align 1
@pmunmi_ops = internal constant %struct.pmu_irq_ops { ptr @enable_nmi, ptr @disable_nmi_nosync, ptr @armpmu_free_pmunmi }, align 4
@percpu_pmuirq_ops = internal constant %struct.pmu_irq_ops { ptr @armpmu_enable_percpu_pmuirq, ptr @disable_percpu_irq, ptr @armpmu_free_percpu_pmuirq }, align 4
@percpu_pmunmi_ops = internal constant %struct.pmu_irq_ops { ptr @armpmu_enable_percpu_pmunmi, ptr @armpmu_disable_percpu_pmunmi, ptr @armpmu_free_percpu_pmunmi }, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"\013hw perfevents: unable to request IRQ%d for ARM PMU counters\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"\016hw perfevents: enabled with %s PMU driver, %d counters available%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", using NMIs\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__initcall__kmod_arm_pmu__236_977_arm_pmu_hp_init4 = internal global ptr @arm_pmu_hp_init, section ".initcall4.init", align 4
@armpmu_dispatch_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"\016hw perfevents: failed to allocate per-cpu PMU data.\0A\00", align 1
@armpmu_common_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @armpmu_common_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@armpmu_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armpmu_common_attrs = internal global [2 x ptr] [ptr @dev_attr_cpus, ptr null], align 4
@dev_attr_cpus = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @cpus_show, ptr null }, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"perf/arm/pmu:starting\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"\013hw perfevents: CPU hotplug notifier for ARM PMU could not be registered: %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_arm_pmu__236_977_arm_pmu_hp_init4], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @armpmu_map_event(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = load i32, ptr %5, align 8
  %9 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pmu, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = trunc i64 %7 to i32
  %16 = and i32 %15, %3
  br label %50

17:                                               ; preds = %4
  switch i32 %8, label %50 [
    i32 0, label %18
    i32 3, label %28
    i32 4, label %47
  ]

18:                                               ; preds = %17
  %19 = icmp ugt i64 %7, 9
  br i1 %19, label %50, label %20

20:                                               ; preds = %18
  %21 = icmp eq ptr %1, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %20
  %23 = trunc i64 %7 to i32
  %24 = getelementptr [10 x i32], ptr %1, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 65535
  %27 = select i1 %26, i32 -2, i32 %25
  br label %50

28:                                               ; preds = %17
  %29 = trunc i64 %7 to i32
  %30 = and i32 %29, 255
  %31 = icmp ugt i32 %30, 6
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = lshr i32 %29, 8
  %34 = and i32 %33, 255
  %35 = icmp ugt i32 %34, 2
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = lshr i32 %29, 16
  %38 = and i32 %37, 255
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = icmp eq ptr %2, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  %43 = getelementptr [7 x [3 x [2 x i32]]], ptr %2, i32 0, i32 %30, i32 %34, i32 %38
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 65535
  %46 = select i1 %45, i32 -2, i32 %44
  br label %50

47:                                               ; preds = %17
  %48 = trunc i64 %7 to i32
  %49 = and i32 %48, %3
  br label %50

50:                                               ; preds = %47, %42, %40, %36, %32, %28, %22, %20, %18, %17, %14
  %51 = phi i32 [ %16, %14 ], [ %49, %47 ], [ -2, %17 ], [ %27, %22 ], [ -22, %18 ], [ -2, %20 ], [ -22, %28 ], [ -22, %32 ], [ -22, %36 ], [ -2, %40 ], [ %46, %42 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @armpmu_event_set_period(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  %6 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %5, ptr elementtype(i64) %5) #12, !srcloc !9
  %7 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 6
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = sub i64 0, %8
  %12 = icmp sgt i64 %6, %11
  br i1 %12, label %15, label %13, !prof !10

13:                                               ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !11
  %14 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %5, ptr %5, i64 %8) #12, !srcloc !12
  store i64 %8, ptr %4, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i64 [ %8, %13 ], [ %6, %1 ]
  %17 = phi i32 [ 1, %13 ], [ 0, %1 ]
  %18 = icmp slt i64 %16, 1
  br i1 %18, label %19, label %22, !prof !13

19:                                               ; preds = %15
  %20 = add i64 %16, %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !11
  %21 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %5, ptr %5, i64 %20) #12, !srcloc !12
  store i64 %8, ptr %4, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i64 [ %20, %19 ], [ %16, %15 ]
  %24 = phi i32 [ 1, %19 ], [ %17, %15 ]
  %25 = and i32 %10, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i64 4294967295, i64 -1
  %28 = lshr i64 %27, 1
  %29 = tail call i64 @llvm.umin.i64(i64 %23, i64 %28)
  %30 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %31 = sub nsw i64 0, %29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #12, !srcloc !11
  %32 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %30, ptr %30, i64 %31) #12, !srcloc !12
  %33 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 11
  %34 = load ptr, ptr %33, align 8
  %35 = and i64 %27, %31
  tail call void %34(ptr noundef %0, i64 noundef %35) #12
  tail call void @perf_event_update_userpage(ptr noundef %0) #12
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_update_userpage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @armpmu_event_update(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 10
  br label %8

8:                                                ; preds = %16, %1
  %9 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %6, ptr elementtype(i64) %6) #12, !srcloc !9
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i64 %10(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !11
  br label %12

12:                                               ; preds = %12, %8
  %13 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %6, ptr %6, i64 %9, i64 %11, ptr elementtype(i64) %6) #12, !srcloc !15
  %14 = extractvalue { i32, i64 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i64 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %8

19:                                               ; preds = %16
  %20 = and i32 %5, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 4294967295, i64 -1
  %23 = sub i64 %11, %9
  %24 = and i64 %23, %22
  %25 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !11
  %26 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %25, ptr %25, i64 %24, ptr elementtype(i64) %25) #12, !srcloc !17
  %27 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #12, !srcloc !11
  %28 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %27, ptr %27, i64 %24, ptr elementtype(i64) %27) #12, !srcloc !18
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @armpmu_free_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @cpu_irq to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, %0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef null) #12
  br label %24

12:                                               ; preds = %9
  %13 = add i32 %4, ptrtoint (ptr @cpu_irq_ops to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pmu_irq_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void %17(i32 noundef %0, i32 noundef %1, ptr noundef nonnull @cpu_armpmu) #12
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, ptrtoint (ptr @cpu_irq to i32)
  %20 = inttoptr i32 %19 to ptr
  store i32 0, ptr %20, align 4
  %21 = load i32, ptr %3, align 4
  %22 = add i32 %21, ptrtoint (ptr @cpu_irq_ops to i32)
  %23 = inttoptr i32 %22 to ptr
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %12, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @armpmu_request_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %93, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @irq_check_status_bit(i32 noundef %0, i32 noundef 131072) #12
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = and i32 %1, 31
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %8
  %10 = lshr i32 %1, 5
  %11 = sub nsw i32 0, %10
  %12 = getelementptr i32, ptr %9, i32 %11
  %13 = tail call i32 @irq_force_affinity(i32 noundef %0, ptr noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr @__cpu_possible_mask, align 4
  %17 = and i32 %16, 65535
  %18 = tail call i32 @__sw_hweight32(i32 noundef %17) #12
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %6
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @cpu_armpmu to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 @request_nmi(i32 noundef %0, ptr noundef nonnull @armpmu_dispatch_irq, i32 noundef 592896, ptr noundef nonnull @.str.2, ptr noundef %24) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %79, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %21, align 4
  %29 = add i32 %28, ptrtoint (ptr @cpu_armpmu to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 @request_threaded_irq(i32 noundef %0, ptr noundef nonnull @armpmu_dispatch_irq, ptr noundef null, i32 noundef 592896, ptr noundef nonnull @.str.2, ptr noundef %30) #12
  br label %75

32:                                               ; preds = %15
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %1) #13
  br label %90

34:                                               ; preds = %4
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %38, label %53

38:                                               ; preds = %38, %34
  %39 = phi i32 [ %49, %38 ], [ %36, %34 ]
  %40 = phi i32 [ %48, %38 ], [ 0, %34 ]
  %41 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, ptrtoint (ptr @cpu_irq to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %0
  %47 = zext i1 %46 to i32
  %48 = add i32 %40, %47
  %49 = tail call i32 @cpumask_next(i32 noundef %39, ptr noundef nonnull @__cpu_possible_mask) #14
  %50 = icmp ult i32 %49, %35
  br i1 %50, label %38, label %51

51:                                               ; preds = %38
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %51, %34
  %54 = tail call i32 @request_percpu_nmi(i32 noundef %0, ptr noundef nonnull @armpmu_dispatch_irq, ptr noundef nonnull @.str.2, ptr noundef nonnull @cpu_armpmu) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @__request_percpu_irq(i32 noundef %0, ptr noundef nonnull @armpmu_dispatch_irq, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @cpu_armpmu) #12
  br label %75

58:                                               ; preds = %66, %51
  %59 = phi i32 [ %67, %66 ], [ %36, %51 ]
  %60 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, ptrtoint (ptr @cpu_irq to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %0
  br i1 %65, label %69, label %66

66:                                               ; preds = %69, %58
  %67 = tail call i32 @cpumask_next(i32 noundef %59, ptr noundef nonnull @__cpu_possible_mask) #14
  %68 = icmp ult i32 %67, %35
  br i1 %68, label %58, label %74

69:                                               ; preds = %58
  %70 = add i32 %61, ptrtoint (ptr @cpu_irq_ops to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %66, label %81

74:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef null) #12
  br label %90

75:                                               ; preds = %56, %27
  %76 = phi ptr [ @percpu_pmuirq_ops, %56 ], [ @pmuirq_ops, %27 ]
  %77 = phi i32 [ %57, %56 ], [ %31, %27 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %90

79:                                               ; preds = %53, %20
  %80 = phi ptr [ @pmunmi_ops, %20 ], [ @percpu_pmunmi_ops, %53 ]
  store i1 true, ptr @has_nmi, align 1
  br label %81

81:                                               ; preds = %79, %75, %69
  %82 = phi ptr [ %76, %75 ], [ %80, %79 ], [ %72, %69 ]
  %83 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, ptrtoint (ptr @cpu_irq to i32)
  %86 = inttoptr i32 %85 to ptr
  store i32 %0, ptr %86, align 4
  %87 = load i32, ptr %83, align 4
  %88 = add i32 %87, ptrtoint (ptr @cpu_irq_ops to i32)
  %89 = inttoptr i32 %88 to ptr
  store ptr %82, ptr %89, align 4
  br label %93

90:                                               ; preds = %75, %74, %32
  %91 = phi i32 [ %77, %75 ], [ %13, %32 ], [ -22, %74 ]
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0) #13
  br label %93

93:                                               ; preds = %90, %81, %2
  %94 = phi i32 [ %91, %90 ], [ 0, %81 ], [ 0, %2 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armpmu_dispatch_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @armpmu_dispatch_irq.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %2
  store i1 true, ptr @armpmu_dispatch_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %17, label %10

10:                                               ; preds = %9
  %11 = tail call i64 @sched_clock() #12
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef nonnull %3) #12
  %15 = tail call i64 @sched_clock() #12
  %16 = sub i64 %15, %11
  tail call void @perf_sample_event_took(i64 noundef %16) #12
  br label %17

17:                                               ; preds = %10, %9
  %18 = phi i32 [ %14, %10 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_nmi(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_percpu_nmi(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @armpmu_alloc() local_unnamed_addr #2 {
  %1 = tail call fastcc ptr @__armpmu_alloc(i32 noundef 3264)
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__armpmu_alloc(i32 noundef %0) unnamed_addr #2 {
  %2 = and i32 %0, 17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4, !prof !10

4:                                                ; preds = %1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 2
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  %10 = or i32 %0, 256
  %11 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %9, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %10, i32 noundef 312) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %8
  %16 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 144, i32 noundef 4, i32 noundef %0) #16
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %13, i32 0, i32 22
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  tail call void @kfree(ptr noundef nonnull %13) #12
  br label %67

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.arm_pmu, ptr %13, i32 0, i32 25
  %23 = getelementptr inbounds i8, ptr %13, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %13, i32 20
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %13, i32 24
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %13, i32 28
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %13, i32 32
  store i32 64, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %13, i32 36
  %29 = getelementptr inbounds i8, ptr %13, i32 60
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  store ptr @armpmu_enable, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %13, i32 64
  store ptr @armpmu_disable, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %13, i32 68
  store ptr @armpmu_event_init, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %13, i32 72
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds i8, ptr %13, i32 76
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %13, i32 80
  store ptr @armpmu_add, ptr %34, align 8
  %35 = getelementptr inbounds i8, ptr %13, i32 84
  store ptr @armpmu_del, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %13, i32 88
  store ptr @armpmu_start, ptr %36, align 8
  %37 = getelementptr inbounds i8, ptr %13, i32 92
  store ptr @armpmu_stop, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %13, i32 96
  store ptr @armpmu_read, ptr %38, align 8
  %39 = getelementptr inbounds i8, ptr %13, i32 100
  %40 = getelementptr inbounds i8, ptr %13, i32 152
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(52) %39, i8 0, i64 52, i1 false)
  store ptr @armpmu_filter_match, ptr %40, align 8
  %41 = getelementptr inbounds i8, ptr %13, i32 156
  store ptr null, ptr %41, align 4
  store ptr @armpmu_common_attr_group, ptr %22, align 4
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %45, label %67

45:                                               ; preds = %21
  %46 = ptrtoint ptr %16 to i32
  %47 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %46
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.pmu_hw_events, ptr %50, i32 0, i32 2
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.pmu_hw_events, ptr %50, i32 0, i32 3
  store ptr %13, ptr %52, align 4
  %53 = tail call i32 @cpumask_next(i32 noundef %43, ptr noundef nonnull @__cpu_possible_mask) #14
  %54 = icmp ult i32 %53, %42
  br i1 %54, label %55, label %67

55:                                               ; preds = %55, %45
  %56 = phi i32 [ %65, %55 ], [ %53, %45 ]
  %57 = load ptr, ptr %17, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.pmu_hw_events, ptr %62, i32 0, i32 2
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pmu_hw_events, ptr %62, i32 0, i32 3
  store ptr %13, ptr %64, align 4
  %65 = tail call i32 @cpumask_next(i32 noundef %56, ptr noundef nonnull @__cpu_possible_mask) #14
  %66 = icmp ult i32 %65, %42
  br i1 %66, label %55, label %67

67:                                               ; preds = %55, %45, %21, %19, %8
  %68 = phi ptr [ null, %8 ], [ null, %19 ], [ %13, %21 ], [ %13, %45 ], [ %13, %55 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @armpmu_alloc_atomic() local_unnamed_addr #2 {
  %1 = tail call fastcc ptr @__armpmu_alloc(i32 noundef 2592)
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @armpmu_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @armpmu_register(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 23
  %3 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 119, ptr noundef %2, i1 noundef zeroext true) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 24
  store ptr @cpu_pm_pmu_notify, ptr %6, align 8
  %7 = tail call i32 @cpu_pm_register_notifier(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 119, ptr noundef %2, i1 noundef zeroext false) #12
  br label %34

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pmu, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 128
  store i32 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @perf_pmu_register(ptr noundef %0, ptr noundef %21, i32 noundef -1) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  %28 = load i1, ptr @has_nmi, align 1
  %29 = select i1 %28, ptr @.str.5, ptr @.str.6
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %25, i32 noundef %27, ptr noundef nonnull %29) #13
  br label %34

31:                                               ; preds = %19
  %32 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %6) #12
  %33 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 119, ptr noundef %2, i1 noundef zeroext false) #12
  br label %34

34:                                               ; preds = %31, %24, %9, %1
  %35 = phi i32 [ %22, %31 ], [ 0, %24 ], [ %7, %9 ], [ %3, %1 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_pmu_hp_init() #2 {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 119, ptr noundef nonnull @.str.9, i1 noundef zeroext false, ptr noundef nonnull @arm_perf_starting_cpu, ptr noundef nonnull @arm_perf_teardown_cpu, i1 noundef zeroext true) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %1) #13
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_sample_event_took(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_check_status_bit(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_free_pmuirq(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = ptrtoint ptr %2 to i32
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call ptr @free_irq(i32 noundef %0, ptr noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_nmi(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_nmi_nosync(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_free_pmunmi(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = ptrtoint ptr %2 to i32
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call ptr @free_nmi(i32 noundef %0, ptr noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_nmi(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_enable_percpu_pmuirq(i32 noundef %0) #2 {
  tail call void @enable_percpu_irq(i32 noundef %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_free_percpu_pmuirq(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %7, label %23

7:                                                ; preds = %7, %3
  %8 = phi i32 [ %18, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %17, %7 ], [ 0, %3 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpu_irq to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  %16 = zext i1 %15 to i32
  %17 = add i32 %9, %16
  %18 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #14
  %19 = icmp ult i32 %18, %4
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = icmp eq i32 %17, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @free_percpu_irq(i32 noundef %0, ptr noundef %2) #12
  br label %23

23:                                               ; preds = %22, %20, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_enable_percpu_pmunmi(i32 noundef %0) #2 {
  %2 = tail call i32 @prepare_percpu_nmi(i32 noundef %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @enable_percpu_nmi(i32 noundef %0, i32 noundef 0) #12
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_disable_percpu_pmunmi(i32 noundef %0) #2 {
  tail call void @disable_percpu_nmi(i32 noundef %0) #12
  tail call void @teardown_percpu_nmi(i32 noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_free_percpu_pmunmi(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %7, label %23

7:                                                ; preds = %7, %3
  %8 = phi i32 [ %18, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %17, %7 ], [ 0, %3 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpu_irq to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  %16 = zext i1 %15 to i32
  %17 = add i32 %9, %16
  %18 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #14
  %19 = icmp ult i32 %18, %4
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = icmp eq i32 %17, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @free_percpu_nmi(i32 noundef %0, ptr noundef %2) #12
  br label %23

23:                                               ; preds = %22, %20, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_percpu_nmi(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_nmi(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_nmi(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @teardown_percpu_nmi(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_nmi(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_enable(ptr noundef %0) #2 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #8, !srcloc !19
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %4, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.pmu_hw_events, ptr %11, i32 0, i32 1
  %13 = tail call i32 @__bitmap_weight(ptr noundef %12, i32 noundef %6) #12
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %18 = lshr i32 %16, 5
  %19 = getelementptr i32, ptr %17, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %16, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i32 %13, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %0) #12
  br label %30

30:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @llvm.thread.pointer() #12
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 1
  %6 = lshr i32 %4, 5
  %7 = getelementptr i32, ptr %5, i32 %6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %4, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef %0) #12
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armpmu_event_init(ptr noundef %0) #2 {
  %2 = alloca %struct.pmu_hw_events, align 4
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 34
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 1
  %10 = lshr i32 %6, 5
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %6, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %158, label %17

17:                                               ; preds = %8, %1
  %18 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 4
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 2048
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %158

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 %24(ptr noundef %0) #12
  %26 = icmp eq i32 %25, -2
  br i1 %26, label %158, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  %30 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.arm_pmu, ptr %28, i32 0, i32 15
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 %32(ptr noundef %0) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %158, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  store i32 -1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  store i32 0, ptr %37, align 8
  store i64 0, ptr %29, align 8
  %38 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 3
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.arm_pmu, ptr %28, i32 0, i32 9
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21
  %44 = tail call i32 %40(ptr noundef %29, ptr noundef %43) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %158

46:                                               ; preds = %42
  %47 = load i32, ptr %37, align 8
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i32 [ %47, %46 ], [ 0, %35 ]
  %50 = or i32 %49, %33
  store i32 %50, ptr %37, align 8
  %51 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 3
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i32, ptr %30, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 2147483647, i64 9223372036854775807
  %59 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 6
  store i64 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7
  store i64 %58, ptr %60, align 8
  %61 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #12, !srcloc !11
  %62 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %61, ptr %61, i64 %58) #12, !srcloc !12
  br label %63

63:                                               ; preds = %54, %48
  %64 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 11
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %158, label %67

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %2, i8 0, i64 144, i1 false) #12
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 12
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, %68
  br i1 %76, label %77, label %156

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 14
  %79 = load i32, ptr %78, align 8
  %80 = icmp slt i32 %79, -1
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = icmp eq i32 %79, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 21, i32 6
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 4096
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83, %81
  %89 = getelementptr inbounds %struct.arm_pmu, ptr %68, i32 0, i32 7
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 %90(ptr noundef nonnull %2, ptr noundef %65) #12
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %156, label %93

93:                                               ; preds = %88, %83, %77, %67
  %94 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %65
  br i1 %96, label %97, label %134

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 1
  br label %99

99:                                               ; preds = %131, %97
  %100 = phi ptr [ %98, %97 ], [ %101, %131 ]
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, %98
  br i1 %102, label %134, label %103

103:                                              ; preds = %99
  %104 = getelementptr i8, ptr %101, i32 -8
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr i8, ptr %101, i32 68
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = getelementptr i8, ptr %101, i32 80
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, %105
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %101, i32 88
  %116 = load i32, ptr %115, align 8
  %117 = icmp slt i32 %116, -1
  br i1 %117, label %131, label %118

118:                                              ; preds = %114
  %119 = icmp eq i32 %116, -1
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = getelementptr i8, ptr %101, i32 176
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 4096
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120, %118
  %126 = getelementptr inbounds %struct.arm_pmu, ptr %105, i32 0, i32 7
  %127 = load ptr, ptr %126, align 8
  %128 = call i32 %127(ptr noundef nonnull %2, ptr noundef %104) #12
  %129 = xor i32 %128, -1
  %130 = lshr i32 %129, 31
  br label %131

131:                                              ; preds = %125, %120, %114, %103
  %132 = phi i32 [ %130, %125 ], [ 1, %103 ], [ 1, %114 ], [ 1, %120 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %156, label %99

134:                                              ; preds = %99, %93
  %135 = load ptr, ptr %3, align 8
  %136 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 9
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 14
  %142 = load i32, ptr %141, align 8
  %143 = icmp slt i32 %142, -1
  br i1 %143, label %157, label %144

144:                                              ; preds = %140
  %145 = icmp eq i32 %142, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 6
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 4096
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146, %144
  %152 = getelementptr inbounds %struct.arm_pmu, ptr %135, i32 0, i32 7
  %153 = load ptr, ptr %152, align 8
  %154 = call i32 %153(ptr noundef nonnull %2, ptr noundef %0) #12
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151, %131, %110, %88, %73
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #12
  br label %158

157:                                              ; preds = %151, %146, %140, %134
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #12
  br label %158

158:                                              ; preds = %157, %156, %63, %42, %27, %22, %17, %8
  %159 = phi i32 [ -2, %8 ], [ -95, %17 ], [ -2, %22 ], [ %33, %27 ], [ -95, %42 ], [ -22, %156 ], [ 0, %157 ], [ 0, %63 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armpmu_add(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #8, !srcloc !19
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 1
  %17 = lshr i32 %15, 5
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %15, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 %26(ptr noundef %12, ptr noundef %0) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  store i32 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0) #12
  %33 = getelementptr [32 x ptr], ptr %12, i32 0, i32 %27
  store ptr %0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  store i32 3, ptr %34, align 4
  %35 = and i32 %1, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void @armpmu_start(ptr noundef %0, i32 noundef 2)
  br label %38

38:                                               ; preds = %37, %29
  tail call void @perf_event_update_userpage(ptr noundef %0) #12
  br label %39

39:                                               ; preds = %38, %24, %2
  %40 = phi i32 [ 0, %38 ], [ -2, %2 ], [ %27, %24 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_del(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #8, !srcloc !19
  %10 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0) #12
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %23 = getelementptr inbounds %struct.arm_pmu, ptr %19, i32 0, i32 10
  br label %24

24:                                               ; preds = %32, %16
  %25 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %22, ptr elementtype(i64) %22) #12, !srcloc !9
  %26 = load ptr, ptr %23, align 4
  %27 = tail call i64 %26(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #12, !srcloc !11
  br label %28

28:                                               ; preds = %28, %24
  %29 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %22, ptr %22, i64 %25, i64 %27, ptr elementtype(i64) %22) #12, !srcloc !15
  %30 = extractvalue { i32, i64 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28
  %33 = extractvalue { i32, i64 } %29, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %24

35:                                               ; preds = %32
  %36 = and i32 %21, 1
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i64 4294967295, i64 -1
  %39 = sub i64 %27, %25
  %40 = and i64 %39, %38
  %41 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #12, !srcloc !11
  %42 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %41, ptr %41, i64 %40, ptr elementtype(i64) %41) #12, !srcloc !17
  %43 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #12, !srcloc !11
  %44 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %43, ptr %43, i64 %40, ptr elementtype(i64) %43) #12, !srcloc !18
  %45 = load i32, ptr %12, align 4
  %46 = or i32 %45, 3
  store i32 %46, ptr %12, align 4
  br label %47

47:                                               ; preds = %35, %2
  %48 = ptrtoint ptr %6 to i32
  %49 = add i32 %9, %48
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr [32 x ptr], ptr %50, i32 0, i32 %11
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %50, ptr noundef %0) #12
  tail call void @perf_event_update_userpage(ptr noundef %0) #12
  store i32 -1, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_start(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = and i32 %1, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @armpmu_start.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17, !prof !13

15:                                               ; preds = %7
  store i1 true, ptr @armpmu_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #12
  %16 = load ptr, ptr %3, align 8
  br label %17

17:                                               ; preds = %15, %7, %2
  %18 = phi ptr [ %4, %7 ], [ %16, %15 ], [ %4, %2 ]
  %19 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7
  %21 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  %22 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %21, ptr elementtype(i64) %21) #12, !srcloc !9
  %23 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 6
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = sub i64 0, %24
  %28 = icmp sgt i64 %22, %27
  br i1 %28, label %31, label %29, !prof !10

29:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #12, !srcloc !11
  %30 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %21, ptr %21, i64 %24) #12, !srcloc !12
  store i64 %24, ptr %20, align 8
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi i64 [ %24, %29 ], [ %22, %17 ]
  %33 = icmp slt i64 %32, 1
  br i1 %33, label %34, label %37, !prof !13

34:                                               ; preds = %31
  %35 = add i64 %32, %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #12, !srcloc !11
  %36 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %21, ptr %21, i64 %35) #12, !srcloc !12
  store i64 %24, ptr %20, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i64 [ %35, %34 ], [ %32, %31 ]
  %39 = and i32 %26, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i64 4294967295, i64 -1
  %42 = lshr i64 %41, 1
  %43 = tail call i64 @llvm.umin.i64(i64 %38, i64 %42) #12
  %44 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %45 = sub nsw i64 0, %43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #12, !srcloc !11
  %46 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %44, ptr %44, i64 %45) #12, !srcloc !12
  %47 = getelementptr inbounds %struct.arm_pmu, ptr %18, i32 0, i32 11
  %48 = load ptr, ptr %47, align 8
  %49 = and i64 %41, %45
  tail call void %48(ptr noundef %0, i64 noundef %49) #12
  tail call void @perf_event_update_userpage(ptr noundef %0) #12
  %50 = getelementptr inbounds %struct.arm_pmu, ptr %4, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_stop(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #12
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %16 = getelementptr inbounds %struct.arm_pmu, ptr %12, i32 0, i32 10
  br label %17

17:                                               ; preds = %25, %7
  %18 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %15, ptr elementtype(i64) %15) #12, !srcloc !9
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i64 %19(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !11
  br label %21

21:                                               ; preds = %21, %17
  %22 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %15, ptr %15, i64 %18, i64 %20, ptr elementtype(i64) %15) #12, !srcloc !15
  %23 = extractvalue { i32, i64 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i64 } %22, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %17

28:                                               ; preds = %25
  %29 = and i32 %14, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i64 4294967295, i64 -1
  %32 = sub i64 %20, %18
  %33 = and i64 %32, %31
  %34 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #12, !srcloc !11
  %35 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %34, ptr %34, i64 %33, ptr elementtype(i64) %34) #12, !srcloc !17
  %36 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #12, !srcloc !11
  %37 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %36, ptr %36, i64 %33, ptr elementtype(i64) %36) #12, !srcloc !18
  %38 = load i32, ptr %3, align 4
  %39 = or i32 %38, 3
  store i32 %39, ptr %3, align 4
  br label %40

40:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armpmu_read(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 5
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 10
  br label %8

8:                                                ; preds = %16, %1
  %9 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %6, ptr elementtype(i64) %6) #12, !srcloc !9
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i64 %10(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !11
  br label %12

12:                                               ; preds = %12, %8
  %13 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %6, ptr %6, i64 %9, i64 %11, ptr elementtype(i64) %6) #12, !srcloc !15
  %14 = extractvalue { i32, i64 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i64 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %8

19:                                               ; preds = %16
  %20 = and i32 %5, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 4294967295, i64 -1
  %23 = sub i64 %11, %9
  %24 = and i64 %23, %22
  %25 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !11
  %26 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %25, ptr %25, i64 %24, ptr elementtype(i64) %25) #12, !srcloc !17
  %27 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #12, !srcloc !11
  %28 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %27, ptr %27, i64 %24, ptr elementtype(i64) %27) #12, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armpmu_filter_match(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @llvm.thread.pointer() #12
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 1
  %8 = lshr i32 %6, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %6, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0) #12
  br label %21

21:                                               ; preds = %19, %15, %1
  %22 = phi i32 [ %20, %19 ], [ 1, %15 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpus_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 1
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %2, ptr noundef %6, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_pm_pmu_notify(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #8, !srcloc !19
  %8 = getelementptr i8, ptr %0, i32 -40
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = add i32 %7, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.pmu_hw_events, ptr %14, i32 0, i32 1
  %16 = tail call i32 @__bitmap_weight(ptr noundef %15, i32 noundef %9) #12
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr i8, ptr %0, i32 -104
  %21 = lshr i32 %19, 5
  %22 = getelementptr i32, ptr %20, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %19, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %3
  %29 = icmp eq i32 %1, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %0, i32 -52
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(ptr noundef %4) #12
  br label %35

35:                                               ; preds = %34, %30, %28
  %36 = icmp eq i32 %16, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  switch i32 %1, label %44 [
    i32 0, label %38
    i32 2, label %41
    i32 1, label %41
  ]

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %0, i32 -56
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef %4) #12
  tail call fastcc void @cpu_pm_pmu_setup(ptr noundef %4, i32 noundef 0)
  br label %44

41:                                               ; preds = %37, %37
  tail call fastcc void @cpu_pm_pmu_setup(ptr noundef %4, i32 noundef %1)
  %42 = getelementptr i8, ptr %0, i32 -60
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %4) #12
  br label %44

44:                                               ; preds = %41, %38, %37, %35, %3
  %45 = phi i32 [ 0, %3 ], [ 1, %35 ], [ 0, %37 ], [ 1, %41 ], [ 1, %38 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpu_pm_pmu_setup(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #8, !srcloc !19
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.arm_pmu, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %59, %2
  %15 = phi i32 [ %60, %59 ], [ 0, %2 ]
  %16 = getelementptr [32 x ptr], ptr %10, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %14
  switch i32 %1, label %59 [
    i32 0, label %20
    i32 2, label %58
    i32 1, label %58
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 25, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 12
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.arm_pmu, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef nonnull %17) #12
  %30 = load ptr, ptr %26, align 8
  %31 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 25, i32 0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 25, i32 5
  %34 = getelementptr inbounds %struct.arm_pmu, ptr %30, i32 0, i32 10
  br label %35

35:                                               ; preds = %43, %25
  %36 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %33, ptr elementtype(i64) %33) #12, !srcloc !9
  %37 = load ptr, ptr %34, align 4
  %38 = tail call i64 %37(ptr noundef nonnull %17) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #12, !srcloc !11
  br label %39

39:                                               ; preds = %39, %35
  %40 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %33, ptr %33, i64 %36, i64 %38, ptr elementtype(i64) %33) #12, !srcloc !15
  %41 = extractvalue { i32, i64 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39
  %44 = extractvalue { i32, i64 } %40, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %45 = icmp eq i64 %44, %36
  br i1 %45, label %46, label %35

46:                                               ; preds = %43
  %47 = and i32 %32, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i64 4294967295, i64 -1
  %50 = sub i64 %38, %36
  %51 = and i64 %50, %49
  %52 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #12, !srcloc !11
  %53 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %52, ptr %52, i64 %51, ptr elementtype(i64) %52) #12, !srcloc !17
  %54 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 25, i32 7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #12, !srcloc !11
  %55 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %54, ptr %54, i64 %51, ptr elementtype(i64) %54) #12, !srcloc !18
  %56 = load i32, ptr %21, align 4
  %57 = or i32 %56, 3
  store i32 %57, ptr %21, align 4
  br label %59

58:                                               ; preds = %19, %19
  tail call void @rcu_irq_enter_irqson() #12
  tail call void @armpmu_start(ptr noundef nonnull %17, i32 noundef 2)
  tail call void @rcu_irq_exit_irqson() #12
  br label %59

59:                                               ; preds = %58, %46, %20, %19, %14
  %60 = add nuw nsw i32 %15, 1
  %61 = load i32, ptr %11, align 8
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %14, label %63

63:                                               ; preds = %59, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_perf_starting_cpu(i32 noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -256
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 1
  %7 = lshr i32 %0, 5
  %8 = getelementptr i32, ptr %6, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %0, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef %5) #12
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, ptrtoint (ptr @cpu_armpmu to i32)
  %23 = inttoptr i32 %22 to ptr
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 22
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.pmu_hw_events, ptr %25, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  %28 = load i32, ptr %20, align 4
  %29 = add i32 %28, %27
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %19
  %34 = add i32 %28, ptrtoint (ptr @cpu_irq_ops to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  tail call void %37(i32 noundef %31) #12
  br label %38

38:                                               ; preds = %33, %19, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_perf_teardown_cpu(i32 noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -256
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 1
  %7 = lshr i32 %0, 5
  %8 = getelementptr i32, ptr %6, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %0, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pmu_hw_events, ptr %16, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = add i32 %20, ptrtoint (ptr @cpu_irq_ops to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pmu_irq_ops, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void %30(i32 noundef %23) #12
  %31 = load i32, ptr %19, align 4
  br label %32

32:                                               ; preds = %25, %14
  %33 = phi i32 [ %20, %14 ], [ %31, %25 ]
  %34 = add i32 %33, ptrtoint (ptr @cpu_armpmu to i32)
  %35 = inttoptr i32 %34 to ptr
  store ptr null, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }
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
!9 = !{i64 395772, i64 395793}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 406158, i64 2147896129, i64 2147896155, i64 2147896202, i64 2147896224, i64 2147896252, i64 2147896272}
!12 = !{i64 396017, i64 396037, i64 396065, i64 396095, i64 396111}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148062665}
!15 = !{i64 399387, i64 399413, i64 399441, i64 399459, i64 399477, i64 399499}
!16 = !{i64 2148062867}
!17 = !{i64 2147919573, i64 2147919601, i64 2147919635, i64 2147919669, i64 2147919703, i64 2147919739, i64 2147919762}
!18 = !{i64 2147922059, i64 2147922087, i64 2147922121, i64 2147922155, i64 2147922189, i64 2147922225, i64 2147922248}
!19 = !{i64 320097}
