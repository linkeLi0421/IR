; ModuleID = '/llk/IR/net/ipv4/tcp_metrics.c_pt.bc'
source_filename = "../net/ipv4/tcp_metrics.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.129, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.129 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.170, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.171, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.172, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.166, [0 x i32], %union.anon.167, i16, i16, %union.anon.168, %struct.refcount_struct, [0 x i32], %union.anon.169 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { %struct.hlist_node }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.170 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.183, %struct.anon.184, %struct.anon.185, i32, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.183 = type { i32, i32, i64 }
%struct.anon.184 = type { i32, i32, i64 }
%struct.anon.185 = type { i32, i32 }
%struct.tcp_metrics_block = type { ptr, %struct.possible_net_t, %struct.inetpeer_addr, %struct.inetpeer_addr, i32, i32, [5 x i32], %struct.tcp_fastopen_metrics, %struct.callback_head }
%struct.inetpeer_addr = type { %union.anon.189, i16 }
%union.anon.189 = type { %struct.in6_addr }
%struct.tcp_fastopen_metrics = type { i16, i16, i32, %struct.tcp_fastopen_cookie }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.ipv4_addr_key = type { i32, i32 }
%struct.tcpm_hash_bucket = type { ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.69 }
%union.anon.69 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@fastopen_seqlock = internal global %struct.seqlock_t zeroinitializer, align 4
@__setup_str_set_tcpmhash_entries = internal constant [18 x i8] c"tcpmhash_entries=\00", section ".init.rodata", align 1
@__setup_set_tcpmhash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_tcpmhash_entries, ptr @set_tcpmhash_entries, i32 0 }, section ".init.setup", align 4
@tcp_net_metrics_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tcp_net_metrics_init, ptr null, ptr null, ptr @tcp_net_metrics_exit_batch, ptr null, i32 0 }, section ".init.data", align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not allocate the tcp_metrics hash table\0A\00", align 1
@tcp_metrics_nl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"tcp_metrics\00\00\00\00\00", i32 1, i32 13, i32 0, i8 1, i8 0, i8 2, i8 0, ptr @tcp_metrics_nl_policy, ptr null, ptr null, ptr null, ptr @tcp_metrics_nl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not register tcp_metrics generic netlink\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@tcp_metrics_hash_log = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@tcp_metrics_hash = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@tcp_metrics_lock = internal global %struct.spinlock zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tcpmhash_entries = internal global i32 0, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@tcp_metrics_nl_ops = internal constant [2 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @tcp_metrics_nl_cmd_get, ptr @tcp_metrics_nl_dump, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @tcp_metrics_nl_cmd_del, ptr null, i8 2, i8 0, i8 1, i8 3 }], align 4
@tcp_metrics_nl_policy = internal constant <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [11 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.67 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.67 zeroinitializer }, [11 x %struct.nla_policy] zeroinitializer }>, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_set_tcpmhash_entries], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_update_metrics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %3 = load volatile ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store volatile i32 1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 81), align 1
  %10 = icmp eq i8 %9, 0
  %11 = icmp ne ptr %3, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %161

13:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17, %13
  %22 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %160, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tcp_metrics_block, ptr %22, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %160

29:                                               ; preds = %24
  %30 = getelementptr %struct.tcp_metrics_block, ptr %22, i32 0, i32 6, i32 0
  store i32 0, ptr %30, align 4
  br label %160

31:                                               ; preds = %17
  %32 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %160, label %34

34:                                               ; preds = %31
  %35 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 0
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %18, align 8
  %38 = sub i32 %36, %37
  %39 = getelementptr inbounds %struct.tcp_metrics_block, ptr %32, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = icmp slt i32 %38, 1
  %45 = lshr i32 %38, 3
  %46 = sub i32 %36, %45
  %47 = select i1 %44, i32 %37, i32 %46
  store i32 %47, ptr %35, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = and i32 %40, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = tail call i32 @llvm.abs.i32(i32 %38, i1 false)
  %53 = ashr i32 %52, 1
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %53, i32 %55)
  %57 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, %56
  %60 = sub i32 %58, %56
  %61 = lshr i32 %60, 2
  %62 = sub i32 %58, %61
  %63 = select i1 %59, i32 %62, i32 %56
  store i32 %63, ptr %57, align 4
  br label %64

64:                                               ; preds = %51, %48
  %65 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, 2147483646
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 82), align 4
  %70 = icmp eq i8 %69, 0
  %71 = and i32 %40, 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 1
  %82 = icmp ugt i32 %81, %76
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 %81, ptr %75, align 4
  br label %84

84:                                               ; preds = %83, %78, %74, %68
  %85 = and i32 %40, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %157

87:                                               ; preds = %84
  %88 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %91 = load i32, ptr %90, align 8
  %92 = icmp ugt i32 %91, %89
  br i1 %92, label %93, label %157

93:                                               ; preds = %87
  store i32 %91, ptr %88, align 4
  br label %157

94:                                               ; preds = %64
  %95 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %96 = load i32, ptr %95, align 8
  %97 = icmp ult i32 %96, %66
  br i1 %97, label %122, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %100 = load i8, ptr %99, align 4
  %101 = and i8 %100, 31
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 82), align 4
  %105 = icmp eq i8 %104, 0
  %106 = and i32 %40, 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = lshr i32 %96, 1
  %111 = tail call i32 @llvm.umax.i32(i32 %110, i32 %66)
  %112 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 2
  store i32 %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = and i32 %40, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %113
  %117 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %95, align 8
  %120 = add i32 %119, %118
  %121 = lshr i32 %120, 1
  store i32 %121, ptr %117, align 4
  br label %157

122:                                              ; preds = %98, %94
  %123 = and i32 %40, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, %66
  %129 = lshr i32 %128, 1
  store i32 %129, ptr %126, align 4
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 82), align 4
  %132 = icmp eq i8 %131, 0
  %133 = and i32 %40, 4
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr %65, align 4
  %142 = icmp ugt i32 %141, %138
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 %141, ptr %137, align 4
  br label %144

144:                                              ; preds = %143, %140, %136, %130
  %145 = and i32 %40, 16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = getelementptr %struct.tcp_metrics_block, ptr %32, i32 0, i32 6, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %151 = load i32, ptr %150, align 8
  %152 = icmp uge i32 %149, %151
  %153 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 57), align 4
  %154 = icmp eq i32 %151, %153
  %155 = select i1 %152, i1 true, i1 %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %147
  store i32 %151, ptr %148, align 4
  br label %157

157:                                              ; preds = %156, %147, %144, %116, %113, %93, %87, %84
  %158 = load volatile i32, ptr @jiffies, align 64
  %159 = getelementptr inbounds %struct.tcp_metrics_block, ptr %32, i32 0, i32 4
  store i32 %158, ptr %159, align 4
  br label %160

160:                                              ; preds = %157, %31, %29, %24, %21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %161

161:                                              ; preds = %160, %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tcp_get_metrics(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.inetpeer_addr, align 4
  %5 = alloca %struct.inetpeer_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 8
  switch i16 %7, label %346 [
    i16 2, label %8
    i16 10, label %15
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.ipv4_addr_key, ptr %4, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inetpeer_addr, ptr %4, i32 0, i32 1
  store i16 2, ptr %12, align 4
  %13 = load i32, ptr %0, align 8
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.inetpeer_addr, ptr %5, i32 0, i32 1
  store i16 2, ptr %14, align 4
  br label %42

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %17
  %21 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, -65536
  %24 = or i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.ipv4_addr_key, ptr %4, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.inetpeer_addr, ptr %4, i32 0, i32 1
  store i16 2, ptr %30, align 4
  %31 = load i32, ptr %0, align 8
  store i32 %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.inetpeer_addr, ptr %5, i32 0, i32 1
  store i16 2, ptr %32, align 4
  br label %42

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %34, i32 16, i1 false) #11
  %35 = getelementptr inbounds %struct.inetpeer_addr, ptr %4, i32 0, i32 1
  store i16 10, ptr %35, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false) #11
  %36 = getelementptr inbounds %struct.inetpeer_addr, ptr %5, i32 0, i32 1
  store i16 10, ptr %36, align 4
  %37 = xor i32 %19, %17
  %38 = xor i32 %37, %22
  %39 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %38, %40
  br label %42

42:                                               ; preds = %33, %26, %8
  %43 = phi i32 [ %13, %8 ], [ %31, %26 ], [ %41, %33 ]
  %44 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %45 = xor i32 %44, %43
  %46 = load i32, ptr @tcp_metrics_hash_log, align 4
  %47 = mul i32 %45, 1640531527
  %48 = sub i32 32, %46
  %49 = lshr i32 %47, %48
  %50 = load ptr, ptr @tcp_metrics_hash, align 4
  %51 = getelementptr %struct.tcpm_hash_bucket, ptr %50, i32 %49
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %99, label %54

54:                                               ; preds = %92, %42
  %55 = phi ptr [ %94, %92 ], [ %52, %42 ]
  %56 = phi i32 [ %93, %92 ], [ 0, %42 ]
  %57 = getelementptr inbounds %struct.tcp_metrics_block, ptr %55, i32 0, i32 2
  %58 = getelementptr inbounds %struct.tcp_metrics_block, ptr %55, i32 0, i32 2, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = icmp eq i16 %59, 2
  %61 = select i1 %60, i32 2, i32 4
  br label %62

62:                                               ; preds = %62, %54
  %63 = phi i32 [ 0, %54 ], [ %70, %62 ]
  %64 = getelementptr [4 x i32], ptr %57, i32 0, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr [4 x i32], ptr %4, i32 0, i32 %63
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  %69 = xor i1 %68, true
  %70 = add nuw nsw i32 %63, 1
  %71 = icmp eq i32 %70, %61
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %73, label %62

73:                                               ; preds = %62
  br i1 %68, label %74, label %92

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.tcp_metrics_block, ptr %55, i32 0, i32 3
  %76 = getelementptr inbounds %struct.tcp_metrics_block, ptr %55, i32 0, i32 3, i32 1
  %77 = load i16, ptr %76, align 4
  %78 = icmp eq i16 %77, 2
  %79 = select i1 %78, i32 2, i32 4
  br label %80

80:                                               ; preds = %80, %74
  %81 = phi i32 [ 0, %74 ], [ %88, %80 ]
  %82 = getelementptr [4 x i32], ptr %75, i32 0, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr [4 x i32], ptr %5, i32 0, i32 %81
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %83, %85
  %87 = xor i1 %86, true
  %88 = add nuw nsw i32 %81, 1
  %89 = icmp eq i32 %88, %79
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %80

91:                                               ; preds = %80
  br i1 %86, label %99, label %92

92:                                               ; preds = %91, %73
  %93 = add i32 %56, 1
  %94 = load volatile ptr, ptr %55, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %54

96:                                               ; preds = %92
  %97 = icmp sgt i32 %93, 5
  %98 = select i1 %97, ptr inttoptr (i32 1 to ptr), ptr null
  br label %99

99:                                               ; preds = %96, %91, %42
  %100 = phi ptr [ null, %42 ], [ %98, %96 ], [ %55, %91 ]
  %101 = icmp eq ptr %100, inttoptr (i32 1 to ptr)
  %102 = select i1 %101, ptr null, ptr %100
  %103 = icmp eq ptr %102, null
  %104 = and i1 %103, %2
  br i1 %104, label %105, label %293

105:                                              ; preds = %99
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %106 = load ptr, ptr @tcp_metrics_hash, align 4
  %107 = getelementptr %struct.tcpm_hash_bucket, ptr %106, i32 %49
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %225, label %110

110:                                              ; preds = %148, %105
  %111 = phi ptr [ %150, %148 ], [ %108, %105 ]
  %112 = phi i32 [ %149, %148 ], [ 0, %105 ]
  %113 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 2
  %114 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 2, i32 1
  %115 = load i16, ptr %114, align 4
  %116 = icmp eq i16 %115, 2
  %117 = select i1 %116, i32 2, i32 4
  br label %118

118:                                              ; preds = %118, %110
  %119 = phi i32 [ 0, %110 ], [ %126, %118 ]
  %120 = getelementptr [4 x i32], ptr %113, i32 0, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr [4 x i32], ptr %4, i32 0, i32 %119
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %121, %123
  %125 = xor i1 %124, true
  %126 = add nuw nsw i32 %119, 1
  %127 = icmp eq i32 %126, %117
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %129, label %118

129:                                              ; preds = %118
  br i1 %124, label %130, label %148

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 3
  %132 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 3, i32 1
  %133 = load i16, ptr %132, align 4
  %134 = icmp eq i16 %133, 2
  %135 = select i1 %134, i32 2, i32 4
  br label %136

136:                                              ; preds = %136, %130
  %137 = phi i32 [ 0, %130 ], [ %144, %136 ]
  %138 = getelementptr [4 x i32], ptr %131, i32 0, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr [4 x i32], ptr %5, i32 0, i32 %137
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %139, %141
  %143 = xor i1 %142, true
  %144 = add nuw nsw i32 %137, 1
  %145 = icmp eq i32 %144, %135
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %147, label %136

147:                                              ; preds = %136
  br i1 %142, label %154, label %148

148:                                              ; preds = %147, %129
  %149 = add i32 %112, 1
  %150 = load volatile ptr, ptr %111, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %110

152:                                              ; preds = %148
  %153 = icmp sgt i32 %149, 5
  br i1 %153, label %210, label %225

154:                                              ; preds = %147
  %155 = icmp ult ptr %111, inttoptr (i32 2 to ptr)
  br i1 %155, label %208, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 360000
  %160 = load volatile i32, ptr @jiffies, align 64
  %161 = sub i32 %159, %160
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %291, !prof !11

163:                                              ; preds = %156
  %164 = load volatile i32, ptr @jiffies, align 64
  store i32 %164, ptr %157, align 4
  %165 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, -4
  %168 = inttoptr i32 %167 to ptr
  %169 = load i32, ptr %168, align 4
  %170 = lshr i32 %169, 4
  %171 = and i32 %170, 15
  %172 = lshr i32 %169, 5
  %173 = and i32 %172, 16
  %174 = or i32 %171, %173
  %175 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 5
  store i32 %174, ptr %175, align 8
  %176 = load i32, ptr %165, align 4
  %177 = and i32 %176, -4
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr i32, ptr %178, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = mul i32 %180, 1000
  %182 = getelementptr inbounds %struct.tcp_metrics_block, ptr %111, i32 0, i32 6
  store i32 %181, ptr %182, align 4
  %183 = load i32, ptr %165, align 4
  %184 = and i32 %183, -4
  %185 = inttoptr i32 %184 to ptr
  %186 = getelementptr i32, ptr %185, i32 4
  %187 = load i32, ptr %186, align 4
  %188 = mul i32 %187, 1000
  %189 = getelementptr %struct.tcp_metrics_block, ptr %111, i32 0, i32 6, i32 1
  store i32 %188, ptr %189, align 4
  %190 = load i32, ptr %165, align 4
  %191 = and i32 %190, -4
  %192 = inttoptr i32 %191 to ptr
  %193 = getelementptr i32, ptr %192, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr %struct.tcp_metrics_block, ptr %111, i32 0, i32 6, i32 2
  store i32 %194, ptr %195, align 4
  %196 = load i32, ptr %165, align 4
  %197 = and i32 %196, -4
  %198 = inttoptr i32 %197 to ptr
  %199 = getelementptr i32, ptr %198, i32 6
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr %struct.tcp_metrics_block, ptr %111, i32 0, i32 6, i32 3
  store i32 %200, ptr %201, align 4
  %202 = load i32, ptr %165, align 4
  %203 = and i32 %202, -4
  %204 = inttoptr i32 %203 to ptr
  %205 = getelementptr i32, ptr %204, i32 8
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr %struct.tcp_metrics_block, ptr %111, i32 0, i32 6, i32 4
  store i32 %206, ptr %207, align 4
  br label %291

208:                                              ; preds = %154
  %209 = icmp eq ptr %111, inttoptr (i32 1 to ptr)
  br i1 %209, label %210, label %225, !prof !11

210:                                              ; preds = %208, %152
  %211 = load ptr, ptr %108, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %229, label %213, !prof !12

213:                                              ; preds = %213, %210
  %214 = phi ptr [ %223, %213 ], [ %211, %210 ]
  %215 = phi ptr [ %222, %213 ], [ %108, %210 ]
  %216 = getelementptr inbounds %struct.tcp_metrics_block, ptr %214, i32 0, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.tcp_metrics_block, ptr %215, i32 0, i32 4
  %219 = load i32, ptr %218, align 4
  %220 = sub i32 %217, %219
  %221 = icmp slt i32 %220, 0
  %222 = select i1 %221, ptr %214, ptr %215
  %223 = load ptr, ptr %214, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %213, !prof !12

225:                                              ; preds = %208, %152, %105
  %226 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %227 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %226, i32 noundef 2592, i32 noundef 112) #12
  %228 = icmp eq ptr %227, null
  br i1 %228, label %291, label %229

229:                                              ; preds = %225, %213, %210
  %230 = phi i1 [ false, %225 ], [ true, %210 ], [ true, %213 ]
  %231 = phi ptr [ %227, %225 ], [ %108, %210 ], [ %222, %213 ]
  %232 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %232, ptr noundef nonnull align 4 dereferenceable(20) %4, i32 20, i1 false) #11
  %233 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %233, ptr noundef nonnull align 4 dereferenceable(20) %5, i32 20, i1 false) #11
  %234 = load volatile i32, ptr @jiffies, align 64
  %235 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 4
  store i32 %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, -4
  %239 = inttoptr i32 %238 to ptr
  %240 = load i32, ptr %239, align 4
  %241 = lshr i32 %240, 4
  %242 = and i32 %241, 15
  %243 = lshr i32 %240, 5
  %244 = and i32 %243, 16
  %245 = or i32 %242, %244
  %246 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 5
  store i32 %245, ptr %246, align 8
  %247 = load i32, ptr %236, align 4
  %248 = and i32 %247, -4
  %249 = inttoptr i32 %248 to ptr
  %250 = getelementptr i32, ptr %249, i32 3
  %251 = load i32, ptr %250, align 4
  %252 = mul i32 %251, 1000
  %253 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 6
  store i32 %252, ptr %253, align 4
  %254 = load i32, ptr %236, align 4
  %255 = and i32 %254, -4
  %256 = inttoptr i32 %255 to ptr
  %257 = getelementptr i32, ptr %256, i32 4
  %258 = load i32, ptr %257, align 4
  %259 = mul i32 %258, 1000
  %260 = getelementptr %struct.tcp_metrics_block, ptr %231, i32 0, i32 6, i32 1
  store i32 %259, ptr %260, align 4
  %261 = load i32, ptr %236, align 4
  %262 = and i32 %261, -4
  %263 = inttoptr i32 %262 to ptr
  %264 = getelementptr i32, ptr %263, i32 5
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr %struct.tcp_metrics_block, ptr %231, i32 0, i32 6, i32 2
  store i32 %265, ptr %266, align 4
  %267 = load i32, ptr %236, align 4
  %268 = and i32 %267, -4
  %269 = inttoptr i32 %268 to ptr
  %270 = getelementptr i32, ptr %269, i32 6
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr %struct.tcp_metrics_block, ptr %231, i32 0, i32 6, i32 3
  store i32 %271, ptr %272, align 4
  %273 = load i32, ptr %236, align 4
  %274 = and i32 %273, -4
  %275 = inttoptr i32 %274 to ptr
  %276 = getelementptr i32, ptr %275, i32 8
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr %struct.tcp_metrics_block, ptr %231, i32 0, i32 6, i32 4
  store i32 %277, ptr %278, align 4
  %279 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 7
  store i16 0, ptr %279, align 8
  %280 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 7, i32 1
  %281 = load i16, ptr %280, align 2
  %282 = and i16 %281, -4096
  store i16 %282, ptr %280, align 2
  %283 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 7, i32 3, i32 2
  store i8 0, ptr %283, align 1
  %284 = getelementptr inbounds %struct.tcp_metrics_block, ptr %231, i32 0, i32 7, i32 3, i32 1
  store i8 0, ptr %284, align 8
  br i1 %230, label %291, label %285, !prof !11

285:                                              ; preds = %229
  %286 = load ptr, ptr @tcp_metrics_hash, align 4
  %287 = getelementptr %struct.tcpm_hash_bucket, ptr %286, i32 %49
  %288 = load ptr, ptr %287, align 4
  store ptr %288, ptr %231, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %289 = load ptr, ptr @tcp_metrics_hash, align 4
  %290 = getelementptr %struct.tcpm_hash_bucket, ptr %289, i32 %49
  store volatile ptr %231, ptr %290, align 4
  br label %291

291:                                              ; preds = %285, %229, %225, %163, %156
  %292 = phi ptr [ %231, %285 ], [ %231, %229 ], [ null, %225 ], [ %111, %156 ], [ %111, %163 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  br label %346

293:                                              ; preds = %99
  br i1 %103, label %346, label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.tcp_metrics_block, ptr %102, i32 0, i32 4
  %296 = load i32, ptr %295, align 4
  %297 = add i32 %296, 360000
  %298 = load volatile i32, ptr @jiffies, align 64
  %299 = sub i32 %297, %298
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %346, !prof !11

301:                                              ; preds = %294
  %302 = load volatile i32, ptr @jiffies, align 64
  store i32 %302, ptr %295, align 4
  %303 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %304 = load i32, ptr %303, align 4
  %305 = and i32 %304, -4
  %306 = inttoptr i32 %305 to ptr
  %307 = load i32, ptr %306, align 4
  %308 = lshr i32 %307, 4
  %309 = and i32 %308, 15
  %310 = lshr i32 %307, 5
  %311 = and i32 %310, 16
  %312 = or i32 %309, %311
  %313 = getelementptr inbounds %struct.tcp_metrics_block, ptr %102, i32 0, i32 5
  store i32 %312, ptr %313, align 8
  %314 = load i32, ptr %303, align 4
  %315 = and i32 %314, -4
  %316 = inttoptr i32 %315 to ptr
  %317 = getelementptr i32, ptr %316, i32 3
  %318 = load i32, ptr %317, align 4
  %319 = mul i32 %318, 1000
  %320 = getelementptr inbounds %struct.tcp_metrics_block, ptr %102, i32 0, i32 6
  store i32 %319, ptr %320, align 4
  %321 = load i32, ptr %303, align 4
  %322 = and i32 %321, -4
  %323 = inttoptr i32 %322 to ptr
  %324 = getelementptr i32, ptr %323, i32 4
  %325 = load i32, ptr %324, align 4
  %326 = mul i32 %325, 1000
  %327 = getelementptr %struct.tcp_metrics_block, ptr %102, i32 0, i32 6, i32 1
  store i32 %326, ptr %327, align 4
  %328 = load i32, ptr %303, align 4
  %329 = and i32 %328, -4
  %330 = inttoptr i32 %329 to ptr
  %331 = getelementptr i32, ptr %330, i32 5
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr %struct.tcp_metrics_block, ptr %102, i32 0, i32 6, i32 2
  store i32 %332, ptr %333, align 4
  %334 = load i32, ptr %303, align 4
  %335 = and i32 %334, -4
  %336 = inttoptr i32 %335 to ptr
  %337 = getelementptr i32, ptr %336, i32 6
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr %struct.tcp_metrics_block, ptr %102, i32 0, i32 6, i32 3
  store i32 %338, ptr %339, align 4
  %340 = load i32, ptr %303, align 4
  %341 = and i32 %340, -4
  %342 = inttoptr i32 %341 to ptr
  %343 = getelementptr i32, ptr %342, i32 8
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr %struct.tcp_metrics_block, ptr %102, i32 0, i32 6, i32 4
  store i32 %344, ptr %345, align 4
  br label %346

346:                                              ; preds = %301, %294, %293, %291, %3
  %347 = phi ptr [ null, %3 ], [ %292, %291 ], [ null, %293 ], [ %100, %294 ], [ %100, %301 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret ptr %347
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_init_metrics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %3 = load volatile ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store volatile i32 1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = icmp eq ptr %3, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %11 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_metrics_block, ptr %11, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.tcp_metrics_block, ptr %11, i32 0, i32 6, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  store i32 %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 82), align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr %struct.tcp_metrics_block, ptr %11, i32 0, i32 6, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @llvm.umin.i32(i32 %28, i32 %33)
  store i32 %34, ptr %31, align 4
  br label %37

35:                                               ; preds = %26, %23
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 2147483647, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr %struct.tcp_metrics_block, ptr %11, i32 0, i32 6, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  store i32 %39, ptr %42, align 8
  br label %49

46:                                               ; preds = %13, %8
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %48 = load i32, ptr %47, align 8
  br label %78

49:                                               ; preds = %45, %41, %37
  %50 = getelementptr %struct.tcp_metrics_block, ptr %11, i32 0, i32 6, i32 0
  %51 = load i32, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %52 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %53 = load i32, ptr %52, align 8
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = udiv i32 %51, 80000
  %57 = shl nuw nsw i32 %56, 1
  %58 = load volatile ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 7
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq ptr %58, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.dst_entry, ptr %58, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -4
  %66 = inttoptr i32 %65 to ptr
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 8192
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = getelementptr i32, ptr %66, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @__msecs_to_jiffies(i32 noundef %72) #11
  br label %74

74:                                               ; preds = %70, %62, %55
  %75 = phi i32 [ %60, %62 ], [ %60, %55 ], [ %73, %70 ]
  %76 = tail call i32 @llvm.umax.i32(i32 %57, i32 %75)
  %77 = add i32 %76, %56
  br label %86

78:                                               ; preds = %49, %46
  %79 = phi i32 [ %48, %46 ], [ %53, %49 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = tail call i32 @jiffies_to_usecs(i32 noundef 300) #11
  %83 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 47
  store i32 %82, ptr %84, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  store i32 %82, ptr %85, align 4
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi i32 [ 300, %81 ], [ %77, %74 ]
  %88 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  store i32 %87, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_peer_is_proven(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.inetpeer_addr, align 4
  %4 = alloca %struct.inetpeer_addr, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %145, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #11, !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #11, !annotation !10
  %7 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.inetpeer_addr, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.inetpeer_addr, ptr %4, i32 0, i32 1
  switch i16 %10, label %135 [
    i16 2, label %13
    i16 10, label %18
  ]

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %3, align 4
  %16 = getelementptr inbounds %struct.ipv4_addr_key, ptr %3, i32 0, i32 1
  store i32 0, ptr %16, align 4
  store i16 2, ptr %11, align 4
  %17 = load i32, ptr %0, align 8
  store i32 %17, ptr %4, align 4
  store i16 2, ptr %12, align 4
  br label %31

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false) #11
  store i16 10, ptr %11, align 4
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false) #11
  store i16 10, ptr %12, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %24, %26
  %28 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %27, %29
  br label %31

31:                                               ; preds = %18, %13
  %32 = phi i32 [ %30, %18 ], [ %17, %13 ]
  %33 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %34 = xor i32 %33, %32
  %35 = load i32, ptr @tcp_metrics_hash_log, align 4
  %36 = mul i32 %34, 1640531527
  %37 = sub i32 32, %35
  %38 = lshr i32 %36, %37
  %39 = load ptr, ptr @tcp_metrics_hash, align 4
  %40 = getelementptr %struct.tcpm_hash_bucket, ptr %39, i32 %38
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %135, label %43

43:                                               ; preds = %80, %31
  %44 = phi ptr [ %81, %80 ], [ %41, %31 ]
  %45 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 2, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 2
  %49 = select i1 %48, i32 2, i32 4
  br label %50

50:                                               ; preds = %50, %43
  %51 = phi i32 [ 0, %43 ], [ %58, %50 ]
  %52 = getelementptr [4 x i32], ptr %45, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr [4 x i32], ptr %3, i32 0, i32 %51
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  %57 = xor i1 %56, true
  %58 = add nuw nsw i32 %51, 1
  %59 = icmp eq i32 %58, %49
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %61, label %50

61:                                               ; preds = %50
  br i1 %56, label %62, label %80

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 3
  %64 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 3, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = icmp eq i16 %65, 2
  %67 = select i1 %66, i32 2, i32 4
  br label %68

68:                                               ; preds = %68, %62
  %69 = phi i32 [ 0, %62 ], [ %76, %68 ]
  %70 = getelementptr [4 x i32], ptr %63, i32 0, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr [4 x i32], ptr %4, i32 0, i32 %69
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %71, %73
  %75 = xor i1 %74, true
  %76 = add nuw nsw i32 %69, 1
  %77 = icmp eq i32 %76, %67
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %68

79:                                               ; preds = %68
  br i1 %74, label %83, label %80

80:                                               ; preds = %79, %61
  %81 = load volatile ptr, ptr %44, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %135, label %43

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 360000
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = sub i32 %86, %87
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %136, !prof !11

90:                                               ; preds = %83
  %91 = load volatile i32, ptr @jiffies, align 64
  store i32 %91, ptr %84, align 4
  %92 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -4
  %95 = inttoptr i32 %94 to ptr
  %96 = load i32, ptr %95, align 4
  %97 = lshr i32 %96, 4
  %98 = and i32 %97, 15
  %99 = lshr i32 %96, 5
  %100 = and i32 %99, 16
  %101 = or i32 %98, %100
  %102 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 5
  store i32 %101, ptr %102, align 8
  %103 = load i32, ptr %92, align 4
  %104 = and i32 %103, -4
  %105 = inttoptr i32 %104 to ptr
  %106 = getelementptr i32, ptr %105, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = mul i32 %107, 1000
  %109 = getelementptr inbounds %struct.tcp_metrics_block, ptr %44, i32 0, i32 6
  store i32 %108, ptr %109, align 4
  %110 = load i32, ptr %92, align 4
  %111 = and i32 %110, -4
  %112 = inttoptr i32 %111 to ptr
  %113 = getelementptr i32, ptr %112, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = mul i32 %114, 1000
  %116 = getelementptr %struct.tcp_metrics_block, ptr %44, i32 0, i32 6, i32 1
  store i32 %115, ptr %116, align 4
  %117 = load i32, ptr %92, align 4
  %118 = and i32 %117, -4
  %119 = inttoptr i32 %118 to ptr
  %120 = getelementptr i32, ptr %119, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr %struct.tcp_metrics_block, ptr %44, i32 0, i32 6, i32 2
  store i32 %121, ptr %122, align 4
  %123 = load i32, ptr %92, align 4
  %124 = and i32 %123, -4
  %125 = inttoptr i32 %124 to ptr
  %126 = getelementptr i32, ptr %125, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr %struct.tcp_metrics_block, ptr %44, i32 0, i32 6, i32 3
  store i32 %127, ptr %128, align 4
  %129 = load i32, ptr %92, align 4
  %130 = and i32 %129, -4
  %131 = inttoptr i32 %130 to ptr
  %132 = getelementptr i32, ptr %131, i32 8
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr %struct.tcp_metrics_block, ptr %44, i32 0, i32 6, i32 4
  store i32 %133, ptr %134, align 4
  br label %136

135:                                              ; preds = %80, %31, %6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  br label %142

136:                                              ; preds = %90, %83
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  %137 = icmp eq ptr %44, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %136
  %139 = getelementptr %struct.tcp_metrics_block, ptr %44, i32 0, i32 6, i32 0
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %136, %135
  br label %143

143:                                              ; preds = %142, %138
  %144 = phi i1 [ false, %142 ], [ true, %138 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %145

145:                                              ; preds = %143, %2
  %146 = phi i1 [ %144, %143 ], [ false, %2 ]
  ret i1 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_cache_get(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %5 = load volatile ptr, ptr %4, align 8
  %6 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %0, ptr noundef %5, i1 noundef zeroext false)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tcp_metrics_block, ptr %6, i32 0, i32 7
  %10 = getelementptr inbounds %struct.tcp_metrics_block, ptr %6, i32 0, i32 7, i32 3
  %11 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tcp_metrics_block, ptr %6, i32 0, i32 7, i32 1
  %13 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 2
  br label %14

14:                                               ; preds = %35, %8
  %15 = load volatile i32, ptr @fastopen_seqlock, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  %19 = load volatile i32, ptr @fastopen_seqlock, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %15, %14 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %24 = load i16, ptr %9, align 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i16 %24, ptr %1, align 2
  br label %27

27:                                               ; preds = %26, %22
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %10, i32 24, i1 false)
  %28 = load i8, ptr %11, align 8
  %29 = icmp slt i8 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i16, ptr %12, align 2
  %32 = and i16 %31, 3072
  %33 = icmp eq i16 %32, 1024
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8 1, ptr %13, align 1
  br label %35

35:                                               ; preds = %34, %30, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %36 = load volatile i32, ptr @fastopen_seqlock, align 4
  %37 = icmp eq i32 %36, %23
  br i1 %37, label %38, label %14

38:                                               ; preds = %35, %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_cache_set(ptr noundef %0, i16 noundef zeroext %1, ptr noundef readonly %2, i1 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %10 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext true)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %9
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 1)) #11
  %13 = load i32, ptr @fastopen_seqlock, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr @fastopen_seqlock, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !18
  %15 = icmp eq i16 %1, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7
  store i16 %1, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  %22 = load i8, ptr %21, align 8
  %23 = icmp sgt i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 24, i1 false)
  br label %45

26:                                               ; preds = %20, %18
  %27 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = lshr i16 %28, 10
  %30 = and i16 %29, 3
  %31 = icmp ult i16 %30, %4
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7, i32 3, i32 1
  %34 = load i8, ptr %33, align 8
  %35 = icmp slt i8 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7, i32 3, i32 2
  %38 = load i8, ptr %37, align 1, !range !19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = shl i16 %4, 10
  %42 = and i16 %41, 3072
  %43 = and i16 %28, -3073
  %44 = or i16 %43, %42
  store i16 %44, ptr %27, align 2
  br label %45

45:                                               ; preds = %40, %36, %32, %26, %24
  %46 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7, i32 1
  %47 = load i16, ptr %46, align 2
  br i1 %3, label %48, label %55

48:                                               ; preds = %45
  %49 = add i16 %47, 1
  %50 = and i16 %49, 1023
  %51 = and i16 %47, -1024
  %52 = or i16 %50, %51
  store i16 %52, ptr %46, align 2
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 7, i32 2
  store i32 %53, ptr %54, align 4
  br label %57

55:                                               ; preds = %45
  %56 = and i16 %47, -1024
  store i16 %56, ptr %46, align 2
  br label %57

57:                                               ; preds = %55, %48
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !20
  %58 = load i32, ptr @fastopen_seqlock, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr @fastopen_seqlock, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 1)) #11
  br label %60

60:                                               ; preds = %57, %9
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %61

61:                                               ; preds = %60, %5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_tcpmhash_entries(ptr noundef %0) #4 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @kstrtouint(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @tcpmhash_entries) #11
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tcp_metrics_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tcp_net_metrics_ops) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #13
  unreachable

4:                                                ; preds = %0
  %5 = tail call i32 @genl_register_family(ptr noundef nonnull @tcp_metrics_nl_family) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #13
  unreachable

8:                                                ; preds = %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcp_net_metrics_init(ptr nocapture noundef readnone %0) #4 section ".init.text" {
  %2 = load i32, ptr @tcpmhash_entries, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @_totalram_pages, align 4
  %6 = icmp ugt i32 %5, 131071
  %7 = select i1 %6, i32 16384, i32 8192
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %2, %1 ], [ %7, %4 ]
  %10 = icmp ugt i32 %9, 1
  %11 = add i32 %9, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #11, !range !21
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %10, i32 %13, i32 0
  store i32 %14, ptr @tcp_metrics_hash_log, align 4
  %15 = shl i32 4, %14
  %16 = tail call noalias ptr @kvmalloc_node(i32 noundef %15, i32 noundef 3520, i32 noundef -1) #14
  store ptr %16, ptr @tcp_metrics_hash, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, i32 -12, i32 0
  ret i32 %18
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_net_metrics_exit_batch(ptr nocapture noundef readnone %0) #9 section ".ref.text" {
  %2 = load i32, ptr @tcp_metrics_hash_log, align 4
  %3 = load ptr, ptr @tcp_metrics_hash, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = phi ptr [ %3, %1 ], [ %23, %21 ]
  %6 = phi i32 [ 0, %1 ], [ %22, %21 ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %7 = load ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %17, %4
  %10 = phi ptr [ %19, %17 ], [ %7, %4 ]
  %11 = phi ptr [ %18, %17 ], [ %5, %4 ]
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8
  store ptr %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.tcp_metrics_block, ptr %10, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %16, ptr noundef nonnull inttoptr (i32 104 to ptr)) #11
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %11, %14 ], [ %10, %9 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9

21:                                               ; preds = %17, %4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %22 = add i32 %6, 1
  %23 = getelementptr %struct.tcpm_hash_bucket, ptr %5, i32 1
  %24 = lshr i32 %22, %2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %4, label %26

26:                                               ; preds = %21
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_metrics_nl_cmd_get(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.inetpeer_addr, align 4
  %6 = alloca %struct.inetpeer_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %10, i32 4
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.inetpeer_addr, ptr %6, i32 0, i32 1
  store i16 2, ptr %15, align 4
  br label %37

16:                                               ; preds = %2
  %17 = getelementptr ptr, ptr %8, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %141, label %20

20:                                               ; preds = %16
  %21 = load i16, ptr %18, align 2
  %22 = icmp eq i16 %21, 20
  br i1 %22, label %23, label %141

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !alias.scope !22, !annotation !10
  %24 = call i32 @nla_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %18, i32 noundef 16) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %25 = getelementptr inbounds %struct.inetpeer_addr, ptr %6, i32 0, i32 1
  store i16 10, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, %26
  %30 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %29, %31
  %33 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %32, %34
  %36 = load ptr, ptr %7, align 4
  br label %37

37:                                               ; preds = %23, %12
  %38 = phi ptr [ %8, %12 ], [ %36, %23 ]
  %39 = phi i32 [ %14, %12 ], [ %35, %23 ]
  %40 = getelementptr ptr, ptr %38, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %41, i32 4
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %5, align 4
  %46 = getelementptr inbounds %struct.ipv4_addr_key, ptr %5, i32 0, i32 1
  store i32 0, ptr %46, align 4
  br label %56

47:                                               ; preds = %37
  %48 = getelementptr ptr, ptr %38, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr %49, align 2
  %53 = icmp eq i16 %52, 20
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11, !alias.scope !25, !annotation !10
  %55 = call i32 @nla_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %49, i32 noundef 16) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %56

56:                                               ; preds = %54, %43
  %57 = phi i16 [ 10, %54 ], [ 2, %43 ]
  %58 = getelementptr inbounds %struct.inetpeer_addr, ptr %5, i32 0, i32 1
  store i16 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %51, %47
  %60 = phi i1 [ false, %56 ], [ true, %51 ], [ true, %47 ]
  %61 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %141, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = load i8, ptr %65, align 2
  %67 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %1, align 4
  %70 = call ptr @genlmsg_put(ptr noundef nonnull %61, i32 noundef %68, i32 noundef %69, ptr noundef nonnull @tcp_metrics_nl_family, i32 noundef 0, i8 noundef zeroext %66) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %139, label %72

72:                                               ; preds = %63
  %73 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %74 = xor i32 %73, %39
  %75 = load i32, ptr @tcp_metrics_hash_log, align 4
  %76 = mul i32 %74, 1640531527
  %77 = sub i32 32, %75
  %78 = lshr i32 %76, %77
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %79 = load ptr, ptr @tcp_metrics_hash, align 4
  %80 = getelementptr %struct.tcpm_hash_bucket, ptr %79, i32 %78
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %122, %72
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %139

84:                                               ; preds = %122, %72
  %85 = phi ptr [ %123, %122 ], [ %81, %72 ]
  %86 = getelementptr inbounds %struct.tcp_metrics_block, ptr %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.tcp_metrics_block, ptr %85, i32 0, i32 3, i32 1
  %88 = load i16, ptr %87, align 4
  %89 = icmp eq i16 %88, 2
  %90 = select i1 %89, i32 2, i32 4
  br label %91

91:                                               ; preds = %91, %84
  %92 = phi i32 [ 0, %84 ], [ %99, %91 ]
  %93 = getelementptr [4 x i32], ptr %86, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr [4 x i32], ptr %6, i32 0, i32 %92
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %94, %96
  %98 = xor i1 %97, true
  %99 = add nuw nsw i32 %92, 1
  %100 = icmp eq i32 %99, %90
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %102, label %91

102:                                              ; preds = %91
  br i1 %97, label %103, label %122

103:                                              ; preds = %102
  br i1 %60, label %125, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.tcp_metrics_block, ptr %85, i32 0, i32 2
  %106 = getelementptr inbounds %struct.tcp_metrics_block, ptr %85, i32 0, i32 2, i32 1
  %107 = load i16, ptr %106, align 4
  %108 = icmp eq i16 %107, 2
  %109 = select i1 %108, i32 2, i32 4
  br label %110

110:                                              ; preds = %110, %104
  %111 = phi i32 [ 0, %104 ], [ %118, %110 ]
  %112 = getelementptr [4 x i32], ptr %105, i32 0, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr [4 x i32], ptr %5, i32 0, i32 %111
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %113, %115
  %117 = xor i1 %116, true
  %118 = add nuw nsw i32 %111, 1
  %119 = icmp eq i32 %118, %109
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %110

121:                                              ; preds = %110
  br i1 %116, label %125, label %122

122:                                              ; preds = %121, %102
  %123 = load volatile ptr, ptr %85, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %83, label %84

125:                                              ; preds = %121, %103
  %126 = call fastcc i32 @tcp_metrics_fill_info(ptr noundef nonnull %61, ptr noundef nonnull %85)
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %70, i32 -20
  %130 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 14
  %131 = load ptr, ptr %130, align 8
  %132 = ptrtoint ptr %131 to i32
  %133 = ptrtoint ptr %129 to i32
  %134 = sub i32 %132, %133
  store i32 %134, ptr %129, align 4
  %135 = load i32, ptr %67, align 4
  %136 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %137 = call i32 @netlink_unicast(ptr noundef %136, ptr noundef nonnull %61, i32 noundef %135, i32 noundef 64) #11
  %138 = call i32 @llvm.smin.i32(i32 %137, i32 0) #11
  br label %141

139:                                              ; preds = %125, %83, %63
  %140 = phi i32 [ %126, %125 ], [ -90, %63 ], [ -3, %83 ]
  call void @kfree_skb_reason(ptr noundef nonnull %61, i32 noundef 0) #11
  br label %141

141:                                              ; preds = %139, %128, %59, %20, %16
  %142 = phi i32 [ %140, %139 ], [ %138, %128 ], [ -12, %59 ], [ -97, %16 ], [ -22, %20 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_metrics_nl_dump(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr @tcp_metrics_hash_log, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %5, %3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  br label %13

13:                                               ; preds = %60, %10
  %14 = phi i32 [ %5, %10 ], [ %62, %60 ]
  %15 = phi i32 [ %7, %10 ], [ 0, %60 ]
  %16 = load ptr, ptr @tcp_metrics_hash, align 4
  %17 = getelementptr %struct.tcpm_hash_bucket, ptr %16, i32 %14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %55, %13
  %21 = phi ptr [ %57, %55 ], [ %18, %13 ]
  %22 = phi i32 [ %56, %55 ], [ 0, %13 ]
  %23 = icmp slt i32 %22, %15
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.nlmsghdr, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @genlmsg_put(ptr noundef %0, i32 noundef %27, i32 noundef %30, ptr noundef nonnull @tcp_metrics_nl_family, i32 noundef 2, i8 noundef zeroext 1) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %24
  %34 = tail call fastcc i32 @tcp_metrics_fill_info(ptr noundef %0, ptr noundef nonnull %21) #11
  %35 = icmp slt i32 %34, 0
  %36 = getelementptr i8, ptr %31, i32 -20
  br i1 %35, label %37, label %50

37:                                               ; preds = %33
  %38 = icmp eq ptr %36, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, %36
  br i1 %42, label %43, label %45, !prof !11

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  %44 = load ptr, ptr %40, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi ptr [ %44, %43 ], [ %41, %39 ]
  %47 = ptrtoint ptr %36 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  tail call void @skb_trim(ptr noundef %0, i32 noundef %49) #11
  br label %59

50:                                               ; preds = %33
  %51 = load ptr, ptr %12, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = ptrtoint ptr %36 to i32
  %54 = sub i32 %52, %53
  store i32 %54, ptr %36, align 4
  br label %55

55:                                               ; preds = %50, %20
  %56 = add i32 %22, 1
  %57 = load volatile ptr, ptr %21, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %20

59:                                               ; preds = %45, %37, %24
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %65

60:                                               ; preds = %55, %13
  %61 = phi i32 [ 0, %13 ], [ %56, %55 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %62 = add i32 %14, 1
  %63 = lshr i32 %62, %3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %13, label %65

65:                                               ; preds = %60, %59, %2
  %66 = phi i32 [ %14, %59 ], [ %5, %2 ], [ %62, %60 ]
  %67 = phi i32 [ %22, %59 ], [ %7, %2 ], [ %61, %60 ]
  store i32 %66, ptr %4, align 4
  store i32 %67, ptr %6, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_metrics_nl_cmd_del(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.inetpeer_addr, align 4
  %6 = alloca %struct.inetpeer_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %10, i32 4
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.inetpeer_addr, ptr %6, i32 0, i32 1
  store i16 2, ptr %15, align 4
  br label %56

16:                                               ; preds = %2
  %17 = getelementptr ptr, ptr %8, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = load i16, ptr %18, align 2
  %22 = icmp eq i16 %21, 20
  br i1 %22, label %23, label %141

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !alias.scope !28, !annotation !10
  %24 = call i32 @nla_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %18, i32 noundef 16) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %25 = getelementptr inbounds %struct.inetpeer_addr, ptr %6, i32 0, i32 1
  store i16 10, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, %26
  %30 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %29, %31
  %33 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %32, %34
  %36 = load ptr, ptr %7, align 4
  br label %56

37:                                               ; preds = %16
  %38 = load i32, ptr @tcp_metrics_hash_log, align 4
  %39 = load ptr, ptr @tcp_metrics_hash, align 4
  br label %40

40:                                               ; preds = %51, %37
  %41 = phi ptr [ %39, %37 ], [ %53, %51 ]
  %42 = phi i32 [ 0, %37 ], [ %52, %51 ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %43 = load ptr, ptr %41, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %45, %40
  %46 = phi ptr [ %49, %45 ], [ %43, %40 ]
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %41, align 4
  %48 = getelementptr inbounds %struct.tcp_metrics_block, ptr %46, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %48, ptr noundef nonnull inttoptr (i32 104 to ptr)) #11
  %49 = load ptr, ptr %41, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %45

51:                                               ; preds = %45, %40
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %52 = add i32 %42, 1
  %53 = getelementptr %struct.tcpm_hash_bucket, ptr %41, i32 1
  %54 = lshr i32 %52, %38
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %40, label %141

56:                                               ; preds = %23, %12
  %57 = phi ptr [ %36, %23 ], [ %8, %12 ]
  %58 = phi i32 [ %35, %23 ], [ %14, %12 ]
  %59 = getelementptr ptr, ptr %57, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %60, i32 4
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %5, align 4
  %65 = getelementptr inbounds %struct.ipv4_addr_key, ptr %5, i32 0, i32 1
  store i32 0, ptr %65, align 4
  br label %75

66:                                               ; preds = %56
  %67 = getelementptr ptr, ptr %57, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i16, ptr %68, align 2
  %72 = icmp eq i16 %71, 20
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11, !alias.scope !31, !annotation !10
  %74 = call i32 @nla_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %68, i32 noundef 16) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi i16 [ 10, %73 ], [ 2, %62 ]
  %77 = getelementptr inbounds %struct.inetpeer_addr, ptr %5, i32 0, i32 1
  store i16 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %70, %66
  %79 = phi i1 [ false, %75 ], [ true, %70 ], [ true, %66 ]
  %80 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %81 = xor i32 %80, %58
  %82 = load i32, ptr @tcp_metrics_hash_log, align 4
  %83 = mul i32 %81, 1640531527
  %84 = sub i32 32, %82
  %85 = lshr i32 %83, %84
  %86 = load ptr, ptr @tcp_metrics_hash, align 4
  %87 = getelementptr %struct.tcpm_hash_bucket, ptr %86, i32 %85
  call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  br label %141

91:                                               ; preds = %134, %78
  %92 = phi ptr [ %137, %134 ], [ %88, %78 ]
  %93 = phi i1 [ %136, %134 ], [ false, %78 ]
  %94 = phi ptr [ %135, %134 ], [ %87, %78 ]
  %95 = getelementptr inbounds %struct.tcp_metrics_block, ptr %92, i32 0, i32 3
  %96 = getelementptr inbounds %struct.tcp_metrics_block, ptr %92, i32 0, i32 3, i32 1
  %97 = load i16, ptr %96, align 4
  %98 = icmp eq i16 %97, 2
  %99 = select i1 %98, i32 2, i32 4
  br label %100

100:                                              ; preds = %100, %91
  %101 = phi i32 [ 0, %91 ], [ %108, %100 ]
  %102 = getelementptr [4 x i32], ptr %95, i32 0, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr [4 x i32], ptr %6, i32 0, i32 %101
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %103, %105
  %107 = xor i1 %106, true
  %108 = add nuw nsw i32 %101, 1
  %109 = icmp eq i32 %108, %99
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %111, label %100

111:                                              ; preds = %100
  br i1 %106, label %112, label %134

112:                                              ; preds = %111
  br i1 %79, label %131, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.tcp_metrics_block, ptr %92, i32 0, i32 2
  %115 = getelementptr inbounds %struct.tcp_metrics_block, ptr %92, i32 0, i32 2, i32 1
  %116 = load i16, ptr %115, align 4
  %117 = icmp eq i16 %116, 2
  %118 = select i1 %117, i32 2, i32 4
  br label %119

119:                                              ; preds = %119, %113
  %120 = phi i32 [ 0, %113 ], [ %127, %119 ]
  %121 = getelementptr [4 x i32], ptr %114, i32 0, i32 %120
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr [4 x i32], ptr %5, i32 0, i32 %120
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %122, %124
  %126 = xor i1 %125, true
  %127 = add nuw nsw i32 %120, 1
  %128 = icmp eq i32 %127, %118
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %130, label %119

130:                                              ; preds = %119
  br i1 %125, label %131, label %134

131:                                              ; preds = %130, %112
  %132 = load ptr, ptr %92, align 8
  store ptr %132, ptr %94, align 4
  %133 = getelementptr inbounds %struct.tcp_metrics_block, ptr %92, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %133, ptr noundef nonnull inttoptr (i32 104 to ptr)) #11
  br label %134

134:                                              ; preds = %131, %130, %111
  %135 = phi ptr [ %94, %131 ], [ %92, %130 ], [ %92, %111 ]
  %136 = phi i1 [ true, %131 ], [ %93, %130 ], [ %93, %111 ]
  %137 = load ptr, ptr %135, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %91

139:                                              ; preds = %134
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #11
  %140 = select i1 %136, i32 0, i32 -3
  br label %141

141:                                              ; preds = %139, %90, %51, %20
  %142 = phi i32 [ -3, %90 ], [ %140, %139 ], [ -22, %20 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_metrics_fill_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.tcp_fastopen_metrics], align 8
  %13 = getelementptr inbounds %struct.tcp_metrics_block, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.tcp_metrics_block, ptr %1, i32 0, i32 3, i32 1
  %15 = load i16, ptr %14, align 8
  switch i16 %15, label %149 [
    i16 2, label %16
    i16 10, label %25
  ]

16:                                               ; preds = %2
  %17 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 %17, ptr %11, align 4
  %18 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %149, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tcp_metrics_block, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 %22, ptr %10, align 4
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %149, label %32

25:                                               ; preds = %2
  %26 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 16, ptr noundef %13) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %149, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tcp_metrics_block, ptr %1, i32 0, i32 2
  %30 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 16, ptr noundef %29) #11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %149, label %32

32:                                               ; preds = %28, %20
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = getelementptr inbounds %struct.tcp_metrics_block, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %37 = call i32 @jiffies_to_msecs(i32 noundef %36) #11
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %9, align 8
  %39 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %9, i32 noundef 13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %149, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 0, ptr noundef null) #11
  %45 = icmp slt i32 %44, 0
  %46 = icmp eq ptr %43, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %149, label %48

48:                                               ; preds = %78, %41
  %49 = phi i32 [ %79, %78 ], [ 0, %41 ]
  %50 = phi i32 [ %80, %78 ], [ 0, %41 ]
  %51 = getelementptr %struct.tcp_metrics_block, ptr %1, i32 0, i32 6, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = add nuw nsw i32 %49, 1
  br label %78

56:                                               ; preds = %48
  switch i32 %49, label %71 [
    i32 0, label %57
    i32 1, label %64
  ]

57:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 %52, ptr %8, align 4
  %58 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %149, label %60

60:                                               ; preds = %57
  %61 = add i32 %50, 1
  %62 = udiv i32 %52, 1000
  %63 = call i32 @llvm.umax.i32(i32 %62, i32 1)
  br label %71

64:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 %52, ptr %7, align 4
  %65 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %149, label %67

67:                                               ; preds = %64
  %68 = add i32 %50, 1
  %69 = udiv i32 %52, 1000
  %70 = call i32 @llvm.umax.i32(i32 %69, i32 1)
  br label %71

71:                                               ; preds = %67, %60, %56
  %72 = phi i32 [ %70, %67 ], [ %63, %60 ], [ %52, %56 ]
  %73 = phi i32 [ %68, %67 ], [ %61, %60 ], [ %50, %56 ]
  %74 = add nuw nsw i32 %49, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 %72, ptr %6, align 4
  %75 = call i32 @nla_put(ptr noundef %0, i32 noundef %74, i32 noundef 4, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %76 = icmp slt i32 %75, 0
  %77 = add i32 %73, 1
  br i1 %76, label %149, label %78

78:                                               ; preds = %71, %54
  %79 = phi i32 [ %55, %54 ], [ %74, %71 ]
  %80 = phi i32 [ %50, %54 ], [ %77, %71 ]
  %81 = icmp eq i32 %79, 5
  br i1 %81, label %82, label %48

82:                                               ; preds = %78
  %83 = icmp eq i32 %80, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %82
  %85 = load ptr, ptr %42, align 8
  %86 = ptrtoint ptr %85 to i32
  %87 = ptrtoint ptr %43 to i32
  %88 = sub i32 %86, %87
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %43, align 2
  br label %101

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = icmp ugt ptr %92, %43
  br i1 %93, label %94, label %96, !prof !11

94:                                               ; preds = %90
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  %95 = load ptr, ptr %91, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi ptr [ %95, %94 ], [ %92, %90 ]
  %98 = ptrtoint ptr %43 to i32
  %99 = ptrtoint ptr %97 to i32
  %100 = sub i32 %98, %99
  call void @skb_trim(ptr noundef %0, i32 noundef %100) #11
  br label %101

101:                                              ; preds = %96, %84
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #11
  %102 = getelementptr inbounds %struct.tcp_metrics_block, ptr %1, i32 0, i32 7
  br label %103

103:                                              ; preds = %111, %101
  %104 = load volatile i32, ptr @fastopen_seqlock, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %107, %103
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  %108 = load volatile i32, ptr @fastopen_seqlock, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %107

111:                                              ; preds = %107, %103
  %112 = phi i32 [ %104, %103 ], [ %108, %107 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef align 8 dereferenceable(32) %102, i32 32, i1 false)
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %113 = load volatile i32, ptr @fastopen_seqlock, align 4
  %114 = icmp eq i32 %113, %112
  br i1 %114, label %115, label %103

115:                                              ; preds = %111
  %116 = load i16, ptr %12, align 8
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 %116, ptr %5, align 2
  %119 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %147, label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %12, i32 0, i32 1
  %123 = load i16, ptr %122, align 2
  %124 = and i16 %123, 1023
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 %124, ptr %4, align 2
  %127 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %126
  %130 = load volatile i32, ptr @jiffies, align 64
  %131 = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %12, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = sub i32 %130, %132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %134 = call i32 @jiffies_to_msecs(i32 noundef %133) #11
  %135 = zext i32 %134 to i64
  store i64 %135, ptr %3, align 8
  %136 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %129, %121
  %139 = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %12, i32 0, i32 3, i32 1
  %140 = load i8, ptr %139, align 8
  %141 = icmp sgt i8 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = zext i8 %140 to i32
  %144 = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %12, i32 0, i32 3
  %145 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef %143, ptr noundef %144) #11
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %129, %126, %118
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #11
  br label %149

148:                                              ; preds = %142, %138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #11
  br label %149

149:                                              ; preds = %148, %147, %71, %64, %57, %41, %32, %28, %25, %20, %16, %2
  %150 = phi i32 [ -97, %2 ], [ -90, %32 ], [ -90, %28 ], [ -90, %25 ], [ -90, %20 ], [ -90, %16 ], [ -90, %41 ], [ 0, %148 ], [ -90, %147 ], [ -90, %57 ], [ -90, %64 ], [ -90, %71 ]
  ret i32 %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{i64 2148854904}
!9 = !{i64 2148855121}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 1073205, i32 2146410443}
!13 = !{i64 2156974569}
!14 = !{i64 2149420773}
!15 = !{i64 2149420615}
!16 = !{i64 2149420917}
!17 = !{i64 2149407350}
!18 = !{i64 2149407649}
!19 = !{i8 0, i8 2}
!20 = !{i64 2149407950}
!21 = !{i32 0, i32 33}
!22 = !{!23}
!23 = distinct !{!23, !24, !"nla_get_in6_addr: argument 0"}
!24 = distinct !{!24, !"nla_get_in6_addr"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"nla_get_in6_addr: argument 0"}
!27 = distinct !{!27, !"nla_get_in6_addr"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"nla_get_in6_addr: argument 0"}
!30 = distinct !{!30, !"nla_get_in6_addr"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"nla_get_in6_addr: argument 0"}
!33 = distinct !{!33, !"nla_get_in6_addr"}
