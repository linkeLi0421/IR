; ModuleID = '/llk/IR/net/ipv6/xfrm6_policy.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_policy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_policy_afinfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.141, ptr, [60 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.141 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.xfrm_dst = type { %union.anon.146, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.146 = type { %struct.rt6_info }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.97, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.97 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.100, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.100 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.rt6_statistics = type { i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.101, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.102, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.101 = type { %struct.hlist_node }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.102 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }

@xfrm6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm6_net_init, ptr null, ptr @xfrm6_net_exit, ptr null, ptr null, i32 0 }, align 4
@xfrm6_policy_afinfo = internal constant %struct.xfrm_policy_afinfo { ptr @xfrm6_dst_ops_template, ptr @xfrm6_dst_lookup, ptr @xfrm6_get_saddr, ptr @xfrm6_fill_dst, ptr @ip6_blackhole_route }, align 4
@xfrm6_dst_ops_template = internal global %struct.dst_ops { i16 10, i32 32768, ptr null, ptr null, ptr null, ptr null, ptr @dst_cow_metrics_generic, ptr @xfrm6_dst_destroy, ptr @xfrm6_dst_ifdown, ptr null, ptr null, ptr @xfrm6_update_pmtu, ptr @xfrm6_redirect, ptr @__ip6_local_out, ptr null, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [32 x i8] undef }, align 64
@init_net = external dso_local global %struct.net, align 64
@dst_entries_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@xfrm6_policy_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr getelementptr (i8, ptr @init_net, i64 1988), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str = private unnamed_addr constant [9 x i8] c"net/ipv6\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"xfrm6_gc_thresh\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @xfrm6_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @xfrm_policy_register_afinfo(ptr noundef nonnull @xfrm6_policy_afinfo, i32 noundef 10) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = tail call i32 @xfrm6_state_init() #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call i32 @xfrm6_protocol_init() #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm6_net_ops) #8
  br label %11

11:                                               ; preds = %14, %9, %0
  %12 = phi i32 [ %1, %0 ], [ %15, %14 ], [ 0, %9 ]
  ret i32 %12

13:                                               ; preds = %6
  tail call void @xfrm6_state_fini() #8
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i32 [ %4, %3 ], [ %7, %13 ]
  tail call void @xfrm_policy_unregister_afinfo(ptr noundef nonnull @xfrm6_policy_afinfo) #8
  br label %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_state_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm6_state_fini() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm6_fini() local_unnamed_addr #3 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm6_net_ops) #8
  tail call void @xfrm6_protocol_fini() #8
  tail call void @xfrm_policy_unregister_afinfo(ptr noundef nonnull @xfrm6_policy_afinfo) #8
  tail call void @xfrm6_state_fini() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm6_protocol_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_register_afinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xfrm6_dst_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) #3 {
  %7 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i64 88, i1 false)
  store i8 4, ptr %8, align 1
  %9 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 2
  store i32 %5, ptr %9, align 8
  %10 = getelementptr inbounds %struct.flowi6, ptr %7, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %10, ptr noundef align 4 dereferenceable(16) %4, i32 16, i1 false)
  %11 = icmp eq ptr %3, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.flowi6, ptr %7, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  br label %14

14:                                               ; preds = %12, %6
  %15 = call ptr @ip6_route_output_flags(ptr noundef %0, ptr noundef null, ptr noundef nonnull %7, i32 noundef 0) #8
  %16 = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 15
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = sext i16 %17 to i32
  call void @dst_release(ptr noundef %15) #8
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #8
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_get_saddr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #3 {
  %6 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i64 88, i1 false) #8
  store i8 4, ptr %7, align 1
  %8 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %9, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false) #8
  %10 = call ptr @ip6_route_output_flags(ptr noundef %0, ptr noundef null, ptr noundef nonnull %6, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.dst_entry, ptr %10, i32 0, i32 15
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = sext i16 %12 to i32
  call void @dst_release(ptr noundef %10) #8
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi ptr [ %16, %14 ], [ %10, %5 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #8
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rt6_info, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @ipv6_dev_get_saddr(ptr noundef nonnull @init_net, ptr noundef %23, ptr noundef %3, i32 noundef 0, ptr noundef %2) #8
  call void @dst_release(ptr noundef %18) #8
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ 0, %20 ], [ -113, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_fill_dst(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %1, ptr %0, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !10
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #8, !srcloc !11
  br label %19

19:                                               ; preds = %7, %3
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 69
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %21, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #8, !srcloc !13
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #8, !srcloc !14
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !15

28:                                               ; preds = %23
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %48, label %32, !prof !16

32:                                               ; preds = %28, %23
  %33 = phi i32 [ 2, %23 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %33) #8
  br label %48

34:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %35 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 6
  store ptr null, ptr %35, align 4
  br i1 %6, label %84, label %36

36:                                               ; preds = %34
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %38 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #5, !srcloc !10
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #8, !srcloc !11
  br label %84

48:                                               ; preds = %32, %28
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %49 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 6
  store ptr %21, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -2146435072
  %53 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %58 = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 1
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fib6_info, ptr %59, i32 0, i32 2
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.fib6_node, ptr %63, i32 0, i32 6
  %67 = load volatile i32, ptr %66, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  br label %68

68:                                               ; preds = %65, %61, %57
  %69 = phi i32 [ 0, %57 ], [ 0, %61 ], [ %67, %65 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %70

70:                                               ; preds = %68, %48
  %71 = phi i32 [ %69, %68 ], [ %55, %48 ]
  %72 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 11
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 5
  %74 = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %73, ptr noundef align 4 dereferenceable(16) %74, i32 16, i1 false)
  %75 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 3
  %76 = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %75, ptr noundef align 4 dereferenceable(20) %76, i32 20, i1 false)
  %77 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 4
  %78 = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %77, ptr noundef align 4 dereferenceable(20) %78, i32 20, i1 false)
  %79 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 8
  store volatile ptr %79, ptr %79, align 4
  %80 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 8, i32 1
  store ptr %79, ptr %80, align 4
  tail call void @rt6_uncached_list_add(ptr noundef %0) #8
  %81 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 8), align 8
  %82 = getelementptr inbounds %struct.rt6_statistics, ptr %81, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #8, !srcloc !13
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #8, !srcloc !19
  br label %84

84:                                               ; preds = %70, %36, %34
  %85 = phi i32 [ 0, %70 ], [ -19, %34 ], [ -19, %36 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_blackhole_route(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cow_metrics_generic(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_dst_destroy(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !21
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !16

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #8
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %3) #8
  br label %14

14:                                               ; preds = %13, %12, %10, %1
  %15 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @__dst_destroy_metrics_generic(ptr noundef %0, i32 noundef %16) #8
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @rt6_uncached_list_del(ptr noundef %0) #8
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 4
  %27 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %46

31:                                               ; preds = %43, %25
  %32 = phi i32 [ %44, %43 ], [ %29, %25 ]
  %33 = getelementptr ptr, ptr %26, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.xfrm_policy, ptr %34, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #8, !srcloc !13
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #8, !srcloc !21
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !16

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 3) #8
  br label %43

42:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @xfrm_policy_destroy(ptr noundef %34) #8
  br label %43

43:                                               ; preds = %42, %41, %39
  %44 = add i32 %32, -1
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %31, label %46

46:                                               ; preds = %43, %25
  %47 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @dst_release(ptr noundef %48) #8
  %49 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52, !prof !15

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.xfrm_state, ptr %50, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #8, !srcloc !13
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #8, !srcloc !21
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %61, label %59, !prof !16

59:                                               ; preds = %57
  tail call void @refcount_warn_saturate(ptr noundef %53, i32 noundef 3) #8
  br label %61

60:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %50, i1 noundef zeroext false) #8
  br label %61

61:                                               ; preds = %60, %59, %57, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_dst_ifdown(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %73, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rt6_info, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %72

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 69
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #8, !srcloc !13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #8, !srcloc !14
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !15

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !16

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %24, %20, %10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 25
  br label %28

28:                                               ; preds = %62, %26
  %29 = phi ptr [ %0, %26 ], [ %63, %62 ]
  %30 = getelementptr inbounds %struct.rt6_info, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #8, !srcloc !13
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #8, !srcloc !21
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %40, label %38, !prof !16

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #8
  br label %40

39:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void @in6_dev_finish_destroy(ptr noundef %31) #8
  br label %40

40:                                               ; preds = %39, %38, %36
  store ptr %13, ptr %30, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #8, !srcloc !13
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #8, !srcloc !14
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !15

44:                                               ; preds = %40
  %45 = add i32 %42, 1
  %46 = or i32 %45, %42
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %50, label %48, !prof !16

48:                                               ; preds = %44, %40
  %49 = phi i32 [ 2, %40 ], [ 1, %44 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %49) #8
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct.dst_entry, ptr %29, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dst_entry, ptr %29, i32 0, i32 7
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 64
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.xfrm_dst, ptr %29, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi ptr [ %61, %59 ], [ null, %54 ]
  %64 = getelementptr inbounds %struct.dst_entry, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %28

67:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #8, !srcloc !13
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #8, !srcloc !21
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %72, !prof !15

71:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 4) #8
  br label %72

72:                                               ; preds = %71, %67, %5
  tail call void @xfrm_dst_ifdown(ptr noundef %0, ptr noundef %1) #8
  br label %73

73:                                               ; preds = %72, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_update_pmtu(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #3 {
  %6 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dst_ops, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %7, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_redirect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dst_ops, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 16
  tail call void %9(ptr noundef %5, ptr noundef %1, ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip6_local_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_uncached_list_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dst_destroy_metrics_generic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_dst_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_uncached_list_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xfrm6_net_init(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(192) %2, ptr noundef nonnull align 64 dereferenceable(192) @xfrm6_dst_ops_template, i32 192, i1 false)
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 27, i32 18
  %4 = tail call i32 @__percpu_counter_init(ptr noundef %3, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dst_entries_init.__key) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @xfrm6_policy_table) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 4
  store ptr %7, ptr %10, align 16
  br label %12

11:                                               ; preds = %6
  tail call void @percpu_counter_destroy(ptr noundef %3) #8
  br label %12

12:                                               ; preds = %11, %9, %1
  %13 = phi i32 [ %4, %1 ], [ -12, %11 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm6_net_exit(ptr noundef %0) #6 section ".ref.text" {
  tail call fastcc void @xfrm6_net_sysctl_exit(ptr noundef %0)
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 27, i32 18
  tail call void @percpu_counter_destroy(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm6_net_sysctl_exit(ptr nocapture noundef readonly %0) unnamed_addr #6 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_unregister_afinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

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
!9 = !{i64 310590, i64 310651}
!10 = !{i64 329290}
!11 = !{i64 313607}
!12 = !{i64 2149279128}
!13 = !{i64 415351, i64 2147905322, i64 2147905348, i64 2147905395, i64 2147905417, i64 2147905445, i64 2147905465}
!14 = !{i64 2147918992, i64 2147919024, i64 2147919053, i64 2147919087, i64 2147919118, i64 2147919141}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149279345}
!18 = !{i64 2156288301}
!19 = !{i64 2147917534, i64 2147917560, i64 2147917589, i64 2147917623, i64 2147917654, i64 2147917677}
!20 = !{i64 2148019190}
!21 = !{i64 2147921349, i64 2147921381, i64 2147921410, i64 2147921444, i64 2147921475, i64 2147921498}
!22 = !{i64 2149496441}
