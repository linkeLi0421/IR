; ModuleID = '/llk/IR/net/ipv6/sit.c_pt.bc'
source_filename = "../net/ipv6/sit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.128 }
%union.anon.128 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.147 = type { ptr }
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
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.sit_net = type { [16 x ptr], [16 x ptr], [16 x ptr], [1 x ptr], [4 x ptr], ptr }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, %struct.netdevice_tracker, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.gro_cells = type { ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.ip_tunnel_prl_entry = type { ptr, i32, i16, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.anon.81 = type { i16, i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.95, i32, %struct.list_head, ptr }
%union.anon.95 = type { %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_tunnel_encap_ops = type { ptr, ptr, ptr }
%struct.ip_tunnel_prl = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.151 }
%union.anon.151 = type { i32 }

@__param_str_log_ecn_error = internal constant [18 x i8] c"sit.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global i8 1, align 1
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.128 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype532 = internal constant [32 x i8] c"sit.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error533 = internal constant [63 x i8] c"sit.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@sit_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 152, ptr null, ptr @ipip6_tunnel_setup, i8 0, i32 20, ptr @ipip6_policy, ptr @ipip6_validate, ptr @ipip6_newlink, ptr @ipip6_changelink, ptr @ipip6_dellink, ptr @ipip6_get_size, ptr @ipip6_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@sit_handler = internal global %struct.xfrm_tunnel { ptr @ipip6_rcv, ptr null, ptr @ipip6_err, ptr null, i32 1 }, section ".data..read_mostly", align 4
@ipip_handler = internal global %struct.xfrm_tunnel { ptr @ipip_rcv, ptr null, ptr @ipip6_err, ptr null, i32 2 }, section ".data..read_mostly", align 4
@sit_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sit_init_net, ptr null, ptr null, ptr @sit_exit_batch_net, ptr @sit_net_id, i32 216 }, align 4
@__initcall__kmod_sit__575_2020_sit_init6 = internal global ptr @sit_init, section ".initcall6.init", align 4
@__exitcall_sit_cleanup = internal global ptr @sit_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file576 = internal constant [22 x i8] c"sit.file=net/ipv6/sit\00", section ".modinfo", align 1
@__UNIQUE_ID_license577 = internal constant [16 x i8] c"sit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias578 = internal constant [24 x i8] c"sit.alias=rtnl-link-sit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias579 = internal constant [22 x i8] c"sit.alias=netdev-sit0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"sit\00", align 1
@ipip6_policy = internal constant [21 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }], align 4
@ipip6_netdev_ops = internal constant %struct.net_device_ops { ptr @ipip6_tunnel_init, ptr @ipip6_tunnel_uninit, ptr null, ptr null, ptr @sit_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipip6_tunnel_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipip6_tunnel_ctl, ptr null, ptr null }, align 4
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@init_net = external dso_local global %struct.net, align 64
@sit_net_id = internal global i32 0, section ".data..read_mostly", align 4
@ipip6_tunnel_del_prl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"net/ipv6/sit.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@iptun_encaps = external dso_local global [8 x ptr], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ipip6_tunnel_add_prl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sit%d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\016sit: non-ECT from %pI4 with TOS=%#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\014sit: Src spoofed %pI4/%pI6c -> %pI4/%pI6c\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\014sit: Dst spoofed %pI4/%pI6c -> %pI4/%pI6c\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@ipip_tpi = internal constant %struct.tnl_ptk_info { i16 0, i16 8, i32 0, i32 0, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"sit0\00", align 1
@sysctl_fb_tunnels_only_for_init_net = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"\016sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\016sit: %s: can't register ip6ip4\0A\00", align 1
@__func__.sit_init = private unnamed_addr constant [9 x i8] c"sit_init\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\016sit: %s: can't register ip4ip4\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias578, ptr @__UNIQUE_ID_alias579, ptr @__UNIQUE_ID_file576, ptr @__UNIQUE_ID_license577, ptr @__UNIQUE_ID_log_ecn_error533, ptr @__UNIQUE_ID_log_ecn_errortype532, ptr @__exitcall_sit_cleanup, ptr @__initcall__kmod_sit__575_2020_sit_init6, ptr @__param_log_ecn_error, ptr @sit_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sit_cleanup() #0 section ".exit.text" {
  tail call void @rtnl_link_unregister(ptr noundef nonnull @sit_link_ops) #19
  %1 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @sit_handler, i16 noundef zeroext 10) #19
  %2 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #19
  tail call void @unregister_pernet_device(ptr noundef nonnull @sit_net_ops) #19
  tail call void @rcu_barrier() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sit_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #20
  %2 = tail call i32 @register_pernet_device(ptr noundef nonnull @sit_net_ops) #19
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @sit_handler, i16 noundef zeroext 10) #19
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.sit_init) #20
  br label %22

9:                                                ; preds = %4
  %10 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #19
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.sit_init) #20
  br label %19

14:                                               ; preds = %9
  %15 = tail call i32 @rtnl_link_register(ptr noundef nonnull @sit_link_ops) #19
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #19
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %10, %12 ], [ %15, %17 ]
  %21 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @sit_handler, i16 noundef zeroext 10) #19
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i32 [ %5, %7 ], [ %20, %19 ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @sit_net_ops) #19
  br label %24

24:                                               ; preds = %22, %14, %0
  %25 = phi i32 [ %2, %0 ], [ %23, %22 ], [ %15, %14 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ipip6_tunnel_setup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1524
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @ipip6_netdev_ops, ptr %4, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 44
  store ptr @ip_tunnel_header_ops, ptr %5, align 16
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr @ipip6_dev_free, ptr %7, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 776, ptr %8, align 16
  %9 = sub i32 1480, %3
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 30
  store i32 1280, ptr %11, align 8
  %12 = sub i32 65555, %3
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  store i32 128, ptr %14, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %16 = load i64, ptr %15, align 16
  %17 = and i64 %16, -131105
  store i64 %17, ptr %15, align 16
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  store i8 4, ptr %18, align 1
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %20 = load i64, ptr %19, align 16
  %21 = or i64 %20, 26845450345
  store i64 %21, ptr %19, align 16
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %23 = load i64, ptr %22, align 8
  %24 = or i64 %23, 26845446249
  store i64 %24, ptr %22, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ipip6_validate(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef readnone %2) #3 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr ptr, ptr %1, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %13 [
    i8 41, label %12
    i8 4, label %12
    i8 0, label %12
  ]

12:                                               ; preds = %9, %9, %9
  br label %13

13:                                               ; preds = %12, %9, %5, %3
  %14 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %12 ], [ -22, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_newlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readnone %4) #4 {
  %6 = alloca %struct.ip_tunnel_encap, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = getelementptr i8, ptr %1, i32 1408
  store i64 0, ptr %6, align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5
  %10 = getelementptr ptr, ptr %3, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 4
  %15 = load i16, ptr %14, align 2
  store i16 %15, ptr %6, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = xor i1 %12, true
  %18 = getelementptr ptr, ptr %3, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %19, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ true, %21 ], [ %17, %16 ]
  %27 = getelementptr ptr, ptr %3, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr ptr, ptr %3, i32 18
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %41

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %28, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 2
  store i16 %36, ptr %37, align 4
  %38 = getelementptr ptr, ptr %3, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %34, %30
  %42 = phi ptr [ %39, %34 ], [ %32, %30 ]
  %43 = getelementptr i8, ptr %42, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 3
  store i16 %44, ptr %45, align 2
  br label %47

46:                                               ; preds = %30
  br i1 %26, label %47, label %55

47:                                               ; preds = %46, %41, %34
  %48 = call i32 @ip_tunnel_encap_setup(ptr noundef %7, ptr noundef nonnull %6) #19
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %205, label %55

50:                                               ; preds = %5
  %51 = getelementptr i8, ptr %1, i32 1464
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %51, i8 0, i32 52, i1 false) #19
  %52 = getelementptr i8, ptr %1, i32 1496
  %53 = getelementptr i8, ptr %1, i32 1505
  store i8 41, ptr %53, align 1
  store i8 69, ptr %52, align 4
  %54 = getelementptr i8, ptr %1, i32 1504
  store i8 64, ptr %54, align 4
  br label %136

55:                                               ; preds = %47, %46
  %56 = getelementptr i8, ptr %1, i32 1464
  %57 = getelementptr i8, ptr %1, i32 1552
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %56, i8 0, i32 52, i1 false) #19
  %58 = getelementptr i8, ptr %1, i32 1496
  %59 = getelementptr i8, ptr %1, i32 1505
  store i8 41, ptr %59, align 1
  store i8 69, ptr %58, align 4
  %60 = getelementptr i8, ptr %1, i32 1504
  store i8 64, ptr %60, align 4
  %61 = getelementptr ptr, ptr %3, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %55
  %65 = getelementptr i8, ptr %62, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %1, i32 1480
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %55
  %69 = getelementptr ptr, ptr %3, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %70, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %1, i32 1508
  store i32 %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %74, %72 ], [ 0, %68 ]
  %78 = getelementptr ptr, ptr %3, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %79, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr i8, ptr %1, i32 1512
  store i32 %83, ptr %84, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = phi i32 [ %83, %81 ], [ 0, %76 ]
  %87 = getelementptr ptr, ptr %3, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %88, i32 4
  %92 = load i8, ptr %91, align 1
  store i8 %92, ptr %60, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %1, i32 1502
  store i16 64, ptr %95, align 2
  br label %96

96:                                               ; preds = %94, %90, %85
  %97 = getelementptr ptr, ptr %3, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %98, i32 4
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %1, i32 1497
  store i8 %102, ptr %103, align 1
  br label %104

104:                                              ; preds = %100, %96
  %105 = getelementptr ptr, ptr %3, i32 10
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr i8, ptr %106, i32 4
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108, %104
  %113 = getelementptr i8, ptr %1, i32 1502
  store i16 64, ptr %113, align 2
  br label %114

114:                                              ; preds = %112, %108
  %115 = getelementptr ptr, ptr %3, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr i8, ptr %116, i32 4
  %120 = load i16, ptr %119, align 2
  %121 = getelementptr i8, ptr %1, i32 1484
  store i16 %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr ptr, ptr %3, i32 9
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %124, i32 4
  %128 = load i8, ptr %127, align 1
  store i8 %128, ptr %59, align 1
  br label %129

129:                                              ; preds = %126, %122
  %130 = getelementptr ptr, ptr %3, i32 20
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = getelementptr i8, ptr %131, i32 4
  %135 = load i32, ptr %134, align 4
  store i32 %135, ptr %57, align 4
  br label %136

136:                                              ; preds = %133, %129, %50
  %137 = phi i32 [ 0, %50 ], [ %77, %129 ], [ %77, %133 ]
  %138 = phi i32 [ 0, %50 ], [ %86, %129 ], [ %86, %133 ]
  %139 = getelementptr i8, ptr %1, i32 1512
  %140 = getelementptr i8, ptr %1, i32 1508
  %141 = load i32, ptr @sit_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %142 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %143 = getelementptr [0 x ptr], ptr %142, i32 0, i32 %141
  %144 = load ptr, ptr %143, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %145 = load i32, ptr %139, align 4
  %146 = load i32, ptr %140, align 4
  %147 = icmp eq i32 %145, 0
  %148 = lshr i32 %145, 4
  %149 = xor i32 %148, %145
  %150 = and i32 %149, 15
  %151 = select i1 %147, i32 0, i32 %150
  %152 = select i1 %147, i32 0, i32 2
  %153 = icmp eq i32 %146, 0
  %154 = lshr i32 %146, 4
  %155 = xor i32 %154, %146
  %156 = and i32 %155, 15
  %157 = select i1 %153, i32 0, i32 %156
  %158 = xor i32 %157, %151
  %159 = xor i1 %153, true
  %160 = zext i1 %159 to i32
  %161 = or i32 %152, %160
  %162 = getelementptr %struct.sit_net, ptr %144, i32 0, i32 4, i32 %161
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr ptr, ptr %163, i32 %158
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %186, label %167

167:                                              ; preds = %136
  %168 = getelementptr i8, ptr %1, i32 1480
  br label %169

169:                                              ; preds = %183, %167
  %170 = phi ptr [ %165, %167 ], [ %184, %183 ]
  %171 = getelementptr inbounds %struct.ip_tunnel, ptr %170, i32 0, i32 15, i32 6, i32 8
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %137, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.ip_tunnel, ptr %170, i32 0, i32 15, i32 6, i32 9
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %138, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i32, ptr %168, align 4
  %180 = getelementptr inbounds %struct.ip_tunnel, ptr %170, i32 0, i32 15, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %205, label %183

183:                                              ; preds = %178, %174, %169
  %184 = load ptr, ptr %170, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %169

186:                                              ; preds = %183, %136
  %187 = call fastcc i32 @ipip6_tunnel_create(ptr noundef %1)
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %205, label %189

189:                                              ; preds = %186
  %190 = getelementptr ptr, ptr %2, i32 4
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %205, label %193

193:                                              ; preds = %189
  %194 = getelementptr i8, ptr %191, i32 4
  %195 = load i32, ptr %194, align 4
  %196 = icmp ugt i32 %195, 1279
  br i1 %196, label %197, label %205

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %199 = load i16, ptr %198, align 2
  %200 = zext i16 %199 to i32
  %201 = sub nuw nsw i32 65575, %200
  %202 = icmp ugt i32 %195, %201
  br i1 %202, label %205, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  store i32 %195, ptr %204, align 4
  br label %205

205:                                              ; preds = %203, %197, %193, %189, %186, %178, %47
  %206 = phi i32 [ %48, %47 ], [ %187, %186 ], [ %187, %193 ], [ %187, %197 ], [ %187, %203 ], [ %187, %189 ], [ -17, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_changelink(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef readonly %2, ptr nocapture noundef readnone %3) #4 {
  %5 = alloca %struct.ip_tunnel_parm, align 4
  %6 = alloca %struct.ip_tunnel_encap, align 8
  %7 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = getelementptr i8, ptr %0, i32 1424
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %11 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 37
  %12 = load volatile ptr, ptr %11, align 64
  %13 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %15 = getelementptr i8, ptr %0, i32 1552
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sit_net, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %213, label %20

20:                                               ; preds = %4
  store i64 0, ptr %6, align 8
  %21 = icmp eq ptr %2, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %20
  %23 = getelementptr ptr, ptr %2, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = load i16, ptr %27, align 2
  store i16 %28, ptr %6, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = xor i1 %25, true
  %31 = getelementptr ptr, ptr %2, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %32, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 1
  store i16 %36, ptr %37, align 2
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ true, %34 ], [ %30, %29 ]
  %40 = getelementptr ptr, ptr %2, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr ptr, ptr %2, i32 18
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %54

47:                                               ; preds = %38
  %48 = getelementptr i8, ptr %41, i32 4
  %49 = load i16, ptr %48, align 2
  %50 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 2
  store i16 %49, ptr %50, align 4
  %51 = getelementptr ptr, ptr %2, i32 18
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %47, %43
  %55 = phi ptr [ %52, %47 ], [ %45, %43 ]
  %56 = getelementptr i8, ptr %55, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 3
  store i16 %57, ptr %58, align 2
  br label %60

59:                                               ; preds = %43
  br i1 %39, label %60, label %67

60:                                               ; preds = %59, %54, %47
  %61 = call i32 @ip_tunnel_encap_setup(ptr noundef %7, ptr noundef nonnull %6) #19
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %213, label %67

63:                                               ; preds = %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false) #19
  %64 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6
  %65 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 6
  store i8 41, ptr %65, align 1
  store i8 69, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 5
  store i8 64, ptr %66, align 4
  br label %146

67:                                               ; preds = %60, %59
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false) #19
  %68 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6
  %69 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 6
  store i8 41, ptr %69, align 1
  store i8 69, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 5
  store i8 64, ptr %70, align 4
  %71 = getelementptr ptr, ptr %2, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = getelementptr i8, ptr %72, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 1
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = getelementptr ptr, ptr %2, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %80, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 8
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %84, %82 ], [ 0, %78 ]
  %88 = getelementptr ptr, ptr %2, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %89, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 9
  store i32 %93, ptr %94, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i32 [ %93, %91 ], [ 0, %86 ]
  %97 = getelementptr ptr, ptr %2, i32 4
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %98, i32 4
  %102 = load i8, ptr %101, align 1
  store i8 %102, ptr %70, align 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 4
  store i16 64, ptr %105, align 2
  br label %106

106:                                              ; preds = %104, %100, %95
  %107 = getelementptr ptr, ptr %2, i32 5
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr i8, ptr %108, i32 4
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 1
  store i8 %112, ptr %113, align 1
  br label %114

114:                                              ; preds = %110, %106
  %115 = getelementptr ptr, ptr %2, i32 10
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr i8, ptr %116, i32 4
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 4
  store i16 64, ptr %123, align 2
  br label %124

124:                                              ; preds = %122, %118
  %125 = getelementptr ptr, ptr %2, i32 8
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr i8, ptr %126, i32 4
  %130 = load i16, ptr %129, align 2
  %131 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 2
  store i16 %130, ptr %131, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr ptr, ptr %2, i32 9
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = getelementptr i8, ptr %134, i32 4
  %138 = load i8, ptr %137, align 1
  store i8 %138, ptr %69, align 1
  br label %139

139:                                              ; preds = %136, %132
  %140 = getelementptr ptr, ptr %2, i32 20
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr i8, ptr %141, i32 4
  %145 = load i32, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %139, %63
  %147 = phi i32 [ 0, %63 ], [ %87, %139 ], [ %87, %143 ]
  %148 = phi i32 [ 0, %63 ], [ %96, %139 ], [ %96, %143 ]
  %149 = phi i32 [ %16, %63 ], [ %16, %139 ], [ %145, %143 ]
  %150 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 16
  %153 = icmp ne i32 %152, 0
  %154 = icmp eq i32 %148, 0
  %155 = select i1 %153, i1 %154, i1 false
  %156 = xor i1 %155, true
  %157 = select i1 %153, i1 true, i1 %154
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %213

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 9
  %161 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 6, i32 8
  %162 = load i32, ptr @sit_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %163 = load volatile ptr, ptr %11, align 64
  %164 = getelementptr [0 x ptr], ptr %163, i32 0, i32 %162
  %165 = load ptr, ptr %164, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %166 = load i32, ptr %160, align 4
  %167 = load i32, ptr %161, align 4
  %168 = icmp eq i32 %166, 0
  %169 = lshr i32 %166, 4
  %170 = xor i32 %169, %166
  %171 = and i32 %170, 15
  %172 = select i1 %168, i32 0, i32 %171
  %173 = select i1 %168, i32 0, i32 2
  %174 = icmp eq i32 %167, 0
  %175 = lshr i32 %167, 4
  %176 = xor i32 %175, %167
  %177 = and i32 %176, 15
  %178 = select i1 %174, i32 0, i32 %177
  %179 = xor i32 %178, %172
  %180 = xor i1 %174, true
  %181 = zext i1 %180 to i32
  %182 = or i32 %173, %181
  %183 = getelementptr %struct.sit_net, ptr %165, i32 0, i32 4, i32 %182
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr ptr, ptr %184, i32 %179
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %211, label %188

188:                                              ; preds = %159
  %189 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %5, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  br label %191

191:                                              ; preds = %204, %188
  %192 = phi ptr [ %186, %188 ], [ %205, %204 ]
  %193 = getelementptr inbounds %struct.ip_tunnel, ptr %192, i32 0, i32 15, i32 6, i32 8
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %147, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.ip_tunnel, ptr %192, i32 0, i32 15, i32 6, i32 9
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %148, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.ip_tunnel, ptr %192, i32 0, i32 15, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %190, %202
  br i1 %203, label %207, label %204

204:                                              ; preds = %200, %196, %191
  %205 = load ptr, ptr %192, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %191

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.ip_tunnel, ptr %192, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207, %204, %159
  %212 = phi ptr [ %192, %207 ], [ %7, %159 ], [ %7, %204 ]
  call fastcc void @ipip6_tunnel_update(ptr noundef %212, ptr noundef nonnull %5, i32 noundef %149)
  br label %213

213:                                              ; preds = %211, %207, %146, %60, %4
  %214 = phi i32 [ 0, %211 ], [ -22, %4 ], [ %61, %60 ], [ -22, %146 ], [ -17, %207 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #19
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipip6_dellink(ptr noundef %0, ptr noundef %1) #4 {
  %3 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %7 = getelementptr inbounds %struct.sit_net, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @unregister_netdevice_queue(ptr noundef %0, ptr noundef %1) #19
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ipip6_get_size(ptr nocapture noundef readnone %0) #5 {
  ret i32 104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_fill_info(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr i8, ptr %1, i32 1480
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store i32 %17, ptr %15, align 4
  %18 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %2
  %21 = getelementptr i8, ptr %1, i32 1508
  %22 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  store i32 %22, ptr %14, align 4
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %1, i32 1512
  %27 = load i32, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  store i32 %27, ptr %13, align 4
  %28 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %1, i32 1504
  %32 = load i8, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  store i8 %32, ptr %12, align 1
  %33 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %1, i32 1497
  %37 = load i8, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #19
  store i8 %37, ptr %11, align 1
  %38 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %1, i32 1502
  %42 = load i16, ptr %41, align 2
  %43 = trunc i16 %42 to i8
  %44 = lshr i8 %43, 6
  %45 = and i8 %44, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #19
  store i8 %45, ptr %10, align 1
  %46 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %40
  %49 = getelementptr i8, ptr %1, i32 1505
  %50 = load i8, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #19
  store i8 %50, ptr %9, align 1
  %51 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %1, i32 1484
  %55 = load i16, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #19
  store i16 %55, ptr %8, align 2
  %56 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %1, i32 1552
  %60 = load i32, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 %60, ptr %7, align 4
  %61 = call i32 @nla_put(ptr noundef %0, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %1, i32 1528
  %65 = load i16, ptr %64, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #19
  store i16 %65, ptr %6, align 2
  %66 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %1, i32 1532
  %70 = load i16, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  store i16 %70, ptr %5, align 2
  %71 = call i32 @nla_put(ptr noundef %0, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %1, i32 1534
  %75 = load i16, ptr %74, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  store i16 %75, ptr %4, align 2
  %76 = call i32 @nla_put(ptr noundef %0, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %1, i32 1530
  %80 = load i16, ptr %79, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #19
  store i16 %80, ptr %3, align 2
  %81 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %73, %68, %63, %58, %53, %48, %40, %35, %30, %25, %20, %2
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi i32 [ -90, %83 ], [ 0, %78 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_get_link_net(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipip6_dev_free(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1456
  tail call void @dst_cache_destroy(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %4 = load ptr, ptr %3, align 8
  tail call void @free_percpu(ptr noundef %4) #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_tunnel_init(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1420
  store ptr %0, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 1424
  store ptr @init_net, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1464
  %5 = tail call ptr @strcpy(ptr noundef %4, ptr noundef %0)
  tail call fastcc void @ipip6_tunnel_bind_dev(ptr noundef %0)
  %6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = ptrtoint ptr %6 to i32
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr null, ptr %15, align 8
  br label %46

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %10, %12 ], [ %23, %16 ]
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %13
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %21, i32 0, i32 4
  store i32 0, ptr %22, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #22
  %24 = icmp ult i32 %23, %9
  br i1 %24, label %16, label %25

25:                                               ; preds = %16, %8
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr %6, ptr %26, align 8
  %27 = getelementptr i8, ptr %0, i32 1456
  %28 = tail call i32 @dst_cache_init(ptr noundef %27, i32 noundef 3264) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8
  tail call void @free_percpu(ptr noundef %31) #19
  store ptr null, ptr %26, align 8
  br label %46

32:                                               ; preds = %25
  %33 = icmp eq ptr %0, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %32
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !12
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #12, !srcloc !13
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #19, !srcloc !14
  br label %46

46:                                               ; preds = %34, %32, %30, %14
  %47 = phi i32 [ %28, %30 ], [ -12, %14 ], [ 0, %32 ], [ 0, %34 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipip6_tunnel_uninit(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1424
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %10 = getelementptr inbounds %struct.sit_net, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sit_net, ptr %9, i32 0, i32 3
  store volatile ptr null, ptr %14, align 4
  br label %60

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 1512
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 1508
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, 0
  %21 = lshr i32 %17, 4
  %22 = xor i32 %21, %17
  %23 = and i32 %22, 15
  %24 = select i1 %20, i32 0, i32 %23
  %25 = select i1 %20, i32 0, i32 2
  %26 = icmp eq i32 %19, 0
  %27 = lshr i32 %19, 4
  %28 = xor i32 %27, %19
  %29 = and i32 %28, 15
  %30 = select i1 %26, i32 0, i32 %29
  %31 = xor i32 %30, %24
  %32 = xor i1 %26, true
  %33 = zext i1 %32 to i32
  %34 = or i32 %25, %33
  %35 = getelementptr %struct.sit_net, ptr %9, i32 0, i32 4, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr ptr, ptr %36, i32 %31
  br label %38

38:                                               ; preds = %42, %15
  %39 = phi ptr [ %37, %15 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = icmp eq ptr %40, %2
  br i1 %43, label %44, label %38

44:                                               ; preds = %42
  %45 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  store volatile ptr %45, ptr %39, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = tail call i32 @rtnl_is_locked() #19
  %48 = icmp eq i32 %47, 0
  %49 = load i1, ptr @ipip6_tunnel_del_prl.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !16

52:                                               ; preds = %46
  store i1 true, ptr @ipip6_tunnel_del_prl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 430) #19
  br label %53

53:                                               ; preds = %52, %46
  %54 = getelementptr i8, ptr %0, i32 1536
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %0, i32 1540
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %55, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %59, ptr noundef nonnull @prl_list_destroy_rcu) #19
  store ptr null, ptr %54, align 4
  br label %60

60:                                               ; preds = %57, %53, %13
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = getelementptr i8, ptr %0, i32 1460
  store i32 %61, ptr %62, align 4
  %63 = icmp eq ptr %0, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !12
  %66 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %70 = inttoptr i32 %69 to ptr
  %71 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %70) #12, !srcloc !13
  %72 = add i32 %71, %68
  %73 = inttoptr i32 %72 to ptr
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #19, !srcloc !14
  br label %76

76:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sit_tunnel_xmit(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.inet6_skb_parm, align 4
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %7 = load i16, ptr %6, align 8
  %8 = icmp eq i16 %7, 8
  %9 = select i1 %8, i32 20, i32 0
  %10 = icmp eq i16 %7, -8826
  %11 = select i1 %10, i32 40, i32 %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = add i32 %22, %11
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %27
  %29 = icmp ugt i32 %23, %28
  br i1 %29, label %30, label %38, !prof !16

30:                                               ; preds = %2
  %31 = icmp ult i32 %25, %23
  br i1 %31, label %434, label %32, !prof !16

32:                                               ; preds = %30
  %33 = sub i32 %23, %28
  %34 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %33) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %434, label %36

36:                                               ; preds = %32
  %37 = load i16, ptr %6, align 8
  br label %38

38:                                               ; preds = %36, %2
  %39 = phi i16 [ %37, %36 ], [ %7, %2 ]
  switch i16 %39, label %434 [
    i16 8, label %40
    i16 -8826, label %53
  ]

40:                                               ; preds = %38
  %41 = tail call i32 @iptunnel_handle_offloads(ptr noundef %0, i32 noundef 256) #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %1, i32 1496
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  store i8 4, ptr %45, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %47 = load i16, ptr %46, align 2
  %48 = or i16 %47, 512
  store i16 %48, ptr %46, align 2
  tail call void @ip_tunnel_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %44, i8 noundef zeroext 4) #19
  br label %438

49:                                               ; preds = %40
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  %50 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  br label %438

53:                                               ; preds = %38
  %54 = load ptr, ptr %12, align 8
  %55 = load i16, ptr %14, align 4
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %54, i32 %56
  %58 = getelementptr i8, ptr %1, i32 1497
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr i8, ptr %1, i32 1502
  %61 = load i16, ptr %60, align 2
  %62 = getelementptr i8, ptr %1, i32 1512
  %63 = load i32, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #19, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  store i8 41, ptr %5, align 1
  %64 = getelementptr i8, ptr %1, i32 1524
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i8 %59, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i16, ptr %57, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #19
  %70 = lshr i16 %69, 4
  %71 = trunc i16 %70 to i8
  br label %72

72:                                               ; preds = %67, %53
  %73 = phi i8 [ %71, %67 ], [ %59, %53 ]
  %74 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %75 = load i64, ptr %74, align 16
  %76 = and i64 %75, 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %119, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %428, label %83

83:                                               ; preds = %78
  %84 = inttoptr i32 %81 to ptr
  %85 = getelementptr inbounds %struct.ipv6hdr, ptr %57, i32 0, i32 6
  %86 = getelementptr inbounds %struct.dst_entry, ptr %84, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.dst_ops, ptr %87, i32 0, i32 14
  %89 = load ptr, ptr %88, align 8
  %90 = tail call ptr %89(ptr noundef nonnull %84, ptr noundef null, ptr noundef %85) #19
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  %92 = icmp eq ptr %90, null
  %93 = or i1 %91, %92
  br i1 %93, label %428, label %94

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.neighbour, ptr %90, i32 0, i32 28
  %96 = tail call i32 @__ipv6_addr_type(ptr noundef %95) #19
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %94
  %100 = getelementptr %struct.neighbour, ptr %90, i32 1, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, -3
  %103 = icmp eq i32 %102, -27394048
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = getelementptr %struct.neighbour, ptr %90, i32 1, i32 3
  %106 = load i32, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %99, %94
  %108 = phi i32 [ %106, %104 ], [ %63, %99 ], [ %63, %94 ]
  %109 = phi i1 [ false, %104 ], [ true, %99 ], [ true, %94 ]
  %110 = getelementptr inbounds %struct.neighbour, ptr %90, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #19, !srcloc !18
  %111 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #19, !srcloc !19
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = icmp sgt i32 %112, 0
  br i1 %115, label %118, label %116, !prof !20

116:                                              ; preds = %114
  tail call void @refcount_warn_saturate(ptr noundef %110, i32 noundef 3) #19
  br label %118

117:                                              ; preds = %107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  tail call void @neigh_destroy(ptr noundef nonnull %90) #19
  br label %118

118:                                              ; preds = %117, %116, %114
  br i1 %109, label %428, label %119

119:                                              ; preds = %118, %72
  %120 = phi i32 [ %63, %72 ], [ %108, %118 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %177

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.ipv6hdr, ptr %57, i32 0, i32 6
  %124 = load i16, ptr %123, align 4
  %125 = icmp eq i16 %124, 544
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr [8 x i16], ptr %123, i32 0, i32 1
  %128 = load i32, ptr %127, align 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %177

130:                                              ; preds = %126, %122
  %131 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, -2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %428, label %135

135:                                              ; preds = %130
  %136 = inttoptr i32 %133 to ptr
  %137 = getelementptr inbounds %struct.dst_entry, ptr %136, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.dst_ops, ptr %138, i32 0, i32 14
  %140 = load ptr, ptr %139, align 8
  %141 = tail call ptr %140(ptr noundef nonnull %136, ptr noundef null, ptr noundef %123) #19
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  %143 = icmp eq ptr %141, null
  %144 = or i1 %142, %143
  br i1 %144, label %428, label %145

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.neighbour, ptr %141, i32 0, i32 28
  %147 = tail call i32 @__ipv6_addr_type(ptr noundef %146) #19
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load ptr, ptr %12, align 8
  %152 = load i16, ptr %14, align 4
  %153 = zext i16 %152 to i32
  %154 = getelementptr i8, ptr %151, i32 %153
  %155 = getelementptr inbounds %struct.ipv6hdr, ptr %154, i32 0, i32 6
  %156 = tail call i32 @__ipv6_addr_type(ptr noundef %155) #19
  %157 = and i32 %156, 65535
  br label %158

158:                                              ; preds = %150, %145
  %159 = phi ptr [ %155, %150 ], [ %146, %145 ]
  %160 = phi i32 [ %157, %150 ], [ %148, %145 ]
  %161 = and i32 %160, 128
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = getelementptr [4 x i32], ptr %159, i32 0, i32 3
  %165 = load i32, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %158
  %167 = phi i32 [ %165, %163 ], [ 0, %158 ]
  %168 = getelementptr inbounds %struct.neighbour, ptr %141, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #19, !srcloc !18
  %169 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #19, !srcloc !19
  %170 = extractvalue { i32, i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %175, label %172

172:                                              ; preds = %166
  %173 = icmp sgt i32 %170, 0
  br i1 %173, label %176, label %174, !prof !20

174:                                              ; preds = %172
  tail call void @refcount_warn_saturate(ptr noundef %168, i32 noundef 3) #19
  br label %176

175:                                              ; preds = %166
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  tail call void @neigh_destroy(ptr noundef nonnull %141) #19
  br label %176

176:                                              ; preds = %175, %174, %172
  br i1 %162, label %428, label %177

177:                                              ; preds = %176, %126, %119
  %178 = phi i32 [ %128, %126 ], [ %167, %176 ], [ %120, %119 ]
  %179 = getelementptr i8, ptr %1, i32 1480
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr i8, ptr %1, i32 1552
  %182 = load i32, ptr %181, align 4
  %183 = and i8 %73, 30
  %184 = getelementptr i8, ptr %1, i32 1508
  %185 = load i32, ptr %184, align 4
  store i32 %180, ptr %4, align 8
  %186 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 1
  store i32 1, ptr %186, align 4
  %187 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  store i32 %182, ptr %187, align 8
  %188 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  store i8 %183, ptr %188, align 4
  %189 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 4
  store i8 0, ptr %189, align 1
  %190 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 5
  store i8 41, ptr %190, align 2
  %191 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 6
  %192 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %191, i8 0, i64 17, i1 false) #19
  store i32 %178, ptr %192, align 4
  %193 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  store i32 %185, ptr %193, align 8
  %194 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 3
  store i16 0, ptr %194, align 8
  %195 = getelementptr inbounds %struct.anon.81, ptr %194, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 10
  store i32 0, ptr %196, align 8
  %197 = getelementptr i8, ptr %1, i32 1456
  %198 = call ptr @dst_cache_get_ip4(ptr noundef %197, ptr noundef %193) #19
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %177
  %201 = getelementptr i8, ptr %1, i32 1424
  %202 = load ptr, ptr %201, align 4
  %203 = call ptr @ip_route_output_flow(ptr noundef %202, ptr noundef nonnull %4, ptr noundef null) #19
  %204 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %410, label %205

205:                                              ; preds = %200
  %206 = load i32, ptr %193, align 8
  call void @dst_cache_set_ip4(ptr noundef %197, ptr noundef %203, i32 noundef %206) #19
  br label %207

207:                                              ; preds = %205, %177
  %208 = phi ptr [ %198, %177 ], [ %203, %205 ]
  %209 = getelementptr inbounds %struct.rtable, ptr %208, i32 0, i32 3
  %210 = load i16, ptr %209, align 4
  %211 = add i16 %210, -1
  %212 = icmp ult i16 %211, 2
  br i1 %212, label %214, label %213

213:                                              ; preds = %207
  call void @dst_release(ptr noundef %208) #19
  br label %410

214:                                              ; preds = %207
  %215 = load ptr, ptr %208, align 4
  %216 = icmp eq ptr %215, %1
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  call void @dst_release(ptr noundef %208) #19
  %218 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 4
  br label %428

221:                                              ; preds = %214
  %222 = call i32 @iptunnel_handle_offloads(ptr noundef %0, i32 noundef 256) #19
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call void @dst_release(ptr noundef %208) #19
  br label %428

225:                                              ; preds = %221
  %226 = icmp eq i16 %61, 0
  br i1 %226, label %269, label %227

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.dst_entry, ptr %208, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.dst_ops, ptr %229, i32 0, i32 5
  %231 = load ptr, ptr %230, align 4
  %232 = call i32 %231(ptr noundef %208) #19
  %233 = sub i32 -20, %65
  %234 = add i32 %233, %232
  %235 = icmp slt i32 %234, 68
  br i1 %235, label %236, label %240

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 4
  call void @dst_release(ptr noundef %208) #19
  br label %428

240:                                              ; preds = %227
  %241 = icmp ult i32 %234, 1280
  %242 = select i1 %241, i16 0, i16 %61
  %243 = call i32 @llvm.umax.i32(i32 %234, i32 1280) #19
  %244 = load i32, ptr %62, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, -2
  %250 = inttoptr i32 %249 to ptr
  %251 = icmp eq i32 %249, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.dst_entry, ptr %250, i32 0, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dst_ops, ptr %254, i32 0, i32 11
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %252
  call void %256(ptr noundef nonnull %250, ptr noundef null, ptr noundef %0, i32 noundef %243, i1 noundef zeroext false) #19
  br label %259

259:                                              ; preds = %258, %252, %246, %240
  %260 = load i32, ptr %24, align 8
  %261 = icmp ugt i32 %260, %243
  br i1 %261, label %262, label %269

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.skb_shared_info, ptr %264, i32 0, i32 4
  %266 = load i16, ptr %265, align 4
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #19
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %243, ptr noundef null, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  call void @dst_release(ptr noundef %208) #19
  br label %428

269:                                              ; preds = %262, %259, %225
  %270 = phi i16 [ %242, %262 ], [ %242, %259 ], [ 0, %225 ]
  %271 = getelementptr i8, ptr %1, i32 1432
  %272 = load i32, ptr %271, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %298

274:                                              ; preds = %269
  %275 = load volatile i32, ptr @jiffies, align 64
  %276 = getelementptr i8, ptr %1, i32 1428
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %275, -3000
  %279 = sub i32 %278, %277
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %274
  %282 = add nsw i32 %272, -1
  store i32 %282, ptr %271, align 4
  %283 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %284 = load i32, ptr %283, align 8
  %285 = and i32 %284, -2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %298, label %287

287:                                              ; preds = %281
  %288 = inttoptr i32 %285 to ptr
  %289 = getelementptr inbounds %struct.dst_entry, ptr %288, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %298, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.dst_ops, ptr %290, i32 0, i32 10
  %294 = load ptr, ptr %293, align 8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  call void %294(ptr noundef %0) #19
  br label %298

297:                                              ; preds = %274
  store i32 0, ptr %271, align 4
  br label %298

298:                                              ; preds = %297, %296, %292, %287, %281, %269
  %299 = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 19
  %300 = load i16, ptr %299, align 2
  %301 = zext i16 %300 to i32
  %302 = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 21
  %303 = load i16, ptr %302, align 8
  %304 = zext i16 %303 to i32
  %305 = add nuw nsw i32 %304, %301
  %306 = and i32 %305, 131056
  %307 = add i32 %65, 36
  %308 = add i32 %307, %306
  %309 = load ptr, ptr %18, align 4
  %310 = load ptr, ptr %12, align 8
  %311 = ptrtoint ptr %309 to i32
  %312 = ptrtoint ptr %310 to i32
  %313 = sub i32 %311, %312
  %314 = icmp ult i32 %313, %308
  br i1 %314, label %342, label %315

315:                                              ; preds = %298
  %316 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %317 = load volatile i32, ptr %316, align 4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %342

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %321 = load i8, ptr %320, align 2
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %361, label %324

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.skb_shared_info, ptr %326, i32 0, i32 10
  %328 = load volatile i32, ptr %327, align 4
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 1
  br i1 %330, label %361, label %331

331:                                              ; preds = %324
  %332 = load volatile i32, ptr %327, align 4
  %333 = and i32 %332, 65535
  %334 = ashr i32 %332, 16
  %335 = sub nsw i32 %333, %334
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %342

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  %339 = load i16, ptr %338, align 2
  %340 = zext i16 %339 to i32
  %341 = icmp ugt i32 %313, %340
  br i1 %341, label %342, label %361

342:                                              ; preds = %337, %331, %315, %298
  %343 = call ptr @skb_realloc_headroom(ptr noundef %0, i32 noundef %308) #19
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %349

345:                                              ; preds = %342
  call void @dst_release(ptr noundef %208) #19
  %346 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, 1
  store i32 %348, ptr %346, align 4
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %433

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %351 = load ptr, ptr %350, align 4
  %352 = icmp eq ptr %351, null
  br i1 %352, label %354, label %353

353:                                              ; preds = %349
  call void @skb_set_owner_w(ptr noundef nonnull %343, ptr noundef nonnull %351) #19
  br label %354

354:                                              ; preds = %353, %349
  call void @consume_skb(ptr noundef %0) #19
  %355 = getelementptr inbounds %struct.sk_buff, ptr %343, i32 0, i32 16
  %356 = load ptr, ptr %355, align 8
  %357 = getelementptr inbounds %struct.sk_buff, ptr %343, i32 0, i32 13, i32 0, i32 18
  %358 = load i16, ptr %357, align 4
  %359 = zext i16 %358 to i32
  %360 = getelementptr i8, ptr %356, i32 %359
  br label %361

361:                                              ; preds = %354, %337, %324, %319
  %362 = phi ptr [ %343, %354 ], [ %0, %337 ], [ %0, %324 ], [ %0, %319 ]
  %363 = phi ptr [ %360, %354 ], [ %57, %337 ], [ %57, %324 ], [ %57, %319 ]
  %364 = getelementptr i8, ptr %1, i32 1504
  %365 = load i8, ptr %364, align 4
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.ipv6hdr, ptr %363, i32 0, i32 4
  %369 = load i8, ptr %368, align 1
  br label %370

370:                                              ; preds = %367, %361
  %371 = phi i8 [ %369, %367 ], [ %365, %361 ]
  %372 = load i16, ptr %363, align 2
  %373 = lshr i16 %372, 12
  %374 = trunc i16 %373 to i8
  %375 = and i8 %73, -4
  %376 = and i8 %374, 3
  %377 = icmp eq i8 %376, 3
  %378 = select i1 %377, i8 2, i8 %376
  %379 = or i8 %378, %375
  %380 = getelementptr i8, ptr %1, i32 1528
  %381 = load i16, ptr %380, align 4
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %402, label %383

383:                                              ; preds = %370
  %384 = icmp ugt i16 %381, 7
  br i1 %384, label %401, label %385

385:                                              ; preds = %383
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %386 = load i16, ptr %380, align 4
  %387 = zext i16 %386 to i32
  %388 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %387
  %389 = load volatile ptr, ptr %388, align 4
  %390 = icmp eq ptr %389, null
  br i1 %390, label %395, label %391, !prof !16

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %389, i32 0, i32 1
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %396, !prof !16

395:                                              ; preds = %391, %385
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  br label %401

396:                                              ; preds = %391
  %397 = call i32 %393(ptr noundef %362, ptr noundef %380, ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = load i8, ptr %5, align 1
  br label %402

401:                                              ; preds = %396, %395, %383
  call void @dst_release(ptr noundef %208) #19
  br label %428

402:                                              ; preds = %399, %370
  %403 = phi i8 [ %400, %399 ], [ 41, %370 ]
  %404 = getelementptr inbounds %struct.sk_buff, ptr %362, i32 0, i32 13, i32 0, i32 12
  store i8 41, ptr %404, align 8
  %405 = getelementptr inbounds %struct.sk_buff, ptr %362, i32 0, i32 13, i32 0, i32 3
  %406 = load i16, ptr %405, align 2
  %407 = or i16 %406, 512
  store i16 %407, ptr %405, align 2
  %408 = load i32, ptr %193, align 8
  %409 = load i32, ptr %192, align 4
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %208, ptr noundef %362, i32 noundef %408, i32 noundef %409, i8 noundef zeroext %403, i8 noundef zeroext %379, i8 noundef zeroext %371, i16 noundef zeroext %270, i1 noundef zeroext false) #19
  br label %433

410:                                              ; preds = %213, %200
  %411 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %412 = load i32, ptr %411, align 4
  %413 = add i32 %412, 1
  store i32 %413, ptr %411, align 4
  %414 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %415 = load i32, ptr %414, align 8
  %416 = and i32 %415, -2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %428, label %418

418:                                              ; preds = %410
  %419 = inttoptr i32 %416 to ptr
  %420 = getelementptr inbounds %struct.dst_entry, ptr %419, i32 0, i32 1
  %421 = load ptr, ptr %420, align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %428, label %423

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.dst_ops, ptr %421, i32 0, i32 10
  %425 = load ptr, ptr %424, align 8
  %426 = icmp eq ptr %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  call void %425(ptr noundef %0) #19
  br label %428

428:                                              ; preds = %427, %423, %418, %410, %401, %268, %236, %224, %217, %176, %135, %130, %118, %83, %78
  %429 = phi ptr [ %0, %217 ], [ %0, %224 ], [ %0, %236 ], [ %362, %401 ], [ %0, %268 ], [ %0, %410 ], [ %0, %418 ], [ %0, %423 ], [ %0, %427 ], [ %0, %78 ], [ %0, %83 ], [ %0, %118 ], [ %0, %130 ], [ %0, %135 ], [ %0, %176 ]
  call void @kfree_skb_reason(ptr noundef %429, i32 noundef 0) #19
  %430 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %431 = load i32, ptr %430, align 4
  %432 = add i32 %431, 1
  store i32 %432, ptr %430, align 4
  br label %433

433:                                              ; preds = %428, %402, %345
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #19
  br label %438

434:                                              ; preds = %38, %32, %30
  %435 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %436 = load i32, ptr %435, align 4
  %437 = add i32 %436, 1
  store i32 %437, ptr %435, align 4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %438

438:                                              ; preds = %434, %433, %49, %43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_tunnel_siocdevprivate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.ip_tunnel_prl, align 4
  %6 = alloca %struct.ip_tunnel_prl, align 4
  switch i32 %3, label %218 [
    i32 35312, label %7
    i32 35313, label %7
    i32 35315, label %7
    i32 35314, label %7
    i32 35316, label %9
    i32 35317, label %134
    i32 35318, label %134
    i32 35319, label %134
  ]

7:                                                ; preds = %4, %4, %4, %4
  %8 = tail call i32 @ip_tunnel_siocdevprivate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #19
  br label %218

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #19, !annotation !11
  %10 = getelementptr i8, ptr %0, i32 1424
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %13 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 37
  %14 = load volatile ptr, ptr %13, align 64
  %15 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %12
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %17 = getelementptr inbounds %struct.sit_net, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %132, label %20

20:                                               ; preds = %9
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1090519040) #23, !srcloc !22
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32, !prof !20

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #19
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #12, !srcloc !23
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #19, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %30 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 16) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #19, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !20

32:                                               ; preds = %24, %20
  %33 = phi i32 [ %30, %24 ], [ 16, %20 ]
  %34 = sub i32 16, %33
  %35 = getelementptr i8, ptr %6, i32 %34
  call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %33, i1 false) #19
  br label %132

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.ip_tunnel_prl, ptr %6, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 4
  %40 = icmp ugt i32 %38, 31
  %41 = load i32, ptr %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = select i1 %43, i32 1, i32 %39
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = call zeroext i1 @capable(i32 noundef 12) #19
  br i1 %47, label %48, label %52

48:                                               ; preds = %46, %36
  %49 = shl nuw i32 %44, 4
  %50 = call noalias align 64 ptr @__kmalloc(i32 noundef %49, i32 noundef 4206016) #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %60

52:                                               ; preds = %46
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr i8, ptr %0, i32 1540
  %55 = load i32, ptr %54, align 4
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 %44) #19
  %57 = shl nuw i32 %56, 4
  %58 = call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 4205344) #21
  %59 = icmp eq ptr %58, null
  br i1 %59, label %94, label %60

60:                                               ; preds = %53, %48
  %61 = phi ptr [ %50, %48 ], [ %58, %53 ]
  %62 = getelementptr i8, ptr %0, i32 1536
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp ne ptr %63, null
  %65 = icmp ne i32 %44, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load i32, ptr %6, align 4
  %69 = load i32, ptr %6, align 4
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %87, %67
  %72 = phi i32 [ %88, %87 ], [ %68, %67 ]
  %73 = phi ptr [ %90, %87 ], [ %63, %67 ]
  %74 = phi i32 [ %89, %87 ], [ 0, %67 ]
  %75 = icmp eq i32 %72, 0
  %76 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %73, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  br i1 %75, label %80, label %78

78:                                               ; preds = %71
  %79 = icmp eq i32 %77, %72
  br i1 %79, label %80, label %87

80:                                               ; preds = %78, %71
  %81 = phi i32 [ %72, %78 ], [ %77, %71 ]
  %82 = getelementptr %struct.ip_tunnel_prl, ptr %61, i32 %74
  store i32 %81, ptr %82, align 16
  %83 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %73, i32 0, i32 2
  %84 = load i16, ptr %83, align 4
  %85 = getelementptr %struct.ip_tunnel_prl, ptr %61, i32 %74, i32 1
  store i16 %84, ptr %85, align 4
  %86 = add nuw i32 %74, 1
  br i1 %70, label %87, label %96

87:                                               ; preds = %80, %78
  %88 = phi i32 [ %72, %78 ], [ 0, %80 ]
  %89 = phi i32 [ %74, %78 ], [ %86, %80 ]
  %90 = load volatile ptr, ptr %73, align 4
  %91 = icmp ne ptr %90, null
  %92 = icmp ult i32 %89, %44
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %71, label %96

94:                                               ; preds = %53
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  br label %118

95:                                               ; preds = %60
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  br label %118

96:                                               ; preds = %87, %80
  %97 = phi i32 [ %86, %80 ], [ %89, %87 ]
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %98 = shl i32 %97, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.ip_tunnel_prl, ptr %2, i32 1
  %102 = icmp slt i32 %98, 0
  %103 = load i1, ptr @check_copy_size.__already_done, align 1
  %104 = xor i1 %103, true
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %107, !prof !16

106:                                              ; preds = %100
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %107

107:                                              ; preds = %106, %100
  br i1 %102, label %127, label %108, !prof !16

108:                                              ; preds = %107
  %109 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %101, i32 %98, i32 -1090519040) #23, !srcloc !26
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #12, !srcloc !23
  %114 = and i32 %113, -13
  %115 = or i32 %114, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #19, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %116 = call i32 @arm_copy_to_user(ptr noundef %101, ptr noundef %61, i32 noundef %98) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #19, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112, %96, %95, %94
  %119 = phi i32 [ 0, %94 ], [ %98, %112 ], [ 0, %96 ], [ 0, %95 ]
  %120 = phi ptr [ null, %94 ], [ %61, %112 ], [ %61, %96 ], [ %61, %95 ]
  %121 = getelementptr inbounds %struct.ip_tunnel_prl, ptr %2, i32 0, i32 3
  %122 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #12, !srcloc !23
  %123 = and i32 %122, -13
  %124 = or i32 %123, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #19, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %125 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %121, i32 %119, i32 -1090519041) #19, !srcloc !27
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #19, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %118, %112, %108, %107
  %128 = phi ptr [ %120, %118 ], [ %61, %112 ], [ %61, %107 ], [ %61, %108 ]
  br label %129

129:                                              ; preds = %127, %118
  %130 = phi ptr [ %128, %127 ], [ %120, %118 ]
  %131 = phi i32 [ -14, %127 ], [ 0, %118 ]
  call void @kfree(ptr noundef %130) #19
  br label %132

132:                                              ; preds = %129, %32, %9
  %133 = phi i32 [ %131, %129 ], [ -22, %9 ], [ -14, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %218

134:                                              ; preds = %4, %4, %4
  %135 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #19, !annotation !11
  %136 = getelementptr i8, ptr %0, i32 1424
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.net, ptr %137, i32 0, i32 11
  %139 = load ptr, ptr %138, align 4
  %140 = tail call zeroext i1 @ns_capable(ptr noundef %139, i32 noundef 12) #19
  br i1 %140, label %141, label %216

141:                                              ; preds = %134
  %142 = load ptr, ptr %136, align 4
  %143 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %144 = getelementptr inbounds %struct.net, ptr %142, i32 0, i32 37
  %145 = load volatile ptr, ptr %144, align 64
  %146 = getelementptr [0 x ptr], ptr %145, i32 0, i32 %143
  %147 = load ptr, ptr %146, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %148 = getelementptr inbounds %struct.sit_net, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, %0
  br i1 %150, label %216, label %151

151:                                              ; preds = %141
  %152 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1090519040) #23, !srcloc !22
  %153 = extractvalue { i32, i32 } %152, 0
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163, !prof !20

155:                                              ; preds = %151
  %156 = tail call ptr @llvm.thread.pointer() #19
  %157 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 3
  %158 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %157) #12, !srcloc !23
  %159 = and i32 %158, -13
  %160 = or i32 %159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #19, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %161 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 16) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #19, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !25
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163, !prof !20

163:                                              ; preds = %155, %151
  %164 = phi i32 [ %161, %155 ], [ 16, %151 ]
  %165 = sub i32 16, %164
  %166 = getelementptr i8, ptr %5, i32 %165
  call void @llvm.memset.p0.i32(ptr align 1 %166, i8 0, i32 %164, i1 false) #19
  br label %216

167:                                              ; preds = %155
  switch i32 %3, label %212 [
    i32 35318, label %168
    i32 35317, label %170
    i32 35319, label %170
  ]

168:                                              ; preds = %167
  %169 = call fastcc i32 @ipip6_tunnel_del_prl(ptr noundef %135, ptr noundef nonnull %5) #19
  br label %212

170:                                              ; preds = %167, %167
  %171 = icmp eq i32 %3, 35319
  %172 = load i32, ptr %5, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %212, label %174

174:                                              ; preds = %170
  %175 = call i32 @rtnl_is_locked() #19
  %176 = icmp eq i32 %175, 0
  %177 = load i1, ptr @ipip6_tunnel_add_prl.__already_done, align 1
  %178 = xor i1 %177, true
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %181, !prof !16

180:                                              ; preds = %174
  store i1 true, ptr @ipip6_tunnel_add_prl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 378, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 378) #19
  br label %181

181:                                              ; preds = %180, %174
  %182 = getelementptr i8, ptr %0, i32 1536
  %183 = load i32, ptr %5, align 4
  br label %184

184:                                              ; preds = %188, %181
  %185 = phi ptr [ %182, %181 ], [ %186, %188 ]
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %197, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %186, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, %183
  br i1 %191, label %192, label %184

192:                                              ; preds = %188
  br i1 %171, label %193, label %212

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.ip_tunnel_prl, ptr %5, i32 0, i32 1
  %195 = load i16, ptr %194, align 4
  %196 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %186, i32 0, i32 2
  store i16 %195, ptr %196, align 4
  br label %212

197:                                              ; preds = %184
  br i1 %171, label %212, label %198

198:                                              ; preds = %197
  %199 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %200 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %199, i32 noundef 3520, i32 noundef 20) #24
  %201 = icmp eq ptr %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr %182, align 4
  store ptr %203, ptr %200, align 8
  %204 = load i32, ptr %5, align 4
  %205 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %200, i32 0, i32 1
  store i32 %204, ptr %205, align 4
  %206 = getelementptr inbounds %struct.ip_tunnel_prl, ptr %5, i32 0, i32 1
  %207 = load i16, ptr %206, align 4
  %208 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %200, i32 0, i32 2
  store i16 %207, ptr %208, align 8
  %209 = getelementptr i8, ptr %0, i32 1540
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %209, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !28
  store volatile ptr %200, ptr %182, align 4
  br label %212

212:                                              ; preds = %202, %198, %197, %193, %192, %170, %168, %167
  %213 = phi i32 [ 0, %167 ], [ %169, %168 ], [ -22, %170 ], [ 0, %193 ], [ 0, %202 ], [ -17, %192 ], [ -6, %197 ], [ -105, %198 ]
  %214 = load volatile i32, ptr @jiffies, align 64
  %215 = getelementptr i8, ptr %0, i32 1460
  store i32 %214, ptr %215, align 4
  call void @netdev_state_change(ptr noundef %0) #19
  br label %216

216:                                              ; preds = %212, %163, %141, %134
  %217 = phi i32 [ %213, %212 ], [ -1, %134 ], [ -22, %141 ], [ -14, %163 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %218

218:                                              ; preds = %216, %132, %7, %4
  %219 = phi i32 [ %217, %216 ], [ %133, %132 ], [ %8, %7 ], [ -22, %4 ]
  ret i32 %219
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_get_iflink(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_tunnel_ctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  switch i32 %2, label %295 [
    i32 35312, label %4
    i32 35313, label %73
    i32 35315, label %102
    i32 35314, label %211
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1424
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %9 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 37
  %10 = load volatile ptr, ptr %9, align 64
  %11 = getelementptr [0 x ptr], ptr %10, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %13 = getelementptr inbounds %struct.sit_net, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %68

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %23 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 37
  %24 = load volatile ptr, ptr %23, align 64
  %25 = getelementptr [0 x ptr], ptr %24, i32 0, i32 %22
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %27 = load i32, ptr %18, align 4
  %28 = load i32, ptr %20, align 4
  %29 = icmp eq i32 %27, 0
  %30 = lshr i32 %27, 4
  %31 = xor i32 %30, %27
  %32 = and i32 %31, 15
  %33 = select i1 %29, i32 0, i32 %32
  %34 = select i1 %29, i32 0, i32 2
  %35 = icmp eq i32 %28, 0
  %36 = lshr i32 %28, 4
  %37 = xor i32 %36, %28
  %38 = and i32 %37, 15
  %39 = select i1 %35, i32 0, i32 %38
  %40 = xor i32 %39, %33
  %41 = xor i1 %35, true
  %42 = zext i1 %41 to i32
  %43 = or i32 %34, %42
  %44 = getelementptr %struct.sit_net, ptr %26, i32 0, i32 4, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr ptr, ptr %45, i32 %40
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %16
  %50 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  br label %51

51:                                               ; preds = %65, %49
  %52 = phi ptr [ %47, %49 ], [ %66, %65 ]
  %53 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 6, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %21, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 6, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %19, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, ptr %50, align 4
  %62 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %56, %51
  %66 = load ptr, ptr %52, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %51

68:                                               ; preds = %65, %60, %16, %4
  %69 = phi ptr [ %5, %4 ], [ null, %16 ], [ null, %65 ], [ %52, %60 ]
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, ptr %5, ptr %69
  %72 = getelementptr inbounds %struct.ip_tunnel, ptr %71, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %1, ptr noundef align 4 dereferenceable(52) %72, i32 52, i1 false) #19
  br label %295

73:                                               ; preds = %3
  %74 = getelementptr i8, ptr %0, i32 1424
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.net, ptr %75, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = tail call zeroext i1 @ns_capable(ptr noundef %77, i32 noundef 12) #19
  br i1 %78, label %79, label %295

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 6
  %81 = load i8, ptr %80, align 1
  switch i8 %81, label %295 [
    i8 41, label %82
    i8 4, label %82
    i8 0, label %82
  ]

82:                                               ; preds = %79, %79, %79
  %83 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6
  %84 = load i8, ptr %83, align 4
  %85 = icmp eq i8 %84, 69
  br i1 %85, label %86, label %295

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = and i16 %88, -65
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %295

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 5
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = or i16 %88, 64
  store i16 %96, ptr %87, align 2
  br label %97

97:                                               ; preds = %95, %91
  %98 = load ptr, ptr %74, align 4
  %99 = tail call fastcc ptr @ipip6_tunnel_locate(ptr noundef %98, ptr noundef %1, i32 noundef 1) #19
  %100 = icmp eq ptr %99, null
  %101 = select i1 %100, i32 -105, i32 0
  br label %295

102:                                              ; preds = %3
  %103 = getelementptr i8, ptr %0, i32 1408
  %104 = getelementptr i8, ptr %0, i32 1424
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.net, ptr %105, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = tail call zeroext i1 @ns_capable(ptr noundef %107, i32 noundef 12) #19
  br i1 %108, label %109, label %295

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 6
  %111 = load i8, ptr %110, align 1
  switch i8 %111, label %295 [
    i8 41, label %112
    i8 4, label %112
    i8 0, label %112
  ]

112:                                              ; preds = %109, %109, %109
  %113 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6
  %114 = load i8, ptr %113, align 4
  %115 = icmp eq i8 %114, 69
  br i1 %115, label %116, label %295

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 4
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, -65
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %295

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 5
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = or i16 %118, 64
  store i16 %126, ptr %117, align 2
  br label %127

127:                                              ; preds = %125, %121
  %128 = load ptr, ptr %104, align 4
  %129 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %134 = getelementptr inbounds %struct.net, ptr %128, i32 0, i32 37
  %135 = load volatile ptr, ptr %134, align 64
  %136 = getelementptr [0 x ptr], ptr %135, i32 0, i32 %133
  %137 = load ptr, ptr %136, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %138 = load i32, ptr %129, align 4
  %139 = load i32, ptr %131, align 4
  %140 = icmp eq i32 %138, 0
  %141 = lshr i32 %138, 4
  %142 = xor i32 %141, %138
  %143 = and i32 %142, 15
  %144 = select i1 %140, i32 0, i32 %143
  %145 = select i1 %140, i32 0, i32 2
  %146 = icmp eq i32 %139, 0
  %147 = lshr i32 %139, 4
  %148 = xor i32 %147, %139
  %149 = and i32 %148, 15
  %150 = select i1 %146, i32 0, i32 %149
  %151 = xor i32 %150, %144
  %152 = xor i1 %146, true
  %153 = zext i1 %152 to i32
  %154 = or i32 %145, %153
  %155 = getelementptr %struct.sit_net, ptr %137, i32 0, i32 4, i32 %154
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr ptr, ptr %156, i32 %151
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %179, label %160

160:                                              ; preds = %127
  %161 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  br label %162

162:                                              ; preds = %176, %160
  %163 = phi ptr [ %158, %160 ], [ %177, %176 ]
  %164 = getelementptr inbounds %struct.ip_tunnel, ptr %163, i32 0, i32 15, i32 6, i32 8
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %132, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.ip_tunnel, ptr %163, i32 0, i32 15, i32 6, i32 9
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %130, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load i32, ptr %161, align 4
  %173 = getelementptr inbounds %struct.ip_tunnel, ptr %163, i32 0, i32 15, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %179, label %176

176:                                              ; preds = %171, %167, %162
  %177 = load ptr, ptr %163, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %162

179:                                              ; preds = %176, %171, %127
  %180 = phi ptr [ null, %127 ], [ null, %176 ], [ %163, %171 ]
  %181 = load ptr, ptr %104, align 4
  %182 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %183 = getelementptr inbounds %struct.net, ptr %181, i32 0, i32 37
  %184 = load volatile ptr, ptr %183, align 64
  %185 = getelementptr [0 x ptr], ptr %184, i32 0, i32 %182
  %186 = load ptr, ptr %185, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %187 = getelementptr inbounds %struct.sit_net, ptr %186, i32 0, i32 5
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, %0
  %190 = icmp eq ptr %180, null
  br i1 %189, label %191, label %192

191:                                              ; preds = %179
  br i1 %190, label %295, label %210

192:                                              ; preds = %179
  br i1 %190, label %197, label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.ip_tunnel, ptr %180, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, %0
  br i1 %196, label %206, label %295

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  %202 = load i32, ptr %129, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %201, label %205, label %204

204:                                              ; preds = %197
  br i1 %203, label %295, label %206

205:                                              ; preds = %197
  br i1 %203, label %206, label %295

206:                                              ; preds = %205, %204, %193
  %207 = phi ptr [ %180, %193 ], [ %103, %204 ], [ %103, %205 ]
  %208 = getelementptr inbounds %struct.ip_tunnel, ptr %207, i32 0, i32 24
  %209 = load i32, ptr %208, align 4
  tail call fastcc void @ipip6_tunnel_update(ptr noundef %207, ptr noundef %1, i32 noundef %209) #19
  br label %210

210:                                              ; preds = %206, %191
  br label %295

211:                                              ; preds = %3
  %212 = getelementptr i8, ptr %0, i32 1424
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.net, ptr %213, i32 0, i32 11
  %215 = load ptr, ptr %214, align 4
  %216 = tail call zeroext i1 @ns_capable(ptr noundef %215, i32 noundef 12) #19
  br i1 %216, label %217, label %295

217:                                              ; preds = %211
  %218 = load ptr, ptr %212, align 4
  %219 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %220 = getelementptr inbounds %struct.net, ptr %218, i32 0, i32 37
  %221 = load volatile ptr, ptr %220, align 64
  %222 = getelementptr [0 x ptr], ptr %221, i32 0, i32 %219
  %223 = load ptr, ptr %222, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %224 = getelementptr inbounds %struct.sit_net, ptr %223, i32 0, i32 5
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, %0
  br i1 %226, label %227, label %293

227:                                              ; preds = %217
  %228 = load ptr, ptr %212, align 4
  %229 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %234 = getelementptr inbounds %struct.net, ptr %228, i32 0, i32 37
  %235 = load volatile ptr, ptr %234, align 64
  %236 = getelementptr [0 x ptr], ptr %235, i32 0, i32 %233
  %237 = load ptr, ptr %236, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %238 = load i32, ptr %229, align 4
  %239 = load i32, ptr %231, align 4
  %240 = icmp eq i32 %238, 0
  %241 = lshr i32 %238, 4
  %242 = xor i32 %241, %238
  %243 = and i32 %242, 15
  %244 = select i1 %240, i32 0, i32 %243
  %245 = select i1 %240, i32 0, i32 2
  %246 = icmp eq i32 %239, 0
  %247 = lshr i32 %239, 4
  %248 = xor i32 %247, %239
  %249 = and i32 %248, 15
  %250 = select i1 %246, i32 0, i32 %249
  %251 = xor i32 %250, %244
  %252 = xor i1 %246, true
  %253 = zext i1 %252 to i32
  %254 = or i32 %245, %253
  %255 = getelementptr %struct.sit_net, ptr %237, i32 0, i32 4, i32 %254
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr ptr, ptr %256, i32 %251
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %295, label %260

260:                                              ; preds = %227
  %261 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  br label %262

262:                                              ; preds = %276, %260
  %263 = phi ptr [ %258, %260 ], [ %277, %276 ]
  %264 = getelementptr inbounds %struct.ip_tunnel, ptr %263, i32 0, i32 15, i32 6, i32 8
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %232, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.ip_tunnel, ptr %263, i32 0, i32 15, i32 6, i32 9
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %230, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load i32, ptr %261, align 4
  %273 = getelementptr inbounds %struct.ip_tunnel, ptr %263, i32 0, i32 15, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %272, %274
  br i1 %275, label %279, label %276

276:                                              ; preds = %271, %267, %262
  %277 = load ptr, ptr %263, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %295, label %262

279:                                              ; preds = %271
  %280 = load ptr, ptr %212, align 4
  %281 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %282 = getelementptr inbounds %struct.net, ptr %280, i32 0, i32 37
  %283 = load volatile ptr, ptr %282, align 64
  %284 = getelementptr [0 x ptr], ptr %283, i32 0, i32 %281
  %285 = load ptr, ptr %284, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %286 = getelementptr inbounds %struct.sit_net, ptr %285, i32 0, i32 5
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr i8, ptr %287, i32 1408
  %289 = icmp eq ptr %263, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %279
  %291 = getelementptr inbounds %struct.ip_tunnel, ptr %263, i32 0, i32 2
  %292 = load ptr, ptr %291, align 4
  br label %293

293:                                              ; preds = %290, %217
  %294 = phi ptr [ %292, %290 ], [ %0, %217 ]
  tail call void @unregister_netdevice_queue(ptr noundef %294, ptr noundef null) #19
  br label %295

295:                                              ; preds = %293, %279, %276, %227, %211, %210, %205, %204, %193, %191, %116, %112, %109, %102, %97, %86, %82, %79, %73, %68, %3
  %296 = phi i32 [ 0, %68 ], [ -22, %3 ], [ %101, %97 ], [ -22, %79 ], [ -22, %82 ], [ -22, %86 ], [ -1, %73 ], [ 0, %210 ], [ -2, %191 ], [ -17, %193 ], [ -22, %205 ], [ -22, %204 ], [ -22, %109 ], [ -22, %112 ], [ -22, %116 ], [ -1, %102 ], [ 0, %293 ], [ -1, %211 ], [ -1, %279 ], [ -2, %227 ], [ -2, %276 ]
  ret i32 %296
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_bind_dev(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !11
  %3 = getelementptr i8, ptr %0, i32 1512
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1424
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 1508
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 1497
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 30
  %14 = getelementptr i8, ptr %0, i32 1480
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 8
  %16 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 1
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 3
  store i8 %13, ptr %17, align 4
  %18 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  store i8 41, ptr %18, align 2
  %19 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  %20 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %19, i8 0, i64 17, i1 false) #19
  store i32 %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  store i32 %10, ptr %21, align 8
  %22 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.anon.81, ptr %22, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = call ptr @ip_route_output_flow(ptr noundef %8, ptr noundef nonnull %2, ptr noundef null) #19
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 16
  store i32 %29, ptr %27, align 8
  br label %36

30:                                               ; preds = %6
  %31 = load ptr, ptr %24, align 4
  call void @dst_release(ptr noundef %24) #19
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 16
  store i32 %34, ptr %32, align 8
  %35 = icmp eq ptr %31, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30, %26, %1
  %37 = getelementptr i8, ptr %0, i32 1480
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %0, i32 1424
  %42 = load ptr, ptr %41, align 4
  %43 = call ptr @__dev_get_by_index(ptr noundef %42, i32 noundef %38) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %40, %30
  %46 = phi ptr [ %43, %40 ], [ %31, %30 ]
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 15
  %48 = load i64, ptr %47, align 16
  %49 = and i64 %48, 262144
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %0, i32 1524
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 -20, %53
  %57 = add i32 %56, %55
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %59 = call i32 @llvm.umax.i32(i32 %57, i32 1280)
  store i32 %59, ptr %58, align 4
  br label %60

60:                                               ; preds = %51, %45, %40, %36
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipip6_tunnel_del_prl(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = tail call i32 @rtnl_is_locked() #19
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ipip6_tunnel_del_prl.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %2
  store i1 true, ptr @ipip6_tunnel_del_prl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 430) #19
  br label %9

9:                                                ; preds = %8, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 20
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %18, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %12
  br i1 %23, label %24, label %16

24:                                               ; preds = %20
  %25 = load ptr, ptr %18, align 4
  store ptr %25, ptr %17, align 4
  %26 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %18, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %26, ptr noundef nonnull inttoptr (i32 12 to ptr)) #19
  %27 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 21
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  br label %37

30:                                               ; preds = %11, %9
  %31 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 21
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %32, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %36, ptr noundef nonnull @prl_list_destroy_rcu) #19
  store ptr null, ptr %31, align 4
  br label %37

37:                                               ; preds = %34, %30, %24, %16
  %38 = phi i32 [ 0, %24 ], [ 0, %34 ], [ 0, %30 ], [ -6, %16 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prl_list_destroy_rcu(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -12
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3

7:                                                ; preds = %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iptunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ipip6_tunnel_locate(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %9 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %11 = load volatile ptr, ptr %10, align 64
  %12 = getelementptr [0 x ptr], ptr %11, i32 0, i32 %9
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %7, align 4
  %16 = icmp eq i32 %14, 0
  %17 = lshr i32 %14, 4
  %18 = xor i32 %17, %14
  %19 = and i32 %18, 15
  %20 = select i1 %16, i32 0, i32 %19
  %21 = select i1 %16, i32 0, i32 2
  %22 = icmp eq i32 %15, 0
  %23 = lshr i32 %15, 4
  %24 = xor i32 %23, %15
  %25 = and i32 %24, 15
  %26 = select i1 %22, i32 0, i32 %25
  %27 = xor i32 %26, %20
  %28 = xor i1 %22, true
  %29 = zext i1 %28 to i32
  %30 = or i32 %21, %29
  %31 = getelementptr %struct.sit_net, ptr %13, i32 0, i32 4, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr ptr, ptr %32, i32 %27
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  br label %38

38:                                               ; preds = %55, %36
  %39 = phi ptr [ %34, %36 ], [ %56, %55 ]
  %40 = getelementptr inbounds %struct.ip_tunnel, ptr %39, i32 0, i32 15, i32 6, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %8, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ip_tunnel, ptr %39, i32 0, i32 15, i32 6, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %6, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, ptr %37, align 4
  %49 = getelementptr inbounds %struct.ip_tunnel, ptr %39, i32 0, i32 15, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = icmp eq i32 %2, 0
  %54 = select i1 %53, ptr %39, ptr null
  br label %82

55:                                               ; preds = %47, %43, %38
  %56 = load ptr, ptr %39, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %38

58:                                               ; preds = %55, %3
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %58
  %61 = load i8, ptr %1, align 4
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = tail call zeroext i1 @dev_valid_name(ptr noundef %1) #19
  br i1 %64, label %65, label %82

65:                                               ; preds = %63
  %66 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 16) #19
  br label %68

67:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i32 6, i1 false)
  br label %68

68:                                               ; preds = %67, %65
  %69 = call ptr @alloc_netdev_mqs(i32 noundef 152, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef nonnull @ipip6_tunnel_setup, i32 noundef 1, i32 noundef 1) #19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = getelementptr i8, ptr %69, i32 1408
  %73 = getelementptr i8, ptr %69, i32 1464
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %73, ptr noundef align 4 dereferenceable(52) %1, i32 52, i1 false)
  %74 = call fastcc i32 @ipip6_tunnel_create(ptr noundef nonnull %69)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8, ptr %1, align 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = call ptr @strcpy(ptr noundef %1, ptr noundef nonnull %69)
  br label %82

81:                                               ; preds = %71
  call void @free_netdev(ptr noundef nonnull %69) #19
  br label %82

82:                                               ; preds = %81, %79, %76, %68, %63, %58, %52
  %83 = phi ptr [ %54, %52 ], [ null, %68 ], [ %72, %79 ], [ %72, %76 ], [ null, %63 ], [ null, %58 ], [ null, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret ptr %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipip6_tunnel_create(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %7 = getelementptr i8, ptr %0, i32 1508
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %7, i32 noundef 4) #19
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 83
  %9 = getelementptr i8, ptr %0, i32 1512
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr i8, ptr %0, i32 1484
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %17 = load i64, ptr %16, align 16
  %18 = or i64 %17, 8
  store i64 %18, ptr %16, align 16
  br label %19

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  store ptr @sit_link_ops, ptr %20, align 4
  %21 = tail call i32 @register_netdevice(ptr noundef %0) #19
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %9, align 4
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %24, 0
  %27 = lshr i32 %24, 4
  %28 = xor i32 %27, %24
  %29 = and i32 %28, 15
  %30 = select i1 %26, i32 0, i32 %29
  %31 = select i1 %26, i32 0, i32 2
  %32 = icmp eq i32 %25, 0
  %33 = lshr i32 %25, 4
  %34 = xor i32 %33, %25
  %35 = and i32 %34, 15
  %36 = select i1 %32, i32 0, i32 %35
  %37 = xor i32 %36, %30
  %38 = xor i1 %32, true
  %39 = zext i1 %38 to i32
  %40 = or i32 %31, %39
  %41 = getelementptr %struct.sit_net, ptr %6, i32 0, i32 4, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr ptr, ptr %42, i32 %37
  %44 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  store volatile ptr %44, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  store volatile ptr %2, ptr %43, align 4
  br label %45

45:                                               ; preds = %23, %19
  %46 = phi i32 [ 0, %23 ], [ %21, %19 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %7 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %11 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 6, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 6, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, 0
  %16 = lshr i32 %12, 4
  %17 = xor i32 %16, %12
  %18 = and i32 %17, 15
  %19 = select i1 %15, i32 0, i32 %18
  %20 = select i1 %15, i32 0, i32 2
  %21 = icmp eq i32 %14, 0
  %22 = lshr i32 %14, 4
  %23 = xor i32 %22, %14
  %24 = and i32 %23, 15
  %25 = select i1 %21, i32 0, i32 %24
  %26 = xor i32 %25, %19
  %27 = xor i1 %21, true
  %28 = zext i1 %27 to i32
  %29 = or i32 %20, %28
  %30 = getelementptr %struct.sit_net, ptr %10, i32 0, i32 4, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr ptr, ptr %31, i32 %26
  br label %33

33:                                               ; preds = %37, %3
  %34 = phi ptr [ %32, %3 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %35, %0
  br i1 %38, label %39, label %33

39:                                               ; preds = %37
  %40 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  store volatile ptr %40, ptr %34, align 4
  br label %41

41:                                               ; preds = %39, %33
  tail call void @synchronize_net() #19
  %42 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %13, align 4
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %11, align 4
  %46 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  tail call void @dev_addr_mod(ptr noundef %47, i32 noundef 0, ptr noundef %42, i32 noundef 4) #19
  %48 = load ptr, ptr %46, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 83
  %50 = load i32, ptr %44, align 4
  store i32 %50, ptr %49, align 4
  %51 = load i32, ptr %11, align 4
  %52 = load i32, ptr %13, align 4
  %53 = icmp eq i32 %51, 0
  %54 = lshr i32 %51, 4
  %55 = xor i32 %54, %51
  %56 = and i32 %55, 15
  %57 = select i1 %53, i32 0, i32 %56
  %58 = select i1 %53, i32 0, i32 2
  %59 = icmp eq i32 %52, 0
  %60 = lshr i32 %52, 4
  %61 = xor i32 %60, %52
  %62 = and i32 %61, 15
  %63 = select i1 %59, i32 0, i32 %62
  %64 = xor i32 %63, %57
  %65 = xor i1 %59, true
  %66 = zext i1 %65 to i32
  %67 = or i32 %58, %66
  %68 = getelementptr %struct.sit_net, ptr %10, i32 0, i32 4, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr ptr, ptr %69, i32 %64
  %71 = load ptr, ptr %70, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  store volatile ptr %71, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  store volatile ptr %0, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 6, i32 5
  store i8 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 6, i32 1
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 4
  %79 = load i16, ptr %78, align 2
  %80 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 6, i32 4
  store i16 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %41
  %87 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 24
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %2
  br i1 %89, label %93, label %90

90:                                               ; preds = %86, %41
  store i32 %84, ptr %81, align 4
  %91 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 24
  store i32 %2, ptr %91, align 4
  %92 = load ptr, ptr %46, align 4
  tail call fastcc void @ipip6_tunnel_bind_dev(ptr noundef %92)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load volatile i32, ptr @jiffies, align 64
  %95 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 14, i32 1
  store i32 %94, ptr %95, align 4
  %96 = load ptr, ptr %46, align 4
  tail call void @netdev_state_change(ptr noundef %96) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_rcv(ptr noundef %0) #4 {
  %2 = alloca %struct.vlan_hdr, align 4
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = alloca %struct.vlan_hdr, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 15
  %14 = load i64, ptr %13, align 16
  %15 = and i64 %14, 262144
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i32 [ %19, %17 ], [ 0, %1 ]
  %22 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = tail call fastcc ptr @ipip6_tunnel_lookup(ptr noundef %12, i32 noundef %23, i32 noundef %25, i32 noundef %21)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %479, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 15, i32 6, i32 6
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %478 [
    i8 41, label %31
    i8 0, label %31
  ]

31:                                               ; preds = %28, %28
  %32 = load i16, ptr %7, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %5, align 8
  %37 = ptrtoint ptr %35 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %7, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  store i16 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %11, align 8
  %44 = load ptr, ptr %42, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 15
  %46 = load i64, ptr %45, align 16
  %47 = and i64 %46, 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %95, label %49

49:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %50 = load i32, ptr %22, align 4
  %51 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 20
  br label %52

52:                                               ; preds = %56, %49
  %53 = phi ptr [ %51, %49 ], [ %54, %56 ]
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %54, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %50
  br i1 %59, label %60, label %52

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %54, i32 0, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %66 = load i16, ptr %65, align 2
  br i1 %64, label %69, label %67

67:                                               ; preds = %60
  %68 = or i16 %66, 192
  store i16 %68, ptr %65, align 2
  br label %134

69:                                               ; preds = %60
  %70 = and i16 %66, -193
  %71 = or i16 %70, 128
  store i16 %71, ptr %65, align 2
  br label %134

72:                                               ; preds = %52
  %73 = load ptr, ptr %5, align 8
  %74 = load i16, ptr %7, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = getelementptr inbounds %struct.ipv6hdr, ptr %76, i32 0, i32 5
  %78 = getelementptr [4 x i32], ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, -3
  %81 = icmp eq i32 %80, -27394048
  br i1 %81, label %82, label %133

82:                                               ; preds = %72
  %83 = getelementptr %struct.ipv6hdr, ptr %76, i32 0, i32 5, i32 0, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %50
  br i1 %85, label %86, label %133

86:                                               ; preds = %82
  %87 = load ptr, ptr %42, align 4
  %88 = tail call i32 @ipv6_chk_prefix(ptr noundef %77, ptr noundef %87) #19
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %133, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %92 = load i16, ptr %91, align 2
  %93 = and i16 %92, -193
  %94 = or i16 %93, 64
  store i16 %94, ptr %91, align 2
  br label %134

95:                                               ; preds = %31
  %96 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 14
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %95
  %101 = and i32 %39, 65535
  %102 = getelementptr i8, ptr %36, i32 %101
  %103 = getelementptr inbounds %struct.ipv6hdr, ptr %102, i32 0, i32 5
  %104 = load i16, ptr %103, align 4
  %105 = icmp eq i16 %104, 544
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32, ptr %22, align 4
  %108 = getelementptr [8 x i16], ptr %103, i32 0, i32 1
  %109 = load i32, ptr %108, align 2
  %110 = icmp eq i32 %109, %107
  br i1 %110, label %117, label %111, !prof !20

111:                                              ; preds = %106
  %112 = tail call i32 @net_ratelimit() #19
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %473, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.ipv6hdr, ptr %102, i32 0, i32 6
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %22, ptr noundef %103, ptr noundef %24, ptr noundef %115) #20
  br label %473

117:                                              ; preds = %106, %100
  %118 = getelementptr inbounds %struct.ipv6hdr, ptr %102, i32 0, i32 6
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 544
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i32, ptr %24, align 4
  %123 = getelementptr [8 x i16], ptr %118, i32 0, i32 1
  %124 = load i32, ptr %123, align 2
  %125 = icmp eq i32 %124, %122
  br i1 %125, label %135, label %126, !prof !20

126:                                              ; preds = %121
  %127 = tail call zeroext i1 @ipv6_chk_custom_prefix(ptr noundef %118, i32 noundef 48, ptr noundef %44) #19
  br i1 %127, label %135, label %128

128:                                              ; preds = %126
  %129 = tail call i32 @net_ratelimit() #19
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %473, label %131

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %22, ptr noundef %103, ptr noundef %24, ptr noundef %118) #20
  br label %473

133:                                              ; preds = %86, %82, %72
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  br label %473

134:                                              ; preds = %90, %69, %67
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  br label %135

135:                                              ; preds = %134, %126, %121, %117, %95
  %136 = tail call i32 @__iptunnel_pull_header(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -8826, i1 noundef zeroext false, i1 noundef zeroext false) #19
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %478

138:                                              ; preds = %135
  %139 = load ptr, ptr %5, align 8
  %140 = load i16, ptr %33, align 2
  %141 = zext i16 %140 to i32
  %142 = getelementptr i8, ptr %139, i32 %141
  %143 = load ptr, ptr %34, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = ptrtoint ptr %139 to i32
  %146 = sub i32 %144, %145
  %147 = trunc i32 %146 to i16
  store i16 %147, ptr %33, align 2
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %149 = load i16, ptr %148, align 8
  %150 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %151 = load i16, ptr %150, align 8
  %152 = zext i16 %151 to i32
  switch i16 %149, label %193 [
    i16 -22392, label %153
    i16 129, label %153
  ]

153:                                              ; preds = %138, %138
  %154 = icmp eq i16 %151, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %153
  %156 = icmp ult i16 %151, 4
  br i1 %156, label %157, label %158, !prof !16

157:                                              ; preds = %155
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %449

158:                                              ; preds = %155
  %159 = add nsw i32 %152, -4
  br label %160

160:                                              ; preds = %158, %153
  %161 = phi i32 [ %159, %158 ], [ 14, %153 ]
  %162 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %163 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %164 = icmp eq ptr %0, null
  br label %165

165:                                              ; preds = %191, %160
  %166 = phi i32 [ %161, %160 ], [ %192, %191 ]
  %167 = phi i32 [ 8, %160 ], [ %184, %191 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !11
  %168 = load i32, ptr %162, align 8
  %169 = load i32, ptr %163, align 4
  %170 = add i32 %166, %169
  %171 = sub i32 %168, %170
  %172 = icmp sgt i32 %171, 3
  br i1 %172, label %173, label %176, !prof !20

173:                                              ; preds = %165
  %174 = load ptr, ptr %34, align 4
  %175 = getelementptr i8, ptr %174, i32 %166
  br label %181

176:                                              ; preds = %165
  br i1 %164, label %187, label %177

177:                                              ; preds = %176
  %178 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %166, ptr noundef nonnull %4, i32 noundef 4) #19
  %179 = icmp slt i32 %178, 0
  %180 = select i1 %179, ptr null, ptr %4, !prof !16
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi ptr [ %175, %173 ], [ %180, %177 ]
  %183 = icmp eq ptr %182, null
  %184 = add nsw i32 %167, -1
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %183, i1 true, i1 %185, !prof !16
  br i1 %186, label %187, label %188, !prof !16

187:                                              ; preds = %181, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %449

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.vlan_hdr, ptr %182, i32 0, i32 1
  %190 = load i16, ptr %189, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  switch i16 %190, label %193 [
    i16 -22392, label %191
    i16 129, label %191
  ]

191:                                              ; preds = %188, %188
  %192 = add nsw i32 %166, 4
  br label %165

193:                                              ; preds = %188, %138
  %194 = phi i16 [ %149, %138 ], [ %190, %188 ]
  switch i16 %194, label %449 [
    i16 8, label %195
    i16 -8826, label %202
  ]

195:                                              ; preds = %193
  %196 = load ptr, ptr %5, align 8
  %197 = load i16, ptr %7, align 4
  %198 = zext i16 %197 to i32
  %199 = getelementptr i8, ptr %196, i32 %198
  %200 = getelementptr inbounds %struct.iphdr, ptr %199, i32 0, i32 1
  %201 = load i8, ptr %200, align 1
  br label %211

202:                                              ; preds = %193
  %203 = load ptr, ptr %5, align 8
  %204 = load i16, ptr %7, align 4
  %205 = zext i16 %204 to i32
  %206 = getelementptr i8, ptr %203, i32 %205
  %207 = load i16, ptr %206, align 2
  %208 = call i16 @llvm.bswap.i16(i16 %207) #19
  %209 = lshr i16 %208, 4
  %210 = trunc i16 %209 to i8
  br label %211

211:                                              ; preds = %202, %195
  %212 = phi i8 [ %210, %202 ], [ %201, %195 ]
  %213 = getelementptr inbounds %struct.iphdr, ptr %142, i32 0, i32 1
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %212, 3
  %216 = icmp eq i8 %215, 0
  %217 = and i8 %214, 3
  br i1 %216, label %218, label %222

218:                                              ; preds = %211
  %219 = zext i8 %217 to i32
  switch i32 %219, label %221 [
    i32 0, label %329
    i32 2, label %431
    i32 1, label %431
    i32 3, label %220
  ]

220:                                              ; preds = %218
  br label %431

221:                                              ; preds = %218
  unreachable

222:                                              ; preds = %211
  %223 = trunc i8 %214 to i2
  switch i2 %223, label %449 [
    i2 -1, label %224
    i2 1, label %331
  ]

224:                                              ; preds = %222
  %225 = load i16, ptr %148, align 8
  %226 = load i16, ptr %150, align 8
  %227 = zext i16 %226 to i32
  switch i16 %225, label %268 [
    i16 -22392, label %228
    i16 129, label %228
  ]

228:                                              ; preds = %224, %224
  %229 = icmp eq i16 %226, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %228
  %231 = icmp ult i16 %226, 4
  br i1 %231, label %232, label %233, !prof !16

232:                                              ; preds = %230
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %449

233:                                              ; preds = %230
  %234 = add nsw i32 %227, -4
  br label %235

235:                                              ; preds = %233, %228
  %236 = phi i32 [ %234, %233 ], [ 14, %228 ]
  %237 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %238 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %239 = icmp eq ptr %0, null
  br label %240

240:                                              ; preds = %266, %235
  %241 = phi i32 [ %236, %235 ], [ %267, %266 ]
  %242 = phi i32 [ 8, %235 ], [ %259, %266 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !11
  %243 = load i32, ptr %237, align 8
  %244 = load i32, ptr %238, align 4
  %245 = add i32 %241, %244
  %246 = sub i32 %243, %245
  %247 = icmp sgt i32 %246, 3
  br i1 %247, label %248, label %251, !prof !20

248:                                              ; preds = %240
  %249 = load ptr, ptr %34, align 4
  %250 = getelementptr i8, ptr %249, i32 %241
  br label %256

251:                                              ; preds = %240
  br i1 %239, label %262, label %252

252:                                              ; preds = %251
  %253 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %241, ptr noundef nonnull %3, i32 noundef 4) #19
  %254 = icmp slt i32 %253, 0
  %255 = select i1 %254, ptr null, ptr %3, !prof !16
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi ptr [ %250, %248 ], [ %255, %252 ]
  %258 = icmp eq ptr %257, null
  %259 = add nsw i32 %242, -1
  %260 = icmp eq i32 %259, 0
  %261 = select i1 %258, i1 true, i1 %260, !prof !16
  br i1 %261, label %262, label %263, !prof !16

262:                                              ; preds = %256, %251
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %449

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.vlan_hdr, ptr %257, i32 0, i32 1
  %265 = load i16, ptr %264, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  switch i16 %265, label %268 [
    i16 -22392, label %266
    i16 129, label %266
  ]

266:                                              ; preds = %263, %263
  %267 = add nsw i32 %241, 4
  br label %240

268:                                              ; preds = %263, %224
  %269 = phi i16 [ %225, %224 ], [ %265, %263 ]
  switch i16 %269, label %449 [
    i16 8, label %270
    i16 -8826, label %297
  ]

270:                                              ; preds = %268
  %271 = load ptr, ptr %5, align 8
  %272 = load i16, ptr %7, align 4
  %273 = zext i16 %272 to i32
  %274 = getelementptr i8, ptr %271, i32 %273
  %275 = getelementptr i8, ptr %274, i32 20
  %276 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %277 = load ptr, ptr %276, align 8
  %278 = icmp ugt ptr %275, %277
  br i1 %278, label %449, label %279

279:                                              ; preds = %270
  %280 = getelementptr inbounds %struct.iphdr, ptr %274, i32 0, i32 1
  %281 = load i8, ptr %280, align 1
  %282 = add i8 %281, 1
  %283 = and i8 %282, 2
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %449, label %285

285:                                              ; preds = %279
  %286 = and i8 %282, 3
  %287 = zext i8 %286 to i16
  %288 = shl nuw nsw i16 %287, 8
  %289 = add nuw nsw i16 %288, -1025
  %290 = getelementptr inbounds %struct.iphdr, ptr %274, i32 0, i32 7
  %291 = load i16, ptr %290, align 2
  %292 = add i16 %291, %289
  %293 = icmp ult i16 %292, %289
  %294 = zext i1 %293 to i16
  %295 = add i16 %292, %294
  store i16 %295, ptr %290, align 2
  %296 = or i8 %281, 3
  store i8 %296, ptr %280, align 1
  br label %449

297:                                              ; preds = %268
  %298 = load ptr, ptr %5, align 8
  %299 = load i16, ptr %7, align 4
  %300 = zext i16 %299 to i32
  %301 = getelementptr i8, ptr %298, i32 %300
  %302 = getelementptr i8, ptr %301, i32 40
  %303 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %304 = load ptr, ptr %303, align 8
  %305 = icmp ugt ptr %302, %304
  br i1 %305, label %449, label %306

306:                                              ; preds = %297
  %307 = load i16, ptr %301, align 2
  %308 = and i16 %307, 12288
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %449, label %310

310:                                              ; preds = %306
  %311 = load i32, ptr %301, align 4
  %312 = or i32 %311, 12288
  store i32 %312, ptr %301, align 4
  %313 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %314 = load i16, ptr %313, align 8
  %315 = and i16 %314, 96
  %316 = icmp eq i16 %315, 64
  br i1 %316, label %317, label %449

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %319 = load i32, ptr %318, align 4
  %320 = xor i32 %311, -1
  %321 = add i32 %319, %320
  %322 = icmp ult i32 %321, %320
  %323 = zext i1 %322 to i32
  %324 = add i32 %321, %312
  %325 = add i32 %324, %323
  %326 = icmp ult i32 %325, %312
  %327 = zext i1 %326 to i32
  %328 = add i32 %325, %327
  store i32 %328, ptr %318, align 4
  br label %449

329:                                              ; preds = %218
  %330 = icmp eq i8 %217, 1
  br i1 %330, label %331, label %449

331:                                              ; preds = %329, %222
  %332 = load i16, ptr %148, align 8
  %333 = load i16, ptr %150, align 8
  %334 = zext i16 %333 to i32
  switch i16 %332, label %375 [
    i16 -22392, label %335
    i16 129, label %335
  ]

335:                                              ; preds = %331, %331
  %336 = icmp eq i16 %333, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %335
  %338 = icmp ult i16 %333, 4
  br i1 %338, label %339, label %340, !prof !16

339:                                              ; preds = %337
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %449

340:                                              ; preds = %337
  %341 = add nsw i32 %334, -4
  br label %342

342:                                              ; preds = %340, %335
  %343 = phi i32 [ %341, %340 ], [ 14, %335 ]
  %344 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %345 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %346 = icmp eq ptr %0, null
  br label %347

347:                                              ; preds = %373, %342
  %348 = phi i32 [ %343, %342 ], [ %374, %373 ]
  %349 = phi i32 [ 8, %342 ], [ %366, %373 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !annotation !11
  %350 = load i32, ptr %344, align 8
  %351 = load i32, ptr %345, align 4
  %352 = add i32 %348, %351
  %353 = sub i32 %350, %352
  %354 = icmp sgt i32 %353, 3
  br i1 %354, label %355, label %358, !prof !20

355:                                              ; preds = %347
  %356 = load ptr, ptr %34, align 4
  %357 = getelementptr i8, ptr %356, i32 %348
  br label %363

358:                                              ; preds = %347
  br i1 %346, label %369, label %359

359:                                              ; preds = %358
  %360 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %348, ptr noundef nonnull %2, i32 noundef 4) #19
  %361 = icmp slt i32 %360, 0
  %362 = select i1 %361, ptr null, ptr %2, !prof !16
  br label %363

363:                                              ; preds = %359, %355
  %364 = phi ptr [ %357, %355 ], [ %362, %359 ]
  %365 = icmp eq ptr %364, null
  %366 = add nsw i32 %349, -1
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %365, i1 true, i1 %367, !prof !16
  br i1 %368, label %369, label %370, !prof !16

369:                                              ; preds = %363, %358
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %449

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.vlan_hdr, ptr %364, i32 0, i32 1
  %372 = load i16, ptr %371, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  switch i16 %372, label %375 [
    i16 -22392, label %373
    i16 129, label %373
  ]

373:                                              ; preds = %370, %370
  %374 = add nsw i32 %348, 4
  br label %347

375:                                              ; preds = %370, %331
  %376 = phi i16 [ %332, %331 ], [ %372, %370 ]
  switch i16 %376, label %449 [
    i16 8, label %377
    i16 -8826, label %399
  ]

377:                                              ; preds = %375
  %378 = load ptr, ptr %5, align 8
  %379 = load i16, ptr %7, align 4
  %380 = zext i16 %379 to i32
  %381 = getelementptr i8, ptr %378, i32 %380
  %382 = getelementptr i8, ptr %381, i32 20
  %383 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %384 = load ptr, ptr %383, align 8
  %385 = icmp ugt ptr %382, %384
  br i1 %385, label %449, label %386

386:                                              ; preds = %377
  %387 = getelementptr inbounds %struct.iphdr, ptr %381, i32 0, i32 1
  %388 = load i8, ptr %387, align 1
  %389 = and i8 %388, 3
  %390 = icmp eq i8 %389, 2
  br i1 %390, label %391, label %449

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.iphdr, ptr %381, i32 0, i32 7
  %393 = load i16, ptr %392, align 2
  %394 = add i16 %393, 256
  %395 = icmp ugt i16 %393, -257
  %396 = zext i1 %395 to i16
  %397 = add i16 %394, %396
  store i16 %397, ptr %392, align 2
  %398 = xor i8 %388, 3
  store i8 %398, ptr %387, align 1
  br label %449

399:                                              ; preds = %375
  %400 = load ptr, ptr %5, align 8
  %401 = load i16, ptr %7, align 4
  %402 = zext i16 %401 to i32
  %403 = getelementptr i8, ptr %400, i32 %402
  %404 = getelementptr i8, ptr %403, i32 40
  %405 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %406 = load ptr, ptr %405, align 8
  %407 = icmp ugt ptr %404, %406
  br i1 %407, label %449, label %408

408:                                              ; preds = %399
  %409 = load i16, ptr %403, align 2
  %410 = and i16 %409, 12288
  %411 = icmp eq i16 %410, 8192
  br i1 %411, label %412, label %449

412:                                              ; preds = %408
  %413 = load i32, ptr %403, align 4
  %414 = xor i32 %413, 12288
  store i32 %414, ptr %403, align 4
  %415 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %416 = load i16, ptr %415, align 8
  %417 = and i16 %416, 96
  %418 = icmp eq i16 %417, 64
  br i1 %418, label %419, label %449

419:                                              ; preds = %412
  %420 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %421 = load i32, ptr %420, align 4
  %422 = xor i32 %413, -1
  %423 = add i32 %421, %422
  %424 = icmp ult i32 %423, %422
  %425 = zext i1 %424 to i32
  %426 = add i32 %423, %414
  %427 = add i32 %426, %425
  %428 = icmp ult i32 %427, %414
  %429 = zext i1 %428 to i32
  %430 = add i32 %427, %429
  store i32 %430, ptr %420, align 4
  br label %449

431:                                              ; preds = %220, %218, %218
  %432 = phi i1 [ true, %220 ], [ false, %218 ], [ false, %218 ]
  %433 = load i8, ptr @log_ecn_error, align 1, !range !31
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %443, label %435

435:                                              ; preds = %431
  %436 = call i32 @net_ratelimit() #19
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %443, label %438

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.iphdr, ptr %142, i32 0, i32 8
  %440 = load i8, ptr %213, align 1
  %441 = zext i8 %440 to i32
  %442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %439, i32 noundef %441) #20
  br label %443

443:                                              ; preds = %438, %435, %431
  br i1 %432, label %444, label %449

444:                                              ; preds = %443
  %445 = load ptr, ptr %42, align 4
  %446 = getelementptr inbounds %struct.net_device, ptr %445, i32 0, i32 36, i32 13
  %447 = load i32, ptr %446, align 4
  %448 = add i32 %447, 1
  store i32 %448, ptr %446, align 4
  br label %473

449:                                              ; preds = %443, %419, %412, %408, %399, %391, %386, %377, %375, %369, %339, %329, %317, %310, %306, %297, %285, %279, %270, %268, %262, %232, %222, %193, %187, %157
  %450 = load ptr, ptr %42, align 4
  %451 = getelementptr inbounds %struct.net_device, ptr %450, i32 0, i32 110
  %452 = load ptr, ptr %451, align 8
  %453 = ptrtoint ptr %452 to i32
  %454 = call i32 @llvm.read_register.i32(metadata !0) #19
  %455 = inttoptr i32 %454 to ptr
  %456 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %455) #12, !srcloc !13
  %457 = add i32 %456, %453
  %458 = inttoptr i32 %457 to ptr
  %459 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %458, i32 0, i32 4
  %460 = load i32, ptr %459, align 4
  %461 = add i32 %460, 1
  store i32 %461, ptr %459, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !32
  %462 = load i64, ptr %458, align 32
  %463 = add i64 %462, 1
  store i64 %463, ptr %458, align 32
  %464 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %465 = load i32, ptr %464, align 8
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %458, i32 0, i32 1
  %468 = load i64, ptr %467, align 8
  %469 = add i64 %468, %466
  store i64 %469, ptr %467, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !33
  %470 = load i32, ptr %459, align 4
  %471 = add i32 %470, 1
  store i32 %471, ptr %459, align 4
  %472 = call i32 @netif_rx(ptr noundef %0) #19
  br label %479

473:                                              ; preds = %444, %133, %131, %128, %114, %111
  %474 = load ptr, ptr %42, align 4
  %475 = getelementptr inbounds %struct.net_device, ptr %474, i32 0, i32 36, i32 4
  %476 = load i32, ptr %475, align 8
  %477 = add i32 %476, 1
  store i32 %477, ptr %475, align 8
  br label %478

478:                                              ; preds = %473, %135, %28
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %479

479:                                              ; preds = %478, %449, %20
  %480 = phi i32 [ 0, %478 ], [ 0, %449 ], [ 1, %20 ]
  ret i32 %480
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip6_err(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.icmphdr, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  switch i8 %11, label %96 [
    i8 5, label %25
    i8 3, label %15
    i8 11, label %17
  ]

15:                                               ; preds = %2
  %16 = icmp eq i8 %14, 5
  br i1 %16, label %96, label %25

17:                                               ; preds = %2
  %18 = icmp eq i8 %14, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.icmphdr, ptr %10, i32 0, i32 3
  %21 = getelementptr [4 x i8], ptr %20, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 2
  br label %25

25:                                               ; preds = %19, %15, %2
  %26 = phi i32 [ %24, %19 ], [ 0, %15 ], [ 0, %2 ]
  %27 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 15
  %30 = load i64, ptr %29, align 16
  %31 = and i64 %30, 262144
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi i32 [ %35, %33 ], [ 0, %25 ]
  %38 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = tail call fastcc ptr @ipip6_tunnel_lookup(ptr noundef %28, i32 noundef %39, i32 noundef %41, i32 noundef %37)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %96, label %44

44:                                               ; preds = %36
  %45 = icmp eq i8 %11, 3
  %46 = icmp eq i8 %14, 4
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 15, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 6
  %52 = load i8, ptr %51, align 1
  tail call void @ipv4_update_pmtu(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %1, i32 noundef %50, i8 noundef zeroext %52) #19
  br label %96

53:                                               ; preds = %44
  %54 = icmp eq i8 %11, 5
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 15, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 6
  %59 = load i8, ptr %58, align 1
  tail call void @ipv4_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %57, i8 noundef zeroext %59) #19
  br label %96

60:                                               ; preds = %53
  %61 = load ptr, ptr %27, align 8
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 69
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load i8, ptr %4, align 4
  %67 = shl i8 %66, 2
  %68 = and i8 %67, 60
  %69 = zext i8 %68 to i32
  %70 = tail call i32 @ip6_err_gen_icmpv6_unreach(ptr noundef %0, i32 noundef %69, i32 noundef %12, i32 noundef %26) #19
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %65, %60
  %73 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 15, i32 6, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 15, i32 6, i32 5
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 0
  %80 = icmp eq i8 %11, 11
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %83, -3000
  %87 = sub i32 %86, %85
  %88 = icmp slt i32 %87, 0
  %89 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 6
  br i1 %88, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, ptr %89, align 4
  %92 = add i32 %91, 1
  br label %93

93:                                               ; preds = %90, %82
  %94 = phi i32 [ %92, %90 ], [ 1, %82 ]
  store i32 %94, ptr %89, align 4
  %95 = load volatile i32, ptr @jiffies, align 64
  store i32 %95, ptr %84, align 4
  br label %96

96:                                               ; preds = %93, %76, %72, %65, %55, %48, %36, %17, %15, %2
  %97 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %17 ], [ 0, %48 ], [ 0, %55 ], [ 0, %72 ], [ 0, %76 ], [ 0, %93 ], [ 0, %65 ], [ -2, %36 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ipip6_tunnel_lookup(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = lshr i32 %1, 4
  %6 = xor i32 %5, %1
  %7 = and i32 %6, 15
  %8 = lshr i32 %2, 4
  %9 = xor i32 %8, %2
  %10 = and i32 %9, 15
  %11 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %13 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %11
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %15 = icmp eq ptr %0, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i32 [ %18, %16 ], [ 0, %4 ]
  %21 = xor i32 %10, %7
  %22 = getelementptr [16 x ptr], ptr %14, i32 0, i32 %21
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %50, %19
  %26 = phi ptr [ %51, %50 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 15, i32 6, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 15, i32 6, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  br i1 %15, label %43, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 15, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = icmp eq i32 %20, %37
  %40 = select i1 %38, i1 true, i1 %39
  %41 = icmp eq i32 %37, %3
  %42 = or i1 %41, %40
  br i1 %42, label %43, label %50

43:                                               ; preds = %35, %34
  %44 = getelementptr inbounds %struct.ip_tunnel, ptr %26, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 14
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %121

50:                                               ; preds = %43, %35, %30, %25
  %51 = load volatile ptr, ptr %26, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %25

53:                                               ; preds = %50, %19
  %54 = getelementptr %struct.sit_net, ptr %14, i32 0, i32 1, i32 %7
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %81, label %57

57:                                               ; preds = %78, %53
  %58 = phi ptr [ %79, %78 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.ip_tunnel, ptr %58, i32 0, i32 15, i32 6, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  br i1 %15, label %71, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.ip_tunnel, ptr %58, i32 0, i32 15, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = icmp eq i32 %20, %65
  %68 = select i1 %66, i1 true, i1 %67
  %69 = icmp eq i32 %65, %3
  %70 = or i1 %69, %68
  br i1 %70, label %71, label %78

71:                                               ; preds = %63, %62
  %72 = getelementptr inbounds %struct.ip_tunnel, ptr %58, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 14
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %121

78:                                               ; preds = %71, %63, %57
  %79 = load volatile ptr, ptr %58, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %57

81:                                               ; preds = %78, %53
  %82 = getelementptr %struct.sit_net, ptr %14, i32 0, i32 2, i32 %10
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %109, label %85

85:                                               ; preds = %106, %81
  %86 = phi ptr [ %107, %106 ], [ %83, %81 ]
  %87 = getelementptr inbounds %struct.ip_tunnel, ptr %86, i32 0, i32 15, i32 6, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %2
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  br i1 %15, label %99, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.ip_tunnel, ptr %86, i32 0, i32 15, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i32 %20, %93
  %96 = select i1 %94, i1 true, i1 %95
  %97 = icmp eq i32 %93, %3
  %98 = or i1 %97, %96
  br i1 %98, label %99, label %106

99:                                               ; preds = %91, %90
  %100 = getelementptr inbounds %struct.ip_tunnel, ptr %86, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 14
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %99, %91, %85
  %107 = load volatile ptr, ptr %86, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %85

109:                                              ; preds = %106, %81
  %110 = getelementptr inbounds %struct.sit_net, ptr %14, i32 0, i32 3
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ip_tunnel, ptr %111, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 14
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113, %109
  br label %121

121:                                              ; preds = %120, %113, %99, %71, %43
  %122 = phi ptr [ null, %120 ], [ %111, %113 ], [ %86, %99 ], [ %58, %71 ], [ %26, %43 ]
  ret ptr %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_prefix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_custom_prefix(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_err_gen_icmpv6_unreach(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip_rcv(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %5 = load i64, ptr %4, align 16
  %6 = and i64 %5, 262144
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr inbounds %struct.iphdr, ptr %18, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iphdr, ptr %18, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc ptr @ipip6_tunnel_lookup(ptr noundef %3, i32 noundef %20, i32 noundef %22, i32 noundef %12) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %81, label %25

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.ip_tunnel, ptr %23, i32 0, i32 15, i32 6, i32 6
  %27 = load i8, ptr %26, align 1
  switch i8 %27, label %80 [
    i8 4, label %28
    i8 0, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, -2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = inttoptr i32 %43 to ptr
  %47 = getelementptr inbounds %struct.dst_entry, ptr %46, i32 0, i32 7
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %62, label %65

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = inttoptr i32 %54 to ptr
  %58 = getelementptr inbounds %struct.dst_entry, ptr %57, i32 0, i32 7
  %59 = load i16, ptr %58, align 4
  %60 = and i16 %59, 4
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %51, %45, %40
  %63 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %0, i16 noundef zeroext 2) #19
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %62, %56, %45, %35
  %66 = tail call i32 @__iptunnel_pull_header(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 8, i1 noundef zeroext false, i1 noundef zeroext false) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %13, align 8
  %72 = ptrtoint ptr %70 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %75, ptr %76, align 2
  %77 = load i8, ptr @log_ecn_error, align 1, !range !31
  %78 = icmp ne i8 %77, 0
  %79 = tail call i32 @ip_tunnel_rcv(ptr noundef nonnull %23, ptr noundef %0, ptr noundef nonnull @ipip_tpi, ptr noundef null, i1 noundef zeroext %78) #19
  br label %81

80:                                               ; preds = %65, %62, %25
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %81

81:                                               ; preds = %80, %68, %11
  %82 = phi i32 [ 0, %80 ], [ %79, %68 ], [ 1, %11 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sit_init_net(ptr noundef %0) #0 section ".init.text" {
  %2 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %7 = getelementptr inbounds %struct.sit_net, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sit_net, ptr %6, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sit_net, ptr %6, i32 0, i32 2
  %10 = getelementptr %struct.sit_net, ptr %6, i32 0, i32 4, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sit_net, ptr %6, i32 0, i32 1
  %12 = getelementptr %struct.sit_net, ptr %6, i32 0, i32 4, i32 2
  store ptr %11, ptr %12, align 4
  %13 = getelementptr %struct.sit_net, ptr %6, i32 0, i32 4, i32 3
  store ptr %6, ptr %13, align 4
  %14 = load i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = icmp eq ptr %0, @init_net
  %18 = icmp eq i32 %14, 1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %48

20:                                               ; preds = %16, %1
  %21 = tail call ptr @alloc_netdev_mqs(i32 noundef 152, ptr noundef nonnull @.str.11, i8 noundef zeroext 0, ptr noundef nonnull @ipip6_tunnel_setup, i32 noundef 1, i32 noundef 1) #19
  %22 = getelementptr inbounds %struct.sit_net, ptr %6, i32 0, i32 5
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 114
  store ptr @sit_link_ops, ptr %25, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  %28 = load i64, ptr %27, align 16
  %29 = or i64 %28, 8192
  store i64 %29, ptr %27, align 16
  %30 = load ptr, ptr %22, align 4
  %31 = tail call i32 @register_netdev(ptr noundef %30) #19
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %22, align 4
  br i1 %32, label %34, label %47

34:                                               ; preds = %24
  %35 = getelementptr i8, ptr %33, i32 1408
  %36 = getelementptr i8, ptr %33, i32 1496
  %37 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %38 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %39 = getelementptr [0 x ptr], ptr %38, i32 0, i32 %37
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %41 = getelementptr i8, ptr %33, i32 1505
  store i8 41, ptr %41, align 1
  store i8 69, ptr %36, align 4
  %42 = getelementptr i8, ptr %33, i32 1504
  store i8 64, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !34
  %43 = getelementptr inbounds %struct.sit_net, ptr %40, i32 0, i32 3
  store volatile ptr %35, ptr %43, align 4
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr i8, ptr %44, i32 1464
  %46 = tail call ptr @strcpy(ptr noundef %45, ptr noundef %44)
  br label %48

47:                                               ; preds = %24
  tail call void @free_netdev(ptr noundef %33) #19
  br label %48

48:                                               ; preds = %47, %34, %20, %16
  %49 = phi i32 [ 0, %34 ], [ 0, %16 ], [ %31, %47 ], [ -12, %20 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sit_exit_batch_net(ptr noundef readonly %0) #18 section ".ref.text" {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @rtnl_lock() #19
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -36
  call fastcc void @sit_destroy_tunnels(ptr noundef %8, ptr noundef nonnull %2)
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  call void @unregister_netdevice_many(ptr noundef nonnull %2) #19
  call void @rtnl_unlock() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sit_destroy_tunnels(ptr noundef %0, ptr noundef %1) unnamed_addr #18 section ".ref.text" {
  %3 = load i32, ptr @sit_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 32
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %14

11:                                               ; preds = %22, %2
  %12 = getelementptr %struct.sit_net, ptr %7, i32 0, i32 4, i32 0
  %13 = load ptr, ptr %12, align 4
  br label %24

14:                                               ; preds = %22, %2
  %15 = phi ptr [ %16, %22 ], [ %9, %2 ]
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %15, i32 1140
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @sit_link_ops
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %15, i32 -40
  tail call void @unregister_netdevice_queue(ptr noundef %21, ptr noundef %1) #19
  br label %22

22:                                               ; preds = %20, %14
  %23 = icmp eq ptr %16, %8
  br i1 %23, label %11, label %14

24:                                               ; preds = %24, %11
  %25 = phi ptr [ %13, %11 ], [ %26, %24 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind readnone }
attributes #24 = { nounwind allocsize(2) }

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
!9 = !{i64 2149090927}
!10 = !{i64 2149091144}
!11 = !{!"auto-init"}
!12 = !{i64 493725, i64 493786}
!13 = !{i64 512425}
!14 = !{i64 496742}
!15 = !{i64 2156819185}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148191113}
!18 = !{i64 588047, i64 2148078018, i64 2148078044, i64 2148078091, i64 2148078113, i64 2148078141, i64 2148078161}
!19 = !{i64 2148093248, i64 2148093280, i64 2148093309, i64 2148093343, i64 2148093374, i64 2148093397}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2149040560}
!22 = !{i64 2151364074, i64 2151364099}
!23 = !{i64 3860186}
!24 = !{i64 3860383}
!25 = !{i64 2151345662}
!26 = !{i64 2151364652, i64 2151364677}
!27 = !{i64 2156859001, i64 2156859281, i64 2156859615, i64 2156859949}
!28 = !{i64 2156869141}
!29 = !{i64 2156826801}
!30 = !{i64 2156833582}
!31 = !{i8 0, i8 2}
!32 = !{i64 2149428447}
!33 = !{i64 2149428748}
!34 = !{i64 2156904756}
