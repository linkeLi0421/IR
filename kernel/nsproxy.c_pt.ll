; ModuleID = '/llk/IR/kernel/nsproxy.c_pt.bc'
source_filename = "../kernel/nsproxy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.90, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.114, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.114 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.67 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.57 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.57 = type { %struct.callback_head }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.10, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.115, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.116, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.117, ptr, %struct.address_space, %struct.list_head, %union.anon.118, i32, i32, ptr, ptr }
%union.anon.115 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.116 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.117 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.118 = type { ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@init_net = external dso_local global %struct.net, align 64
@init_cgroup_ns = external dso_local global %struct.cgroup_namespace, align 4
@init_nsproxy = dso_local local_unnamed_addr global %struct.nsproxy { %struct.atomic_t { i32 1 }, ptr @init_uts_ns, ptr @init_ipc_ns, ptr null, ptr @init_pid_ns, ptr @init_net, ptr null, ptr null, ptr @init_cgroup_ns }, align 4
@nsproxy_cachep = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [8 x i8] c"nsproxy\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4

@sys_setns = dso_local alias i32 (i32, i32), ptr @__se_sys_setns

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_namespaces(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 92
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %9 = and i32 %0, 1845624960
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !10

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %21, !prof !10

17:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !12
  br label %32

19:                                               ; preds = %2
  %20 = tail call zeroext i1 @ns_capable(ptr noundef %8, i32 noundef 21) #7
  br i1 %20, label %21, label %32

21:                                               ; preds = %19, %11
  %22 = and i32 %0, 134479872
  %23 = icmp eq i32 %22, 134479872
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 89
  %26 = load ptr, ptr %25, align 64
  %27 = tail call fastcc ptr @create_new_namespaces(i32 noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef %26)
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  br label %32

31:                                               ; preds = %24
  store ptr %27, ptr %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %21, %19, %17
  %33 = phi i32 [ 0, %17 ], [ %30, %29 ], [ 0, %31 ], [ -1, %19 ], [ -22, %21 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_new_namespaces(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @nsproxy_cachep, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3264) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %76, label %8

8:                                                ; preds = %4
  store volatile i32 1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 92
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @copy_mnt_ns(i32 noundef %0, ptr noundef %12, ptr noundef %2, ptr noundef %3) #7
  %14 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %73, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %0, 67108864
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr %19, ptr inttoptr (i32 -22 to ptr)
  %23 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %68, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %0, 134217728
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %27, ptr inttoptr (i32 -22 to ptr)
  %31 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %68, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = and i32 %0, 536870912
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr %35, ptr inttoptr (i32 -22 to ptr)
  %39 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 4
  store ptr %38, ptr %39, align 8
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %68, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr @copy_cgroup_ns(i32 noundef %0, ptr noundef %2, ptr noundef %43) #7
  %45 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 8
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %68, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.nsproxy, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = and i32 %0, 1073741824
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr %50, ptr inttoptr (i32 -22 to ptr)
  %54 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 5
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %66, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.nsproxy, ptr %48, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = and i32 %0, 128
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr %58, ptr inttoptr (i32 -22 to ptr)
  %62 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 7
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 6
  store ptr null, ptr %65, align 8
  br label %76

66:                                               ; preds = %56, %47
  %67 = phi ptr [ %53, %47 ], [ %61, %56 ]
  tail call fastcc void @put_cgroup_ns(ptr noundef %44)
  br label %68

68:                                               ; preds = %66, %41, %33, %25, %16
  %69 = phi ptr [ %67, %66 ], [ %22, %16 ], [ %30, %25 ], [ %38, %33 ], [ %44, %41 ]
  %70 = load ptr, ptr %14, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @put_mnt_ns(ptr noundef nonnull %70) #7
  br label %73

73:                                               ; preds = %72, %68, %8
  %74 = phi ptr [ %69, %72 ], [ %69, %68 ], [ %13, %8 ]
  %75 = load ptr, ptr @nsproxy_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %75, ptr noundef nonnull %6) #7
  br label %76

76:                                               ; preds = %73, %64, %4
  %77 = phi ptr [ %74, %73 ], [ %6, %64 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_nsproxy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @put_mnt_ns(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ns_common, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #7, !srcloc !11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #7, !srcloc !14
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !10

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #7
  br label %19

18:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void @free_cgroup_ns(ptr noundef nonnull %8) #7
  br label %19

19:                                               ; preds = %18, %17, %15, %6
  %20 = load ptr, ptr @nsproxy_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mnt_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_cgroup_ns(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !14
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #7
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void @free_cgroup_ns(ptr noundef nonnull %0) #7
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unshare_nsproxy_namespaces(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %0, 1845624960
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ @init_user_ns, %7 ]
  %14 = tail call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 21) #7
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #7
  %17 = icmp eq ptr %3, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 89
  %20 = load ptr, ptr %19, align 64
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %20, %18 ], [ %3, %15 ]
  %23 = tail call fastcc ptr @create_new_namespaces(i32 noundef %0, ptr noundef %16, ptr noundef %13, ptr noundef %22)
  store ptr %23, ptr %1, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %23 to i32
  %26 = select i1 %24, i32 %25, i32 0
  br label %27

27:                                               ; preds = %21, %12, %4
  %28 = phi i32 [ 0, %4 ], [ -1, %12 ], [ %26, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @switch_task_namespaces(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 92
  %5 = load ptr, ptr %4, align 4
  store ptr %1, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %6 = load i16, ptr %3, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %8 = icmp eq ptr %5, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #7, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #7, !srcloc !21
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @put_mnt_ns(ptr noundef nonnull %15) #7
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ns_common, ptr %20, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #7, !srcloc !11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #7, !srcloc !14
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %31, label %29, !prof !10

29:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef 3) #7
  br label %31

30:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void @free_cgroup_ns(ptr noundef nonnull %20) #7
  br label %31

31:                                               ; preds = %30, %29, %27, %18
  %32 = load ptr, ptr @nsproxy_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %5) #7
  br label %33

33:                                               ; preds = %31, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_task_namespaces(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @switch_task_namespaces(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setns(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nsset, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #7
  %4 = tail call ptr @fget(i32 noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %166, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @proc_ns_file(ptr noundef nonnull %4) #7
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.ns_common, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.proc_ns_operations, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  br i1 %13, label %28, label %18

18:                                               ; preds = %8
  %19 = icmp eq i32 %17, %1
  br i1 %19, label %28, label %164

20:                                               ; preds = %6
  %21 = tail call ptr @pidfd_pid(ptr noundef nonnull %4) #7
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %164, label %23

23:                                               ; preds = %20
  %24 = icmp ne i32 %1, 0
  %25 = and i32 %1, -33685505
  %26 = icmp eq i32 %25, 0
  %27 = and i1 %24, %26
  br i1 %27, label %28, label %164

28:                                               ; preds = %23, %18, %8
  %29 = phi ptr [ null, %23 ], [ %12, %18 ], [ %12, %8 ]
  %30 = phi i32 [ %1, %23 ], [ %1, %18 ], [ %17, %8 ]
  %31 = tail call ptr @llvm.thread.pointer() #7
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 89
  %33 = load ptr, ptr %32, align 64
  %34 = tail call fastcc ptr @create_new_namespaces(i32 noundef 0, ptr noundef %31, ptr noundef nonnull @init_user_ns, ptr noundef %33) #7
  %35 = getelementptr inbounds %struct.nsset, ptr %3, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %65, label %37

37:                                               ; preds = %28
  %38 = and i32 %30, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @prepare_creds() #7
  br label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 83
  %44 = load ptr, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %44, %42 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.nsset, ptr %3, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = icmp eq i32 %30, 131072
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load ptr, ptr %32, align 64
  %53 = getelementptr inbounds %struct.nsset, ptr %3, i32 0, i32 2
  store ptr %52, ptr %53, align 4
  br label %62

54:                                               ; preds = %49
  %55 = and i32 %30, 131072
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %32, align 64
  %59 = tail call ptr @copy_fs_struct(ptr noundef %58) #7
  %60 = getelementptr inbounds %struct.nsset, ptr %3, i32 0, i32 2
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57, %54, %51
  store i32 %30, ptr %3, align 4
  %63 = tail call zeroext i1 @proc_ns_file(ptr noundef nonnull %4) #7
  br i1 %63, label %67, label %73

64:                                               ; preds = %57, %45
  call fastcc void @put_nsset(ptr noundef nonnull %3) #7
  br label %164

65:                                               ; preds = %28
  %66 = ptrtoint ptr %34 to i32
  br label %164

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ns_common, ptr %29, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.proc_ns_operations, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 %71(ptr noundef nonnull %3, ptr noundef %29) #7
  br label %142

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %75 = load ptr, ptr %74, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %76 = tail call ptr @pid_task(ptr noundef %75, i32 noundef 0) #7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %162

79:                                               ; preds = %73
  %80 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %76, i32 noundef 17) #7
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %162

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %83) #7
  %84 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 92
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %85) #7, !srcloc !11
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %85, ptr nonnull %85, i32 1, ptr nonnull elementtype(i32) %85) #7, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %89 = load i16, ptr %83, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %83, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %91 = and i32 %30, 131072
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %106, label %96

93:                                               ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %94 = load i16, ptr %83, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %83, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %162

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.nsproxy, ptr %85, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = tail call ptr @from_mnt_ns(ptr noundef %98) #7
  %100 = getelementptr inbounds %struct.ns_common, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.proc_ns_operations, ptr %101, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef nonnull %3, ptr noundef %99) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %96, %87
  %107 = and i32 %30, 33554432
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.nsproxy, ptr %85, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ns_common, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.proc_ns_operations, ptr %113, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 %115(ptr noundef nonnull %3, ptr noundef %111) #7
  br label %117

117:                                              ; preds = %109, %106, %96
  %118 = phi i32 [ %104, %96 ], [ %116, %109 ], [ 0, %106 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %85) #7, !srcloc !11
  %119 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %85, ptr nonnull %85, i32 1, ptr nonnull elementtype(i32) %85) #7, !srcloc !21
  %120 = extractvalue { i32, i32 } %119, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.nsproxy, ptr %85, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call void @put_mnt_ns(ptr noundef nonnull %124) #7
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr inbounds %struct.nsproxy, ptr %85, i32 0, i32 8
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %140, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ns_common, ptr %129, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %132) #7, !srcloc !11
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %132, ptr %132, i32 1, ptr elementtype(i32) %132) #7, !srcloc !14
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = icmp sgt i32 %134, 0
  br i1 %137, label %140, label %138, !prof !10

138:                                              ; preds = %136
  call void @refcount_warn_saturate(ptr noundef %132, i32 noundef 3) #7
  br label %140

139:                                              ; preds = %131
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  call void @free_cgroup_ns(ptr noundef nonnull %129) #7
  br label %140

140:                                              ; preds = %139, %138, %136, %127
  %141 = load ptr, ptr @nsproxy_cachep, align 4
  call void @kmem_cache_free(ptr noundef %141, ptr noundef nonnull %85) #7
  br label %142

142:                                              ; preds = %140, %117, %67
  %143 = phi i32 [ %72, %67 ], [ %118, %117 ], [ %118, %140 ]
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %142
  %146 = load i32, ptr %3, align 4
  %147 = and i32 %146, 131072
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %146, -131073
  %150 = icmp eq i32 %149, 0
  %151 = or i1 %148, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %32, align 64
  %154 = getelementptr inbounds %struct.nsset, ptr %3, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.fs_struct, ptr %155, i32 0, i32 5
  call void @set_fs_root(ptr noundef %153, ptr noundef %156) #7
  %157 = load ptr, ptr %32, align 64
  %158 = load ptr, ptr %154, align 4
  %159 = getelementptr inbounds %struct.fs_struct, ptr %158, i32 0, i32 6
  call void @set_fs_pwd(ptr noundef %157, ptr noundef %159) #7
  br label %160

160:                                              ; preds = %152, %145
  %161 = load ptr, ptr %35, align 4
  call void @switch_task_namespaces(ptr noundef %31, ptr noundef %161) #7
  store ptr null, ptr %35, align 4
  call void @perf_event_namespaces(ptr noundef %31) #7
  br label %162

162:                                              ; preds = %160, %142, %93, %81, %78
  %163 = phi i32 [ 0, %160 ], [ %143, %142 ], [ -3, %78 ], [ -1, %81 ], [ -3, %93 ]
  call fastcc void @put_nsset(ptr noundef nonnull %3) #7
  br label %164

164:                                              ; preds = %162, %65, %64, %23, %20, %18
  %165 = phi i32 [ %66, %65 ], [ %163, %162 ], [ -12, %64 ], [ -22, %23 ], [ -22, %20 ], [ -22, %18 ]
  call void @fput(ptr noundef nonnull %4) #7
  br label %166

166:                                              ; preds = %164, %2
  %167 = phi i32 [ %165, %164 ], [ -9, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %167
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nsproxy_cache_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 4, i32 noundef 262144, ptr noundef null) #7
  store ptr %1, ptr @nsproxy_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_mnt_ns(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_cgroup_ns(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cgroup_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_ns_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_namespaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_nsset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 268435456
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #7, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #7, !srcloc !21
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__put_cred(ptr noundef nonnull %7) #7
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  %15 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = and i32 %2, 131072
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  %21 = and i32 %2, -131073
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  tail call void @free_fs_struct(ptr noundef nonnull %16) #7
  br label %25

25:                                               ; preds = %24, %14
  %26 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nsproxy, ptr %27, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @put_mnt_ns(ptr noundef nonnull %31) #7
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.nsproxy, ptr %27, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ns_common, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #7, !srcloc !11
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #7, !srcloc !14
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %47, label %45, !prof !10

45:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 3) #7
  br label %47

46:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void @free_cgroup_ns(ptr noundef nonnull %36) #7
  br label %47

47:                                               ; preds = %46, %45, %43, %34
  %48 = load ptr, ptr @nsproxy_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %48, ptr noundef nonnull %27) #7
  br label %49

49:                                               ; preds = %47, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @from_mnt_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!8 = !{i64 2149334188}
!9 = !{i64 2149334405}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 766812, i64 2148256783, i64 2148256809, i64 2148256856, i64 2148256878, i64 2148256906, i64 2148256926}
!12 = !{i64 2148268198, i64 2148268224, i64 2148268253, i64 2148268287, i64 2148268318, i64 2148268341}
!13 = !{i64 2148369878}
!14 = !{i64 2148272013, i64 2148272045, i64 2148272074, i64 2148272108, i64 2148272139, i64 2148272162}
!15 = !{i64 2149284768}
!16 = !{i64 2148935416}
!17 = !{i64 2148931240}
!18 = !{i64 2148931315, i64 2148931342, i64 2148931389, i64 2148931411, i64 2148931439, i64 2148931459}
!19 = !{i64 2148958419}
!20 = !{i64 2148368877}
!21 = !{i64 2148271239, i64 2148271271, i64 2148271300, i64 2148271334, i64 2148271365, i64 2148271388}
!22 = !{i64 2148369080}
