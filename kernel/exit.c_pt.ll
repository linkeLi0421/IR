; ModuleID = '/llk/IR/kernel/exit.c_pt.bc'
source_filename = "../kernel/exit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcuwait_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22rcuwait_wake_up\22\09\09\09\09\09"
module asm "__kstrtabns_rcuwait_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thread_group_exited:\09\09\09\09\09"
module asm "\09.asciz \09\22thread_group_exited\22\09\09\09\09\09"
module asm "__kstrtabns_thread_group_exited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22abort\22\09\09\09\09\09"
module asm "__kstrtabns_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.115, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.115 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.60 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.60 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.core_thread = type { ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.page = type { i32, %union.anon.4, %union.anon.69, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.wait_opts = type { i32, i32, ptr, ptr, i32, ptr, %struct.wait_queue_entry, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.waitid_info = type { i32, i32, i32, i32 }
%struct.anon.126 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.74 }
%struct.anon.74 = type { i32, i32, i32, i32, i32 }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__kstrtab_rcuwait_wake_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcuwait_wake_up = external dso_local constant [0 x i8], align 1
@__ksymtab_rcuwait_wake_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcuwait_wake_up to i32), ptr @__kstrtab_rcuwait_wake_up, ptr @__kstrtabns_rcuwait_wake_up }, section "___ksymtab_gpl+rcuwait_wake_up", align 4
@.str = private unnamed_addr constant [14 x i8] c"kernel/exit.c\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Attempted to kill init! exitcode=0x%08x\0A\00", align 1
@dirty_throttle_leaks = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Aiee, killing interrupt handler!\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Attempted to kill the idle task!\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\016note: %s[%d] exited with preempt_count %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\011Fixing recursive fault but reboot is needed!\0A\00", align 1
@__kstrtab_thread_group_exited = external dso_local constant [0 x i8], align 1
@__kstrtabns_thread_group_exited = external dso_local constant [0 x i8], align 1
@__ksymtab_thread_group_exited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thread_group_exited to i32), ptr @__kstrtab_thread_group_exited, ptr @__kstrtabns_thread_group_exited }, section "___ksymtab+thread_group_exited", align 4
@__kstrtab_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abort to i32), ptr @__kstrtab_abort, ptr @__kstrtabns_abort }, section "___ksymtab+abort", align 4
@__tracepoint_sched_process_free = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@process_counts = external dso_local global i32, section ".data..percpu", align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_process_exit = external dso_local global %struct.tracepoint, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@__tracepoint_sched_process_wait = external dso_local global %struct.tracepoint, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_abort, ptr @__ksymtab_rcuwait_wake_up, ptr @__ksymtab_thread_group_exited], section "llvm.metadata"

@sys_exit = dso_local alias i32 (i32), ptr @__se_sys_exit
@sys_exit_group = dso_local alias i32 (i32), ptr @__se_sys_exit_group
@sys_waitid = dso_local alias i32 (i32, i32, ptr, i32, ptr), ptr @__se_sys_waitid
@sys_wait4 = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_wait4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_task_struct_rcu_user(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_put_task_struct(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1876
  tail call void @perf_event_delayed_put(ptr noundef %2) #12
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_free, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %17 = tail call i32 @__traceiter_sched_process_free(ptr noundef null, ptr noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr i8, ptr %0, i32 -1332
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !11
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %27, label %25, !prof !12

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #12
  br label %27

26:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @__put_task_struct(ptr noundef %2) #12
  br label %27

27:                                               ; preds = %26, %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_task(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %179, %1
  %3 = phi ptr [ %0, %1 ], [ %158, %179 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 82
  %5 = load volatile ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %8 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %7, i32 noundef 10, i32 noundef 1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  tail call void @cgroup_release(ptr noundef %3) #12
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  %9 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 60
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12, !prof !12

12:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ptrace.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !12

17:                                               ; preds = %13
  tail call void @__ptrace_unlink(ptr noundef %3) #12
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 61
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %23, label %22, !prof !12

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ptrace.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #12, !srcloc !19
  unreachable

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %25 = load ptr, ptr %24, align 64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #12, !srcloc !10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #12, !srcloc !20
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !21

31:                                               ; preds = %27
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !12

35:                                               ; preds = %31, %27
  %36 = phi i32 [ 2, %27 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef %36) #12
  br label %37

37:                                               ; preds = %35, %31, %23
  %38 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 43
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, -1
  %43 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %44 = load volatile ptr, ptr %43, align 4
  tail call void @_raw_spin_lock(ptr noundef %44) #12
  tail call void @posix_cpu_timers_exit(ptr noundef %3) #12
  br i1 %42, label %45, label %48

45:                                               ; preds = %37
  tail call void @posix_cpu_timers_exit_group(ptr noundef %3) #12
  %46 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 25
  %47 = load ptr, ptr %46, align 8
  store ptr null, ptr %46, align 8
  br label %67

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = add nsw i32 %50, -1
  store i32 %53, ptr %49, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 10
  %57 = load ptr, ptr %56, align 8
  %58 = tail call i32 @wake_up_process(ptr noundef %57) #12
  br label %59

59:                                               ; preds = %55, %52, %48
  %60 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 5
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, %3
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 64
  %65 = load volatile ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 -1380
  store ptr %66, ptr %60, align 8
  br label %67

67:                                               ; preds = %63, %59, %45
  %68 = phi ptr [ %47, %45 ], [ null, %63 ], [ null, %59 ]
  %69 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19, i32 5
  tail call void @add_device_randomness(ptr noundef %69, i32 noundef 8) #12
  %70 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 70
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 71
  %73 = load i64, ptr %72, align 16
  %74 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 26
  %75 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 26, i32 1
  tail call void @_raw_spin_lock(ptr noundef %75) #12
  %76 = load i32, ptr %74, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %74, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !22
  %78 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 27
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, %71
  store i64 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 28
  %82 = load i64, ptr %81, align 8
  %83 = add i64 %82, %73
  store i64 %83, ptr %81, align 8
  %84 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 72
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 31
  %87 = load i64, ptr %86, align 8
  %88 = add i64 %87, %85
  store i64 %88, ptr %86, align 8
  %89 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %90 = load i32, ptr %89, align 16
  %91 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 38
  %92 = load i32, ptr %91, align 8
  %93 = add i32 %92, %90
  store i32 %93, ptr %91, align 8
  %94 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 79
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 39
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %95
  store i32 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 74
  %100 = load i32, ptr %99, align 8
  %101 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 34
  %102 = load i32, ptr %101, align 8
  %103 = add i32 %102, %100
  store i32 %103, ptr %101, align 8
  %104 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 35
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %105
  store i32 %108, ptr %106, align 4
  %109 = load i64, ptr %69, align 8
  %110 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 49
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %111, %109
  store i64 %112, ptr %110, align 8
  %113 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = add i32 %114, -1
  store i32 %115, ptr %113, align 8
  %116 = load i32, ptr @nr_threads, align 4
  %117 = add i32 %116, -1
  store i32 %117, ptr @nr_threads, align 4
  tail call void @detach_pid(ptr noundef %3, i32 noundef 0) #12
  br i1 %42, label %118, label %136

118:                                              ; preds = %67
  tail call void @detach_pid(ptr noundef %3, i32 noundef 1) #12
  tail call void @detach_pid(ptr noundef %3, i32 noundef 2) #12
  tail call void @detach_pid(ptr noundef %3, i32 noundef 3) #12
  %119 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 34
  %120 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 34, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %119, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  %124 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 58
  %125 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 58, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %124, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 4
  store volatile ptr %127, ptr %126, align 4
  store volatile ptr %124, ptr %124, align 4
  store ptr %124, ptr %125, align 4
  %129 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %130 = inttoptr i32 %129 to ptr
  %131 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %130) #10, !srcloc !23
  %132 = add i32 %131, ptrtoint (ptr @process_counts to i32)
  %133 = inttoptr i32 %132 to ptr
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, -1
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %118, %67
  %137 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 64
  %138 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 64, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %137, align 4
  %141 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  store ptr %139, ptr %141, align 4
  store volatile ptr %140, ptr %139, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %138, align 4
  %142 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %143 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %142, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %144, ptr %146, align 4
  store volatile ptr %145, ptr %144, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %143, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !24
  %147 = load i32, ptr %74, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %74, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %149 = load i16, ptr %75, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %151 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98
  tail call void @flush_sigqueue(ptr noundef %151) #12
  store ptr null, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %152 = load i16, ptr %44, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  tail call void @__cleanup_sighand(ptr noundef %44) #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #12
  br i1 %42, label %154, label %156

154:                                              ; preds = %136
  %155 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 6
  tail call void @flush_sigqueue(ptr noundef %155) #12
  tail call void @tty_kref_put(ptr noundef %68) #12
  br label %156

156:                                              ; preds = %154, %136
  %157 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 59
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, %3
  br i1 %159, label %200, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 64
  %162 = load volatile ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, %161
  br i1 %163, label %164, label %191

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 41
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 32
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 43
  %170 = load i32, ptr %169, align 4
  %171 = tail call zeroext i1 @do_notify_parent(ptr noundef %158, i32 noundef %170) #12
  br i1 %171, label %172, label %209

172:                                              ; preds = %168
  store i32 16, ptr %165, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  tail call void @seccomp_filter_release(ptr noundef %3) #12
  tail call void @proc_flush_pid(ptr noundef %25) #12
  tail call void @put_pid(ptr noundef %25) #12
  tail call void @release_thread(ptr noundef %3) #12
  %173 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #12, !srcloc !10
  %174 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #12, !srcloc !11
  %175 = extractvalue { i32, i32, i32 } %174, 0
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = icmp sgt i32 %175, 0
  br i1 %178, label %179, label %180, !prof !12

179:                                              ; preds = %181, %180, %177
  br label %2

180:                                              ; preds = %177
  tail call void @refcount_warn_saturate(ptr noundef %173, i32 noundef 3) #12
  br label %179

181:                                              ; preds = %172
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @call_rcu(ptr noundef %173, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %179

182:                                              ; preds = %164
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  tail call void @seccomp_filter_release(ptr noundef %3) #12
  tail call void @proc_flush_pid(ptr noundef %25) #12
  tail call void @put_pid(ptr noundef %25) #12
  tail call void @release_thread(ptr noundef %3) #12
  %183 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %183) #12, !srcloc !10
  %184 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %183, ptr %183, i32 1, ptr elementtype(i32) %183) #12, !srcloc !11
  %185 = extractvalue { i32, i32, i32 } %184, 0
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = icmp sgt i32 %185, 0
  br i1 %188, label %218, label %189, !prof !12

189:                                              ; preds = %187
  tail call void @refcount_warn_saturate(ptr noundef %183, i32 noundef 3) #12
  br label %218

190:                                              ; preds = %182
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @call_rcu(ptr noundef %183, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %218

191:                                              ; preds = %160
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  tail call void @seccomp_filter_release(ptr noundef %3) #12
  tail call void @proc_flush_pid(ptr noundef %25) #12
  tail call void @put_pid(ptr noundef %25) #12
  tail call void @release_thread(ptr noundef %3) #12
  %192 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %192) #12, !srcloc !10
  %193 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %192, ptr %192, i32 1, ptr elementtype(i32) %192) #12, !srcloc !11
  %194 = extractvalue { i32, i32, i32 } %193, 0
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = icmp sgt i32 %194, 0
  br i1 %197, label %218, label %198, !prof !12

198:                                              ; preds = %196
  tail call void @refcount_warn_saturate(ptr noundef %192, i32 noundef 3) #12
  br label %218

199:                                              ; preds = %191
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @call_rcu(ptr noundef %192, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %218

200:                                              ; preds = %156
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  tail call void @seccomp_filter_release(ptr noundef %3) #12
  tail call void @proc_flush_pid(ptr noundef %25) #12
  tail call void @put_pid(ptr noundef %25) #12
  tail call void @release_thread(ptr noundef %3) #12
  %201 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %201) #12, !srcloc !10
  %202 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %201, ptr %201, i32 1, ptr elementtype(i32) %201) #12, !srcloc !11
  %203 = extractvalue { i32, i32, i32 } %202, 0
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = icmp sgt i32 %203, 0
  br i1 %206, label %218, label %207, !prof !12

207:                                              ; preds = %205
  tail call void @refcount_warn_saturate(ptr noundef %201, i32 noundef 3) #12
  br label %218

208:                                              ; preds = %200
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @call_rcu(ptr noundef %201, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %218

209:                                              ; preds = %168
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  tail call void @seccomp_filter_release(ptr noundef %3) #12
  tail call void @proc_flush_pid(ptr noundef %25) #12
  tail call void @put_pid(ptr noundef %25) #12
  tail call void @release_thread(ptr noundef %3) #12
  %210 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %210) #12, !srcloc !10
  %211 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %210, ptr %210, i32 1, ptr elementtype(i32) %210) #12, !srcloc !11
  %212 = extractvalue { i32, i32, i32 } %211, 0
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = icmp sgt i32 %212, 0
  br i1 %215, label %218, label %216, !prof !12

216:                                              ; preds = %214
  tail call void @refcount_warn_saturate(ptr noundef %210, i32 noundef 3) #12
  br label %218

217:                                              ; preds = %209
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @call_rcu(ptr noundef %210, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %218

218:                                              ; preds = %217, %216, %214, %208, %207, %205, %199, %198, %196, %190, %189, %187
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @do_notify_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seccomp_filter_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_flush_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcuwait_wake_up(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !33
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @wake_up_process(ptr noundef nonnull %2) #12
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #12
  %1 = tail call ptr @llvm.thread.pointer() #12
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 22, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %0
  %8 = getelementptr %struct.pid, ptr %5, i32 0, i32 3, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -1364
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %50, label %14

14:                                               ; preds = %43, %7
  %15 = phi ptr [ %47, %43 ], [ %11, %7 ]
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 41
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 64
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %43, label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 55
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 53
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 93
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 22, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 22, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr %struct.signal_struct, ptr %39, i32 0, i32 22, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35, %29, %23, %19
  %44 = getelementptr %struct.task_struct, ptr %15, i32 0, i32 63, i32 2
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = getelementptr i8, ptr %45, i32 -1364
  %48 = icmp eq ptr %47, null
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %14

50:                                               ; preds = %43, %35, %7, %0
  %51 = phi i32 [ 1, %0 ], [ 1, %7 ], [ 1, %43 ], [ 0, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #12, !srcloc !10
  %52 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #12, !srcloc !35
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  br label %56

56:                                               ; preds = %55, %50
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_exit(i32 noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.core_thread, align 8
  %4 = tail call ptr @llvm.thread.pointer() #12
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15, !prof !37

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.blk_plug, ptr %6, i32 0, i32 7
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !12

15:                                               ; preds = %11, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 738, i32 noundef 9, ptr noundef null) #12
  br label %16

16:                                               ; preds = %15, %11, %1
  %17 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 94
  %18 = load ptr, ptr %17, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 8
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  %29 = icmp eq ptr %25, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !39
  store ptr %4, ptr %3, align 8
  %31 = load i32, ptr %19, align 4
  %32 = and i32 %31, 1024
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.core_state, ptr %25, i32 0, i32 1, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !40
  %36 = ptrtoint ptr %3 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #12, !srcloc !10
  %37 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %36, ptr %35) #12, !srcloc !41
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = inttoptr i32 %38 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !42
  %40 = getelementptr inbounds %struct.core_thread, ptr %3, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  br label %42

41:                                               ; preds = %30
  store ptr null, ptr %3, align 8
  br label %42

42:                                               ; preds = %41, %34
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #12, !srcloc !10
  %43 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #12, !srcloc !44
  %44 = extractvalue { i32, i32 } %43, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.core_state, ptr %25, i32 0, i32 2
  call void @complete(ptr noundef %47) #12
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 2, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !46
  %50 = load ptr, ptr %3, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %63, %48
  %53 = load i32, ptr %19, align 4
  %54 = or i32 %53, 1073741824
  store i32 %54, ptr %19, align 4
  call void @schedule() #12
  %55 = load i32, ptr %19, align 4
  %56 = and i32 %55, -1073741825
  store i32 %56, ptr %19, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !47
  %57 = load volatile i32, ptr @system_freezing_cnt, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !12

59:                                               ; preds = %52
  %60 = call zeroext i1 @freezing_slow_path(ptr noundef %4) #12
  br i1 %60, label %61, label %63, !prof !21

61:                                               ; preds = %59
  %62 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %63

63:                                               ; preds = %61, %59, %52
  store volatile i32 2, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !46
  %64 = load ptr, ptr %3, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52

66:                                               ; preds = %63, %48
  store volatile i32 0, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %67

67:                                               ; preds = %66, %16
  %68 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72, !prof !12

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 120
  store i32 %0, ptr %73, align 8
  call void @ptrace_notify(i32 noundef 1541) #12
  br label %74

74:                                               ; preds = %72, %67
  %75 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 91
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void @__io_uring_cancel(i1 noundef zeroext false) #12
  br label %79

79:                                               ; preds = %78, %74
  call void @exit_signals(ptr noundef %4) #12
  %80 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call void @sync_mm_rss(ptr noundef nonnull %81) #12
  br label %84

84:                                               ; preds = %83, %79
  %85 = load ptr, ptr %22, align 16
  %86 = getelementptr inbounds %struct.signal_struct, ptr %85, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #12, !srcloc !10
  %87 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #12, !srcloc !44
  %88 = extractvalue { i32, i32 } %87, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %143

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 1
  %94 = load ptr, ptr %22, align 16
  br i1 %93, label %95, label %100, !prof !21

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.signal_struct, ptr %94, i32 0, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 %0, i32 %97
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %99) #13
  unreachable

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.signal_struct, ptr %94, i32 0, i32 17
  %102 = call i32 @hrtimer_cancel(ptr noundef %101) #12
  %103 = load ptr, ptr %22, align 16
  call void @exit_itimers(ptr noundef %103) #12
  %104 = load ptr, ptr %80, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %126, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %22, align 16
  %108 = getelementptr inbounds %struct.signal_struct, ptr %107, i32 0, i32 46
  %109 = getelementptr inbounds %struct.anon, ptr %104, i32 0, i32 17
  %110 = load i32, ptr %109, align 8
  %111 = getelementptr inbounds %struct.anon, ptr %104, i32 0, i32 40
  %112 = load volatile i32, ptr %111, align 4
  %113 = call i32 @llvm.smax.i32(i32 %112, i32 0) #12
  %114 = getelementptr %struct.anon, ptr %104, i32 0, i32 40, i32 0, i32 1
  %115 = load volatile i32, ptr %114, align 4
  %116 = call i32 @llvm.smax.i32(i32 %115, i32 0) #12
  %117 = add nuw i32 %116, %113
  %118 = getelementptr %struct.anon, ptr %104, i32 0, i32 40, i32 0, i32 3
  %119 = load volatile i32, ptr %118, align 4
  %120 = call i32 @llvm.smax.i32(i32 %119, i32 0) #12
  %121 = add i32 %117, %120
  %122 = call i32 @llvm.umax.i32(i32 %110, i32 %121) #12
  %123 = load i32, ptr %108, align 4
  %124 = icmp ult i32 %123, %122
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  store i32 %122, ptr %108, align 4
  br label %126

126:                                              ; preds = %125, %106, %100
  %127 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 42
  store i32 %0, ptr %127, align 64
  call fastcc void @exit_mm()
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exit, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = lshr i32 %132, 5
  %134 = getelementptr i32, ptr @__cpu_online_mask, i32 %133
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %132, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %130
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %141 = call i32 @__traceiter_sched_process_exit(ptr noundef null, ptr noundef %4) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %142

142:                                              ; preds = %140, %130, %126
  call void @exit_sem(ptr noundef %4) #12
  call void @exit_shm(ptr noundef %4) #12
  call void @exit_files(ptr noundef %4) #12
  call void @exit_fs(ptr noundef %4) #12
  call void @disassociate_ctty(i32 noundef 1) #12
  br label %160

143:                                              ; preds = %84
  %144 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 42
  store i32 %0, ptr %144, align 64
  call fastcc void @exit_mm()
  %145 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exit, i32 0, i32 1), align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %149 = load i32, ptr %148, align 8
  %150 = lshr i32 %149, 5
  %151 = getelementptr i32, ptr @__cpu_online_mask, i32 %150
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %149, 31
  %154 = shl nuw i32 1, %153
  %155 = and i32 %154, %152
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %147
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %158 = call i32 @__traceiter_sched_process_exit(ptr noundef null, ptr noundef %4) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %159

159:                                              ; preds = %157, %147, %143
  call void @exit_sem(ptr noundef %4) #12
  call void @exit_shm(ptr noundef %4) #12
  call void @exit_files(ptr noundef %4) #12
  call void @exit_fs(ptr noundef %4) #12
  br label %160

160:                                              ; preds = %159, %142
  call void @exit_task_namespaces(ptr noundef %4) #12
  call void @task_work_run() #12
  call void @exit_thread(ptr noundef %4) #12
  call void @perf_event_exit_task(ptr noundef %4) #12
  call void @cgroup_exit(ptr noundef %4) #12
  call void @flush_ptrace_hw_breakpoint(ptr noundef %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %161 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %161, align 4
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  %162 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 60
  %163 = load volatile ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %162
  br i1 %164, label %166, label %165, !prof !12

165:                                              ; preds = %160
  call void @exit_ptrace(ptr noundef %4, ptr noundef nonnull %2) #12
  br label %166

166:                                              ; preds = %165, %160
  %167 = call ptr @task_active_pid_ns(ptr noundef %4) #12
  %168 = getelementptr inbounds %struct.pid_namespace, ptr %167, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %4
  br i1 %170, label %171, label %199, !prof !21

171:                                              ; preds = %166
  %172 = load ptr, ptr %22, align 16
  %173 = getelementptr inbounds %struct.signal_struct, ptr %172, i32 0, i32 3
  br label %174

174:                                              ; preds = %178, %171
  %175 = phi ptr [ %173, %171 ], [ %176, %178 ]
  %176 = load volatile ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, %173
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = getelementptr i8, ptr %176, i32 -840
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %174

183:                                              ; preds = %178
  %184 = getelementptr i8, ptr %176, i32 -1388
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  store ptr %184, ptr %168, align 4
  br label %199

187:                                              ; preds = %183, %174
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %188 = load ptr, ptr %2, align 8
  %189 = icmp eq ptr %188, %2
  br i1 %189, label %198, label %190

190:                                              ; preds = %190, %187
  %191 = phi ptr [ %193, %190 ], [ %188, %187 ]
  %192 = getelementptr i8, ptr %191, i32 -1336
  %193 = load ptr, ptr %191, align 8
  %194 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  store ptr %195, ptr %196, align 4
  store volatile ptr %193, ptr %195, align 4
  store volatile ptr %191, ptr %191, align 4
  store ptr %191, ptr %194, align 4
  call void @release_task(ptr noundef %192) #12
  %197 = icmp eq ptr %193, %2
  br i1 %197, label %198, label %190

198:                                              ; preds = %190, %187
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pid_namespace.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #12, !srcloc !50
  unreachable

199:                                              ; preds = %186, %166
  %200 = phi ptr [ %184, %186 ], [ %169, %166 ]
  %201 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 57
  %202 = load volatile ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, %201
  br i1 %203, label %347, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %22, align 16
  %206 = getelementptr inbounds %struct.signal_struct, ptr %205, i32 0, i32 3
  br label %207

207:                                              ; preds = %211, %204
  %208 = phi ptr [ %206, %204 ], [ %209, %211 ]
  %209 = load volatile ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %206
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = getelementptr i8, ptr %209, i32 -840
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %207

216:                                              ; preds = %211
  %217 = getelementptr i8, ptr %209, i32 -1388
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %270

219:                                              ; preds = %216, %207
  %220 = getelementptr inbounds %struct.signal_struct, ptr %205, i32 0, i32 14
  %221 = load i8, ptr %220, align 8
  %222 = and i8 %221, 2
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %270, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 62
  %226 = load ptr, ptr %225, align 64
  %227 = getelementptr inbounds %struct.pid, ptr %226, i32 0, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 55
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.task_struct, ptr %230, i32 0, i32 62
  %232 = load ptr, ptr %231, align 64
  %233 = getelementptr inbounds %struct.pid, ptr %232, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = icmp ne i32 %234, %228
  %236 = icmp eq ptr %230, @init_task
  %237 = or i1 %236, %235
  br i1 %237, label %270, label %238

238:                                              ; preds = %260, %224
  %239 = phi ptr [ %262, %260 ], [ %230, %224 ]
  %240 = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 93
  %241 = load ptr, ptr %240, align 16
  %242 = getelementptr inbounds %struct.signal_struct, ptr %241, i32 0, i32 14
  %243 = load i8, ptr %242, align 8
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %260, label %246

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.signal_struct, ptr %241, i32 0, i32 3
  br label %248

248:                                              ; preds = %252, %246
  %249 = phi ptr [ %247, %246 ], [ %250, %252 ]
  %250 = load volatile ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, %247
  br i1 %251, label %260, label %252

252:                                              ; preds = %248
  %253 = getelementptr i8, ptr %250, i32 -840
  %254 = load i32, ptr %253, align 4
  %255 = and i32 %254, 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %248

257:                                              ; preds = %252
  %258 = getelementptr i8, ptr %250, i32 -1388
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %270

260:                                              ; preds = %257, %248, %238
  %261 = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 55
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.task_struct, ptr %262, i32 0, i32 62
  %264 = load ptr, ptr %263, align 64
  %265 = getelementptr inbounds %struct.pid, ptr %264, i32 0, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = icmp ne i32 %266, %228
  %268 = icmp eq ptr %262, @init_task
  %269 = or i1 %268, %267
  br i1 %269, label %270, label %238

270:                                              ; preds = %260, %257, %224, %219, %216
  %271 = phi ptr [ %217, %216 ], [ %200, %224 ], [ %200, %219 ], [ %258, %257 ], [ %200, %260 ]
  %272 = getelementptr inbounds %struct.task_struct, ptr %271, i32 0, i32 93
  br label %273

273:                                              ; preds = %334, %270
  %274 = phi ptr [ %202, %270 ], [ %335, %334 ]
  %275 = getelementptr i8, ptr %274, i32 -1316
  %276 = getelementptr i8, ptr %274, i32 300
  %277 = load ptr, ptr %276, align 16
  %278 = getelementptr inbounds %struct.signal_struct, ptr %277, i32 0, i32 3
  %279 = load volatile ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, %278
  br i1 %280, label %307, label %281

281:                                              ; preds = %302, %273
  %282 = phi ptr [ %303, %302 ], [ %279, %273 ]
  %283 = getelementptr i8, ptr %282, i32 -1388
  %284 = getelementptr i8, ptr %282, i32 -88
  store volatile ptr %271, ptr %284, align 4
  %285 = getelementptr i8, ptr %282, i32 -836
  %286 = load i32, ptr %285, align 8
  %287 = icmp ne i32 %286, 0
  %288 = getelementptr i8, ptr %282, i32 -84
  %289 = load volatile ptr, ptr %288, align 8
  %290 = icmp eq ptr %289, %4
  %291 = xor i1 %287, %290
  br i1 %291, label %293, label %292, !prof !12

292:                                              ; preds = %281
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #12, !srcloc !51
  unreachable

293:                                              ; preds = %281
  %294 = icmp eq i32 %286, 0
  br i1 %294, label %295, label %296, !prof !12

295:                                              ; preds = %293
  store ptr %271, ptr %288, align 8
  br label %296

296:                                              ; preds = %295, %293
  %297 = getelementptr i8, ptr %282, i32 -164
  %298 = load i32, ptr %297, align 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = call i32 @group_send_sig_info(i32 noundef %298, ptr noundef null, ptr noundef %283, i32 noundef 1) #12
  br label %302

302:                                              ; preds = %300, %296
  %303 = load volatile ptr, ptr %282, align 4
  %304 = load ptr, ptr %276, align 16
  %305 = getelementptr inbounds %struct.signal_struct, ptr %304, i32 0, i32 3
  %306 = icmp eq ptr %303, %305
  br i1 %306, label %307, label %281

307:                                              ; preds = %302, %273
  %308 = load ptr, ptr %272, align 16
  %309 = load ptr, ptr %22, align 16
  %310 = icmp eq ptr %308, %309
  br i1 %310, label %334, label %311

311:                                              ; preds = %307
  %312 = getelementptr i8, ptr %274, i32 -104
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 16
  br i1 %314, label %334, label %315, !prof !21

315:                                              ; preds = %311
  %316 = getelementptr i8, ptr %274, i32 -96
  store i32 17, ptr %316, align 4
  %317 = getelementptr i8, ptr %274, i32 -764
  %318 = load i32, ptr %317, align 8
  %319 = icmp eq i32 %318, 0
  %320 = icmp eq i32 %313, 32
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %322, label %333

322:                                              ; preds = %315
  %323 = getelementptr i8, ptr %274, i32 64
  %324 = load volatile ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, %323
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = call zeroext i1 @do_notify_parent(ptr noundef %275, i32 noundef 17) #12
  br i1 %327, label %328, label %333

328:                                              ; preds = %326
  store i32 16, ptr %312, align 4
  %329 = getelementptr i8, ptr %274, i32 20
  %330 = load ptr, ptr %2, align 8
  %331 = getelementptr inbounds %struct.list_head, ptr %330, i32 0, i32 1
  store ptr %329, ptr %331, align 4
  store ptr %330, ptr %329, align 4
  %332 = getelementptr i8, ptr %274, i32 24
  store ptr %2, ptr %332, align 4
  store volatile ptr %329, ptr %2, align 8
  br label %333

333:                                              ; preds = %328, %326, %322, %315
  call fastcc void @kill_orphaned_pgrp(ptr noundef %275, ptr noundef %4) #12
  br label %334

334:                                              ; preds = %333, %311, %307
  %335 = load ptr, ptr %274, align 4
  %336 = icmp eq ptr %335, %201
  br i1 %336, label %337, label %273

337:                                              ; preds = %334
  %338 = load volatile ptr, ptr %201, align 4
  %339 = icmp eq ptr %338, %201
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.task_struct, ptr %271, i32 0, i32 57
  %342 = getelementptr inbounds %struct.task_struct, ptr %271, i32 0, i32 57, i32 1
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 57, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr inbounds %struct.list_head, ptr %338, i32 0, i32 1
  store ptr %343, ptr %346, align 4
  store ptr %338, ptr %343, align 4
  store ptr %341, ptr %345, align 4
  store ptr %345, ptr %342, align 4
  store volatile ptr %201, ptr %201, align 4
  store ptr %201, ptr %344, align 4
  br label %347

347:                                              ; preds = %340, %337, %199
  br i1 %89, label %348, label %351

348:                                              ; preds = %347
  %349 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 59
  %350 = load ptr, ptr %349, align 4
  call fastcc void @kill_orphaned_pgrp(ptr noundef %350, ptr noundef null) #12
  br label %351

351:                                              ; preds = %348, %347
  %352 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 41
  store i32 32, ptr %352, align 4
  %353 = load i32, ptr %68, align 8
  %354 = icmp eq i32 %353, 0
  %355 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 43
  %356 = load i32, ptr %355, align 4
  %357 = icmp sgt i32 %356, -1
  br i1 %354, label %377, label %358, !prof !12

358:                                              ; preds = %351
  br i1 %357, label %359, label %374

359:                                              ; preds = %358
  %360 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 64
  %361 = load volatile ptr, ptr %360, align 4
  %362 = icmp eq ptr %361, %360
  br i1 %362, label %363, label %374

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 55
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 56
  %367 = load ptr, ptr %366, align 8
  %368 = getelementptr inbounds %struct.task_struct, ptr %365, i32 0, i32 93
  %369 = load ptr, ptr %368, align 16
  %370 = getelementptr inbounds %struct.task_struct, ptr %367, i32 0, i32 93
  %371 = load ptr, ptr %370, align 16
  %372 = icmp eq ptr %369, %371
  %373 = select i1 %372, i32 %356, i32 17
  br label %374

374:                                              ; preds = %363, %359, %358
  %375 = phi i32 [ 17, %359 ], [ 17, %358 ], [ %373, %363 ]
  %376 = call zeroext i1 @do_notify_parent(ptr noundef %4, i32 noundef %375) #12
  br i1 %376, label %384, label %389

377:                                              ; preds = %351
  br i1 %357, label %378, label %384

378:                                              ; preds = %377
  %379 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 64
  %380 = load volatile ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, %379
  br i1 %381, label %382, label %389

382:                                              ; preds = %378
  %383 = call zeroext i1 @do_notify_parent(ptr noundef %4, i32 noundef %356) #12
  br i1 %383, label %384, label %389

384:                                              ; preds = %382, %377, %374
  store i32 16, ptr %352, align 4
  %385 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 61
  %386 = load ptr, ptr %2, align 8
  %387 = getelementptr inbounds %struct.list_head, ptr %386, i32 0, i32 1
  store ptr %385, ptr %387, align 4
  store ptr %386, ptr %385, align 4
  %388 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 61, i32 1
  store ptr %2, ptr %388, align 4
  store volatile ptr %385, ptr %2, align 8
  br label %389

389:                                              ; preds = %384, %382, %378, %374
  %390 = load ptr, ptr %22, align 16
  %391 = getelementptr inbounds %struct.signal_struct, ptr %390, i32 0, i32 9
  %392 = load i32, ptr %391, align 4
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %398, !prof !21

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.signal_struct, ptr %390, i32 0, i32 10
  %396 = load ptr, ptr %395, align 8
  %397 = call i32 @wake_up_process(ptr noundef %396) #12
  br label %398

398:                                              ; preds = %394, %389
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %399 = load ptr, ptr %2, align 8
  %400 = icmp eq ptr %399, %2
  br i1 %400, label %409, label %401

401:                                              ; preds = %401, %398
  %402 = phi ptr [ %404, %401 ], [ %399, %398 ]
  %403 = getelementptr i8, ptr %402, i32 -1336
  %404 = load ptr, ptr %402, align 8
  %405 = getelementptr inbounds %struct.list_head, ptr %402, i32 0, i32 1
  %406 = load ptr, ptr %405, align 4
  %407 = getelementptr inbounds %struct.list_head, ptr %404, i32 0, i32 1
  store ptr %406, ptr %407, align 4
  store volatile ptr %404, ptr %406, align 4
  store volatile ptr %402, ptr %402, align 4
  store ptr %402, ptr %405, align 4
  call void @release_task(ptr noundef %403) #12
  %408 = icmp eq ptr %404, %2
  br i1 %408, label %409, label %401

409:                                              ; preds = %401, %398
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %410 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 127
  %411 = load ptr, ptr %410, align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %414, label %413, !prof !12

413:                                              ; preds = %409
  call void @kfree(ptr noundef nonnull %411) #12
  br label %414

414:                                              ; preds = %413, %409
  %415 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 118
  %416 = load ptr, ptr %415, align 32
  %417 = icmp eq ptr %416, null
  br i1 %417, label %419, label %418

418:                                              ; preds = %414
  call void @exit_io_context(ptr noundef %4) #12
  br label %419

419:                                              ; preds = %418, %414
  %420 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 138
  %421 = load ptr, ptr %420, align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %419
  call void @free_pipe_info(ptr noundef nonnull %421) #12
  br label %424

424:                                              ; preds = %423, %419
  %425 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 139
  %426 = load ptr, ptr %425, align 32
  %427 = icmp eq ptr %426, null
  br i1 %427, label %445, label %428

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.page, ptr %426, i32 0, i32 1
  %430 = load volatile i32, ptr %429, align 4
  %431 = and i32 %430, 1
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %435, label %433, !prof !12

433:                                              ; preds = %428
  %434 = add i32 %430, -1
  br label %437

435:                                              ; preds = %428
  %436 = ptrtoint ptr %426 to i32
  br label %437

437:                                              ; preds = %435, %433
  %438 = phi i32 [ %434, %433 ], [ %436, %435 ]
  %439 = inttoptr i32 %438 to ptr
  %440 = getelementptr inbounds %struct.page, ptr %439, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %440) #12, !srcloc !10
  %441 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %440, ptr %440, i32 1, ptr elementtype(i32) %440) #12, !srcloc !44
  %442 = extractvalue { i32, i32 } %441, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %437
  call void @__put_page(ptr noundef %439) #12
  br label %445

445:                                              ; preds = %444, %437, %424
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %446 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 140
  %447 = load i32, ptr %446, align 8
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %457, label %449

449:                                              ; preds = %445
  %450 = call i32 @llvm.read_register.i32(metadata !0) #12
  %451 = inttoptr i32 %450 to ptr
  %452 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %451) #10, !srcloc !23
  %453 = add i32 %452, ptrtoint (ptr @dirty_throttle_leaks to i32)
  %454 = inttoptr i32 %453 to ptr
  %455 = load i32, ptr %454, align 4
  %456 = add i32 %455, %447
  store i32 %456, ptr %454, align 4
  br label %457

457:                                              ; preds = %449, %445
  call void @exit_rcu() #12
  call void @do_task_dead() #14
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_signals(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_itimers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exit_mm() unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #12
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  tail call void @exit_mm_release(ptr noundef %1, ptr noundef %3) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %0
  tail call void @sync_mm_rss(ptr noundef nonnull %3) #12
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 15
  tail call void @down_read(ptr noundef %10) #12
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %3, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #12, !srcloc !53
  %17 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 38
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %3, %18
  br i1 %19, label %21, label %20, !prof !12

20:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #12, !srcloc !54
  unreachable

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %22) #12
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !55
  store ptr null, ptr %2, align 4
  tail call void @membarrier_update_current_mm(ptr noundef null) #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %28

28:                                               ; preds = %27, %21
  tail call void @up_read(ptr noundef %10) #12
  tail call void @mmput(ptr noundef nonnull %3) #12
  %29 = load volatile i32, ptr %1, align 4
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @exit_oom_victim() #12
  br label %33

33:                                               ; preds = %32, %28, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_sem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_shm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_files(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_fs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disassociate_ctty(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_task_namespaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_exit_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_ptrace_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_io_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pipe_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_rcu() local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_task_dead() local_unnamed_addr #5

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @make_task_dead(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @llvm.thread.pointer() #12
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 983040
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 65280
  %11 = or i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !12

13:                                               ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #13
  unreachable

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !21

18:                                               ; preds = %14
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #13
  unreachable

19:                                               ; preds = %14
  %20 = load volatile i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !12

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  %24 = load volatile i32, ptr %3, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %23, i32 noundef %16, i32 noundef %24) #15
  store volatile i32 0, ptr %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !12

31:                                               ; preds = %26
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  tail call void @futex_exit_recursive(ptr noundef %2) #12
  %33 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 41
  store i32 16, ptr %33, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 137
  tail call fastcc void @refcount_inc(ptr noundef %34)
  tail call void @do_task_dead() #14
  unreachable

35:                                               ; preds = %26
  tail call void @do_exit(i32 noundef %0) #16
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exit_recursive(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #7 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #12, !srcloc !10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #12, !srcloc !20
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !21

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !12

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #12
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_exit(i32 noundef %0) #3 {
  %2 = shl i32 %0, 8
  %3 = and i32 %2, 65280
  tail call void @do_exit(i32 noundef %3) #14
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_group_exit(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @llvm.thread.pointer() #12
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  br label %39

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 64
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %22 = load ptr, ptr %21, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #12
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 8
  %28 = load i32, ptr %27, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load ptr, ptr %13, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 8
  store i32 %0, ptr %33, align 8
  store i32 4, ptr %5, align 8
  %34 = tail call i32 @zap_other_threads(ptr noundef %2) #12
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi i32 [ %28, %26 ], [ %0, %32 ], [ 0, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %37 = load i16, ptr %22, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  br label %39

39:                                               ; preds = %35, %16, %12, %9
  %40 = phi i32 [ %11, %9 ], [ %0, %16 ], [ %36, %35 ], [ 0, %12 ]
  tail call void @do_exit(i32 noundef %40) #16
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zap_other_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_exit_group(i32 noundef %0) #3 {
  %2 = shl i32 %0, 8
  %3 = and i32 %2, 65280
  tail call void @do_group_exit(i32 noundef %3) #12
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wake_up_parent(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 4
  tail call void @__wake_up_sync_key(ptr noundef %5, i32 noundef 1, ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_waitid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.wait_opts, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rusage, align 4
  %9 = alloca %struct.waitid_info, align 4
  %10 = inttoptr i32 %2 to ptr
  %11 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 72, i1 false) #12, !annotation !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #12
  %12 = icmp eq i32 %4, 0
  %13 = select i1 %12, ptr null, ptr %8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i32 48, i1 false) #12, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %14 = and i32 %3, 520093680
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %3, 14
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %15, %17
  br i1 %18, label %71, label %19

19:                                               ; preds = %5
  switch i32 %0, label %71 [
    i32 0, label %40
    i32 1, label %20
    i32 2, label %24
    i32 3, label %33
  ]

20:                                               ; preds = %19
  %21 = icmp slt i32 %1, 1
  br i1 %21, label %71, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @find_get_pid(i32 noundef %1) #12
  br label %40

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %24
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @find_get_pid(i32 noundef %1) #12
  br label %40

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = tail call ptr @get_task_pid(ptr noundef %31, i32 noundef 2) #12
  br label %40

33:                                               ; preds = %19
  %34 = icmp slt i32 %1, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %33
  %36 = call ptr @pidfd_get_pid(i32 noundef %1, ptr noundef nonnull %7) #12
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = ptrtoint ptr %36 to i32
  br label %72

40:                                               ; preds = %30, %28, %22, %19
  %41 = phi ptr [ null, %19 ], [ %23, %22 ], [ %32, %30 ], [ %29, %28 ]
  %42 = phi i32 [ 4, %19 ], [ 0, %22 ], [ 2, %30 ], [ 2, %28 ]
  store i32 %42, ptr %6, align 4
  %43 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 2
  store ptr %41, ptr %43, align 4
  %44 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 1
  store i32 %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 3
  store ptr %9, ptr %45, align 4
  %46 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 5
  store ptr %13, ptr %46, align 4
  br label %57

47:                                               ; preds = %35
  %48 = load i32, ptr %7, align 4
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  store i32 0, ptr %6, align 4
  %51 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 2
  store ptr %36, ptr %51, align 4
  %52 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 1
  store i32 %3, ptr %52, align 4
  %53 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 3
  store ptr %9, ptr %53, align 4
  %54 = getelementptr inbounds %struct.wait_opts, ptr %6, i32 0, i32 5
  store ptr %13, ptr %54, align 4
  br i1 %50, label %57, label %55

55:                                               ; preds = %47
  %56 = or i32 %3, 1
  store i32 %56, ptr %52, align 4
  br label %57

57:                                               ; preds = %55, %47, %40
  %58 = phi ptr [ %41, %40 ], [ %36, %55 ], [ %36, %47 ]
  %59 = call fastcc i32 @do_wait(ptr noundef nonnull %6) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = and i32 %3, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, ptr %7, align 4
  %66 = and i32 %65, 2048
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 -11
  br label %69

69:                                               ; preds = %64, %61, %57
  %70 = phi i32 [ %59, %57 ], [ 0, %61 ], [ %68, %64 ]
  call void @put_pid(ptr noundef %58) #12
  br label %72

71:                                               ; preds = %33, %24, %20, %19, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  br label %90

72:                                               ; preds = %69, %38
  %73 = phi i32 [ %39, %38 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  %74 = icmp slt i32 %73, 1
  %75 = or i1 %12, %74
  %76 = select i1 %74, i32 0, i32 17
  %77 = select i1 %74, i32 %73, i32 0
  br i1 %75, label %90, label %78

78:                                               ; preds = %72
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %11, i32 72, i32 -1090519040) #17, !srcloc !56
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %149

82:                                               ; preds = %78
  %83 = tail call ptr @llvm.thread.pointer() #12
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %84) #10, !srcloc !57
  %86 = and i32 %85, -13
  %87 = or i32 %86, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %88 = call i32 @arm_copy_to_user(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef 72) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %149

90:                                               ; preds = %82, %72, %71
  %91 = phi i32 [ 17, %82 ], [ %76, %72 ], [ 0, %71 ]
  %92 = phi i32 [ 0, %82 ], [ %77, %72 ], [ -22, %71 ]
  %93 = icmp eq i32 %2, 0
  br i1 %93, label %149, label %94

94:                                               ; preds = %90
  %95 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 128, i32 -1090519040) #17, !srcloc !60
  %96 = extractvalue { i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %149

98:                                               ; preds = %94
  %99 = tail call ptr @llvm.thread.pointer() #12
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %101 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #10, !srcloc !57
  %102 = and i32 %101, -13
  %103 = or i32 %102, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %104 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %10, i32 %91, i32 -1090519041) #12, !srcloc !61
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %148, !prof !12

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.anon.126, ptr %10, i32 0, i32 1
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #10, !srcloc !57
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %111 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %107, i32 0, i32 -1090519041) #12, !srcloc !62
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %148, !prof !12

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.anon.126, ptr %10, i32 0, i32 2
  %115 = getelementptr inbounds %struct.waitid_info, ptr %9, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #10, !srcloc !57
  %118 = and i32 %117, -13
  %119 = or i32 %118, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %120 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %114, i32 %116, i32 -1090519041) #12, !srcloc !63
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %148, !prof !12

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.anon.126, ptr %10, i32 0, i32 3
  %124 = load i32, ptr %9, align 4
  %125 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #10, !srcloc !57
  %126 = and i32 %125, -13
  %127 = or i32 %126, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %128 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %123, i32 %124, i32 -1090519041) #12, !srcloc !64
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %148, !prof !12

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.anon.126, ptr %10, i32 0, i32 3, i32 0, i32 1
  %132 = getelementptr inbounds %struct.waitid_info, ptr %9, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #10, !srcloc !57
  %135 = and i32 %134, -13
  %136 = or i32 %135, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %137 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %131, i32 %133, i32 -1090519041) #12, !srcloc !65
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %134) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %148, !prof !12

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.anon.126, ptr %10, i32 0, i32 3, i32 0, i32 2
  %141 = getelementptr inbounds %struct.waitid_info, ptr %9, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #10, !srcloc !57
  %144 = and i32 %143, -13
  %145 = or i32 %144, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %146 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %140, i32 %142, i32 -1090519041) #12, !srcloc !66
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148, !prof !12

148:                                              ; preds = %139, %130, %122, %113, %106, %98
  br label %149

149:                                              ; preds = %148, %139, %94, %90, %82, %78
  %150 = phi i32 [ -14, %148 ], [ -14, %82 ], [ %92, %90 ], [ -14, %94 ], [ %92, %139 ], [ -14, %78 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #12
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_wait4(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_opts, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i32 24, i1 false), !annotation !39
  %7 = and i32 %2, 536870900
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %4
  switch i32 %0, label %10 [
    i32 -2147483648, label %45
    i32 -1, label %22
  ]

10:                                               ; preds = %9
  %11 = icmp slt i32 %0, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = sub i32 0, %0
  %14 = tail call ptr @find_get_pid(i32 noundef %13) #12
  br label %22

15:                                               ; preds = %10
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = tail call ptr @get_task_pid(ptr noundef %18, i32 noundef 2) #12
  br label %22

20:                                               ; preds = %15
  %21 = tail call ptr @find_get_pid(i32 noundef %0) #12
  br label %22

22:                                               ; preds = %20, %17, %12, %9
  %23 = phi i32 [ 2, %12 ], [ 2, %17 ], [ 0, %20 ], [ 4, %9 ]
  %24 = phi ptr [ %14, %12 ], [ %19, %17 ], [ %21, %20 ], [ null, %9 ]
  store i32 %23, ptr %5, align 4
  %25 = getelementptr inbounds %struct.wait_opts, ptr %5, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = or i32 %2, 4
  %27 = getelementptr inbounds %struct.wait_opts, ptr %5, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.wait_opts, ptr %5, i32 0, i32 3
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.wait_opts, ptr %5, i32 0, i32 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wait_opts, ptr %5, i32 0, i32 5
  store ptr %3, ptr %30, align 4
  %31 = call fastcc i32 @do_wait(ptr noundef nonnull %5)
  call void @put_pid(ptr noundef %24) #12
  %32 = icmp sgt i32 %31, 0
  %33 = icmp ne ptr %1, null
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load i32, ptr %29, align 4
  %37 = tail call ptr @llvm.thread.pointer() #12
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #10, !srcloc !57
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %1, i32 %36, i32 -1090519041) #12, !srcloc !67
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %31, i32 -14
  br label %45

45:                                               ; preds = %35, %22, %9, %4
  %46 = phi i32 [ -22, %4 ], [ -3, %9 ], [ %31, %22 ], [ %44, %35 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #12
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_wait(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_wait, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  %6 = tail call ptr @llvm.thread.pointer() #12
  br i1 %5, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !68
  %18 = tail call i32 @__traceiter_sched_process_wait(ptr noundef null, ptr noundef %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !69
  br label %19

19:                                               ; preds = %17, %7, %1
  %20 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 6
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 6, i32 1
  %22 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 6, i32 2
  store ptr @child_wait_callback, ptr %22, align 4
  store ptr %6, ptr %21, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 4
  tail call void @add_wait_queue(ptr noundef %25, ptr noundef %20) #12
  %26 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 7
  %27 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  br label %29

29:                                               ; preds = %136, %19
  store i32 -10, ptr %26, align 4
  %30 = load i32, ptr %0, align 4
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load ptr, ptr %2, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %137, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.pid, ptr %33, i32 0, i32 3, i32 %30
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %137, label %39

39:                                               ; preds = %35, %29
  store volatile i32 1, ptr %27, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !70
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #12
  %40 = load i32, ptr %0, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 4
  %44 = tail call ptr @pid_task(ptr noundef %43, i32 noundef 1) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 55
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %6, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %28, align 4
  %52 = and i32 %51, 536870912
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr %23, align 16
  %56 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 93
  %57 = load ptr, ptr %56, align 16
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %46
  %60 = tail call fastcc i32 @wait_consider_task(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %44) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %137

62:                                               ; preds = %59, %54, %50, %42
  %63 = load ptr, ptr %2, align 4
  %64 = tail call ptr @pid_task(ptr noundef %63, i32 noundef 0) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %116, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %116, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 56
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %6, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %28, align 4
  %76 = and i32 %75, 536870912
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %74
  %79 = load ptr, ptr %23, align 16
  %80 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 93
  %81 = load ptr, ptr %80, align 16
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %78, %70
  %84 = tail call fastcc i32 @wait_consider_task(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %64) #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %116, label %137

86:                                               ; preds = %111, %39
  %87 = phi ptr [ %114, %111 ], [ %6, %39 ]
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 57
  br label %89

89:                                               ; preds = %93, %86
  %90 = phi ptr [ %88, %86 ], [ %91, %93 ]
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %88
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %91, i32 -1316
  %95 = tail call fastcc i32 @wait_consider_task(ptr noundef %0, i32 noundef 0, ptr noundef %94) #12
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %89, label %137

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 60
  br label %99

99:                                               ; preds = %103, %97
  %100 = phi ptr [ %98, %97 ], [ %101, %103 ]
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, %98
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr i8, ptr %101, i32 -1336
  %105 = tail call fastcc i32 @wait_consider_task(ptr noundef %0, i32 noundef 1, ptr noundef %104) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %99, label %137

107:                                              ; preds = %99
  %108 = load i32, ptr %28, align 4
  %109 = and i32 %108, 536870912
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 64
  %113 = load volatile ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 -1380
  %115 = icmp eq ptr %114, %6
  br i1 %115, label %116, label %86

116:                                              ; preds = %111, %107, %83, %78, %74, %66, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #12, !srcloc !10
  %117 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #12, !srcloc !35
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  br label %121

121:                                              ; preds = %120, %116
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %122 = load i32, ptr %26, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i32, ptr %28, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load volatile i32, ptr %6, align 4
  %130 = and i32 %129, 256
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137, !prof !12

132:                                              ; preds = %128
  %133 = load volatile i32, ptr %6, align 4
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  tail call void @schedule() #12
  br label %29

137:                                              ; preds = %132, %128, %124, %121, %103, %93, %83, %59, %35, %32
  %138 = phi i32 [ %105, %103 ], [ %95, %93 ], [ -10, %35 ], [ -10, %32 ], [ -512, %128 ], [ %60, %59 ], [ %84, %83 ], [ -512, %132 ], [ 0, %124 ], [ %122, %121 ]
  store volatile i32 0, ptr %27, align 8
  %139 = load ptr, ptr %23, align 16
  %140 = getelementptr inbounds %struct.signal_struct, ptr %139, i32 0, i32 4
  tail call void @remove_wait_queue(ptr noundef %140, ptr noundef %20) #12
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_wait(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.wait_opts, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.wait_opts, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  store i32 4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wait_opts, ptr %3, i32 0, i32 2
  %6 = tail call ptr @find_get_pid(i32 noundef %0) #12
  store ptr %6, ptr %5, align 4
  %7 = call fastcc i32 @do_wait(ptr noundef nonnull %3)
  %8 = icmp sgt i32 %7, 0
  %9 = getelementptr inbounds %struct.wait_opts, ptr %3, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 %10, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr %5, align 4
  call void @put_pid(ptr noundef %15) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_wait4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.rusage, align 4
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #12, !annotation !39
  %8 = icmp ne i32 %3, 0
  %9 = select i1 %8, ptr %5, ptr null
  %10 = call i32 @kernel_wait4(i32 noundef %0, ptr noundef %6, i32 noundef %2, ptr noundef %9) #12
  %11 = icmp sgt i32 %10, 0
  %12 = and i1 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %7, i32 72, i32 -1090519040) #17, !srcloc !56
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !57
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %23 = call i32 @arm_copy_to_user(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 72) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !58
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !59
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %4
  br label %26

26:                                               ; preds = %25, %17, %13
  %27 = phi i32 [ %10, %25 ], [ -14, %17 ], [ -14, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @thread_group_exited(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %2 = tail call ptr @pid_task(ptr noundef %0, i32 noundef 0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 41
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 64
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br label %12

12:                                               ; preds = %8, %4, %1
  %13 = phi i1 [ true, %1 ], [ false, %4 ], [ %11, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @abort() #3 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1826, 0\0A.popsection", ""() #12, !srcloc !71
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_delayed_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_task_struct(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @__put_task_struct(ptr noundef %0) #12
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ptrace_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cpu_timers_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cpu_timers_exit_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_sigqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cleanup_sighand(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @detach_pid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_cancel(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_mm_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_update_current_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_oom_victim() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kill_orphaned_pgrp(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr %struct.signal_struct, ptr %4, i32 0, i32 22, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 55
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %1, %2 ]
  %13 = phi ptr [ %0, %8 ], [ null, %2 ]
  %14 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 22, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %96, label %19

19:                                               ; preds = %11
  %20 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 22, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.signal_struct, ptr %4, i32 0, i32 22, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %21, %23
  %25 = icmp eq ptr %6, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %96, label %27

27:                                               ; preds = %19
  %28 = getelementptr %struct.pid, ptr %6, i32 0, i32 3, i32 2
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -1364
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %72, label %34

34:                                               ; preds = %65, %27
  %35 = phi ptr [ %69, %65 ], [ %31, %27 ]
  %36 = icmp eq ptr %35, %13
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 41
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 64
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %65, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 55
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 53
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 93
  %53 = load ptr, ptr %52, align 16
  %54 = getelementptr %struct.signal_struct, ptr %53, i32 0, i32 22, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, %6
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = getelementptr %struct.signal_struct, ptr %53, i32 0, i32 22, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 93
  %61 = load ptr, ptr %60, align 16
  %62 = getelementptr %struct.signal_struct, ptr %61, i32 0, i32 22, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %96, label %65

65:                                               ; preds = %57, %51, %45, %41, %34
  %66 = getelementptr %struct.task_struct, ptr %35, i32 0, i32 63, i32 2
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = getelementptr i8, ptr %67, i32 -1364
  %70 = icmp eq ptr %69, null
  %71 = or i1 %68, %70
  br i1 %71, label %72, label %34

72:                                               ; preds = %65, %27
  %73 = load volatile ptr, ptr %28, align 4
  %74 = icmp eq ptr %73, null
  %75 = getelementptr i8, ptr %73, i32 -1364
  %76 = icmp eq ptr %75, null
  %77 = or i1 %74, %76
  br i1 %77, label %96, label %78

78:                                               ; preds = %86, %72
  %79 = phi ptr [ %90, %86 ], [ %75, %72 ]
  %80 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 93
  %81 = load ptr, ptr %80, align 16
  %82 = getelementptr inbounds %struct.signal_struct, ptr %81, i32 0, i32 12
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = getelementptr %struct.task_struct, ptr %79, i32 0, i32 63, i32 2
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = getelementptr i8, ptr %88, i32 -1364
  %91 = icmp eq ptr %90, null
  %92 = or i1 %89, %91
  br i1 %92, label %96, label %78

93:                                               ; preds = %78
  %94 = tail call i32 @__kill_pgrp_info(i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %6) #12
  %95 = tail call i32 @__kill_pgrp_info(i32 noundef 18, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %6) #12
  br label %96

96:                                               ; preds = %93, %86, %72, %57, %19, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_ptrace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kill_pgrp_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_pid(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @child_wait_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 4, label %19
    i32 0, label %7
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 22, i32 %6
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %8, %7 ], [ %12, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13, %4
  %20 = getelementptr i8, ptr %0, i32 -20
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 536870912
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 56
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %19
  %31 = tail call i32 @default_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %32

32:                                               ; preds = %30, %24, %13
  %33 = phi i32 [ %31, %30 ], [ 0, %13 ], [ 0, %24 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_consider_task(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 41
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %506, label %9, !prof !21

9:                                                ; preds = %3
  %10 = icmp ne i32 %1, 0
  %11 = load i32, ptr %0, align 4
  switch i32 %11, label %14 [
    i32 4, label %24
    i32 0, label %12
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  br label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr %struct.signal_struct, ptr %16, i32 0, i32 22, i32 %11
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %13, %12 ], [ %17, %14 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %20, %22
  br label %24

24:                                               ; preds = %18, %9
  %25 = phi i1 [ false, %9 ], [ %23, %18 ]
  %26 = or i1 %10, %25
  %27 = xor i1 %25, true
  %28 = zext i1 %27 to i32
  br i1 %26, label %42, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1073741824
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 43
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 17
  %38 = zext i1 %37 to i32
  %39 = xor i32 %31, -1
  %40 = lshr i32 %39, 31
  %41 = xor i32 %40, %38
  br label %42

42:                                               ; preds = %34, %24
  %43 = phi i32 [ %28, %24 ], [ %41, %34 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %506, label %45

45:                                               ; preds = %42, %29
  %46 = icmp eq i32 %7, 48
  br i1 %46, label %47, label %50, !prof !21

47:                                               ; preds = %45
  br i1 %10, label %506, label %48, !prof !21

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 7
  store i32 0, ptr %49, align 4
  br label %506

50:                                               ; preds = %45
  br i1 %10, label %66, label %51, !prof !21

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55, !prof !12

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 55
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 56
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 93
  %61 = load ptr, ptr %60, align 16
  %62 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 93
  %63 = load ptr, ptr %62, align 16
  %64 = icmp eq ptr %61, %63
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %55, %51, %50
  %67 = phi i32 [ 0, %51 ], [ %1, %50 ], [ %65, %55 ]
  %68 = icmp eq i32 %7, 32
  br i1 %68, label %69, label %321

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 43
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 64
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %77, label %314

77:                                               ; preds = %73, %69
  %78 = icmp eq i32 %67, 0
  br i1 %78, label %79, label %83, !prof !12

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %321, !prof !12

83:                                               ; preds = %79, %77
  %84 = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %85 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %86 = load volatile ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.cred, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %89 = icmp eq i32 %88, -1
  %90 = load i32, ptr @overflowuid, align 4
  %91 = select i1 %89, i32 %90, i32 %88
  %92 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %506, label %96, !prof !21

96:                                               ; preds = %83
  %97 = and i32 %93, 16777216
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %120, label %99, !prof !12

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %101 = load ptr, ptr %100, align 16
  %102 = getelementptr inbounds %struct.signal_struct, ptr %101, i32 0, i32 12
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds %struct.signal_struct, ptr %101, i32 0, i32 8
  %107 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 42
  %108 = select i1 %105, ptr %107, ptr %106
  %109 = load i32, ptr %108, align 8
  tail call fastcc void @get_task_struct(ptr noundef %2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #12, !srcloc !10
  %110 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #12, !srcloc !35
  %111 = extractvalue { i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  br label %114

114:                                              ; preds = %113, %99
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %115 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %116) #12
  br label %119

119:                                              ; preds = %118, %114
  tail call fastcc void @put_task_struct(ptr noundef %2) #12
  br label %297

120:                                              ; preds = %96
  %121 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 55
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 56
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 93
  %126 = load ptr, ptr %125, align 16
  %127 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 93
  %128 = load ptr, ptr %127, align 16
  %129 = icmp eq ptr %126, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = load i32, ptr %70, align 4
  %132 = icmp sgt i32 %131, -1
  %133 = select i1 %132, i32 48, i32 16
  br label %134

134:                                              ; preds = %130, %120
  %135 = phi i1 [ false, %120 ], [ %132, %130 ]
  %136 = phi i32 [ 16, %120 ], [ %133, %130 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !72
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !10
  br label %137

137:                                              ; preds = %137, %134
  %138 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %6, i32 32, i32 %136) #12, !srcloc !73
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %137

141:                                              ; preds = %137
  %142 = extractvalue { i32, i32 } %138, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !74
  %143 = icmp eq i32 %142, 32
  br i1 %143, label %144, label %506

144:                                              ; preds = %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #12, !srcloc !10
  %145 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #12, !srcloc !35
  %146 = extractvalue { i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  br label %149

149:                                              ; preds = %148, %144
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  br i1 %135, label %267, label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %70, align 4
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %267

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %155 = load ptr, ptr %154, align 16
  %156 = tail call ptr @llvm.thread.pointer() #12
  %157 = getelementptr inbounds %struct.task_struct, ptr %156, i32 0, i32 93
  %158 = load ptr, ptr %157, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !39
  call void @thread_group_cputime_adjusted(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %159 = getelementptr inbounds %struct.task_struct, ptr %156, i32 0, i32 94
  %160 = load ptr, ptr %159, align 4
  call void @_raw_spin_lock_irq(ptr noundef %160) #12
  %161 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 26
  %162 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 26, i32 1
  call void @_raw_spin_lock(ptr noundef %162) #12
  %163 = load i32, ptr %161, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %161, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !22
  %165 = load i64, ptr %4, align 8
  %166 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 29
  %167 = load i64, ptr %166, align 8
  %168 = add i64 %167, %165
  %169 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 29
  %170 = load i64, ptr %169, align 8
  %171 = add i64 %168, %170
  store i64 %171, ptr %169, align 8
  %172 = load i64, ptr %5, align 8
  %173 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 30
  %174 = load i64, ptr %173, align 8
  %175 = add i64 %174, %172
  %176 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 30
  %177 = load i64, ptr %176, align 8
  %178 = add i64 %175, %177
  store i64 %178, ptr %176, align 8
  %179 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 72
  %180 = load i64, ptr %179, align 8
  %181 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 31
  %182 = load i64, ptr %181, align 8
  %183 = add i64 %182, %180
  %184 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 32
  %185 = load i64, ptr %184, align 8
  %186 = add i64 %183, %185
  %187 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 32
  %188 = load i64, ptr %187, align 8
  %189 = add i64 %186, %188
  store i64 %189, ptr %187, align 8
  %190 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 78
  %191 = load i32, ptr %190, align 16
  %192 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 38
  %193 = load i32, ptr %192, align 8
  %194 = add i32 %193, %191
  %195 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 40
  %196 = load i32, ptr %195, align 8
  %197 = add i32 %194, %196
  %198 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 40
  %199 = load i32, ptr %198, align 8
  %200 = add i32 %197, %199
  store i32 %200, ptr %198, align 8
  %201 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 79
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 39
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, %202
  %206 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 41
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %205, %207
  %209 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 41
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %208, %210
  store i32 %211, ptr %209, align 4
  %212 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 74
  %213 = load i32, ptr %212, align 8
  %214 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 34
  %215 = load i32, ptr %214, align 8
  %216 = add i32 %215, %213
  %217 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 36
  %218 = load i32, ptr %217, align 8
  %219 = add i32 %216, %218
  %220 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 36
  %221 = load i32, ptr %220, align 8
  %222 = add i32 %219, %221
  store i32 %222, ptr %220, align 8
  %223 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 75
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 35
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, %224
  %228 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 37
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %227, %229
  %231 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 37
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %230, %232
  store i32 %233, ptr %231, align 4
  %234 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 42
  %235 = load i32, ptr %234, align 8
  %236 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 44
  %237 = load i32, ptr %236, align 8
  %238 = add i32 %237, %235
  %239 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 44
  %240 = load i32, ptr %239, align 8
  %241 = add i32 %238, %240
  store i32 %241, ptr %239, align 8
  %242 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 43
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 45
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, %243
  %247 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 45
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %246, %248
  store i32 %249, ptr %247, align 4
  %250 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 46
  %251 = load i32, ptr %250, align 8
  %252 = getelementptr inbounds %struct.signal_struct, ptr %155, i32 0, i32 47
  %253 = load i32, ptr %252, align 4
  %254 = call i32 @llvm.umax.i32(i32 %251, i32 %253) #12
  %255 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 47
  %256 = load i32, ptr %255, align 4
  %257 = icmp ult i32 %256, %254
  br i1 %257, label %258, label %259

258:                                              ; preds = %153
  store i32 %254, ptr %255, align 4
  br label %259

259:                                              ; preds = %258, %153
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !24
  %260 = load i32, ptr %161, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %161, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %262 = load i16, ptr %162, align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr %162, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %264 = load ptr, ptr %159, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %265 = load i16, ptr %264, align 4
  %266 = add i16 %265, 1
  store i16 %266, ptr %264, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %267

267:                                              ; preds = %259, %150, %149
  %268 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 5
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %267
  call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %269) #12
  br label %272

272:                                              ; preds = %271, %267
  %273 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %274 = load ptr, ptr %273, align 16
  %275 = getelementptr inbounds %struct.signal_struct, ptr %274, i32 0, i32 12
  %276 = load i32, ptr %275, align 8
  %277 = and i32 %276, 4
  %278 = icmp eq i32 %277, 0
  %279 = getelementptr inbounds %struct.signal_struct, ptr %274, i32 0, i32 8
  %280 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 42
  %281 = select i1 %278, ptr %280, ptr %279
  %282 = load i32, ptr %281, align 8
  %283 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 4
  store i32 %282, ptr %283, align 4
  br i1 %135, label %284, label %293

284:                                              ; preds = %272
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  %285 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %286 = load i32, ptr %285, align 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288, !prof !12

288:                                              ; preds = %284
  call void @__ptrace_unlink(ptr noundef %2) #12
  br label %289

289:                                              ; preds = %288, %284
  %290 = load i32, ptr %70, align 4
  %291 = call zeroext i1 @do_notify_parent(ptr noundef %2, i32 noundef %290) #12
  %292 = select i1 %291, i32 16, i32 32
  store i32 %292, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #12, !srcloc !30
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  br label %293

293:                                              ; preds = %289, %272
  %294 = phi i32 [ %292, %289 ], [ %136, %272 ]
  %295 = icmp eq i32 %294, 16
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  call void @release_task(ptr noundef %2) #12
  br label %297

297:                                              ; preds = %296, %293, %119
  %298 = phi i32 [ %109, %119 ], [ %282, %296 ], [ %282, %293 ]
  %299 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 3
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %506, label %302

302:                                              ; preds = %297
  %303 = and i32 %298, 127
  %304 = icmp eq i32 %303, 0
  %305 = ashr i32 %298, 8
  %306 = and i32 %298, 128
  %307 = icmp eq i32 %306, 0
  %308 = select i1 %307, i32 2, i32 3
  %309 = select i1 %304, i32 1, i32 %308
  %310 = select i1 %304, i32 %305, i32 %303
  %311 = getelementptr inbounds %struct.waitid_info, ptr %300, i32 0, i32 3
  store i32 %309, ptr %311, align 4
  %312 = getelementptr inbounds %struct.waitid_info, ptr %300, i32 0, i32 2
  store i32 %310, ptr %312, align 4
  store i32 %84, ptr %300, align 4
  %313 = getelementptr inbounds %struct.waitid_info, ptr %300, i32 0, i32 1
  store i32 %91, ptr %313, align 4
  br label %506

314:                                              ; preds = %73
  %315 = icmp eq i32 %67, 0
  br i1 %315, label %321, label %316, !prof !12

316:                                              ; preds = %314
  %317 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, 12
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %329, label %321

321:                                              ; preds = %316, %314, %79, %66
  %322 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 7
  store i32 0, ptr %322, align 4
  %323 = icmp eq i32 %67, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = and i32 %326, 2
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %445, label %340

329:                                              ; preds = %321, %316
  %330 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  %331 = load volatile i32, ptr %330, align 8
  %332 = and i32 %331, 8
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %445, label %334

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 45
  %336 = load i32, ptr %335, align 4
  %337 = and i32 %336, 4194304
  %338 = icmp eq i32 %337, 0
  %339 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 42
  br i1 %338, label %347, label %445

340:                                              ; preds = %324
  %341 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %342 = load ptr, ptr %341, align 16
  %343 = getelementptr inbounds %struct.signal_struct, ptr %342, i32 0, i32 12
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %445, label %357

347:                                              ; preds = %334
  %348 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %349 = load ptr, ptr %348, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %349) #12
  %350 = load volatile i32, ptr %330, align 8
  %351 = and i32 %350, 8
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %386, label %353

353:                                              ; preds = %347
  %354 = load i32, ptr %335, align 4
  %355 = and i32 %354, 4194304
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %366, label %386

357:                                              ; preds = %340
  %358 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %359 = load ptr, ptr %358, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %359) #12
  %360 = load ptr, ptr %341, align 16
  %361 = getelementptr inbounds %struct.signal_struct, ptr %360, i32 0, i32 12
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 1
  %364 = icmp eq i32 %363, 0
  %365 = getelementptr inbounds %struct.signal_struct, ptr %360, i32 0, i32 8
  br i1 %364, label %386, label %366, !prof !75

366:                                              ; preds = %357, %353
  %367 = phi i1 [ false, %353 ], [ true, %357 ]
  %368 = phi ptr [ %339, %353 ], [ %365, %357 ]
  %369 = phi ptr [ %348, %353 ], [ %358, %357 ]
  %370 = load i32, ptr %368, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %386, label %372

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %374 = load i32, ptr %373, align 4
  %375 = and i32 %374, 16777216
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378, !prof !12

377:                                              ; preds = %372
  store i32 0, ptr %368, align 4
  br label %378

378:                                              ; preds = %377, %372
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %379 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %380 = load volatile ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.cred, ptr %380, i32 0, i32 1
  %382 = load i32, ptr %381, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %383 = icmp eq i32 %382, -1
  %384 = load i32, ptr @overflowuid, align 4
  %385 = select i1 %383, i32 %384, i32 %382
  br label %386

386:                                              ; preds = %378, %366, %357, %353, %347
  %387 = phi i1 [ %367, %378 ], [ %367, %366 ], [ false, %353 ], [ false, %347 ], [ true, %357 ]
  %388 = phi ptr [ %369, %378 ], [ %369, %366 ], [ %348, %353 ], [ %348, %347 ], [ %358, %357 ]
  %389 = phi i32 [ %385, %378 ], [ 0, %366 ], [ 0, %353 ], [ 0, %347 ], [ 0, %357 ]
  %390 = phi i32 [ %370, %378 ], [ 0, %366 ], [ 0, %353 ], [ 0, %347 ], [ 0, %357 ]
  %391 = load ptr, ptr %388, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %392 = load i16, ptr %391, align 4
  %393 = add i16 %392, 1
  store i16 %393, ptr %391, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  %394 = icmp eq i32 %390, 0
  br i1 %394, label %445, label %395

395:                                              ; preds = %386
  %396 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %396) #12, !srcloc !10
  %397 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %396, ptr %396, i32 1, ptr elementtype(i32) %396) #12, !srcloc !20
  %398 = extractvalue { i32, i32, i32 } %397, 0
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %404, label %400, !prof !21

400:                                              ; preds = %395
  %401 = add i32 %398, 1
  %402 = or i32 %401, %398
  %403 = icmp sgt i32 %402, -1
  br i1 %403, label %406, label %404, !prof !12

404:                                              ; preds = %400, %395
  %405 = phi i32 [ 2, %395 ], [ 1, %400 ]
  tail call void @refcount_warn_saturate(ptr noundef %396, i32 noundef %405) #12
  br label %406

406:                                              ; preds = %404, %400
  %407 = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #12
  %408 = select i1 %387, i32 5, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #12, !srcloc !10
  %409 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #12, !srcloc !35
  %410 = extractvalue { i32, i32 } %409, 0
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %406
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  br label %413

413:                                              ; preds = %412, %406
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %414 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 5
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %418, label %417

417:                                              ; preds = %413
  tail call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %415) #12
  br label %418

418:                                              ; preds = %417, %413
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %396) #12, !srcloc !10
  %419 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %396, ptr %396, i32 1, ptr elementtype(i32) %396) #12, !srcloc !11
  %420 = extractvalue { i32, i32, i32 } %419, 0
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %425, label %422

422:                                              ; preds = %418
  %423 = icmp sgt i32 %420, 0
  br i1 %423, label %426, label %424, !prof !12

424:                                              ; preds = %422
  tail call void @refcount_warn_saturate(ptr noundef %396, i32 noundef 3) #12
  br label %426

425:                                              ; preds = %418
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void @__put_task_struct(ptr noundef %2) #12
  br label %426

426:                                              ; preds = %425, %424, %422
  %427 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %428 = load i32, ptr %427, align 4
  %429 = and i32 %428, 16777216
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %435, !prof !12

431:                                              ; preds = %426
  %432 = shl i32 %390, 8
  %433 = or i32 %432, 127
  %434 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 4
  store i32 %433, ptr %434, align 4
  br label %435

435:                                              ; preds = %431, %426
  %436 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 3
  %437 = load ptr, ptr %436, align 4
  %438 = icmp eq ptr %437, null
  br i1 %438, label %443, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.waitid_info, ptr %437, i32 0, i32 3
  store i32 %408, ptr %440, align 4
  %441 = getelementptr inbounds %struct.waitid_info, ptr %437, i32 0, i32 2
  store i32 %390, ptr %441, align 4
  store i32 %407, ptr %437, align 4
  %442 = getelementptr inbounds %struct.waitid_info, ptr %437, i32 0, i32 1
  store i32 %389, ptr %442, align 4
  br label %443

443:                                              ; preds = %439, %435
  %444 = icmp eq i32 %407, 0
  br i1 %444, label %445, label %506

445:                                              ; preds = %443, %386, %340, %334, %329, %324
  %446 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 1
  %447 = load i32, ptr %446, align 4
  %448 = and i32 %447, 8
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %506, label %450, !prof !12

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %452 = load ptr, ptr %451, align 16
  %453 = getelementptr inbounds %struct.signal_struct, ptr %452, i32 0, i32 12
  %454 = load i32, ptr %453, align 8
  %455 = and i32 %454, 2
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %506, label %457

457:                                              ; preds = %450
  %458 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %459 = load ptr, ptr %458, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %459) #12
  %460 = load ptr, ptr %451, align 16
  %461 = getelementptr inbounds %struct.signal_struct, ptr %460, i32 0, i32 12
  %462 = load i32, ptr %461, align 8
  %463 = and i32 %462, 2
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %457
  %466 = load ptr, ptr %458, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %467 = load i16, ptr %466, align 4
  %468 = add i16 %467, 1
  store i16 %468, ptr %466, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  br label %506

469:                                              ; preds = %457
  %470 = load i32, ptr %446, align 4
  %471 = and i32 %470, 16777216
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %475, !prof !12

473:                                              ; preds = %469
  %474 = and i32 %462, -3
  store i32 %474, ptr %461, align 8
  br label %475

475:                                              ; preds = %473, %469
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %476 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %477 = load volatile ptr, ptr %476, align 4
  %478 = getelementptr inbounds %struct.cred, ptr %477, i32 0, i32 1
  %479 = load i32, ptr %478, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %480 = icmp eq i32 %479, -1
  %481 = load i32, ptr @overflowuid, align 4
  %482 = select i1 %480, i32 %481, i32 %479
  %483 = load ptr, ptr %458, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %484 = load i16, ptr %483, align 4
  %485 = add i16 %484, 1
  store i16 %485, ptr %483, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  %486 = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #12
  tail call fastcc void @get_task_struct(ptr noundef %2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #12, !srcloc !10
  %487 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #12, !srcloc !35
  %488 = extractvalue { i32, i32 } %487, 0
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %475
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  br label %491

491:                                              ; preds = %490, %475
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %492 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 5
  %493 = load ptr, ptr %492, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %496, label %495

495:                                              ; preds = %491
  tail call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %493) #12
  br label %496

496:                                              ; preds = %495, %491
  tail call fastcc void @put_task_struct(ptr noundef %2) #12
  %497 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 3
  %498 = load ptr, ptr %497, align 4
  %499 = icmp eq ptr %498, null
  br i1 %499, label %500, label %502

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.wait_opts, ptr %0, i32 0, i32 4
  store i32 65535, ptr %501, align 4
  br label %506

502:                                              ; preds = %496
  %503 = getelementptr inbounds %struct.waitid_info, ptr %498, i32 0, i32 3
  store i32 6, ptr %503, align 4
  store i32 %486, ptr %498, align 4
  %504 = getelementptr inbounds %struct.waitid_info, ptr %498, i32 0, i32 1
  store i32 %482, ptr %504, align 4
  %505 = getelementptr inbounds %struct.waitid_info, ptr %498, i32 0, i32 2
  store i32 18, ptr %505, align 4
  br label %506

506:                                              ; preds = %502, %500, %465, %450, %445, %443, %302, %297, %141, %83, %48, %47, %42, %3
  %507 = phi i32 [ 0, %3 ], [ 0, %42 ], [ 0, %48 ], [ 0, %47 ], [ %407, %443 ], [ 0, %83 ], [ 0, %141 ], [ %84, %302 ], [ %84, %297 ], [ 0, %465 ], [ 0, %445 ], [ 0, %450 ], [ %486, %502 ], [ %486, %500 ]
  ret i32 %507
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_task_struct(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !20
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !21

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !12

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #12
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @getrusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }

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
!9 = !{i64 2148487920}
!10 = !{i64 884854, i64 2148374825, i64 2148374851, i64 2148374898, i64 2148374920, i64 2148374948, i64 2148374968}
!11 = !{i64 2148390055, i64 2148390087, i64 2148390116, i64 2148390150, i64 2148390181, i64 2148390204}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149401272}
!14 = !{i64 2155573936}
!15 = !{i64 2155574086}
!16 = !{i64 2149450692}
!17 = !{i64 2149450909}
!18 = !{i64 2153192729, i64 2153193216, i64 2153192766, i64 2153192822, i64 2153192856, i64 2153192880, i64 2153192921, i64 2153192942, i64 2153192970, i64 2153193004}
!19 = !{i64 2153193794, i64 2153194281, i64 2153193831, i64 2153193887, i64 2153193921, i64 2153193945, i64 2153193986, i64 2153194007, i64 2153194035, i64 2153194069}
!20 = !{i64 2148387698, i64 2148387730, i64 2148387759, i64 2148387793, i64 2148387824, i64 2148387847}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2149295024}
!23 = !{i64 809232}
!24 = !{i64 2149295325}
!25 = !{i64 2149051920}
!26 = !{i64 2149047744}
!27 = !{i64 2149047819, i64 2149047846, i64 2149047893, i64 2149047915, i64 2149047943, i64 2149047963}
!28 = !{i64 2149074923}
!29 = !{i64 2149058997}
!30 = !{i64 1562211}
!31 = !{i64 790777}
!32 = !{i64 2149100614}
!33 = !{i64 2156114557}
!34 = !{i64 2149059802}
!35 = !{i64 1563226, i64 1563249, i64 1563269, i64 1563293, i64 1563309}
!36 = !{i64 2149097405}
!37 = !{!"branch_weights", i32 2146410443, i32 1073205}
!38 = !{i64 2149076064}
!39 = !{!"auto-init"}
!40 = !{i64 2156169303}
!41 = !{i64 893504, i64 893521, i64 893545, i64 893571, i64 893589}
!42 = !{i64 2156169624}
!43 = !{i64 2148486919}
!44 = !{i64 2148389281, i64 2148389313, i64 2148389342, i64 2148389376, i64 2148389407, i64 2148389430}
!45 = !{i64 2148487122}
!46 = !{i64 2156172460}
!47 = !{i64 2153146641}
!48 = !{i64 2155589984}
!49 = !{i64 2155590134}
!50 = !{i64 2153162286, i64 2153162779, i64 2153162323, i64 2153162379, i64 2153162413, i64 2153162437, i64 2153162478, i64 2153162499, i64 2153162527, i64 2153162561}
!51 = !{i64 2156274012, i64 2156274490, i64 2156274049, i64 2156274105, i64 2156274139, i64 2156274163, i64 2156274204, i64 2156274225, i64 2156274253, i64 2156274287}
!52 = !{i64 2156281027}
!53 = !{i64 2148386240, i64 2148386266, i64 2148386295, i64 2148386329, i64 2148386360, i64 2148386383}
!54 = !{i64 2156175395, i64 2156175873, i64 2156175432, i64 2156175488, i64 2156175522, i64 2156175546, i64 2156175587, i64 2156175608, i64 2156175636, i64 2156175670}
!55 = !{i64 790967}
!56 = !{i64 2151546661, i64 2151546686}
!57 = !{i64 4042195}
!58 = !{i64 4042392}
!59 = !{i64 2151527671}
!60 = !{i64 2156353774, i64 2156353799}
!61 = !{i64 2156372409, i64 2156372719, i64 2156373033, i64 2156373347}
!62 = !{i64 2156393188, i64 2156393498, i64 2156393812, i64 2156394126}
!63 = !{i64 2156414006, i64 2156414316, i64 2156414630, i64 2156414944}
!64 = !{i64 2156435043, i64 2156435353, i64 2156435667, i64 2156435981}
!65 = !{i64 2156456080, i64 2156456390, i64 2156456704, i64 2156457018}
!66 = !{i64 2156477231, i64 2156477541, i64 2156477855, i64 2156478169}
!67 = !{i64 2156485448, i64 2156485728, i64 2156486062, i64 2156486396}
!68 = !{i64 2155625799}
!69 = !{i64 2155625953}
!70 = !{i64 2156334666}
!71 = !{i64 2156505288, i64 2156505767, i64 2156505325, i64 2156505381, i64 2156505415, i64 2156505439, i64 2156505480, i64 2156505501, i64 2156505529, i64 2156505563}
!72 = !{i64 2156301995}
!73 = !{i64 896228, i64 896249, i64 896272, i64 896291, i64 896310}
!74 = !{i64 2156302379}
!75 = !{!"branch_weights", i32 2002, i32 2000}
