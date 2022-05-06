; ModuleID = '/llk/IR/kernel/pid.c_pt.bc'
source_filename = "../kernel/pid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22init_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_init_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22put_pid\22\09\09\09\09\09"
module asm "__kstrtabns_put_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22find_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_find_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_vpid:\09\09\09\09\09"
module asm "\09.asciz \09\22find_vpid\22\09\09\09\09\09"
module asm "__kstrtabns_find_vpid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22pid_task\22\09\09\09\09\09"
module asm "__kstrtabns_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_task_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22get_task_pid\22\09\09\09\09\09"
module asm "__kstrtabns_get_task_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22get_pid_task\22\09\09\09\09\09"
module asm "__kstrtabns_get_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_get_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22find_get_pid\22\09\09\09\09\09"
module asm "__kstrtabns_find_get_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22pid_nr_ns\22\09\09\09\09\09"
module asm "__kstrtabns_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pid_vnr:\09\09\09\09\09"
module asm "\09.asciz \09\22pid_vnr\22\09\09\09\09\09"
module asm "__kstrtabns_pid_vnr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___task_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22__task_pid_nr_ns\22\09\09\09\09\09"
module asm "__kstrtabns___task_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_active_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22task_active_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_task_active_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.129, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.110 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.129 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.64 }
%union.anon.64 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.66, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@init_pid_ns = dso_local global %struct.pid_namespace { %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, %struct.callback_head zeroinitializer, i32 -2147483648, ptr @init_task, ptr null, i32 0, ptr null, ptr @init_user_ns, ptr null, i32 0, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr null, i32 -268435460, %struct.refcount_struct { %struct.atomic_t { i32 2 } } } }, align 4
@init_struct_pid = dso_local local_unnamed_addr global %struct.pid { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, i32 0, %struct.spinlock zeroinitializer, [4 x %struct.hlist_head] zeroinitializer, %struct.hlist_head zeroinitializer, %struct.wait_queue_head zeroinitializer, %struct.callback_head zeroinitializer, [1 x %struct.upid] [%struct.upid { i32 0, ptr @init_pid_ns }] }, align 4
@pid_max = dso_local local_unnamed_addr global i32 32768, align 4
@pid_max_min = dso_local local_unnamed_addr global i32 301, align 4
@pid_max_max = dso_local local_unnamed_addr global i32 32768, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_init_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_init_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_pid_ns to i32), ptr @__kstrtab_init_pid_ns, ptr @__kstrtabns_init_pid_ns }, section "___ksymtab_gpl+init_pid_ns", align 4
@__kstrtab_put_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_put_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_pid to i32), ptr @__kstrtab_put_pid, ptr @__kstrtabns_put_pid }, section "___ksymtab_gpl+put_pid", align 4
@pidmap_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [13 x i8] c"kernel/pid.c\00", align 1
@alloc_pid.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&pid->wait_pidfd\00", align 1
@__kstrtab_find_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_find_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_pid_ns to i32), ptr @__kstrtab_find_pid_ns, ptr @__kstrtabns_find_pid_ns }, section "___ksymtab_gpl+find_pid_ns", align 4
@__kstrtab_find_vpid = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_vpid = external dso_local constant [0 x i8], align 1
@__ksymtab_find_vpid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_vpid to i32), ptr @__kstrtab_find_vpid, ptr @__kstrtabns_find_vpid }, section "___ksymtab_gpl+find_vpid", align 4
@__kstrtab_pid_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_pid_task = external dso_local constant [0 x i8], align 1
@__ksymtab_pid_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pid_task to i32), ptr @__kstrtab_pid_task, ptr @__kstrtabns_pid_task }, section "___ksymtab+pid_task", align 4
@__kstrtab_get_task_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_task_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_get_task_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_task_pid to i32), ptr @__kstrtab_get_task_pid, ptr @__kstrtabns_get_task_pid }, section "___ksymtab_gpl+get_task_pid", align 4
@__kstrtab_get_pid_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_pid_task = external dso_local constant [0 x i8], align 1
@__ksymtab_get_pid_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_pid_task to i32), ptr @__kstrtab_get_pid_task, ptr @__kstrtabns_get_pid_task }, section "___ksymtab_gpl+get_pid_task", align 4
@__kstrtab_find_get_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_get_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_find_get_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_get_pid to i32), ptr @__kstrtab_find_get_pid, ptr @__kstrtabns_find_get_pid }, section "___ksymtab_gpl+find_get_pid", align 4
@__kstrtab_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_pid_nr_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pid_nr_ns to i32), ptr @__kstrtab_pid_nr_ns, ptr @__kstrtabns_pid_nr_ns }, section "___ksymtab_gpl+pid_nr_ns", align 4
@__kstrtab_pid_vnr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pid_vnr = external dso_local constant [0 x i8], align 1
@__ksymtab_pid_vnr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pid_vnr to i32), ptr @__kstrtab_pid_vnr, ptr @__kstrtabns_pid_vnr }, section "___ksymtab_gpl+pid_vnr", align 4
@__kstrtab___task_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns___task_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__ksymtab___task_pid_nr_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__task_pid_nr_ns to i32), ptr @__kstrtab___task_pid_nr_ns, ptr @__kstrtabns___task_pid_nr_ns }, section "___ksymtab+__task_pid_nr_ns", align 4
@__kstrtab_task_active_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_active_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_task_active_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_active_pid_ns to i32), ptr @__kstrtab_task_active_pid_ns, ptr @__kstrtabns_task_active_pid_ns }, section "___ksymtab_gpl+task_active_pid_ns", align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"[pidfd]\00", align 1
@pidfd_fops = external dso_local constant %struct.file_operations, align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"\016pid_max: default: %u minimum: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___task_pid_nr_ns, ptr @__ksymtab_find_get_pid, ptr @__ksymtab_find_pid_ns, ptr @__ksymtab_find_vpid, ptr @__ksymtab_get_pid_task, ptr @__ksymtab_get_task_pid, ptr @__ksymtab_init_pid_ns, ptr @__ksymtab_pid_nr_ns, ptr @__ksymtab_pid_task, ptr @__ksymtab_pid_vnr, ptr @__ksymtab_put_pid, ptr @__ksymtab_task_active_pid_ns], section "llvm.metadata"

@sys_pidfd_open = dso_local alias i32 (i32, i32), ptr @__se_sys_pidfd_open
@sys_pidfd_getfd = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_pidfd_getfd

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_pid(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.pid, ptr %0, i32 0, i32 7, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %17, label %13, !prof !12

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #13
  br label %17

14:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %15 = getelementptr inbounds %struct.pid_namespace, ptr %7, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %0) #13
  br label %17

17:                                               ; preds = %14, %13, %11, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pidmap_lock) #13
  %3 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 7
  br label %5

5:                                                ; preds = %23, %1
  %6 = phi i32 [ 0, %1 ], [ %26, %23 ]
  %7 = getelementptr %struct.upid, ptr %4, i32 %6
  %8 = getelementptr %struct.upid, ptr %4, i32 %6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pid_namespace, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  switch i32 %11, label %23 [
    i32 3, label %13
    i32 2, label %13
    i32 -2147483647, label %17
  ]

13:                                               ; preds = %5, %5
  %14 = getelementptr inbounds %struct.pid_namespace, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @wake_up_process(ptr noundef %15) #13
  br label %23

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.pid_namespace, ptr %9, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !12

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef null) #13
  br label %22

22:                                               ; preds = %21, %17
  store i32 0, ptr %10, align 4
  br label %23

23:                                               ; preds = %22, %13, %5
  %24 = load i32, ptr %7, align 4
  %25 = tail call ptr @idr_remove(ptr noundef %9, i32 noundef %24) #13
  %26 = add i32 %6, 1
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %5

29:                                               ; preds = %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pidmap_lock, i32 noundef %2) #13
  %30 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %30, ptr noundef nonnull @delayed_put_pid) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_put_pid(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.pid, ptr %2, i32 0, i32 7, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #13, !srcloc !10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #13, !srcloc !11
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %18, label %14, !prof !12

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #13
  br label %18

15:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %16 = getelementptr inbounds %struct.pid_namespace, ptr %8, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %2) #13
  br label %18

18:                                               ; preds = %15, %14, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_pid(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %139, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3264) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %139, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %4, align 4
  %15 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = icmp sgt i32 %14, -1
  br i1 %16, label %17, label %80

17:                                               ; preds = %73, %13
  %18 = phi ptr [ %77, %73 ], [ %0, %13 ]
  %19 = phi i32 [ %78, %73 ], [ %14, %13 ]
  %20 = phi i32 [ %46, %73 ], [ %2, %13 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %4, align 4
  %24 = sub i32 %23, %19
  %25 = getelementptr i32, ptr %1, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = load i32, ptr @pid_max, align 4
  %29 = icmp slt i32 %26, %28
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %111

31:                                               ; preds = %22
  %32 = icmp eq i32 %26, 1
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.pid_namespace, ptr %18, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %111, label %37

37:                                               ; preds = %33, %31
  %38 = getelementptr inbounds %struct.pid_namespace, ptr %18, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = tail call zeroext i1 @ns_capable(ptr noundef %39, i32 noundef 40) #13
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i1 @ns_capable(ptr noundef %39, i32 noundef 21) #13
  br i1 %42, label %43, label %111

43:                                               ; preds = %41, %37
  %44 = add i32 %20, -1
  br label %45

45:                                               ; preds = %43, %17
  %46 = phi i32 [ %44, %43 ], [ 0, %17 ]
  %47 = phi i32 [ %26, %43 ], [ 0, %17 ]
  tail call void @idr_preload(i32 noundef 3264) #13
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %47, 1
  %51 = tail call i32 @idr_alloc(ptr noundef %18, ptr noundef null, i32 noundef %47, i32 noundef %50, i32 noundef 2592) #13
  %52 = icmp eq i32 %51, -28
  %53 = select i1 %52, i32 -17, i32 %51
  br label %61

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.idr, ptr %18, i32 0, i32 2
  %56 = load volatile i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 300
  %58 = select i1 %57, i32 300, i32 1
  %59 = load i32, ptr @pid_max, align 4
  %60 = tail call i32 @idr_alloc_cyclic(ptr noundef %18, ptr noundef null, i32 noundef %58, i32 noundef %59, i32 noundef 2592) #13
  br label %61

61:                                               ; preds = %54, %49
  %62 = phi i32 [ %60, %54 ], [ %53, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %63 = load i16, ptr @pidmap_lock, align 64
  %64 = add i16 %63, 1
  store i16 %64, ptr @pidmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %68 = icmp slt i32 %62, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = icmp eq i32 %62, -28
  %71 = select i1 %70, i32 -11, i32 %62
  %72 = inttoptr i32 %71 to ptr
  br label %111

73:                                               ; preds = %61
  %74 = getelementptr %struct.pid, ptr %11, i32 0, i32 7, i32 %19
  store i32 %62, ptr %74, align 4
  %75 = getelementptr %struct.pid, ptr %11, i32 0, i32 7, i32 %19, i32 1
  store ptr %18, ptr %75, align 8
  %76 = getelementptr inbounds %struct.pid_namespace, ptr %18, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = add nsw i32 %19, -1
  %79 = icmp sgt i32 %19, 0
  br i1 %79, label %17, label %80

80:                                               ; preds = %73, %13
  %81 = phi i32 [ %14, %13 ], [ -1, %73 ]
  store volatile i32 1, ptr %11, align 8
  %82 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 2
  %83 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %82, i8 0, i64 20, i1 false)
  tail call void @__init_waitqueue_head(ptr noundef %83, ptr noundef nonnull @.str.1, ptr noundef nonnull @alloc_pid.__key) #13
  %84 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 4
  store ptr null, ptr %84, align 4
  %85 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 7
  %86 = load i32, ptr %4, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #13
  %87 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %108, label %90

90:                                               ; preds = %80
  %91 = getelementptr %struct.upid, ptr %85, i32 %86
  %92 = icmp ult ptr %91, %85
  br i1 %92, label %105, label %93

93:                                               ; preds = %93, %90
  %94 = phi ptr [ %103, %93 ], [ %91, %90 ]
  %95 = getelementptr inbounds %struct.upid, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %94, align 4
  %98 = tail call ptr @idr_replace(ptr noundef %96, ptr noundef nonnull %11, i32 noundef %97) #13
  %99 = load ptr, ptr %95, align 4
  %100 = getelementptr inbounds %struct.pid_namespace, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 4
  %103 = getelementptr %struct.upid, ptr %94, i32 -1
  %104 = icmp ult ptr %103, %85
  br i1 %104, label %105, label %93

105:                                              ; preds = %93, %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %106 = load i16, ptr @pidmap_lock, align 64
  %107 = add i16 %106, 1
  store i16 %107, ptr @pidmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %139

108:                                              ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %109 = load i16, ptr @pidmap_lock, align 64
  %110 = add i16 %109, 1
  store i16 %110, ptr @pidmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %111

111:                                              ; preds = %108, %69, %41, %33, %22
  %112 = phi i32 [ %81, %108 ], [ %19, %69 ], [ %19, %22 ], [ %19, %33 ], [ %19, %41 ]
  %113 = phi ptr [ inttoptr (i32 -12 to ptr), %108 ], [ %72, %69 ], [ inttoptr (i32 -1 to ptr), %41 ], [ inttoptr (i32 -22 to ptr), %33 ], [ inttoptr (i32 -22 to ptr), %22 ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #13
  %114 = add i32 %112, 1
  %115 = load i32, ptr %4, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 7
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i32 [ %114, %117 ], [ %126, %119 ]
  %121 = getelementptr %struct.upid, ptr %118, i32 %120
  %122 = getelementptr %struct.upid, ptr %118, i32 %120, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = load i32, ptr %121, align 4
  %125 = tail call ptr @idr_remove(ptr noundef %123, i32 noundef %124) #13
  %126 = add i32 %120, 1
  %127 = load i32, ptr %4, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %119

129:                                              ; preds = %119, %111
  %130 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, -2147483648
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %134, align 4
  br label %135

135:                                              ; preds = %133, %129
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %136 = load i16, ptr @pidmap_lock, align 64
  %137 = add i16 %136, 1
  store i16 %137, ptr @pidmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %138 = load ptr, ptr %9, align 4
  tail call void @kmem_cache_free(ptr noundef %138, ptr noundef nonnull %11) #13
  br label %139

139:                                              ; preds = %135, %105, %8, %3
  %140 = phi ptr [ %113, %135 ], [ %11, %105 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_pid_allocation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #13
  %2 = getelementptr inbounds %struct.pid_namespace, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2147483647
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %5 = load i16, ptr @pidmap_lock, align 64
  %6 = add i16 %5, 1
  store i16 %6, ptr @pidmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_pid_ns(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @idr_find(ptr noundef %1, i32 noundef %0) #13
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_vpid(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.pid, ptr %4, i32 0, i32 7, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ null, %1 ]
  %13 = tail call ptr @idr_find(ptr noundef %12, i32 noundef %0) #13
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @task_active_pid_ns(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pid, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.pid, ptr %3, i32 0, i32 7, i32 %7, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %9, %5 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @attach_pid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  br label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 22, i32 %1
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %5, %4 ], [ %9, %6 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %1
  %14 = getelementptr %struct.pid, ptr %12, i32 0, i32 3, i32 %1
  %15 = load ptr, ptr %14, align 4
  store ptr %15, ptr %13, align 4
  %16 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %1, i32 1
  store volatile ptr %14, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  store volatile ptr %13, ptr %14, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %13, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @detach_pid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  br label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 22, i32 %1
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %5, %4 ], [ %9, %6 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %1, i32 1
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %14, ptr %16, align 4
  %17 = icmp eq ptr %14, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  store volatile ptr %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %10
  store volatile ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  store ptr null, ptr %11, align 4
  %21 = getelementptr %struct.pid, ptr %12, i32 0, i32 3, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr %struct.pid, ptr %12, i32 0, i32 3, i32 2
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr %struct.pid, ptr %12, i32 0, i32 3, i32 1
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr %struct.pid, ptr %12, i32 0, i32 3, i32 0
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @free_pid(ptr noundef %12) #13
  br label %37

37:                                               ; preds = %36, %32, %28, %24, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @change_pid(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 %1
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ %10, %7 ]
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %1, i32 1
  %17 = load ptr, ptr %16, align 4
  store volatile ptr %15, ptr %17, align 4
  %18 = icmp eq ptr %15, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %17, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %11
  store volatile ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  store ptr %2, ptr %12, align 4
  %22 = getelementptr %struct.pid, ptr %13, i32 0, i32 3, i32 3
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr %struct.pid, ptr %13, i32 0, i32 3, i32 2
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr %struct.pid, ptr %13, i32 0, i32 3, i32 1
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr %struct.pid, ptr %13, i32 0, i32 3, i32 0
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @free_pid(ptr noundef %13) #13
  br label %38

38:                                               ; preds = %37, %33, %29, %25, %21
  br i1 %4, label %39, label %41

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  br label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %43 = load ptr, ptr %42, align 16
  %44 = getelementptr %struct.signal_struct, ptr %43, i32 0, i32 22, i32 %1
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi ptr [ %40, %39 ], [ %44, %41 ]
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.pid, ptr %47, i32 0, i32 3, i32 %1
  %49 = load ptr, ptr %48, align 4
  store ptr %49, ptr %14, align 4
  store volatile ptr %48, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  store volatile ptr %14, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.hlist_node, ptr %49, i32 0, i32 1
  store volatile ptr %14, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exchange_tids(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 62
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 3
  %8 = getelementptr inbounds %struct.pid, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %7, align 4
  %10 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  store volatile ptr %10, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store volatile ptr %9, ptr %8, align 4
  %11 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  store volatile ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  store volatile ptr %8, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  store volatile ptr %6, ptr %3, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  store volatile ptr %4, ptr %5, align 64
  %13 = icmp eq ptr %6, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.pid, ptr %6, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i32 [ %16, %14 ], [ 0, %2 ]
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  store volatile i32 %18, ptr %19, align 8
  %20 = icmp eq ptr %4, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  store volatile i32 %25, ptr %26, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @transfer_pid(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 62
  store ptr %7, ptr %8, align 64
  br label %9

9:                                                ; preds = %5, %3
  %10 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %2
  %11 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 63, i32 %2
  %12 = load ptr, ptr %10, align 4
  store ptr %12, ptr %11, align 4
  %13 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 63, i32 %2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 63, i32 %2, i32 1
  store volatile ptr %14, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %11, ptr %16, align 4
  %17 = icmp eq ptr %12, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %11, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %9
  store volatile ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @pid_task(ptr noundef %0, i32 noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.pid, ptr %0, i32 0, i32 3, i32 %1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = mul i32 %1, -8
  %9 = add i32 %8, -1348
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = select i1 %7, ptr null, ptr %10
  br label %12

12:                                               ; preds = %4, %2
  %13 = phi ptr [ %11, %4 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_task_by_pid_ns(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @idr_find(ptr noundef %1, i32 noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 0
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -1348
  %10 = select i1 %8, ptr null, ptr %9
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi ptr [ %10, %5 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_task_by_vpid(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.pid, ptr %4, i32 0, i32 7, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ null, %1 ]
  %13 = tail call ptr @idr_find(ptr noundef %12, i32 noundef %0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.pid, ptr %13, i32 0, i32 3, i32 0
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -1348
  %20 = select i1 %18, ptr null, ptr %19
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi ptr [ %20, %15 ], [ null, %11 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_get_task_by_vpid(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.pid, ptr %4, i32 0, i32 7, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ null, %1 ]
  %13 = tail call ptr @idr_find(ptr noundef %12, i32 noundef %0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.pid, ptr %13, i32 0, i32 3, i32 0
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -1348
  %20 = icmp eq ptr %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %17, i32 -804
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #13, !srcloc !28
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !29

27:                                               ; preds = %22
  %28 = add i32 %25, 1
  %29 = or i32 %28, %25
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31, !prof !12

31:                                               ; preds = %27, %22
  %32 = phi i32 [ 2, %22 ], [ 1, %27 ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %32) #13
  br label %33

33:                                               ; preds = %31, %27, %15, %11
  %34 = phi ptr [ %19, %27 ], [ %19, %31 ], [ null, %11 ], [ null, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_task_pid(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  br label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 22, i32 %1
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %5, %4 ], [ %9, %6 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #13, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #13, !srcloc !28
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !29

18:                                               ; preds = %14
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !12

22:                                               ; preds = %18, %14
  %23 = phi i32 [ 2, %14 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef %23) #13
  br label %24

24:                                               ; preds = %22, %18, %10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_pid_task(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.pid, ptr %0, i32 0, i32 3, i32 %1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = mul i32 %1, -8
  %9 = add i32 %8, -1348
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = icmp eq ptr %10, null
  %12 = or i1 %7, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #13, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #13, !srcloc !28
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !29

18:                                               ; preds = %13
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !12

22:                                               ; preds = %18, %13
  %23 = phi i32 [ 2, %13 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #13
  br label %24

24:                                               ; preds = %22, %18, %4, %2
  %25 = phi ptr [ %10, %18 ], [ %10, %22 ], [ null, %2 ], [ null, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_get_pid(i32 noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.pid, ptr %4, i32 0, i32 7, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ null, %1 ]
  %13 = tail call ptr @idr_find(ptr noundef %12, i32 noundef %0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #13, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #13, !srcloc !28
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !29

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !12

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %24) #13
  br label %25

25:                                               ; preds = %23, %19, %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  ret ptr %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pid_nr_ns(ptr noundef readonly %0, ptr noundef readonly %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.pid, ptr %0, i32 0, i32 7, i32 %6, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr %struct.pid, ptr %0, i32 0, i32 7, i32 %6
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10, %4, %2
  %18 = phi i32 [ %16, %14 ], [ 0, %10 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pid_vnr(ptr noundef readonly %0) #6 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.pid, ptr %4, i32 0, i32 7, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ null, %1 ]
  %13 = icmp eq ptr %0, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pid_namespace, ptr %12, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr %struct.pid, ptr %0, i32 0, i32 7, i32 %16, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr %struct.pid, ptr %0, i32 0, i32 7, i32 %16
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %20, %14, %11
  %28 = phi i32 [ %26, %24 ], [ 0, %20 ], [ 0, %14 ], [ 0, %11 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pid, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.pid, ptr %8, i32 0, i32 7, i32 %12, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %10, %5, %3
  %16 = phi ptr [ %2, %3 ], [ %14, %10 ], [ null, %5 ]
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr %struct.signal_struct, ptr %22, i32 0, i32 22, i32 %1
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi ptr [ %19, %18 ], [ %23, %20 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pid_namespace, ptr %16, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.pid, ptr %26, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = getelementptr %struct.pid, ptr %26, i32 0, i32 7, i32 %30, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %16
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr %struct.pid, ptr %26, i32 0, i32 7, i32 %30
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34, %28, %24
  %42 = phi i32 [ %40, %38 ], [ 0, %34 ], [ 0, %28 ], [ 0, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_ge_pid(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = call ptr @idr_get_next(ptr noundef %1, ptr noundef nonnull %3) #13
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pidfd_get_pid(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !31
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @pidfd_pid(ptr noundef nonnull %5) #13
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #13, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #13, !srcloc !28
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !29

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef %21) #13
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %22, %7
  %26 = and i32 %3, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @fput(ptr noundef nonnull %5) #13
  br label %29

29:                                               ; preds = %28, %25, %2
  %30 = phi ptr [ inttoptr (i32 -9 to ptr), %2 ], [ %8, %25 ], [ %8, %28 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pidfd_get_task(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !34
  %4 = call ptr @pidfd_get_pid(i32 noundef %0, ptr noundef nonnull %3)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %7 = icmp eq ptr %4, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %6
  %9 = getelementptr %struct.pid, ptr %4, i32 0, i32 3, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -1356
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %10, i32 -812
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #13, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #13, !srcloc !28
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !29

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %27, label %24, !prof !12

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #13
  br label %27

26:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %46

27:                                               ; preds = %24, %20, %8
  %28 = phi ptr [ null, %8 ], [ %12, %24 ], [ %12, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %29 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.pid, ptr %4, i32 0, i32 7, i32 %30, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #13, !srcloc !10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #13, !srcloc !11
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %42, label %38, !prof !12

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #13
  br label %42

39:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %40 = getelementptr inbounds %struct.pid_namespace, ptr %32, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef nonnull %4) #13
  br label %42

42:                                               ; preds = %39, %38, %36
  %43 = icmp eq ptr %28, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %3, align 4
  store i32 %45, ptr %1, align 4
  br label %46

46:                                               ; preds = %44, %42, %26, %2
  %47 = phi ptr [ %28, %44 ], [ %4, %2 ], [ inttoptr (i32 -3 to ptr), %26 ], [ inttoptr (i32 -3 to ptr), %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pidfd_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.pid, ptr %0, i32 0, i32 3, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, null
  %8 = and i32 %1, -526339
  %9 = icmp eq i32 %8, 0
  %10 = and i1 %9, %7
  br i1 %10, label %11, label %39

11:                                               ; preds = %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !28
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !29

15:                                               ; preds = %11
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %15, %11
  %20 = phi i32 [ 2, %11 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %20) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = or i32 %1, 524290
  %23 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.2, ptr noundef nonnull @pidfd_fops, ptr noundef nonnull %0, i32 noundef %22) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.pid, ptr %0, i32 0, i32 7, i32 %27, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %39, label %35, !prof !12

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #13
  br label %39

36:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %37 = getelementptr inbounds %struct.pid_namespace, ptr %29, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %0) #13
  br label %39

39:                                               ; preds = %36, %35, %33, %21, %4, %2
  %40 = phi i32 [ -22, %4 ], [ -22, %2 ], [ %23, %21 ], [ %23, %33 ], [ %23, %35 ], [ %23, %36 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pidfd_open(i32 noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, -2049
  %4 = icmp ne i32 %3, 0
  %5 = icmp slt i32 %0, 1
  %6 = or i1 %5, %4
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pid, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.pid, ptr %10, i32 0, i32 7, i32 %14, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi ptr [ %16, %12 ], [ null, %7 ]
  %19 = tail call ptr @idr_find(ptr noundef %18, i32 noundef %0) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #13, !srcloc !10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #13, !srcloc !28
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !29

25:                                               ; preds = %21
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %32, label %29, !prof !12

29:                                               ; preds = %25, %21
  %30 = phi i32 [ 2, %21 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef %30) #13
  br label %32

31:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %47

32:                                               ; preds = %29, %25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %33 = tail call i32 @pidfd_create(ptr noundef nonnull %19, i32 noundef %1) #13
  %34 = getelementptr inbounds %struct.pid, ptr %19, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.pid, ptr %19, i32 0, i32 7, i32 %35, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #13, !srcloc !10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #13, !srcloc !11
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %47, label %43, !prof !12

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef 3) #13
  br label %47

44:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %45 = getelementptr inbounds %struct.pid_namespace, ptr %37, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %19) #13
  br label %47

47:                                               ; preds = %44, %43, %41, %31, %2
  %48 = phi i32 [ -22, %2 ], [ -3, %31 ], [ %33, %41 ], [ %33, %43 ], [ %33, %44 ]
  ret i32 %48
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pid_idr_init() local_unnamed_addr #7 section ".init.text" {
  %1 = load i32, ptr @pid_max_max, align 4
  %2 = load i32, ptr @pid_max, align 4
  %3 = load i32, ptr @__cpu_possible_mask, align 4
  %4 = and i32 %3, 65535
  %5 = tail call i32 @__sw_hweight32(i32 noundef %4) #13
  %6 = load i32, ptr @__cpu_possible_mask, align 4
  %7 = and i32 %6, 65535
  %8 = shl i32 %5, 10
  %9 = tail call i32 @llvm.smax.i32(i32 %2, i32 %8)
  %10 = tail call i32 @llvm.smin.i32(i32 %1, i32 %9)
  store i32 %10, ptr @pid_max, align 4
  %11 = load i32, ptr @pid_max_min, align 4
  %12 = tail call i32 @__sw_hweight32(i32 noundef %7) #13
  %13 = load i32, ptr @pid_max, align 4
  %14 = shl i32 %12, 3
  %15 = tail call i32 @llvm.smax.i32(i32 %11, i32 %14)
  store i32 %15, ptr @pid_max_min, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15) #14
  store i32 0, ptr @init_pid_ns, align 4
  store i32 33554436, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 2), align 4
  %17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 60, i32 noundef 4, i32 noundef 270336, ptr noundef null) #13
  store ptr %17, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pidfd_getfd(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !35
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @pidfd_pid(ptr noundef nonnull %8) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %69

15:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %16 = icmp eq ptr %11, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = getelementptr %struct.pid, ptr %11, i32 0, i32 3, i32 0
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -1348
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %19, i32 -804
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #13, !srcloc !10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #13, !srcloc !28
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !29

29:                                               ; preds = %24
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %36, label %33, !prof !12

33:                                               ; preds = %29, %24
  %34 = phi i32 [ 2, %24 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #13
  br label %36

35:                                               ; preds = %17, %15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %69

36:                                               ; preds = %33, %29
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %37 = getelementptr i8, ptr %19, i32 268
  %38 = load ptr, ptr %37, align 16
  %39 = getelementptr inbounds %struct.signal_struct, ptr %38, i32 0, i32 56
  %40 = tail call i32 @down_read_killable(ptr noundef %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = inttoptr i32 %40 to ptr
  br label %54

44:                                               ; preds = %36
  %45 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %21, i32 noundef 18) #13
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call ptr @fget_task(ptr noundef nonnull %21, i32 noundef %1) #13
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %47, %46 ], [ inttoptr (i32 -1 to ptr), %44 ]
  %50 = load ptr, ptr %37, align 16
  %51 = getelementptr inbounds %struct.signal_struct, ptr %50, i32 0, i32 56
  tail call void @up_read(ptr noundef %51) #13
  %52 = icmp eq ptr %49, null
  %53 = select i1 %52, ptr inttoptr (i32 -9 to ptr), ptr %49
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi ptr [ %43, %42 ], [ %53, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #13, !srcloc !10
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #13, !srcloc !11
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = icmp sgt i32 %57, 0
  br i1 %60, label %63, label %61, !prof !12

61:                                               ; preds = %59
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #13
  br label %63

62:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void @__put_task_struct(ptr noundef nonnull %21) #13
  br label %63

63:                                               ; preds = %62, %61, %59
  %64 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = ptrtoint ptr %55 to i32
  br label %69

67:                                               ; preds = %63
  %68 = tail call i32 @receive_fd(ptr noundef %55, i32 noundef 524288) #13
  tail call void @fput(ptr noundef %55) #13
  br label %69

69:                                               ; preds = %67, %65, %35, %13
  %70 = phi i32 [ %14, %13 ], [ %66, %65 ], [ %68, %67 ], [ -3, %35 ]
  %71 = and i32 %6, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @fput(ptr noundef nonnull %8) #13
  br label %74

74:                                               ; preds = %73, %69, %5, %3
  %75 = phi i32 [ -22, %3 ], [ -9, %5 ], [ %70, %69 ], [ %70, %73 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{i64 2148460097}
!10 = !{i64 857031, i64 2148347002, i64 2148347028, i64 2148347075, i64 2148347097, i64 2148347125, i64 2148347145}
!11 = !{i64 2148362232, i64 2148362264, i64 2148362293, i64 2148362327, i64 2148362358, i64 2148362381}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149373449}
!14 = !{i64 2149024097}
!15 = !{i64 2149019921}
!16 = !{i64 2149019996, i64 2149020023, i64 2149020070, i64 2149020092, i64 2149020120, i64 2149020140}
!17 = !{i64 762954}
!18 = !{i64 2149048241}
!19 = !{i64 781409}
!20 = !{i64 2152099751}
!21 = !{i64 2150407224}
!22 = !{i64 2150383814}
!23 = !{i64 2150391241}
!24 = !{i64 2155878678}
!25 = !{i64 2155886538}
!26 = !{i64 2150371138}
!27 = !{i64 2149422869}
!28 = !{i64 2148359875, i64 2148359907, i64 2148359936, i64 2148359970, i64 2148360001, i64 2148360024}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2149423086}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: argument 0"}
!33 = distinct !{!33, !"fdget"}
!34 = !{!"auto-init"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"fdget: argument 0"}
!37 = distinct !{!37, !"fdget"}
