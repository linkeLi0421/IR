; ModuleID = '/llk/IR/kernel/sched/debug.c_pt.bc'
source_filename = "../kernel/sched/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.57 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.57 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.58, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.58 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.59, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.59 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.56 }
%struct.llist_node = type { ptr }
%union.anon.56 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sd_flag_debug = type { i32, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, ptr, %union.anon.60, ptr, i32, [0 x i32] }
%union.anon.60 = type { %struct.callback_head }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i32, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
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
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.118, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.119, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.120, ptr, %struct.address_space, %struct.list_head, %union.anon.121, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.118 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.119 = type { %struct.callback_head }
%union.anon.120 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.121 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_debug__404_343_sched_init_debug7 = internal global ptr @sched_init_debug, section ".initcall7.init", align 4
@debugfs_sched = internal unnamed_addr global ptr null, align 4
@sd_sysctl_cpus = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@sd_dentry = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [8 x i8] c"domains\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"domain%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cfs_rq[%d]:\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\01ccfs_rq[%d]:\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  .%-30s: %Ld.%06ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"exec_clock\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\01c  .%-30s: %Ld.%06ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MIN_vruntime\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"min_vruntime\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"max_vruntime\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"spread\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"spread0\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"  .%-30s: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"nr_spread_over\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"\01c  .%-30s: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"nr_running\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"h_nr_running\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"idle_nr_running\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"idle_h_nr_running\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"  .%-30s: %ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\01c  .%-30s: %ld\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"  .%-30s: %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"load_avg\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"\01c  .%-30s: %lu\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"runnable_avg\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"util_avg\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"  .%-30s: %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"util_est_enqueued\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"\01c  .%-30s: %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"removed.load_avg\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"removed.util_avg\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"removed.runnable_avg\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"rt_rq[%d]:\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"\01crt_rq[%d]:\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"rt_nr_running\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"rt_nr_migratory\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"  .%-30s: %Ld\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"rt_throttled\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\01c  .%-30s: %Ld\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"rt_time\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"rt_runtime\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"dl_rq[%d]:\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"\01cdl_rq[%d]:\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"dl_nr_running\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"dl_nr_migratory\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"  .%-30s: %lld\0A\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"dl_bw->bw\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"\01c  .%-30s: %lld\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"dl_bw->total_bw\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.53 = private unnamed_addr constant [23 x i8] c"%s (%d, #threads: %d)\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"\01c%s (%d, #threads: %d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [69 x i8] c"-------------------------------------------------------------------\0A\00", align 1
@.str.56 = private unnamed_addr constant [71 x i8] c"\01c-------------------------------------------------------------------\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"%-45s:%14Ld.%06ld\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"se.exec_start\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"\01c%-45s:%14Ld.%06ld\0A\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"se.vruntime\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"se.sum_exec_runtime\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"%-45s:%21Ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"se.nr_migrations\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"\01c%-45s:%21Ld\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"nr_switches\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"nr_voluntary_switches\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"nr_involuntary_switches\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"se.load.weight\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"se.avg.load_sum\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"se.avg.runnable_sum\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"se.avg.util_sum\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"se.avg.load_avg\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"se.avg.runnable_avg\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"se.avg.util_avg\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"se.avg.last_update_time\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"se.avg.util_est.ewma\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"se.avg.util_est.enqueued\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"dl.runtime\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"dl.deadline\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"clock-delta\00", align 1
@resched_latency_warn.latency_check_ratelimit = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 360000, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.resched_latency_warn = private unnamed_addr constant [21 x i8] c"resched_latency_warn\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"kernel/sched/debug.c\00", align 1
@.str.84 = private unnamed_addr constant [74 x i8] c"sched: CPU %d need_resched set for > %llu ns (%d ticks) without schedule\0A\00", align 1
@sched_debug_verbose = dso_local global i8 0, section ".data..read_mostly", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@sched_feat_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_feat_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_feat_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"latency_ns\00", align 1
@sysctl_sched_latency = external dso_local global i32, align 4
@.str.89 = private unnamed_addr constant [19 x i8] c"min_granularity_ns\00", align 1
@sysctl_sched_min_granularity = external dso_local global i32, align 4
@.str.90 = private unnamed_addr constant [24 x i8] c"idle_min_granularity_ns\00", align 1
@sysctl_sched_idle_min_granularity = external dso_local global i32, align 4
@.str.91 = private unnamed_addr constant [22 x i8] c"wakeup_granularity_ns\00", align 1
@sysctl_sched_wakeup_granularity = external dso_local global i32, align 4
@.str.92 = private unnamed_addr constant [16 x i8] c"latency_warn_ms\00", align 1
@sysctl_resched_latency_warn_ms = external dso_local global i32, align 4
@.str.93 = private unnamed_addr constant [18 x i8] c"latency_warn_once\00", align 1
@sysctl_resched_latency_warn_once = external dso_local global i32, align 4
@.str.94 = private unnamed_addr constant [16 x i8] c"tunable_scaling\00", align 1
@sched_scaling_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_scaling_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_scaling_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.95 = private unnamed_addr constant [18 x i8] c"migration_cost_ns\00", align 1
@sysctl_sched_migration_cost = external dso_local global i32, section ".data..read_mostly", align 4
@.str.96 = private unnamed_addr constant [11 x i8] c"nr_migrate\00", align 1
@sysctl_sched_nr_migrate = external dso_local global i32, section ".data..read_mostly", align 4
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@.str.97 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@sched_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_debug_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.100 = private unnamed_addr constant [4 x i8] c"NO_\00", align 1
@sched_feat_names = internal constant [25 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], align 4
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.101 = private unnamed_addr constant [21 x i8] c"GENTLE_FAIR_SLEEPERS\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"START_DEBIT\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"NEXT_BUDDY\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"LAST_BUDDY\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"CACHE_HOT_BUDDY\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"WAKEUP_PREEMPTION\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"HRTICK\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"HRTICK_DL\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"DOUBLE_TICK\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"NONTASK_CAPACITY\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"TTWU_QUEUE\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"SIS_PROP\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"WARN_DOUBLE_CLOCK\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"RT_PUSH_IPI\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"RT_RUNTIME_SHARE\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"LB_MIN\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"ATTACH_AGE_LOAD\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"WA_IDLE\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"WA_WEIGHT\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"WA_BIAS\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"UTIL_EST\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"UTIL_EST_FASTUP\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"LATENCY_WARN\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"ALT_PERIOD\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"BASE_SLICE\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@sysctl_sched_tunable_scaling = external dso_local local_unnamed_addr global i32, align 4
@.str.127 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@sched_debug_sops = internal constant %struct.seq_operations { ptr @sched_debug_start, ptr @sched_debug_stop, ptr @sched_debug_next, ptr @sched_debug_show }, align 4
@.str.128 = private unnamed_addr constant [13 x i8] c"min_interval\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"max_interval\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"max_newidle_lb_cost\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"busy_factor\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"imbalance_pct\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"cache_nice_tries\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@sd_flags_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sd_flags_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sd_flag_debug = external dso_local local_unnamed_addr constant [0 x %struct.sd_flag_debug], align 4
@.str.136 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.137 = private unnamed_addr constant [37 x i8] c"Sched Debug Version: v0.11, %s %.*s\0A\00", align 1
@.str.138 = private unnamed_addr constant [39 x i8] c"\01cSched Debug Version: v0.11, %s %.*s\0A\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"%-40s: %Ld.%06ld\0A\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"ktime\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"\01c%-40s: %Ld.%06ld\0A\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"sched_clk\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"%-40s: %Ld\0A\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"jiffies\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.146 = private unnamed_addr constant [14 x i8] c"\01c%-40s: %Ld\0A\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"sysctl_sched\0A\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"\01csysctl_sched\0A\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"  .%-40s: %Ld.%06ld\0A\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"sysctl_sched_latency\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"\01c  .%-40s: %Ld.%06ld\0A\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"sysctl_sched_min_granularity\00", align 1
@.str.153 = private unnamed_addr constant [34 x i8] c"sysctl_sched_idle_min_granularity\00", align 1
@.str.154 = private unnamed_addr constant [32 x i8] c"sysctl_sched_wakeup_granularity\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"  .%-40s: %Ld\0A\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"sysctl_sched_child_runs_first\00", align 1
@sysctl_sched_child_runs_first = external dso_local local_unnamed_addr global i32, align 4
@.str.157 = private unnamed_addr constant [17 x i8] c"\01c  .%-40s: %Ld\0A\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"sysctl_sched_features\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"  .%-40s: %d (%s)\0A\00", align 1
@.str.160 = private unnamed_addr constant [29 x i8] c"sysctl_sched_tunable_scaling\00", align 1
@sched_tunable_scaling_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.162, ptr @.str.163, ptr @.str.164], align 4
@.str.161 = private unnamed_addr constant [21 x i8] c"\01c  .%-40s: %d (%s)\0A\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.162 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"logarithmic\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"cpu#%d\0A\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"\01ccpu#%d\0A\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"nr_uninterruptible\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"next_balance\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"curr->pid\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"clock_task\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"avg_idle\00", align 1
@.str.173 = private unnamed_addr constant [22 x i8] c"max_idle_balance_cost\00", align 1
@.str.174 = private unnamed_addr constant [17 x i8] c"runnable tasks:\0A\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"\01crunnable tasks:\0A\00", align 1
@.str.176 = private unnamed_addr constant [111 x i8] c" S            task   PID         tree-key  switches  prio     wait-time             sum-exec        sum-sleep\0A\00", align 1
@.str.177 = private unnamed_addr constant [113 x i8] c"\01c S            task   PID         tree-key  switches  prio     wait-time             sum-exec        sum-sleep\0A\00", align 1
@.str.178 = private unnamed_addr constant [111 x i8] c"-------------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.179 = private unnamed_addr constant [113 x i8] c"\01c-------------------------------------------------------------------------------------------------------------\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@.str.180 = private unnamed_addr constant [3 x i8] c">R\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"\01c>R\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"\01c %c\00", align 1
@.str.184 = private unnamed_addr constant [31 x i8] c" %15s %5d %9Ld.%06ld %9Ld %5d \00", align 1
@.str.185 = private unnamed_addr constant [33 x i8] c"\01c %15s %5d %9Ld.%06ld %9Ld %5d \00", align 1
@.str.186 = private unnamed_addr constant [48 x i8] c"%9lld.%06ld %9lld.%06ld %9lld.%06ld %9lld.%06ld\00", align 1
@.str.187 = private unnamed_addr constant [50 x i8] c"\01c%9lld.%06ld %9lld.%06ld %9lld.%06ld %9lld.%06ld\00", align 1
@task_index_to_char.state_char = internal unnamed_addr constant [10 x i8] c"RSDTtXZPI\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_debug__404_343_sched_init_debug7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sched_init_debug() #0 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.85, ptr noundef null) #13
  store ptr %1, ptr @debugfs_sched, align 4
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.86, i16 noundef zeroext 420, ptr noundef %1, ptr noundef null, ptr noundef nonnull @sched_feat_fops) #13
  %3 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.87, i16 noundef zeroext 420, ptr noundef %3, ptr noundef nonnull @sched_debug_verbose) #13
  %4 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.88, i16 noundef zeroext 420, ptr noundef %4, ptr noundef nonnull @sysctl_sched_latency) #13
  %5 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.89, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull @sysctl_sched_min_granularity) #13
  %6 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.90, i16 noundef zeroext 420, ptr noundef %6, ptr noundef nonnull @sysctl_sched_idle_min_granularity) #13
  %7 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.91, i16 noundef zeroext 420, ptr noundef %7, ptr noundef nonnull @sysctl_sched_wakeup_granularity) #13
  %8 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.92, i16 noundef zeroext 420, ptr noundef %8, ptr noundef nonnull @sysctl_resched_latency_warn_ms) #13
  %9 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.93, i16 noundef zeroext 420, ptr noundef %9, ptr noundef nonnull @sysctl_resched_latency_warn_once) #13
  %10 = load ptr, ptr @debugfs_sched, align 4
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.94, i16 noundef zeroext 420, ptr noundef %10, ptr noundef null, ptr noundef nonnull @sched_scaling_fops) #13
  %12 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.95, i16 noundef zeroext 420, ptr noundef %12, ptr noundef nonnull @sysctl_sched_migration_cost) #13
  %13 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.96, i16 noundef zeroext 420, ptr noundef %13, ptr noundef nonnull @sysctl_sched_nr_migrate) #13
  tail call void @mutex_lock(ptr noundef nonnull @sched_domains_mutex) #13
  tail call void @update_sched_domain_debugfs()
  tail call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #13
  %14 = load ptr, ptr @debugfs_sched, align 4
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.97, i16 noundef zeroext 292, ptr noundef %14, ptr noundef null, ptr noundef nonnull @sched_debug_fops) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_sched_domain_debugfs() local_unnamed_addr #1 {
  %1 = alloca [32 x i8], align 1
  %2 = load ptr, ptr @debugfs_sched, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @sd_dentry, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef nonnull %2) #13
  store ptr %8, ptr @sd_dentry, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @sd_sysctl_cpus) #14
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %44, %9
  %14 = phi i32 [ %52, %44 ], [ %10, %9 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !8
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %14)
  %16 = load ptr, ptr @sd_dentry, align 4
  %17 = call ptr @debugfs_lookup(ptr noundef nonnull %1, ptr noundef %16) #13
  call void @debugfs_remove(ptr noundef %17) #13
  %18 = load ptr, ptr @sd_dentry, align 4
  %19 = call ptr @debugfs_create_dir(ptr noundef nonnull %1, ptr noundef %18) #13
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 30
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %27, %13
  %28 = phi i32 [ %41, %27 ], [ 0, %13 ]
  %29 = phi ptr [ %42, %27 ], [ %25, %13 ]
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %28)
  %31 = call ptr @debugfs_create_dir(ptr noundef nonnull %1, ptr noundef %19) #13
  %32 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 3
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.128, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %32) #13
  %33 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 4
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.129, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 14
  call void @debugfs_create_u64(ptr noundef nonnull @.str.130, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %34) #13
  %35 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 5
  call void @debugfs_create_u32(ptr noundef nonnull @.str.131, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %35) #13
  %36 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.132, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.133, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 17
  call void @debugfs_create_str(ptr noundef nonnull @.str.134, i16 noundef zeroext 292, ptr noundef %31, ptr noundef %38) #13
  %39 = getelementptr inbounds %struct.sched_domain, ptr %29, i32 0, i32 9
  %40 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.135, i16 noundef zeroext 292, ptr noundef %31, ptr noundef %39, ptr noundef nonnull @sd_flags_fops) #13
  %41 = add i32 %28, 1
  %42 = load ptr, ptr %29, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %27

44:                                               ; preds = %27, %13
  %45 = and i32 %14, 31
  %46 = shl nuw i32 1, %45
  %47 = lshr i32 %14, 5
  %48 = getelementptr i32, ptr @sd_sysctl_cpus, i32 %47
  %49 = xor i32 %46, -1
  %50 = load i32, ptr %48, align 4
  %51 = and i32 %50, %49
  store i32 %51, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #13
  %52 = call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @sd_sysctl_cpus) #14
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %13, label %55

55:                                               ; preds = %44, %9, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dirty_sched_domain_sysctl(i32 noundef %0) local_unnamed_addr #7 {
  %2 = and i32 %0, 31
  %3 = shl nuw i32 1, %2
  %4 = lshr i32 %0, 5
  %5 = getelementptr i32, ptr @sd_sysctl_cpus, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_cfs_rq(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq ptr %0, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %1) #13
  %10 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 5
  %11 = load i64, ptr %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = sub i64 0, %11
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #15, !srcloc !9
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %15, i32 0) #15, !srcloc !10
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = lshr i64 %17, 18
  %19 = sub nsw i64 0, %18
  br label %25

20:                                               ; preds = %9
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #15, !srcloc !9
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %21, i32 0) #15, !srcloc !10
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = lshr i64 %23, 18
  br label %25

25:                                               ; preds = %20, %13
  %26 = phi i64 [ %19, %13 ], [ %24, %20 ]
  %27 = tail call i64 @llvm.abs.i64(i64 %11, i1 false) #13
  %28 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %27) #15, !srcloc !9
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %27, i64 %28, i32 0) #15, !srcloc !10
  %30 = extractvalue { i64, i32 } %29, 0
  %31 = trunc i64 %27 to i32
  %32 = lshr i64 %30, 18
  %33 = trunc i64 %32 to i32
  %34 = mul i32 %33, -1000000
  %35 = add i32 %34, %31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i64 noundef %26, i32 noundef %35) #13
  br label %66

36:                                               ; preds = %3
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1) #16
  %39 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = sub i64 0, %40
  %44 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %43) #15, !srcloc !9
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %43, i64 %44, i32 0) #15, !srcloc !10
  %46 = extractvalue { i64, i32 } %45, 0
  %47 = lshr i64 %46, 18
  %48 = sub nsw i64 0, %47
  br label %54

49:                                               ; preds = %36
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %40) #15, !srcloc !9
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %40, i64 %50, i32 0) #15, !srcloc !10
  %52 = extractvalue { i64, i32 } %51, 0
  %53 = lshr i64 %52, 18
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i64 [ %48, %42 ], [ %53, %49 ]
  %56 = tail call i64 @llvm.abs.i64(i64 %40, i1 false) #13
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %56) #15, !srcloc !9
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %56, i64 %57, i32 0) #15, !srcloc !10
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = trunc i64 %56 to i32
  %61 = lshr i64 %59, 18
  %62 = trunc i64 %61 to i32
  %63 = mul i32 %62, -1000000
  %64 = add i32 %63, %60
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i64 noundef %55, i32 noundef %64) #16
  br label %66

66:                                               ; preds = %54, %25
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !11
  tail call void @raw_spin_rq_lock_nested(ptr noundef %7, i32 noundef 0) #13
  %68 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 8, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @__pick_first_entity(ptr noundef %2) #13
  %73 = getelementptr inbounds %struct.sched_entity, ptr %72, i32 0, i32 6
  %74 = load i64, ptr %73, align 16
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %74, %71 ], [ -1, %66 ]
  %77 = tail call ptr @__pick_last_entity(ptr noundef %2) #13
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.sched_entity, ptr %77, i32 0, i32 6
  %81 = load i64, ptr %80, align 16
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i64 [ %81, %79 ], [ -1, %75 ]
  %84 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 6
  %85 = load i64, ptr %84, align 32
  %86 = load i32, ptr @__per_cpu_offset, align 4
  %87 = add i32 %86, ptrtoint (ptr @runqueues to i32)
  %88 = inttoptr i32 %87 to ptr
  %89 = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 10, i32 6
  %90 = load i64, ptr %89, align 32
  tail call void @raw_spin_rq_unlock(ptr noundef %7) #13
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %67) #13, !srcloc !12
  %91 = icmp slt i64 %76, 0
  br i1 %8, label %153, label %92

92:                                               ; preds = %82
  br i1 %91, label %93, label %100

93:                                               ; preds = %92
  %94 = sub i64 0, %76
  %95 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %94) #15, !srcloc !9
  %96 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %94, i64 %95, i32 0) #15, !srcloc !10
  %97 = extractvalue { i64, i32 } %96, 0
  %98 = lshr i64 %97, 18
  %99 = sub nsw i64 0, %98
  br label %105

100:                                              ; preds = %92
  %101 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %76) #15, !srcloc !9
  %102 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %76, i64 %101, i32 0) #15, !srcloc !10
  %103 = extractvalue { i64, i32 } %102, 0
  %104 = lshr i64 %103, 18
  br label %105

105:                                              ; preds = %100, %93
  %106 = phi i64 [ %99, %93 ], [ %104, %100 ]
  %107 = tail call i64 @llvm.abs.i64(i64 %76, i1 false) #13
  %108 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %107) #15, !srcloc !9
  %109 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %107, i64 %108, i32 0) #15, !srcloc !10
  %110 = extractvalue { i64, i32 } %109, 0
  %111 = trunc i64 %107 to i32
  %112 = lshr i64 %110, 18
  %113 = trunc i64 %112 to i32
  %114 = mul i32 %113, -1000000
  %115 = add i32 %114, %111
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i64 noundef %106, i32 noundef %115) #13
  %116 = icmp slt i64 %85, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %105
  %118 = sub i64 0, %85
  %119 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %118) #15, !srcloc !9
  %120 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %118, i64 %119, i32 0) #15, !srcloc !10
  %121 = extractvalue { i64, i32 } %120, 0
  %122 = lshr i64 %121, 18
  %123 = sub nsw i64 0, %122
  br label %129

124:                                              ; preds = %105
  %125 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %85) #15, !srcloc !9
  %126 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %85, i64 %125, i32 0) #15, !srcloc !10
  %127 = extractvalue { i64, i32 } %126, 0
  %128 = lshr i64 %127, 18
  br label %129

129:                                              ; preds = %124, %117
  %130 = phi i64 [ %123, %117 ], [ %128, %124 ]
  %131 = tail call i64 @llvm.abs.i64(i64 %85, i1 false) #13
  %132 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %131) #15, !srcloc !9
  %133 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %131, i64 %132, i32 0) #15, !srcloc !10
  %134 = extractvalue { i64, i32 } %133, 0
  %135 = trunc i64 %131 to i32
  %136 = lshr i64 %134, 18
  %137 = trunc i64 %136 to i32
  %138 = mul i32 %137, -1000000
  %139 = add i32 %138, %135
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i64 noundef %130, i32 noundef %139) #13
  %140 = icmp slt i64 %83, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %129
  %142 = sub i64 0, %83
  %143 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %142) #15, !srcloc !9
  %144 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %142, i64 %143, i32 0) #15, !srcloc !10
  %145 = extractvalue { i64, i32 } %144, 0
  %146 = lshr i64 %145, 18
  %147 = sub nsw i64 0, %146
  br label %216

148:                                              ; preds = %129
  %149 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %83) #15, !srcloc !9
  %150 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %83, i64 %149, i32 0) #15, !srcloc !10
  %151 = extractvalue { i64, i32 } %150, 0
  %152 = lshr i64 %151, 18
  br label %216

153:                                              ; preds = %82
  br i1 %91, label %154, label %161

154:                                              ; preds = %153
  %155 = sub i64 0, %76
  %156 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %155) #15, !srcloc !9
  %157 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %155, i64 %156, i32 0) #15, !srcloc !10
  %158 = extractvalue { i64, i32 } %157, 0
  %159 = lshr i64 %158, 18
  %160 = sub nsw i64 0, %159
  br label %166

161:                                              ; preds = %153
  %162 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %76) #15, !srcloc !9
  %163 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %76, i64 %162, i32 0) #15, !srcloc !10
  %164 = extractvalue { i64, i32 } %163, 0
  %165 = lshr i64 %164, 18
  br label %166

166:                                              ; preds = %161, %154
  %167 = phi i64 [ %160, %154 ], [ %165, %161 ]
  %168 = tail call i64 @llvm.abs.i64(i64 %76, i1 false) #13
  %169 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %168) #15, !srcloc !9
  %170 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %168, i64 %169, i32 0) #15, !srcloc !10
  %171 = extractvalue { i64, i32 } %170, 0
  %172 = trunc i64 %168 to i32
  %173 = lshr i64 %171, 18
  %174 = trunc i64 %173 to i32
  %175 = mul i32 %174, -1000000
  %176 = add i32 %175, %172
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef %167, i32 noundef %176) #16
  %178 = icmp slt i64 %85, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %166
  %180 = sub i64 0, %85
  %181 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %180) #15, !srcloc !9
  %182 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %180, i64 %181, i32 0) #15, !srcloc !10
  %183 = extractvalue { i64, i32 } %182, 0
  %184 = lshr i64 %183, 18
  %185 = sub nsw i64 0, %184
  br label %191

186:                                              ; preds = %166
  %187 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %85) #15, !srcloc !9
  %188 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %85, i64 %187, i32 0) #15, !srcloc !10
  %189 = extractvalue { i64, i32 } %188, 0
  %190 = lshr i64 %189, 18
  br label %191

191:                                              ; preds = %186, %179
  %192 = phi i64 [ %185, %179 ], [ %190, %186 ]
  %193 = tail call i64 @llvm.abs.i64(i64 %85, i1 false) #13
  %194 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %193) #15, !srcloc !9
  %195 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %193, i64 %194, i32 0) #15, !srcloc !10
  %196 = extractvalue { i64, i32 } %195, 0
  %197 = trunc i64 %193 to i32
  %198 = lshr i64 %196, 18
  %199 = trunc i64 %198 to i32
  %200 = mul i32 %199, -1000000
  %201 = add i32 %200, %197
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i64 noundef %192, i32 noundef %201) #16
  %203 = icmp slt i64 %83, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %191
  %205 = sub i64 0, %83
  %206 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %205) #15, !srcloc !9
  %207 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %205, i64 %206, i32 0) #15, !srcloc !10
  %208 = extractvalue { i64, i32 } %207, 0
  %209 = lshr i64 %208, 18
  %210 = sub nsw i64 0, %209
  br label %241

211:                                              ; preds = %191
  %212 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %83) #15, !srcloc !9
  %213 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %83, i64 %212, i32 0) #15, !srcloc !10
  %214 = extractvalue { i64, i32 } %213, 0
  %215 = lshr i64 %214, 18
  br label %241

216:                                              ; preds = %148, %141
  %217 = phi i64 [ %147, %141 ], [ %152, %148 ]
  %218 = tail call i64 @llvm.abs.i64(i64 %83, i1 false) #13
  %219 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %218) #15, !srcloc !9
  %220 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %218, i64 %219, i32 0) #15, !srcloc !10
  %221 = extractvalue { i64, i32 } %220, 0
  %222 = trunc i64 %218 to i32
  %223 = lshr i64 %221, 18
  %224 = trunc i64 %223 to i32
  %225 = mul i32 %224, -1000000
  %226 = add i32 %225, %222
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i64 noundef %217, i32 noundef %226) #13
  %227 = sub i64 %83, %76
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %216
  %230 = sub i64 0, %227
  %231 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %230) #15, !srcloc !9
  %232 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %230, i64 %231, i32 0) #15, !srcloc !10
  %233 = extractvalue { i64, i32 } %232, 0
  %234 = lshr i64 %233, 18
  %235 = sub nsw i64 0, %234
  br label %267

236:                                              ; preds = %216
  %237 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %227) #15, !srcloc !9
  %238 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %227, i64 %237, i32 0) #15, !srcloc !10
  %239 = extractvalue { i64, i32 } %238, 0
  %240 = lshr i64 %239, 18
  br label %267

241:                                              ; preds = %211, %204
  %242 = phi i64 [ %210, %204 ], [ %215, %211 ]
  %243 = tail call i64 @llvm.abs.i64(i64 %83, i1 false) #13
  %244 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %243) #15, !srcloc !9
  %245 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %243, i64 %244, i32 0) #15, !srcloc !10
  %246 = extractvalue { i64, i32 } %245, 0
  %247 = trunc i64 %243 to i32
  %248 = lshr i64 %246, 18
  %249 = trunc i64 %248 to i32
  %250 = mul i32 %249, -1000000
  %251 = add i32 %250, %247
  %252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i64 noundef %242, i32 noundef %251) #16
  %253 = sub i64 %83, %76
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %241
  %256 = sub i64 0, %253
  %257 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %256) #15, !srcloc !9
  %258 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %256, i64 %257, i32 0) #15, !srcloc !10
  %259 = extractvalue { i64, i32 } %258, 0
  %260 = lshr i64 %259, 18
  %261 = sub nsw i64 0, %260
  br label %328

262:                                              ; preds = %241
  %263 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %253) #15, !srcloc !9
  %264 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %253, i64 %263, i32 0) #15, !srcloc !10
  %265 = extractvalue { i64, i32 } %264, 0
  %266 = lshr i64 %265, 18
  br label %328

267:                                              ; preds = %236, %229
  %268 = phi i64 [ %235, %229 ], [ %240, %236 ]
  %269 = tail call i64 @llvm.abs.i64(i64 %227, i1 false) #13
  %270 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %269) #15, !srcloc !9
  %271 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %269, i64 %270, i32 0) #15, !srcloc !10
  %272 = extractvalue { i64, i32 } %271, 0
  %273 = trunc i64 %269 to i32
  %274 = lshr i64 %272, 18
  %275 = trunc i64 %274 to i32
  %276 = mul i32 %275, -1000000
  %277 = add i32 %276, %273
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i64 noundef %268, i32 noundef %277) #13
  %278 = sub i64 %85, %90
  %279 = icmp slt i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %267
  %281 = sub i64 0, %278
  %282 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %281) #15, !srcloc !9
  %283 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %281, i64 %282, i32 0) #15, !srcloc !10
  %284 = extractvalue { i64, i32 } %283, 0
  %285 = lshr i64 %284, 18
  %286 = sub nsw i64 0, %285
  br label %292

287:                                              ; preds = %267
  %288 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %278) #15, !srcloc !9
  %289 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %278, i64 %288, i32 0) #15, !srcloc !10
  %290 = extractvalue { i64, i32 } %289, 0
  %291 = lshr i64 %290, 18
  br label %292

292:                                              ; preds = %287, %280
  %293 = phi i64 [ %286, %280 ], [ %291, %287 ]
  %294 = tail call i64 @llvm.abs.i64(i64 %278, i1 false) #13
  %295 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %294) #15, !srcloc !9
  %296 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %294, i64 %295, i32 0) #15, !srcloc !10
  %297 = extractvalue { i64, i32 } %296, 0
  %298 = trunc i64 %294 to i32
  %299 = lshr i64 %297, 18
  %300 = trunc i64 %299 to i32
  %301 = mul i32 %300, -1000000
  %302 = add i32 %301, %298
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, i64 noundef %293, i32 noundef %302) #13
  %303 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 13
  %304 = load i32, ptr %303, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %304) #13
  %305 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 1
  %306 = load i32, ptr %305, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i32 noundef %306) #13
  %307 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 2
  %308 = load i32, ptr %307, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19, i32 noundef %308) #13
  %309 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 3
  %310 = load i32, ptr %309, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.20, i32 noundef %310) #13
  %311 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 4
  %312 = load i32, ptr %311, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.21, i32 noundef %312) #13
  %313 = load i32, ptr %2, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %313) #13
  %314 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 5
  %315 = load i32, ptr %314, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %315) #13
  %316 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 6
  %317 = load i32, ptr %316, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, i32 noundef %317) #13
  %318 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 7
  %319 = load i32, ptr %318, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29, i32 noundef %319) #13
  %320 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 9
  %321 = load i32, ptr %320, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %321) #13
  %322 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 18, i32 2
  %323 = load i32, ptr %322, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, i32 noundef %323) #13
  %324 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 18, i32 3
  %325 = load i32, ptr %324, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.34, i32 noundef %325) #13
  %326 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 18, i32 4
  %327 = load i32, ptr %326, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.35, i32 noundef %327) #13
  br label %404

328:                                              ; preds = %262, %255
  %329 = phi i64 [ %261, %255 ], [ %266, %262 ]
  %330 = tail call i64 @llvm.abs.i64(i64 %253, i1 false) #13
  %331 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %330) #15, !srcloc !9
  %332 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %330, i64 %331, i32 0) #15, !srcloc !10
  %333 = extractvalue { i64, i32 } %332, 0
  %334 = trunc i64 %330 to i32
  %335 = lshr i64 %333, 18
  %336 = trunc i64 %335 to i32
  %337 = mul i32 %336, -1000000
  %338 = add i32 %337, %334
  %339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef %329, i32 noundef %338) #16
  %340 = sub i64 %85, %90
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %328
  %343 = sub i64 0, %340
  %344 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %343) #15, !srcloc !9
  %345 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %343, i64 %344, i32 0) #15, !srcloc !10
  %346 = extractvalue { i64, i32 } %345, 0
  %347 = lshr i64 %346, 18
  %348 = sub nsw i64 0, %347
  br label %354

349:                                              ; preds = %328
  %350 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %340) #15, !srcloc !9
  %351 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %340, i64 %350, i32 0) #15, !srcloc !10
  %352 = extractvalue { i64, i32 } %351, 0
  %353 = lshr i64 %352, 18
  br label %354

354:                                              ; preds = %349, %342
  %355 = phi i64 [ %348, %342 ], [ %353, %349 ]
  %356 = tail call i64 @llvm.abs.i64(i64 %340, i1 false) #13
  %357 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %356) #15, !srcloc !9
  %358 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %356, i64 %357, i32 0) #15, !srcloc !10
  %359 = extractvalue { i64, i32 } %358, 0
  %360 = trunc i64 %356 to i32
  %361 = lshr i64 %359, 18
  %362 = trunc i64 %361 to i32
  %363 = mul i32 %362, -1000000
  %364 = add i32 %363, %360
  %365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14, i64 noundef %355, i32 noundef %364) #16
  %366 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 13
  %367 = load i32, ptr %366, align 8
  %368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %367) #16
  %369 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 1
  %370 = load i32, ptr %369, align 8
  %371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %370) #16
  %372 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 2
  %373 = load i32, ptr %372, align 4
  %374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %373) #16
  %375 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 3
  %376 = load i32, ptr %375, align 16
  %377 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20, i32 noundef %376) #16
  %378 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 4
  %379 = load i32, ptr %378, align 4
  %380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21, i32 noundef %379) #16
  %381 = load i32, ptr %2, align 64
  %382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %381) #16
  %383 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 5
  %384 = load i32, ptr %383, align 32
  %385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %384) #16
  %386 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 6
  %387 = load i32, ptr %386, align 4
  %388 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %387) #16
  %389 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 7
  %390 = load i32, ptr %389, align 8
  %391 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %390) #16
  %392 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 15, i32 9
  %393 = load i32, ptr %392, align 16
  %394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %393) #16
  %395 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 18, i32 2
  %396 = load i32, ptr %395, align 8
  %397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.33, i32 noundef %396) #16
  %398 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 18, i32 3
  %399 = load i32, ptr %398, align 4
  %400 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.34, i32 noundef %399) #16
  %401 = getelementptr inbounds %struct.cfs_rq, ptr %2, i32 0, i32 18, i32 4
  %402 = load i32, ptr %401, align 16
  %403 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35, i32 noundef %402) #16
  br label %404

404:                                              ; preds = %354, %292
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pick_first_entity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pick_last_entity(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_rt_rq(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, i32 noundef %1) #13
  %6 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.38, i32 noundef %7) #13
  %8 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.39, i32 noundef %9) #13
  %10 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 9
  %11 = load i32, ptr %10, align 8
  %12 = sext i32 %11 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i64 noundef %12) #13
  %13 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 10
  %14 = load i64, ptr %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = sub i64 0, %14
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %17) #15, !srcloc !9
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %17, i64 %18, i32 0) #15, !srcloc !10
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = lshr i64 %20, 18
  %22 = sub nsw i64 0, %21
  br label %28

23:                                               ; preds = %5
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #15, !srcloc !9
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %24, i32 0) #15, !srcloc !10
  %26 = extractvalue { i64, i32 } %25, 0
  %27 = lshr i64 %26, 18
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i64 [ %22, %16 ], [ %27, %23 ]
  %30 = tail call i64 @llvm.abs.i64(i64 %14, i1 false) #13
  %31 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %30) #15, !srcloc !9
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %30, i64 %31, i32 0) #15, !srcloc !10
  %33 = extractvalue { i64, i32 } %32, 0
  %34 = trunc i64 %30 to i32
  %35 = lshr i64 %33, 18
  %36 = trunc i64 %35 to i32
  %37 = mul i32 %36, -1000000
  %38 = add i32 %37, %34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43, i64 noundef %29, i32 noundef %38) #13
  %39 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 11
  %40 = load i64, ptr %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = sub i64 0, %40
  %44 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %43) #15, !srcloc !9
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %43, i64 %44, i32 0) #15, !srcloc !10
  %46 = extractvalue { i64, i32 } %45, 0
  %47 = lshr i64 %46, 18
  %48 = sub nsw i64 0, %47
  br label %54

49:                                               ; preds = %28
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %40) #15, !srcloc !9
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %40, i64 %50, i32 0) #15, !srcloc !10
  %52 = extractvalue { i64, i32 } %51, 0
  %53 = lshr i64 %52, 18
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i64 [ %48, %42 ], [ %53, %49 ]
  %56 = tail call i64 @llvm.abs.i64(i64 %40, i1 false) #13
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %56) #15, !srcloc !9
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %56, i64 %57, i32 0) #15, !srcloc !10
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = trunc i64 %56 to i32
  %61 = lshr i64 %59, 18
  %62 = trunc i64 %61 to i32
  %63 = mul i32 %62, -1000000
  %64 = add i32 %63, %60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.44, i64 noundef %55, i32 noundef %64) #13
  br label %132

65:                                               ; preds = %3
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %1) #16
  %68 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 1
  %69 = load i32, ptr %68, align 8
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.38, i32 noundef %69) #16
  %71 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39, i32 noundef %72) #16
  %74 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 9
  %75 = load i32, ptr %74, align 8
  %76 = sext i32 %75 to i64
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i64 noundef %76) #16
  %78 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 10
  %79 = load i64, ptr %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %65
  %82 = sub i64 0, %79
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %82) #15, !srcloc !9
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %82, i64 %83, i32 0) #15, !srcloc !10
  %85 = extractvalue { i64, i32 } %84, 0
  %86 = lshr i64 %85, 18
  %87 = sub nsw i64 0, %86
  br label %93

88:                                               ; preds = %65
  %89 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %79) #15, !srcloc !9
  %90 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %79, i64 %89, i32 0) #15, !srcloc !10
  %91 = extractvalue { i64, i32 } %90, 0
  %92 = lshr i64 %91, 18
  br label %93

93:                                               ; preds = %88, %81
  %94 = phi i64 [ %87, %81 ], [ %92, %88 ]
  %95 = tail call i64 @llvm.abs.i64(i64 %79, i1 false) #13
  %96 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %95) #15, !srcloc !9
  %97 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %95, i64 %96, i32 0) #15, !srcloc !10
  %98 = extractvalue { i64, i32 } %97, 0
  %99 = trunc i64 %95 to i32
  %100 = lshr i64 %98, 18
  %101 = trunc i64 %100 to i32
  %102 = mul i32 %101, -1000000
  %103 = add i32 %102, %99
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.43, i64 noundef %94, i32 noundef %103) #16
  %105 = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 11
  %106 = load i64, ptr %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %93
  %109 = sub i64 0, %106
  %110 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %109) #15, !srcloc !9
  %111 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %109, i64 %110, i32 0) #15, !srcloc !10
  %112 = extractvalue { i64, i32 } %111, 0
  %113 = lshr i64 %112, 18
  %114 = sub nsw i64 0, %113
  br label %120

115:                                              ; preds = %93
  %116 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %106) #15, !srcloc !9
  %117 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %106, i64 %116, i32 0) #15, !srcloc !10
  %118 = extractvalue { i64, i32 } %117, 0
  %119 = lshr i64 %118, 18
  br label %120

120:                                              ; preds = %115, %108
  %121 = phi i64 [ %114, %108 ], [ %119, %115 ]
  %122 = tail call i64 @llvm.abs.i64(i64 %106, i1 false) #13
  %123 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %122) #15, !srcloc !9
  %124 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %122, i64 %123, i32 0) #15, !srcloc !10
  %125 = extractvalue { i64, i32 } %124, 0
  %126 = trunc i64 %122 to i32
  %127 = lshr i64 %125, 18
  %128 = trunc i64 %127 to i32
  %129 = mul i32 %128, -1000000
  %130 = add i32 %129, %126
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.44, i64 noundef %121, i32 noundef %130) #16
  br label %132

132:                                              ; preds = %120, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_dl_rq(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.45, i32 noundef %1) #13
  %6 = getelementptr inbounds %struct.dl_rq, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.47, i32 noundef %7) #13
  %8 = getelementptr inbounds %struct.dl_rq, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.48, i32 noundef %9) #13
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 29
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 9, i32 1
  %17 = load i64, ptr %16, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i64 noundef %17) #13
  %18 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 9, i32 2
  %19 = load i64, ptr %18, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.52, i64 noundef %19) #13
  br label %41

20:                                               ; preds = %3
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %1) #16
  %23 = getelementptr inbounds %struct.dl_rq, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.47, i32 noundef %24) #16
  %26 = getelementptr inbounds %struct.dl_rq, ptr %2, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.48, i32 noundef %27) #16
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @runqueues to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.rq, ptr %32, i32 0, i32 29
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.root_domain, ptr %34, i32 0, i32 9, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i64 noundef %36) #16
  %38 = getelementptr inbounds %struct.root_domain, ptr %34, i32 0, i32 9, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i64 noundef %39) #16
  br label %41

41:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysrq_sched_debug_show() local_unnamed_addr #1 {
  tail call fastcc void @sched_debug_header(ptr noundef null)
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %6, %4 ], [ %1, %0 ]
  tail call fastcc void @print_cpu(ptr noundef null, i32 noundef %5)
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_online_mask) #14
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %4, label %9

9:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sched_debug_header(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !11
  %3 = tail call i64 @ktime_get() #13
  %4 = tail call i64 @sched_clock() #13
  %5 = tail call i64 @sched_clock() #13
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #13, !srcloc !12
  %6 = icmp eq ptr %0, null
  %7 = tail call i32 @strcspn(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.136)
  br i1 %6, label %126, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.137, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef %7, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #13
  %9 = icmp slt i64 %3, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = sub i64 0, %3
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #15, !srcloc !9
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #15, !srcloc !10
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = lshr i64 %14, 18
  %16 = sub nsw i64 0, %15
  br label %22

17:                                               ; preds = %8
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %3) #15, !srcloc !9
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %3, i64 %18, i32 0) #15, !srcloc !10
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = lshr i64 %20, 18
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i64 [ %16, %10 ], [ %21, %17 ]
  %24 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #13
  %25 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %24) #15, !srcloc !9
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %24, i64 %25, i32 0) #15, !srcloc !10
  %27 = extractvalue { i64, i32 } %26, 0
  %28 = trunc i64 %24 to i32
  %29 = lshr i64 %27, 18
  %30 = trunc i64 %29 to i32
  %31 = mul i32 %30, -1000000
  %32 = add i32 %31, %28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i64 noundef %23, i32 noundef %32) #13
  %33 = icmp slt i64 %4, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = sub i64 0, %4
  %36 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %35) #15, !srcloc !9
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %35, i64 %36, i32 0) #15, !srcloc !10
  %38 = extractvalue { i64, i32 } %37, 0
  %39 = lshr i64 %38, 18
  %40 = sub nsw i64 0, %39
  br label %46

41:                                               ; preds = %22
  %42 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #15, !srcloc !9
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %42, i32 0) #15, !srcloc !10
  %44 = extractvalue { i64, i32 } %43, 0
  %45 = lshr i64 %44, 18
  br label %46

46:                                               ; preds = %41, %34
  %47 = phi i64 [ %40, %34 ], [ %45, %41 ]
  %48 = tail call i64 @llvm.abs.i64(i64 %4, i1 false) #13
  %49 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %48) #15, !srcloc !9
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %48, i64 %49, i32 0) #15, !srcloc !10
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = trunc i64 %48 to i32
  %53 = lshr i64 %51, 18
  %54 = trunc i64 %53 to i32
  %55 = mul i32 %54, -1000000
  %56 = add i32 %55, %52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.142, i64 noundef %47, i32 noundef %56) #13
  %57 = icmp slt i64 %5, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = sub i64 0, %5
  %60 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %59) #15, !srcloc !9
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %59, i64 %60, i32 0) #15, !srcloc !10
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = lshr i64 %62, 18
  %64 = sub nsw i64 0, %63
  br label %70

65:                                               ; preds = %46
  %66 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #15, !srcloc !9
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %66, i32 0) #15, !srcloc !10
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = lshr i64 %68, 18
  br label %70

70:                                               ; preds = %65, %58
  %71 = phi i64 [ %64, %58 ], [ %69, %65 ]
  %72 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #13
  %73 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %72) #15, !srcloc !9
  %74 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %72, i64 %73, i32 0) #15, !srcloc !10
  %75 = extractvalue { i64, i32 } %74, 0
  %76 = trunc i64 %72 to i32
  %77 = lshr i64 %75, 18
  %78 = trunc i64 %77 to i32
  %79 = mul i32 %78, -1000000
  %80 = add i32 %79, %76
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.143, i64 noundef %71, i32 noundef %80) #13
  %81 = load volatile i32, ptr @jiffies, align 64
  %82 = zext i32 %81 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef %82) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.147) #13
  %83 = load i32, ptr @sysctl_sched_latency, align 4
  %84 = zext i32 %83 to i64
  %85 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %84) #15
  %86 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %84, i64 %85, i32 0) #15
  %87 = extractvalue { i64, i32 } %86, 0
  %88 = lshr i64 %87, 18
  %89 = trunc i64 %88 to i32
  %90 = mul i32 %89, -1000000
  %91 = add i32 %90, %83
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i64 noundef %88, i32 noundef %91) #13
  %92 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %93 = zext i32 %92 to i64
  %94 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %93) #15
  %95 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %93, i64 %94, i32 0) #15
  %96 = extractvalue { i64, i32 } %95, 0
  %97 = lshr i64 %96, 18
  %98 = trunc i64 %97 to i32
  %99 = mul i32 %98, -1000000
  %100 = add i32 %99, %92
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.152, i64 noundef %97, i32 noundef %100) #13
  %101 = load i32, ptr @sysctl_sched_idle_min_granularity, align 4
  %102 = zext i32 %101 to i64
  %103 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %102) #15
  %104 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %102, i64 %103, i32 0) #15
  %105 = extractvalue { i64, i32 } %104, 0
  %106 = lshr i64 %105, 18
  %107 = trunc i64 %106 to i32
  %108 = mul i32 %107, -1000000
  %109 = add i32 %108, %101
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.153, i64 noundef %106, i32 noundef %109) #13
  %110 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %111 = zext i32 %110 to i64
  %112 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %111) #15
  %113 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %111, i64 %112, i32 0) #15
  %114 = extractvalue { i64, i32 } %113, 0
  %115 = lshr i64 %114, 18
  %116 = trunc i64 %115 to i32
  %117 = mul i32 %116, -1000000
  %118 = add i32 %117, %110
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.154, i64 noundef %115, i32 noundef %118) #13
  %119 = load i32, ptr @sysctl_sched_child_runs_first, align 4
  %120 = zext i32 %119 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i64 noundef %120) #13
  %121 = load i32, ptr @sysctl_sched_features, align 4
  %122 = zext i32 %121 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.158, i64 noundef %122) #13
  %123 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  %124 = getelementptr [3 x ptr], ptr @sched_tunable_scaling_names, i32 0, i32 %123
  %125 = load ptr, ptr %124, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, i32 noundef %123, ptr noundef %125) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  br label %259

126:                                              ; preds = %1
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef %7, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #16
  %128 = icmp slt i64 %3, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = sub i64 0, %3
  %131 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %130) #15, !srcloc !9
  %132 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %130, i64 %131, i32 0) #15, !srcloc !10
  %133 = extractvalue { i64, i32 } %132, 0
  %134 = lshr i64 %133, 18
  %135 = sub nsw i64 0, %134
  br label %141

136:                                              ; preds = %126
  %137 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %3) #15, !srcloc !9
  %138 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %3, i64 %137, i32 0) #15, !srcloc !10
  %139 = extractvalue { i64, i32 } %138, 0
  %140 = lshr i64 %139, 18
  br label %141

141:                                              ; preds = %136, %129
  %142 = phi i64 [ %135, %129 ], [ %140, %136 ]
  %143 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #13
  %144 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %143) #15, !srcloc !9
  %145 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %143, i64 %144, i32 0) #15, !srcloc !10
  %146 = extractvalue { i64, i32 } %145, 0
  %147 = trunc i64 %143 to i32
  %148 = lshr i64 %146, 18
  %149 = trunc i64 %148 to i32
  %150 = mul i32 %149, -1000000
  %151 = add i32 %150, %147
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.140, i64 noundef %142, i32 noundef %151) #16
  %153 = icmp slt i64 %4, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %141
  %155 = sub i64 0, %4
  %156 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %155) #15, !srcloc !9
  %157 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %155, i64 %156, i32 0) #15, !srcloc !10
  %158 = extractvalue { i64, i32 } %157, 0
  %159 = lshr i64 %158, 18
  %160 = sub nsw i64 0, %159
  br label %166

161:                                              ; preds = %141
  %162 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #15, !srcloc !9
  %163 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %162, i32 0) #15, !srcloc !10
  %164 = extractvalue { i64, i32 } %163, 0
  %165 = lshr i64 %164, 18
  br label %166

166:                                              ; preds = %161, %154
  %167 = phi i64 [ %160, %154 ], [ %165, %161 ]
  %168 = tail call i64 @llvm.abs.i64(i64 %4, i1 false) #13
  %169 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %168) #15, !srcloc !9
  %170 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %168, i64 %169, i32 0) #15, !srcloc !10
  %171 = extractvalue { i64, i32 } %170, 0
  %172 = trunc i64 %168 to i32
  %173 = lshr i64 %171, 18
  %174 = trunc i64 %173 to i32
  %175 = mul i32 %174, -1000000
  %176 = add i32 %175, %172
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i64 noundef %167, i32 noundef %176) #16
  %178 = icmp slt i64 %5, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %166
  %180 = sub i64 0, %5
  %181 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %180) #15, !srcloc !9
  %182 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %180, i64 %181, i32 0) #15, !srcloc !10
  %183 = extractvalue { i64, i32 } %182, 0
  %184 = lshr i64 %183, 18
  %185 = sub nsw i64 0, %184
  br label %191

186:                                              ; preds = %166
  %187 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #15, !srcloc !9
  %188 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %187, i32 0) #15, !srcloc !10
  %189 = extractvalue { i64, i32 } %188, 0
  %190 = lshr i64 %189, 18
  br label %191

191:                                              ; preds = %186, %179
  %192 = phi i64 [ %185, %179 ], [ %190, %186 ]
  %193 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #13
  %194 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %193) #15, !srcloc !9
  %195 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %193, i64 %194, i32 0) #15, !srcloc !10
  %196 = extractvalue { i64, i32 } %195, 0
  %197 = trunc i64 %193 to i32
  %198 = lshr i64 %196, 18
  %199 = trunc i64 %198 to i32
  %200 = mul i32 %199, -1000000
  %201 = add i32 %200, %197
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.143, i64 noundef %192, i32 noundef %201) #16
  %203 = load volatile i32, ptr @jiffies, align 64
  %204 = zext i32 %203 to i64
  %205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.145, i64 noundef %204) #16
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #16
  %208 = load i32, ptr @sysctl_sched_latency, align 4
  %209 = zext i32 %208 to i64
  %210 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %209) #15
  %211 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %209, i64 %210, i32 0) #15
  %212 = extractvalue { i64, i32 } %211, 0
  %213 = lshr i64 %212, 18
  %214 = trunc i64 %213 to i32
  %215 = mul i32 %214, -1000000
  %216 = add i32 %215, %208
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, i64 noundef %213, i32 noundef %216) #16
  %218 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %219 = zext i32 %218 to i64
  %220 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %219) #15
  %221 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %219, i64 %220, i32 0) #15
  %222 = extractvalue { i64, i32 } %221, 0
  %223 = lshr i64 %222, 18
  %224 = trunc i64 %223 to i32
  %225 = mul i32 %224, -1000000
  %226 = add i32 %225, %218
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i64 noundef %223, i32 noundef %226) #16
  %228 = load i32, ptr @sysctl_sched_idle_min_granularity, align 4
  %229 = zext i32 %228 to i64
  %230 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %229) #15
  %231 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %229, i64 %230, i32 0) #15
  %232 = extractvalue { i64, i32 } %231, 0
  %233 = lshr i64 %232, 18
  %234 = trunc i64 %233 to i32
  %235 = mul i32 %234, -1000000
  %236 = add i32 %235, %228
  %237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.153, i64 noundef %233, i32 noundef %236) #16
  %238 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %239 = zext i32 %238 to i64
  %240 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %239) #15
  %241 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %239, i64 %240, i32 0) #15
  %242 = extractvalue { i64, i32 } %241, 0
  %243 = lshr i64 %242, 18
  %244 = trunc i64 %243 to i32
  %245 = mul i32 %244, -1000000
  %246 = add i32 %245, %238
  %247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.154, i64 noundef %243, i32 noundef %246) #16
  %248 = load i32, ptr @sysctl_sched_child_runs_first, align 4
  %249 = zext i32 %248 to i64
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.156, i64 noundef %249) #16
  %251 = load i32, ptr @sysctl_sched_features, align 4
  %252 = zext i32 %251 to i64
  %253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i64 noundef %252) #16
  %254 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  %255 = getelementptr [3 x ptr], ptr @sched_tunable_scaling_names, i32 0, i32 %254
  %256 = load ptr, ptr %255, align 4
  %257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.160, i32 noundef %254, ptr noundef %256) #16
  %258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %259

259:                                              ; preds = %191, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_cpu(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq ptr %0, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.165, i32 noundef %1) #13
  %9 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, i32 noundef %10) #13
  %11 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 8
  %12 = load i64, ptr %11, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.65, i64 noundef %12) #13
  %13 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 13
  %14 = load i32, ptr %13, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.167, i32 noundef %14) #13
  %15 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 17
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %17) #15
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %17, i64 %18, i32 0) #15
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = lshr i64 %20, 18
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %22, -1000000
  %24 = add i32 %23, %16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.168, i64 noundef %21, i32 noundef %24) #13
  %25 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 52
  %28 = load i32, ptr %27, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.169, i32 noundef %28) #13
  %29 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 20
  %30 = load i64, ptr %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %8
  %33 = sub i64 0, %30
  %34 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %33) #15, !srcloc !9
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %33, i64 %34, i32 0) #15, !srcloc !10
  %36 = extractvalue { i64, i32 } %35, 0
  %37 = lshr i64 %36, 18
  %38 = sub nsw i64 0, %37
  br label %44

39:                                               ; preds = %8
  %40 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %30) #15, !srcloc !9
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %30, i64 %40, i32 0) #15, !srcloc !10
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = lshr i64 %42, 18
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi i64 [ %38, %32 ], [ %43, %39 ]
  %46 = tail call i64 @llvm.abs.i64(i64 %30, i1 false) #13
  %47 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %46) #15, !srcloc !9
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %46, i64 %47, i32 0) #15, !srcloc !10
  %49 = extractvalue { i64, i32 } %48, 0
  %50 = trunc i64 %46 to i32
  %51 = lshr i64 %49, 18
  %52 = trunc i64 %51 to i32
  %53 = mul i32 %52, -1000000
  %54 = add i32 %53, %50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.170, i64 noundef %45, i32 noundef %54) #13
  %55 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 22
  %56 = load i64, ptr %55, align 64
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = sub i64 0, %56
  %60 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %59) #15, !srcloc !9
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %59, i64 %60, i32 0) #15, !srcloc !10
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = lshr i64 %62, 18
  %64 = sub nsw i64 0, %63
  br label %70

65:                                               ; preds = %44
  %66 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %56) #15, !srcloc !9
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %56, i64 %66, i32 0) #15, !srcloc !10
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = lshr i64 %68, 18
  br label %70

70:                                               ; preds = %65, %58
  %71 = phi i64 [ %64, %58 ], [ %69, %65 ]
  %72 = tail call i64 @llvm.abs.i64(i64 %56, i1 false) #13
  %73 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %72) #15, !srcloc !9
  %74 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %72, i64 %73, i32 0) #15, !srcloc !10
  %75 = extractvalue { i64, i32 } %74, 0
  %76 = trunc i64 %72 to i32
  %77 = lshr i64 %75, 18
  %78 = trunc i64 %77 to i32
  %79 = mul i32 %78, -1000000
  %80 = add i32 %79, %76
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.171, i64 noundef %71, i32 noundef %80) #13
  %81 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 48
  %82 = load i64, ptr %81, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.172, i64 noundef %82) #13
  %83 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 51
  %84 = load i64, ptr %83, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.173, i64 noundef %84) #13
  tail call void @print_cfs_stats(ptr noundef nonnull %0, i32 noundef %1) #13
  tail call void @print_rt_stats(ptr noundef nonnull %0, i32 noundef %1) #13
  tail call void @print_dl_stats(ptr noundef nonnull %0, i32 noundef %1) #13
  tail call fastcc void @print_rq(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %1)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  br label %173

85:                                               ; preds = %2
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %1) #16
  %87 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18, i32 noundef %88) #16
  %90 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 8
  %91 = load i64, ptr %90, align 16
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.65, i64 noundef %91) #16
  %93 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 13
  %94 = load i32, ptr %93, align 8
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.167, i32 noundef %94) #16
  %96 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 17
  %97 = load i32, ptr %96, align 8
  %98 = zext i32 %97 to i64
  %99 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %98) #15
  %100 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %98, i64 %99, i32 0) #15
  %101 = extractvalue { i64, i32 } %100, 0
  %102 = lshr i64 %101, 18
  %103 = trunc i64 %102 to i32
  %104 = mul i32 %103, -1000000
  %105 = add i32 %104, %97
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.168, i64 noundef %102, i32 noundef %105) #16
  %107 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 14
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 52
  %110 = load i32, ptr %109, align 8
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.169, i32 noundef %110) #16
  %112 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 20
  %113 = load i64, ptr %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %85
  %116 = sub i64 0, %113
  %117 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %116) #15, !srcloc !9
  %118 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %116, i64 %117, i32 0) #15, !srcloc !10
  %119 = extractvalue { i64, i32 } %118, 0
  %120 = lshr i64 %119, 18
  %121 = sub nsw i64 0, %120
  br label %127

122:                                              ; preds = %85
  %123 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %113) #15, !srcloc !9
  %124 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %113, i64 %123, i32 0) #15, !srcloc !10
  %125 = extractvalue { i64, i32 } %124, 0
  %126 = lshr i64 %125, 18
  br label %127

127:                                              ; preds = %122, %115
  %128 = phi i64 [ %121, %115 ], [ %126, %122 ]
  %129 = tail call i64 @llvm.abs.i64(i64 %113, i1 false) #13
  %130 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %129) #15, !srcloc !9
  %131 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %129, i64 %130, i32 0) #15, !srcloc !10
  %132 = extractvalue { i64, i32 } %131, 0
  %133 = trunc i64 %129 to i32
  %134 = lshr i64 %132, 18
  %135 = trunc i64 %134 to i32
  %136 = mul i32 %135, -1000000
  %137 = add i32 %136, %133
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.170, i64 noundef %128, i32 noundef %137) #16
  %139 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 22
  %140 = load i64, ptr %139, align 64
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %127
  %143 = sub i64 0, %140
  %144 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %143) #15, !srcloc !9
  %145 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %143, i64 %144, i32 0) #15, !srcloc !10
  %146 = extractvalue { i64, i32 } %145, 0
  %147 = lshr i64 %146, 18
  %148 = sub nsw i64 0, %147
  br label %154

149:                                              ; preds = %127
  %150 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %140) #15, !srcloc !9
  %151 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %140, i64 %150, i32 0) #15, !srcloc !10
  %152 = extractvalue { i64, i32 } %151, 0
  %153 = lshr i64 %152, 18
  br label %154

154:                                              ; preds = %149, %142
  %155 = phi i64 [ %148, %142 ], [ %153, %149 ]
  %156 = tail call i64 @llvm.abs.i64(i64 %140, i1 false) #13
  %157 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %156) #15, !srcloc !9
  %158 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %156, i64 %157, i32 0) #15, !srcloc !10
  %159 = extractvalue { i64, i32 } %158, 0
  %160 = trunc i64 %156 to i32
  %161 = lshr i64 %159, 18
  %162 = trunc i64 %161 to i32
  %163 = mul i32 %162, -1000000
  %164 = add i32 %163, %160
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.171, i64 noundef %155, i32 noundef %164) #16
  %166 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 48
  %167 = load i64, ptr %166, align 8
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.172, i64 noundef %167) #16
  %169 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 51
  %170 = load i64, ptr %169, align 32
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.173, i64 noundef %170) #16
  tail call void @print_cfs_stats(ptr noundef null, i32 noundef %1) #13
  tail call void @print_rt_stats(ptr noundef null, i32 noundef %1) #13
  tail call void @print_dl_stats(ptr noundef null, i32 noundef %1) #13
  tail call fastcc void @print_rq(ptr noundef null, ptr noundef %6, i32 noundef %1)
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %173

173:                                              ; preds = %154, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_sched_show_task(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %2, null
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %6 = tail call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef %1) #13
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  br i1 %4, label %79, label %11

11:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.53, ptr noundef %5, i32 noundef %6, i32 noundef %10) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.55) #13
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 4
  %13 = load i64, ptr %12, align 32
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = sub i64 0, %13
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %16) #15, !srcloc !9
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %16, i64 %17, i32 0) #15, !srcloc !10
  %19 = extractvalue { i64, i32 } %18, 0
  %20 = lshr i64 %19, 18
  %21 = sub nsw i64 0, %20
  br label %27

22:                                               ; preds = %11
  %23 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %13) #15, !srcloc !9
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %13, i64 %23, i32 0) #15, !srcloc !10
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = lshr i64 %25, 18
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i64 [ %21, %15 ], [ %26, %22 ]
  %29 = tail call i64 @llvm.abs.i64(i64 %13, i1 false) #13
  %30 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %29) #15, !srcloc !9
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %29, i64 %30, i32 0) #15, !srcloc !10
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = trunc i64 %29 to i32
  %34 = lshr i64 %32, 18
  %35 = trunc i64 %34 to i32
  %36 = mul i32 %35, -1000000
  %37 = add i32 %36, %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i64 noundef %28, i32 noundef %37) #13
  %38 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 6
  %39 = load i64, ptr %38, align 16
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = sub i64 0, %39
  %43 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %42) #15, !srcloc !9
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %42, i64 %43, i32 0) #15, !srcloc !10
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = lshr i64 %45, 18
  %47 = sub nsw i64 0, %46
  br label %53

48:                                               ; preds = %27
  %49 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %39) #15, !srcloc !9
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %39, i64 %49, i32 0) #15, !srcloc !10
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = lshr i64 %51, 18
  br label %53

53:                                               ; preds = %48, %41
  %54 = phi i64 [ %47, %41 ], [ %52, %48 ]
  %55 = tail call i64 @llvm.abs.i64(i64 %39, i1 false) #13
  %56 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %55) #15, !srcloc !9
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %55, i64 %56, i32 0) #15, !srcloc !10
  %58 = extractvalue { i64, i32 } %57, 0
  %59 = trunc i64 %55 to i32
  %60 = lshr i64 %58, 18
  %61 = trunc i64 %60 to i32
  %62 = mul i32 %61, -1000000
  %63 = add i32 %62, %59
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.60, i64 noundef %54, i32 noundef %63) #13
  %64 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 5
  %65 = load i64, ptr %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = sub i64 0, %65
  %69 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %68) #15, !srcloc !9
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %68, i64 %69, i32 0) #15, !srcloc !10
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = lshr i64 %71, 18
  %73 = sub nsw i64 0, %72
  br label %227

74:                                               ; preds = %53
  %75 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %65) #15, !srcloc !9
  %76 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %65, i64 %75, i32 0) #15, !srcloc !10
  %77 = extractvalue { i64, i32 } %76, 0
  %78 = lshr i64 %77, 18
  br label %227

79:                                               ; preds = %3
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %5, i32 noundef %6, i32 noundef %10) #16
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #16
  %82 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 4
  %83 = load i64, ptr %82, align 32
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = sub i64 0, %83
  %87 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %86) #15, !srcloc !9
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %86, i64 %87, i32 0) #15, !srcloc !10
  %89 = extractvalue { i64, i32 } %88, 0
  %90 = lshr i64 %89, 18
  %91 = sub nsw i64 0, %90
  br label %97

92:                                               ; preds = %79
  %93 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %83) #15, !srcloc !9
  %94 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %83, i64 %93, i32 0) #15, !srcloc !10
  %95 = extractvalue { i64, i32 } %94, 0
  %96 = lshr i64 %95, 18
  br label %97

97:                                               ; preds = %92, %85
  %98 = phi i64 [ %91, %85 ], [ %96, %92 ]
  %99 = tail call i64 @llvm.abs.i64(i64 %83, i1 false) #13
  %100 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %99) #15, !srcloc !9
  %101 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %99, i64 %100, i32 0) #15, !srcloc !10
  %102 = extractvalue { i64, i32 } %101, 0
  %103 = trunc i64 %99 to i32
  %104 = lshr i64 %102, 18
  %105 = trunc i64 %104 to i32
  %106 = mul i32 %105, -1000000
  %107 = add i32 %106, %103
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i64 noundef %98, i32 noundef %107) #16
  %109 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 6
  %110 = load i64, ptr %109, align 16
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %97
  %113 = sub i64 0, %110
  %114 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %113) #15, !srcloc !9
  %115 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %113, i64 %114, i32 0) #15, !srcloc !10
  %116 = extractvalue { i64, i32 } %115, 0
  %117 = lshr i64 %116, 18
  %118 = sub nsw i64 0, %117
  br label %124

119:                                              ; preds = %97
  %120 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %110) #15, !srcloc !9
  %121 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %110, i64 %120, i32 0) #15, !srcloc !10
  %122 = extractvalue { i64, i32 } %121, 0
  %123 = lshr i64 %122, 18
  br label %124

124:                                              ; preds = %119, %112
  %125 = phi i64 [ %118, %112 ], [ %123, %119 ]
  %126 = tail call i64 @llvm.abs.i64(i64 %110, i1 false) #13
  %127 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %126) #15, !srcloc !9
  %128 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %126, i64 %127, i32 0) #15, !srcloc !10
  %129 = extractvalue { i64, i32 } %128, 0
  %130 = trunc i64 %126 to i32
  %131 = lshr i64 %129, 18
  %132 = trunc i64 %131 to i32
  %133 = mul i32 %132, -1000000
  %134 = add i32 %133, %130
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i64 noundef %125, i32 noundef %134) #16
  %136 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 5
  %137 = load i64, ptr %136, align 8
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %124
  %140 = sub i64 0, %137
  %141 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %140) #15, !srcloc !9
  %142 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %140, i64 %141, i32 0) #15, !srcloc !10
  %143 = extractvalue { i64, i32 } %142, 0
  %144 = lshr i64 %143, 18
  %145 = sub nsw i64 0, %144
  br label %151

146:                                              ; preds = %124
  %147 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %137) #15, !srcloc !9
  %148 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %137, i64 %147, i32 0) #15, !srcloc !10
  %149 = extractvalue { i64, i32 } %148, 0
  %150 = lshr i64 %149, 18
  br label %151

151:                                              ; preds = %146, %139
  %152 = phi i64 [ %145, %139 ], [ %150, %146 ]
  %153 = tail call i64 @llvm.abs.i64(i64 %137, i1 false) #13
  %154 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %153) #15, !srcloc !9
  %155 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %153, i64 %154, i32 0) #15, !srcloc !10
  %156 = extractvalue { i64, i32 } %155, 0
  %157 = trunc i64 %153 to i32
  %158 = lshr i64 %156, 18
  %159 = trunc i64 %158 to i32
  %160 = mul i32 %159, -1000000
  %161 = add i32 %160, %157
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, i64 noundef %152, i32 noundef %161) #16
  %163 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 74
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 75
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 8
  %169 = load i64, ptr %168, align 64
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i64 noundef %169) #16
  %171 = zext i32 %167 to i64
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i64 noundef %171) #16
  %173 = load i32, ptr %163, align 8
  %174 = zext i32 %173 to i64
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.66, i64 noundef %174) #16
  %176 = load i32, ptr %165, align 4
  %177 = zext i32 %176 to i64
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.67, i64 noundef %177) #16
  %179 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %180 = load i32, ptr %179, align 64
  %181 = zext i32 %180 to i64
  %182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.68, i64 noundef %181) #16
  %183 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 1
  %184 = load i64, ptr %183, align 8
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.69, i64 noundef %184) #16
  %186 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 2
  %187 = load i64, ptr %186, align 16
  %188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.70, i64 noundef %187) #16
  %189 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 3
  %190 = load i32, ptr %189, align 8
  %191 = zext i32 %190 to i64
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.71, i64 noundef %191) #16
  %193 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 5
  %194 = load i32, ptr %193, align 32
  %195 = zext i32 %194 to i64
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.72, i64 noundef %195) #16
  %197 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = zext i32 %198 to i64
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73, i64 noundef %199) #16
  %201 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %202 = load i32, ptr %201, align 8
  %203 = zext i32 %202 to i64
  %204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.74, i64 noundef %203) #16
  %205 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10
  %206 = load i64, ptr %205, align 64
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.75, i64 noundef %206) #16
  %208 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = zext i32 %209 to i64
  %211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.76, i64 noundef %210) #16
  %212 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9
  %213 = load i32, ptr %212, align 16
  %214 = and i32 %213, 2147483647
  %215 = zext i32 %214 to i64
  %216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.77, i64 noundef %215) #16
  %217 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %218 = load i32, ptr %217, align 64
  %219 = zext i32 %218 to i64
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.78, i64 noundef %219) #16
  %221 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %222 = load i32, ptr %221, align 16
  %223 = sext i32 %222 to i64
  %224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.79, i64 noundef %223) #16
  %225 = load i32, ptr %217, align 64
  %226 = icmp eq i32 %225, 6
  br i1 %226, label %291, label %298

227:                                              ; preds = %74, %67
  %228 = phi i64 [ %73, %67 ], [ %78, %74 ]
  %229 = tail call i64 @llvm.abs.i64(i64 %65, i1 false) #13
  %230 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %229) #15, !srcloc !9
  %231 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %229, i64 %230, i32 0) #15, !srcloc !10
  %232 = extractvalue { i64, i32 } %231, 0
  %233 = trunc i64 %229 to i32
  %234 = lshr i64 %232, 18
  %235 = trunc i64 %234 to i32
  %236 = mul i32 %235, -1000000
  %237 = add i32 %236, %233
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.61, i64 noundef %228, i32 noundef %237) #13
  %238 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 74
  %239 = load i32, ptr %238, align 8
  %240 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 75
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, %239
  %243 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 8
  %244 = load i64, ptr %243, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i64 noundef %244) #13
  %245 = zext i32 %242 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.65, i64 noundef %245) #13
  %246 = load i32, ptr %238, align 8
  %247 = zext i32 %246 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.66, i64 noundef %247) #13
  %248 = load i32, ptr %240, align 4
  %249 = zext i32 %248 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.67, i64 noundef %249) #13
  %250 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %251 = load i32, ptr %250, align 64
  %252 = zext i32 %251 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.68, i64 noundef %252) #13
  %253 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 1
  %254 = load i64, ptr %253, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.69, i64 noundef %254) #13
  %255 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 2
  %256 = load i64, ptr %255, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.70, i64 noundef %256) #13
  %257 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 3
  %258 = load i32, ptr %257, align 8
  %259 = zext i32 %258 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.71, i64 noundef %259) #13
  %260 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 5
  %261 = load i32, ptr %260, align 32
  %262 = zext i32 %261 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.72, i64 noundef %262) #13
  %263 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = zext i32 %264 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.73, i64 noundef %265) #13
  %266 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %267 = load i32, ptr %266, align 8
  %268 = zext i32 %267 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.74, i64 noundef %268) #13
  %269 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10
  %270 = load i64, ptr %269, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.75, i64 noundef %270) #13
  %271 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = zext i32 %272 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.76, i64 noundef %273) #13
  %274 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9
  %275 = load i32, ptr %274, align 16
  %276 = and i32 %275, 2147483647
  %277 = zext i32 %276 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.77, i64 noundef %277) #13
  %278 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %279 = load i32, ptr %278, align 64
  %280 = zext i32 %279 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.78, i64 noundef %280) #13
  %281 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %282 = load i32, ptr %281, align 16
  %283 = sext i32 %282 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.79, i64 noundef %283) #13
  %284 = load i32, ptr %278, align 64
  %285 = icmp eq i32 %284, 6
  br i1 %285, label %286, label %298

286:                                              ; preds = %227
  %287 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 6
  %288 = load i64, ptr %287, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.80, i64 noundef %288) #13
  %289 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %290 = load i64, ptr %289, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.81, i64 noundef %290) #13
  br label %298

291:                                              ; preds = %151
  %292 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 6
  %293 = load i64, ptr %292, align 8
  %294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.80, i64 noundef %293) #16
  %295 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %296 = load i64, ptr %295, align 32
  %297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.81, i64 noundef %296) #16
  br label %298

298:                                              ; preds = %291, %286, %227, %151
  %299 = tail call i64 @sched_clock() #13
  %300 = tail call i64 @sched_clock() #13
  %301 = sub i64 %300, %299
  br i1 %4, label %303, label %302

302:                                              ; preds = %298
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.82, i64 noundef %301) #13
  br label %305

303:                                              ; preds = %298
  %304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.82, i64 noundef %301) #16
  br label %305

305:                                              ; preds = %303, %302
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @proc_sched_set_task(ptr nocapture noundef %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @resched_latency_warn(i32 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @___ratelimit(ptr noundef nonnull @resched_latency_warn.latency_check_ratelimit, ptr noundef nonnull @__func__.resched_latency_warn) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !13

5:                                                ; preds = %2
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 27
  %11 = load i32, ptr %10, align 32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1089, i32 noundef 9, ptr noundef nonnull @.str.84, i32 noundef %0, i64 noundef %1, i32 noundef %11) #13
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_feat_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #1 {
  %5 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 63)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %6, i32 -1090519040) #15, !srcloc !14
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !13

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #13
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #17, !srcloc !15
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %6, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !13

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #13
  br label %53

23:                                               ; preds = %17
  %24 = getelementptr [64 x i8], ptr %5, i32 0, i32 %6
  store i8 0, ptr %24, align 1
  %25 = call ptr @strim(ptr noundef nonnull %5) #13
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  call void @cpus_read_lock() #13
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 24
  call void @down_write(ptr noundef %28) #13
  %29 = call i32 @strncmp(ptr noundef %25, ptr noundef nonnull dereferenceable(4) @.str.100, i32 noundef 3) #13
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 3, i32 0
  %32 = getelementptr i8, ptr %25, i32 %31
  %33 = call i32 @match_string(ptr noundef nonnull @sched_feat_names, i32 noundef 25, ptr noundef %32) #13
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %23
  %36 = shl nuw i32 1, %33
  br i1 %30, label %37, label %41

37:                                               ; preds = %35
  %38 = xor i32 %36, -1
  %39 = load i32, ptr @sysctl_sched_features, align 4
  %40 = and i32 %39, %38
  br label %44

41:                                               ; preds = %35
  %42 = load i32, ptr @sysctl_sched_features, align 4
  %43 = or i32 %42, %36
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %40, %37 ], [ %43, %41 ]
  store i32 %45, ptr @sysctl_sched_features, align 4
  br label %46

46:                                               ; preds = %44, %23
  %47 = phi i32 [ %33, %23 ], [ 0, %44 ]
  call void @up_write(ptr noundef %28) #13
  call void @cpus_read_unlock() #13
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = zext i32 %6 to i64
  %51 = load i64, ptr %3, align 8
  %52 = add i64 %51, %50
  store i64 %52, ptr %3, align 8
  br label %53

53:                                               ; preds = %49, %46, %20
  %54 = phi i32 [ %6, %49 ], [ %47, %46 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_feat_open(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sched_feat_show, ptr noundef null) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_feat_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi i32 [ 0, %2 ], [ %13, %10 ]
  %5 = load i32, ptr @sysctl_sched_features, align 4
  %6 = shl nuw nsw i32 1, %4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.100) #13
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr [25 x ptr], ptr @sched_feat_names, i32 0, i32 %4
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.126, ptr noundef %12) #13
  %13 = add nuw nsw i32 %4, 1
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %3

15:                                               ; preds = %10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_scaling_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #1 {
  %5 = alloca [16 x i8], align 1
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 15)
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %7, i32 -1090519040) #15, !srcloc !14
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !13

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #17, !srcloc !15
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #13, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %7) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ %17, %11 ], [ %7, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !13

21:                                               ; preds = %18
  %22 = sub i32 %7, %19
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %19, i1 false) #13
  br label %38

24:                                               ; preds = %18
  %25 = getelementptr [16 x i8], ptr %5, i32 0, i32 %7
  store i8 0, ptr %25, align 1
  %26 = call i32 @kstrtouint(ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %6) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, ptr %6, align 4
  %30 = icmp ugt i32 %29, 2
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  store i32 %29, ptr @sysctl_sched_tunable_scaling, align 4
  %32 = call i32 @sched_update_scaling() #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = zext i32 %7 to i64
  %36 = load i64, ptr %3, align 8
  %37 = add i64 %36, %35
  store i64 %37, ptr %3, align 8
  br label %38

38:                                               ; preds = %34, %31, %28, %24, %21
  %39 = phi i32 [ %7, %34 ], [ -22, %24 ], [ -22, %28 ], [ -22, %31 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_scaling_open(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sched_scaling_show, ptr noundef null) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_update_scaling() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_scaling_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.127, i32 noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_debug_open(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @sched_debug_sops) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sched_debug_start(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  switch i32 %4, label %5 [
    i32 0, label %19
    i32 1, label %8
  ]

5:                                                ; preds = %2
  %6 = add i32 %4, -2
  %7 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_online_mask) #14
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #13
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %1, align 8
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add i32 %11, 2
  %18 = inttoptr i32 %17 to ptr
  br label %19

19:                                               ; preds = %16, %10, %2
  %20 = phi ptr [ %18, %16 ], [ inttoptr (i32 1 to ptr), %2 ], [ null, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sched_debug_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sched_debug_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #1 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = trunc i64 %5 to i32
  switch i32 %6, label %7 [
    i32 0, label %21
    i32 1, label %10
  ]

7:                                                ; preds = %3
  %8 = add i32 %6, -2
  %9 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_online_mask) #14
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #13
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  store i64 %15, ptr %2, align 8
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = add i32 %13, 2
  %20 = inttoptr i32 %19 to ptr
  br label %21

21:                                               ; preds = %18, %12, %3
  %22 = phi ptr [ %20, %18 ], [ inttoptr (i32 1 to ptr), %3 ], [ null, %12 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_debug_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 -2
  %4 = icmp eq ptr %3, inttoptr (i32 -1 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  tail call fastcc void @print_cpu(ptr noundef %0, i32 noundef %6)
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @sched_debug_header(ptr noundef %0)
  br label %8

8:                                                ; preds = %7, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_str(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_flags_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sd_flags_show, ptr noundef %4) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_flags_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %3, align 4
  %7 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 14, i32 noundef 0) #13
  %8 = icmp slt i32 %7, 14
  br i1 %8, label %9, label %16

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %14, %9 ], [ %7, %2 ]
  %11 = getelementptr [0 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %10, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @seq_puts(ptr noundef %0, ptr noundef %12) #13
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.136) #13
  %13 = add nsw i32 %10, 1
  %14 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 14, i32 noundef %13) #13
  %15 = icmp slt i32 %14, 14
  br i1 %15, label %9, label %16

16:                                               ; preds = %9, %2
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cfs_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_rt_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_dl_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_rq(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.174) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.176) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.178) #13
  br label %11

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #16
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177) #16
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179) #16
  br label %11

11:                                               ; preds = %6, %5
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %13 = getelementptr i8, ptr %12, i32 -1116
  %14 = icmp eq ptr %13, @init_task
  br i1 %14, label %208, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 14
  br label %21

17:                                               ; preds = %203, %21
  %18 = load volatile ptr, ptr %22, align 4
  %19 = getelementptr i8, ptr %18, i32 -1116
  %20 = icmp eq ptr %19, @init_task
  br i1 %20, label %208, label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %12, %15 ], [ %18, %17 ]
  %23 = getelementptr i8, ptr %22, i32 500
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 3
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %17, label %28

28:                                               ; preds = %203, %21
  %29 = phi ptr [ %204, %203 ], [ %26, %21 ]
  %30 = getelementptr i8, ptr %29, i32 -1380
  %31 = load volatile i32, ptr %30, align 8
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %33, label %203

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 -1388
  %35 = load ptr, ptr %16, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  br i1 %4, label %39, label %38

38:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.180) #13
  br label %60

39:                                               ; preds = %37
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #16
  br label %130

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %29, i32 -852
  %43 = load volatile i32, ptr %42, align 8
  %44 = getelementptr i8, ptr %29, i32 -176
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, %43
  %47 = and i32 %46, 127
  %48 = icmp eq i32 %43, 1026
  %49 = select i1 %48, i32 128, i32 %47
  %50 = icmp eq i32 %49, 0
  %51 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 false) #13, !range !19
  %52 = sub nuw nsw i32 32, %51
  %53 = select i1 %50, i32 0, i32 %52
  %54 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  br i1 %4, label %58, label %57

57:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.182, i32 noundef %56) #13
  br label %60

58:                                               ; preds = %41
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %56) #16
  br label %130

60:                                               ; preds = %57, %38
  %61 = getelementptr i8, ptr %29, i32 180
  %62 = getelementptr i8, ptr %29, i32 -100
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr i8, ptr %29, i32 -700
  %65 = load i64, ptr %64, align 16
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = sub i64 0, %65
  %69 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %68) #15, !srcloc !9
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %68, i64 %69, i32 0) #15, !srcloc !10
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = lshr i64 %71, 18
  %73 = sub nsw i64 0, %72
  br label %79

74:                                               ; preds = %60
  %75 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %65) #15, !srcloc !9
  %76 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %65, i64 %75, i32 0) #15, !srcloc !10
  %77 = extractvalue { i64, i32 } %76, 0
  %78 = lshr i64 %77, 18
  br label %79

79:                                               ; preds = %74, %67
  %80 = phi i64 [ %73, %67 ], [ %78, %74 ]
  %81 = tail call i64 @llvm.abs.i64(i64 %65, i1 false) #13
  %82 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %81) #15, !srcloc !9
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %81, i64 %82, i32 0) #15, !srcloc !10
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = trunc i64 %81 to i32
  %86 = lshr i64 %84, 18
  %87 = trunc i64 %86 to i32
  %88 = mul i32 %87, -1000000
  %89 = add i32 %88, %85
  %90 = getelementptr i8, ptr %29, i32 76
  %91 = load i32, ptr %90, align 8
  %92 = getelementptr i8, ptr %29, i32 80
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %91
  %95 = zext i32 %94 to i64
  %96 = getelementptr i8, ptr %29, i32 -796
  %97 = load i32, ptr %96, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.184, ptr noundef %61, i32 noundef %63, i64 noundef %80, i32 noundef %89, i64 noundef %95, i32 noundef %97) #13
  %98 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 0) #15, !srcloc !9
  %99 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 0, i64 %98, i32 0) #15, !srcloc !10
  %100 = extractvalue { i64, i32 } %99, 0
  %101 = lshr i64 %100, 18
  %102 = trunc i64 %101 to i32
  %103 = mul i32 %102, -1000000
  %104 = getelementptr i8, ptr %29, i32 -708
  %105 = load i64, ptr %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %79
  %108 = sub i64 0, %105
  %109 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %108) #15, !srcloc !9
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %108, i64 %109, i32 0) #15, !srcloc !10
  %111 = extractvalue { i64, i32 } %110, 0
  %112 = lshr i64 %111, 18
  %113 = sub nsw i64 0, %112
  br label %119

114:                                              ; preds = %79
  %115 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %105) #15, !srcloc !9
  %116 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %105, i64 %115, i32 0) #15, !srcloc !10
  %117 = extractvalue { i64, i32 } %116, 0
  %118 = lshr i64 %117, 18
  br label %119

119:                                              ; preds = %114, %107
  %120 = phi i64 [ %113, %107 ], [ %118, %114 ]
  %121 = tail call i64 @llvm.abs.i64(i64 %105, i1 false) #13
  %122 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %121) #15, !srcloc !9
  %123 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %121, i64 %122, i32 0) #15, !srcloc !10
  %124 = extractvalue { i64, i32 } %123, 0
  %125 = trunc i64 %121 to i32
  %126 = lshr i64 %124, 18
  %127 = trunc i64 %126 to i32
  %128 = mul i32 %127, -1000000
  %129 = add i32 %128, %125
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.186, i64 noundef %101, i32 noundef %103, i64 noundef %120, i32 noundef %129, i64 noundef %101, i32 noundef %103, i64 noundef %101, i32 noundef %103) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  br label %203

130:                                              ; preds = %58, %39
  %131 = getelementptr i8, ptr %29, i32 180
  %132 = getelementptr i8, ptr %29, i32 -100
  %133 = load i32, ptr %132, align 8
  %134 = getelementptr i8, ptr %29, i32 -700
  %135 = load i64, ptr %134, align 16
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = sub i64 0, %135
  %139 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %138) #15, !srcloc !9
  %140 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %138, i64 %139, i32 0) #15, !srcloc !10
  %141 = extractvalue { i64, i32 } %140, 0
  %142 = lshr i64 %141, 18
  %143 = sub nsw i64 0, %142
  br label %149

144:                                              ; preds = %130
  %145 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %135) #15, !srcloc !9
  %146 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %135, i64 %145, i32 0) #15, !srcloc !10
  %147 = extractvalue { i64, i32 } %146, 0
  %148 = lshr i64 %147, 18
  br label %149

149:                                              ; preds = %144, %137
  %150 = phi i64 [ %143, %137 ], [ %148, %144 ]
  %151 = tail call i64 @llvm.abs.i64(i64 %135, i1 false) #13
  %152 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %151) #15, !srcloc !9
  %153 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %151, i64 %152, i32 0) #15, !srcloc !10
  %154 = extractvalue { i64, i32 } %153, 0
  %155 = trunc i64 %151 to i32
  %156 = lshr i64 %154, 18
  %157 = trunc i64 %156 to i32
  %158 = mul i32 %157, -1000000
  %159 = add i32 %158, %155
  %160 = getelementptr i8, ptr %29, i32 76
  %161 = load i32, ptr %160, align 8
  %162 = getelementptr i8, ptr %29, i32 80
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, %161
  %165 = zext i32 %164 to i64
  %166 = getelementptr i8, ptr %29, i32 -796
  %167 = load i32, ptr %166, align 16
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef %131, i32 noundef %133, i64 noundef %150, i32 noundef %159, i64 noundef %165, i32 noundef %167) #16
  %169 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 0) #15, !srcloc !9
  %170 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 0, i64 %169, i32 0) #15, !srcloc !10
  %171 = extractvalue { i64, i32 } %170, 0
  %172 = lshr i64 %171, 18
  %173 = trunc i64 %172 to i32
  %174 = mul i32 %173, -1000000
  %175 = getelementptr i8, ptr %29, i32 -708
  %176 = load i64, ptr %175, align 8
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %149
  %179 = sub i64 0, %176
  %180 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %179) #15, !srcloc !9
  %181 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %179, i64 %180, i32 0) #15, !srcloc !10
  %182 = extractvalue { i64, i32 } %181, 0
  %183 = lshr i64 %182, 18
  %184 = sub nsw i64 0, %183
  br label %190

185:                                              ; preds = %149
  %186 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %176) #15, !srcloc !9
  %187 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %176, i64 %186, i32 0) #15, !srcloc !10
  %188 = extractvalue { i64, i32 } %187, 0
  %189 = lshr i64 %188, 18
  br label %190

190:                                              ; preds = %185, %178
  %191 = phi i64 [ %184, %178 ], [ %189, %185 ]
  %192 = tail call i64 @llvm.abs.i64(i64 %176, i1 false) #13
  %193 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %192) #15, !srcloc !9
  %194 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %192, i64 %193, i32 0) #15, !srcloc !10
  %195 = extractvalue { i64, i32 } %194, 0
  %196 = trunc i64 %192 to i32
  %197 = lshr i64 %195, 18
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, -1000000
  %200 = add i32 %199, %196
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i64 noundef %172, i32 noundef %174, i64 noundef %191, i32 noundef %200, i64 noundef %172, i32 noundef %174, i64 noundef %172, i32 noundef %174) #16
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %203

203:                                              ; preds = %190, %119, %28
  %204 = load volatile ptr, ptr %29, align 4
  %205 = load ptr, ptr %23, align 16
  %206 = getelementptr inbounds %struct.signal_struct, ptr %205, i32 0, i32 3
  %207 = icmp eq ptr %204, %206
  br i1 %207, label %17, label %28

208:                                              ; preds = %17, %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly }

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
!9 = !{i64 1194355, i64 1194382}
!10 = !{i64 1195050, i64 1195077, i64 1195110, i64 1195131, i64 1195158, i64 1195184}
!11 = !{i64 652610, i64 652671}
!12 = !{i64 655627}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2150161326, i64 2150161351}
!15 = !{i64 2657438}
!16 = !{i64 2657635}
!17 = !{i64 2150142914}
!18 = !{i64 2149045877}
!19 = !{i32 0, i32 33}
!20 = !{i64 2149046094}
