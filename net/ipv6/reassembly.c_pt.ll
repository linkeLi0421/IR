; ModuleID = '/llk/IR/net/ipv6/reassembly.c_pt.bc'
source_filename = "../net/ipv6/reassembly.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.67, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.67 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.frag_queue = type { %struct.inet_frag_queue, i32, i16, i8 }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [39 x i8], %struct.rhashtable, [40 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [40 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.5, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.5 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.121 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.9, i32, %struct.spinlock }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, ptr }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.122, %union.anon.123, [48 x i8], %union.anon.124, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.126, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon }
%union.anon.122 = type { ptr }
%union.anon.123 = type { i64 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.128, i32, i32, i32, i16, i16, %union.anon.130, %union.anon.131, %union.anon.132, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.128 = type { i32 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i16 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.frag_hdr = type { i8, i8, i16, i32 }

@ip6_frags = internal global %struct.inet_frags zeroinitializer, align 4
@ip6_frag_cache_name = internal constant [10 x i8] c"ip6-frags\00", align 1
@ip6_rhash_params = internal unnamed_addr constant %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 0, i32 0, i16 0, i8 1, ptr @ip6frag_key_hashfn, ptr @ip6frag_obj_hashfn, ptr @ip6frag_obj_cmpfn }, align 4
@frag_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @ipv6_frag_rcv, ptr null, i32 1 }, align 4
@ip6_frags_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv6_frags_init_net, ptr @ipv6_frags_pre_exit_net, ptr @ipv6_frags_exit_net, ptr null, ptr null, i32 0 }, align 4
@init_net = external dso_local global %struct.net, align 64
@ip_frag_ecn_table = external dso_local local_unnamed_addr constant [16 x i8], align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"net/ipv6\00", align 1
@ip6_frags_ctl_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @ip6_frags_secret_interval_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@ip6_ctl_header = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"ip6frag_secret_interval\00", align 1
@ip6_frags_secret_interval_unused = internal global i32 0, align 4
@ip6_frags_ns_ctl_table = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.3, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ip6frag_high_thresh\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ip6frag_low_thresh\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ip6frag_time\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ipv6_frag_init() local_unnamed_addr #0 section ".init.text" {
  store ptr @ip6frag_init, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 2), align 4
  store i32 128, ptr @ip6_frags, align 4
  store ptr @ip6_frag_expire, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 3), align 4
  store ptr @ip6_frag_cache_name, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 5), align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) getelementptr inbounds (%struct.inet_frags, ptr @ip6_frags, i32 0, i32 6), ptr noundef nonnull align 4 dereferenceable(28) @ip6_rhash_params, i32 28, i1 false)
  %1 = tail call i32 @inet_frags_init(ptr noundef nonnull @ip6_frags) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @frag_protocol, i8 noundef zeroext 44) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1, ptr noundef nonnull @ip6_frags_ctl_table) #15
  store ptr %7, ptr @ip6_ctl_header, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_frags_ops) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %19, %9, %0
  %13 = phi i32 [ %1, %0 ], [ %20, %19 ], [ 0, %9 ]
  ret i32 %13

14:                                               ; preds = %9
  %15 = load ptr, ptr @ip6_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %15) #15
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ -12, %6 ], [ %10, %14 ]
  %18 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @frag_protocol, i8 noundef zeroext 44) #15
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ %4, %3 ], [ %17, %16 ]
  tail call void @inet_frags_fini(ptr noundef nonnull @ip6_frags) #15
  br label %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ip6frag_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %1, i32 44, i1 false)
  %4 = getelementptr inbounds %struct.frag_queue, ptr %0, i32 0, i32 3
  store i8 0, ptr %4, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_frag_expire(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 60
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fqdir, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.fqdir, ptr %7, i32 0, i32 6
  %9 = load volatile i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %120

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %12) #15
  %13 = getelementptr i8, ptr %0, i32 56
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %117

17:                                               ; preds = %11
  tail call void @inet_frag_kill(ptr noundef %2) #15
  %18 = getelementptr i8, ptr %0, i32 72
  %19 = load i32, ptr %18, align 8
  %20 = tail call ptr @dev_get_by_index_rcu(ptr noundef %6, i32 noundef %19) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %117, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 69
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = tail call ptr @llvm.thread.pointer() #15
  br i1 %25, label %47, label %27, !prof !11

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = add i32 %29, 512
  store volatile i32 %30, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 33, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #8, !srcloc !13
  %37 = add i32 %36, %33
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.ipstats_mib, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %42 = getelementptr [37 x i64], ptr %38, i32 0, i32 19
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, ptr %42, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %45 = load i32, ptr %39, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %39, align 4
  tail call fastcc void @local_bh_enable() #15
  br label %47

47:                                               ; preds = %27, %22
  %48 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = add i32 %49, 512
  store volatile i32 %50, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %51 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #8, !srcloc !13
  %57 = add i32 %56, %53
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.ipstats_mib, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %62 = getelementptr [37 x i64], ptr %58, i32 0, i32 19
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %65 = load i32, ptr %59, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %59, align 4
  tail call fastcc void @local_bh_enable() #15
  %67 = load volatile ptr, ptr %23, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %88, label %69, !prof !11

69:                                               ; preds = %47
  %70 = load volatile i32, ptr %48, align 4
  %71 = add i32 %70, 512
  store volatile i32 %71, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %72 = getelementptr inbounds %struct.inet6_dev, ptr %67, i32 0, i32 33, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %76 = inttoptr i32 %75 to ptr
  %77 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #8, !srcloc !13
  %78 = add i32 %77, %74
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.ipstats_mib, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %83 = getelementptr [37 x i64], ptr %79, i32 0, i32 16
  %84 = load i64, ptr %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, ptr %83, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %86 = load i32, ptr %80, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %80, align 4
  tail call fastcc void @local_bh_enable() #15
  br label %88

88:                                               ; preds = %69, %47
  %89 = load volatile i32, ptr %48, align 4
  %90 = add i32 %89, 512
  store volatile i32 %90, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %91 = load ptr, ptr %51, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %94 = inttoptr i32 %93 to ptr
  %95 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %94) #8, !srcloc !13
  %96 = add i32 %95, %92
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr inbounds %struct.ipstats_mib, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %101 = getelementptr [37 x i64], ptr %97, i32 0, i32 16
  %102 = load i64, ptr %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, ptr %101, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %104 = load i32, ptr %98, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %98, align 4
  tail call fastcc void @local_bh_enable() #15
  %106 = load i8, ptr %13, align 8
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %88
  %110 = tail call ptr @inet_frag_pull_head(ptr noundef %2) #15
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.anon, ptr %110, i32 0, i32 2
  store ptr %20, ptr %113, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %114 = load i16, ptr %12, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %116 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef nonnull %110, i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, ptr noundef %116) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %110, i32 noundef 0) #15
  br label %120

117:                                              ; preds = %109, %88, %17, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %118 = load i16, ptr %12, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  br label %120

120:                                              ; preds = %117, %112, %1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %121 = getelementptr i8, ptr %0, i32 24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #15, !srcloc !22
  %122 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #15, !srcloc !23
  %123 = extractvalue { i32, i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = icmp sgt i32 %123, 0
  br i1 %126, label %129, label %127, !prof !24

127:                                              ; preds = %125
  tail call void @refcount_warn_saturate(ptr noundef %121, i32 noundef 3) #15
  br label %129

128:                                              ; preds = %120
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  tail call void @inet_frag_destroy(ptr noundef %2) #15
  br label %129

129:                                              ; preds = %128, %127, %125
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frags_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frags_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_frag_exit() local_unnamed_addr #3 {
  %1 = load ptr, ptr @ip6_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_frags_ops) #15
  %2 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @frag_protocol, i8 noundef zeroext 44) #15
  tail call void @inet_frags_fini(ptr noundef nonnull @ip6_frags) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_kill(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_pull_head(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ip6frag_key_hashfn(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = tail call fastcc i32 @jhash2(ptr noundef %0, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ip6frag_obj_hashfn(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 1
  %5 = tail call fastcc i32 @jhash2(ptr noundef %4, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ip6frag_obj_cmpfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inet_frag_queue, ptr %1, i32 0, i32 1
  %6 = tail call i32 @bcmp(ptr noundef dereferenceable(44) %5, ptr noundef dereferenceable(44) %4, i32 44)
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @jhash2(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = add i32 %1, -559038693
  %4 = load i32, ptr %0, align 4
  %5 = add i32 %4, %3
  %6 = getelementptr i32, ptr %0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %3
  %9 = getelementptr i32, ptr %0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %3
  %12 = sub i32 %5, %11
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 4) #15
  %14 = xor i32 %12, %13
  %15 = add i32 %11, %8
  %16 = sub i32 %8, %14
  %17 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 6) #15
  %18 = xor i32 %16, %17
  %19 = add i32 %14, %15
  %20 = sub i32 %15, %18
  %21 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 8) #15
  %22 = xor i32 %20, %21
  %23 = add i32 %18, %19
  %24 = sub i32 %19, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 16) #15
  %26 = xor i32 %24, %25
  %27 = add i32 %22, %23
  %28 = sub i32 %23, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 19) #15
  %30 = xor i32 %28, %29
  %31 = add i32 %26, %27
  %32 = sub i32 %27, %30
  %33 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 4) #15
  %34 = xor i32 %32, %33
  %35 = add i32 %30, %31
  %36 = getelementptr i32, ptr %0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %31
  %39 = getelementptr i32, ptr %0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %35
  %42 = getelementptr i32, ptr %0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %34
  %45 = sub i32 %38, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 4) #15
  %47 = xor i32 %45, %46
  %48 = add i32 %44, %41
  %49 = sub i32 %41, %47
  %50 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 6) #15
  %51 = xor i32 %49, %50
  %52 = add i32 %47, %48
  %53 = sub i32 %48, %51
  %54 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 8) #15
  %55 = xor i32 %53, %54
  %56 = add i32 %51, %52
  %57 = sub i32 %52, %55
  %58 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 16) #15
  %59 = xor i32 %57, %58
  %60 = add i32 %55, %56
  %61 = sub i32 %56, %59
  %62 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 19) #15
  %63 = xor i32 %61, %62
  %64 = add i32 %59, %60
  %65 = sub i32 %60, %63
  %66 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 4) #15
  %67 = xor i32 %65, %66
  %68 = add i32 %63, %64
  %69 = getelementptr i32, ptr %0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %64
  %72 = getelementptr i32, ptr %0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %68
  %75 = getelementptr i32, ptr %0, i32 8
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %67
  %78 = sub i32 %71, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 4) #15
  %80 = xor i32 %78, %79
  %81 = add i32 %77, %74
  %82 = sub i32 %74, %80
  %83 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 6) #15
  %84 = xor i32 %82, %83
  %85 = add i32 %80, %81
  %86 = sub i32 %81, %84
  %87 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 8) #15
  %88 = xor i32 %86, %87
  %89 = add i32 %84, %85
  %90 = sub i32 %85, %88
  %91 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 16) #15
  %92 = xor i32 %90, %91
  %93 = add i32 %88, %89
  %94 = sub i32 %89, %92
  %95 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 19) #15
  %96 = xor i32 %94, %95
  %97 = add i32 %92, %93
  %98 = sub i32 %93, %96
  %99 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 4) #15
  %100 = xor i32 %98, %99
  %101 = add i32 %96, %97
  %102 = getelementptr i8, ptr %0, i32 36
  %103 = getelementptr i8, ptr %0, i32 40
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %101
  %106 = load i32, ptr %102, align 4
  %107 = add i32 %106, %97
  %108 = xor i32 %100, %105
  %109 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 14) #15
  %110 = sub i32 %108, %109
  %111 = xor i32 %107, %110
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 11) #15
  %113 = sub i32 %111, %112
  %114 = xor i32 %113, %105
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 25) #15
  %116 = sub i32 %114, %115
  %117 = xor i32 %116, %110
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 16) #15
  %119 = sub i32 %117, %118
  %120 = xor i32 %119, %113
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 4) #15
  %122 = sub i32 %120, %121
  %123 = xor i32 %122, %116
  %124 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 14) #15
  %125 = sub i32 %123, %124
  %126 = xor i32 %125, %119
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 24) #15
  %128 = sub i32 %126, %127
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_frag_rcv(ptr noundef %0) #3 {
  %2 = alloca %struct.frag_v6_compare_key, align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 16
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %643

16:                                               ; preds = %1
  %17 = load i32, ptr %11, align 8
  %18 = and i32 %17, -2
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.rt6_info, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = tail call ptr @llvm.thread.pointer() #15
  br i1 %22, label %44, label %24, !prof !11

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = add i32 %26, 512
  store volatile i32 %27, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %28 = getelementptr inbounds %struct.inet6_dev, ptr %21, i32 0, i32 33, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #8, !srcloc !13
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.ipstats_mib, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %39 = getelementptr [37 x i64], ptr %35, i32 0, i32 17
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, ptr %39, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %42 = load i32, ptr %36, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %36, align 4
  tail call fastcc void @local_bh_enable()
  br label %44

44:                                               ; preds = %24, %16
  %45 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = add i32 %46, 512
  store volatile i32 %47, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %48 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #8, !srcloc !13
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.ipstats_mib, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %58 = getelementptr [37 x i64], ptr %54, i32 0, i32 17
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, ptr %58, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %61 = load i32, ptr %55, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %55, align 4
  tail call fastcc void @local_bh_enable()
  %63 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 2
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %643, label %66

66:                                               ; preds = %44
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %67, i32 %70
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %71 to i32
  %75 = ptrtoint ptr %73 to i32
  %76 = sub i32 %74, %75
  %77 = add i32 %76, 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %79, %81
  %83 = icmp ugt i32 %77, %82
  br i1 %83, label %84, label %94, !prof !11

84:                                               ; preds = %66
  %85 = icmp ult i32 %79, %77
  br i1 %85, label %643, label %86, !prof !11

86:                                               ; preds = %84
  %87 = sub i32 %77, %82
  %88 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %87) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %643, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %5, align 8
  %92 = load i16, ptr %68, align 2
  %93 = zext i16 %92 to i32
  br label %94

94:                                               ; preds = %90, %66
  %95 = phi i32 [ %93, %90 ], [ %70, %66 ]
  %96 = phi i16 [ %92, %90 ], [ %69, %66 ]
  %97 = phi ptr [ %91, %90 ], [ %67, %66 ]
  %98 = load i16, ptr %7, align 4
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = getelementptr i8, ptr %97, i32 %95
  %102 = getelementptr inbounds %struct.frag_hdr, ptr %101, i32 0, i32 2
  %103 = load i16, ptr %102, align 2
  %104 = and i16 %103, -1537
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %167

106:                                              ; preds = %94
  %107 = add i16 %96, 8
  store i16 %107, ptr %68, align 2
  %108 = load i32, ptr %11, align 8
  %109 = and i32 %108, -2
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.rt6_info, ptr %110, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %133, label %114, !prof !11

114:                                              ; preds = %106
  %115 = load volatile i32, ptr %45, align 4
  %116 = add i32 %115, 512
  store volatile i32 %116, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %117 = getelementptr inbounds %struct.inet6_dev, ptr %112, i32 0, i32 33, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %121 = inttoptr i32 %120 to ptr
  %122 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %121) #8, !srcloc !13
  %123 = add i32 %122, %119
  %124 = inttoptr i32 %123 to ptr
  %125 = getelementptr inbounds %struct.ipstats_mib, ptr %124, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %128 = getelementptr [37 x i64], ptr %124, i32 0, i32 18
  %129 = load i64, ptr %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, ptr %128, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %131 = load i32, ptr %125, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %125, align 4
  tail call fastcc void @local_bh_enable()
  br label %133

133:                                              ; preds = %114, %106
  %134 = load volatile i32, ptr %45, align 4
  %135 = add i32 %134, 512
  store volatile i32 %135, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %136 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %139 = inttoptr i32 %138 to ptr
  %140 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %139) #8, !srcloc !13
  %141 = add i32 %140, %137
  %142 = inttoptr i32 %141 to ptr
  %143 = getelementptr inbounds %struct.ipstats_mib, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %146 = getelementptr [37 x i64], ptr %142, i32 0, i32 18
  %147 = load i64, ptr %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, ptr %146, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %149 = load i32, ptr %143, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %143, align 4
  tail call fastcc void @local_bh_enable()
  %151 = load ptr, ptr %5, align 8
  %152 = load i16, ptr %7, align 4
  %153 = zext i16 %152 to i32
  %154 = getelementptr i8, ptr %151, i32 %153
  %155 = ptrtoint ptr %101 to i32
  %156 = ptrtoint ptr %154 to i32
  %157 = sub i32 %155, %156
  %158 = trunc i32 %157 to i16
  %159 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i16 %158, ptr %159, align 2
  %160 = load i16, ptr %12, align 8
  %161 = or i16 %160, 16
  store i16 %161, ptr %12, align 8
  %162 = getelementptr inbounds %struct.ipv6hdr, ptr %100, i32 0, i32 2
  %163 = load i16, ptr %162, align 4
  %164 = tail call i16 @llvm.bswap.i16(i16 %163)
  %165 = add i16 %164, 40
  %166 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  store i16 %165, ptr %166, align 4
  br label %698

167:                                              ; preds = %94
  %168 = getelementptr inbounds %struct.ipv6hdr, ptr %100, i32 0, i32 3
  %169 = load i8, ptr %168, align 2
  %170 = load ptr, ptr %72, align 4
  %171 = ptrtoint ptr %101 to i32
  %172 = ptrtoint ptr %170 to i32
  %173 = sub i32 %171, %172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 %169, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !26
  %174 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef %173, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %167
  %177 = load i16, ptr %4, align 2
  %178 = and i16 %177, -1793
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8, ptr %3, align 1
  switch i8 %181, label %184 [
    i8 6, label %186
    i8 17, label %182
    i8 58, label %183
  ]

182:                                              ; preds = %180
  br label %186

183:                                              ; preds = %180
  br label %186

184:                                              ; preds = %180
  br label %186

185:                                              ; preds = %176, %167
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br label %236

186:                                              ; preds = %184, %183, %182, %180
  %187 = phi i32 [ 1, %184 ], [ 8, %183 ], [ 8, %182 ], [ 20, %180 ]
  %188 = add nuw i32 %187, %174
  %189 = load i32, ptr %78, align 8
  %190 = icmp ugt i32 %188, %189
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %190, label %191, label %236

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %218, label %195, !prof !11

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.net_device, ptr %193, i32 0, i32 69
  %197 = load volatile ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %218, label %199, !prof !11

199:                                              ; preds = %195
  %200 = load volatile i32, ptr %45, align 4
  %201 = add i32 %200, 512
  store volatile i32 %201, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %202 = getelementptr inbounds %struct.inet6_dev, ptr %197, i32 0, i32 33, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = ptrtoint ptr %203 to i32
  %205 = call i32 @llvm.read_register.i32(metadata !0) #15
  %206 = inttoptr i32 %205 to ptr
  %207 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %206) #8, !srcloc !13
  %208 = add i32 %207, %204
  %209 = inttoptr i32 %208 to ptr
  %210 = getelementptr inbounds %struct.ipstats_mib, ptr %209, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %213 = getelementptr [37 x i64], ptr %209, i32 0, i32 7
  %214 = load i64, ptr %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, ptr %213, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %216 = load i32, ptr %210, align 4
  %217 = add i32 %216, 1
  store i32 %217, ptr %210, align 4
  call fastcc void @local_bh_enable()
  br label %218

218:                                              ; preds = %199, %195, %191
  %219 = load volatile i32, ptr %45, align 4
  %220 = add i32 %219, 512
  store volatile i32 %220, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %221 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %222 = ptrtoint ptr %221 to i32
  %223 = call i32 @llvm.read_register.i32(metadata !0) #15
  %224 = inttoptr i32 %223 to ptr
  %225 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %224) #8, !srcloc !13
  %226 = add i32 %225, %222
  %227 = inttoptr i32 %226 to ptr
  %228 = getelementptr inbounds %struct.ipstats_mib, ptr %227, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, 1
  store i32 %230, ptr %228, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %231 = getelementptr [37 x i64], ptr %227, i32 0, i32 7
  %232 = load i64, ptr %231, align 8
  %233 = add i64 %232, 1
  store i64 %233, ptr %231, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %234 = load i32, ptr %228, align 4
  %235 = add i32 %234, 1
  store i32 %235, ptr %228, align 4
  call fastcc void @local_bh_enable()
  call void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 0) #15
  br label %698

236:                                              ; preds = %186, %185
  %237 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.net_device, ptr %238, i32 0, i32 17
  %242 = load i32, ptr %241, align 4
  br label %243

243:                                              ; preds = %240, %236
  %244 = phi i32 [ %242, %240 ], [ 0, %236 ]
  %245 = getelementptr inbounds %struct.frag_hdr, ptr %101, i32 0, i32 3
  %246 = load i32, ptr %245, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  %247 = getelementptr inbounds %struct.ipv6hdr, ptr %100, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef align 4 dereferenceable(16) %247, i32 16, i1 false) #15
  %248 = getelementptr inbounds %struct.frag_v6_compare_key, ptr %2, i32 0, i32 1
  %249 = getelementptr inbounds %struct.ipv6hdr, ptr %100, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %248, ptr noundef align 4 dereferenceable(16) %249, i32 16, i1 false) #15
  %250 = getelementptr inbounds %struct.frag_v6_compare_key, ptr %2, i32 0, i32 2
  store i32 0, ptr %250, align 4
  %251 = getelementptr inbounds %struct.frag_v6_compare_key, ptr %2, i32 0, i32 3
  store i32 %246, ptr %251, align 4
  %252 = getelementptr inbounds %struct.frag_v6_compare_key, ptr %2, i32 0, i32 4
  store i32 %244, ptr %252, align 4
  %253 = call i32 @__ipv6_addr_type(ptr noundef %249) #15
  %254 = and i32 %253, 34
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %243
  store i32 0, ptr %252, align 4
  br label %257

257:                                              ; preds = %256, %243
  %258 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 5), align 4
  %259 = call ptr @inet_frag_find(ptr noundef %258, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  %260 = icmp eq ptr %259, null
  br i1 %260, label %599, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %262) #15
  %263 = getelementptr inbounds %struct.frag_queue, ptr %259, i32 0, i32 1
  store i32 %244, ptr %263, align 8
  %264 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %265 = load i16, ptr %264, align 2
  %266 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 11
  %267 = load i8, ptr %266, align 8
  %268 = and i8 %267, 4
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %538

270:                                              ; preds = %261
  %271 = load i16, ptr %102, align 2
  %272 = and i16 %271, -1793
  %273 = call i16 @llvm.bswap.i16(i16 %272) #15
  %274 = zext i16 %273 to i32
  %275 = load ptr, ptr %5, align 8
  %276 = load i16, ptr %7, align 4
  %277 = zext i16 %276 to i32
  %278 = getelementptr i8, ptr %275, i32 %277
  %279 = getelementptr inbounds %struct.ipv6hdr, ptr %278, i32 0, i32 2
  %280 = load i16, ptr %279, align 4
  %281 = call i16 @llvm.bswap.i16(i16 %280) #15
  %282 = zext i16 %281 to i32
  %283 = getelementptr %struct.frag_hdr, ptr %101, i32 1
  %284 = getelementptr %struct.ipv6hdr, ptr %278, i32 1
  %285 = ptrtoint ptr %283 to i32
  %286 = ptrtoint ptr %284 to i32
  %287 = sub i32 %286, %285
  %288 = add i32 %287, %282
  %289 = add i32 %288, %274
  %290 = icmp ugt i32 %289, 65535
  br i1 %290, label %291, label %295

291:                                              ; preds = %270
  %292 = ptrtoint ptr %102 to i32
  %293 = ptrtoint ptr %278 to i32
  %294 = sub i32 %292, %293
  br label %540

295:                                              ; preds = %270
  %296 = load i16, ptr %278, align 2
  %297 = lshr i16 %296, 12
  %298 = trunc i16 %297 to i8
  %299 = and i8 %298, 3
  %300 = shl nuw nsw i8 1, %299
  %301 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %302 = load i16, ptr %301, align 8
  %303 = and i16 %302, 96
  %304 = icmp eq i16 %303, 64
  br i1 %304, label %305, label %317

305:                                              ; preds = %295
  %306 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %307 = load i32, ptr %306, align 4
  %308 = ptrtoint ptr %278 to i32
  %309 = sub i32 %285, %308
  %310 = call i32 @csum_partial(ptr noundef %278, i32 noundef %309, i32 noundef 0) #15
  %311 = xor i32 %310, -1
  %312 = add i32 %307, %311
  %313 = icmp ult i32 %312, %311
  %314 = zext i1 %313 to i32
  %315 = add i32 %312, %314
  store i32 %315, ptr %306, align 4
  %316 = load i16, ptr %102, align 2
  br label %317

317:                                              ; preds = %305, %295
  %318 = phi i16 [ %316, %305 ], [ %271, %295 ]
  %319 = and i16 %318, 256
  %320 = icmp eq i16 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 9
  %323 = load i32, ptr %322, align 8
  %324 = icmp slt i32 %289, %323
  br i1 %324, label %493, label %325

325:                                              ; preds = %321
  %326 = load i8, ptr %266, align 8
  %327 = and i8 %326, 2
  %328 = icmp eq i8 %327, 0
  %329 = icmp eq i32 %289, %323
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %331, label %493

331:                                              ; preds = %325
  %332 = or i8 %326, 2
  store i8 %332, ptr %266, align 8
  br label %344

333:                                              ; preds = %317
  %334 = and i32 %289, 7
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %540

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 9
  %338 = load i32, ptr %337, align 8
  %339 = icmp sgt i32 %289, %338
  br i1 %339, label %340, label %346

340:                                              ; preds = %336
  %341 = load i8, ptr %266, align 8
  %342 = and i8 %341, 2
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %493

344:                                              ; preds = %340, %331
  %345 = phi ptr [ %322, %331 ], [ %337, %340 ]
  store i32 %289, ptr %345, align 8
  br label %346

346:                                              ; preds = %344, %336
  %347 = icmp eq i32 %288, 0
  br i1 %347, label %493, label %348

348:                                              ; preds = %346
  %349 = load ptr, ptr %72, align 4
  %350 = ptrtoint ptr %349 to i32
  %351 = sub i32 %285, %350
  %352 = load i32, ptr %78, align 8
  %353 = icmp ult i32 %352, %351
  br i1 %353, label %493, label %354, !prof !11

354:                                              ; preds = %348
  %355 = load i32, ptr %80, align 4
  %356 = sub i32 %352, %355
  %357 = icmp ugt i32 %351, %356
  br i1 %357, label %358, label %365

358:                                              ; preds = %354
  %359 = sub i32 %351, %356
  %360 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %359) #15
  %361 = icmp eq ptr %360, null
  br i1 %361, label %493, label %362

362:                                              ; preds = %358
  %363 = load i32, ptr %78, align 8
  %364 = load ptr, ptr %72, align 4
  br label %365

365:                                              ; preds = %362, %354
  %366 = phi ptr [ %364, %362 ], [ %349, %354 ]
  %367 = phi i32 [ %363, %362 ], [ %352, %354 ]
  %368 = sub i32 %367, %351
  store i32 %368, ptr %78, align 8
  %369 = getelementptr i8, ptr %366, i32 %351
  store ptr %369, ptr %72, align 4
  %370 = icmp eq ptr %369, null
  br i1 %370, label %493, label %371

371:                                              ; preds = %365
  %372 = icmp ugt i32 %368, %288
  br i1 %372, label %373, label %376, !prof !11

373:                                              ; preds = %371
  %374 = call i32 @pskb_trim_rcsum_slow(ptr noundef %0, i32 noundef %288) #15
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %493

376:                                              ; preds = %373, %371
  %377 = load ptr, ptr %237, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %378 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 6
  %379 = load ptr, ptr %378, align 8
  %380 = call i32 @inet_frag_queue_insert(ptr noundef nonnull %259, ptr noundef %0, i32 noundef %274, i32 noundef %289) #15
  switch i32 %380, label %449 [
    i32 0, label %381
    i32 1, label %448
  ]

381:                                              ; preds = %376
  %382 = icmp eq ptr %377, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %381
  %384 = getelementptr inbounds %struct.net_device, ptr %377, i32 0, i32 17
  %385 = load i32, ptr %384, align 4
  store i32 %385, ptr %263, align 8
  br label %386

386:                                              ; preds = %383, %381
  %387 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %388 = load i64, ptr %387, align 8
  %389 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 8
  store i64 %388, ptr %389, align 8
  %390 = load i32, ptr %78, align 8
  %391 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 10
  %392 = load i32, ptr %391, align 4
  %393 = add i32 %392, %390
  store i32 %393, ptr %391, align 4
  %394 = getelementptr inbounds %struct.frag_queue, ptr %259, i32 0, i32 3
  %395 = load i8, ptr %394, align 2
  %396 = or i8 %395, %300
  store i8 %396, ptr %394, align 2
  %397 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 13
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %400 = load i32, ptr %399, align 8
  %401 = getelementptr inbounds %struct.fqdir, ptr %398, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %401) #15, !srcloc !22
  %402 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %401, ptr %401, i32 %400, ptr elementtype(i32) %401) #15, !srcloc !28
  %403 = load ptr, ptr %5, align 8
  %404 = load i16, ptr %7, align 4
  %405 = zext i16 %404 to i32
  %406 = getelementptr i8, ptr %403, i32 %405
  %407 = load ptr, ptr %72, align 4
  %408 = ptrtoint ptr %406 to i32
  %409 = ptrtoint ptr %407 to i32
  %410 = sub i32 %409, %408
  %411 = load i32, ptr %78, align 8
  %412 = add i32 %410, %411
  %413 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 12
  %414 = load i16, ptr %413, align 2
  %415 = zext i16 %414 to i32
  %416 = icmp sgt i32 %412, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %386
  %418 = trunc i32 %412 to i16
  store i16 %418, ptr %413, align 2
  br label %419

419:                                              ; preds = %417, %386
  %420 = icmp eq i16 %272, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %419
  %422 = getelementptr inbounds %struct.frag_queue, ptr %259, i32 0, i32 2
  store i16 %265, ptr %422, align 4
  %423 = load i8, ptr %266, align 8
  %424 = or i8 %423, 1
  store i8 %424, ptr %266, align 8
  br label %427

425:                                              ; preds = %419
  %426 = load i8, ptr %266, align 8
  br label %427

427:                                              ; preds = %425, %421
  %428 = phi i8 [ %426, %425 ], [ %424, %421 ]
  %429 = icmp eq i8 %428, 3
  br i1 %429, label %430, label %438

430:                                              ; preds = %427
  %431 = load i32, ptr %391, align 4
  %432 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 9
  %433 = load i32, ptr %432, align 8
  %434 = icmp eq i32 %431, %433
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load i32, ptr %11, align 8
  store i32 0, ptr %11, align 8
  %437 = call fastcc i32 @ip6_frag_reasm(ptr noundef nonnull %259, ptr noundef %0, ptr noundef %379, ptr noundef %377) #15
  store i32 %436, ptr %11, align 8
  br label %540

438:                                              ; preds = %430, %427
  %439 = load i32, ptr %11, align 8
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %540, label %441

441:                                              ; preds = %438
  %442 = and i32 %439, 1
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = and i32 %439, -2
  %446 = inttoptr i32 %445 to ptr
  call void @dst_release(ptr noundef %446) #15
  br label %447

447:                                              ; preds = %444, %441
  store i32 0, ptr %11, align 8
  br label %540

448:                                              ; preds = %376
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #15
  br label %540

449:                                              ; preds = %376
  %450 = load i32, ptr %11, align 8
  %451 = and i32 %450, -2
  %452 = inttoptr i32 %451 to ptr
  %453 = getelementptr inbounds %struct.rt6_info, ptr %452, i32 0, i32 6
  %454 = load ptr, ptr %453, align 4
  %455 = icmp eq ptr %454, null
  br i1 %455, label %475, label %456, !prof !11

456:                                              ; preds = %449
  %457 = load volatile i32, ptr %45, align 4
  %458 = add i32 %457, 512
  store volatile i32 %458, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %459 = getelementptr inbounds %struct.inet6_dev, ptr %454, i32 0, i32 33, i32 1
  %460 = load ptr, ptr %459, align 4
  %461 = ptrtoint ptr %460 to i32
  %462 = call i32 @llvm.read_register.i32(metadata !0) #15
  %463 = inttoptr i32 %462 to ptr
  %464 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %463) #8, !srcloc !13
  %465 = add i32 %464, %461
  %466 = inttoptr i32 %465 to ptr
  %467 = getelementptr inbounds %struct.ipstats_mib, ptr %466, i32 0, i32 1
  %468 = load i32, ptr %467, align 4
  %469 = add i32 %468, 1
  store i32 %469, ptr %467, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %470 = getelementptr [37 x i64], ptr %466, i32 0, i32 36
  %471 = load i64, ptr %470, align 8
  %472 = add i64 %471, 1
  store i64 %472, ptr %470, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %473 = load i32, ptr %467, align 4
  %474 = add i32 %473, 1
  store i32 %474, ptr %467, align 4
  call fastcc void @local_bh_enable() #15
  br label %475

475:                                              ; preds = %456, %449
  %476 = load volatile i32, ptr %45, align 4
  %477 = add i32 %476, 512
  store volatile i32 %477, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %478 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %479 = ptrtoint ptr %478 to i32
  %480 = call i32 @llvm.read_register.i32(metadata !0) #15
  %481 = inttoptr i32 %480 to ptr
  %482 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %481) #8, !srcloc !13
  %483 = add i32 %482, %479
  %484 = inttoptr i32 %483 to ptr
  %485 = getelementptr inbounds %struct.ipstats_mib, ptr %484, i32 0, i32 1
  %486 = load i32, ptr %485, align 4
  %487 = add i32 %486, 1
  store i32 %487, ptr %485, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %488 = getelementptr [37 x i64], ptr %484, i32 0, i32 36
  %489 = load i64, ptr %488, align 8
  %490 = add i64 %489, 1
  store i64 %490, ptr %488, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %491 = load i32, ptr %485, align 4
  %492 = add i32 %491, 1
  store i32 %492, ptr %485, align 4
  call fastcc void @local_bh_enable() #15
  br label %493

493:                                              ; preds = %475, %373, %365, %358, %348, %346, %340, %325, %321
  %494 = phi i32 [ -22, %340 ], [ -22, %346 ], [ %374, %373 ], [ -22, %475 ], [ -12, %365 ], [ -22, %321 ], [ -22, %325 ], [ -12, %348 ], [ -12, %358 ]
  call void @inet_frag_kill(ptr noundef nonnull %259) #15
  %495 = load i32, ptr %11, align 8
  %496 = and i32 %495, -2
  %497 = inttoptr i32 %496 to ptr
  %498 = getelementptr inbounds %struct.rt6_info, ptr %497, i32 0, i32 6
  %499 = load ptr, ptr %498, align 4
  %500 = icmp eq ptr %499, null
  br i1 %500, label %520, label %501, !prof !11

501:                                              ; preds = %493
  %502 = load volatile i32, ptr %45, align 4
  %503 = add i32 %502, 512
  store volatile i32 %503, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %504 = getelementptr inbounds %struct.inet6_dev, ptr %499, i32 0, i32 33, i32 1
  %505 = load ptr, ptr %504, align 4
  %506 = ptrtoint ptr %505 to i32
  %507 = call i32 @llvm.read_register.i32(metadata !0) #15
  %508 = inttoptr i32 %507 to ptr
  %509 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %508) #8, !srcloc !13
  %510 = add i32 %509, %506
  %511 = inttoptr i32 %510 to ptr
  %512 = getelementptr inbounds %struct.ipstats_mib, ptr %511, i32 0, i32 1
  %513 = load i32, ptr %512, align 4
  %514 = add i32 %513, 1
  store i32 %514, ptr %512, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %515 = getelementptr [37 x i64], ptr %511, i32 0, i32 19
  %516 = load i64, ptr %515, align 8
  %517 = add i64 %516, 1
  store i64 %517, ptr %515, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %518 = load i32, ptr %512, align 4
  %519 = add i32 %518, 1
  store i32 %519, ptr %512, align 4
  call fastcc void @local_bh_enable() #15
  br label %520

520:                                              ; preds = %501, %493
  %521 = load volatile i32, ptr %45, align 4
  %522 = add i32 %521, 512
  store volatile i32 %522, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %523 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %524 = ptrtoint ptr %523 to i32
  %525 = call i32 @llvm.read_register.i32(metadata !0) #15
  %526 = inttoptr i32 %525 to ptr
  %527 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %526) #8, !srcloc !13
  %528 = add i32 %527, %524
  %529 = inttoptr i32 %528 to ptr
  %530 = getelementptr inbounds %struct.ipstats_mib, ptr %529, i32 0, i32 1
  %531 = load i32, ptr %530, align 4
  %532 = add i32 %531, 1
  store i32 %532, ptr %530, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %533 = getelementptr [37 x i64], ptr %529, i32 0, i32 19
  %534 = load i64, ptr %533, align 8
  %535 = add i64 %534, 1
  store i64 %535, ptr %533, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %536 = load i32, ptr %530, align 4
  %537 = add i32 %536, 1
  store i32 %537, ptr %530, align 4
  call fastcc void @local_bh_enable() #15
  br label %538

538:                                              ; preds = %520, %261
  %539 = phi i32 [ -2, %261 ], [ %494, %520 ]
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #15
  br label %540

540:                                              ; preds = %538, %448, %447, %438, %435, %333, %291
  %541 = phi i32 [ %294, %291 ], [ 0, %538 ], [ 0, %448 ], [ 0, %435 ], [ 0, %438 ], [ 0, %447 ], [ 4, %333 ]
  %542 = phi i32 [ -1, %291 ], [ %539, %538 ], [ -22, %448 ], [ %437, %435 ], [ -115, %438 ], [ -115, %447 ], [ -1, %333 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %543 = load i16, ptr %262, align 4
  %544 = add i16 %543, 1
  store i16 %544, ptr %262, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %545 = getelementptr inbounds %struct.inet_frag_queue, ptr %259, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %545) #15, !srcloc !22
  %546 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %545, ptr %545, i32 1, ptr elementtype(i32) %545) #15, !srcloc !23
  %547 = extractvalue { i32, i32, i32 } %546, 0
  %548 = icmp eq i32 %547, 1
  br i1 %548, label %552, label %549

549:                                              ; preds = %540
  %550 = icmp sgt i32 %547, 0
  br i1 %550, label %553, label %551, !prof !24

551:                                              ; preds = %549
  call void @refcount_warn_saturate(ptr noundef %545, i32 noundef 3) #15
  br label %553

552:                                              ; preds = %540
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  call void @inet_frag_destroy(ptr noundef nonnull %259) #15
  br label %553

553:                                              ; preds = %552, %551, %549
  %554 = icmp eq i32 %541, 0
  br i1 %554, label %698, label %555

555:                                              ; preds = %553
  %556 = load ptr, ptr %237, align 8
  %557 = icmp eq ptr %556, null
  br i1 %557, label %581, label %558, !prof !11

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.net_device, ptr %556, i32 0, i32 69
  %560 = load volatile ptr, ptr %559, align 4
  %561 = icmp eq ptr %560, null
  br i1 %561, label %581, label %562, !prof !11

562:                                              ; preds = %558
  %563 = load volatile i32, ptr %45, align 4
  %564 = add i32 %563, 512
  store volatile i32 %564, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %565 = getelementptr inbounds %struct.inet6_dev, ptr %560, i32 0, i32 33, i32 1
  %566 = load ptr, ptr %565, align 4
  %567 = ptrtoint ptr %566 to i32
  %568 = call i32 @llvm.read_register.i32(metadata !0) #15
  %569 = inttoptr i32 %568 to ptr
  %570 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %569) #8, !srcloc !13
  %571 = add i32 %570, %567
  %572 = inttoptr i32 %571 to ptr
  %573 = getelementptr inbounds %struct.ipstats_mib, ptr %572, i32 0, i32 1
  %574 = load i32, ptr %573, align 4
  %575 = add i32 %574, 1
  store i32 %575, ptr %573, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %576 = getelementptr [37 x i64], ptr %572, i32 0, i32 7
  %577 = load i64, ptr %576, align 8
  %578 = add i64 %577, 1
  store i64 %578, ptr %576, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %579 = load i32, ptr %573, align 4
  %580 = add i32 %579, 1
  store i32 %580, ptr %573, align 4
  call fastcc void @local_bh_enable()
  br label %581

581:                                              ; preds = %562, %558, %555
  %582 = load volatile i32, ptr %45, align 4
  %583 = add i32 %582, 512
  store volatile i32 %583, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %584 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %585 = ptrtoint ptr %584 to i32
  %586 = call i32 @llvm.read_register.i32(metadata !0) #15
  %587 = inttoptr i32 %586 to ptr
  %588 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %587) #8, !srcloc !13
  %589 = add i32 %588, %585
  %590 = inttoptr i32 %589 to ptr
  %591 = getelementptr inbounds %struct.ipstats_mib, ptr %590, i32 0, i32 1
  %592 = load i32, ptr %591, align 4
  %593 = add i32 %592, 1
  store i32 %593, ptr %591, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %594 = getelementptr [37 x i64], ptr %590, i32 0, i32 7
  %595 = load i64, ptr %594, align 8
  %596 = add i64 %595, 1
  store i64 %596, ptr %594, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %597 = load i32, ptr %591, align 4
  %598 = add i32 %597, 1
  store i32 %598, ptr %591, align 4
  call fastcc void @local_bh_enable()
  call void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %541) #15
  br label %698

599:                                              ; preds = %257
  %600 = load i32, ptr %11, align 8
  %601 = and i32 %600, -2
  %602 = inttoptr i32 %601 to ptr
  %603 = getelementptr inbounds %struct.rt6_info, ptr %602, i32 0, i32 6
  %604 = load ptr, ptr %603, align 4
  %605 = icmp eq ptr %604, null
  br i1 %605, label %625, label %606, !prof !11

606:                                              ; preds = %599
  %607 = load volatile i32, ptr %45, align 4
  %608 = add i32 %607, 512
  store volatile i32 %608, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %609 = getelementptr inbounds %struct.inet6_dev, ptr %604, i32 0, i32 33, i32 1
  %610 = load ptr, ptr %609, align 4
  %611 = ptrtoint ptr %610 to i32
  %612 = call i32 @llvm.read_register.i32(metadata !0) #15
  %613 = inttoptr i32 %612 to ptr
  %614 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %613) #8, !srcloc !13
  %615 = add i32 %614, %611
  %616 = inttoptr i32 %615 to ptr
  %617 = getelementptr inbounds %struct.ipstats_mib, ptr %616, i32 0, i32 1
  %618 = load i32, ptr %617, align 4
  %619 = add i32 %618, 1
  store i32 %619, ptr %617, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %620 = getelementptr [37 x i64], ptr %616, i32 0, i32 19
  %621 = load i64, ptr %620, align 8
  %622 = add i64 %621, 1
  store i64 %622, ptr %620, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %623 = load i32, ptr %617, align 4
  %624 = add i32 %623, 1
  store i32 %624, ptr %617, align 4
  call fastcc void @local_bh_enable()
  br label %625

625:                                              ; preds = %606, %599
  %626 = load volatile i32, ptr %45, align 4
  %627 = add i32 %626, 512
  store volatile i32 %627, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %628 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %629 = ptrtoint ptr %628 to i32
  %630 = call i32 @llvm.read_register.i32(metadata !0) #15
  %631 = inttoptr i32 %630 to ptr
  %632 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %631) #8, !srcloc !13
  %633 = add i32 %632, %629
  %634 = inttoptr i32 %633 to ptr
  %635 = getelementptr inbounds %struct.ipstats_mib, ptr %634, i32 0, i32 1
  %636 = load i32, ptr %635, align 4
  %637 = add i32 %636, 1
  store i32 %637, ptr %635, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %638 = getelementptr [37 x i64], ptr %634, i32 0, i32 19
  %639 = load i64, ptr %638, align 8
  %640 = add i64 %639, 1
  store i64 %640, ptr %638, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %641 = load i32, ptr %635, align 4
  %642 = add i32 %641, 1
  store i32 %642, ptr %635, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #15
  br label %698

643:                                              ; preds = %86, %84, %44, %1
  %644 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %645 = load ptr, ptr %644, align 8
  %646 = icmp eq ptr %645, null
  br i1 %646, label %672, label %647, !prof !11

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.net_device, ptr %645, i32 0, i32 69
  %649 = load volatile ptr, ptr %648, align 4
  %650 = icmp eq ptr %649, null
  br i1 %650, label %672, label %651, !prof !11

651:                                              ; preds = %647
  %652 = tail call ptr @llvm.thread.pointer() #15
  %653 = getelementptr inbounds %struct.thread_info, ptr %652, i32 0, i32 1
  %654 = load volatile i32, ptr %653, align 4
  %655 = add i32 %654, 512
  store volatile i32 %655, ptr %653, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %656 = getelementptr inbounds %struct.inet6_dev, ptr %649, i32 0, i32 33, i32 1
  %657 = load ptr, ptr %656, align 4
  %658 = ptrtoint ptr %657 to i32
  %659 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %660 = inttoptr i32 %659 to ptr
  %661 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %660) #8, !srcloc !13
  %662 = add i32 %661, %658
  %663 = inttoptr i32 %662 to ptr
  %664 = getelementptr inbounds %struct.ipstats_mib, ptr %663, i32 0, i32 1
  %665 = load i32, ptr %664, align 4
  %666 = add i32 %665, 1
  store i32 %666, ptr %664, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %667 = getelementptr [37 x i64], ptr %663, i32 0, i32 7
  %668 = load i64, ptr %667, align 8
  %669 = add i64 %668, 1
  store i64 %669, ptr %667, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %670 = load i32, ptr %664, align 4
  %671 = add i32 %670, 1
  store i32 %671, ptr %664, align 4
  tail call fastcc void @local_bh_enable()
  br label %672

672:                                              ; preds = %651, %647, %643
  %673 = tail call ptr @llvm.thread.pointer() #15
  %674 = getelementptr inbounds %struct.thread_info, ptr %673, i32 0, i32 1
  %675 = load volatile i32, ptr %674, align 4
  %676 = add i32 %675, 512
  store volatile i32 %676, ptr %674, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %677 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %678 = ptrtoint ptr %677 to i32
  %679 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %680 = inttoptr i32 %679 to ptr
  %681 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %680) #8, !srcloc !13
  %682 = add i32 %681, %678
  %683 = inttoptr i32 %682 to ptr
  %684 = getelementptr inbounds %struct.ipstats_mib, ptr %683, i32 0, i32 1
  %685 = load i32, ptr %684, align 4
  %686 = add i32 %685, 1
  store i32 %686, ptr %684, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %687 = getelementptr [37 x i64], ptr %683, i32 0, i32 7
  %688 = load i64, ptr %687, align 8
  %689 = add i64 %688, 1
  store i64 %689, ptr %687, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %690 = load i32, ptr %684, align 4
  %691 = add i32 %690, 1
  store i32 %691, ptr %684, align 4
  tail call fastcc void @local_bh_enable()
  %692 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %693 = load i16, ptr %692, align 2
  %694 = zext i16 %693 to i32
  %695 = load i16, ptr %7, align 4
  %696 = zext i16 %695 to i32
  %697 = sub nsw i32 %694, %696
  tail call void @icmpv6_param_prob(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %697) #15
  br label %698

698:                                              ; preds = %672, %625, %581, %553, %218, %133
  %699 = phi i32 [ -1, %672 ], [ -1, %218 ], [ -1, %625 ], [ 1, %133 ], [ %542, %581 ], [ %542, %553 ]
  ret i32 %699
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_param_prob(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_find(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_queue_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_frag_reasm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fqdir, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @inet_frag_kill(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.frag_queue, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = getelementptr [16 x i8], ptr @ip_frag_ecn_table, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %167, label %15, !prof !11

15:                                               ; preds = %4
  %16 = tail call ptr @inet_frag_reasm_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %167, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = ptrtoint ptr %20 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 9
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %27, -48
  %32 = add i32 %31, %30
  %33 = sub i32 %32, %28
  %34 = icmp sgt i32 %33, 65535
  br i1 %34, label %167, label %35

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.frag_queue, ptr %0, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %22, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr i8, ptr %26, i32 %38
  store i8 %43, ptr %44, align 1
  %45 = load ptr, ptr %21, align 8
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = load ptr, ptr %19, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %45 to i32
  %50 = sub i32 -8, %49
  %51 = add i32 %50, %48
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %46, ptr align 1 %45, i32 %51, i1 false)
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, -1
  br i1 %54, label %57, label %55

55:                                               ; preds = %35
  %56 = add i16 %53, 8
  store i16 %56, ptr %52, align 2
  br label %57

57:                                               ; preds = %55, %35
  %58 = load i16, ptr %23, align 4
  %59 = add i16 %58, 8
  store i16 %59, ptr %23, align 4
  %60 = load ptr, ptr %19, align 4
  %61 = load ptr, ptr %21, align 8
  %62 = ptrtoint ptr %60 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr %39, align 2
  tail call void @inet_frag_reasm_finish(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16, i1 noundef zeroext true) #15
  %66 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  store ptr %3, ptr %66, align 8
  %67 = trunc i32 %33 to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %69 = load ptr, ptr %21, align 8
  %70 = load i16, ptr %23, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %69, i32 %71
  %73 = getelementptr inbounds %struct.ipv6hdr, ptr %72, i32 0, i32 2
  store i16 %68, ptr %73, align 4
  %74 = load ptr, ptr %21, align 8
  %75 = load i16, ptr %23, align 4
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %74, i32 %76
  %78 = load i16, ptr %77, align 2
  %79 = zext i8 %13 to i16
  %80 = shl nuw nsw i16 %79, 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #15
  %82 = or i16 %78, %81
  store i16 %82, ptr %77, align 2
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  store i16 %37, ptr %83, align 2
  %84 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %85 = load i16, ptr %84, align 8
  %86 = or i16 %85, 16
  store i16 %86, ptr %84, align 8
  %87 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 12
  %88 = load i16, ptr %87, align 2
  %89 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  store i16 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %91 = load i16, ptr %90, align 8
  %92 = and i16 %91, 96
  %93 = icmp eq i16 %92, 64
  br i1 %93, label %94, label %109

94:                                               ; preds = %57
  %95 = load i16, ptr %39, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, ptr %23, align 4
  %98 = zext i16 %97 to i32
  %99 = sub nsw i32 %96, %98
  %100 = load ptr, ptr %21, align 8
  %101 = getelementptr i8, ptr %100, i32 %98
  %102 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @csum_partial(ptr noundef %101, i32 noundef %99, i32 noundef 0) #15
  %105 = add i32 %104, %103
  %106 = icmp ult i32 %105, %104
  %107 = zext i1 %106 to i32
  %108 = add i32 %105, %107
  store i32 %108, ptr %102, align 4
  br label %109

109:                                              ; preds = %94, %57
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %110 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %111 = load i64, ptr %110, align 16
  %112 = and i64 %111, 262144
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %116 = load i32, ptr %115, align 8
  %117 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %116) #15
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi ptr [ %117, %114 ], [ %3, %109 ]
  %120 = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 69
  %121 = load volatile ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  %123 = tail call ptr @llvm.thread.pointer() #15
  br i1 %122, label %144, label %124, !prof !11

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %126 = load volatile i32, ptr %125, align 4
  %127 = add i32 %126, 512
  store volatile i32 %127, ptr %125, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %128 = getelementptr inbounds %struct.inet6_dev, ptr %121, i32 0, i32 33, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = ptrtoint ptr %129 to i32
  %131 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %132 = inttoptr i32 %131 to ptr
  %133 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %132) #8, !srcloc !13
  %134 = add i32 %133, %130
  %135 = inttoptr i32 %134 to ptr
  %136 = getelementptr inbounds %struct.ipstats_mib, ptr %135, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %139 = getelementptr [37 x i64], ptr %135, i32 0, i32 18
  %140 = load i64, ptr %139, align 8
  %141 = add i64 %140, 1
  store i64 %141, ptr %139, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %142 = load i32, ptr %136, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %136, align 4
  tail call fastcc void @local_bh_enable()
  br label %144

144:                                              ; preds = %124, %118
  %145 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %146 = load volatile i32, ptr %145, align 4
  %147 = add i32 %146, 512
  store volatile i32 %147, ptr %145, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %148 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %152 = inttoptr i32 %151 to ptr
  %153 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %152) #8, !srcloc !13
  %154 = add i32 %153, %150
  %155 = inttoptr i32 %154 to ptr
  %156 = getelementptr inbounds %struct.ipstats_mib, ptr %155, i32 0, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %159 = getelementptr [37 x i64], ptr %155, i32 0, i32 18
  %160 = load i64, ptr %159, align 8
  %161 = add i64 %160, 1
  store i64 %161, ptr %159, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %162 = load i32, ptr %156, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %156, align 4
  tail call fastcc void @local_bh_enable()
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %164 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  store ptr null, ptr %164, align 4
  %165 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 6
  store ptr null, ptr %165, align 8
  %166 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 7
  store ptr null, ptr %166, align 4
  br label %222

167:                                              ; preds = %18, %15, %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %168 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %169 = load i64, ptr %168, align 16
  %170 = and i64 %169, 262144
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %174 = load i32, ptr %173, align 8
  %175 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %174) #15
  br label %176

176:                                              ; preds = %172, %167
  %177 = phi ptr [ %175, %172 ], [ %3, %167 ]
  %178 = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 69
  %179 = load volatile ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  %181 = tail call ptr @llvm.thread.pointer() #15
  br i1 %180, label %202, label %182, !prof !11

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %184 = load volatile i32, ptr %183, align 4
  %185 = add i32 %184, 512
  store volatile i32 %185, ptr %183, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %186 = getelementptr inbounds %struct.inet6_dev, ptr %179, i32 0, i32 33, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = ptrtoint ptr %187 to i32
  %189 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %190 = inttoptr i32 %189 to ptr
  %191 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #8, !srcloc !13
  %192 = add i32 %191, %188
  %193 = inttoptr i32 %192 to ptr
  %194 = getelementptr inbounds %struct.ipstats_mib, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, 1
  store i32 %196, ptr %194, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %197 = getelementptr [37 x i64], ptr %193, i32 0, i32 19
  %198 = load i64, ptr %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, ptr %197, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %200 = load i32, ptr %194, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %194, align 4
  tail call fastcc void @local_bh_enable()
  br label %202

202:                                              ; preds = %182, %176
  %203 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %204 = load volatile i32, ptr %203, align 4
  %205 = add i32 %204, 512
  store volatile i32 %205, ptr %203, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %206 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 30, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = ptrtoint ptr %207 to i32
  %209 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %210 = inttoptr i32 %209 to ptr
  %211 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %210) #8, !srcloc !13
  %212 = add i32 %211, %208
  %213 = inttoptr i32 %212 to ptr
  %214 = getelementptr inbounds %struct.ipstats_mib, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %214, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %217 = getelementptr [37 x i64], ptr %213, i32 0, i32 19
  %218 = load i64, ptr %217, align 8
  %219 = add i64 %218, 1
  store i64 %219, ptr %217, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  %220 = load i32, ptr %214, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %214, align 4
  tail call fastcc void @local_bh_enable()
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  tail call void @inet_frag_kill(ptr noundef %0) #15
  br label %222

222:                                              ; preds = %202, %144
  %223 = phi i32 [ -1, %202 ], [ 1, %144 ]
  ret i32 %223
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_reasm_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_reasm_finish(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv6_frags_init_net(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 5
  %3 = tail call i32 @fqdir_init(ptr noundef %2, ptr noundef nonnull @ip6_frags, ptr noundef %0) #15
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  store i32 4194304, ptr %6, align 64
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.fqdir, ptr %7, i32 0, i32 1
  store i32 3145728, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.fqdir, ptr %9, i32 0, i32 2
  store i32 6000, ptr %10, align 8
  %11 = tail call fastcc i32 @ip6_frags_ns_sysctl_register(ptr noundef %0) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %2, align 4
  tail call void @fqdir_exit(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %13, %5, %1
  %16 = phi i32 [ %3, %1 ], [ %11, %13 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv6_frags_pre_exit_net(ptr nocapture noundef readonly %0) #12 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 5
  %3 = load ptr, ptr %2, align 4
  store volatile i32 0, ptr %3, align 64
  %4 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 6
  store volatile i8 1, ptr %4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv6_frags_exit_net(ptr nocapture noundef readonly %0) #13 section ".ref.text" {
  tail call fastcc void @ip6_frags_ns_sysctl_unregister(ptr noundef %0)
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @fqdir_exit(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fqdir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ip6_frags_ns_sysctl_register(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 5
  %3 = load ptr, ptr %2, align 4
  store ptr %3, ptr getelementptr inbounds ([4 x %struct.ctl_table], ptr @ip6_frags_ns_ctl_table, i32 0, i32 0, i32 1), align 4
  %4 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 1
  store ptr %4, ptr getelementptr inbounds ([4 x %struct.ctl_table], ptr @ip6_frags_ns_ctl_table, i32 0, i32 0, i32 7), align 4
  store ptr %4, ptr getelementptr inbounds ([4 x %struct.ctl_table], ptr @ip6_frags_ns_ctl_table, i32 0, i32 1, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds ([4 x %struct.ctl_table], ptr @ip6_frags_ns_ctl_table, i32 0, i32 1, i32 8), align 4
  %5 = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 2
  store ptr %5, ptr getelementptr inbounds ([4 x %struct.ctl_table], ptr @ip6_frags_ns_ctl_table, i32 0, i32 2, i32 1), align 4
  %6 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @ip6_frags_ns_ctl_table) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 3
  store ptr %6, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ 0, %8 ], [ -12, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fqdir_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_frags_ns_sysctl_unregister(ptr nocapture noundef readonly %0) unnamed_addr #13 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold }

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
!9 = !{i64 2149023772}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148837542}
!13 = !{i64 388475}
!14 = !{i64 2149384943}
!15 = !{i64 2149385244}
!16 = !{i64 2148905417}
!17 = !{i64 2148901241}
!18 = !{i64 2148901316, i64 2148901343, i64 2148901390, i64 2148901412, i64 2148901440, i64 2148901460}
!19 = !{i64 2148928420}
!20 = !{i64 2149023989}
!21 = !{i64 2148078375}
!22 = !{i64 474536, i64 2147964507, i64 2147964533, i64 2147964580, i64 2147964602, i64 2147964630, i64 2147964650}
!23 = !{i64 2147980534, i64 2147980566, i64 2147980595, i64 2147980629, i64 2147980660, i64 2147980683}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148973405}
!26 = !{!"auto-init"}
!27 = !{i64 2156319145}
!28 = !{i64 2147976719, i64 2147976745, i64 2147976774, i64 2147976808, i64 2147976839, i64 2147976862}
