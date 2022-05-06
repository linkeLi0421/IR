; ModuleID = '/llk/IR/net/unix/scm.c_pt.bc'
source_filename = "../net/unix/scm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_tot_inflight:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_tot_inflight\22\09\09\09\09\09"
module asm "__kstrtabns_unix_tot_inflight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gc_inflight_list:\09\09\09\09\09"
module asm "\09.asciz \09\22gc_inflight_list\22\09\09\09\09\09"
module asm "__kstrtabns_gc_inflight_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_gc_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_gc_lock\22\09\09\09\09\09"
module asm "__kstrtabns_unix_gc_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_get_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_get_socket\22\09\09\09\09\09"
module asm "__kstrtabns_unix_get_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_attach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_attach_fds\22\09\09\09\09\09"
module asm "__kstrtabns_unix_attach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_detach_fds\22\09\09\09\09\09"
module asm "__kstrtabns_unix_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_destruct_scm:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_destruct_scm\22\09\09\09\09\09"
module asm "__kstrtabns_unix_destruct_scm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [44 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [36 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.1, %union.anon.2, %union.anon.3, i16, i8, i8, i32, %union.anon.5, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.129 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scm_stat = type { %struct.atomic_t }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.102, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.102 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.scm_fp_list = type { i16, i16, ptr, [253 x ptr] }

@unix_tot_inflight = dso_local global i32 0, align 4
@__kstrtab_unix_tot_inflight = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_tot_inflight = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_tot_inflight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_tot_inflight to i32), ptr @__kstrtab_unix_tot_inflight, ptr @__kstrtabns_unix_tot_inflight }, section "___ksymtab+unix_tot_inflight", align 4
@gc_inflight_list = dso_local global %struct.list_head { ptr @gc_inflight_list, ptr @gc_inflight_list }, align 4
@__kstrtab_gc_inflight_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_gc_inflight_list = external dso_local constant [0 x i8], align 1
@__ksymtab_gc_inflight_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gc_inflight_list to i32), ptr @__kstrtab_gc_inflight_list, ptr @__kstrtabns_gc_inflight_list }, section "___ksymtab+gc_inflight_list", align 4
@unix_gc_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@__kstrtab_unix_gc_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_gc_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_gc_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_gc_lock to i32), ptr @__kstrtab_unix_gc_lock, ptr @__kstrtabns_unix_gc_lock }, section "___ksymtab+unix_gc_lock", align 4
@__kstrtab_unix_get_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_get_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_get_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_get_socket to i32), ptr @__kstrtab_unix_get_socket, ptr @__kstrtabns_unix_get_socket }, section "___ksymtab+unix_get_socket", align 4
@__kstrtab_unix_attach_fds = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_attach_fds = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_attach_fds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_attach_fds to i32), ptr @__kstrtab_unix_attach_fds, ptr @__kstrtabns_unix_attach_fds }, section "___ksymtab+unix_attach_fds", align 4
@__kstrtab_unix_detach_fds = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_detach_fds = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_detach_fds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_detach_fds to i32), ptr @__kstrtab_unix_detach_fds, ptr @__kstrtabns_unix_detach_fds }, section "___ksymtab+unix_detach_fds", align 4
@__kstrtab_unix_destruct_scm = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_destruct_scm = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_destruct_scm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_destruct_scm to i32), ptr @__kstrtab_unix_destruct_scm, ptr @__kstrtabns_unix_destruct_scm }, section "___ksymtab+unix_destruct_scm", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_gc_inflight_list, ptr @__ksymtab_unix_attach_fds, ptr @__ksymtab_unix_destruct_scm, ptr @__ksymtab_unix_detach_fds, ptr @__ksymtab_unix_gc_lock, ptr @__ksymtab_unix_get_socket, ptr @__ksymtab_unix_tot_inflight], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @unix_get_socket(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -16384
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %3, i32 -112
  %14 = load ptr, ptr %13, align 16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %3, i32 -108
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = icmp eq i32 %21, 1
  %23 = select i1 %22, ptr %14, ptr null
  br label %26

24:                                               ; preds = %7, %1
  %25 = tail call ptr @io_uring_get_socket(ptr noundef %0) #5
  br label %26

26:                                               ; preds = %24, %20, %16, %12
  %27 = phi ptr [ %25, %24 ], [ null, %16 ], [ null, %12 ], [ %23, %20 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @io_uring_get_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unix_inflight(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, -16384
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %4, i32 -112
  %15 = load ptr, ptr %14, align 16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %4, i32 -108
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %29

25:                                               ; preds = %21, %17, %13
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %48

26:                                               ; preds = %8, %2
  %27 = tail call ptr @io_uring_get_socket(ptr noundef %1) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %15, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.unix_sock, ptr %30, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #5, !srcloc !9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #5, !srcloc !10
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds %struct.unix_sock, ptr %30, i32 0, i32 6
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %34, label %38, label %43

38:                                               ; preds = %29
  br i1 %37, label %40, label %39, !prof !12

39:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #5, !srcloc !13
  unreachable

40:                                               ; preds = %38
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  store ptr %35, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  store ptr @gc_inflight_list, ptr %35, align 4
  %42 = getelementptr inbounds %struct.unix_sock, ptr %30, i32 0, i32 6, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %35, ptr %41, align 4
  br label %45

43:                                               ; preds = %29
  br i1 %37, label %44, label %45, !prof !14

44:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 61, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

45:                                               ; preds = %43, %40
  %46 = load i32, ptr @unix_tot_inflight, align 4
  %47 = add i32 %46, 1
  store volatile i32 %47, ptr @unix_tot_inflight, align 4
  br label %48

48:                                               ; preds = %45, %26, %25
  %49 = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %52 = load i16, ptr @unix_gc_lock, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr @unix_gc_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unix_notinflight(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, -16384
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %4, i32 -112
  %15 = load ptr, ptr %14, align 16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %4, i32 -108
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %29

25:                                               ; preds = %21, %17, %13
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %52

26:                                               ; preds = %8, %2
  %27 = tail call ptr @io_uring_get_socket(ptr noundef %1) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %15, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.unix_sock, ptr %30, i32 0, i32 7
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35, !prof !14

34:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #5, !srcloc !20
  unreachable

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.unix_sock, ptr %30, i32 0, i32 6
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %40, !prof !14

39:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

40:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #5, !srcloc !9
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #5, !srcloc !23
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.unix_sock, ptr %30, i32 0, i32 6, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %36, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %45, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, ptr @unix_tot_inflight, align 4
  %51 = add i32 %50, -1
  store volatile i32 %51, ptr @unix_tot_inflight, align 4
  br label %52

52:                                               ; preds = %49, %26, %25
  %53 = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %56 = load i16, ptr @unix_gc_lock, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr @unix_gc_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unix_attach_fds(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #5
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.user_struct, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 50, i32 7
  %13 = load volatile i32, ptr %12, align 8
  %14 = icmp ugt i32 %9, %13
  br i1 %14, label %15, label %19, !prof !14

15:                                               ; preds = %2
  %16 = tail call zeroext i1 @capable(i32 noundef 24) #5
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %18, label %19, label %46

19:                                               ; preds = %17, %15, %2
  %20 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @scm_fp_dup(ptr noundef %21) #5
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 4
  %27 = load i16, ptr %26, align 4
  %28 = icmp sgt i16 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = zext i16 %27 to i32
  %31 = add nsw i32 %30, -1
  %32 = getelementptr inbounds %struct.scm_fp_list, ptr %26, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.scm_fp_list, ptr %26, i32 0, i32 3, i32 %31
  %35 = load ptr, ptr %34, align 4
  tail call void @unix_inflight(ptr noundef %33, ptr noundef %35)
  %36 = icmp eq i16 %27, 1
  br i1 %36, label %46, label %37

37:                                               ; preds = %37, %29
  %38 = phi i32 [ %40, %37 ], [ %31, %29 ]
  %39 = load ptr, ptr %20, align 4
  %40 = add nsw i32 %38, -1
  %41 = getelementptr inbounds %struct.scm_fp_list, ptr %39, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.scm_fp_list, ptr %39, i32 0, i32 3, i32 %40
  %44 = load ptr, ptr %43, align 4
  tail call void @unix_inflight(ptr noundef %42, ptr noundef %44)
  %45 = icmp sgt i32 %38, 1
  br i1 %45, label %37, label %46

46:                                               ; preds = %37, %29, %25, %19, %17
  %47 = phi i32 [ -109, %17 ], [ -12, %19 ], [ 0, %25 ], [ 0, %29 ], [ 0, %37 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scm_fp_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unix_detach_fds(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  store ptr null, ptr %3, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 4
  %8 = icmp sgt i16 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = zext i16 %7 to i32
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds %struct.scm_fp_list, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.scm_fp_list, ptr %6, i32 0, i32 3, i32 %11
  %15 = load ptr, ptr %14, align 4
  tail call void @unix_notinflight(ptr noundef %13, ptr noundef %15)
  %16 = icmp eq i16 %7, 1
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %9
  %18 = phi i32 [ %20, %17 ], [ %11, %9 ]
  %19 = load ptr, ptr %5, align 4
  %20 = add nsw i32 %18, -1
  %21 = getelementptr inbounds %struct.scm_fp_list, ptr %19, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.scm_fp_list, ptr %19, i32 0, i32 3, i32 %20
  %24 = load ptr, ptr %23, align 4
  tail call void @unix_notinflight(ptr noundef %22, ptr noundef %24)
  %25 = icmp sgt i32 %18, 1
  br i1 %25, label %17, label %26

26:                                               ; preds = %17, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unix_destruct_scm(ptr noundef %0) #0 {
  %2 = alloca %struct.scm_cookie, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @put_pid(ptr noundef %4) #5
  store ptr null, ptr %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 1
  store ptr %6, ptr %10, align 4
  store ptr null, ptr %5, align 4
  %11 = load i16, ptr %6, align 4
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = zext i16 %11 to i32
  %15 = add nsw i32 %14, -1
  %16 = getelementptr inbounds %struct.scm_fp_list, ptr %6, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.scm_fp_list, ptr %6, i32 0, i32 3, i32 %15
  %19 = load ptr, ptr %18, align 4
  tail call void @unix_notinflight(ptr noundef %17, ptr noundef %19) #5
  %20 = icmp eq i16 %11, 1
  br i1 %20, label %28, label %21

21:                                               ; preds = %21, %13
  %22 = phi i32 [ %23, %21 ], [ %15, %13 ]
  %23 = add nsw i32 %22, -1
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr %struct.scm_fp_list, ptr %6, i32 0, i32 3, i32 %23
  %26 = load ptr, ptr %25, align 4
  tail call void @unix_notinflight(ptr noundef %24, ptr noundef %26) #5
  %27 = icmp ugt i32 %22, 1
  br i1 %27, label %21, label %28

28:                                               ; preds = %21, %13, %9
  tail call void @put_pid(ptr noundef %4) #5
  store ptr null, ptr %2, align 4
  call void @__scm_destroy(ptr noundef nonnull %2) #5
  br label %29

29:                                               ; preds = %28, %8
  call void @sock_wfree(ptr noundef %0) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{i64 2148142756}
!9 = !{i64 543524, i64 2148033495, i64 2148033521, i64 2148033568, i64 2148033590, i64 2148033618, i64 2148033638}
!10 = !{i64 2148045594, i64 2148045626, i64 2148045655, i64 2148045689, i64 2148045720, i64 2148045743}
!11 = !{i64 2148142959}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155336682, i64 2155337160, i64 2155336719, i64 2155336775, i64 2155336809, i64 2155336833, i64 2155336874, i64 2155336895, i64 2155336923, i64 2155336957}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2155337696, i64 2155338174, i64 2155337733, i64 2155337789, i64 2155337823, i64 2155337847, i64 2155337888, i64 2155337909, i64 2155337937, i64 2155337971}
!16 = !{i64 2148928049}
!17 = !{i64 2148923873}
!18 = !{i64 2148923948, i64 2148923975, i64 2148924022, i64 2148924044, i64 2148924072, i64 2148924092}
!19 = !{i64 2148951052}
!20 = !{i64 2155340985, i64 2155341463, i64 2155341022, i64 2155341078, i64 2155341112, i64 2155341136, i64 2155341177, i64 2155341198, i64 2155341226, i64 2155341260}
!21 = !{i64 2155341999, i64 2155342477, i64 2155342036, i64 2155342092, i64 2155342126, i64 2155342150, i64 2155342191, i64 2155342212, i64 2155342240, i64 2155342274}
!22 = !{i64 2148145589}
!23 = !{i64 2148047951, i64 2148047983, i64 2148048012, i64 2148048046, i64 2148048077, i64 2148048100}
!24 = !{i64 2148145792}
