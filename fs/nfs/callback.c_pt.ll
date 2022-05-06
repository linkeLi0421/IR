; ModuleID = '/llk/IR/fs/nfs/callback.c_pt.bc'
source_filename = "../fs/nfs/callback.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs_callback_data = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.147, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.125 }
%union.anon.125 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.anon.147 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.94, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.94 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.118, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.98 }
%union.anon.98 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.118 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@nfs_callback_info = internal unnamed_addr global [3 x %struct.nfs_callback_data] zeroinitializer, align 4
@nfs_callback_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfs_callback_mutex, i64 12), ptr getelementptr (i8, ptr @nfs_callback_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [5 x i8] c"nfs@\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\014nfs_callback_create_svc: no kthread, %d users??\0A\00", align 1
@nfs4_callback_program = internal global %struct.svc_program { ptr null, i32 1073741824, i32 0, i32 0, i32 5, ptr @nfs4_callback_version, ptr @.str.3, ptr @.str.4, ptr @nfs4_callback_stats, ptr @nfs_callback_authenticate, ptr @svc_generic_init_request, ptr @svc_generic_rpcbind_set }, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"\013nfs_callback_create_svc: create service failed\0A\00", align 1
@nfs40_cb_sv_ops = internal constant %struct.svc_serv_ops { ptr null, ptr @nfs4_callback_svc, ptr @svc_xprt_do_enqueue, ptr null }, align 4
@nfs41_cb_sv_ops = internal constant %struct.svc_serv_ops { ptr null, ptr @nfs41_callback_svc, ptr @svc_xprt_do_enqueue, ptr null }, align 4
@nfs4_callback_version = internal global [5 x ptr] [ptr null, ptr @nfs4_callback_version1, ptr null, ptr null, ptr @nfs4_callback_version4], align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"NFSv4 callback\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nfs4_callback_stats = internal global %struct.svc_stat zeroinitializer, align 4
@nfs4_callback_version1 = external dso_local constant %struct.svc_version, align 4
@nfs4_callback_version4 = external dso_local constant %struct.svc_version, align 4
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"\014NFS: bind callback service failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\013NFS: callback service start failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@nfs_callback_set_tcpport = external dso_local local_unnamed_addr global i32, align 4
@nfs_callback_nr_threads = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_callback_up(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %0
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 49
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @nfs_callback_mutex) #11
  %6 = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.svc_serv, ptr %7, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !9
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %9
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %34, label %18, !prof !11

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 2, %9 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %19) #11
  br label %34

20:                                               ; preds = %2
  %21 = icmp eq i32 %0, 0
  %22 = select i1 %21, ptr @nfs40_cb_sv_ops, ptr @nfs41_cb_sv_ops
  %23 = load i32, ptr %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %23) #12
  br label %27

27:                                               ; preds = %25, %20
  %28 = tail call ptr @svc_create(ptr noundef nonnull @nfs4_callback_program, i32 noundef 3072, ptr noundef nonnull %22) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %37

32:                                               ; preds = %27
  store ptr %28, ptr %6, align 4
  %33 = getelementptr inbounds %struct.svc_serv, ptr %28, i32 0, i32 5
  store i32 1024, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %18, %14
  %35 = phi ptr [ %28, %32 ], [ %7, %14 ], [ %7, %18 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %30
  %38 = phi ptr [ inttoptr (i32 -12 to ptr), %30 ], [ %35, %34 ]
  %39 = ptrtoint ptr %38 to i32
  br label %144

40:                                               ; preds = %34
  %41 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %42 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %43 = load volatile ptr, ptr %42, align 64
  %44 = getelementptr [0 x ptr], ptr %43, i32 0, i32 %41
  %45 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %46 = getelementptr %struct.nfs_net, ptr %45, i32 0, i32 10, i32 %0
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %40
  %51 = tail call i32 @svc_bind(ptr noundef nonnull %35, ptr noundef %5) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %97

55:                                               ; preds = %50
  %56 = icmp eq i32 %0, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %55
  %58 = tail call ptr @llvm.thread.pointer() #11
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 83
  %60 = load ptr, ptr %59, align 8
  %61 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %62 = load volatile ptr, ptr %42, align 64
  %63 = getelementptr [0 x ptr], ptr %62, i32 0, i32 %61
  %64 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %65 = load i32, ptr @nfs_callback_set_tcpport, align 4
  %66 = trunc i32 %65 to i16
  %67 = tail call i32 @svc_create_xprt(ptr noundef nonnull %35, ptr noundef nonnull @.str.7, ptr noundef %5, i32 noundef 2, i16 noundef zeroext %66, i32 noundef 1, ptr noundef %60) #11
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %81, label %69

69:                                               ; preds = %57
  %70 = trunc i32 %67 to i16
  %71 = getelementptr inbounds %struct.nfs_net, ptr %64, i32 0, i32 8
  store i16 %70, ptr %71, align 8
  %72 = load i32, ptr @nfs_callback_set_tcpport, align 4
  %73 = trunc i32 %72 to i16
  %74 = tail call i32 @svc_create_xprt(ptr noundef nonnull %35, ptr noundef nonnull @.str.7, ptr noundef %5, i32 noundef 10, i16 noundef zeroext %73, i32 noundef 1, ptr noundef %60) #11
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = trunc i32 %74 to i16
  %78 = getelementptr inbounds %struct.nfs_net, ptr %64, i32 0, i32 9
  store i16 %77, ptr %78, align 2
  br label %101

79:                                               ; preds = %69
  %80 = icmp eq i32 %74, -97
  br i1 %80, label %101, label %81

81:                                               ; preds = %79, %57
  %82 = phi i32 [ %67, %57 ], [ %74, %79 ]
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 -12, i32 %82
  br label %94

85:                                               ; preds = %55
  %86 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %87, i32 0, i32 22
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.svc_serv, ptr %35, i32 0, i32 20
  store i8 1, ptr %92, align 4
  %93 = load i16, ptr @nfs_callback_nr_threads, align 2
  br label %106

94:                                               ; preds = %85, %81
  %95 = phi i32 [ -93, %85 ], [ %84, %81 ]
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  tail call void @svc_rpcb_cleanup(ptr noundef nonnull %35, ptr noundef %5) #11
  br label %97

97:                                               ; preds = %94, %53
  %98 = phi i32 [ %51, %53 ], [ %95, %94 ]
  %99 = load i32, ptr %46, align 4
  %100 = add i32 %99, -1
  store i32 %100, ptr %46, align 4
  br label %127

101:                                              ; preds = %79, %76
  %102 = load i16, ptr @nfs_callback_nr_threads, align 2
  br label %109

103:                                              ; preds = %40
  %104 = load i16, ptr @nfs_callback_nr_threads, align 2
  %105 = icmp eq i32 %0, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103, %91
  %107 = phi i16 [ %93, %91 ], [ %104, %103 ]
  %108 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 41
  store ptr %35, ptr %108, align 8
  br label %109

109:                                              ; preds = %106, %103, %101
  %110 = phi i16 [ %107, %106 ], [ %104, %103 ], [ %102, %101 ]
  %111 = icmp eq i16 %110, 0
  %112 = select i1 %111, i16 1, i16 %110
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.svc_serv, ptr %35, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, %113
  br i1 %116, label %123, label %117

117:                                              ; preds = %109
  %118 = tail call i32 @svc_set_num_threads(ptr noundef nonnull %35, ptr noundef null, i32 noundef %113) #11
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = tail call i32 @svc_set_num_threads(ptr noundef nonnull %35, ptr noundef null, i32 noundef 0) #11
  %122 = icmp slt i32 %118, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %120, %117, %109
  %124 = phi i32 [ %118, %120 ], [ 0, %109 ], [ 0, %117 ]
  %125 = load i32, ptr %3, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %3, align 4
  br label %130

127:                                              ; preds = %155, %146, %97
  %128 = phi i32 [ %98, %97 ], [ %118, %146 ], [ %118, %155 ]
  %129 = load i32, ptr %3, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i32 [ %129, %127 ], [ %126, %123 ]
  %132 = phi i32 [ %128, %127 ], [ %124, %123 ]
  %133 = icmp eq i32 %131, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store ptr null, ptr %6, align 4
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct.svc_serv, ptr %35, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #11, !srcloc !8
  %137 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 1, ptr elementtype(i32) %136) #11, !srcloc !15
  %138 = extractvalue { i32, i32, i32 } %137, 0
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = icmp sgt i32 %138, 0
  br i1 %141, label %144, label %142, !prof !11

142:                                              ; preds = %140
  tail call void @refcount_warn_saturate(ptr noundef %136, i32 noundef 3) #11
  br label %144

143:                                              ; preds = %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void @svc_destroy(ptr noundef %136) #11
  br label %144

144:                                              ; preds = %143, %142, %140, %37
  %145 = phi i32 [ %39, %37 ], [ %132, %140 ], [ %132, %142 ], [ %132, %143 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_callback_mutex) #11
  ret i32 %145

146:                                              ; preds = %120
  %147 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %148 = load volatile ptr, ptr %42, align 64
  %149 = getelementptr [0 x ptr], ptr %148, i32 0, i32 %147
  %150 = load ptr, ptr %149, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %151 = getelementptr %struct.nfs_net, ptr %150, i32 0, i32 10, i32 %0
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, -1
  store i32 %153, ptr %151, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %127

155:                                              ; preds = %146
  tail call void @svc_shutdown_net(ptr noundef nonnull %35, ptr noundef %5) #11
  br label %127
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_callback_down(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %0
  tail call void @mutex_lock(ptr noundef nonnull @nfs_callback_mutex) #11
  %4 = getelementptr [3 x %struct.nfs_callback_data], ptr @nfs_callback_info, i32 0, i32 %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %7 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %11 = getelementptr %struct.nfs_net, ptr %10, i32 0, i32 10, i32 %0
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @svc_shutdown_net(ptr noundef %5, ptr noundef %1) #11
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, ptr %3, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #11, !srcloc !9
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !10

25:                                               ; preds = %20
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !11

29:                                               ; preds = %25, %20
  %30 = phi i32 [ 2, %20 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #11
  br label %31

31:                                               ; preds = %29, %25
  %32 = tail call i32 @svc_set_num_threads(ptr noundef %5, ptr noundef null, i32 noundef 0) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #11, !srcloc !15
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 3) #11
  br label %40

39:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void @svc_destroy(ptr noundef %21) #11
  br label %40

40:                                               ; preds = %39, %38, %36
  store ptr null, ptr %4, align 4
  br label %41

41:                                               ; preds = %40, %16
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_callback_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_num_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @check_gss_callback_principal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 11, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.auth_ops, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq ptr %4, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef nonnull %18)
  %22 = icmp eq i32 %21, 0
  br label %32

23:                                               ; preds = %16
  %24 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str, i32 4)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %4, i32 4
  %28 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @strcmp(ptr noundef %27, ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %26, %23, %20, %10, %2
  %33 = phi i1 [ %22, %20 ], [ true, %2 ], [ false, %10 ], [ false, %23 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_callback_svc(ptr noundef %0) #6 {
  %2 = tail call zeroext i1 @set_freezable() #11
  %3 = tail call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #11
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  br label %6

6:                                                ; preds = %19, %4
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !11

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %5, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  tail call void @flush_signals(ptr noundef %5) #11
  br label %15

15:                                               ; preds = %14, %10
  %16 = tail call i32 @svc_recv(ptr noundef %0, i32 noundef 2147483647) #11
  switch i32 %16, label %17 [
    i32 -4, label %19
    i32 -11, label %19
  ]

17:                                               ; preds = %15
  %18 = tail call i32 @svc_process(ptr noundef %0) #11
  br label %19

19:                                               ; preds = %17, %15, %15
  %20 = tail call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #11
  br i1 %20, label %21, label %6

21:                                               ; preds = %19, %1
  tail call void @svc_exit_thread(ptr noundef %0) #11
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #13
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_do_enqueue(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_freezable_should_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_recv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_exit_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs41_callback_svc(ptr noundef %0) #6 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %2, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = call zeroext i1 @set_freezable() #11
  %11 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #11
  br i1 %11, label %41, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.svc_serv, ptr %4, i32 0, i32 19
  %14 = getelementptr inbounds %struct.svc_serv, ptr %4, i32 0, i32 18
  %15 = getelementptr inbounds %struct.svc_serv, ptr %4, i32 0, i32 17
  br label %16

16:                                               ; preds = %39, %12
  %17 = load volatile i32, ptr %6, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24, !prof !11

20:                                               ; preds = %16
  %21 = load volatile i32, ptr %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16
  call void @flush_signals(ptr noundef %6) #11
  br label %25

25:                                               ; preds = %24, %20
  call void @prepare_to_wait(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 1) #11
  call void @_raw_spin_lock_bh(ptr noundef %14) #11
  %26 = load volatile ptr, ptr %15, align 4
  %27 = icmp eq ptr %26, %15
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %26, i32 -268
  %30 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %14) #11
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %2) #11
  %34 = call i32 @bc_svc_process(ptr noundef %4, ptr noundef %29, ptr noundef %0) #11
  br label %39

35:                                               ; preds = %25
  call void @_raw_spin_unlock_bh(ptr noundef %14) #11
  %36 = call zeroext i1 @kthread_should_stop() #11
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void @schedule() #11
  br label %38

38:                                               ; preds = %37, %35
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %2) #11
  br label %39

39:                                               ; preds = %38, %28
  %40 = call zeroext i1 @kthread_freezable_should_stop(ptr noundef null) #11
  br i1 %40, label %41, label %16

41:                                               ; preds = %39, %1
  call void @svc_exit_thread(ptr noundef %0) #11
  call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #13
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bc_svc_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nfs_callback_authenticate(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %2, align 4
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.auth_ops, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %17 [
    i32 0, label %7
    i32 6, label %11
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 30
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.svc_serv, ptr %13, i32 0, i32 20
  %15 = load i8, ptr %14, align 4, !range !17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %7, %1
  store i32 0, ptr %2, align 4
  br label %18

18:                                               ; preds = %17, %11, %7
  %19 = phi i32 [ 5, %17 ], [ 8, %7 ], [ 8, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_init_request(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_rpcbind_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rpcb_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_create_xprt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_shutdown_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }

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
!8 = !{i64 675430, i64 2148165401, i64 2148165427, i64 2148165474, i64 2148165496, i64 2148165524, i64 2148165544}
!9 = !{i64 2148178274, i64 2148178306, i64 2148178335, i64 2148178369, i64 2148178400, i64 2148178423}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149354566}
!13 = !{i64 2149354783}
!14 = !{i64 2148278496}
!15 = !{i64 2148180631, i64 2148180663, i64 2148180692, i64 2148180726, i64 2148180757, i64 2148180780}
!16 = !{i64 2149938187}
!17 = !{i8 0, i8 2}
