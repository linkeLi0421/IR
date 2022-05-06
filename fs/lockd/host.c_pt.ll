; ModuleID = '/llk/IR/fs/lockd/host.c_pt.bc'
source_filename = "../fs/lockd/host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nlm_lookup_host_info = type { i32, ptr, i32, i16, i32, ptr, i32, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.102, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.102 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.58 }
%union.anon.58 = type { [4 x i32] }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockd_net = type { i32, i32, i32, %struct.delayed_work, %struct.lock_manager, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.nsm_handle = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.__kernel_sockaddr_storage, i32, i8, %struct.nsm_private, [51 x i8] }
%struct.nsm_private = type { [16 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.70 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.75 }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nlm_reboot = type { ptr, i32, i32, %struct.nsm_private }

@lockd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nlm_host_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nlm_host_mutex, i64 12), ptr getelementptr (i8, ptr @nlm_host_mutex, i64 12) } }, align 4
@nlm_client_hosts = internal global [32 x %struct.hlist_head] zeroinitializer, align 4
@nrhosts = internal unnamed_addr global i32 0, align 4
@nlmclnt_release_host.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"fs/lockd/host.c\00", align 1
@nlmclnt_release_host.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmclnt_release_host.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmclnt_release_host.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nlm_server_hosts = internal global [32 x %struct.hlist_head] zeroinitializer, align 4
@nlmsvc_release_host.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmsvc_timeout = external dso_local local_unnamed_addr global i32, align 4
@nlm_program = external dso_local constant %struct.rpc_program, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"lockd: couldn't create RPC handle for %s\0A\00", align 1
@nlm_alloc_host.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"&host->h_gracewait\00", align 1
@nlm_alloc_host.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"&host->h_rwsem\00", align 1
@nlm_alloc_host.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"&host->h_mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"\014lockd: couldn't shutdown host module for net %x!\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\014lockd: couldn't shutdown host module!\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlmclnt_lookup_host(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.nlm_lookup_host_info, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #10
  %10 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 2
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 3
  store i16 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 4
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 5
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 6
  %16 = tail call i32 @strlen(ptr noundef %4)
  store i32 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 7
  store i32 %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 8
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %9, i32 0, i32 9
  store ptr %7, ptr %19, align 4
  %20 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %21 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 37
  %22 = load volatile ptr, ptr %21, align 64
  %23 = getelementptr [0 x ptr], ptr %22, i32 0, i32 %20
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  tail call void @mutex_lock(ptr noundef nonnull @nlm_host_mutex) #10
  %25 = load i16, ptr %0, align 2
  switch i16 %25, label %61 [
    i16 2, label %26
    i16 10, label %33
  ]

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = xor i32 %29, %28
  %31 = lshr i32 %30, 8
  %32 = xor i32 %31, %30
  br label %61

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %35, 16
  %43 = xor i32 %42, %35
  %44 = lshr i32 %43, 8
  %45 = lshr i32 %37, 16
  %46 = xor i32 %45, %37
  %47 = lshr i32 %46, 8
  %48 = lshr i32 %39, 16
  %49 = xor i32 %48, %39
  %50 = lshr i32 %49, 8
  %51 = lshr i32 %41, 16
  %52 = xor i32 %51, %41
  %53 = lshr i32 %52, 8
  %54 = xor i32 %44, %43
  %55 = xor i32 %54, %46
  %56 = xor i32 %55, %47
  %57 = xor i32 %56, %49
  %58 = xor i32 %57, %50
  %59 = xor i32 %58, %52
  %60 = xor i32 %59, %53
  br label %61

61:                                               ; preds = %33, %26, %8
  %62 = phi i32 [ %60, %33 ], [ %32, %26 ], [ 0, %8 ]
  %63 = and i32 %62, 31
  %64 = getelementptr [32 x %struct.hlist_head], ptr @nlm_client_hosts, i32 0, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %154, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %69 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %70 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  %71 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  %72 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 4
  %73 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  br label %74

74:                                               ; preds = %150, %67
  %75 = phi ptr [ %65, %67 ], [ %152, %150 ]
  %76 = phi ptr [ null, %67 ], [ %151, %150 ]
  %77 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 25
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %6
  br i1 %79, label %80, label %150

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 1
  %82 = load i16, ptr %81, align 2
  %83 = load i16, ptr %0, align 2
  %84 = icmp eq i16 %82, %83
  br i1 %84, label %85, label %150

85:                                               ; preds = %80
  switch i16 %82, label %150 [
    i16 2, label %86
    i16 10, label %88
  ]

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 1, i32 0, i32 1
  br label %115

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 1, i32 0, i32 1, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %68, align 4
  %92 = xor i32 %91, %90
  %93 = getelementptr %struct.nlm_host, ptr %75, i32 0, i32 1, i32 0, i32 1, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %69, align 4
  %96 = xor i32 %95, %94
  %97 = or i32 %96, %92
  %98 = getelementptr %struct.nlm_host, ptr %75, i32 0, i32 1, i32 0, i32 1, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %70, align 4
  %101 = xor i32 %100, %99
  %102 = or i32 %97, %101
  %103 = getelementptr %struct.nlm_host, ptr %75, i32 0, i32 1, i32 0, i32 1, i32 16
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %71, align 4
  %106 = xor i32 %105, %104
  %107 = or i32 %102, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %88
  %110 = tail call i32 @__ipv6_addr_type(ptr noundef %89) #10
  %111 = and i32 %110, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 1, i32 0, i32 1, i32 20
  br label %115

115:                                              ; preds = %113, %86
  %116 = phi ptr [ %72, %113 ], [ %73, %86 ]
  %117 = phi ptr [ %114, %113 ], [ %87, %86 ]
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %116, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %115, %109
  %122 = icmp eq ptr %76, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 23
  %125 = load ptr, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi ptr [ %125, %123 ], [ %76, %121 ]
  %128 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 8
  %129 = load i16, ptr %128, align 4
  %130 = icmp eq i16 %129, %2
  br i1 %130, label %131, label %150

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, %3
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #10, !srcloc !10
  %137 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 1, ptr elementtype(i32) %136) #10, !srcloc !11
  %138 = extractvalue { i32, i32, i32 } %137, 0
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140, !prof !12

140:                                              ; preds = %135
  %141 = add i32 %138, 1
  %142 = or i32 %141, %138
  %143 = icmp sgt i32 %142, -1
  br i1 %143, label %146, label %144, !prof !13

144:                                              ; preds = %140, %135
  %145 = phi i32 [ 2, %135 ], [ 1, %140 ]
  tail call void @refcount_warn_saturate(ptr noundef %136, i32 noundef %145) #10
  br label %146

146:                                              ; preds = %144, %140
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = add i32 %147, 30000
  %149 = getelementptr inbounds %struct.nlm_host, ptr %75, i32 0, i32 18
  store i32 %148, ptr %149, align 4
  br label %170

150:                                              ; preds = %131, %126, %115, %88, %85, %80, %74
  %151 = phi ptr [ %76, %74 ], [ %127, %126 ], [ %127, %131 ], [ %76, %115 ], [ %76, %85 ], [ %76, %80 ], [ %76, %88 ]
  %152 = load ptr, ptr %75, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %74

154:                                              ; preds = %150, %61
  %155 = phi ptr [ null, %61 ], [ %151, %150 ]
  %156 = call fastcc ptr @nlm_alloc_host(ptr noundef nonnull %9, ptr noundef %155)
  %157 = icmp eq ptr %156, null
  br i1 %157, label %170, label %158, !prof !12

158:                                              ; preds = %154
  %159 = load ptr, ptr %64, align 4
  store volatile ptr %159, ptr %156, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.hlist_node, ptr %159, i32 0, i32 1
  store volatile ptr %156, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %158
  store volatile ptr %156, ptr %64, align 4
  %164 = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  store volatile ptr %64, ptr %164, align 4
  %165 = getelementptr inbounds %struct.lockd_net, ptr %24, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  %168 = load i32, ptr @nrhosts, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr @nrhosts, align 4
  br label %170

170:                                              ; preds = %163, %154, %146
  %171 = phi ptr [ %75, %146 ], [ null, %154 ], [ %156, %163 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  ret ptr %171
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlm_get_host(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !11
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !12

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !13

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #10
  br label %14

14:                                               ; preds = %12, %8
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 30000
  %17 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 18
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nlm_alloc_host(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #10, !srcloc !10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !11
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !12

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %29, label %14, !prof !13

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #10
  br label %29

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @nsm_get_handle(ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %115, label %29, !prof !12

29:                                               ; preds = %16, %14, %10
  %30 = phi ptr [ %27, %16 ], [ %1, %10 ], [ %1, %14 ]
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 484) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35, !prof !12

34:                                               ; preds = %29
  tail call void @nsm_release(ptr noundef nonnull %30) #10
  br label %115

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %36, ptr align 2 %38, i32 %40, i1 false)
  %41 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 2
  store i32 %40, ptr %41, align 8
  %42 = load i16, ptr %36, align 8
  switch i16 %42, label %49 [
    i16 2, label %43
    i16 10, label %45
  ]

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sockaddr_in, ptr %36, i32 0, i32 1
  br label %47

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.sockaddr_in6, ptr %36, i32 0, i32 1
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ]
  store i16 0, ptr %48, align 2
  br label %49

49:                                               ; preds = %47, %35
  %50 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 4
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 5
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nsm_handle, ptr %30, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 6
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 7
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 3
  %59 = load i16, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 8
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 9
  %62 = load i8, ptr %61, align 2
  %63 = load i32, ptr %0, align 4
  %64 = trunc i32 %63 to i8
  %65 = shl i8 %64, 1
  %66 = and i8 %65, 2
  %67 = and i8 %62, -16
  %68 = or i8 %66, %67
  %69 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = trunc i32 %70 to i8
  %72 = shl i8 %71, 2
  %73 = and i8 %72, 4
  %74 = or i8 %68, %73
  store i8 %74, ptr %61, align 2
  %75 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %75, ptr noundef nonnull @.str.5, ptr noundef nonnull @nlm_alloc_host.__key) #10
  %76 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 11
  tail call void @__init_rwsem(ptr noundef %76, ptr noundef nonnull @.str.7, ptr noundef nonnull @nlm_alloc_host.__key.6) #10
  %77 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 12
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 13
  store i32 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 14
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 15
  store volatile i32 1, ptr %80, align 8
  %81 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %81, ptr noundef nonnull @.str.9, ptr noundef nonnull @nlm_alloc_host.__key.8) #10
  %82 = add i32 %3, 6000
  %83 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 17
  store i32 %82, ptr %83, align 8
  %84 = add i32 %3, 30000
  %85 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 18
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 19
  store volatile ptr %86, ptr %86, align 8
  %87 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 19, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 20
  store i32 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 21
  store volatile ptr %89, ptr %89, align 4
  %90 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 21, i32 1
  store ptr %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 22
  store volatile ptr %91, ptr %91, align 4
  %92 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 22, i32 1
  store ptr %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 23
  store ptr %30, ptr %93, align 4
  %94 = getelementptr inbounds %struct.nsm_handle, ptr %30, i32 0, i32 8
  %95 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 24
  store ptr %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 8
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 25
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %0, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %49
  %103 = getelementptr inbounds %struct.cred, ptr %100, i32 0, i32 24
  store i32 0, ptr %103, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %100) #10, !srcloc !10
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %100, ptr nonnull %100, i32 1, ptr nonnull elementtype(i32) %100) #10, !srcloc !14
  br label %105

105:                                              ; preds = %102, %49
  %106 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 26
  store ptr %100, ptr %106, align 8
  %107 = getelementptr inbounds %struct.nlm_host, ptr %32, i32 0, i32 27
  %108 = tail call ptr @llvm.thread.pointer() #10
  %109 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 92
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nsproxy, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.new_utsname, ptr %112, i32 0, i32 1
  %114 = tail call i32 @strlcpy(ptr noundef %107, ptr noundef %113, i32 noundef 65) #10
  br label %115

115:                                              ; preds = %105, %34, %16
  %116 = phi ptr [ null, %34 ], [ %32, %105 ], [ null, %16 ]
  ret ptr %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmclnt_release_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 2
  %7 = icmp ne i8 %6, 0
  %8 = load i1, ptr @nlmclnt_release_host.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %3
  store i1 true, ptr @nlmclnt_release_host.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 15
  %14 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %13, ptr noundef nonnull @nlm_host_mutex) #10
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 19
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, %16
  %19 = load i1, ptr @nlmclnt_release_host.__already_done.1, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !12

22:                                               ; preds = %15
  store i1 true, ptr @nlmclnt_release_host.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 301, i32 noundef 9, ptr noundef null) #10
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 21
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, %24
  %27 = load i1, ptr @nlmclnt_release_host.__already_done.2, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !12

30:                                               ; preds = %23
  store i1 true, ptr @nlmclnt_release_host.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 9, ptr noundef null) #10
  br label %31

31:                                               ; preds = %30, %23
  %32 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 22
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp ne ptr %33, %32
  %35 = load i1, ptr @nlmclnt_release_host.__already_done.3, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !12

38:                                               ; preds = %31
  store i1 true, ptr @nlmclnt_release_host.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #10
  br label %39

39:                                               ; preds = %38, %31
  tail call fastcc void @nlm_destroy_host_locked(ptr noundef nonnull %0)
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  br label %40

40:                                               ; preds = %39, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nlm_destroy_host_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %5 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 37
  %6 = load volatile ptr, ptr %5, align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %9 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 4
  store volatile ptr %13, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %10, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12
  store ptr null, ptr %0, align 4
  store ptr null, ptr %9, align 4
  br label %18

18:                                               ; preds = %17, %1
  tail call void @nsm_unmonitor(ptr noundef %0) #10
  %19 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 23
  %20 = load ptr, ptr %19, align 4
  tail call void @nsm_release(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @rpc_shutdown_client(ptr noundef nonnull %22) #10
  br label %25

25:                                               ; preds = %24, %18
  %26 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 26
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #10, !srcloc !10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #10, !srcloc !16
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @__put_cred(ptr noundef nonnull %27) #10
  br label %34

34:                                               ; preds = %33, %29, %25
  tail call void @kfree(ptr noundef %0) #10
  %35 = getelementptr inbounds %struct.lockd_net, ptr %8, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr @nrhosts, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr @nrhosts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlmsvc_lookup_host(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nlm_lookup_host_info, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 19
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %15 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %15, align 4, !annotation !18
  store i32 1, ptr %4, align 4
  %16 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  store ptr %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 2
  %19 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 31
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %21, align 4
  %25 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 4
  %26 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 29
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 5
  store ptr %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 6
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 7
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 8
  store ptr %14, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %4, i32 0, i32 9
  store ptr null, ptr %32, align 4
  %33 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %34 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 37
  %35 = load volatile ptr, ptr %34, align 64
  %36 = getelementptr [0 x ptr], ptr %35, i32 0, i32 %33
  %37 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  tail call void @mutex_lock(ptr noundef nonnull @nlm_host_mutex) #10
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = getelementptr inbounds %struct.lockd_net, ptr %37, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %38, %40
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  tail call fastcc void @nlm_gc_hosts(ptr noundef %14)
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i16, ptr %17, align 2
  switch i16 %45, label %81 [
    i16 2, label %46
    i16 10, label %53
  ]

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = xor i32 %49, %48
  %51 = lshr i32 %50, 8
  %52 = xor i32 %51, %50
  br label %81

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 16
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %55, 16
  %63 = xor i32 %62, %55
  %64 = lshr i32 %63, 8
  %65 = lshr i32 %57, 16
  %66 = xor i32 %65, %57
  %67 = lshr i32 %66, 8
  %68 = lshr i32 %59, 16
  %69 = xor i32 %68, %59
  %70 = lshr i32 %69, 8
  %71 = lshr i32 %61, 16
  %72 = xor i32 %71, %61
  %73 = lshr i32 %72, 8
  %74 = xor i32 %64, %63
  %75 = xor i32 %74, %66
  %76 = xor i32 %75, %67
  %77 = xor i32 %76, %69
  %78 = xor i32 %77, %70
  %79 = xor i32 %78, %72
  %80 = xor i32 %79, %73
  br label %81

81:                                               ; preds = %53, %46, %44
  %82 = phi i32 [ %80, %53 ], [ %52, %46 ], [ 0, %44 ]
  %83 = and i32 %82, 31
  %84 = getelementptr [32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 0, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %233, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 4
  %89 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 8
  %90 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 12
  %91 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 16
  %92 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 20
  %93 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1
  %94 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 4
  %95 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 8
  %96 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 12
  %97 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 16
  %98 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 20
  %99 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1
  br label %100

100:                                              ; preds = %229, %87
  %101 = phi ptr [ %85, %87 ], [ %231, %229 ]
  %102 = phi ptr [ null, %87 ], [ %230, %229 ]
  %103 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 25
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %14
  br i1 %105, label %106, label %229

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 1
  %108 = load i16, ptr %107, align 2
  %109 = load i16, ptr %17, align 2
  %110 = icmp eq i16 %108, %109
  br i1 %110, label %111, label %229

111:                                              ; preds = %106
  switch i16 %108, label %229 [
    i16 2, label %112
    i16 10, label %114
  ]

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 1, i32 0, i32 1
  br label %141

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 1, i32 0, i32 1, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %88, align 4
  %118 = xor i32 %117, %116
  %119 = getelementptr %struct.nlm_host, ptr %101, i32 0, i32 1, i32 0, i32 1, i32 8
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %89, align 4
  %122 = xor i32 %121, %120
  %123 = or i32 %122, %118
  %124 = getelementptr %struct.nlm_host, ptr %101, i32 0, i32 1, i32 0, i32 1, i32 12
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %90, align 4
  %127 = xor i32 %126, %125
  %128 = or i32 %123, %127
  %129 = getelementptr %struct.nlm_host, ptr %101, i32 0, i32 1, i32 0, i32 1, i32 16
  %130 = load i32, ptr %129, align 4
  %131 = load i32, ptr %91, align 4
  %132 = xor i32 %131, %130
  %133 = or i32 %128, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %229

135:                                              ; preds = %114
  %136 = tail call i32 @__ipv6_addr_type(ptr noundef %115) #10
  %137 = and i32 %136, 32
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 1, i32 0, i32 1, i32 20
  br label %141

141:                                              ; preds = %139, %112
  %142 = phi ptr [ %92, %139 ], [ %93, %112 ]
  %143 = phi ptr [ %140, %139 ], [ %113, %112 ]
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %142, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %229

147:                                              ; preds = %141, %135
  %148 = icmp eq ptr %102, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 23
  %151 = load ptr, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %147
  %153 = phi ptr [ %151, %149 ], [ %102, %147 ]
  %154 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 8
  %155 = load i16, ptr %154, align 4
  %156 = icmp eq i16 %155, %24
  br i1 %156, label %157, label %229

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, %27
  br i1 %160, label %161, label %229

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 3
  %163 = load i16, ptr %162, align 2
  %164 = load i16, ptr %5, align 2
  %165 = icmp eq i16 %163, %164
  br i1 %165, label %166, label %229

166:                                              ; preds = %161
  switch i16 %163, label %229 [
    i16 2, label %167
    i16 10, label %169
  ]

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 3, i32 0, i32 1
  br label %196

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 3, i32 0, i32 1, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = load i32, ptr %94, align 4
  %173 = xor i32 %172, %171
  %174 = getelementptr %struct.nlm_host, ptr %101, i32 0, i32 3, i32 0, i32 1, i32 8
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %95, align 4
  %177 = xor i32 %176, %175
  %178 = or i32 %177, %173
  %179 = getelementptr %struct.nlm_host, ptr %101, i32 0, i32 3, i32 0, i32 1, i32 12
  %180 = load i32, ptr %179, align 4
  %181 = load i32, ptr %96, align 4
  %182 = xor i32 %181, %180
  %183 = or i32 %178, %182
  %184 = getelementptr %struct.nlm_host, ptr %101, i32 0, i32 3, i32 0, i32 1, i32 16
  %185 = load i32, ptr %184, align 4
  %186 = load i32, ptr %97, align 4
  %187 = xor i32 %186, %185
  %188 = or i32 %183, %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %229

190:                                              ; preds = %169
  %191 = tail call i32 @__ipv6_addr_type(ptr noundef %170) #10
  %192 = and i32 %191, 32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 3, i32 0, i32 1, i32 20
  br label %196

196:                                              ; preds = %194, %167
  %197 = phi ptr [ %98, %194 ], [ %99, %167 ]
  %198 = phi ptr [ %195, %194 ], [ %168, %167 ]
  %199 = load i32, ptr %198, align 4
  %200 = load i32, ptr %197, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %196, %190
  %203 = load ptr, ptr %101, align 4
  %204 = getelementptr inbounds %struct.hlist_node, ptr %101, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  store volatile ptr %203, ptr %205, align 4
  %206 = icmp eq ptr %203, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.hlist_node, ptr %203, i32 0, i32 1
  store volatile ptr %205, ptr %208, align 4
  br label %209

209:                                              ; preds = %207, %202
  store ptr inttoptr (i32 256 to ptr), ptr %101, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %204, align 4
  %210 = load ptr, ptr %84, align 4
  store volatile ptr %210, ptr %101, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.hlist_node, ptr %210, i32 0, i32 1
  store volatile ptr %101, ptr %213, align 4
  br label %214

214:                                              ; preds = %212, %209
  store volatile ptr %101, ptr %84, align 4
  store volatile ptr %84, ptr %204, align 4
  %215 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %215) #10, !srcloc !10
  %216 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %215, ptr %215, i32 1, ptr elementtype(i32) %215) #10, !srcloc !11
  %217 = extractvalue { i32, i32, i32 } %216, 0
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219, !prof !12

219:                                              ; preds = %214
  %220 = add i32 %217, 1
  %221 = or i32 %220, %217
  %222 = icmp sgt i32 %221, -1
  br i1 %222, label %225, label %223, !prof !13

223:                                              ; preds = %219, %214
  %224 = phi i32 [ 2, %214 ], [ 1, %219 ]
  tail call void @refcount_warn_saturate(ptr noundef %215, i32 noundef %224) #10
  br label %225

225:                                              ; preds = %223, %219
  %226 = load volatile i32, ptr @jiffies, align 64
  %227 = add i32 %226, 30000
  %228 = getelementptr inbounds %struct.nlm_host, ptr %101, i32 0, i32 18
  store i32 %227, ptr %228, align 4
  br label %261

229:                                              ; preds = %196, %169, %166, %161, %157, %152, %141, %114, %111, %106, %100
  %230 = phi ptr [ %102, %100 ], [ %153, %152 ], [ %153, %157 ], [ %153, %196 ], [ %102, %141 ], [ %102, %111 ], [ %102, %106 ], [ %102, %114 ], [ %153, %166 ], [ %153, %161 ], [ %153, %169 ]
  %231 = load ptr, ptr %101, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %100

233:                                              ; preds = %229, %81
  %234 = phi ptr [ null, %81 ], [ %230, %229 ]
  %235 = call fastcc ptr @nlm_alloc_host(ptr noundef nonnull %4, ptr noundef %234)
  %236 = icmp eq ptr %235, null
  br i1 %236, label %261, label %237, !prof !12

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.nlm_host, ptr %235, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %238, ptr align 2 %5, i32 %7, i1 false)
  %239 = getelementptr inbounds %struct.nlm_host, ptr %235, i32 0, i32 4
  store i32 %7, ptr %239, align 4
  %240 = load ptr, ptr %84, align 4
  store volatile ptr %240, ptr %235, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.hlist_node, ptr %240, i32 0, i32 1
  store volatile ptr %235, ptr %243, align 4
  br label %244

244:                                              ; preds = %242, %237
  store volatile ptr %235, ptr %84, align 4
  %245 = getelementptr inbounds %struct.hlist_node, ptr %235, i32 0, i32 1
  store volatile ptr %84, ptr %245, align 4
  %246 = getelementptr inbounds %struct.lockd_net, ptr %37, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, 1
  store i32 %248, ptr %246, align 4
  %249 = load i32, ptr @nrhosts, align 4
  %250 = add i32 %249, 1
  store i32 %250, ptr @nrhosts, align 4
  %251 = getelementptr inbounds %struct.nlm_host, ptr %235, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %251) #10, !srcloc !10
  %252 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %251, ptr %251, i32 1, ptr elementtype(i32) %251) #10, !srcloc !11
  %253 = extractvalue { i32, i32, i32 } %252, 0
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %259, label %255, !prof !12

255:                                              ; preds = %244
  %256 = add i32 %253, 1
  %257 = or i32 %256, %253
  %258 = icmp sgt i32 %257, -1
  br i1 %258, label %261, label %259, !prof !13

259:                                              ; preds = %255, %244
  %260 = phi i32 [ 2, %244 ], [ 1, %255 ]
  tail call void @refcount_warn_saturate(ptr noundef %251, i32 noundef %260) #10
  br label %261

261:                                              ; preds = %259, %255, %233, %225
  %262 = phi ptr [ %101, %225 ], [ null, %233 ], [ %235, %255 ], [ %235, %259 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret ptr %262
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nlm_gc_hosts(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %20, %1
  %4 = phi ptr [ @nlm_server_hosts, %1 ], [ %21, %20 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %3
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  br i1 %2, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %7
  %14 = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 9
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, -9
  store i8 %16, ptr %14, align 2
  br label %17

17:                                               ; preds = %13, %9
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %3
  %21 = getelementptr %struct.hlist_head, ptr %4, i32 1
  %22 = icmp ult ptr %21, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %22, label %3, label %23

23:                                               ; preds = %20
  tail call void @nlmsvc_mark_resources(ptr noundef %0) #10
  br label %24

24:                                               ; preds = %52, %23
  %25 = phi ptr [ @nlm_server_hosts, %23 ], [ %53, %52 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %50, %24
  %29 = phi ptr [ %30, %50 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 4
  br i1 %2, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.nlm_host, ptr %29, i32 0, i32 25
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31, %28
  %36 = getelementptr inbounds %struct.nlm_host, ptr %29, i32 0, i32 9
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = getelementptr inbounds %struct.nlm_host, ptr %29, i32 0, i32 18
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %41, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.nlm_host, ptr %29, i32 0, i32 15
  %48 = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %47) #10
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call fastcc void @nlm_destroy_host_locked(ptr noundef nonnull %29)
  br label %50

50:                                               ; preds = %49, %46, %40, %35, %31
  %51 = icmp eq ptr %30, null
  br i1 %51, label %52, label %28

52:                                               ; preds = %50, %24
  %53 = getelementptr %struct.hlist_head, ptr %25, i32 1
  %54 = icmp ult ptr %53, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %54, label %24, label %55

55:                                               ; preds = %52
  br i1 %2, label %65, label %56

56:                                               ; preds = %55
  %57 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %58 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %59 = load volatile ptr, ptr %58, align 64
  %60 = getelementptr [0 x ptr], ptr %59, i32 0, i32 %57
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = add i32 %62, 12000
  %64 = getelementptr inbounds %struct.lockd_net, ptr %61, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %56, %55
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_release_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = load i1, ptr @nlmsvc_release_host.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %3
  store i1 true, ptr @nlmsvc_release_host.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !20
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 4) #10
  br label %18

18:                                               ; preds = %17, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlm_bind_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rpc_timeout, align 4
  %3 = alloca %struct.rpc_create_args, align 4
  %4 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 8
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 17
  br i1 %11, label %12, label %85

12:                                               ; preds = %8
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %85

18:                                               ; preds = %12
  tail call void @rpc_force_rebind(ptr noundef nonnull %6) #10
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 6000
  store i32 %20, ptr %14, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load i32, ptr @nlmsvc_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  %23 = getelementptr inbounds i8, ptr %2, i32 16
  store i32 0, ptr %23, align 4, !annotation !18
  store i32 %22, ptr %2, align 4
  %24 = getelementptr inbounds %struct.rpc_timeout, ptr %2, i32 0, i32 1
  %25 = mul i32 %22, 6
  store i32 %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rpc_timeout, ptr %2, i32 0, i32 2
  store i32 %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_timeout, ptr %2, i32 0, i32 3
  store i32 5, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %28 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %3, align 4
  %30 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 8
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  store i32 %33, ptr %30, align 4
  %34 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 1
  store ptr %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 3
  %37 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 4
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 5
  store ptr %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 6
  %42 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 7
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 8
  store ptr @nlm_program, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 9
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 10
  %48 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 11
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 12
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 13
  store i32 2068, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 14
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 15
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 16
  %56 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 26
  %57 = load ptr, ptr %56, align 4
  store ptr %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 17
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %60 = load i8, ptr %59, align 2
  %61 = and i8 %60, 2
  %62 = icmp eq i8 %61, 0
  %63 = and i8 %60, 4
  %64 = icmp eq i8 %63, 0
  %65 = xor i1 %64, true
  %66 = or i1 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %21
  %68 = select i1 %62, i32 2077, i32 2076
  %69 = select i1 %64, i32 2069, i32 %68
  store i32 %69, ptr %52, align 4
  br label %70

70:                                               ; preds = %67, %21
  %71 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 3
  store ptr %75, ptr %39, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = call ptr @rpc_create(ptr noundef nonnull %3) #10
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store ptr %77, ptr %5, align 4
  br label %83

80:                                               ; preds = %76
  %81 = load ptr, ptr %42, align 4
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %81) #12
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi ptr [ null, %80 ], [ %77, %79 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %85

85:                                               ; preds = %83, %18, %12, %8
  %86 = phi ptr [ %84, %83 ], [ %6, %8 ], [ %6, %12 ], [ %6, %18 ]
  call void @mutex_unlock(ptr noundef %4) #10
  ret ptr %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlm_rebind_host(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 17
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  tail call void @rpc_force_rebind(ptr noundef nonnull %7) #10
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = add i32 %16, 6000
  store i32 %17, ptr %11, align 4
  br label %18

18:                                               ; preds = %15, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_force_rebind(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlm_host_rebooted(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @nsm_reboot_lookup(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5, !prof !12

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_server_hosts, ptr noundef nonnull %3, ptr noundef %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %27, %5
  %9 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_client_hosts, ptr noundef nonnull %3, ptr noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %30

11:                                               ; preds = %27, %5
  %12 = phi ptr [ %28, %27 ], [ %6, %5 ]
  tail call void @nlmsvc_free_host_resources(ptr noundef nonnull %12) #10
  %13 = getelementptr inbounds %struct.nlm_host, ptr %12, i32 0, i32 9
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  %17 = load i1, ptr @nlmsvc_release_host.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %11
  store i1 true, ptr @nlmsvc_release_host.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %21

21:                                               ; preds = %20, %11
  %22 = getelementptr inbounds %struct.nlm_host, ptr %12, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #10, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #10, !srcloc !20
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27, !prof !12

26:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 4) #10
  br label %27

27:                                               ; preds = %26, %21
  %28 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_server_hosts, ptr noundef nonnull %3, ptr noundef %1)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %8, label %11

30:                                               ; preds = %30, %8
  %31 = phi ptr [ %32, %30 ], [ %9, %8 ]
  tail call void @nlmclnt_recovery(ptr noundef nonnull %31) #10
  tail call void @nlmclnt_release_host(ptr noundef nonnull %31)
  %32 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_client_hosts, ptr noundef nonnull %3, ptr noundef %1)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %8
  tail call void @nsm_release(ptr noundef nonnull %3) #10
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nsm_reboot_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @next_host_state(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nlm_host_mutex) #10
  %4 = getelementptr %struct.hlist_head, ptr %0, i32 32
  %5 = icmp ugt ptr %4, %0
  br i1 %5, label %6, label %47

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nlm_reboot, ptr %2, i32 0, i32 2
  br label %8

8:                                                ; preds = %44, %6
  %9 = phi ptr [ %0, %6 ], [ %45, %44 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %41, %8
  %13 = phi ptr [ %42, %41 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 23
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 13
  store i32 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #10, !srcloc !10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #10, !srcloc !11
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !12

31:                                               ; preds = %22
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !13

35:                                               ; preds = %31, %22
  %36 = phi i32 [ 2, %22 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #10
  br label %37

37:                                               ; preds = %35, %31
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = add i32 %38, 30000
  %40 = getelementptr inbounds %struct.nlm_host, ptr %13, i32 0, i32 18
  store i32 %39, ptr %40, align 4
  br label %47

41:                                               ; preds = %17, %12
  %42 = load ptr, ptr %13, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %12

44:                                               ; preds = %41, %8
  %45 = getelementptr %struct.hlist_head, ptr %9, i32 1
  %46 = icmp ult ptr %45, %4
  br i1 %46, label %8, label %47

47:                                               ; preds = %44, %37, %3
  %48 = phi ptr [ %13, %37 ], [ null, %3 ], [ null, %44 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_free_host_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_recovery(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsm_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlm_shutdown_hosts_net(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nlm_host_mutex) #10
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %24, %1
  %4 = phi ptr [ @nlm_server_hosts, %1 ], [ %25, %24 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %21, %3
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  br i1 %2, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9, %7
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %14, -1
  %16 = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 18
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @rpc_shutdown_client(ptr noundef nonnull %18) #10
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %13, %9
  %22 = load ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7

24:                                               ; preds = %21, %3
  %25 = getelementptr %struct.hlist_head, ptr %4, i32 1
  %26 = icmp ult ptr %25, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %26, label %3, label %27

27:                                               ; preds = %24
  tail call fastcc void @nlm_gc_hosts(ptr noundef %0)
  br i1 %2, label %41, label %28

28:                                               ; preds = %27
  %29 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %30 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %31 = load volatile ptr, ptr %30, align 64
  %32 = getelementptr [0 x ptr], ptr %31, i32 0, i32 %29
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %34 = getelementptr inbounds %struct.lockd_net, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %39) #12
  br label %46

41:                                               ; preds = %27
  %42 = load i32, ptr @nrhosts, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %46

46:                                               ; preds = %44, %37
  br label %47

47:                                               ; preds = %47, %46
  %48 = phi ptr [ %49, %47 ], [ @nlm_server_hosts, %46 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %41, %28
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlm_shutdown_hosts() local_unnamed_addr #0 {
  tail call void @nlm_shutdown_hosts_net(ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nsm_get_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsm_unmonitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_mark_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2149339054}
!9 = !{i64 2149339271}
!10 = !{i64 771678, i64 2148261649, i64 2148261675, i64 2148261722, i64 2148261744, i64 2148261772, i64 2148261792}
!11 = !{i64 2148274522, i64 2148274554, i64 2148274583, i64 2148274617, i64 2148274648, i64 2148274671}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148273064, i64 2148273090, i64 2148273119, i64 2148273153, i64 2148273184, i64 2148273207}
!15 = !{i64 2148373743}
!16 = !{i64 2148276105, i64 2148276137, i64 2148276166, i64 2148276200, i64 2148276231, i64 2148276254}
!17 = !{i64 2148373946}
!18 = !{!"auto-init"}
!19 = !{i64 2148374744}
!20 = !{i64 2148276879, i64 2148276911, i64 2148276940, i64 2148276974, i64 2148277005, i64 2148277028}
