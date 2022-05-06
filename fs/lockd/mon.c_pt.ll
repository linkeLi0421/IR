; ModuleID = '/llk/IR/fs/lockd/mon.c_pt.bc'
source_filename = "../fs/lockd/mon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.nsm_res = type { i32, i32 }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nsm_handle = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.__kernel_sockaddr_storage, i32, i8, %struct.nsm_private, [51 x i8] }
%struct.nsm_private = type { [16 x i8] }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nsm_args = type { ptr, i32, i32, i32, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.75 }
%struct.llist_node = type { ptr }
%union.anon.75 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.140, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.140 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.102, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.102 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.lockd_net = type { i32, i32, i32, %struct.delayed_work, %struct.lock_manager, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.58 }
%union.anon.58 = type { [4 x i32] }
%struct.nlm_reboot = type { ptr, i32, i32, %struct.nsm_private }

@nsm_use_hostnames = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@nsm_monitor._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nsm_monitor = private unnamed_addr constant [12 x i8] c"nsm_monitor\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"\015lockd: cannot monitor %s\0A\00", align 1
@nsm_local_state = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\015lockd: cannot unmonitor %s\0A\00", align 1
@lockd_net_id = external dso_local local_unnamed_addr global i32, align 4
@__func__.nsm_get_handle = private unnamed_addr constant [15 x i8] c"nsm_get_handle\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\014Invalid hostname \22%.*s\22 in NFS lock request\0A\00", align 1
@nsm_lock = internal global %struct.spinlock zeroinitializer, align 4
@__const.nsm_create.sin = private unnamed_addr constant %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr { i32 16777343 }, [8 x i8] zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"rpc.statd\00", align 1
@nsm_program = internal constant %struct.rpc_program { ptr @.str.4, i32 100024, i32 2, ptr @nsm_version, ptr @nsm_stats, ptr null }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"statd\00", align 1
@nsm_version = internal global [2 x ptr] [ptr null, ptr @nsm_version1], align 4
@nsm_stats = internal global %struct.rpc_stat zeroinitializer, align 4
@nsm_version1 = internal constant %struct.rpc_version { i32 1, i32 4, ptr @nsm_procedures, ptr @nsm_version1_counts }, align 4
@nsm_procedures = internal constant [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 2, ptr @nsm_xdr_enc_mon, ptr @nsm_xdr_dec_stat_res, i32 521, i32 2, i32 0, i32 2, ptr @.str.5 }, %struct.rpc_procinfo { i32 3, ptr @nsm_xdr_enc_unmon, ptr @nsm_xdr_dec_stat, i32 517, i32 1, i32 0, i32 3, ptr @.str.6 }], align 4
@nsm_version1_counts = internal global [4 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"MONITOR\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"UNMONITOR\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"unsupported address family\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nsm_monitor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nsm_res, align 8
  %3 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load i8, ptr @nsm_use_hostnames, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  br label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %14, %12 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = call fastcc i32 @nsm_mon_unmon(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %2, ptr noundef %0)
  %21 = load i32, ptr %2, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !10

23:                                               ; preds = %17
  %24 = icmp slt i32 %20, 0
  br i1 %24, label %25, label %33, !prof !11

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %20, %23 ], [ -5, %17 ]
  %27 = call i32 @___ratelimit(ptr noundef nonnull @nsm_monitor._rs, ptr noundef nonnull @__func__.nsm_monitor) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %31) #11
  br label %41

33:                                               ; preds = %23
  %34 = load i8, ptr %5, align 4
  %35 = or i8 %34, 1
  store i8 %35, ptr %5, align 4
  %36 = load i32, ptr @nsm_local_state, align 4
  %37 = getelementptr inbounds %struct.nsm_res, ptr %2, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %41, label %40, !prof !10

40:                                               ; preds = %33
  store i32 %38, ptr @nsm_local_state, align 4
  br label %41

41:                                               ; preds = %40, %33, %29, %25, %1
  %42 = phi i32 [ 0, %1 ], [ %26, %29 ], [ %26, %25 ], [ 0, %40 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nsm_mon_unmon(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.rpc_create_args, align 4
  %7 = alloca %struct.nsm_args, align 4
  %8 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %9 = getelementptr inbounds %struct.nsm_handle, ptr %0, i32 0, i32 7
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.nsm_args, ptr %7, i32 0, i32 1
  store i32 100021, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nsm_args, ptr %7, i32 0, i32 2
  store i32 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nsm_args, ptr %7, i32 0, i32 3
  store i32 16, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nsm_args, ptr %7, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nsm_handle, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  store ptr %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.nsm_args, ptr %7, i32 0, i32 5
  %17 = getelementptr inbounds %struct.nlm_host, ptr %3, i32 0, i32 27
  store ptr %17, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %18 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  store i32 0, ptr %8, align 4
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 3
  store ptr null, ptr %20, align 4
  store i64 0, ptr %2, align 4
  %21 = getelementptr inbounds %struct.nlm_host, ptr %3, i32 0, i32 25
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.nsm_create.sin, i32 16, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #10
  store ptr %22, ptr %6, align 4
  %23 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 1
  store i32 6, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 2
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 3
  store i32 16, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 4
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 5
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 6
  store ptr @.str.3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 7
  store ptr %17, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 8
  store ptr @nsm_program, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 9
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 10
  store i32 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 11
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 12
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 13
  store i32 16, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 14
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 15
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 16
  %39 = tail call ptr @llvm.thread.pointer() #10
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 83
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %38, align 4
  %42 = getelementptr inbounds %struct.rpc_create_args, ptr %6, i32 0, i32 17
  store i32 0, ptr %42, align 4
  %43 = call ptr @rpc_create(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = ptrtoint ptr %43 to i32
  br label %58

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.rpc_clnt, ptr %43, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.rpc_procinfo, ptr %49, i32 %1
  store ptr %50, ptr %8, align 4
  %51 = call i32 @rpc_call_sync(ptr noundef %43, ptr noundef nonnull %8, i32 noundef 1024) #10
  %52 = icmp eq i32 %51, -111
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  call void @rpc_force_rebind(ptr noundef %43) #10
  %54 = call i32 @rpc_call_sync(ptr noundef %43, ptr noundef nonnull %8, i32 noundef 1024) #10
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %54, %53 ], [ %51, %47 ]
  %57 = call i32 @llvm.smin.i32(i32 %56, i32 0)
  call void @rpc_shutdown_client(ptr noundef %43) #10
  br label %58

58:                                               ; preds = %55, %45
  %59 = phi i32 [ %46, %45 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nsm_unmonitor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nsm_res, align 8
  %3 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = call fastcc i32 @nsm_mon_unmon(ptr noundef %4, i32 noundef 3, ptr noundef nonnull %2, ptr noundef %0)
  %15 = load i32, ptr %2, align 8
  %16 = icmp ne i32 %15, 0
  %17 = icmp slt i32 %14, 0
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nsm_handle, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %21) #11
  br label %26

23:                                               ; preds = %13
  %24 = load i8, ptr %9, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %9, align 4
  br label %26

26:                                               ; preds = %23, %19, %8, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nsm_get_handle(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %11 = icmp ne ptr %3, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = tail call ptr @memchr(ptr noundef nonnull %3, i32 noundef 47, i32 noundef %4)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.nsm_get_handle) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %144, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %4, ptr noundef nonnull %3) #11
  br label %144

20:                                               ; preds = %12, %5
  %21 = getelementptr inbounds %struct.lockd_net, ptr %10, i32 0, i32 5
  %22 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %23 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %24 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %25 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %26 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %27 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %28 = add i32 %4, 221
  br label %29

29:                                               ; preds = %140, %20
  %30 = phi ptr [ null, %20 ], [ %123, %140 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @nsm_lock) #10
  %31 = load i8, ptr @nsm_use_hostnames, align 1, !range !9
  %32 = icmp ne i8 %31, 0
  %33 = and i1 %11, %32
  %34 = load ptr, ptr %21, align 4
  %35 = icmp eq ptr %34, %21
  br i1 %33, label %36, label %49

36:                                               ; preds = %29
  br i1 %35, label %112, label %37

37:                                               ; preds = %46, %36
  %38 = phi ptr [ %47, %46 ], [ %34, %36 ]
  %39 = getelementptr inbounds %struct.nsm_handle, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @strlen(ptr noundef %40) #10
  %42 = icmp eq i32 %41, %4
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = tail call i32 @bcmp(ptr %40, ptr nonnull %3, i32 %4) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %43, %37
  %47 = load ptr, ptr %38, align 4
  %48 = icmp eq ptr %47, %21
  br i1 %48, label %112, label %37

49:                                               ; preds = %29
  br i1 %35, label %112, label %50

50:                                               ; preds = %92, %49
  %51 = phi ptr [ %93, %92 ], [ %34, %49 ]
  %52 = getelementptr inbounds %struct.nsm_handle, ptr %51, i32 0, i32 4
  %53 = load i16, ptr %52, align 2
  %54 = load i16, ptr %1, align 2
  %55 = icmp eq i16 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %50
  switch i16 %53, label %92 [
    i16 2, label %57
    i16 10, label %59
  ]

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.nsm_handle, ptr %51, i32 0, i32 4, i32 0, i32 1
  br label %86

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.nsm_handle, ptr %51, i32 0, i32 4, i32 0, i32 1, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %22, align 4
  %63 = xor i32 %62, %61
  %64 = getelementptr %struct.nsm_handle, ptr %51, i32 0, i32 4, i32 0, i32 1, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %23, align 4
  %67 = xor i32 %66, %65
  %68 = or i32 %67, %63
  %69 = getelementptr %struct.nsm_handle, ptr %51, i32 0, i32 4, i32 0, i32 1, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %24, align 4
  %72 = xor i32 %71, %70
  %73 = or i32 %68, %72
  %74 = getelementptr %struct.nsm_handle, ptr %51, i32 0, i32 4, i32 0, i32 1, i32 16
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %25, align 4
  %77 = xor i32 %76, %75
  %78 = or i32 %73, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %59
  %81 = tail call i32 @__ipv6_addr_type(ptr noundef %60) #10
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.nsm_handle, ptr %51, i32 0, i32 4, i32 0, i32 1, i32 20
  br label %86

86:                                               ; preds = %84, %57
  %87 = phi ptr [ %26, %84 ], [ %27, %57 ]
  %88 = phi ptr [ %85, %84 ], [ %58, %57 ]
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %87, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %86, %59, %56, %50
  %93 = load ptr, ptr %51, align 4
  %94 = icmp eq ptr %93, %21
  br i1 %94, label %112, label %50

95:                                               ; preds = %86, %80, %43
  %96 = phi ptr [ %38, %43 ], [ %51, %80 ], [ %51, %86 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.nsm_handle, ptr %96, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #10, !srcloc !14
  %100 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #10, !srcloc !15
  %101 = extractvalue { i32, i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103, !prof !11

103:                                              ; preds = %98
  %104 = add i32 %101, 1
  %105 = or i32 %104, %101
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %109, label %107, !prof !10

107:                                              ; preds = %103, %98
  %108 = phi i32 [ 2, %98 ], [ 1, %103 ]
  tail call void @refcount_warn_saturate(ptr noundef %99, i32 noundef %108) #10
  br label %109

109:                                              ; preds = %107, %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %110 = load i16, ptr @nsm_lock, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr @nsm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  tail call void @kfree(ptr noundef %30) #10
  br label %144

112:                                              ; preds = %95, %92, %49, %46, %36
  %113 = icmp eq ptr %30, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr %21, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %30, ptr %116, align 4
  store ptr %115, ptr %30, align 64
  %117 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %21, ptr %117, align 4
  store volatile ptr %30, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %118 = load i16, ptr @nsm_lock, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr @nsm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %144

120:                                              ; preds = %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %121 = load i16, ptr @nsm_lock, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr @nsm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %123 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #12
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %125, !prof !11

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.nsm_handle, ptr %123, i32 0, i32 1
  store volatile i32 1, ptr %126, align 8
  %127 = getelementptr %struct.nsm_handle, ptr %123, i32 1
  %128 = getelementptr inbounds %struct.nsm_handle, ptr %123, i32 0, i32 3
  store ptr %127, ptr %128, align 16
  %129 = getelementptr inbounds %struct.nsm_handle, ptr %123, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %129, ptr align 2 %1, i32 %2, i1 false) #10
  %130 = getelementptr inbounds %struct.nsm_handle, ptr %123, i32 0, i32 5
  store i32 %2, ptr %130, align 4
  %131 = getelementptr inbounds %struct.nsm_handle, ptr %123, i32 0, i32 7
  %132 = tail call i64 @ktime_get() #10
  store i64 %132, ptr %131, align 1
  %133 = getelementptr %struct.nsm_handle, ptr %123, i32 0, i32 7, i32 0, i32 8
  %134 = ptrtoint ptr %123 to i32
  %135 = zext i32 %134 to i64
  store i64 %135, ptr %133, align 1
  %136 = getelementptr inbounds %struct.nsm_handle, ptr %123, i32 0, i32 8
  %137 = tail call i32 @rpc_ntop(ptr noundef %129, ptr noundef %136, i32 noundef 51) #10
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(27) %136, ptr noundef nonnull align 1 dereferenceable(27) @.str.7, i32 27, i1 false) #10
  br label %140

140:                                              ; preds = %139, %125
  %141 = load ptr, ptr %128, align 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %141, ptr align 1 %3, i32 %4, i1 false) #10
  %142 = load ptr, ptr %128, align 16
  %143 = getelementptr i8, ptr %142, i32 %4
  store i8 0, ptr %143, align 1
  br label %29

144:                                              ; preds = %120, %114, %109, %18, %15
  %145 = phi ptr [ %96, %109 ], [ %30, %114 ], [ null, %18 ], [ null, %15 ], [ null, %120 ]
  ret ptr %145
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nsm_reboot_lookup(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @_raw_spin_lock(ptr noundef nonnull @nsm_lock) #10
  %8 = getelementptr inbounds %struct.lockd_net, ptr %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.nlm_reboot, ptr %1, i32 0, i32 3
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %8, %2 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nsm_handle, ptr %12, i32 0, i32 7
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %15, ptr noundef dereferenceable(16) %9, i32 16) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %23, !prof !11

20:                                               ; preds = %18, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %21 = load i16, ptr @nsm_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @nsm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.nsm_handle, ptr %12, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #10, !srcloc !14
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #10, !srcloc !15
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !11

28:                                               ; preds = %23
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %28, %23
  %33 = phi i32 [ 2, %23 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %33) #10
  br label %34

34:                                               ; preds = %32, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %35 = load i16, ptr @nsm_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @nsm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %37

37:                                               ; preds = %34, %20
  %38 = phi ptr [ %12, %34 ], [ null, %20 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nsm_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nsm_handle, ptr %0, i32 0, i32 1
  %3 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %2, ptr noundef nonnull @nsm_lock) #10
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %9 = load i16, ptr @nsm_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @nsm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  tail call void @kfree(ptr noundef %0) #10
  br label %11

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_force_rebind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsm_xdr_enc_mon(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @strlen(ptr noundef %5) #10
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #10
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %5, i32 noundef %6) #10
  %10 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strlen(ptr noundef %11) #10
  %13 = add i32 %12, 4
  %14 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %13) #10
  %15 = tail call ptr @xdr_encode_opaque(ptr noundef %14, ptr noundef %11, i32 noundef %12) #10
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #10
  %17 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = getelementptr i32, ptr %16, i32 1
  store i32 %19, ptr %16, align 4
  %21 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = getelementptr i32, ptr %16, i32 2
  store i32 %23, ptr %20, align 4
  %25 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  store i32 %27, ptr %24, align 4
  %28 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #10
  %29 = load ptr, ptr %2, align 4
  %30 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %28, ptr noundef %29, i32 noundef 16) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsm_xdr_dec_stat_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !11

6:                                                ; preds = %3
  %7 = getelementptr i32, ptr %4, i32 1
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  store i32 %9, ptr %2, align 4
  %10 = load i32, ptr %7, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %12 = getelementptr inbounds %struct.nsm_res, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %6 ], [ -5, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsm_xdr_enc_unmon(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @strlen(ptr noundef %5) #10
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #10
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %5, i32 noundef %6) #10
  %10 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strlen(ptr noundef %11) #10
  %13 = add i32 %12, 4
  %14 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %13) #10
  %15 = tail call ptr @xdr_encode_opaque(ptr noundef %14, ptr noundef %11, i32 noundef %12) #10
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #10
  %17 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = getelementptr i32, ptr %16, i32 1
  store i32 %19, ptr %16, align 4
  %21 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = getelementptr i32, ptr %16, i32 2
  store i32 %23, ptr %20, align 4
  %25 = getelementptr inbounds %struct.nsm_args, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  store i32 %27, ptr %24, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsm_xdr_dec_stat(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !11

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = getelementptr inbounds %struct.nsm_res, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149408692}
!13 = !{i64 2149408909}
!14 = !{i64 423068, i64 2147913039, i64 2147913065, i64 2147913112, i64 2147913134, i64 2147913162, i64 2147913182}
!15 = !{i64 2147926709, i64 2147926741, i64 2147926770, i64 2147926804, i64 2147926835, i64 2147926858}
!16 = !{i64 2149009920}
!17 = !{i64 2149005744}
!18 = !{i64 2149005819, i64 2149005846, i64 2149005893, i64 2149005915, i64 2149005943, i64 2149005963}
!19 = !{i64 2149032923}
