; ModuleID = '/llk/IR/net/ipv6/anycast.c_pt.bc'
source_filename = "../net/ipv6/anycast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hlist_head = type { ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.95, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.95 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.131, [0 x i32], %union.anon.132, i16, i16, %union.anon.133, %struct.refcount_struct, [0 x i32], %union.anon.134 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { %struct.hlist_node }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.135, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.136, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.137, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.135 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.90 }
%union.anon.90 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_ac_socklist = type { %struct.in6_addr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.88, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.88 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.143, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ifacaddr6 = type { %struct.in6_addr, ptr, ptr, %struct.hlist_node, i32, %struct.refcount_struct, i32, i32, %struct.callback_head }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.80, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.80 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.83, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.83 = type { %struct.in6_addr }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.81 }
%union.anon.81 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.85, %struct.list_head, ptr }
%union.anon.85 = type { %struct.anon.87 }
%struct.anon.87 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.82 }
%union.anon.82 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ac6_iter_state = type { %struct.seq_net_private, ptr, ptr }
%struct.seq_net_private = type {}

@ipv6_sock_ac_join.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"net/ipv6/anycast.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@ipv6_sock_ac_drop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ipv6_sock_ac_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ipv6_dev_ac_inc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ipv6_dev_ac_dec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet6_acaddr_lst = internal global [256 x %struct.hlist_head] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"anycast6\00", align 1
@ac6_seq_ops = internal constant %struct.seq_operations { ptr @ac6_seq_start, ptr @ac6_seq_stop, ptr @ac6_seq_next, ptr @ac6_seq_show }, align 4
@acaddr_hash_lock = internal global %struct.spinlock zeroinitializer, align 4
@init_net = external dso_local global %struct.net, align 64
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%-4d %-15s %pi6 %5d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_ac_join(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = tail call i32 @rtnl_is_locked() #7
  %19 = icmp eq i32 %18, 0
  %20 = load i1, ptr @ipv6_sock_ac_join.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %13
  store i1 true, ptr @ipv6_sock_ac_join.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 73) #7
  br label %24

24:                                               ; preds = %23, %13
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %26 = tail call zeroext i1 @ns_capable(ptr noundef %25, i32 noundef 12) #7
  br i1 %26, label %27, label %79

27:                                               ; preds = %24
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %79, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %1) #7
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %34, %33 ], [ null, %31 ]
  %37 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef %36, i1 noundef zeroext true, i32 noundef 0, i32 noundef 64) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3264) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %79, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %40, i32 0, i32 2
  store ptr null, ptr %43, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %40, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  br i1 %32, label %44, label %52

44:                                               ; preds = %42
  %45 = tail call ptr @rt6_lookup(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 4
  tail call void @dst_release(ptr noundef nonnull %45) #7
  br label %52

49:                                               ; preds = %44
  br i1 %17, label %77, label %50

50:                                               ; preds = %49
  %51 = tail call ptr @__dev_get_by_flags(ptr noundef nonnull @init_net, i16 noundef zeroext 1, i16 noundef zeroext 9) #7
  br label %52

52:                                               ; preds = %50, %47, %42
  %53 = phi ptr [ %36, %42 ], [ %51, %50 ], [ %48, %47 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 69
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = select i1 %32, i32 -99, i32 -19
  br label %77

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.inet6_dev, ptr %57, i32 0, i32 32
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 17
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %40, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = tail call i32 @ipv6_chk_prefix(ptr noundef %2, ptr noundef nonnull %53) #7
  %68 = icmp eq i32 %67, 0
  %69 = icmp eq i32 %63, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  %72 = tail call i32 @__ipv6_dev_ac_inc(ptr noundef nonnull %57, ptr noundef %2)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  store ptr %76, ptr %43, align 4
  store ptr %40, ptr %75, align 4
  br label %79

77:                                               ; preds = %71, %61, %59, %52, %49
  %78 = phi i32 [ -99, %49 ], [ %60, %59 ], [ -19, %52 ], [ %72, %71 ], [ -99, %61 ]
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %40, i32 noundef 24) #7
  br label %79

79:                                               ; preds = %77, %74, %39, %35, %27, %24
  %80 = phi i32 [ -1, %24 ], [ -22, %27 ], [ -22, %35 ], [ -12, %39 ], [ %78, %77 ], [ 0, %74 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr_and_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_flags(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_prefix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ipv6_dev_ac_inc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #7
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @__ipv6_dev_ac_inc.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @__ipv6_dev_ac_inc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 291) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 27
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %136

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %1, align 4
  %20 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %47, %18
  %27 = phi ptr [ %16, %18 ], [ %49, %47 ]
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %19, %28
  %30 = getelementptr [4 x i32], ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %21, %31
  %33 = or i32 %32, %29
  %34 = getelementptr [4 x i32], ptr %27, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %23, %35
  %37 = or i32 %33, %36
  %38 = getelementptr [4 x i32], ptr %27, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %25, %39
  %41 = or i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.ifacaddr6, ptr %27, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %136

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.ifacaddr6, ptr %27, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26

51:                                               ; preds = %47, %14
  %52 = tail call ptr @addrconf_f6i_alloc(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i32 noundef 2592) #7
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  br label %136

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 2848, i32 noundef 56) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #7
  %61 = getelementptr inbounds %struct.fib6_info, ptr %52, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #7, !srcloc !9
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #7, !srcloc !10
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65, !prof !8

65:                                               ; preds = %60
  %66 = add i32 %63, 1
  %67 = or i32 %66, %63
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %83, label %69, !prof !11

69:                                               ; preds = %65, %60
  %70 = phi i32 [ 2, %60 ], [ 1, %65 ]
  tail call void @refcount_warn_saturate(ptr noundef %61, i32 noundef %70) #7
  br label %83

71:                                               ; preds = %56
  %72 = icmp eq ptr %52, null
  br i1 %72, label %136, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.fib6_info, ptr %52, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #7, !srcloc !9
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #7, !srcloc !13
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %136, label %80, !prof !11

80:                                               ; preds = %78
  tail call void @refcount_warn_saturate(ptr noundef %74, i32 noundef 3) #7
  br label %136

81:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %82 = getelementptr inbounds %struct.fib6_info, ptr %52, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %82, ptr noundef nonnull @fib6_info_destroy_rcu) #7
  br label %136

83:                                               ; preds = %69, %65
  %84 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 1
  store ptr %52, ptr %84, align 8
  %85 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 3
  store ptr null, ptr %85, align 8
  %86 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 3, i32 1
  store ptr null, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 4
  store i32 1, ptr %87, align 8
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 7
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 6
  store i32 %88, ptr %90, align 8
  %91 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 5
  store volatile i32 1, ptr %91, align 4
  %92 = load ptr, ptr %15, align 4
  %93 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 2
  store ptr %92, ptr %93, align 4
  store ptr %58, ptr %15, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #7, !srcloc !9
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #7, !srcloc !10
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97, !prof !8

97:                                               ; preds = %83
  %98 = add i32 %95, 1
  %99 = or i32 %98, %95
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %103, label %101, !prof !11

101:                                              ; preds = %97, %83
  %102 = phi i32 [ 2, %83 ], [ 1, %97 ]
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef %102) #7
  br label %103

103:                                              ; preds = %101, %97
  tail call void @_raw_write_unlock_bh(ptr noundef %10) #7
  %104 = load i32, ptr %58, align 8
  %105 = getelementptr [4 x i32], ptr %58, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = xor i32 %106, %104
  %108 = getelementptr [4 x i32], ptr %58, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = xor i32 %107, %109
  %111 = getelementptr [4 x i32], ptr %58, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = xor i32 %110, %112
  %114 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %115 = xor i32 %113, %114
  %116 = mul i32 %115, 1640531527
  %117 = lshr i32 %116, 24
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  %118 = getelementptr [256 x %struct.hlist_head], ptr @inet6_acaddr_lst, i32 0, i32 %117
  %119 = load ptr, ptr %118, align 4
  store ptr %119, ptr %85, align 8
  store volatile ptr %118, ptr %86, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  store volatile ptr %85, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %103
  %122 = getelementptr inbounds %struct.hlist_node, ptr %119, i32 0, i32 1
  store volatile ptr %85, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %124 = load i16, ptr @acaddr_hash_lock, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr @acaddr_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %126 = tail call i32 @ip6_ins_rt(ptr noundef nonnull @init_net, ptr noundef %52) #7
  %127 = load ptr, ptr %0, align 4
  tail call void @addrconf_join_solict(ptr noundef %127, ptr noundef nonnull %58) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #7, !srcloc !9
  %128 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #7, !srcloc !13
  %129 = extractvalue { i32, i32, i32 } %128, 0
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %134, label %131

131:                                              ; preds = %123
  %132 = icmp sgt i32 %129, 0
  br i1 %132, label %138, label %133, !prof !11

133:                                              ; preds = %131
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef 3) #7
  br label %138

134:                                              ; preds = %123
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %135 = getelementptr inbounds %struct.ifacaddr6, ptr %58, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %135, ptr noundef nonnull @aca_free_rcu) #7
  br label %138

136:                                              ; preds = %81, %80, %78, %71, %54, %43, %9
  %137 = phi i32 [ 0, %43 ], [ %55, %54 ], [ -19, %9 ], [ -12, %71 ], [ -12, %78 ], [ -12, %80 ], [ -12, %81 ]
  tail call void @_raw_write_unlock_bh(ptr noundef %10) #7
  br label %138

138:                                              ; preds = %136, %134, %133, %131
  %139 = phi i32 [ %137, %136 ], [ 0, %131 ], [ 0, %133 ], [ 0, %134 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_sock_ac_drop(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = tail call i32 @rtnl_is_locked() #7
  %16 = icmp eq i32 %15, 0
  %17 = load i1, ptr @ipv6_sock_ac_drop.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %13
  store i1 true, ptr @ipv6_sock_ac_drop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 162) #7
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %78, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %1, 0
  %27 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %28 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %29 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  br label %30

30:                                               ; preds = %57, %25
  %31 = phi ptr [ %23, %25 ], [ %59, %57 ]
  %32 = phi ptr [ null, %25 ], [ %31, %57 ]
  br i1 %26, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %57

37:                                               ; preds = %33, %30
  %38 = load i32, ptr %31, align 4
  %39 = load i32, ptr %2, align 4
  %40 = xor i32 %39, %38
  %41 = getelementptr [4 x i32], ptr %31, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %27, align 4
  %44 = xor i32 %43, %42
  %45 = or i32 %44, %40
  %46 = getelementptr [4 x i32], ptr %31, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %28, align 4
  %49 = xor i32 %48, %47
  %50 = or i32 %45, %49
  %51 = getelementptr [4 x i32], ptr %31, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %29, align 4
  %54 = xor i32 %53, %52
  %55 = or i32 %50, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %37, %33
  %58 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %31, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %78, label %30

61:                                               ; preds = %37
  %62 = icmp eq ptr %32, null
  %63 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %31, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %32, i32 0, i32 2
  %66 = select i1 %62, ptr %22, ptr %65
  store ptr %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %31, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %68) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 69
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @__ipv6_dev_ac_dec(ptr noundef nonnull %73, ptr noundef nonnull %31) #7
  br label %77

77:                                               ; preds = %75, %71, %61
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %31, i32 noundef 24) #7
  br label %78

78:                                               ; preds = %77, %57, %21
  %79 = phi i32 [ 0, %77 ], [ -2, %21 ], [ -2, %57 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ipv6_sock_ac_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = tail call i32 @rtnl_is_locked() #7
  %14 = icmp eq i32 %13, 0
  %15 = load i1, ptr @__ipv6_sock_ac_close.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %11
  store i1 true, ptr @__ipv6_sock_ac_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 194) #7
  br label %19

19:                                               ; preds = %18, %11
  %20 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  store ptr null, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %45, %19
  %24 = phi ptr [ %37, %45 ], [ null, %19 ]
  %25 = phi i32 [ %36, %45 ], [ 0, %19 ]
  %26 = phi ptr [ %28, %45 ], [ %21, %19 ]
  %27 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ipv6_ac_socklist, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %25
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %30) #7
  %34 = load i32, ptr %29, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi i32 [ %34, %32 ], [ %25, %23 ]
  %37 = phi ptr [ %33, %32 ], [ %24, %23 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 69
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @__ipv6_dev_ac_dec(ptr noundef nonnull %41, ptr noundef nonnull %26) #7
  br label %45

45:                                               ; preds = %43, %39, %35
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 24) #7
  %46 = icmp eq ptr %28, null
  br i1 %46, label %47, label %23

47:                                               ; preds = %45, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_sock_ac_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @rtnl_lock() #7
  tail call void @__ipv6_sock_ac_close(ptr noundef %0)
  tail call void @rtnl_unlock() #7
  br label %17

17:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @addrconf_f6i_alloc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_ins_rt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_join_solict(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ipv6_dev_ac_dec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #7
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @__ipv6_dev_ac_dec.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @__ipv6_dev_ac_dec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 349) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %12, align 4
  %23 = xor i32 %15, %22
  %24 = getelementptr [4 x i32], ptr %12, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %17, %25
  %27 = or i32 %26, %23
  %28 = getelementptr [4 x i32], ptr %12, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %19, %29
  %31 = or i32 %27, %30
  %32 = getelementptr [4 x i32], ptr %12, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %21, %33
  %35 = or i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %53

37:                                               ; preds = %53
  %38 = load i32, ptr %56, align 4
  %39 = xor i32 %15, %38
  %40 = getelementptr [4 x i32], ptr %56, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %17, %41
  %43 = or i32 %42, %39
  %44 = getelementptr [4 x i32], ptr %56, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %19, %45
  %47 = or i32 %43, %46
  %48 = getelementptr [4 x i32], ptr %56, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %21, %49
  %51 = or i32 %47, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %37, %14
  %54 = phi ptr [ %56, %37 ], [ %12, %14 ]
  %55 = getelementptr inbounds %struct.ifacaddr6, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %37

58:                                               ; preds = %53, %9
  tail call void @_raw_write_unlock_bh(ptr noundef %10) #7
  br label %98

59:                                               ; preds = %37, %14
  %60 = phi ptr [ %12, %14 ], [ %56, %37 ]
  %61 = phi ptr [ null, %14 ], [ %54, %37 ]
  %62 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  tail call void @_raw_write_unlock_bh(ptr noundef %10) #7
  br label %98

67:                                               ; preds = %59
  %68 = icmp eq ptr %61, null
  %69 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ifacaddr6, ptr %61, i32 0, i32 2
  %72 = select i1 %68, ptr %11, ptr %71
  store ptr %70, ptr %72, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %10) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  %73 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 3, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  store volatile ptr %78, ptr %74, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hlist_node, ptr %78, i32 0, i32 1
  store volatile ptr %74, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %76
  store volatile ptr null, ptr %73, align 4
  br label %83

83:                                               ; preds = %82, %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %84 = load i16, ptr @acaddr_hash_lock, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr @acaddr_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  tail call void @addrconf_leave_solict(ptr noundef %0, ptr noundef nonnull %60) #7
  %86 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef %87, i1 noundef zeroext false) #7
  %89 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #7, !srcloc !9
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #7, !srcloc !13
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = icmp sgt i32 %91, 0
  br i1 %94, label %98, label %95, !prof !11

95:                                               ; preds = %93
  tail call void @refcount_warn_saturate(ptr noundef %89, i32 noundef 3) #7
  br label %98

96:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %97 = getelementptr inbounds %struct.ifacaddr6, ptr %60, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %97, ptr noundef nonnull @aca_free_rcu) #7
  br label %98

98:                                               ; preds = %96, %95, %93, %66, %58
  %99 = phi i32 [ 0, %66 ], [ -2, %58 ], [ 0, %93 ], [ 0, %95 ], [ 0, %96 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_leave_solict(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_del_rt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_ac_destroy_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %35, %1
  %7 = phi ptr [ %36, %35 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.ifacaddr6, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %3, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %2) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  %10 = getelementptr inbounds %struct.ifacaddr6, ptr %7, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ifacaddr6, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  store volatile ptr %15, ptr %11, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %11, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13
  store volatile ptr null, ptr %10, align 4
  br label %20

20:                                               ; preds = %19, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %21 = load i16, ptr @acaddr_hash_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @acaddr_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  tail call void @addrconf_leave_solict(ptr noundef %0, ptr noundef nonnull %7) #7
  %23 = getelementptr inbounds %struct.ifacaddr6, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef %24, i1 noundef zeroext false) #7
  %26 = getelementptr inbounds %struct.ifacaddr6, ptr %7, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #7, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #7, !srcloc !13
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %35, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #7
  br label %35

33:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %34 = getelementptr inbounds %struct.ifacaddr6, ptr %7, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %34, ptr noundef nonnull @aca_free_rcu) #7
  br label %35

35:                                               ; preds = %33, %32, %30
  tail call void @_raw_write_lock_bh(ptr noundef %2) #7
  %36 = load ptr, ptr %3, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %6

38:                                               ; preds = %35, %1
  tail call void @_raw_write_unlock_bh(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipv6_chk_acast_addr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %4 = icmp eq ptr %1, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 69
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %126, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  br label %26

22:                                               ; preds = %26
  %23 = getelementptr inbounds %struct.ifacaddr6, ptr %27, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22, %14
  %27 = phi ptr [ %12, %14 ], [ %24, %22 ]
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, %15
  %30 = getelementptr [4 x i32], ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, %17
  %33 = or i32 %32, %29
  %34 = getelementptr [4 x i32], ptr %27, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %19
  %37 = or i32 %33, %36
  %38 = getelementptr [4 x i32], ptr %27, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %21
  %41 = or i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %22

43:                                               ; preds = %26, %22, %9
  %44 = phi i1 [ false, %9 ], [ %42, %22 ], [ %42, %26 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %10) #7
  br label %126

45:                                               ; preds = %3
  %46 = load i32, ptr %2, align 4
  %47 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, %46
  %50 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %49, %51
  %53 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %52, %54
  %56 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %55, %57
  %59 = mul i32 %58, 1640531527
  %60 = lshr i32 %59, 24
  %61 = getelementptr [256 x %struct.hlist_head], ptr @inet6_acaddr_lst, i32 0, i32 %60
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr i8, ptr %62, i32 -24
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %126, label %67

67:                                               ; preds = %119, %45
  %68 = phi ptr [ %123, %119 ], [ %64, %45 ]
  %69 = getelementptr inbounds %struct.ifacaddr6, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.fib6_info, ptr %70, i32 0, i32 20
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %97, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.nexthop, ptr %72, i32 0, i32 9
  %76 = load i8, ptr %75, align 2, !range !21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.nexthop, ptr %72, i32 0, i32 12
  %80 = load volatile ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nh_group, ptr %80, i32 0, i32 1
  %82 = load i16, ptr %81, align 4
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.nh_group, ptr %80, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %84, %74
  %89 = phi ptr [ %86, %84 ], [ %72, %74 ]
  %90 = getelementptr inbounds %struct.nexthop, ptr %89, i32 0, i32 12
  %91 = load volatile ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nh_info, ptr %91, i32 0, i32 2
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 10
  %95 = getelementptr inbounds %struct.nh_info, ptr %91, i32 0, i32 5
  %96 = select i1 %94, ptr %95, ptr null
  br label %99

97:                                               ; preds = %67
  %98 = getelementptr inbounds %struct.fib6_info, ptr %70, i32 0, i32 21
  br label %99

99:                                               ; preds = %97, %88, %84, %78
  %100 = phi ptr [ %98, %97 ], [ null, %84 ], [ %96, %88 ], [ null, %78 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %119, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %68, align 4
  %105 = xor i32 %104, %46
  %106 = getelementptr [4 x i32], ptr %68, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = xor i32 %107, %48
  %109 = or i32 %108, %105
  %110 = getelementptr [4 x i32], ptr %68, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, %51
  %113 = or i32 %109, %112
  %114 = getelementptr [4 x i32], ptr %68, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = xor i32 %115, %54
  %117 = or i32 %113, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %103, %99
  %120 = getelementptr inbounds %struct.ifacaddr6, ptr %68, i32 0, i32 3
  %121 = load volatile ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  %123 = getelementptr i8, ptr %121, i32 -24
  %124 = icmp eq ptr %123, null
  %125 = or i1 %122, %124
  br i1 %125, label %126, label %67

126:                                              ; preds = %119, %103, %45, %43, %5
  %127 = phi i1 [ %44, %43 ], [ false, %5 ], [ false, %45 ], [ true, %103 ], [ false, %119 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  ret i1 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipv6_chk_acast_addr_src(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @__ipv6_addr_type(ptr noundef %2) #7
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr null, ptr %1
  %8 = tail call zeroext i1 @ipv6_chk_acast_addr(ptr noundef %0, ptr noundef %7, ptr noundef %2)
  ret i1 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ac6_proc_init(ptr nocapture noundef readonly %0) local_unnamed_addr #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @ac6_seq_ops, i32 noundef 8, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ac6_proc_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define dso_local i32 @ipv6_anycast_init() local_unnamed_addr #4 section ".init.text" {
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1024) @inet6_acaddr_lst, i8 0, i32 1024, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_anycast_cleanup() local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @acaddr_hash_lock) #7
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr [256 x %struct.hlist_head], ptr @inet6_acaddr_lst, i32 0, i32 %2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %1
  %8 = add nuw nsw i32 %2, 1
  %9 = icmp eq i32 %8, 256
  br i1 %9, label %10, label %1

10:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %11 = load i16, ptr @acaddr_hash_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @acaddr_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_destroy_rcu(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aca_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fib6_info, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #7, !srcloc !13
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %15, label %12, !prof !11

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #7
  br label %15

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %14 = getelementptr inbounds %struct.fib6_info, ptr %3, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %14, ptr noundef nonnull @fib6_info_destroy_rcu) #7
  br label %15

15:                                               ; preds = %13, %12, %10, %1
  %16 = getelementptr i8, ptr %0, i32 -48
  tail call void @kfree(ptr noundef %16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ac6_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ac6_iter_state, ptr %5, i32 0, i32 2
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ac6_iter_state, ptr %5, i32 0, i32 1
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %9 = getelementptr i8, ptr %8, i32 -40
  store ptr %9, ptr %7, align 4
  %10 = icmp eq ptr %8, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %10, label %74, label %11

11:                                               ; preds = %24, %2
  %12 = phi ptr [ %28, %24 ], [ %9, %2 ]
  %13 = phi ptr [ %27, %24 ], [ %8, %2 ]
  %14 = getelementptr i8, ptr %13, i32 428
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 23
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  tail call void @_raw_read_unlock_bh(ptr noundef %18) #7
  %23 = load ptr, ptr %7, align 4
  br label %24

24:                                               ; preds = %22, %11
  %25 = phi ptr [ %23, %22 ], [ %12, %11 ]
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 7
  %27 = load volatile ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 -40
  store ptr %28, ptr %7, align 4
  %29 = icmp eq ptr %27, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %29, label %74, label %11

30:                                               ; preds = %17
  store ptr %15, ptr %6, align 4
  %31 = icmp eq i64 %3, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %70, %30
  %33 = phi i64 [ %72, %70 ], [ %3, %30 ]
  %34 = phi ptr [ %71, %70 ], [ %20, %30 ]
  %35 = getelementptr inbounds %struct.ifacaddr6, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.ac6_iter_state, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.ac6_iter_state, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %40, align 4
  br label %43

43:                                               ; preds = %65, %38
  %44 = phi ptr [ %42, %38 ], [ %66, %65 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.inet6_dev, ptr %44, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %47) #7
  br label %48

48:                                               ; preds = %46, %43
  %49 = load ptr, ptr %41, align 4
  %50 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 7
  %51 = load volatile ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %53 = getelementptr i8, ptr %51, i32 -40
  %54 = select i1 %52, ptr null, ptr %53
  store ptr %54, ptr %41, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 69
  %58 = load volatile ptr, ptr %57, align 4
  store ptr %58, ptr %40, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.inet6_dev, ptr %58, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %61) #7
  %62 = load ptr, ptr %40, align 4
  %63 = getelementptr inbounds %struct.inet6_dev, ptr %62, i32 0, i32 23
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi ptr [ %62, %60 ], [ null, %56 ]
  %67 = phi ptr [ %64, %60 ], [ null, %56 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %43, label %70

69:                                               ; preds = %48
  store ptr null, ptr %40, align 4
  br label %74

70:                                               ; preds = %65, %32
  %71 = phi ptr [ %36, %32 ], [ %67, %65 ]
  %72 = add i64 %33, -1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %32

74:                                               ; preds = %70, %69, %30, %24, %2
  %75 = phi ptr [ %20, %30 ], [ null, %2 ], [ null, %69 ], [ %71, %70 ], [ null, %24 ]
  ret ptr %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ac6_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ac6_iter_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %9) #7
  store ptr null, ptr %5, align 4
  br label %10

10:                                               ; preds = %8, %2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ac6_seq_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ifacaddr6, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ac6_iter_state, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ac6_iter_state, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %10, align 4
  br label %13

13:                                               ; preds = %36, %7
  %14 = phi ptr [ %12, %7 ], [ %37, %36 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !8

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %17) #7
  br label %18

18:                                               ; preds = %16, %13
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 7
  %21 = load volatile ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  %23 = getelementptr i8, ptr %21, i32 -40
  %24 = select i1 %22, ptr null, ptr %23
  store ptr %24, ptr %11, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store ptr null, ptr %10, align 4
  br label %40

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 69
  %29 = load volatile ptr, ptr %28, align 4
  store ptr %29, ptr %10, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %32) #7
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.inet6_dev, ptr %33, i32 0, i32 23
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi ptr [ %33, %31 ], [ null, %27 ]
  %38 = phi ptr [ %35, %31 ], [ null, %27 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %13, label %40

40:                                               ; preds = %36, %26, %3
  %41 = phi ptr [ null, %26 ], [ %5, %3 ], [ %38, %36 ]
  %42 = load i64, ptr %2, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %2, align 8
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac6_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ac6_iter_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ifacaddr6, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %8, ptr noundef %6, ptr noundef %1, i32 noundef %10) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 592479, i64 2148082450, i64 2148082476, i64 2148082523, i64 2148082545, i64 2148082573, i64 2148082593}
!10 = !{i64 2148095323, i64 2148095355, i64 2148095384, i64 2148095418, i64 2148095449, i64 2148095472}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148195545}
!13 = !{i64 2148097680, i64 2148097712, i64 2148097741, i64 2148097775, i64 2148097806, i64 2148097829}
!14 = !{i64 2149033863}
!15 = !{i64 2150771288}
!16 = !{i64 2148965875}
!17 = !{i64 2148961699}
!18 = !{i64 2148961774, i64 2148961801, i64 2148961848, i64 2148961870, i64 2148961898, i64 2148961918}
!19 = !{i64 2148988878}
!20 = !{i64 2149084230}
!21 = !{i8 0, i8 2}
!22 = !{i64 2149084447}
