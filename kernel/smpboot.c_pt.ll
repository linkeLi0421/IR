; ModuleID = '/llk/IR/kernel/smpboot.c_pt.bc'
source_filename = "../kernel/smpboot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smpboot_register_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22smpboot_register_percpu_thread\22\09\09\09\09\09"
module asm "__kstrtabns_smpboot_register_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smpboot_unregister_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22smpboot_unregister_percpu_thread\22\09\09\09\09\09"
module asm "__kstrtabns_smpboot_unregister_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smpboot_thread_data = type { i32, i32, ptr }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.23, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.23 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@idle_threads = internal global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@smpboot_threads_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smpboot_threads_lock, i64 12), ptr getelementptr (i8, ptr @smpboot_threads_lock, i64 12) } }, align 4
@hotplug_threads = internal global %struct.list_head { ptr @hotplug_threads, ptr @hotplug_threads }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_smpboot_register_percpu_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_smpboot_register_percpu_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_smpboot_register_percpu_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smpboot_register_percpu_thread to i32), ptr @__kstrtab_smpboot_register_percpu_thread, ptr @__kstrtabns_smpboot_register_percpu_thread }, section "___ksymtab_gpl+smpboot_register_percpu_thread", align 4
@__kstrtab_smpboot_unregister_percpu_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_smpboot_unregister_percpu_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_smpboot_unregister_percpu_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smpboot_unregister_percpu_thread to i32), ptr @__kstrtab_smpboot_unregister_percpu_thread, ptr @__kstrtabns_smpboot_unregister_percpu_thread }, section "___ksymtab_gpl+smpboot_unregister_percpu_thread", align 4
@cpu_hotplug_state = internal global %struct.atomic_t { i32 9 }, section ".data..percpu", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [38 x i8] c"\013SMP: fork_idle() failed for CPU %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"kernel/smpboot.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_smpboot_register_percpu_thread, ptr @__ksymtab_smpboot_unregister_percpu_thread], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @idle_thread_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @idle_threads to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr inttoptr (i32 -12 to ptr), ptr %6
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @idle_thread_set_boot_cpu() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @idle_threads to i32)
  %7 = inttoptr i32 %6 to ptr
  store ptr %1, ptr %7, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @idle_threads_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %26, %0
  %8 = phi i32 [ %27, %26 ], [ %4, %0 ]
  %9 = icmp eq i32 %8, %3
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @idle_threads to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = tail call ptr @fork_idle(i32 noundef %8) #11
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %8) #13
  br label %26

22:                                               ; preds = %17
  %23 = load i32, ptr %11, align 4
  %24 = add i32 %23, ptrtoint (ptr @idle_threads to i32)
  %25 = inttoptr i32 %24 to ptr
  store ptr %18, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %20, %10, %7
  %27 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #12
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %7, label %30

30:                                               ; preds = %26, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpboot_create_threads(i32 noundef %0) local_unnamed_addr #4 {
  tail call void @mutex_lock(ptr noundef nonnull @smpboot_threads_lock) #11
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @hotplug_threads, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @hotplug_threads
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = tail call fastcc i32 @__smpboot_create_thread(ptr noundef %7, i32 noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %2, label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %8, %6 ], [ 0, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #11
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__smpboot_create_thread(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 12) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  store i32 %1, ptr %13, align 8
  %16 = getelementptr inbounds %struct.smpboot_thread_data, ptr %13, i32 0, i32 2
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @kthread_create_on_cpu(ptr noundef nonnull @smpboot_thread_fn, ptr noundef nonnull %13, i32 noundef %1, ptr noundef %18) #11
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %13) #11
  %22 = ptrtoint ptr %19 to i32
  br label %50

23:                                               ; preds = %15
  tail call void @kthread_set_per_cpu(ptr noundef %19, i32 noundef %1) #11
  %24 = tail call i32 @kthread_park(ptr noundef %19) #11
  %25 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #11, !srcloc !8
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #11, !srcloc !9
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %23
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !11

33:                                               ; preds = %29, %23
  %34 = phi i32 [ 2, %23 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #11
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr %0, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %38, %37
  %40 = inttoptr i32 %39 to ptr
  store ptr %19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = tail call i32 @wait_task_inactive(ptr noundef %19, i32 noundef 64) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 9, ptr noundef null) #11
  br label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr %41, align 4
  tail call void %49(i32 noundef %1) #11
  br label %50

50:                                               ; preds = %48, %47, %35, %21, %11, %2
  %51 = phi i32 [ %22, %21 ], [ 0, %2 ], [ -12, %11 ], [ 0, %47 ], [ 0, %48 ], [ 0, %35 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpboot_unpark_threads(i32 noundef %0) local_unnamed_addr #4 {
  tail call void @mutex_lock(ptr noundef nonnull @smpboot_threads_lock) #11
  %2 = load ptr, ptr @hotplug_threads, align 4
  %3 = icmp eq ptr %2, @hotplug_threads
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %6

6:                                                ; preds = %19, %4
  %7 = phi ptr [ %2, %4 ], [ %20, %19 ]
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = load i8, ptr %8, align 4, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 -4
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = add i32 %13, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %17, align 4
  tail call void @kthread_unpark(ptr noundef %18) #11
  br label %19

19:                                               ; preds = %11, %6
  %20 = load ptr, ptr %7, align 4
  %21 = icmp eq ptr %20, @hotplug_threads
  br i1 %21, label %22, label %6

22:                                               ; preds = %19, %1
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpboot_park_threads(i32 noundef %0) local_unnamed_addr #4 {
  tail call void @mutex_lock(ptr noundef nonnull @smpboot_threads_lock) #11
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hotplug_threads, i32 0, i32 1), align 4
  %3 = icmp eq ptr %2, @hotplug_threads
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %6

6:                                                ; preds = %22, %4
  %7 = phi ptr [ %2, %4 ], [ %24, %22 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, %10
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %7, i32 36
  %18 = load i8, ptr %17, align 4, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @kthread_park(ptr noundef nonnull %14) #11
  br label %22

22:                                               ; preds = %20, %16, %6
  %23 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @hotplug_threads
  br i1 %25, label %26, label %6

26:                                               ; preds = %22, %1
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpboot_register_percpu_thread(ptr noundef %0) #4 {
  tail call void @cpus_read_lock() #11
  tail call void @mutex_lock(ptr noundef nonnull @smpboot_threads_lock) #11
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 9
  br label %7

7:                                                ; preds = %23, %5
  %8 = phi i32 [ %2, %5 ], [ %24, %23 ]
  %9 = tail call fastcc i32 @__smpboot_create_thread(ptr noundef %0, i32 noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @smpboot_destroy_threads(ptr noundef %0)
  br label %32

12:                                               ; preds = %7
  %13 = load i8, ptr %6, align 4, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %17, %19
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %21, align 4
  tail call void @kthread_unpark(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %15, %12
  %24 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_online_mask) #12
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %7, label %27

27:                                               ; preds = %23, %1
  %28 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr @hotplug_threads, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 4
  %31 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 1, i32 1
  store ptr @hotplug_threads, ptr %31, align 4
  store volatile ptr %28, ptr @hotplug_threads, align 4
  br label %32

32:                                               ; preds = %27, %11
  %33 = phi i32 [ %9, %11 ], [ 0, %27 ]
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #11
  tail call void @cpus_read_unlock() #11
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smpboot_destroy_threads(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %37

5:                                                ; preds = %33, %1
  %6 = phi i32 [ %34, %33 ], [ %3, %1 ]
  %7 = phi i32 [ %35, %33 ], [ %2, %1 ]
  %8 = load ptr, ptr %0, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %5
  %17 = tail call i32 @kthread_stop(ptr noundef nonnull %14) #11
  %18 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #11, !srcloc !14
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #11
  br label %26

25:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void @__put_task_struct(ptr noundef nonnull %14) #11
  br label %26

26:                                               ; preds = %25, %24, %22
  %27 = load ptr, ptr %0, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = load i32, ptr %10, align 4
  %30 = add i32 %29, %28
  %31 = inttoptr i32 %30 to ptr
  store ptr null, ptr %31, align 4
  %32 = load i32, ptr @nr_cpu_ids, align 4
  br label %33

33:                                               ; preds = %26, %5
  %34 = phi i32 [ %32, %26 ], [ %6, %5 ]
  %35 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #12
  %36 = icmp ult i32 %35, %34
  br i1 %36, label %5, label %37

37:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smpboot_unregister_percpu_thread(ptr nocapture noundef %0) #4 {
  tail call void @cpus_read_lock() #11
  tail call void @mutex_lock(ptr noundef nonnull @smpboot_threads_lock) #11
  %2 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call fastcc void @smpboot_destroy_threads(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #11
  tail call void @cpus_read_unlock() #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cpu_report_state(i32 noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_hotplug_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_check_up_prepare(i32 noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_hotplug_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 9, label %7
    i32 8, label %10
    i32 11, label %8
  ]

7:                                                ; preds = %1
  store volatile i32 3, ptr %5, align 4
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8, %7, %1
  %11 = phi i32 [ -5, %9 ], [ -11, %8 ], [ 0, %7 ], [ -16, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_set_state_online(i32 noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_hotplug_state to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !8
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 2, ptr %5) #11, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cpu_wait_death(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @cpu_hotplug_state to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #11
  %11 = load i32, ptr %3, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpu_hotplug_state to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %33, label %16

16:                                               ; preds = %9
  %17 = mul i32 %1, 100
  br label %18

18:                                               ; preds = %24, %16
  %19 = phi i32 [ %22, %24 ], [ %17, %16 ]
  %20 = phi i32 [ %27, %24 ], [ 1, %16 ]
  %21 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %20) #11
  %22 = sub i32 %19, %20
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = mul i32 %20, 11
  %26 = add i32 %25, 9
  %27 = sdiv i32 %26, 10
  %28 = load i32, ptr %3, align 4
  %29 = add i32 %28, ptrtoint (ptr @cpu_hotplug_state to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %18

33:                                               ; preds = %24, %18, %9, %2
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, ptr %3, align 4
  %36 = add i32 %35, ptrtoint (ptr @cpu_hotplug_state to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, ptr %3, align 4
  %42 = add i32 %41, ptrtoint (ptr @cpu_hotplug_state to i32)
  %43 = inttoptr i32 %42 to ptr
  store volatile i32 9, ptr %43, align 4
  br label %52

44:                                               ; preds = %34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #11, !srcloc !8
  br label %45

45:                                               ; preds = %45, %44
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 %38, i32 11, ptr elementtype(i32) %37) #11, !srcloc !19
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45
  %50 = extractvalue { i32, i32 } %46, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %51 = icmp eq i32 %50, %38
  br i1 %51, label %52, label %34

52:                                               ; preds = %49, %40
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cpu_report_death() local_unnamed_addr #4 {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, ptrtoint (ptr @cpu_hotplug_state to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 11
  %11 = select i1 %10, i32 8, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #11, !srcloc !8
  br label %12

12:                                               ; preds = %12, %5
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %9, i32 %11, ptr elementtype(i32) %8) #11, !srcloc !19
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %19, label %5

19:                                               ; preds = %16
  %20 = xor i1 %10, true
  ret i1 %20
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fork_idle(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_cpu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smpboot_thread_fn(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.smpboot_thread_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %6 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.smpboot_thread_data, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 8
  %11 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 5
  %12 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 7
  br label %33

15:                                               ; preds = %48, %1
  store volatile i32 0, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %16 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.smpboot_thread_data, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 4
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp ne i32 %30, 0
  tail call void %17(i32 noundef %24, i1 noundef zeroext %31) #11
  br label %32

32:                                               ; preds = %23, %19, %15
  tail call void @kfree(ptr noundef %0) #11
  ret i32 0

33:                                               ; preds = %48, %7
  %34 = tail call zeroext i1 @kthread_should_park() #11
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  store volatile i32 0, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %36 = load ptr, ptr %14, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %9, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, ptr %0, align 4
  %43 = load i32, ptr %8, align 8
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %46, label %45, !prof !11

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/smpboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #11, !srcloc !26
  unreachable

46:                                               ; preds = %41
  tail call void %36(i32 noundef %42) #11
  store i32 2, ptr %9, align 4
  br label %47

47:                                               ; preds = %46, %38, %35
  tail call void @kthread_parkme() #11
  br label %48

48:                                               ; preds = %74, %73, %68, %62, %47
  store volatile i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %49 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %49, label %15, label %33

50:                                               ; preds = %33
  %51 = load i32, ptr %0, align 4
  %52 = load i32, ptr %8, align 8
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %55, label %54, !prof !11

54:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/smpboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 137, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

55:                                               ; preds = %50
  %56 = load i32, ptr %9, align 4
  switch i32 %56, label %69 [
    i32 0, label %57
    i32 2, label %63
  ]

57:                                               ; preds = %55
  store volatile i32 0, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %58 = load ptr, ptr %11, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %0, align 4
  tail call void %58(i32 noundef %61) #11
  br label %62

62:                                               ; preds = %60, %57
  store i32 1, ptr %9, align 4
  br label %48

63:                                               ; preds = %55
  store volatile i32 0, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %64 = load ptr, ptr %10, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %0, align 4
  tail call void %64(i32 noundef %67) #11
  br label %68

68:                                               ; preds = %66, %63
  store i32 1, ptr %9, align 4
  br label %48

69:                                               ; preds = %55
  %70 = load ptr, ptr %12, align 4
  %71 = tail call i32 %70(i32 noundef %51) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  tail call void @schedule() #11
  br label %48

74:                                               ; preds = %69
  store volatile i32 0, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %75 = load ptr, ptr %13, align 4
  %76 = load i32, ptr %0, align 4
  tail call void %75(i32 noundef %76) #11
  br label %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_park() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_parkme() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold nounwind }
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
!8 = !{i64 595130, i64 2148096696, i64 2148096722, i64 2148096769, i64 2148096791, i64 2148096819, i64 2148096839}
!9 = !{i64 2148161416, i64 2148161448, i64 2148161477, i64 2148161511, i64 2148161542, i64 2148161565}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148261638}
!14 = !{i64 2148163773, i64 2148163805, i64 2148163834, i64 2148163868, i64 2148163899, i64 2148163922}
!15 = !{i64 2149305986}
!16 = !{i64 2148448093}
!17 = !{i64 667222, i64 667239, i64 667263, i64 667289, i64 667307}
!18 = !{i64 2148448437}
!19 = !{i64 581193, i64 581217, i64 581238, i64 581255, i64 581272}
!20 = !{i64 2148273584}
!21 = !{i64 2148273384}
!22 = !{i64 2151334761}
!23 = !{i64 2151334829}
!24 = !{i64 2151337434}
!25 = !{i64 2151340039}
!26 = !{i64 2151340537, i64 2151341018, i64 2151340574, i64 2151340630, i64 2151340664, i64 2151340688, i64 2151340729, i64 2151340750, i64 2151340778, i64 2151340812}
!27 = !{i64 2151341758, i64 2151342239, i64 2151341795, i64 2151341851, i64 2151341885, i64 2151341909, i64 2151341950, i64 2151341971, i64 2151341999, i64 2151342033}
!28 = !{i64 2151345086}
!29 = !{i64 2151347691}
!30 = !{i64 2151347739}
!31 = !{i64 2151350344}
