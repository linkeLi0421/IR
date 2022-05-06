; ModuleID = '/llk/IR/kernel/sys.c_pt.bc'
source_filename = "../kernel/sys.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22overflowuid\22\09\09\09\09\09"
module asm "__kstrtabns_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22overflowgid\22\09\09\09\09\09"
module asm "__kstrtabns_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_overflowuid\22\09\09\09\09\09"
module asm "__kstrtabns_fs_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_overflowgid\22\09\09\09\09\09"
module asm "__kstrtabns_fs_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kuid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.12 = type { %struct.callback_head }
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
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.tms = type { i32, i32, i32, i32 }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rlimit64 = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.14 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.21, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }

@overflowuid = dso_local global i32 65534, align 4
@overflowgid = dso_local global i32 65534, align 4
@__kstrtab_overflowuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_overflowuid = external dso_local constant [0 x i8], align 1
@__ksymtab_overflowuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @overflowuid to i32), ptr @__kstrtab_overflowuid, ptr @__kstrtabns_overflowuid }, section "___ksymtab+overflowuid", align 4
@__kstrtab_overflowgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_overflowgid = external dso_local constant [0 x i8], align 1
@__ksymtab_overflowgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @overflowgid to i32), ptr @__kstrtab_overflowgid, ptr @__kstrtabns_overflowgid }, section "___ksymtab+overflowgid", align 4
@fs_overflowuid = dso_local global i32 65534, align 4
@fs_overflowgid = dso_local global i32 65534, align 4
@__kstrtab_fs_overflowuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_overflowuid = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_overflowuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_overflowuid to i32), ptr @__kstrtab_fs_overflowuid, ptr @__kstrtabns_fs_overflowuid }, section "___ksymtab+fs_overflowuid", align 4
@__kstrtab_fs_overflowgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_overflowgid = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_overflowgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_overflowgid to i32), ptr @__kstrtab_fs_overflowgid, ptr @__kstrtabns_fs_overflowgid }, section "___ksymtab+fs_overflowgid", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@uts_sem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uts_sem, i64 16), ptr getelementptr (i8, ptr @uts_sem, i64 16) } }, align 4
@sysctl_nr_open = external dso_local local_unnamed_addr global i32, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@root_user = external dso_local global %struct.user_struct, align 8
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"5.17.0\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"2.6.%u%s\00", align 1
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_fs_overflowgid, ptr @__ksymtab_fs_overflowuid, ptr @__ksymtab_overflowgid, ptr @__ksymtab_overflowuid], section "llvm.metadata"

@sys_setpriority = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_setpriority
@sys_getpriority = dso_local alias i32 (i32, i32), ptr @__se_sys_getpriority
@sys_setregid = dso_local alias i32 (i32, i32), ptr @__se_sys_setregid
@sys_setgid = dso_local alias i32 (i32), ptr @__se_sys_setgid
@sys_setreuid = dso_local alias i32 (i32, i32), ptr @__se_sys_setreuid
@sys_setuid = dso_local alias i32 (i32), ptr @__se_sys_setuid
@sys_setresuid = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_setresuid
@sys_getresuid = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresuid
@sys_setresgid = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_setresgid
@sys_getresgid = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresgid
@sys_setfsuid = dso_local alias i32 (i32), ptr @__se_sys_setfsuid
@sys_setfsgid = dso_local alias i32 (i32), ptr @__se_sys_setfsgid
@sys_times = dso_local alias i32 (ptr), ptr @__se_sys_times
@sys_setpgid = dso_local alias i32 (i32, i32), ptr @__se_sys_setpgid
@sys_getpgid = dso_local alias i32 (i32), ptr @__se_sys_getpgid
@sys_getsid = dso_local alias i32 (i32), ptr @__se_sys_getsid
@sys_newuname = dso_local alias i32 (ptr), ptr @__se_sys_newuname
@sys_sethostname = dso_local alias i32 (ptr, i32), ptr @__se_sys_sethostname
@sys_gethostname = dso_local alias i32 (ptr, i32), ptr @__se_sys_gethostname
@sys_setdomainname = dso_local alias i32 (ptr, i32), ptr @__se_sys_setdomainname
@sys_getrlimit = dso_local alias i32 (i32, ptr), ptr @__se_sys_getrlimit
@sys_prlimit64 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_prlimit64
@sys_setrlimit = dso_local alias i32 (i32, ptr), ptr @__se_sys_setrlimit
@sys_getrusage = dso_local alias i32 (i32, ptr), ptr @__se_sys_getrusage
@sys_umask = dso_local alias i32 (i32), ptr @__se_sys_umask
@sys_prctl = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_prctl
@sys_getcpu = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getcpu
@sys_sysinfo = dso_local alias i32 (ptr), ptr @__se_sys_sysinfo

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setpriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ugt i32 %0, 2
  br i1 %7, label %156, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @llvm.smax.i32(i32 %2, i32 -20) #10
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 19) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  switch i32 %0, label %154 [
    i32 0, label %11
    i32 1, label %47
    i32 2, label %98
  ]

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @find_task_by_vpid(i32 noundef %1) #10
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %4, %11 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %154, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 82
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 5
  %24 = load i32, ptr %22, align 4
  %25 = load i32, ptr %23, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %25
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 21
  %33 = load ptr, ptr %32, align 4
  %34 = tail call zeroext i1 @ns_capable(ptr noundef %33, i32 noundef 23) #10
  br i1 %34, label %35, label %154

35:                                               ; preds = %31, %27, %18
  %36 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -120
  %39 = icmp sgt i32 %38, %10
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = tail call i32 @can_nice(ptr noundef nonnull %16, i32 noundef %10) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %154, label %43

43:                                               ; preds = %40, %35
  %44 = tail call i32 @cap_task_setnice(ptr noundef nonnull %16, i32 noundef %10) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %154

46:                                               ; preds = %43
  tail call void @set_user_nice(ptr noundef nonnull %16, i32 noundef %10) #10
  br label %154

47:                                               ; preds = %8
  %48 = icmp eq i32 %1, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = tail call ptr @find_vpid(i32 noundef %1) #10
  br label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %53 = load ptr, ptr %52, align 16
  %54 = getelementptr %struct.signal_struct, ptr %53, i32 0, i32 22, i32 2
  %55 = load ptr, ptr %54, align 8
  br label %56

56:                                               ; preds = %51, %49
  %57 = phi ptr [ %50, %49 ], [ %55, %51 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = getelementptr %struct.pid, ptr %57, i32 0, i32 3, i32 2
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = getelementptr i8, ptr %61, i32 -1364
  %64 = icmp eq ptr %63, null
  %65 = or i1 %62, %64
  br i1 %65, label %91, label %66

66:                                               ; preds = %83, %59
  %67 = phi ptr [ %88, %83 ], [ %63, %59 ]
  %68 = phi i32 [ %84, %83 ], [ -3, %59 ]
  %69 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 93
  %70 = load ptr, ptr %69, align 16
  %71 = getelementptr inbounds %struct.signal_struct, ptr %70, i32 0, i32 3
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %83, label %74

74:                                               ; preds = %74, %66
  %75 = phi ptr [ %79, %74 ], [ %72, %66 ]
  %76 = phi i32 [ %78, %74 ], [ %68, %66 ]
  %77 = getelementptr i8, ptr %75, i32 -1388
  %78 = tail call fastcc i32 @set_one_prio(ptr noundef %77, i32 noundef %10, i32 noundef %76) #10
  %79 = load volatile ptr, ptr %75, align 4
  %80 = load ptr, ptr %69, align 16
  %81 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 3
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %83, label %74

83:                                               ; preds = %74, %66
  %84 = phi i32 [ %68, %66 ], [ %78, %74 ]
  %85 = getelementptr %struct.task_struct, ptr %67, i32 0, i32 63, i32 2
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  %88 = getelementptr i8, ptr %86, i32 -1364
  %89 = icmp eq ptr %88, null
  %90 = or i1 %87, %89
  br i1 %90, label %91, label %66

91:                                               ; preds = %83, %59, %56
  %92 = phi i32 [ -3, %56 ], [ -3, %59 ], [ %84, %83 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #10, !srcloc !10
  %93 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #10, !srcloc !11
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  br label %97

97:                                               ; preds = %96, %91
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %154

98:                                               ; preds = %8
  %99 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 20
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq i32 %1, 0
  %102 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  br i1 %101, label %110, label %104

104:                                              ; preds = %98
  %105 = icmp eq i32 %103, %1
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = insertvalue [1 x i32] poison, i32 %1, 0
  %108 = tail call ptr @find_user([1 x i32] %107) #10
  %109 = icmp eq ptr %108, null
  br i1 %109, label %154, label %110

110:                                              ; preds = %106, %104, %98
  %111 = phi i32 [ %1, %104 ], [ %1, %106 ], [ %103, %98 ]
  %112 = phi ptr [ %100, %104 ], [ %108, %106 ], [ %100, %98 ]
  %113 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %114 = getelementptr i8, ptr %113, i32 -1116
  %115 = icmp eq ptr %114, @init_task
  br i1 %115, label %149, label %121

116:                                              ; preds = %143, %121
  %117 = phi i32 [ %123, %121 ], [ %144, %143 ]
  %118 = load volatile ptr, ptr %122, align 4
  %119 = getelementptr i8, ptr %118, i32 -1116
  %120 = icmp eq ptr %119, @init_task
  br i1 %120, label %149, label %121

121:                                              ; preds = %116, %110
  %122 = phi ptr [ %118, %116 ], [ %113, %110 ]
  %123 = phi i32 [ %117, %116 ], [ -3, %110 ]
  %124 = getelementptr i8, ptr %122, i32 500
  %125 = load ptr, ptr %124, align 16
  %126 = getelementptr inbounds %struct.signal_struct, ptr %125, i32 0, i32 3
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %116, label %129

129:                                              ; preds = %143, %121
  %130 = phi ptr [ %145, %143 ], [ %127, %121 ]
  %131 = phi i32 [ %144, %143 ], [ %123, %121 ]
  %132 = getelementptr i8, ptr %130, i32 -1388
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %133 = getelementptr i8, ptr %130, i32 168
  %134 = load volatile ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.cred, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %137 = icmp eq i32 %136, %111
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = tail call i32 @__task_pid_nr_ns(ptr noundef %132, i32 noundef 0, ptr noundef null) #10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = tail call fastcc i32 @set_one_prio(ptr noundef %132, i32 noundef %10, i32 noundef %131) #10
  br label %143

143:                                              ; preds = %141, %138, %129
  %144 = phi i32 [ %142, %141 ], [ %131, %138 ], [ %131, %129 ]
  %145 = load volatile ptr, ptr %130, align 4
  %146 = load ptr, ptr %124, align 16
  %147 = getelementptr inbounds %struct.signal_struct, ptr %146, i32 0, i32 3
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %116, label %129

149:                                              ; preds = %116, %110
  %150 = phi i32 [ -3, %110 ], [ %117, %116 ]
  %151 = load i32, ptr %102, align 4
  %152 = icmp eq i32 %111, %151
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  tail call void @free_uid(ptr noundef %112) #10
  br label %154

154:                                              ; preds = %153, %149, %106, %97, %46, %43, %40, %31, %15, %8
  %155 = phi i32 [ -3, %8 ], [ %150, %149 ], [ %150, %153 ], [ -3, %106 ], [ %92, %97 ], [ -3, %15 ], [ 0, %46 ], [ -1, %31 ], [ -13, %40 ], [ %44, %43 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %156

156:                                              ; preds = %154, %3
  %157 = phi i32 [ -22, %3 ], [ %155, %154 ]
  ret i32 %157
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getpriority(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ugt i32 %0, 2
  br i1 %6, label %132, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  switch i32 %0, label %130 [
    i32 0, label %8
    i32 1, label %20
    i32 2, label %71
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @find_task_by_vpid(i32 noundef %1) #10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %3, %8 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %130, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 140, %17
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 -3) #10
  br label %130

20:                                               ; preds = %7
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @find_vpid(i32 noundef %1) #10
  br label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr %struct.signal_struct, ptr %26, i32 0, i32 22, i32 2
  %28 = load ptr, ptr %27, align 8
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi ptr [ %23, %22 ], [ %28, %24 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %29
  %33 = getelementptr %struct.pid, ptr %30, i32 0, i32 3, i32 2
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -1364
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %64, label %39

39:                                               ; preds = %56, %32
  %40 = phi ptr [ %61, %56 ], [ %36, %32 ]
  %41 = phi i32 [ %57, %56 ], [ -3, %32 ]
  %42 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 93
  %43 = load ptr, ptr %42, align 16
  %44 = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %56, label %47

47:                                               ; preds = %47, %39
  %48 = phi ptr [ %54, %47 ], [ %45, %39 ]
  %49 = phi i32 [ %53, %47 ], [ %41, %39 ]
  %50 = getelementptr i8, ptr %48, i32 -792
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 140, %51
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 %49) #10
  %54 = load volatile ptr, ptr %48, align 4
  %55 = icmp eq ptr %54, %44
  br i1 %55, label %56, label %47

56:                                               ; preds = %47, %39
  %57 = phi i32 [ %41, %39 ], [ %53, %47 ]
  %58 = getelementptr %struct.task_struct, ptr %40, i32 0, i32 63, i32 2
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  %61 = getelementptr i8, ptr %59, i32 -1364
  %62 = icmp eq ptr %61, null
  %63 = or i1 %60, %62
  br i1 %63, label %64, label %39

64:                                               ; preds = %56, %32, %29
  %65 = phi i32 [ -3, %29 ], [ -3, %32 ], [ %57, %56 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #10, !srcloc !10
  %66 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #10, !srcloc !11
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  br label %70

70:                                               ; preds = %69, %64
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %130

71:                                               ; preds = %7
  %72 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 20
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq i32 %1, 0
  %75 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  br i1 %74, label %83, label %77

77:                                               ; preds = %71
  %78 = icmp eq i32 %76, %1
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = insertvalue [1 x i32] poison, i32 %1, 0
  %81 = tail call ptr @find_user([1 x i32] %80) #10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %130, label %83

83:                                               ; preds = %79, %77, %71
  %84 = phi i32 [ %1, %77 ], [ %1, %79 ], [ %76, %71 ]
  %85 = phi ptr [ %73, %77 ], [ %81, %79 ], [ %73, %71 ]
  %86 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %87 = getelementptr i8, ptr %86, i32 -1116
  %88 = icmp eq ptr %87, @init_task
  br i1 %88, label %125, label %94

89:                                               ; preds = %119, %94
  %90 = phi i32 [ %96, %94 ], [ %120, %119 ]
  %91 = load volatile ptr, ptr %95, align 4
  %92 = getelementptr i8, ptr %91, i32 -1116
  %93 = icmp eq ptr %92, @init_task
  br i1 %93, label %125, label %94

94:                                               ; preds = %89, %83
  %95 = phi ptr [ %91, %89 ], [ %86, %83 ]
  %96 = phi i32 [ %90, %89 ], [ -3, %83 ]
  %97 = getelementptr i8, ptr %95, i32 500
  %98 = load ptr, ptr %97, align 16
  %99 = getelementptr inbounds %struct.signal_struct, ptr %98, i32 0, i32 3
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %89, label %102

102:                                              ; preds = %119, %94
  %103 = phi ptr [ %121, %119 ], [ %100, %94 ]
  %104 = phi i32 [ %120, %119 ], [ %96, %94 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %105 = getelementptr i8, ptr %103, i32 168
  %106 = load volatile ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.cred, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %109 = icmp eq i32 %108, %84
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = getelementptr i8, ptr %103, i32 -1388
  %112 = tail call i32 @__task_pid_nr_ns(ptr noundef %111, i32 noundef 0, ptr noundef null) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %103, i32 -792
  %116 = load i32, ptr %115, align 4
  %117 = sub i32 140, %116
  %118 = tail call i32 @llvm.smax.i32(i32 %117, i32 %104) #10
  br label %119

119:                                              ; preds = %114, %110, %102
  %120 = phi i32 [ %104, %110 ], [ %104, %102 ], [ %118, %114 ]
  %121 = load volatile ptr, ptr %103, align 4
  %122 = load ptr, ptr %97, align 16
  %123 = getelementptr inbounds %struct.signal_struct, ptr %122, i32 0, i32 3
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %89, label %102

125:                                              ; preds = %89, %83
  %126 = phi i32 [ -3, %83 ], [ %90, %89 ]
  %127 = load i32, ptr %75, align 4
  %128 = icmp eq i32 %84, %127
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @free_uid(ptr noundef %85) #10
  br label %130

130:                                              ; preds = %129, %125, %79, %70, %15, %12, %7
  %131 = phi i32 [ -3, %7 ], [ %126, %125 ], [ %126, %129 ], [ -3, %79 ], [ %65, %70 ], [ -3, %12 ], [ %19, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %132

132:                                              ; preds = %130, %2
  %133 = phi i32 [ %131, %130 ], [ -22, %2 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setregid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  %4 = icmp eq i32 %1, -1
  %5 = tail call ptr @prepare_creds() #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  br i1 %3, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i1 @ns_capable_setid(ptr noundef %21, i32 noundef 6) #10
  br i1 %22, label %27, label %60

23:                                               ; preds = %7
  br i1 %4, label %24, label %32

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  br label %56

27:                                               ; preds = %19, %15, %11
  %28 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 2
  store i32 %0, ptr %28, align 4
  br i1 %4, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  br label %53

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 21
  %46 = load ptr, ptr %45, align 4
  %47 = tail call zeroext i1 @ns_capable_setid(ptr noundef %46, i32 noundef 6) #10
  br i1 %47, label %48, label %60

48:                                               ; preds = %44, %40, %36, %32
  %49 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  store i32 %1, ptr %49, align 4
  br i1 %3, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, ptr %33, align 4
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %48, %29
  %54 = phi i32 [ %31, %29 ], [ %1, %48 ], [ %1, %50 ]
  %55 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %50, %24
  %57 = phi i32 [ %26, %24 ], [ %54, %53 ], [ %1, %50 ]
  %58 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  store i32 %57, ptr %58, align 4
  %59 = tail call i32 @commit_creds(ptr noundef nonnull %5) #10
  br label %61

60:                                               ; preds = %44, %19
  tail call void @abort_creds(ptr noundef nonnull %5) #10
  br label %61

61:                                               ; preds = %60, %56, %2
  %62 = phi i32 [ -1, %60 ], [ %59, %56 ], [ -12, %2 ]
  ret i32 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_setid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setregid(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__sys_setregid(i32 noundef %0, i32 noundef %1) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setgid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, -1
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @prepare_creds() #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @ns_capable_setid(ptr noundef %11, i32 noundef 6) #10
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  store i32 %0, ptr %17, align 4
  store i32 %0, ptr %16, align 4
  br label %29

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %28 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  br label %29

29:                                               ; preds = %26, %13
  %30 = phi ptr [ %28, %26 ], [ %15, %13 ]
  %31 = phi ptr [ %27, %26 ], [ %14, %13 ]
  store i32 %0, ptr %30, align 4
  store i32 %0, ptr %31, align 4
  %32 = tail call i32 @commit_creds(ptr noundef nonnull %4) #10
  br label %34

33:                                               ; preds = %22
  tail call void @abort_creds(ptr noundef nonnull %4) #10
  br label %34

34:                                               ; preds = %33, %29, %3, %1
  %35 = phi i32 [ -1, %33 ], [ %32, %29 ], [ -22, %1 ], [ -12, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgid(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, -1
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @prepare_creds() #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @ns_capable_setid(ptr noundef %11, i32 noundef 6) #10
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  store i32 %0, ptr %17, align 4
  store i32 %0, ptr %16, align 4
  br label %29

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %28 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  br label %29

29:                                               ; preds = %26, %13
  %30 = phi ptr [ %28, %26 ], [ %15, %13 ]
  %31 = phi ptr [ %27, %26 ], [ %14, %13 ]
  store i32 %0, ptr %30, align 4
  store i32 %0, ptr %31, align 4
  %32 = tail call i32 @commit_creds(ptr noundef nonnull %4) #10
  br label %34

33:                                               ; preds = %22
  tail call void @abort_creds(ptr noundef nonnull %4) #10
  br label %34

34:                                               ; preds = %33, %29, %3, %1
  %35 = phi i32 [ -1, %33 ], [ %32, %29 ], [ -22, %1 ], [ -12, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setreuid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  %4 = icmp eq i32 %1, -1
  %5 = tail call ptr @prepare_creds() #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %102, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  br i1 %3, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  store i32 %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @ns_capable_setid(ptr noundef %22, i32 noundef 7) #10
  br i1 %23, label %24, label %100

24:                                               ; preds = %20, %16, %11, %7
  br i1 %4, label %42, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  store i32 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 21
  %40 = load ptr, ptr %39, align 4
  %41 = tail call zeroext i1 @ns_capable_setid(ptr noundef %40, i32 noundef 7) #10
  br i1 %41, label %42, label %100

42:                                               ; preds = %38, %34, %30, %25, %24
  %43 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 1
  %45 = load i32, ptr %43, align 4
  %46 = load i32, ptr %44, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = insertvalue [1 x i32] undef, i32 %45, 0
  %50 = tail call ptr @alloc_uid([1 x i32] %49) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %100, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 20
  %54 = load ptr, ptr %53, align 4
  tail call void @free_uid(ptr noundef %54) #10
  store ptr %50, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %42
  br i1 %3, label %56, label %60

56:                                               ; preds = %55
  br i1 %4, label %64, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %44, align 4
  %59 = icmp eq i32 %58, %1
  br i1 %59, label %64, label %60

60:                                               ; preds = %57, %55
  %61 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 3
  %62 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %57, %56
  %65 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7
  %66 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %65, align 4
  %68 = tail call i32 @cap_task_fix_setuid(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 2) #10
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %64
  %71 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %5) #10
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 22
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %9, align 8
  %77 = getelementptr inbounds %struct.cred, ptr %76, i32 0, i32 22
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %75, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %82 = load ptr, ptr %81, align 16
  %83 = getelementptr %struct.signal_struct, ptr %82, i32 0, i32 50, i32 6
  %84 = load volatile i32, ptr %83, align 8
  %85 = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %75, i32 noundef 10, i32 noundef %84) #10
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 20
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, @root_user
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 4096
  store i32 %93, ptr %91, align 4
  br label %98

94:                                               ; preds = %86, %80
  %95 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, -4097
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %94, %90, %73
  %99 = tail call i32 @commit_creds(ptr noundef nonnull %5) #10
  br label %102

100:                                              ; preds = %70, %64, %48, %38, %20
  %101 = phi i32 [ %68, %64 ], [ %71, %70 ], [ -1, %38 ], [ -1, %20 ], [ -11, %48 ]
  tail call void @abort_creds(ptr noundef nonnull %5) #10
  br label %102

102:                                              ; preds = %100, %98, %2
  %103 = phi i32 [ %101, %100 ], [ %99, %98 ], [ -12, %2 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setreuid(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__sys_setreuid(i32 noundef %0, i32 noundef %1) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setuid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, -1
  br i1 %2, label %71, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @prepare_creds() #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @ns_capable_setid(ptr noundef %11, i32 noundef 7) #10
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 1
  store i32 %0, ptr %15, align 4
  store i32 %0, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = insertvalue [1 x i32] undef, i32 %0, 0
  %21 = tail call ptr @alloc_uid([1 x i32] %20) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  tail call void @free_uid(ptr noundef %25) #10
  store ptr %21, ptr %24, align 4
  br label %34

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %69

34:                                               ; preds = %30, %26, %23, %13
  %35 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %36 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 5
  store i32 %0, ptr %36, align 4
  store i32 %0, ptr %35, align 4
  %37 = tail call i32 @cap_task_fix_setuid(ptr noundef nonnull %4, ptr noundef %9, i32 noundef 1) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %4) #10
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 22
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds %struct.cred, ptr %45, i32 0, i32 22
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %51 = load ptr, ptr %50, align 16
  %52 = getelementptr %struct.signal_struct, ptr %51, i32 0, i32 50, i32 6
  %53 = load volatile i32, ptr %52, align 8
  %54 = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %44, i32 noundef 10, i32 noundef %53) #10
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 20
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, @root_user
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 4096
  store i32 %62, ptr %60, align 4
  br label %67

63:                                               ; preds = %55, %49
  %64 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -4097
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %59, %42
  %68 = tail call i32 @commit_creds(ptr noundef nonnull %4) #10
  br label %71

69:                                               ; preds = %39, %34, %30, %19
  %70 = phi i32 [ %37, %34 ], [ %40, %39 ], [ -1, %30 ], [ -11, %19 ]
  tail call void @abort_creds(ptr noundef nonnull %4) #10
  br label %71

71:                                               ; preds = %69, %67, %3, %1
  %72 = phi i32 [ %70, %69 ], [ %68, %67 ], [ -22, %1 ], [ -12, %3 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setuid(i32 noundef %0) #0 {
  %2 = tail call i32 @__sys_setuid(i32 noundef %0) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setresuid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, -1
  %5 = icmp eq i32 %1, -1
  %6 = icmp eq i32 %2, -1
  %7 = tail call ptr @prepare_creds() #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %112, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 83
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @ns_capable_setid(ptr noundef %14, i32 noundef 7) #10
  br i1 %15, label %55, label %16

16:                                               ; preds = %9
  br i1 %4, label %29, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %0
  br i1 %28, label %29, label %110

29:                                               ; preds = %25, %21, %17, %16
  br i1 %5, label %42, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %110

42:                                               ; preds = %38, %34, %30, %29
  br i1 %6, label %55, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %55, label %110

55:                                               ; preds = %51, %47, %43, %42, %9
  br i1 %4, label %68, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 1
  store i32 %0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = insertvalue [1 x i32] undef, i32 %0, 0
  %63 = tail call ptr @alloc_uid([1 x i32] %62) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %110, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 20
  %67 = load ptr, ptr %66, align 4
  tail call void @free_uid(ptr noundef %67) #10
  store ptr %63, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %56, %55
  br i1 %5, label %71, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 5
  store i32 %1, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %68
  br i1 %6, label %74, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 3
  store i32 %2, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 7
  %76 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %75, align 4
  %78 = tail call i32 @cap_task_fix_setuid(ptr noundef nonnull %7, ptr noundef %12, i32 noundef 4) #10
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %74
  %81 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %7) #10
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %110, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 22
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %11, align 8
  %87 = getelementptr inbounds %struct.cred, ptr %86, i32 0, i32 22
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %85, %88
  br i1 %89, label %108, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %92 = load ptr, ptr %91, align 16
  %93 = getelementptr %struct.signal_struct, ptr %92, i32 0, i32 50, i32 6
  %94 = load volatile i32, ptr %93, align 8
  %95 = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %85, i32 noundef 10, i32 noundef %94) #10
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 20
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, @root_user
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %102, 4096
  store i32 %103, ptr %101, align 4
  br label %108

104:                                              ; preds = %96, %90
  %105 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, -4097
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %100, %83
  %109 = tail call i32 @commit_creds(ptr noundef nonnull %7) #10
  br label %112

110:                                              ; preds = %80, %74, %61, %51, %38, %25
  %111 = phi i32 [ %78, %74 ], [ %81, %80 ], [ -1, %51 ], [ -1, %38 ], [ -1, %25 ], [ -11, %61 ]
  tail call void @abort_creds(ptr noundef nonnull %7) #10
  br label %112

112:                                              ; preds = %110, %108, %3
  %113 = phi i32 [ %111, %110 ], [ %109, %108 ], [ -12, %3 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresuid(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__sys_setresuid(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresuid(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = load i32, ptr @overflowuid, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  %19 = select i1 %18, i32 %12, i32 %17
  %20 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %13, i32 -1090519041) #10, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = inttoptr i32 %1 to ptr
  %28 = icmp eq i32 %15, -1
  %29 = select i1 %28, i32 %12, i32 %15
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i32 %29, i32 -1090519041) #10, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 %19, i32 -1090519041) #10, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %40

40:                                               ; preds = %35, %26, %3
  %41 = phi i32 [ %39, %35 ], [ %24, %3 ], [ %33, %26 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setresgid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, -1
  %5 = icmp eq i32 %1, -1
  %6 = icmp eq i32 %2, -1
  %7 = tail call ptr @prepare_creds() #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 83
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @ns_capable_setid(ptr noundef %14, i32 noundef 6) #10
  br i1 %15, label %55, label %16

16:                                               ; preds = %9
  br i1 %4, label %29, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %0
  br i1 %28, label %29, label %69

29:                                               ; preds = %25, %21, %17, %16
  br i1 %5, label %42, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %69

42:                                               ; preds = %38, %34, %30, %29
  br i1 %6, label %55, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %55, label %69

55:                                               ; preds = %51, %47, %43, %42, %9
  br i1 %4, label %58, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 2
  store i32 %0, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %55
  br i1 %5, label %61, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 6
  store i32 %1, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %58
  br i1 %6, label %64, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  store i32 %2, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %66 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %65, align 4
  %68 = tail call i32 @commit_creds(ptr noundef nonnull %7) #10
  br label %70

69:                                               ; preds = %51, %38, %25
  tail call void @abort_creds(ptr noundef nonnull %7) #10
  br label %70

70:                                               ; preds = %69, %64, %3
  %71 = phi i32 [ -1, %69 ], [ %68, %64 ], [ -12, %3 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresgid(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__sys_setresgid(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresgid(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = load i32, ptr @overflowgid, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  %19 = select i1 %18, i32 %12, i32 %17
  %20 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %13, i32 -1090519041) #10, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = inttoptr i32 %1 to ptr
  %28 = icmp eq i32 %15, -1
  %29 = select i1 %28, i32 %12, i32 %15
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i32 %29, i32 -1090519041) #10, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 %19, i32 -1090519041) #10, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %40

40:                                               ; preds = %35, %26, %3
  %41 = phi i32 [ %24, %3 ], [ %33, %26 ], [ %39, %35 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setfsuid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 21
  %6 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @overflowuid, align 4
  %9 = icmp eq i32 %0, -1
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @prepare_creds() #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 4
  %27 = icmp eq i32 %26, %0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 4
  %30 = tail call zeroext i1 @ns_capable_setid(ptr noundef %29, i32 noundef 7) #10
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %25, %21, %17, %13
  %32 = load i32, ptr %6, align 4
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  store i32 %0, ptr %35, align 4
  %36 = tail call i32 @cap_task_fix_setuid(ptr noundef nonnull %11, ptr noundef %4, i32 noundef 8) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %31, %28
  tail call void @abort_creds(ptr noundef nonnull %11) #10
  br label %41

39:                                               ; preds = %34
  %40 = tail call i32 @commit_creds(ptr noundef nonnull %11) #10
  br label %41

41:                                               ; preds = %39, %38, %10, %1
  %42 = icmp eq i32 %7, -1
  %43 = select i1 %42, i32 %8, i32 %7
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsuid(i32 noundef %0) #0 {
  %2 = tail call i32 @__sys_setfsuid(i32 noundef %0) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sys_setfsgid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 21
  %6 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @overflowgid, align 4
  %9 = icmp eq i32 %0, -1
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @prepare_creds() #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 4
  %27 = icmp eq i32 %26, %0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 4
  %30 = tail call zeroext i1 @ns_capable_setid(ptr noundef %29, i32 noundef 6) #10
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %25, %21, %17, %13
  %32 = load i32, ptr %6, align 4
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 8
  store i32 %0, ptr %35, align 4
  %36 = tail call i32 @commit_creds(ptr noundef nonnull %11) #10
  br label %38

37:                                               ; preds = %31, %28
  tail call void @abort_creds(ptr noundef nonnull %11) #10
  br label %38

38:                                               ; preds = %37, %34, %10, %1
  %39 = icmp eq i32 %7, -1
  %40 = select i1 %39, i32 %8, i32 %7
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsgid(i32 noundef %0) #0 {
  %2 = tail call i32 @__sys_setfsgid(i32 noundef %0) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_getpid() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = tail call i32 @__task_pid_nr_ns(ptr noundef %1, i32 noundef 1, ptr noundef null) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_gettid() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = tail call i32 @__task_pid_nr_ns(ptr noundef %1, i32 noundef 0, ptr noundef null) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_getppid() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 55
  %3 = load volatile ptr, ptr %2, align 4
  %4 = tail call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 1, ptr noundef null) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_getuid() local_unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowuid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_geteuid() local_unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowuid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_getgid() local_unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowgid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sys_getegid() local_unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  %7 = load i32, ptr @overflowgid, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_times(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tms, align 4
  %5 = inttoptr i32 %0 to ptr
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8, !annotation !25
  %8 = tail call ptr @llvm.thread.pointer() #10
  call void @thread_group_cputime_adjusted(ptr noundef %8, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 29
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 30
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %2, align 8
  %16 = call i64 @nsec_to_clock_t(i64 noundef %15) #10
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %4, align 4
  %18 = load i64, ptr %3, align 8
  %19 = call i64 @nsec_to_clock_t(i64 noundef %18) #10
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.tms, ptr %4, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = call i64 @nsec_to_clock_t(i64 noundef %12) #10
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.tms, ptr %4, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = call i64 @nsec_to_clock_t(i64 noundef %14) #10
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.tms, ptr %4, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %5, i32 16, i32 -1090519040) #12, !srcloc !26
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %43

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #11, !srcloc !16
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %37 = call i32 @arm_copy_to_user(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %38 = icmp eq i32 %37, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br i1 %38, label %39, label %43

39:                                               ; preds = %32, %1
  %40 = call i64 @get_jiffies_64() #10
  %41 = call i64 @jiffies_64_to_clock_t(i64 noundef %40) #10
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %39, %32, %31
  %44 = phi i32 [ -14, %32 ], [ %42, %39 ], [ -14, %31 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setpgid(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef null) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %0, %2 ], [ %8, %7 ]
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, i32 %10, i32 %1
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %78, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #10
  %15 = tail call ptr @find_task_by_vpid(i32 noundef %10) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 43
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 55
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 93
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %27 = load ptr, ptr %26, align 16
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 22, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 22, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %76, label %44

42:                                               ; preds = %21
  %43 = icmp eq ptr %15, %5
  br i1 %43, label %44, label %76

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %31, %37 ], [ %27, %42 ]
  %46 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %47 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 24
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 62
  %52 = load ptr, ptr %51, align 64
  %53 = icmp eq i32 %12, %10
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @find_vpid(i32 noundef %12) #10
  %56 = tail call ptr @pid_task(ptr noundef %55, i32 noundef 2) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %76, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 93
  %60 = load ptr, ptr %59, align 16
  %61 = getelementptr %struct.signal_struct, ptr %60, i32 0, i32 22, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %26, align 16
  %64 = getelementptr %struct.signal_struct, ptr %63, i32 0, i32 22, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load ptr, ptr %46, align 16
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi ptr [ %45, %50 ], [ %68, %67 ]
  %71 = phi ptr [ %52, %50 ], [ %55, %67 ]
  %72 = getelementptr %struct.signal_struct, ptr %70, i32 0, i32 22, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, %71
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  tail call void @change_pid(ptr noundef nonnull %15, i32 noundef 2, ptr noundef %71) #10
  br label %76

76:                                               ; preds = %75, %69, %58, %54, %44, %42, %37, %29, %17, %14
  %77 = phi i32 [ -1, %29 ], [ -1, %44 ], [ -13, %37 ], [ -3, %42 ], [ -22, %17 ], [ -3, %14 ], [ 0, %75 ], [ 0, %69 ], [ -1, %54 ], [ -1, %58 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #10, !srcloc !28
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %78

78:                                               ; preds = %76, %9
  %79 = phi i32 [ %77, %76 ], [ -22, %9 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getpgid(i32 noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 22, i32 2
  %8 = load ptr, ptr %7, align 8
  br label %18

9:                                                ; preds = %1
  %10 = tail call ptr @find_task_by_vpid(i32 noundef %0) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr %struct.signal_struct, ptr %14, i32 0, i32 22, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %3
  %19 = phi ptr [ %8, %3 ], [ %16, %12 ]
  %20 = tail call i32 @pid_vnr(ptr noundef %19) #10
  br label %21

21:                                               ; preds = %18, %12, %9
  %22 = phi i32 [ %20, %18 ], [ -3, %12 ], [ -3, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_getpgrp() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 22, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pid_vnr(ptr noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getsid(i32 noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 22, i32 3
  %8 = load ptr, ptr %7, align 4
  br label %18

9:                                                ; preds = %1
  %10 = tail call ptr @find_task_by_vpid(i32 noundef %0) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr %struct.signal_struct, ptr %14, i32 0, i32 22, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %3
  %19 = phi ptr [ %8, %3 ], [ %16, %12 ]
  %20 = tail call i32 @pid_vnr(ptr noundef %19) #10
  br label %21

21:                                               ; preds = %18, %12, %9
  %22 = phi i32 [ %20, %18 ], [ -3, %12 ], [ -3, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_setsid() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #10
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 64
  %6 = tail call i32 @pid_vnr(ptr noundef %5) #10
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #10
  %7 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %0
  %13 = tail call ptr @pid_task(ptr noundef %5, i32 noundef 2) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 16
  %17 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 24
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 93
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr %struct.signal_struct, ptr %20, i32 0, i32 22, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  tail call void @change_pid(ptr noundef %18, i32 noundef 3, ptr noundef %5) #10
  %25 = load ptr, ptr %19, align 16
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi ptr [ %25, %24 ], [ %20, %15 ]
  %28 = getelementptr %struct.signal_struct, ptr %27, i32 0, i32 22, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @change_pid(ptr noundef %18, i32 noundef 2, ptr noundef %5) #10
  br label %32

32:                                               ; preds = %31, %26
  tail call void @proc_clear_tty(ptr noundef %3) #10
  br label %33

33:                                               ; preds = %32, %12, %0
  %34 = phi i32 [ -1, %0 ], [ -1, %12 ], [ %6, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #10, !srcloc !28
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_clear_tty(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_setsid() local_unnamed_addr #0 {
  %1 = tail call i32 @ksys_setsid()
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newuname(i32 noundef %0) #0 {
  %2 = alloca [65 x i8], align 1
  %3 = alloca %struct.new_utsname, align 1
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %3) #10
  tail call void @down_read(ptr noundef nonnull @uts_sem) #10
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(390) %3, ptr noundef align 1 dereferenceable(390) %9, i32 390, i1 false) #10
  tail call void @up_read(ptr noundef nonnull @uts_sem) #10
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 390, i32 -1090519040) #12, !srcloc !26
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !16
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %18 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 390) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.new_utsname, ptr %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 46
  %23 = load i32, ptr %22, align 16
  %24 = and i32 %23, 131072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(65) %2, i8 0, i32 65, i1 false) #10
  br label %27

27:                                               ; preds = %38, %26
  %28 = phi i32 [ 0, %26 ], [ %39, %38 ]
  %29 = phi ptr [ @.str.2, %26 ], [ %40, %38 ]
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %34 [
    i8 0, label %41
    i8 46, label %31
  ]

31:                                               ; preds = %27
  %32 = add i32 %28, 1
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %41, label %38

34:                                               ; preds = %27
  %35 = zext i8 %30 to i32
  %36 = add nsw i32 %35, -58
  %37 = icmp ult i32 %36, -10
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %28, %34 ], [ %32, %31 ]
  %40 = getelementptr i8, ptr %29, i32 1
  br label %27

41:                                               ; preds = %34, %31, %27
  %42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %2, i32 noundef 65, ptr noundef nonnull @.str.3, i32 noundef 77, ptr noundef %29) #10
  %43 = add i32 %42, 1
  %44 = icmp ugt i32 %43, 65
  br i1 %44, label %45, label %46, !prof !31

45:                                               ; preds = %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef %43) #10
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %2) #10
  br label %59

46:                                               ; preds = %41
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %43, i32 -1090519040) #12, !srcloc !26
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !16
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %54 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %2, i32 noundef %43) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i32 [ %54, %50 ], [ %43, %46 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %2) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %20
  br label %59

59:                                               ; preds = %58, %55, %45, %13, %1
  %60 = phi i32 [ -14, %13 ], [ 0, %58 ], [ -14, %55 ], [ -14, %45 ], [ -14, %1 ]
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %3) #10
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sethostname(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #10, !annotation !25
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uts_namespace, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 21) #10
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = icmp ugt i32 %1, 64
  br i1 %14, label %38, label %15

15:                                               ; preds = %13
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %1, i32 -1090519040) #12, !srcloc !32
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %4, i32 noundef %1) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ %24, %19 ], [ %1, %15 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !33

28:                                               ; preds = %25
  %29 = sub i32 %1, %26
  %30 = getelementptr i8, ptr %3, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %26, i1 false) #10
  br label %38

31:                                               ; preds = %25
  call void @down_write(ptr noundef nonnull @uts_sem) #10
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.nsproxy, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.new_utsname, ptr %34, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr nonnull align 1 %3, i32 %1, i1 false) #10
  %36 = getelementptr i8, ptr %35, i32 %1
  %37 = sub nuw nsw i32 65, %1
  call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %37, i1 false) #10
  call void @uts_proc_notify(i32 noundef 3) #10
  call void @up_write(ptr noundef nonnull @uts_sem) #10
  br label %38

38:                                               ; preds = %31, %28, %13, %2
  %39 = phi i32 [ -1, %2 ], [ -22, %13 ], [ 0, %31 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_gethostname(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [65 x i8], align 1
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(65) %3, i8 0, i32 65, i1 false) #10, !annotation !25
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  tail call void @down_read(ptr noundef nonnull @uts_sem) #10
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.new_utsname, ptr %11, i32 0, i32 1
  %13 = tail call i32 @strlen(ptr noundef %12) #10
  %14 = add i32 %13, 1
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %1) #10
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 1 %12, i32 %15, i1 false) #10
  tail call void @up_read(ptr noundef nonnull @uts_sem) #10
  %16 = icmp ugt i32 %15, 65
  br i1 %16, label %17, label %18, !prof !31

17:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef %15) #10
  br label %32

18:                                               ; preds = %6
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %15, i32 -1090519040) #12, !srcloc !26
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #11, !srcloc !16
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %27 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef %15) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i32 [ %27, %22 ], [ %15, %18 ]
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 -14
  br label %32

32:                                               ; preds = %28, %17, %2
  %33 = phi i32 [ -22, %2 ], [ -14, %17 ], [ %31, %28 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %3) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setdomainname(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #10, !annotation !25
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uts_namespace, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 21) #10
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = icmp ugt i32 %1, 64
  br i1 %14, label %38, label %15

15:                                               ; preds = %13
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %1, i32 -1090519040) #12, !srcloc !32
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %4, i32 noundef %1) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ %24, %19 ], [ %1, %15 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !33

28:                                               ; preds = %25
  %29 = sub i32 %1, %26
  %30 = getelementptr i8, ptr %3, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %26, i1 false) #10
  br label %38

31:                                               ; preds = %25
  call void @down_write(ptr noundef nonnull @uts_sem) #10
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.nsproxy, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.new_utsname, ptr %34, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr nonnull align 1 %3, i32 %1, i1 false) #10
  %36 = getelementptr i8, ptr %35, i32 %1
  %37 = sub nuw nsw i32 65, %1
  call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %37, i1 false) #10
  call void @uts_proc_notify(i32 noundef 4) #10
  call void @up_write(ptr noundef nonnull @uts_sem) #10
  br label %38

38:                                               ; preds = %31, %28, %13, %2
  %39 = phi i32 [ -1, %2 ], [ -22, %13 ], [ 0, %31 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getrlimit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rlimit, align 8
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8, !annotation !25
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = icmp ugt i32 %0, 15
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 50
  %15 = getelementptr %struct.rlimit, ptr %14, i32 %0
  %16 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 59
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %18) #10
  %19 = load i64, ptr %15, align 4
  store i64 %19, ptr %3, align 8
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %22 = load i16, ptr %21, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  br label %24

24:                                               ; preds = %11, %7
  %25 = phi i32 [ 0, %11 ], [ -3, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #10, !srcloc !10
  %26 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #10, !srcloc !11
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  br label %30

30:                                               ; preds = %29, %24
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br i1 %10, label %43, label %31

31:                                               ; preds = %30
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1090519040) #12, !srcloc !26
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #11, !srcloc !16
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %40 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 -14
  br label %43

43:                                               ; preds = %35, %31, %30, %2
  %44 = phi i32 [ %25, %30 ], [ -22, %2 ], [ -14, %31 ], [ %42, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_prlimit(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp ugt i32 %1, 15
  br i1 %5, label %66, label %6

6:                                                ; preds = %4
  %7 = icmp ne ptr %2, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %66, label %13

13:                                               ; preds = %8
  %14 = icmp eq i32 %1, 7
  %15 = load i32, ptr @sysctl_nr_open, align 4
  %16 = icmp ugt i32 %11, %15
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %66, label %18

18:                                               ; preds = %13, %6
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 50
  %26 = getelementptr %struct.rlimit, ptr %25, i32 %1
  %27 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 59
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %29) #10
  br i1 %7, label %30, label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.rlimit, ptr %25, i32 %1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %37, label %38, label %45

38:                                               ; preds = %36, %30, %22
  %39 = icmp eq ptr %3, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = load i64, ptr %26, align 4
  store i64 %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %40, %38
  br i1 %7, label %43, label %45

43:                                               ; preds = %42
  %44 = load i64, ptr %2, align 4
  store i64 %44, ptr %26, align 4
  br label %45

45:                                               ; preds = %43, %42, %36
  %46 = phi i32 [ 0, %42 ], [ 0, %43 ], [ -1, %36 ]
  %47 = phi i1 [ true, %42 ], [ true, %43 ], [ false, %36 ]
  %48 = load ptr, ptr %27, align 4
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %50 = load i16, ptr %49, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %52 = and i1 %7, %47
  %53 = icmp eq i32 %1, 0
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, ptr %2, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @update_rlimit_cpu(ptr noundef %0, i32 noundef %56) #10
  br label %59

59:                                               ; preds = %58, %55, %45, %18
  %60 = phi i32 [ 0, %58 ], [ 0, %55 ], [ %46, %45 ], [ -3, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #10, !srcloc !10
  %61 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #10, !srcloc !11
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  br label %65

65:                                               ; preds = %64, %59
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %66

66:                                               ; preds = %65, %13, %8, %4
  %67 = phi i32 [ %60, %65 ], [ -22, %4 ], [ -22, %8 ], [ -1, %13 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rlimit_cpu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_prlimit64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.rlimit64, align 8
  %6 = alloca %struct.rlimit64, align 8
  %7 = alloca %struct.rlimit, align 8
  %8 = alloca %struct.rlimit, align 8
  %9 = inttoptr i32 %2 to ptr
  %10 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !25
  %11 = icmp ne i32 %3, 0
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %4
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %9, i32 16, i32 -1090519040) #12, !srcloc !32
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !33

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #11, !srcloc !16
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef nonnull %9, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !33

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ 16, %13 ]
  %27 = sub i32 16, %26
  %28 = getelementptr i8, ptr %6, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #10
  br label %138

29:                                               ; preds = %17
  %30 = load i64, ptr %6, align 8
  %31 = icmp ugt i64 %30, 4294967294
  %32 = trunc i64 %30 to i32
  %33 = select i1 %31, i32 -1, i32 %32
  store i32 %33, ptr %8, align 8
  %34 = getelementptr inbounds %struct.rlimit64, ptr %6, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = icmp ugt i64 %35, 4294967294
  %37 = trunc i64 %35 to i32
  %38 = select i1 %36, i32 -1, i32 %37
  %39 = getelementptr inbounds %struct.rlimit, ptr %8, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %29, %4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %41 = icmp eq i32 %0, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = call ptr @find_task_by_vpid(i32 noundef %0) #10
  br label %46

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #10
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %138

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 83
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %51, %47
  br i1 %54, label %90, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 82
  %57 = load volatile ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.cred, ptr %53, i32 0, i32 1
  %59 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 5
  %60 = load i32, ptr %58, align 4
  %61 = load i32, ptr %59, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %60, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.cred, ptr %53, i32 0, i32 2
  %73 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 6
  %74 = load i32, ptr %72, align 4
  %75 = load i32, ptr %73, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %74, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %81, %77, %71, %67, %63, %55
  %86 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 21
  %87 = load ptr, ptr %86, align 4
  %88 = call zeroext i1 @ns_capable(ptr noundef %87, i32 noundef 24) #10
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %138

90:                                               ; preds = %85, %81, %50
  %91 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #10, !srcloc !10
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #10, !srcloc !36
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95, !prof !31

95:                                               ; preds = %90
  %96 = add i32 %93, 1
  %97 = or i32 %96, %93
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %101, label %99, !prof !33

99:                                               ; preds = %95, %90
  %100 = phi i32 [ 2, %90 ], [ 1, %95 ]
  call void @refcount_warn_saturate(ptr noundef %91, i32 noundef %100) #10
  br label %101

101:                                              ; preds = %99, %95
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %102 = select i1 %12, ptr null, ptr %8
  %103 = select i1 %11, ptr %7, ptr null
  %104 = call i32 @do_prlimit(ptr noundef nonnull %47, i32 noundef %1, ptr noundef %102, ptr noundef %103) #10
  %105 = icmp eq i32 %104, 0
  %106 = and i1 %11, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load i32, ptr %7, align 8
  %109 = icmp eq i32 %108, -1
  %110 = zext i32 %108 to i64
  %111 = select i1 %109, i64 -1, i64 %110
  store i64 %111, ptr %5, align 8
  %112 = getelementptr inbounds %struct.rlimit, ptr %7, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, -1
  %115 = zext i32 %113 to i64
  %116 = select i1 %114, i64 -1, i64 %115
  %117 = getelementptr inbounds %struct.rlimit64, ptr %5, i32 0, i32 1
  store i64 %116, ptr %117, align 8
  %118 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 16, i32 -1090519040) #12, !srcloc !26
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %123 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #11, !srcloc !16
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %126 = call i32 @arm_copy_to_user(ptr noundef nonnull %10, ptr noundef nonnull %5, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 0, i32 -14
  br label %129

129:                                              ; preds = %121, %107, %101
  %130 = phi i32 [ %104, %101 ], [ -14, %107 ], [ %128, %121 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #10, !srcloc !10
  %131 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #10, !srcloc !38
  %132 = extractvalue { i32, i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = icmp sgt i32 %132, 0
  br i1 %135, label %138, label %136, !prof !33

136:                                              ; preds = %134
  call void @refcount_warn_saturate(ptr noundef %91, i32 noundef 3) #10
  br label %138

137:                                              ; preds = %129
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !39
  call void @__put_task_struct(ptr noundef nonnull %47) #10
  br label %138

138:                                              ; preds = %137, %136, %134, %89, %49, %25
  %139 = phi i32 [ -1, %89 ], [ -3, %49 ], [ %130, %134 ], [ %130, %136 ], [ %130, %137 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setrlimit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rlimit, align 8
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8, !annotation !25
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1090519040) #12, !srcloc !32
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !33

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #11, !srcloc !16
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !33

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %14, %8 ], [ 8, %2 ]
  %18 = sub i32 8, %17
  %19 = getelementptr i8, ptr %3, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #10
  br label %22

20:                                               ; preds = %8
  %21 = call i32 @do_prlimit(ptr noundef %9, i32 noundef %0, ptr noundef nonnull %3, ptr noundef null) #10
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @getrusage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__kernel_old_timeval, align 8
  %10 = alloca %struct.__kernel_old_timeval, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(72) %2, i8 0, i32 72, i1 false)
  store i64 0, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = tail call ptr @llvm.thread.pointer() #10
  call void @task_cputime_adjusted(ptr noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 74
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 75
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 78
  %25 = load i32, ptr %24, align 16
  %26 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 79
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %35 = load ptr, ptr %34, align 16
  %36 = getelementptr inbounds %struct.signal_struct, ptr %35, i32 0, i32 46
  %37 = load i32, ptr %36, align 8
  %38 = load i64, ptr %7, align 8
  br label %156

39:                                               ; preds = %3
  %40 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %4) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %187, label %42

42:                                               ; preds = %39
  switch i32 %1, label %147 [
    i32 -2, label %43
    i32 -1, label %43
    i32 0, label %77
  ]

43:                                               ; preds = %42, %42
  %44 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %45 = load ptr, ptr %44, align 16
  %46 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 29
  %47 = load i64, ptr %46, align 8
  store i64 %47, ptr %7, align 8
  %48 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 30
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %8, align 8
  %50 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 36
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 14
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %44, align 16
  %54 = getelementptr inbounds %struct.signal_struct, ptr %53, i32 0, i32 37
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 15
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %44, align 16
  %58 = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 40
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = load ptr, ptr %44, align 16
  %62 = getelementptr inbounds %struct.signal_struct, ptr %61, i32 0, i32 41
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  %65 = load ptr, ptr %44, align 16
  %66 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 44
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 9
  store i32 %67, ptr %68, align 4
  %69 = load ptr, ptr %44, align 16
  %70 = getelementptr inbounds %struct.signal_struct, ptr %69, i32 0, i32 45
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 10
  store i32 %71, ptr %72, align 4
  %73 = load ptr, ptr %44, align 16
  %74 = getelementptr inbounds %struct.signal_struct, ptr %73, i32 0, i32 47
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %1, -1
  br i1 %76, label %150, label %77

77:                                               ; preds = %43, %42
  %78 = phi i64 [ 0, %42 ], [ %49, %43 ]
  %79 = phi i64 [ 0, %42 ], [ %47, %43 ]
  %80 = phi i32 [ %1, %42 ], [ %75, %43 ]
  call void @thread_group_cputime_adjusted(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %81 = load i64, ptr %5, align 8
  %82 = add i64 %79, %81
  store i64 %82, ptr %7, align 8
  %83 = load i64, ptr %6, align 8
  %84 = add i64 %78, %83
  store i64 %84, ptr %8, align 8
  %85 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 34
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 14
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  store i32 %91, ptr %89, align 4
  %92 = load ptr, ptr %85, align 16
  %93 = getelementptr inbounds %struct.signal_struct, ptr %92, i32 0, i32 35
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 15
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  store i32 %97, ptr %95, align 4
  %98 = load ptr, ptr %85, align 16
  %99 = getelementptr inbounds %struct.signal_struct, ptr %98, i32 0, i32 38
  %100 = load i32, ptr %99, align 8
  %101 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %100
  store i32 %103, ptr %101, align 4
  %104 = load ptr, ptr %85, align 16
  %105 = getelementptr inbounds %struct.signal_struct, ptr %104, i32 0, i32 39
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, %106
  store i32 %109, ptr %107, align 4
  %110 = load ptr, ptr %85, align 16
  %111 = getelementptr inbounds %struct.signal_struct, ptr %110, i32 0, i32 42
  %112 = load i32, ptr %111, align 8
  %113 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 9
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %112
  store i32 %115, ptr %113, align 4
  %116 = load ptr, ptr %85, align 16
  %117 = getelementptr inbounds %struct.signal_struct, ptr %116, i32 0, i32 43
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 10
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %118
  store i32 %121, ptr %119, align 4
  %122 = load ptr, ptr %85, align 16
  %123 = getelementptr inbounds %struct.signal_struct, ptr %122, i32 0, i32 46
  %124 = load i32, ptr %123, align 8
  br label %125

125:                                              ; preds = %125, %77
  %126 = phi i32 [ %109, %77 ], [ %142, %125 ]
  %127 = phi i32 [ %103, %77 ], [ %139, %125 ]
  %128 = phi i32 [ %97, %77 ], [ %136, %125 ]
  %129 = phi i32 [ %91, %77 ], [ %133, %125 ]
  %130 = phi ptr [ %0, %77 ], [ %145, %125 ]
  %131 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 74
  %132 = load i32, ptr %131, align 8
  %133 = add i32 %129, %132
  store i32 %133, ptr %89, align 4
  %134 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 75
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %128, %135
  store i32 %136, ptr %95, align 4
  %137 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 78
  %138 = load i32, ptr %137, align 16
  %139 = add i32 %127, %138
  store i32 %139, ptr %101, align 4
  %140 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 79
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %126, %141
  store i32 %142, ptr %107, align 4
  %143 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 64
  %144 = load volatile ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %144, i32 -1380
  %146 = icmp eq ptr %145, %0
  br i1 %146, label %148, label %125

147:                                              ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1805, 0\0A.popsection", ""() #10, !srcloc !40
  unreachable

148:                                              ; preds = %125
  %149 = call i32 @llvm.umax.i32(i32 %80, i32 %124)
  br label %150

150:                                              ; preds = %148, %43
  %151 = phi i64 [ %47, %43 ], [ %82, %148 ]
  %152 = phi i32 [ %75, %43 ], [ %149, %148 ]
  %153 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %154, i32 noundef %155) #10
  br label %156

156:                                              ; preds = %150, %12
  %157 = phi i64 [ %38, %12 ], [ %151, %150 ]
  %158 = phi i32 [ %37, %12 ], [ %152, %150 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %9, i64 noundef %157) #10
  %159 = load i64, ptr %9, align 8
  store i64 %159, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  %160 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %161 = load i64, ptr %8, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %10, i64 noundef %161) #10
  %162 = load i64, ptr %10, align 8
  store i64 %162, ptr %160, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  %163 = icmp eq i32 %1, -1
  br i1 %163, label %183, label %164

164:                                              ; preds = %156
  %165 = call ptr @get_task_mm(ptr noundef %0) #10
  %166 = icmp eq ptr %165, null
  br i1 %166, label %183, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.anon.14, ptr %165, i32 0, i32 17
  %169 = load i32, ptr %168, align 8
  %170 = getelementptr inbounds %struct.anon.14, ptr %165, i32 0, i32 40
  %171 = load volatile i32, ptr %170, align 4
  %172 = call i32 @llvm.smax.i32(i32 %171, i32 0) #10
  %173 = getelementptr %struct.anon.14, ptr %165, i32 0, i32 40, i32 0, i32 1
  %174 = load volatile i32, ptr %173, align 4
  %175 = call i32 @llvm.smax.i32(i32 %174, i32 0) #10
  %176 = add nuw i32 %175, %172
  %177 = getelementptr %struct.anon.14, ptr %165, i32 0, i32 40, i32 0, i32 3
  %178 = load volatile i32, ptr %177, align 4
  %179 = call i32 @llvm.smax.i32(i32 %178, i32 0) #10
  %180 = add i32 %176, %179
  %181 = call i32 @llvm.umax.i32(i32 %169, i32 %180) #10
  %182 = call i32 @llvm.umax.i32(i32 %158, i32 %181)
  call void @mmput(ptr noundef nonnull %165) #10
  br label %183

183:                                              ; preds = %167, %164, %156
  %184 = phi i32 [ %158, %156 ], [ %158, %164 ], [ %182, %167 ]
  %185 = shl i32 %184, 2
  %186 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 2
  store i32 %185, ptr %186, align 4
  br label %187

187:                                              ; preds = %183, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getrusage(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rusage, align 4
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #10, !annotation !25
  %5 = add i32 %0, -2
  %6 = icmp ult i32 %5, -3
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  call void @getrusage(ptr noundef %8, i32 noundef %0, ptr noundef nonnull %3) #10
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 72, i32 -1090519040) #12, !srcloc !26
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !16
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %17 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 72) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 -14
  br label %20

20:                                               ; preds = %12, %7, %2
  %21 = phi i32 [ -22, %2 ], [ -14, %7 ], [ %19, %12 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_umask(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 89
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  %6 = and i32 %0, 511
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !10
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %6, ptr %5) #10, !srcloc !42
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !43
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_prctl_spec_ctrl_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_prctl_spec_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_prctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [42 x i32], align 4
  %7 = alloca [16 x i8], align 1
  %8 = tail call ptr @llvm.thread.pointer() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false) #10, !annotation !25
  %9 = tail call i32 @cap_task_prctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %10 = icmp eq i32 %9, -38
  br i1 %10, label %11, label %467

11:                                               ; preds = %5
  switch i32 %0, label %465 [
    i32 1, label %12
    i32 2, label %16
    i32 3, label %25
    i32 4, label %31
    i32 52, label %405
    i32 44, label %467
    i32 58, label %452
    i32 57, label %437
    i32 56, label %432
    i32 55, label %428
    i32 13, label %36
    i32 14, label %37
    i32 15, label %40
    i32 16, label %46
    i32 61, label %423
    i32 60, label %420
    i32 21, label %59
    i32 22, label %61
    i32 54, label %416
    i32 53, label %411
    i32 31, label %64
    i32 32, label %66
    i32 30, label %68
    i32 29, label %73
    i32 33, label %82
    i32 34, label %102
    i32 35, label %115
    i32 43, label %467
    i32 36, label %321
    i32 37, label %331
    i32 38, label %344
    i32 39, label %352
    i32 42, label %361
    i32 41, label %373
  ]

12:                                               ; preds = %11
  %13 = icmp ugt i32 %1, 64
  br i1 %13, label %465, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 44
  store i32 %1, ptr %15, align 8
  br label %465

16:                                               ; preds = %11
  %17 = inttoptr i32 %1 to ptr
  %18 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 44
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %17, i32 %19, i32 -1090519041) #10, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %465

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.anon.14, ptr %27, i32 0, i32 43
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 3
  br label %465

31:                                               ; preds = %11
  %32 = icmp ugt i32 %1, 1
  br i1 %32, label %465, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %35 = load ptr, ptr %34, align 4
  tail call void @set_dumpable(ptr noundef %35, i32 noundef %1) #10
  br label %465

36:                                               ; preds = %11
  br label %465

37:                                               ; preds = %11
  %38 = icmp eq i32 %1, 0
  %39 = select i1 %38, i32 0, i32 -22
  br label %465

40:                                               ; preds = %11
  %41 = getelementptr inbounds [16 x i8], ptr %7, i32 0, i32 15
  store i8 0, ptr %41, align 1
  %42 = inttoptr i32 %1 to ptr
  %43 = call i32 @strncpy_from_user(ptr noundef nonnull %7, ptr noundef %42, i32 noundef 15) #10
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %467, label %45

45:                                               ; preds = %40
  call void @__set_task_comm(ptr noundef %8, ptr noundef nonnull %7, i1 noundef zeroext false) #10
  br label %465

46:                                               ; preds = %11
  %47 = call ptr @__get_task_comm(ptr noundef nonnull %7, i32 noundef 16, ptr noundef %8) #10
  %48 = inttoptr i32 %1 to ptr
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 16, i32 -1090519040) #12, !srcloc !26
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %467

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %54 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #11, !srcloc !16
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %57 = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %7, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %465, label %467

59:                                               ; preds = %11
  %60 = tail call i32 @prctl_get_seccomp() #10
  br label %465

61:                                               ; preds = %11
  %62 = inttoptr i32 %2 to ptr
  %63 = tail call i32 @prctl_set_seccomp(i32 noundef %1, ptr noundef %62) #10
  br label %465

64:                                               ; preds = %11
  %65 = tail call i32 @perf_event_task_disable() #10
  br label %465

66:                                               ; preds = %11
  %67 = tail call i32 @perf_event_task_enable() #10
  br label %465

68:                                               ; preds = %11
  %69 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 143
  %70 = load i64, ptr %69, align 8
  %71 = tail call i64 @llvm.umin.i64(i64 %70, i64 4294967295) #10
  %72 = trunc i64 %71 to i32
  br label %465

73:                                               ; preds = %11
  %74 = icmp eq i32 %1, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 144
  %77 = load i64, ptr %76, align 64
  %78 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 143
  store i64 %77, ptr %78, align 8
  br label %465

79:                                               ; preds = %73
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 143
  store i64 %80, ptr %81, align 8
  br label %465

82:                                               ; preds = %11
  %83 = or i32 %4, %3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %467

85:                                               ; preds = %82
  switch i32 %1, label %467 [
    i32 0, label %86
    i32 1, label %92
  ]

86:                                               ; preds = %85
  %87 = icmp eq i32 %2, 0
  br i1 %87, label %88, label %467

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -129
  store i32 %91, ptr %89, align 4
  br label %465

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 128
  store i32 %95, ptr %93, align 4
  switch i32 %2, label %467 [
    i32 1, label %96
    i32 0, label %98
    i32 2, label %100
  ]

96:                                               ; preds = %92
  %97 = or i32 %94, 134217856
  store i32 %97, ptr %93, align 4
  br label %465

98:                                               ; preds = %92
  %99 = and i32 %95, -134217729
  store i32 %99, ptr %93, align 4
  br label %465

100:                                              ; preds = %92
  %101 = and i32 %94, -134217857
  store i32 %101, ptr %93, align 4
  br label %465

102:                                              ; preds = %11
  %103 = or i32 %4, %3
  %104 = or i32 %103, %1
  %105 = or i32 %104, %2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %467

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 128
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %465, label %112

112:                                              ; preds = %107
  %113 = lshr i32 %109, 27
  %114 = and i32 %113, 1
  br label %465

115:                                              ; preds = %11
  %116 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq i32 %4, 0
  br i1 %118, label %119, label %465

119:                                              ; preds = %115
  %120 = icmp eq i32 %3, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %119
  switch i32 %1, label %465 [
    i32 15, label %122
    i32 14, label %122
    i32 12, label %122
  ]

122:                                              ; preds = %121, %121, %121, %119
  %123 = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %123, label %124, label %465

124:                                              ; preds = %122
  switch i32 %1, label %181 [
    i32 13, label %125
    i32 12, label %153
  ]

125:                                              ; preds = %124
  %126 = tail call i32 @__fdget(i32 noundef %2) #10, !noalias !45
  %127 = and i32 %126, -4
  %128 = inttoptr i32 %127 to ptr
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %465, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.file, ptr %128, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = load i16, ptr %132, align 8
  %134 = and i16 %133, -4096
  %135 = icmp eq i16 %134, -32768
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.file, ptr %128, i32 0, i32 1
  %138 = tail call zeroext i1 @path_noexec(ptr noundef %137) #10
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %137, align 8
  %141 = getelementptr inbounds %struct.vfsmount, ptr %140, i32 0, i32 3
  %142 = load volatile ptr, ptr %141, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !48
  %143 = load ptr, ptr %131, align 8
  %144 = tail call i32 @inode_permission(ptr noundef %142, ptr noundef %143, i32 noundef 1) #10
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = tail call i32 @replace_mm_exe_file(ptr noundef %117, ptr noundef nonnull %128) #10
  br label %148

148:                                              ; preds = %146, %139, %136, %130
  %149 = phi i32 [ -13, %136 ], [ %144, %139 ], [ %147, %146 ], [ -13, %130 ]
  %150 = and i32 %126, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %465, label %152

152:                                              ; preds = %148
  tail call void @fput(ptr noundef nonnull %128) #10
  br label %465

153:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %6, i8 0, i32 168, i1 false) #10
  %154 = icmp ugt i32 %3, 168
  br i1 %154, label %179, label %155

155:                                              ; preds = %153
  %156 = inttoptr i32 %2 to ptr
  %157 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %156, i32 %3, i32 -1090519040) #12, !srcloc !32
  %158 = extractvalue { i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166, !prof !33

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %162 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %161) #11, !srcloc !16
  %163 = and i32 %162, -13
  %164 = or i32 %163, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %165 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %156, i32 noundef %3) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %166

166:                                              ; preds = %160, %155
  %167 = phi i32 [ %165, %160 ], [ %3, %155 ]
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169, !prof !33

169:                                              ; preds = %166
  %170 = sub i32 %3, %167
  %171 = getelementptr i8, ptr %6, i32 %170
  call void @llvm.memset.p0.i32(ptr align 1 %171, i8 0, i32 %167, i1 false) #10
  br label %179

172:                                              ; preds = %166
  %173 = getelementptr inbounds [42 x i32], ptr %6, i32 0, i32 40
  store i32 0, ptr %173, align 4
  %174 = getelementptr inbounds [42 x i32], ptr %6, i32 0, i32 41
  store i32 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %175) #10
  %176 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 39
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %176, ptr nonnull align 4 %6, i32 %3, i1 false) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %177 = load i16, ptr %175, align 4
  %178 = add i16 %177, 1
  store i16 %178, ptr %175, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  br label %179

179:                                              ; preds = %172, %169, %153
  %180 = phi i32 [ 0, %172 ], [ -22, %153 ], [ -14, %169 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #10
  br label %465

181:                                              ; preds = %124
  %182 = icmp ugt i32 %2, -1090519041
  %183 = load i32, ptr @mmap_min_addr, align 4
  %184 = icmp ugt i32 %183, %2
  %185 = select i1 %182, i1 true, i1 %184
  br i1 %185, label %465, label %186

186:                                              ; preds = %181
  %187 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %117, i1 noundef zeroext false) #10
  br label %190

190:                                              ; preds = %189, %186
  %191 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 15
  tail call void @down_read(ptr noundef %191) #10
  %192 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %117, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %195

195:                                              ; preds = %194, %190
  %196 = tail call ptr @find_vma(ptr noundef %117, i32 noundef %2) #10
  %197 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %197) #10
  %198 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 28
  %199 = load i32, ptr %198, align 8
  %200 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 29
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 30
  %203 = load i32, ptr %202, align 8
  %204 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 31
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 32
  %207 = load i32, ptr %206, align 8
  %208 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 33
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 34
  %211 = load i32, ptr %210, align 8
  %212 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 35
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 36
  %215 = load i32, ptr %214, align 8
  %216 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 37
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.anon.14, ptr %117, i32 0, i32 38
  %219 = load i32, ptr %218, align 8
  switch i32 %1, label %313 [
    i32 1, label %230
    i32 2, label %220
    i32 3, label %221
    i32 4, label %222
    i32 5, label %223
    i32 6, label %224
    i32 7, label %225
    i32 8, label %226
    i32 9, label %227
    i32 10, label %228
    i32 11, label %229
  ]

220:                                              ; preds = %195
  br label %230

221:                                              ; preds = %195
  br label %230

222:                                              ; preds = %195
  br label %230

223:                                              ; preds = %195
  br label %230

224:                                              ; preds = %195
  br label %230

225:                                              ; preds = %195
  br label %230

226:                                              ; preds = %195
  br label %230

227:                                              ; preds = %195
  br label %230

228:                                              ; preds = %195
  br label %230

229:                                              ; preds = %195
  br label %230

230:                                              ; preds = %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %195
  %231 = phi i32 [ %201, %229 ], [ %201, %228 ], [ %201, %227 ], [ %201, %226 ], [ %201, %225 ], [ %201, %224 ], [ %201, %223 ], [ %201, %222 ], [ %201, %221 ], [ %2, %220 ], [ %201, %195 ]
  %232 = phi i32 [ %203, %229 ], [ %203, %228 ], [ %203, %227 ], [ %203, %226 ], [ %203, %225 ], [ %203, %224 ], [ %203, %223 ], [ %203, %222 ], [ %2, %221 ], [ %203, %220 ], [ %203, %195 ]
  %233 = phi i32 [ %205, %229 ], [ %205, %228 ], [ %205, %227 ], [ %205, %226 ], [ %205, %225 ], [ %205, %224 ], [ %205, %223 ], [ %2, %222 ], [ %205, %221 ], [ %205, %220 ], [ %205, %195 ]
  %234 = phi i32 [ %207, %229 ], [ %207, %228 ], [ %207, %227 ], [ %207, %226 ], [ %207, %225 ], [ %2, %224 ], [ %207, %223 ], [ %207, %222 ], [ %207, %221 ], [ %207, %220 ], [ %207, %195 ]
  %235 = phi i32 [ %209, %229 ], [ %209, %228 ], [ %209, %227 ], [ %209, %226 ], [ %2, %225 ], [ %209, %224 ], [ %209, %223 ], [ %209, %222 ], [ %209, %221 ], [ %209, %220 ], [ %209, %195 ]
  %236 = phi i32 [ %211, %229 ], [ %211, %228 ], [ %211, %227 ], [ %211, %226 ], [ %211, %225 ], [ %211, %224 ], [ %2, %223 ], [ %211, %222 ], [ %211, %221 ], [ %211, %220 ], [ %211, %195 ]
  %237 = phi i32 [ %213, %229 ], [ %213, %228 ], [ %213, %227 ], [ %2, %226 ], [ %213, %225 ], [ %213, %224 ], [ %213, %223 ], [ %213, %222 ], [ %213, %221 ], [ %213, %220 ], [ %213, %195 ]
  %238 = phi i32 [ %215, %229 ], [ %215, %228 ], [ %2, %227 ], [ %215, %226 ], [ %215, %225 ], [ %215, %224 ], [ %215, %223 ], [ %215, %222 ], [ %215, %221 ], [ %215, %220 ], [ %215, %195 ]
  %239 = phi i32 [ %217, %229 ], [ %2, %228 ], [ %217, %227 ], [ %217, %226 ], [ %217, %225 ], [ %217, %224 ], [ %217, %223 ], [ %217, %222 ], [ %217, %221 ], [ %217, %220 ], [ %217, %195 ]
  %240 = phi i32 [ %2, %229 ], [ %219, %228 ], [ %219, %227 ], [ %219, %226 ], [ %219, %225 ], [ %219, %224 ], [ %219, %223 ], [ %219, %222 ], [ %219, %221 ], [ %219, %220 ], [ %219, %195 ]
  %241 = phi i32 [ %199, %229 ], [ %199, %228 ], [ %199, %227 ], [ %199, %226 ], [ %199, %225 ], [ %199, %224 ], [ %199, %223 ], [ %199, %222 ], [ %199, %221 ], [ %199, %220 ], [ %2, %195 ]
  %242 = load i32, ptr @mmap_min_addr, align 4
  %243 = icmp ult i32 %241, -1090519040
  %244 = icmp ule i32 %242, %241
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %246, label %313

246:                                              ; preds = %230
  %247 = icmp ult i32 %231, -1090519040
  %248 = icmp ule i32 %242, %231
  %249 = select i1 %247, i1 %248, i1 false
  br i1 %249, label %250, label %313

250:                                              ; preds = %246
  %251 = icmp ult i32 %232, -1090519040
  %252 = icmp ule i32 %242, %232
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %313

254:                                              ; preds = %250
  %255 = icmp ult i32 %233, -1090519040
  %256 = icmp ule i32 %242, %233
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %258, label %313

258:                                              ; preds = %254
  %259 = icmp ult i32 %234, -1090519040
  %260 = icmp ule i32 %242, %234
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %313

262:                                              ; preds = %258
  %263 = icmp ult i32 %235, -1090519040
  %264 = icmp ule i32 %242, %235
  %265 = select i1 %263, i1 %264, i1 false
  br i1 %265, label %266, label %313

266:                                              ; preds = %262
  %267 = icmp ult i32 %236, -1090519040
  %268 = icmp ule i32 %242, %236
  %269 = select i1 %267, i1 %268, i1 false
  br i1 %269, label %270, label %313

270:                                              ; preds = %266
  %271 = icmp ult i32 %237, -1090519040
  %272 = icmp ule i32 %242, %237
  %273 = select i1 %271, i1 %272, i1 false
  br i1 %273, label %274, label %313

274:                                              ; preds = %270
  %275 = icmp ult i32 %238, -1090519040
  %276 = icmp ule i32 %242, %238
  %277 = select i1 %275, i1 %276, i1 false
  br i1 %277, label %278, label %313

278:                                              ; preds = %274
  %279 = icmp ult i32 %239, -1090519040
  %280 = icmp ule i32 %242, %239
  %281 = select i1 %279, i1 %280, i1 false
  br i1 %281, label %282, label %313

282:                                              ; preds = %278
  %283 = icmp ult i32 %240, -1090519040
  %284 = icmp ule i32 %242, %240
  %285 = select i1 %283, i1 %284, i1 false
  br i1 %285, label %286, label %313

286:                                              ; preds = %282
  %287 = icmp ult i32 %241, %231
  %288 = icmp ugt i32 %232, %233
  %289 = select i1 %288, i32 -22, i32 0
  %290 = select i1 %287, i32 %289, i32 -22
  %291 = icmp ugt i32 %234, %235
  %292 = icmp ugt i32 %237, %238
  %293 = icmp ugt i32 %239, %240
  %294 = select i1 %293, i1 true, i1 %292
  %295 = select i1 %294, i1 true, i1 %291
  %296 = select i1 %295, i32 -22, i32 %290
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %286
  %299 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %300 = load ptr, ptr %299, align 16
  %301 = getelementptr %struct.signal_struct, ptr %300, i32 0, i32 50, i32 2
  %302 = load volatile i32, ptr %301, align 8
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %309, label %304

304:                                              ; preds = %298
  %305 = add i32 %232, %234
  %306 = sub i32 %233, %305
  %307 = add i32 %306, %235
  %308 = icmp ugt i32 %307, %302
  br i1 %308, label %313, label %309

309:                                              ; preds = %304, %298
  switch i32 %1, label %312 [
    i32 5, label %310
    i32 8, label %310
    i32 9, label %310
    i32 10, label %310
    i32 11, label %310
  ]

310:                                              ; preds = %309, %309, %309, %309, %309
  %311 = icmp eq ptr %196, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %310, %309
  store i32 %241, ptr %198, align 8
  store i32 %231, ptr %200, align 4
  store i32 %232, ptr %202, align 8
  store i32 %233, ptr %204, align 4
  store i32 %234, ptr %206, align 8
  store i32 %235, ptr %208, align 4
  store i32 %236, ptr %210, align 8
  store i32 %237, ptr %212, align 4
  store i32 %238, ptr %214, align 8
  store i32 %239, ptr %216, align 4
  store i32 %240, ptr %218, align 8
  br label %313

313:                                              ; preds = %312, %310, %304, %286, %282, %278, %274, %270, %266, %262, %258, %254, %250, %246, %230, %195
  %314 = phi i32 [ -22, %195 ], [ 0, %312 ], [ -14, %310 ], [ -22, %230 ], [ -22, %246 ], [ -22, %250 ], [ -22, %254 ], [ -22, %258 ], [ -22, %262 ], [ -22, %266 ], [ -22, %270 ], [ -22, %274 ], [ -22, %278 ], [ -22, %282 ], [ -22, %304 ], [ %296, %286 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %315 = load i16, ptr %197, align 4
  %316 = add i16 %315, 1
  store i16 %316, ptr %197, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %317 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %313
  tail call void @__mmap_lock_do_trace_released(ptr noundef %117, i1 noundef zeroext false) #10
  br label %320

320:                                              ; preds = %319, %313
  tail call void @up_read(ptr noundef %191) #10
  br label %465

321:                                              ; preds = %11
  %322 = icmp ne i32 %1, 0
  %323 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %324 = load ptr, ptr %323, align 16
  %325 = getelementptr inbounds %struct.signal_struct, ptr %324, i32 0, i32 14
  %326 = zext i1 %322 to i8
  %327 = load i8, ptr %325, align 8
  %328 = and i8 %327, -2
  %329 = or i8 %328, %326
  store i8 %329, ptr %325, align 8
  br i1 %322, label %330, label %465

330:                                              ; preds = %321
  tail call void @walk_process_tree(ptr noundef %8, ptr noundef nonnull @propagate_has_child_subreaper, ptr noundef null) #10
  br label %465

331:                                              ; preds = %11
  %332 = inttoptr i32 %1 to ptr
  %333 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %334 = load ptr, ptr %333, align 16
  %335 = getelementptr inbounds %struct.signal_struct, ptr %334, i32 0, i32 14
  %336 = load i8, ptr %335, align 8
  %337 = and i8 %336, 1
  %338 = zext i8 %337 to i32
  %339 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %340 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %339) #11, !srcloc !16
  %341 = and i32 %340, -13
  %342 = or i32 %341, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %342) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %343 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %332, i32 %338, i32 -1090519041) #10, !srcloc !49
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %340) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %465

344:                                              ; preds = %11
  %345 = icmp ne i32 %1, 1
  %346 = or i32 %4, %3
  %347 = or i32 %346, %2
  %348 = icmp ne i32 %347, 0
  %349 = or i1 %345, %348
  br i1 %349, label %467, label %350

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 50
  tail call void @_set_bit(i32 noundef 0, ptr noundef %351) #10
  br label %465

352:                                              ; preds = %11
  %353 = or i32 %4, %3
  %354 = or i32 %353, %1
  %355 = or i32 %354, %2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %467

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 50
  %359 = load volatile i32, ptr %358, align 4
  %360 = and i32 %359, 1
  br label %467

361:                                              ; preds = %11
  %362 = or i32 %4, %3
  %363 = or i32 %362, %1
  %364 = or i32 %363, %2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %467

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.anon.14, ptr %368, i32 0, i32 43
  %370 = load volatile i32, ptr %369, align 4
  %371 = lshr i32 %370, 24
  %372 = and i32 %371, 1
  br label %465

373:                                              ; preds = %11
  %374 = or i32 %4, %3
  %375 = or i32 %374, %2
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %467

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %379 = load ptr, ptr %378, align 4
  %380 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %379, i1 noundef zeroext true) #10
  br label %383

383:                                              ; preds = %382, %377
  %384 = getelementptr inbounds %struct.anon.14, ptr %379, i32 0, i32 15
  %385 = tail call i32 @down_write_killable(ptr noundef %384) #10
  %386 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = icmp eq i32 %385, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %379, i1 noundef zeroext true, i1 noundef zeroext %389) #10
  br label %390

390:                                              ; preds = %388, %383
  %391 = icmp eq i32 %385, 0
  br i1 %391, label %392, label %467

392:                                              ; preds = %390
  %393 = icmp eq i32 %1, 0
  %394 = load ptr, ptr %378, align 4
  %395 = getelementptr inbounds %struct.anon.14, ptr %394, i32 0, i32 43
  br i1 %393, label %397, label %396

396:                                              ; preds = %392
  tail call void @_set_bit(i32 noundef 24, ptr noundef %395) #10
  br label %398

397:                                              ; preds = %392
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %395) #10
  br label %398

398:                                              ; preds = %397, %396
  %399 = load ptr, ptr %378, align 4
  %400 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  tail call void @__mmap_lock_do_trace_released(ptr noundef %399, i1 noundef zeroext true) #10
  br label %403

403:                                              ; preds = %402, %398
  %404 = getelementptr inbounds %struct.anon.14, ptr %399, i32 0, i32 15
  tail call void @up_write(ptr noundef %404) #10
  br label %465

405:                                              ; preds = %11
  %406 = or i32 %4, %3
  %407 = or i32 %406, %2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %467

409:                                              ; preds = %405
  %410 = tail call i32 @arch_prctl_spec_ctrl_get(ptr noundef %8, i32 noundef %1) #10
  br label %465

411:                                              ; preds = %11
  %412 = or i32 %4, %3
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %467

414:                                              ; preds = %411
  %415 = tail call i32 @arch_prctl_spec_ctrl_set(ptr noundef %8, i32 noundef %1, i32 noundef %2) #10
  br label %465

416:                                              ; preds = %11
  %417 = or i32 %4, %3
  %418 = or i32 %417, %2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %465, label %467

420:                                              ; preds = %11
  %421 = or i32 %4, %3
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %465, label %467

423:                                              ; preds = %11
  %424 = or i32 %4, %3
  %425 = or i32 %424, %1
  %426 = or i32 %425, %2
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %465, label %467

428:                                              ; preds = %11
  %429 = or i32 %4, %3
  %430 = or i32 %429, %2
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %465, label %467

432:                                              ; preds = %11
  %433 = or i32 %4, %3
  %434 = or i32 %433, %1
  %435 = or i32 %434, %2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %465, label %467

437:                                              ; preds = %11
  %438 = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %438, label %439, label %467

439:                                              ; preds = %437
  %440 = or i32 %4, %3
  %441 = or i32 %440, %2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %467

443:                                              ; preds = %439
  switch i32 %1, label %467 [
    i32 1, label %444
    i32 0, label %448
  ]

444:                                              ; preds = %443
  %445 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %446 = load i32, ptr %445, align 4
  %447 = or i32 %446, 1572864
  store i32 %447, ptr %445, align 4
  br label %465

448:                                              ; preds = %443
  %449 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %450 = load i32, ptr %449, align 4
  %451 = and i32 %450, -1572865
  store i32 %451, ptr %449, align 4
  br label %465

452:                                              ; preds = %11
  %453 = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %453, label %454, label %467

454:                                              ; preds = %452
  %455 = or i32 %4, %3
  %456 = or i32 %455, %1
  %457 = or i32 %456, %2
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %467

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %461 = load i32, ptr %460, align 4
  %462 = and i32 %461, 1572864
  %463 = icmp eq i32 %462, 1572864
  %464 = zext i1 %463 to i32
  br label %465

465:                                              ; preds = %459, %448, %444, %432, %428, %423, %420, %416, %414, %409, %403, %366, %350, %331, %330, %321, %320, %181, %179, %152, %148, %125, %122, %121, %115, %112, %107, %100, %98, %96, %88, %79, %75, %68, %66, %64, %61, %59, %52, %45, %37, %36, %33, %31, %25, %16, %14, %12, %11
  %466 = phi i32 [ %464, %459 ], [ 0, %444 ], [ 0, %448 ], [ %415, %414 ], [ %410, %409 ], [ 0, %403 ], [ %372, %366 ], [ 0, %350 ], [ %343, %331 ], [ 0, %330 ], [ 0, %321 ], [ %114, %112 ], [ 0, %96 ], [ 0, %98 ], [ 0, %100 ], [ 0, %88 ], [ 0, %75 ], [ 0, %79 ], [ %67, %66 ], [ %65, %64 ], [ %63, %61 ], [ %60, %59 ], [ 0, %52 ], [ 0, %45 ], [ 0, %36 ], [ 0, %33 ], [ %30, %25 ], [ %24, %16 ], [ 0, %14 ], [ -22, %12 ], [ -22, %31 ], [ %39, %37 ], [ 2, %107 ], [ -22, %416 ], [ -22, %420 ], [ -22, %423 ], [ -22, %428 ], [ -22, %432 ], [ -22, %11 ], [ %72, %68 ], [ %180, %179 ], [ %314, %320 ], [ -22, %121 ], [ -22, %115 ], [ -1, %122 ], [ -22, %181 ], [ -9, %125 ], [ %149, %148 ], [ %149, %152 ]
  br label %467

467:                                              ; preds = %465, %454, %452, %443, %439, %437, %432, %428, %423, %420, %416, %411, %405, %390, %373, %361, %357, %352, %344, %102, %92, %86, %85, %82, %52, %46, %40, %11, %11, %5
  %468 = phi i32 [ %466, %465 ], [ %360, %357 ], [ %9, %5 ], [ -14, %40 ], [ -14, %52 ], [ -22, %82 ], [ -22, %86 ], [ -22, %92 ], [ -22, %85 ], [ -22, %102 ], [ -22, %344 ], [ -22, %352 ], [ -22, %361 ], [ -22, %373 ], [ -4, %390 ], [ -22, %11 ], [ -22, %11 ], [ -22, %405 ], [ -22, %411 ], [ -22, %416 ], [ -22, %420 ], [ -22, %423 ], [ -22, %428 ], [ -22, %432 ], [ -1, %437 ], [ -22, %439 ], [ -22, %443 ], [ -1, %452 ], [ -22, %454 ], [ -14, %46 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %468
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getcpu(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = inttoptr i32 %0 to ptr
  %9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #11, !srcloc !16
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %8, i32 %10, i32 -1090519041) #10, !srcloc !50
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %16

16:                                               ; preds = %7, %3
  %17 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %4, i32 0, i32 -1090519041) #10, !srcloc !51
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %25 = or i32 %24, %17
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i32 [ %25, %19 ], [ %17, %16 ]
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 -14
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sysinfo(i32 noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.sysinfo, align 4
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %5, i8 0, i64 60, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %6 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %6) #10
  %7 = load i64, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i32 8
  %9 = load i32, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = add i64 %7, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %3, align 4
  call void @get_avenrun(ptr noundef %5, i32 noundef 0, i32 noundef 5) #10
  %14 = load i32, ptr @nr_threads, align 4
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 8
  store i16 %15, ptr %16, align 4
  call void @si_meminfo(ptr noundef nonnull %3) #10
  call void @si_swapinfo(ptr noundef nonnull %3) #10
  %17 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = icmp ult i32 %21, %18
  %23 = icmp ult i32 %21, %20
  %24 = or i1 %22, %23
  br i1 %24, label %59, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %33, %25
  %29 = phi i32 [ %21, %25 ], [ %36, %33 ]
  %30 = phi i32 [ %27, %25 ], [ %35, %33 ]
  %31 = phi i32 [ 0, %25 ], [ %34, %33 ]
  %32 = icmp ugt i32 %30, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %31, 1
  %35 = lshr i32 %30, 1
  %36 = shl i32 %29, 1
  %37 = icmp ult i32 %36, %29
  br i1 %37, label %59, label %28

38:                                               ; preds = %28
  store i32 1, ptr %26, align 4
  %39 = shl i32 %18, %31
  store i32 %39, ptr %17, align 4
  %40 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, %31
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, %31
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, %31
  store i32 %48, ptr %46, align 4
  %49 = shl i32 %20, %31
  store i32 %49, ptr %19, align 4
  %50 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, %31
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, %31
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, %31
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %38, %33, %1
  %60 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 64, i32 -1090519040) #12, !srcloc !26
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = tail call ptr @llvm.thread.pointer() #10
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #11, !srcloc !16
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %69 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 0, i32 -14
  br label %72

72:                                               ; preds = %63, %59
  %73 = phi i32 [ -14, %59 ], [ %71, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_one_prio(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 5
  %11 = load i32, ptr %9, align 4
  %12 = load i32, ptr %10, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 21
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i1 @ns_capable(ptr noundef %20, i32 noundef 23) #10
  br i1 %21, label %22, label %36

22:                                               ; preds = %18, %14, %3
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -120
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = tail call i32 @can_nice(ptr noundef %0, i32 noundef %1) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %22
  %31 = tail call i32 @cap_task_setnice(ptr noundef %0, i32 noundef %1) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = icmp eq i32 %2, -3
  %35 = select i1 %34, i32 0, i32 %2
  tail call void @set_user_nice(ptr noundef %0, i32 noundef %1) #10
  br label %36

36:                                               ; preds = %33, %30, %27, %18
  %37 = phi i32 [ %35, %33 ], [ -1, %18 ], [ -13, %27 ], [ %31, %30 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_user([1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_nice(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setnice(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_uid([1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_fix_setuid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies_64_to_clock_t(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_pid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uts_proc_notify(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dumpable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prctl_get_seccomp() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prctl_set_seccomp(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_task_disable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_task_enable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @walk_process_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @propagate_has_child_subreaper(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #8 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 14
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.pid, ptr %11, i32 0, i32 7, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = or i8 %6, 2
  store i8 %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %17, %9, %2
  %20 = phi i32 [ 1, %17 ], [ 0, %9 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_prctl(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_mm_exe_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_avenrun(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_swapinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 2149470505}
!9 = !{i64 2149079615}
!10 = !{i64 904667, i64 2148394638, i64 2148394664, i64 2148394711, i64 2148394733, i64 2148394761, i64 2148394781}
!11 = !{i64 1583039, i64 1583062, i64 1583082, i64 1583106, i64 1583122}
!12 = !{i64 2149067557}
!13 = !{i64 2149067632, i64 2149067659, i64 2149067706, i64 2149067728, i64 2149067756, i64 2149067776}
!14 = !{i64 2149117218}
!15 = !{i64 2149470722}
!16 = !{i64 4062008}
!17 = !{i64 4062205}
!18 = !{i64 2151547484}
!19 = !{i64 2154800219, i64 2154800499, i64 2154800833, i64 2154801167}
!20 = !{i64 2154808346, i64 2154808626, i64 2154808960, i64 2154809294}
!21 = !{i64 2154816473, i64 2154816753, i64 2154817087, i64 2154817421}
!22 = !{i64 2154848062, i64 2154848342, i64 2154848676, i64 2154849010}
!23 = !{i64 2154856189, i64 2154856469, i64 2154856803, i64 2154857137}
!24 = !{i64 2154864316, i64 2154864596, i64 2154864930, i64 2154865264}
!25 = !{!"auto-init"}
!26 = !{i64 2151566474, i64 2151566499}
!27 = !{i64 2149078810}
!28 = !{i64 1582024}
!29 = !{i64 810590}
!30 = !{i64 2149120427}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2151565896, i64 2151565921}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2149071733}
!35 = !{i64 2149094736}
!36 = !{i64 2148407511, i64 2148407543, i64 2148407572, i64 2148407606, i64 2148407637, i64 2148407660}
!37 = !{i64 2148507733}
!38 = !{i64 2148409868, i64 2148409900, i64 2148409929, i64 2148409963, i64 2148409994, i64 2148410017}
!39 = !{i64 2149421085}
!40 = !{i64 2154980600, i64 2154981078, i64 2154980637, i64 2154980693, i64 2154980727, i64 2154980751, i64 2154980792, i64 2154980813, i64 2154980841, i64 2154980875}
!41 = !{i64 2154993104}
!42 = !{i64 913317, i64 913334, i64 913358, i64 913384, i64 913402}
!43 = !{i64 2154993452}
!44 = !{i64 2155019046, i64 2155019326, i64 2155019660, i64 2155019994}
!45 = !{!46}
!46 = distinct !{!46, !47, !"fdget: argument 0"}
!47 = distinct !{!47, !"fdget"}
!48 = !{i64 2151793532}
!49 = !{i64 2155029213, i64 2155029493, i64 2155029827, i64 2155030161}
!50 = !{i64 2155049762, i64 2155050042, i64 2155050376, i64 2155050710}
!51 = !{i64 2155057935, i64 2155058215, i64 2155058549, i64 2155058883}
