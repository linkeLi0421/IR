; ModuleID = '/llk/IR/net/ipv6/ioam6.c_pt.bc'
source_filename = "../net/ipv6/ioam6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.134, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.134 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.lock_class_key = type {}
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.ioam6_pernet_data = type { %struct.mutex, %struct.rhashtable, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ioam6_trace_hdr = type { i16, i16, %union.anon.139, [0 x i8] }
%union.anon.139 = type { i32 }
%struct.ioam6_namespace = type { %struct.rhash_head, %struct.callback_head, ptr, i16, i32, i64 }
%struct.rhash_head = type { ptr }
%struct.ioam6_schema = type { %struct.rhash_head, %struct.callback_head, ptr, i32, i32, i32, [0 x i8] }
%struct.sk_buff = type { %union.anon.75, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.101 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [16 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, %struct.netdevice_tracker, [48 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@rht_ns_params = internal constant %struct.rhashtable_params { i16 0, i16 2, i16 16, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @ioam6_ns_cmpfn }, align 4
@ioam6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ioam6_net_init, ptr null, ptr @ioam6_net_exit, ptr null, ptr null, i32 0 }, align 4
@ioam6_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"IOAM6\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 3, i8 7, i8 0, i8 0, ptr null, ptr null, ptr null, ptr @ioam6_genl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [32 x i8] c"\016In-situ OAM (IOAM) with IPv6\0A\00", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@ioam6_net_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&nsdata->lock\00", align 1
@rht_sc_params = internal constant %struct.rhashtable_params { i16 0, i16 4, i16 16, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @ioam6_sc_cmpfn }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ioam6_genl_ops = internal constant [7 x %struct.genl_ops] [%struct.genl_ops { ptr @ioam6_genl_addns, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_addns, i32 3, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_delns, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_delns, i32 1, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @ioam6_genl_dumpns_start, ptr @ioam6_genl_dumpns, ptr @ioam6_genl_dumpns_done, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_addsc, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_addsc, i32 5, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_delsc, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_delsc, i32 4, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @ioam6_genl_dumpsc_start, ptr @ioam6_genl_dumpsc, ptr @ioam6_genl_dumpsc_done, ptr null, i32 0, i8 6, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_ns_set_schema, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_ns_sc, i32 6, i8 7, i8 0, i8 1, i8 3 }], align 4
@ioam6_genl_policy_addns = internal constant [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@ioam6_genl_policy_delns = internal constant [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@ioam6_genl_policy_addsc = internal constant [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1020, %union.anon.84 zeroinitializer }], align 4
@ioam6_genl_policy_delsc = internal constant [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@ioam6_genl_policy_ns_sc = internal constant [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ioam6_namespace(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  store i16 %1, ptr %3, align 2
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 36
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %5, i32 0, i32 1
  %7 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %6, ptr noundef nonnull %3, [7 x i32] [i32 131072, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %0, ptr noundef %1, [7 x i32] %2) unnamed_addr #2 {
  %4 = alloca %struct.rhashtable_compare_arg, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %5 = extractvalue [7 x i32] %2, 6
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  %8 = load volatile ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 7
  %10 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 1
  %11 = icmp eq i32 %5, 0
  %12 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  br label %13

13:                                               ; preds = %73, %3
  %14 = phi ptr [ %8, %3 ], [ %75, %73 ]
  %15 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  %19 = call i32 %17(ptr noundef %1, i32 noundef %18, i32 noundef %16) #15
  %20 = load i32, ptr %14, align 64
  %21 = add i32 %20, -1
  %22 = and i32 %21, %19
  %23 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !9

26:                                               ; preds = %13
  %27 = call ptr @rht_bucket_nested(ptr noundef %14, i32 noundef %22) #15
  br label %30

28:                                               ; preds = %13
  %29 = getelementptr %struct.bucket_table, ptr %14, i32 0, i32 8, i32 %22
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ %29, %28 ]
  %32 = ptrtoint ptr %31 to i32
  %33 = or i32 %32, 1
  %34 = inttoptr i32 %33 to ptr
  br label %35

35:                                               ; preds = %70, %30
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %36 = load volatile ptr, ptr %31, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %33, i32 %38
  %41 = inttoptr i32 %40 to ptr
  %42 = and i32 %40, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %65, %35
  %45 = phi ptr [ %66, %65 ], [ %41, %35 ]
  %46 = load i16, ptr %12, align 2
  %47 = zext i16 %46 to i32
  %48 = sub nsw i32 0, %47
  %49 = getelementptr i8, ptr %45, i32 %48
  br i1 %11, label %53, label %50

50:                                               ; preds = %44
  %51 = call i32 %6(ptr noundef nonnull %4, ptr noundef %49) #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %65

53:                                               ; preds = %44
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.rhashtable, ptr %54, i32 0, i32 3, i32 2
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %49, i32 %57
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.rhashtable, ptr %54, i32 0, i32 3, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 @bcmp(ptr %58, ptr %59, i32 %62) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %53, %50
  %66 = load volatile ptr, ptr %45, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %44, label %70

70:                                               ; preds = %65, %35
  %71 = phi ptr [ %41, %35 ], [ %66, %65 ]
  %72 = icmp eq ptr %71, %34
  br i1 %72, label %73, label %35

73:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %74 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 5
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %13, !prof !9

77:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %85

78:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %79 = icmp eq ptr %45, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %78
  %81 = load i16, ptr %12, align 2
  %82 = zext i16 %81 to i32
  %83 = sub nsw i32 0, %82
  %84 = getelementptr i8, ptr %45, i32 %83
  br label %85

85:                                               ; preds = %80, %78, %77
  %86 = phi ptr [ %84, %80 ], [ null, %78 ], [ null, %77 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret ptr %86
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ioam6_fill_trace_data(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.gnet_stats_queue, align 4
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %2, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %423

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ioam6_namespace, ptr %1, i32 0, i32 2
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 1
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = icmp eq ptr %14, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ioam6_schema, ptr %14, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = sdiv i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = add i8 %25, 1
  br label %27

27:                                               ; preds = %21, %19, %12
  %28 = phi i8 [ %26, %21 ], [ 1, %19 ], [ 0, %12 ]
  %29 = lshr i16 %9, 8
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 127
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = zext i8 %31 to i32
  %35 = lshr i16 %9, 3
  %36 = and i16 %35, 31
  %37 = zext i16 %36 to i32
  %38 = zext i8 %28 to i32
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp ugt i32 %39, %34
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %27
  %42 = or i16 %9, 4
  br label %421

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.ioam6_trace_hdr, ptr %2, i32 0, i32 3
  %45 = lshr i16 %9, 6
  %46 = and i16 %45, 508
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = lshr i16 %9, 1
  %50 = and i16 %49, 124
  %51 = zext i16 %50 to i32
  %52 = sub nsw i32 0, %51
  %53 = getelementptr i8, ptr %48, i32 %52
  %54 = mul nsw i32 %38, -4
  %55 = getelementptr i8, ptr %53, i32 %54
  %56 = and i32 %16, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = getelementptr i8, ptr %60, i32 %63
  %65 = getelementptr inbounds %struct.ipv6hdr, ptr %64, i32 0, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = sext i1 %3 to i8
  %68 = add i8 %66, %67
  %69 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 36), align 4
  %70 = zext i8 %68 to i32
  %71 = shl nuw i32 %70, 24
  %72 = or i32 %71, %69
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #15
  store i32 %73, ptr %55, align 4
  %74 = getelementptr i8, ptr %55, i32 4
  %75 = load i32, ptr %15, align 1
  br label %76

76:                                               ; preds = %58, %43
  %77 = phi i32 [ %75, %58 ], [ %16, %43 ]
  %78 = phi ptr [ %74, %58 ], [ %55, %43 ]
  %79 = and i32 %77, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %115, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 69
  %87 = load volatile ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.inet6_dev, ptr %87, i32 0, i32 32, i32 49
  %89 = load i32, ptr %88, align 4
  %90 = trunc i32 %89 to i16
  br label %91

91:                                               ; preds = %85, %81
  %92 = phi i16 [ %90, %85 ], [ -1, %81 ]
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #15
  store i16 %93, ptr %78, align 2
  %94 = getelementptr i8, ptr %78, i32 2
  %95 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -2
  %98 = inttoptr i32 %97 to ptr
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 14
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 69
  %106 = load volatile ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.inet6_dev, ptr %106, i32 0, i32 32, i32 49
  %108 = load i32, ptr %107, align 4
  %109 = trunc i32 %108 to i16
  br label %110

110:                                              ; preds = %104, %91
  %111 = phi i16 [ %109, %104 ], [ -1, %91 ]
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #15
  store i16 %112, ptr %94, align 2
  %113 = getelementptr i8, ptr %78, i32 4
  %114 = load i32, ptr %15, align 1
  br label %115

115:                                              ; preds = %110, %76
  %116 = phi i32 [ %114, %110 ], [ %77, %76 ]
  %117 = phi ptr [ %113, %110 ], [ %78, %76 ]
  %118 = and i32 %116, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %143, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %126 = load i64, ptr %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  store i64 %129, ptr %125, align 8
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi i64 [ %129, %128 ], [ %126, %124 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #15, !annotation !13
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %7, i64 noundef %131) #15
  %132 = load i64, ptr %7, align 8
  %133 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  %134 = load i32, ptr %133, align 8
  %135 = sdiv i32 %134, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  %136 = trunc i64 %132 to i32
  %137 = call i32 @llvm.bswap.i32(i32 %136) #15
  br label %138

138:                                              ; preds = %130, %120
  %139 = phi i32 [ 0, %120 ], [ %135, %130 ]
  %140 = phi i32 [ -1, %120 ], [ %137, %130 ]
  store i32 %140, ptr %117, align 4
  %141 = getelementptr i8, ptr %117, i32 4
  %142 = load i32, ptr %15, align 1
  br label %143

143:                                              ; preds = %138, %115
  %144 = phi i32 [ %116, %115 ], [ %142, %138 ]
  %145 = phi i32 [ 0, %115 ], [ %139, %138 ]
  %146 = phi ptr [ %117, %115 ], [ %141, %138 ]
  %147 = and i32 %144, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %176, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %172, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %155 = load i64, ptr %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = call i64 @ktime_get_with_offset(i32 noundef 0) #15
  store i64 %158, ptr %154, align 8
  %159 = load i32, ptr %15, align 1
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi i64 [ %158, %157 ], [ %155, %153 ]
  %162 = phi i32 [ %159, %157 ], [ %144, %153 ]
  %163 = and i32 %162, 32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #15, !annotation !13
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %161) #15
  %166 = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1
  %167 = load i32, ptr %166, align 8
  %168 = sdiv i32 %167, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %169

169:                                              ; preds = %165, %160
  %170 = phi i32 [ %168, %165 ], [ %145, %160 ]
  %171 = call i32 @llvm.bswap.i32(i32 %170) #15
  br label %172

172:                                              ; preds = %169, %149
  %173 = phi i32 [ %171, %169 ], [ -1, %149 ]
  store i32 %173, ptr %146, align 4
  %174 = getelementptr i8, ptr %146, i32 4
  %175 = load i32, ptr %15, align 1
  br label %176

176:                                              ; preds = %172, %143
  %177 = phi i32 [ %175, %172 ], [ %144, %143 ]
  %178 = phi ptr [ %174, %172 ], [ %146, %143 ]
  %179 = and i32 %177, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  store i32 -1, ptr %178, align 4
  %182 = getelementptr i8, ptr %178, i32 4
  %183 = load i32, ptr %15, align 1
  br label %184

184:                                              ; preds = %181, %176
  %185 = phi i32 [ %183, %181 ], [ %177, %176 ]
  %186 = phi ptr [ %182, %181 ], [ %178, %176 ]
  %187 = and i32 %185, 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.ioam6_namespace, ptr %1, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  store i32 %191, ptr %186, align 4
  %192 = getelementptr i8, ptr %186, i32 4
  %193 = load i32, ptr %15, align 1
  br label %194

194:                                              ; preds = %189, %184
  %195 = phi i32 [ %193, %189 ], [ %185, %184 ]
  %196 = phi ptr [ %192, %189 ], [ %186, %184 ]
  %197 = and i32 %195, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %227, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, -2
  %203 = inttoptr i32 %202 to ptr
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.net_device, ptr %204, i32 0, i32 14
  %206 = load i32, ptr %205, align 8
  %207 = and i32 %206, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %199
  %210 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %211 = load i16, ptr %210, align 4
  %212 = zext i16 %211 to i32
  %213 = getelementptr inbounds %struct.net_device, ptr %204, i32 0, i32 87
  %214 = load ptr, ptr %213, align 64
  %215 = getelementptr %struct.netdev_queue, ptr %214, i32 %212, i32 2
  %216 = load volatile ptr, ptr %215, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #15
  %217 = getelementptr inbounds %struct.Qdisc, ptr %216, i32 0, i32 12
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.Qdisc, ptr %216, i32 0, i32 18
  call void @gnet_stats_add_queue(ptr noundef nonnull %5, ptr noundef %218, ptr noundef %219) #15
  %220 = getelementptr inbounds %struct.gnet_stats_queue, ptr %5, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %222 = call i32 @llvm.bswap.i32(i32 %221) #15
  br label %223

223:                                              ; preds = %209, %199
  %224 = phi i32 [ %222, %209 ], [ -1, %199 ]
  store i32 %224, ptr %196, align 4
  %225 = getelementptr i8, ptr %196, i32 4
  %226 = load i32, ptr %15, align 1
  br label %227

227:                                              ; preds = %223, %194
  %228 = phi i32 [ %226, %223 ], [ %195, %194 ]
  %229 = phi ptr [ %225, %223 ], [ %196, %194 ]
  %230 = and i32 %228, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  store i32 -1, ptr %229, align 4
  %233 = getelementptr i8, ptr %229, i32 4
  %234 = load i32, ptr %15, align 1
  br label %235

235:                                              ; preds = %232, %227
  %236 = phi i32 [ %234, %232 ], [ %228, %227 ]
  %237 = phi ptr [ %233, %232 ], [ %229, %227 ]
  %238 = and i32 %236, 32768
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %258, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %244 = load i16, ptr %243, align 4
  %245 = zext i16 %244 to i32
  %246 = getelementptr i8, ptr %242, i32 %245
  %247 = getelementptr inbounds %struct.ipv6hdr, ptr %246, i32 0, i32 4
  %248 = load i8, ptr %247, align 1
  %249 = sext i1 %3 to i8
  %250 = add i8 %248, %249
  %251 = load i64, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 37), align 16
  %252 = zext i8 %250 to i64
  %253 = shl nuw i64 %252, 56
  %254 = or i64 %253, %251
  %255 = call i64 @llvm.bswap.i64(i64 %254) #15
  store i64 %255, ptr %237, align 8
  %256 = getelementptr i8, ptr %237, i32 8
  %257 = load i32, ptr %15, align 1
  br label %258

258:                                              ; preds = %240, %235
  %259 = phi i32 [ %257, %240 ], [ %236, %235 ]
  %260 = phi ptr [ %256, %240 ], [ %237, %235 ]
  %261 = and i32 %259, 16384
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %295, label %263

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %265 = load ptr, ptr %264, align 8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.net_device, ptr %265, i32 0, i32 69
  %269 = load volatile ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.inet6_dev, ptr %269, i32 0, i32 32, i32 50
  %271 = load i32, ptr %270, align 4
  br label %272

272:                                              ; preds = %267, %263
  %273 = phi i32 [ %271, %267 ], [ -1, %263 ]
  %274 = call i32 @llvm.bswap.i32(i32 %273) #15
  store i32 %274, ptr %260, align 4
  %275 = getelementptr i8, ptr %260, i32 4
  %276 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, -2
  %279 = inttoptr i32 %278 to ptr
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.net_device, ptr %280, i32 0, i32 14
  %282 = load i32, ptr %281, align 8
  %283 = and i32 %282, 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %272
  %286 = getelementptr inbounds %struct.net_device, ptr %280, i32 0, i32 69
  %287 = load volatile ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.inet6_dev, ptr %287, i32 0, i32 32, i32 50
  %289 = load i32, ptr %288, align 4
  br label %290

290:                                              ; preds = %285, %272
  %291 = phi i32 [ %289, %285 ], [ -1, %272 ]
  %292 = call i32 @llvm.bswap.i32(i32 %291) #15
  store i32 %292, ptr %275, align 4
  %293 = getelementptr i8, ptr %260, i32 8
  %294 = load i32, ptr %15, align 1
  br label %295

295:                                              ; preds = %290, %258
  %296 = phi i32 [ %294, %290 ], [ %259, %258 ]
  %297 = phi ptr [ %293, %290 ], [ %260, %258 ]
  %298 = and i32 %296, 8192
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.ioam6_namespace, ptr %1, i32 0, i32 5
  %302 = load i64, ptr %301, align 8
  store i64 %302, ptr %297, align 8
  %303 = getelementptr i8, ptr %297, i32 8
  %304 = load i32, ptr %15, align 1
  br label %305

305:                                              ; preds = %300, %295
  %306 = phi i32 [ %304, %300 ], [ %296, %295 ]
  %307 = phi ptr [ %303, %300 ], [ %297, %295 ]
  %308 = and i32 %306, 4096
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  store i32 -1, ptr %307, align 4
  %311 = getelementptr i8, ptr %307, i32 4
  %312 = load i32, ptr %15, align 1
  br label %313

313:                                              ; preds = %310, %305
  %314 = phi i32 [ %312, %310 ], [ %306, %305 ]
  %315 = phi ptr [ %311, %310 ], [ %307, %305 ]
  %316 = and i32 %314, 2048
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %313
  store i32 -1, ptr %315, align 4
  %319 = getelementptr i8, ptr %315, i32 4
  %320 = load i32, ptr %15, align 1
  br label %321

321:                                              ; preds = %318, %313
  %322 = phi i32 [ %320, %318 ], [ %314, %313 ]
  %323 = phi ptr [ %319, %318 ], [ %315, %313 ]
  %324 = and i32 %322, 1024
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %321
  store i32 -1, ptr %323, align 4
  %327 = getelementptr i8, ptr %323, i32 4
  %328 = load i32, ptr %15, align 1
  br label %329

329:                                              ; preds = %326, %321
  %330 = phi i32 [ %328, %326 ], [ %322, %321 ]
  %331 = phi ptr [ %327, %326 ], [ %323, %321 ]
  %332 = and i32 %330, 512
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  store i32 -1, ptr %331, align 4
  %335 = getelementptr i8, ptr %331, i32 4
  %336 = load i32, ptr %15, align 1
  br label %337

337:                                              ; preds = %334, %329
  %338 = phi i32 [ %336, %334 ], [ %330, %329 ]
  %339 = phi ptr [ %335, %334 ], [ %331, %329 ]
  %340 = and i32 %338, 256
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %337
  store i32 -1, ptr %339, align 4
  %343 = getelementptr i8, ptr %339, i32 4
  %344 = load i32, ptr %15, align 1
  br label %345

345:                                              ; preds = %342, %337
  %346 = phi i32 [ %344, %342 ], [ %338, %337 ]
  %347 = phi ptr [ %343, %342 ], [ %339, %337 ]
  %348 = and i32 %346, 8388608
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %345
  store i32 -1, ptr %347, align 4
  %351 = getelementptr i8, ptr %347, i32 4
  %352 = load i32, ptr %15, align 1
  br label %353

353:                                              ; preds = %350, %345
  %354 = phi i32 [ %352, %350 ], [ %346, %345 ]
  %355 = phi ptr [ %351, %350 ], [ %347, %345 ]
  %356 = and i32 %354, 4194304
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %353
  store i32 -1, ptr %355, align 4
  %359 = getelementptr i8, ptr %355, i32 4
  %360 = load i32, ptr %15, align 1
  br label %361

361:                                              ; preds = %358, %353
  %362 = phi i32 [ %360, %358 ], [ %354, %353 ]
  %363 = phi ptr [ %359, %358 ], [ %355, %353 ]
  %364 = and i32 %362, 2097152
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %361
  store i32 -1, ptr %363, align 4
  %367 = getelementptr i8, ptr %363, i32 4
  %368 = load i32, ptr %15, align 1
  br label %369

369:                                              ; preds = %366, %361
  %370 = phi i32 [ %368, %366 ], [ %362, %361 ]
  %371 = phi ptr [ %367, %366 ], [ %363, %361 ]
  %372 = and i32 %370, 1048576
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %369
  store i32 -1, ptr %371, align 4
  %375 = getelementptr i8, ptr %371, i32 4
  %376 = load i32, ptr %15, align 1
  br label %377

377:                                              ; preds = %374, %369
  %378 = phi i32 [ %376, %374 ], [ %370, %369 ]
  %379 = phi ptr [ %375, %374 ], [ %371, %369 ]
  %380 = and i32 %378, 524288
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %377
  store i32 -1, ptr %379, align 4
  %383 = getelementptr i8, ptr %379, i32 4
  %384 = load i32, ptr %15, align 1
  br label %385

385:                                              ; preds = %382, %377
  %386 = phi i32 [ %384, %382 ], [ %378, %377 ]
  %387 = phi ptr [ %383, %382 ], [ %379, %377 ]
  %388 = and i32 %386, 262144
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %385
  store i32 -1, ptr %387, align 4
  %391 = getelementptr i8, ptr %387, i32 4
  %392 = load i32, ptr %15, align 1
  br label %393

393:                                              ; preds = %390, %385
  %394 = phi i32 [ %392, %390 ], [ %386, %385 ]
  %395 = phi ptr [ %391, %390 ], [ %387, %385 ]
  %396 = and i32 %394, 131072
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %408, label %398

398:                                              ; preds = %393
  %399 = icmp eq ptr %14, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %398
  store i32 -256, ptr %395, align 4
  br label %408

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.ioam6_schema, ptr %14, i32 0, i32 5
  %403 = load i32, ptr %402, align 4
  store i32 %403, ptr %395, align 4
  %404 = getelementptr i8, ptr %395, i32 4
  %405 = getelementptr inbounds %struct.ioam6_schema, ptr %14, i32 0, i32 6
  %406 = getelementptr inbounds %struct.ioam6_schema, ptr %14, i32 0, i32 4
  %407 = load i32, ptr %406, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %404, ptr align 4 %405, i32 %407, i1 false) #15
  br label %408

408:                                              ; preds = %401, %400, %393
  %409 = load i16, ptr %8, align 1
  %410 = trunc i16 %409 to i8
  %411 = lshr i8 %410, 3
  %412 = lshr i16 %409, 8
  %413 = trunc i16 %412 to i8
  %414 = add i8 %411, %28
  %415 = sub i8 %413, %414
  %416 = and i8 %415, 127
  %417 = zext i8 %416 to i16
  %418 = shl nuw nsw i16 %417, 8
  %419 = and i16 %409, -32513
  %420 = or i16 %418, %419
  br label %421

421:                                              ; preds = %408, %41
  %422 = phi i16 [ %420, %408 ], [ %42, %41 ]
  store i16 %422, ptr %8, align 1
  br label %423

423:                                              ; preds = %421, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ioam6_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ioam6_net_ops) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @genl_register_family(ptr noundef nonnull @ioam6_genl_family) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %8

8:                                                ; preds = %10, %6, %0
  %9 = phi i32 [ %1, %0 ], [ %4, %10 ], [ 0, %6 ]
  ret i32 %9

10:                                               ; preds = %3
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ioam6_net_ops) #15
  br label %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ioam6_exit() local_unnamed_addr #0 {
  %1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @ioam6_genl_family) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ioam6_net_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ioam6_ns_cmpfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.ioam6_namespace, ptr %1, i32 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 2
  %8 = icmp ne i16 %4, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ioam6_net_init(ptr nocapture noundef writeonly %0) #3 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @ioam6_net_init.__key) #15
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 36
  store ptr %3, ptr %6, align 64
  %7 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %3, i32 0, i32 1
  %8 = tail call i32 @rhashtable_init(ptr noundef %7, ptr noundef nonnull @rht_ns_params) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %3, i32 0, i32 2
  %12 = tail call i32 @rhashtable_init(ptr noundef %11, ptr noundef nonnull @rht_sc_params) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %17, %10, %1
  %15 = phi i32 [ %18, %17 ], [ 0, %10 ], [ -12, %1 ]
  ret i32 %15

16:                                               ; preds = %10
  tail call void @rhashtable_destroy(ptr noundef %7) #15
  br label %17

17:                                               ; preds = %16, %5
  %18 = phi i32 [ %8, %5 ], [ %12, %16 ]
  tail call void @kfree(ptr noundef nonnull %3) #15
  store ptr null, ptr %6, align 64
  br label %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ioam6_net_exit(ptr nocapture noundef readonly %0) #10 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %3, i32 0, i32 1
  tail call void @rhashtable_free_and_destroy(ptr noundef %4, ptr noundef nonnull @ioam6_free_ns, ptr noundef null) #15
  %5 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %3, i32 0, i32 2
  tail call void @rhashtable_free_and_destroy(ptr noundef %5, ptr noundef nonnull @ioam6_free_sc, ptr noundef null) #15
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ioam6_sc_cmpfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.ioam6_schema, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %4, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ioam6_free_ns(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ioam6_namespace, ptr %0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %5, ptr noundef nonnull inttoptr (i32 4 to ptr)) #15
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ioam6_free_sc(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ioam6_schema, ptr %0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %5, ptr noundef nonnull inttoptr (i32 4 to ptr)) #15
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_addns(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = load i16, ptr %11, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  store i16 %13, ptr %4, align 2
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %14, i32 0, i32 1
  %16 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %15, ptr noundef nonnull %4, [7 x i32] [i32 131072, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 32) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %18
  %23 = load i16, ptr %4, align 2
  %24 = getelementptr inbounds %struct.ioam6_namespace, ptr %20, i32 0, i32 3
  store i16 %23, ptr %24, align 8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr ptr, ptr %25, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %27, i32 4
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %31, %29 ], [ -1, %22 ]
  %34 = getelementptr ptr, ptr %25, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !13
  %38 = call i32 @nla_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %35, i32 noundef 8) #15
  %39 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i64 [ %39, %37 ], [ -1, %32 ]
  %42 = call i32 @llvm.bswap.i32(i32 %33)
  %43 = getelementptr inbounds %struct.ioam6_namespace, ptr %20, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = call i64 @llvm.bswap.i64(i64 %41)
  %45 = getelementptr inbounds %struct.ioam6_namespace, ptr %20, i32 0, i32 5
  store i64 %44, ptr %45, align 8
  %46 = call fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %15, ptr noundef nonnull %20, [7 x i32] [i32 131072, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  call void @kfree(ptr noundef nonnull %20) #15
  br label %49

49:                                               ; preds = %48, %40, %18, %10
  %50 = phi i32 [ %46, %48 ], [ 0, %40 ], [ -17, %10 ], [ -12, %18 ]
  call void @mutex_unlock(ptr noundef %14) #15
  br label %51

51:                                               ; preds = %49, %2
  %52 = phi i32 [ %50, %49 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_delns(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  store i16 %12, ptr %3, align 2
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %13, i32 0, i32 1
  %15 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %14, ptr noundef nonnull %3, [7 x i32] [i32 131072, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ioam6_namespace, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %14, ptr noundef nonnull %15, [7 x i32] [i32 131072, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = icmp eq ptr %19, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.ioam6_schema, ptr %19, i32 0, i32 2
  store volatile ptr null, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = getelementptr inbounds %struct.ioam6_namespace, ptr %15, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %27, ptr noundef nonnull inttoptr (i32 4 to ptr)) #15
  br label %28

28:                                               ; preds = %26, %17, %9
  %29 = phi i32 [ %20, %17 ], [ 0, %26 ], [ -2, %9 ]
  call void @mutex_unlock(ptr noundef %13) #15
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ %29, %28 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpns_start(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 36) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %5, %1 ], [ %9, %11 ]
  %15 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %2, i32 0, i32 1
  tail call void @rhashtable_walk_enter(ptr noundef %15, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ 0, %13 ], [ -12, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpns(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @rhashtable_walk_start_check(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  br label %13

13:                                               ; preds = %18, %2
  %14 = call ptr @rhashtable_walk_next(ptr noundef %9) #15
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = icmp eq ptr %14, inttoptr (i32 -11 to ptr)
  br i1 %17, label %18, label %85

18:                                               ; preds = %76, %16
  br label %13

19:                                               ; preds = %13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr inbounds %struct.nlmsghdr, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = call ptr @genlmsg_put(ptr noundef %0, i32 noundef %24, i32 noundef %27, ptr noundef nonnull @ioam6_genl_family, i32 noundef 2, i8 noundef zeroext 3) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %87, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ioam6_namespace, ptr %14, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #15
  %34 = getelementptr inbounds %struct.ioam6_namespace, ptr %14, i32 0, i32 5
  %35 = load i64, ptr %34, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #15
  %37 = getelementptr inbounds %struct.ioam6_namespace, ptr %14, i32 0, i32 3
  %38 = load i16, ptr %37, align 8
  %39 = call i16 @llvm.bswap.i16(i16 %38) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 %39, ptr %6, align 2
  %40 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %30
  %43 = icmp eq i32 %32, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 %33, ptr %5, align 4
  %45 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44, %42
  %48 = icmp eq i64 %35, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 %36, ptr %4, align 8
  %50 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49, %47
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %53 = getelementptr inbounds %struct.ioam6_namespace, ptr %14, i32 0, i32 2
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ioam6_schema, ptr %54, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 %58, ptr %3, align 4
  %59 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %62

62:                                               ; preds = %61, %49, %44, %30
  %63 = getelementptr i8, ptr %28, i32 -20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %87, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ugt ptr %67, %63
  br i1 %68, label %69, label %71, !prof !14

69:                                               ; preds = %65
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  %70 = load ptr, ptr %66, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi ptr [ %70, %69 ], [ %67, %65 ]
  %73 = ptrtoint ptr %63 to i32
  %74 = ptrtoint ptr %72 to i32
  %75 = sub i32 %73, %74
  call void @skb_trim(ptr noundef %0, i32 noundef %75) #15
  br label %87

76:                                               ; preds = %56, %52
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %77 = getelementptr i8, ptr %28, i32 -20
  %78 = load ptr, ptr %12, align 8
  %79 = ptrtoint ptr %78 to i32
  %80 = ptrtoint ptr %77 to i32
  %81 = sub i32 %79, %80
  store i32 %81, ptr %77, align 4
  br label %18

82:                                               ; preds = %19
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %84 = load i32, ptr %83, align 8
  br label %87

85:                                               ; preds = %16
  %86 = ptrtoint ptr %14 to i32
  br label %87

87:                                               ; preds = %85, %82, %71, %62, %21
  %88 = phi i32 [ %84, %82 ], [ -90, %71 ], [ -90, %62 ], [ %86, %85 ], [ -12, %21 ]
  call void @rhashtable_walk_stop(ptr noundef %9) #15
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpns_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call void @rhashtable_walk_exit(ptr noundef %4) #15
  tail call void @kfree(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_addsc(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %2
  %10 = getelementptr ptr, ptr %5, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 4
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %3, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  tail call void @mutex_lock(ptr noundef %16) #15
  %17 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %16, i32 0, i32 2
  %18 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %17, ptr noundef nonnull %3, [7 x i32] [i32 262144, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %13
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr ptr, ptr %21, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -1
  %27 = and i32 %26, -4
  %28 = add nsw i32 %27, 28
  %29 = call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %20
  %32 = add nsw i32 %25, -4
  %33 = load i32, ptr %3, align 4
  %34 = getelementptr inbounds %struct.ioam6_schema, ptr %29, i32 0, i32 3
  store i32 %33, ptr %34, align 16
  %35 = getelementptr inbounds %struct.ioam6_schema, ptr %29, i32 0, i32 4
  store i32 %27, ptr %35, align 4
  %36 = sdiv i32 %27, 4
  %37 = shl i32 %36, 24
  %38 = or i32 %33, %37
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %40 = getelementptr inbounds %struct.ioam6_schema, ptr %29, i32 0, i32 5
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.ioam6_schema, ptr %29, i32 0, i32 6
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr ptr, ptr %42, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @nla_memcpy(ptr noundef %41, ptr noundef %44, i32 noundef %32) #15
  %46 = call fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %17, ptr noundef nonnull %29, [7 x i32] [i32 262144, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %50, %31, %20, %13
  %49 = phi i32 [ %46, %50 ], [ 0, %31 ], [ -17, %13 ], [ -12, %20 ]
  call void @mutex_unlock(ptr noundef %16) #15
  br label %51

50:                                               ; preds = %31
  call void @kfree(ptr noundef nonnull %29) #15
  br label %48

51:                                               ; preds = %48, %9, %2
  %52 = phi i32 [ %49, %48 ], [ -22, %9 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_delsc(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  tail call void @mutex_lock(ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %12, i32 0, i32 2
  %14 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %13, ptr noundef nonnull %3, [7 x i32] [i32 262144, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ioam6_schema, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %13, ptr noundef nonnull %14, [7 x i32] [i32 262144, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ioam6_namespace, ptr %18, i32 0, i32 2
  store volatile ptr null, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = getelementptr inbounds %struct.ioam6_schema, ptr %14, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %26, ptr noundef nonnull inttoptr (i32 4 to ptr)) #15
  br label %27

27:                                               ; preds = %25, %16, %9
  %28 = phi i32 [ %19, %16 ], [ 0, %25 ], [ -2, %9 ]
  call void @mutex_unlock(ptr noundef %12) #15
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ %28, %27 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpsc_start(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 36) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %5, %1 ], [ %9, %11 ]
  %15 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %2, i32 0, i32 2
  tail call void @rhashtable_walk_enter(ptr noundef %15, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ 0, %13 ], [ -12, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpsc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 @rhashtable_walk_start_check(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  br label %11

11:                                               ; preds = %16, %2
  %12 = call ptr @rhashtable_walk_next(ptr noundef %7) #15
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = icmp eq ptr %12, inttoptr (i32 -11 to ptr)
  br i1 %15, label %16, label %73

16:                                               ; preds = %64, %14
  br label %11

17:                                               ; preds = %11
  %18 = icmp eq ptr %12, null
  br i1 %18, label %70, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = call ptr @genlmsg_put(ptr noundef %0, i32 noundef %22, i32 noundef %25, ptr noundef nonnull @ioam6_genl_family, i32 noundef 2, i8 noundef zeroext 6) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %75, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ioam6_schema, ptr %12, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 %30, ptr %4, align 4
  %31 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ioam6_schema, ptr %12, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ioam6_schema, ptr %12, i32 0, i32 6
  %37 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef %35, ptr noundef %36) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %40 = getelementptr inbounds %struct.ioam6_schema, ptr %12, i32 0, i32 2
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ioam6_namespace, ptr %41, i32 0, i32 3
  %45 = load i16, ptr %44, align 8
  %46 = call i16 @llvm.bswap.i16(i16 %45) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 %46, ptr %3, align 2
  %47 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %50

50:                                               ; preds = %49, %33, %28
  %51 = getelementptr i8, ptr %26, i32 -20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %75, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %55, %51
  br i1 %56, label %57, label %59, !prof !14

57:                                               ; preds = %53
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  %58 = load ptr, ptr %54, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi ptr [ %58, %57 ], [ %55, %53 ]
  %61 = ptrtoint ptr %51 to i32
  %62 = ptrtoint ptr %60 to i32
  %63 = sub i32 %61, %62
  call void @skb_trim(ptr noundef %0, i32 noundef %63) #15
  br label %75

64:                                               ; preds = %43, %39
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %65 = getelementptr i8, ptr %26, i32 -20
  %66 = load ptr, ptr %10, align 8
  %67 = ptrtoint ptr %66 to i32
  %68 = ptrtoint ptr %65 to i32
  %69 = sub i32 %67, %68
  store i32 %69, ptr %65, align 4
  br label %16

70:                                               ; preds = %17
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %72 = load i32, ptr %71, align 8
  br label %75

73:                                               ; preds = %14
  %74 = ptrtoint ptr %12 to i32
  br label %75

75:                                               ; preds = %73, %70, %59, %50, %19
  %76 = phi i32 [ %72, %70 ], [ -90, %59 ], [ -90, %50 ], [ %74, %73 ], [ -12, %19 ]
  call void @rhashtable_walk_stop(ptr noundef %7) #15
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_dumpsc_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call void @rhashtable_walk_exit(ptr noundef %4) #15
  tail call void @kfree(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ioam6_genl_ns_set_schema(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %2
  %11 = getelementptr ptr, ptr %6, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr ptr, ptr %6, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr i8, ptr %8, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  store i16 %21, ptr %3, align 2
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 36), align 64
  tail call void @mutex_lock(ptr noundef %22) #15
  %23 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %22, i32 0, i32 1
  %24 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %23, ptr noundef nonnull %3, [7 x i32] [i32 131072, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_ns_cmpfn to i32)])
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr ptr, ptr %27, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = getelementptr ptr, ptr %27, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %4, align 4
  %36 = getelementptr inbounds %struct.ioam6_pernet_data, ptr %22, i32 0, i32 2
  %37 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %36, ptr noundef nonnull %4, [7 x i32] [i32 262144, i32 16, i32 0, i32 65536, i32 0, i32 0, i32 ptrtoint (ptr @ioam6_sc_cmpfn to i32)])
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %31, %26
  %40 = phi ptr [ %37, %31 ], [ null, %26 ]
  %41 = getelementptr inbounds %struct.ioam6_namespace, ptr %24, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ioam6_schema, ptr %42, i32 0, i32 2
  store volatile ptr null, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  store volatile ptr %40, ptr %41, align 4
  %47 = icmp eq ptr %40, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ioam6_schema, ptr %40, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ioam6_namespace, ptr %50, i32 0, i32 2
  store volatile ptr null, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %48
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  store volatile ptr %24, ptr %49, align 4
  br label %55

55:                                               ; preds = %54, %46, %31, %18
  %56 = phi i32 [ -2, %18 ], [ -2, %31 ], [ 0, %54 ], [ 0, %46 ]
  call void @mutex_unlock(ptr noundef %22) #15
  br label %57

57:                                               ; preds = %55, %14, %2
  %58 = phi i32 [ %56, %55 ], [ -22, %14 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %0, ptr noundef %1, [7 x i32] %2) unnamed_addr #2 {
  %4 = alloca %struct.rhashtable_compare_arg, align 8
  %5 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  %6 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #15, !srcloc !17
  unreachable

10:                                               ; preds = %3
  %11 = load i16, ptr %5, align 2
  %12 = zext i16 %11 to i32
  %13 = sub nsw i32 0, %12
  %14 = getelementptr i8, ptr %1, i32 %13
  %15 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 2
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = extractvalue [7 x i32] %2, 6
  %20 = inttoptr i32 %19 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %0, ptr %4, align 8
  %21 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %4, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %22 = load volatile ptr, ptr %0, align 4
  %23 = extractvalue [7 x i32] %2, 5
  %24 = inttoptr i32 %23 to ptr
  %25 = load i16, ptr %5, align 2
  %26 = zext i16 %25 to i32
  %27 = sub nsw i32 0, %26
  %28 = getelementptr i8, ptr %1, i32 %27
  %29 = icmp eq i32 %23, 0
  br i1 %29, label %43, label %30, !prof !14

30:                                               ; preds = %10
  %31 = extractvalue [7 x i32] %2, 0
  %32 = lshr i32 %31, 16
  %33 = icmp ult i32 %31, 65536
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %37, %34 ], [ %32, %30 ]
  %40 = getelementptr inbounds %struct.bucket_table, ptr %22, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = tail call i32 %24(ptr noundef %28, i32 noundef %39, i32 noundef %41) #15
  br label %54

43:                                               ; preds = %10
  %44 = getelementptr inbounds %struct.bucket_table, ptr %22, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = extractvalue [7 x i32] %2, 1
  %47 = and i32 %46, 65535
  %48 = getelementptr i8, ptr %28, i32 %47
  %49 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 %50(ptr noundef %48, i32 noundef %52, i32 noundef %45) #15
  br label %54

54:                                               ; preds = %43, %38
  %55 = phi i32 [ %42, %38 ], [ %53, %43 ]
  %56 = load i32, ptr %22, align 64
  %57 = add i32 %56, -1
  %58 = and i32 %57, %55
  %59 = getelementptr inbounds %struct.bucket_table, ptr %22, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !9

62:                                               ; preds = %54
  %63 = tail call ptr @rht_bucket_nested_insert(ptr noundef %0, ptr noundef %22, i32 noundef %58) #15
  br label %66

64:                                               ; preds = %54
  %65 = getelementptr %struct.bucket_table, ptr %22, i32 0, i32 8, i32 %58
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %63, %62 ], [ %65, %64 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %191, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #15
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %72 = load volatile i32, ptr %71, align 4
  %73 = add i32 %72, 512
  store volatile i32 %73, ptr %71, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  br label %74

74:                                               ; preds = %88, %69
  %75 = load volatile i32, ptr %67, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83, !prof !20

78:                                               ; preds = %74
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %67) #15, !srcloc !21
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 1, ptr nonnull elementtype(i32) %67) #15, !srcloc !22
  %80 = extractvalue { i32, i32, i32 } %79, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83, !prof !9

83:                                               ; preds = %78, %74
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %84

84:                                               ; preds = %84, %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !26
  %85 = load volatile i32, ptr %67, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %84

88:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  br label %74

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.bucket_table, ptr %22, i32 0, i32 5
  %91 = load volatile ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !9

93:                                               ; preds = %158, %146, %89
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %67) #15, !srcloc !21
  %94 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 1, ptr nonnull elementtype(i32) %67) #15, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  call fastcc void @local_bh_enable() #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %95 = call ptr @rhashtable_insert_slow(ptr noundef %0, ptr noundef %18, ptr noundef %1) #15
  br label %196

96:                                               ; preds = %89
  %97 = load ptr, ptr %67, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = and i32 %98, -2
  %100 = icmp eq i32 %99, 0
  %101 = ptrtoint ptr %67 to i32
  %102 = or i32 %101, 1
  %103 = select i1 %100, i32 %102, i32 %99
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %148

106:                                              ; preds = %96
  %107 = inttoptr i32 %103 to ptr
  %108 = icmp eq ptr %18, null
  %109 = icmp eq i32 %19, 0
  br label %110

110:                                              ; preds = %141, %106
  %111 = phi ptr [ %107, %106 ], [ %142, %141 ]
  %112 = phi i32 [ 16, %106 ], [ %113, %141 ]
  %113 = add i32 %112, -1
  br i1 %108, label %141, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %5, align 2
  %116 = zext i16 %115 to i32
  %117 = sub nsw i32 0, %116
  %118 = getelementptr i8, ptr %111, i32 %117
  br i1 %109, label %126, label %119

119:                                              ; preds = %114
  %120 = call i32 %20(ptr noundef nonnull %4, ptr noundef %118) #15
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %119
  %123 = load i16, ptr %5, align 2
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 0, %124
  br label %138

126:                                              ; preds = %114
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds %struct.rhashtable, ptr %127, i32 0, i32 3, i32 2
  %129 = load i16, ptr %128, align 4
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %118, i32 %130
  %132 = load ptr, ptr %21, align 4
  %133 = getelementptr inbounds %struct.rhashtable, ptr %127, i32 0, i32 3, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = call i32 @bcmp(ptr %131, ptr %132, i32 %135) #15
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %126, %122
  %139 = phi i32 [ %125, %122 ], [ %117, %126 ]
  %140 = getelementptr i8, ptr %111, i32 %139
  br label %193

141:                                              ; preds = %126, %119, %110
  %142 = load ptr, ptr %111, align 4
  %143 = ptrtoint ptr %142 to i32
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %110, label %146

146:                                              ; preds = %141
  %147 = icmp slt i32 %113, 1
  br i1 %147, label %93, label %148

148:                                              ; preds = %146, %96
  %149 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8
  %150 = load volatile i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %154, label %193, !prof !9

154:                                              ; preds = %148
  %155 = load volatile i32, ptr %149, align 4
  %156 = load i32, ptr %22, align 64
  %157 = icmp ugt i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  %162 = icmp ult i32 %156, %160
  %163 = select i1 %161, i1 true, i1 %162
  br i1 %163, label %93, label %164, !prof !14

164:                                              ; preds = %158, %154
  %165 = load ptr, ptr %67, align 4
  %166 = ptrtoint ptr %165 to i32
  %167 = and i32 %166, -2
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i32 %102, i32 %167
  %170 = inttoptr i32 %169 to ptr
  store volatile ptr %170, ptr %1, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #15, !srcloc !21
  %171 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #15, !srcloc !31
  %172 = ptrtoint ptr %1 to i32
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, ptr %1, ptr null
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !32
  store volatile ptr %175, ptr %67, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  call fastcc void @local_bh_enable() #15
  %176 = load volatile i32, ptr %149, align 4
  %177 = load i32, ptr %22, align 64
  %178 = lshr i32 %177, 2
  %179 = mul nuw i32 %178, 3
  %180 = icmp ugt i32 %176, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %164
  %182 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 4
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  %185 = icmp ult i32 %177, %183
  %186 = select i1 %184, i1 true, i1 %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5
  %189 = load ptr, ptr @system_wq, align 4
  %190 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %189, ptr noundef %188) #15
  br label %191

191:                                              ; preds = %193, %187, %181, %164, %66
  %192 = phi ptr [ %194, %193 ], [ inttoptr (i32 -12 to ptr), %66 ], [ null, %187 ], [ null, %181 ], [ null, %164 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %196

193:                                              ; preds = %148, %138
  %194 = phi ptr [ %140, %138 ], [ inttoptr (i32 -7 to ptr), %148 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %67) #15, !srcloc !21
  %195 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 1, ptr nonnull elementtype(i32) %67) #15, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  call fastcc void @local_bh_enable() #15
  br label %191

196:                                              ; preds = %191, %93
  %197 = phi ptr [ %95, %93 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %198 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  %199 = ptrtoint ptr %197 to i32
  %200 = icmp eq ptr %197, null
  %201 = select i1 %200, i32 0, i32 -17
  %202 = select i1 %198, i32 %199, i32 %201
  ret i32 %202
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %0, ptr noundef %1, [7 x i32] %2) unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %4 = load volatile ptr, ptr %0, align 4
  %5 = extractvalue [7 x i32] %2, 0
  %6 = extractvalue [7 x i32] %2, 5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  %9 = icmp eq i32 %6, 0
  %10 = lshr i32 %5, 16
  %11 = icmp ult i32 %5, 65536
  %12 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 1
  %13 = extractvalue [7 x i32] %2, 1
  %14 = and i32 %13, 65535
  %15 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 7
  %16 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %131, %3
  %18 = phi ptr [ %4, %3 ], [ %133, %131 ]
  %19 = load i16, ptr %8, align 2
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 0, %20
  %22 = getelementptr i8, ptr %1, i32 %21
  br i1 %9, label %32, label %23, !prof !14

23:                                               ; preds = %17
  br i1 %11, label %24, label %27

24:                                               ; preds = %23
  %25 = load i16, ptr %12, align 2
  %26 = zext i16 %25 to i32
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ %26, %24 ], [ %10, %23 ]
  %29 = getelementptr inbounds %struct.bucket_table, ptr %18, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 %7(ptr noundef %22, i32 noundef %28, i32 noundef %30) #15
  br label %39

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.bucket_table, ptr %18, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr i8, ptr %22, i32 %14
  %36 = load ptr, ptr %15, align 4
  %37 = load i32, ptr %16, align 4
  %38 = tail call i32 %36(ptr noundef %35, i32 noundef %37, i32 noundef %34) #15
  br label %39

39:                                               ; preds = %32, %27
  %40 = phi i32 [ %31, %27 ], [ %38, %32 ]
  %41 = load i32, ptr %18, align 64
  %42 = add i32 %41, -1
  %43 = and i32 %42, %40
  %44 = getelementptr inbounds %struct.bucket_table, ptr %18, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !9

47:                                               ; preds = %39
  %48 = tail call ptr @__rht_bucket_nested(ptr noundef %18, i32 noundef %43) #15
  br label %51

49:                                               ; preds = %39
  %50 = getelementptr %struct.bucket_table, ptr %18, i32 0, i32 8, i32 %43
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %131, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #15
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = add i32 %57, 512
  store volatile i32 %58, ptr %56, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  br label %59

59:                                               ; preds = %73, %54
  %60 = load volatile i32, ptr %52, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68, !prof !20

63:                                               ; preds = %59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %52) #15, !srcloc !21
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %52, ptr nonnull %52, i32 1, ptr nonnull elementtype(i32) %52) #15, !srcloc !22
  %65 = extractvalue { i32, i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68, !prof !9

68:                                               ; preds = %63, %59
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %69

69:                                               ; preds = %69, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !26
  %70 = load volatile i32, ptr %52, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %69

73:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  br label %59

74:                                               ; preds = %63
  %75 = load ptr, ptr %52, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = and i32 %76, -2
  %78 = icmp eq i32 %77, 0
  %79 = ptrtoint ptr %52 to i32
  %80 = or i32 %79, 1
  %81 = select i1 %78, i32 %80, i32 %77
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %74
  %85 = inttoptr i32 %81 to ptr
  %86 = icmp eq ptr %85, %1
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load ptr, ptr %1, align 4
  br label %96

89:                                               ; preds = %102
  %90 = icmp eq ptr %104, %1
  br i1 %90, label %91, label %102

91:                                               ; preds = %89
  %92 = load ptr, ptr %1, align 4
  %93 = icmp eq ptr %103, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !34
  store volatile ptr %92, ptr %103, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %52) #15, !srcloc !21
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %52, ptr nonnull %52, i32 1, ptr nonnull elementtype(i32) %52) #15, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %110

96:                                               ; preds = %91, %87
  %97 = phi ptr [ %88, %87 ], [ %92, %91 ]
  %98 = ptrtoint ptr %97 to i32
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr %97, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !32
  store volatile ptr %101, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  br label %110

102:                                              ; preds = %89, %84
  %103 = phi ptr [ %104, %89 ], [ %85, %84 ]
  %104 = load ptr, ptr %103, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %89, label %108

108:                                              ; preds = %102, %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %52) #15, !srcloc !21
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %52, ptr nonnull %52, i32 1, ptr nonnull elementtype(i32) %52) #15, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  tail call fastcc void @local_bh_enable() #15
  br label %131

110:                                              ; preds = %96, %94
  tail call fastcc void @local_bh_enable() #15
  %111 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #15, !srcloc !21
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #15, !srcloc !35
  %113 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 6
  %114 = load i8, ptr %113, align 2, !range !36
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %110
  %117 = load volatile i32, ptr %111, align 4
  %118 = load i32, ptr %18, align 64
  %119 = mul i32 %118, 3
  %120 = udiv i32 %119, 10
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 5
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = icmp ugt i32 %118, %125
  br i1 %126, label %127, label %135, !prof !14

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5
  %129 = load ptr, ptr @system_wq, align 4
  %130 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %129, ptr noundef %128) #15
  br label %135

131:                                              ; preds = %108, %51
  %132 = getelementptr inbounds %struct.bucket_table, ptr %18, i32 0, i32 5
  %133 = load volatile ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %17

135:                                              ; preds = %131, %127, %122, %116, %110
  %136 = phi i32 [ 0, %110 ], [ 0, %127 ], [ 0, %122 ], [ 0, %116 ], [ -2, %131 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

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
!8 = !{i64 2149116622}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152242037}
!11 = !{i64 2152245471}
!12 = !{i64 2149116839}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2156078024}
!16 = !{i64 2156093112}
!17 = !{i64 2152286150, i64 2152286641, i64 2152286187, i64 2152286243, i64 2152286277, i64 2152286301, i64 2152286342, i64 2152286363, i64 2152286391, i64 2152286425}
!18 = !{i64 2148921850}
!19 = !{i64 2149468901}
!20 = !{!"branch_weights", i32 2146410443, i32 1073205}
!21 = !{i64 432390, i64 2147922361, i64 2147922387, i64 2147922434, i64 2147922456, i64 2147922484, i64 2147922504}
!22 = !{i64 2147943035, i64 2147943067, i64 2147943096, i64 2147943130, i64 2147943161, i64 2147943184}
!23 = !{i64 2148044351}
!24 = !{i64 2149469012}
!25 = !{i64 2149469241}
!26 = !{i64 2149469083}
!27 = !{i64 2149469323}
!28 = !{i64 2148043316}
!29 = !{i64 2147941494, i64 2147941526, i64 2147941555, i64 2147941589, i64 2147941620, i64 2147941643}
!30 = !{i64 2149469884}
!31 = !{i64 2147934573, i64 2147934599, i64 2147934628, i64 2147934662, i64 2147934693, i64 2147934716}
!32 = !{i64 2152235569}
!33 = !{i64 2152237793}
!34 = !{i64 2152304048}
!35 = !{i64 2147936930, i64 2147936956, i64 2147936985, i64 2147937019, i64 2147937050, i64 2147937073}
!36 = !{i8 0, i8 2}
