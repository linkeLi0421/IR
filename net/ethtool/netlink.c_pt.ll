; ModuleID = '/llk/IR/net/ethtool/netlink.c_pt.bc'
source_filename = "../net/ethtool/netlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.57, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.57 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.120 }
%union.anon.120 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }

@ethnl_header_policy = dso_local local_unnamed_addr constant [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 127, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 5, i16 0, %union.anon { i32 3 } }], align 4
@ethnl_header_policy_stats = dso_local local_unnamed_addr constant [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 127, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 5, i16 0, %union.anon { i32 7 } }], align 4
@ethnl_parse_header_dev_get.__msg = internal constant [23 x i8] c"request header missing\00", align 1
@ethnl_parse_header_dev_get.__msg.1 = internal constant [26 x i8] c"no device matches ifindex\00", align 1
@ethnl_parse_header_dev_get.__msg.2 = internal constant [30 x i8] c"ifindex and name do not match\00", align 1
@ethnl_parse_header_dev_get.__msg.3 = internal constant [23 x i8] c"no device matches name\00", align 1
@ethnl_parse_header_dev_get.__msg.4 = internal constant [35 x i8] c"neither ifindex nor name specified\00", align 1
@ethtool_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"ethtool\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 3, i8 35, i8 0, i8 1, ptr null, ptr null, ptr null, ptr @ethtool_genl_ops, ptr null, ptr @ethtool_nl_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@ethnl_reply_init.__msg = internal constant [30 x i8] c"failed to setup reply message\00", align 1
@ethnl_bcast_seq = internal unnamed_addr global i32 0, align 4
@ethnl_ok = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ethtool_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"net/ethtool/netlink.c\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@ethnl_notify_handlers = internal unnamed_addr constant [37 x ptr] [ptr null, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_default_notify, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_default_notify], align 4
@ethtool_notify.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"notification %u not implemented (dev=%s)\0A\00", align 1
@__kstrtab_ethtool_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_notify to i32), ptr @__kstrtab_ethtool_notify, ptr @__kstrtabns_ethtool_notify }, section "___ksymtab+ethtool_notify", align 4
@__initcall__kmod_ethtool_nl__420_1056_ethnl_init4 = internal global ptr @ethnl_init, section ".initcall4.init", align 4
@nla_parse_nested.__msg = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"include/net/genetlink.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@ethnl_default_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethnl_default_notify_ops = internal unnamed_addr constant [37 x ptr] [ptr null, ptr null, ptr null, ptr @ethnl_linkinfo_request_ops, ptr null, ptr @ethnl_linkmodes_request_ops, ptr null, ptr null, ptr @ethnl_debug_request_ops, ptr null, ptr @ethnl_wol_request_ops, ptr null, ptr null, ptr @ethnl_features_request_ops, ptr null, ptr @ethnl_privflags_request_ops, ptr null, ptr @ethnl_rings_request_ops, ptr null, ptr @ethnl_channels_request_ops, ptr null, ptr @ethnl_coalesce_request_ops, ptr null, ptr @ethnl_pause_request_ops, ptr null, ptr @ethnl_eee_request_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_fec_request_ops, ptr null, ptr null, ptr null, ptr null, ptr @ethnl_module_request_ops], align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"unexpected notification type %u\0A\00", align 1
@ethnl_default_notify.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"calculated message payload length (%d) not sufficient\0A\00", align 1
@ethnl_linkinfo_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_linkmodes_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_debug_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_wol_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_features_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_privflags_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_rings_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_channels_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_coalesce_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_pause_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_eee_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_fec_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_module_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"(unnamed net_device)\00", align 1
@ethtool_genl_ops = internal constant [35 x %struct.genl_ops] [%struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_strset_get_policy, i32 3, i8 1, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_linkinfo_get_policy, i32 1, i8 2, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_linkinfo, ptr null, ptr null, ptr null, ptr @ethnl_linkinfo_set_policy, i32 5, i8 3, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_linkmodes_get_policy, i32 1, i8 4, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_linkmodes, ptr null, ptr null, ptr null, ptr @ethnl_linkmodes_set_policy, i32 9, i8 5, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_linkstate_get_policy, i32 1, i8 6, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_debug_get_policy, i32 1, i8 7, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_debug, ptr null, ptr null, ptr null, ptr @ethnl_debug_set_policy, i32 2, i8 8, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_wol_get_policy, i32 1, i8 9, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_set_wol, ptr null, ptr null, ptr null, ptr @ethnl_wol_set_policy, i32 3, i8 10, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_features_get_policy, i32 1, i8 11, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_features, ptr null, ptr null, ptr null, ptr @ethnl_features_set_policy, i32 3, i8 12, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_privflags_get_policy, i32 1, i8 13, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_privflags, ptr null, ptr null, ptr null, ptr @ethnl_privflags_set_policy, i32 2, i8 14, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_rings_get_policy, i32 1, i8 15, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_rings, ptr null, ptr null, ptr null, ptr @ethnl_rings_set_policy, i32 10, i8 16, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_channels_get_policy, i32 1, i8 17, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_channels, ptr null, ptr null, ptr null, ptr @ethnl_channels_set_policy, i32 9, i8 18, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_coalesce_get_policy, i32 1, i8 19, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_coalesce, ptr null, ptr null, ptr null, ptr @ethnl_coalesce_set_policy, i32 25, i8 20, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_pause_get_policy, i32 1, i8 21, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_pause, ptr null, ptr null, ptr null, ptr @ethnl_pause_set_policy, i32 4, i8 22, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_eee_get_policy, i32 1, i8 23, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_eee, ptr null, ptr null, ptr null, ptr @ethnl_eee_set_policy, i32 7, i8 24, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_tsinfo_get_policy, i32 1, i8 25, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_act_cable_test, ptr null, ptr null, ptr null, ptr @ethnl_cable_test_act_policy, i32 1, i8 26, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_act_cable_test_tdr, ptr null, ptr null, ptr null, ptr @ethnl_cable_test_tdr_act_policy, i32 2, i8 27, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_tunnel_info_doit, ptr @ethnl_tunnel_info_start, ptr @ethnl_tunnel_info_dumpit, ptr null, ptr @ethnl_tunnel_info_get_policy, i32 1, i8 28, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_fec_get_policy, i32 1, i8 29, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_fec, ptr null, ptr null, ptr null, ptr @ethnl_fec_set_policy, i32 3, i8 30, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_module_eeprom_get_policy, i32 6, i8 31, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_stats_get_policy, i32 3, i8 32, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_phc_vclocks_get_policy, i32 1, i8 33, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_default_doit, ptr @ethnl_default_start, ptr @ethnl_default_dumpit, ptr @ethnl_default_done, ptr @ethnl_module_get_policy, i32 1, i8 34, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @ethnl_set_module, ptr null, ptr null, ptr null, ptr @ethnl_module_set_policy, i32 2, i8 35, i8 0, i8 16, i8 0 }], align 4
@ethtool_nl_mcgrps = internal constant [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"monitor\00\00\00\00\00\00\00\00\00", i8 0 }], align 1
@ethnl_strset_get_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkinfo_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_linkinfo_set_policy = external dso_local constant [6 x %struct.nla_policy], align 4
@ethnl_linkmodes_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_linkmodes_set_policy = external dso_local constant [10 x %struct.nla_policy], align 4
@ethnl_linkstate_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_debug_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_debug_set_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_wol_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_wol_set_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_features_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_features_set_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_privflags_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_privflags_set_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_rings_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_rings_set_policy = external dso_local constant [11 x %struct.nla_policy], align 4
@ethnl_channels_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_channels_set_policy = external dso_local constant [10 x %struct.nla_policy], align 4
@ethnl_coalesce_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_coalesce_set_policy = external dso_local constant [26 x %struct.nla_policy], align 4
@ethnl_pause_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_pause_set_policy = external dso_local constant [5 x %struct.nla_policy], align 4
@ethnl_eee_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_eee_set_policy = external dso_local constant [8 x %struct.nla_policy], align 4
@ethnl_tsinfo_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_cable_test_act_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_cable_test_tdr_act_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_tunnel_info_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_fec_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_fec_set_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_module_eeprom_get_policy = external dso_local constant [7 x %struct.nla_policy], align 4
@ethnl_stats_get_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_phc_vclocks_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_module_get_policy = external dso_local constant [2 x %struct.nla_policy], align 4
@ethnl_module_set_policy = external dso_local constant [3 x %struct.nla_policy], align 4
@ethnl_default_requests = internal unnamed_addr constant [36 x ptr] [ptr null, ptr @ethnl_strset_request_ops, ptr @ethnl_linkinfo_request_ops, ptr null, ptr @ethnl_linkmodes_request_ops, ptr null, ptr @ethnl_linkstate_request_ops, ptr @ethnl_debug_request_ops, ptr null, ptr @ethnl_wol_request_ops, ptr null, ptr @ethnl_features_request_ops, ptr null, ptr @ethnl_privflags_request_ops, ptr null, ptr @ethnl_rings_request_ops, ptr null, ptr @ethnl_channels_request_ops, ptr null, ptr @ethnl_coalesce_request_ops, ptr null, ptr @ethnl_pause_request_ops, ptr null, ptr @ethnl_eee_request_ops, ptr null, ptr @ethnl_tsinfo_request_ops, ptr null, ptr null, ptr null, ptr @ethnl_fec_request_ops, ptr null, ptr @ethnl_module_eeprom_request_ops, ptr @ethnl_stats_request_ops, ptr @ethnl_phc_vclocks_request_ops, ptr @ethnl_module_request_ops, ptr null], align 4
@ethnl_default_doit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"cmd %u has no ethnl_request_ops\0A\00", align 1
@ethnl_default_doit.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"ethnl cmd %d: calculated reply length %d, but consumed %d\0A\00", align 1
@ethnl_default_doit.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethnl_strset_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_linkstate_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_tsinfo_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_module_eeprom_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_stats_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_phc_vclocks_request_ops = external dso_local constant %struct.ethnl_request_ops, align 4
@ethnl_default_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"ethtool: genetlink family registration failed\00", align 1
@ethnl_netdev_notifier = internal global %struct.notifier_block { ptr @ethnl_netdev_event, ptr null, i32 0 }, align 4
@.str.19 = private unnamed_addr constant [49 x i8] c"ethtool: net device notifier registration failed\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_ethtool_nl__420_1056_ethnl_init4, ptr @__ksymtab_ethtool_notify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_ops_begin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %5, i32 noundef 4) #9
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 102
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ethtool_ops, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = tail call i32 %22(ptr noundef nonnull %0) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %14, %9
  %28 = phi i32 [ %25, %24 ], [ -19, %14 ], [ -19, %9 ]
  %29 = load ptr, ptr %4, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %29, i32 noundef 5) #9
  br label %33

33:                                               ; preds = %31, %27, %24, %18, %1
  %34 = phi i32 [ -19, %1 ], [ 0, %24 ], [ 0, %18 ], [ %28, %31 ], [ %28, %27 ]
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethnl_ops_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %10, i32 noundef 5) #9
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_parse_header_dev_get(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [4 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg) #9
  %9 = icmp eq ptr %3, null
  br i1 %9, label %94, label %10

10:                                               ; preds = %8
  store ptr @ethnl_parse_header_dev_get.__msg, ptr %3, align 4
  br label %94

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nlattr, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp sgt i16 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #9
  %16 = icmp eq ptr %3, null
  br i1 %16, label %94, label %17

17:                                               ; preds = %15
  store ptr @nla_parse_nested.__msg, ptr %3, align 4
  %18 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %19, align 4
  br label %94

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %1, i32 4
  %22 = load i16, ptr %1, align 2
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, -4
  %25 = call i32 @__nla_parse(ptr noundef nonnull %6, i32 noundef 3, ptr noundef %21, i32 noundef %24, ptr noundef null, i32 noundef 31, ptr noundef %3) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %94, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %29, i32 4
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ 0, %27 ]
  %36 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %41

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %39, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = call ptr @dev_get_by_index(ptr noundef %2, i32 noundef %43) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.1) #9
  %47 = icmp eq ptr %3, null
  br i1 %47, label %94, label %48

48:                                               ; preds = %46
  store ptr @ethnl_parse_header_dev_get.__msg.1, ptr %3, align 4
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %51, align 4
  br label %94

52:                                               ; preds = %41
  %53 = icmp eq ptr %37, null
  br i1 %53, label %91, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %37, i32 4
  %56 = call i32 @strncmp(ptr noundef nonnull %44, ptr noundef %55, i32 noundef 16)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %54
  %59 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %60 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 99
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %61 to i32
  %63 = call i32 @llvm.read_register.i32(metadata !0) #9
  %64 = inttoptr i32 %63 to ptr
  %65 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #6, !srcloc !11
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %67, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #9, !srcloc !12
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.2) #9
  %70 = icmp eq ptr %3, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %58
  store ptr @ethnl_parse_header_dev_get.__msg.2, ptr %3, align 4
  %72 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %73, align 4
  br label %94

74:                                               ; preds = %34
  %75 = icmp eq ptr %37, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %74
  %77 = getelementptr i8, ptr %37, i32 4
  %78 = call ptr @dev_get_by_name(ptr noundef %2, ptr noundef %77) #9
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.3) #9
  %81 = icmp eq ptr %3, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %80
  store ptr @ethnl_parse_header_dev_get.__msg.3, ptr %3, align 4
  %83 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %37, ptr %83, align 4
  %84 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %84, align 4
  br label %94

85:                                               ; preds = %74
  br i1 %4, label %86, label %91

86:                                               ; preds = %85
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_header_dev_get.__msg.4) #9
  %87 = icmp eq ptr %3, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  store ptr @ethnl_parse_header_dev_get.__msg.4, ptr %3, align 4
  %89 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %90, align 4
  br label %94

91:                                               ; preds = %85, %76, %54, %52
  %92 = phi ptr [ null, %85 ], [ %44, %54 ], [ %44, %52 ], [ %78, %76 ]
  store ptr %92, ptr %0, align 4
  %93 = getelementptr inbounds %struct.ethnl_req_info, ptr %0, i32 0, i32 2
  store i32 %35, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %88, %86, %82, %80, %71, %58, %48, %46, %20, %17, %15, %10, %8
  %95 = phi i32 [ 0, %91 ], [ -22, %10 ], [ -22, %8 ], [ %25, %20 ], [ -19, %48 ], [ -19, %71 ], [ -19, %82 ], [ -19, %80 ], [ -22, %88 ], [ -22, %86 ], [ -19, %46 ], [ -19, %58 ], [ -22, %17 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret i32 %95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_fill_reply_header(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = or i16 %2, -32768
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %8, i32 noundef 0, ptr noundef null) #9
  %12 = icmp slt i32 %11, 0
  %13 = icmp eq ptr %10, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %42, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 %17, ptr %4, align 4
  %18 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = call i32 @strlen(ptr noundef nonnull %1) #9
  %22 = add i32 %21, 1
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef %22, ptr noundef nonnull %1) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load ptr, ptr %9, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %10 to i32
  %29 = sub i32 %27, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, ptr %10, align 2
  br label %42

31:                                               ; preds = %20, %15
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt ptr %33, %10
  br i1 %34, label %35, label %37, !prof !13

35:                                               ; preds = %31
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  %36 = load ptr, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %39 = ptrtoint ptr %10 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  call void @skb_trim(ptr noundef %0, i32 noundef %41) #9
  br label %42

42:                                               ; preds = %37, %25, %6, %3
  %43 = phi i32 [ -90, %37 ], [ 0, %25 ], [ 0, %3 ], [ -90, %6 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ethnl_reply_init(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = add i32 %0, 7
  %8 = and i32 %7, -4
  %9 = add i32 %8, 19
  %10 = and i32 %9, -4
  %11 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %4, align 4
  %17 = tail call ptr @genlmsg_put(ptr noundef nonnull %11, i32 noundef %15, i32 noundef %16, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %2) #9
  store ptr %17, ptr %5, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = icmp eq ptr %1, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @ethnl_fill_reply_header(ptr noundef nonnull %11, ptr noundef nonnull %1, i16 noundef zeroext %3)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %13
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #9
  br label %25

25:                                               ; preds = %24, %6
  %26 = icmp eq ptr %4, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_reply_init.__msg) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store ptr @ethnl_reply_init.__msg, ptr %29, align 4
  br label %32

32:                                               ; preds = %31, %27, %25, %21, %19
  %33 = phi ptr [ %11, %21 ], [ %11, %19 ], [ null, %27 ], [ null, %31 ], [ null, %25 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ethnl_dump_put(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nlmsghdr, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @genlmsg_put(ptr noundef %0, i32 noundef %6, i32 noundef %10, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %2) #9
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ethnl_bcastmsg_put(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @ethnl_bcast_seq, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr @ethnl_bcast_seq, align 4
  %5 = tail call ptr @genlmsg_put(ptr noundef %0, i32 noundef 0, i32 noundef %4, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %1) #9
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_multicast(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @ethtool_genl_family, i32 0, i32 9), align 1
  %4 = icmp eq i8 %3, 0
  %5 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %2
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 308, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %16, label %10

10:                                               ; preds = %9
  %11 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @ethtool_genl_family, i32 0, i32 5), align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  store i32 %11, ptr %13, align 8
  %14 = tail call i32 @netlink_broadcast(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %11, i32 noundef 3264) #9
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 0) #9
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi i32 [ %15, %10 ], [ -22, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethtool_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load i1, ptr @ethnl_ok, align 1
  br i1 %4, label %5, label %30, !prof !14

5:                                                ; preds = %3
  %6 = tail call i32 @rtnl_is_locked() #9
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @ethtool_notify.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %5
  store i1 true, ptr @ethtool_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 700) #9
  br label %12

12:                                               ; preds = %11, %5
  %13 = icmp ult i32 %1, 37
  br i1 %13, label %14, label %19, !prof !14

14:                                               ; preds = %12
  %15 = getelementptr [37 x ptr], ptr @ethnl_notify_handlers, i32 0, i32 %1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !13

18:                                               ; preds = %14
  tail call void %16(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %30

19:                                               ; preds = %14, %12
  %20 = load i1, ptr @ethtool_notify.__already_done.6, align 1
  br i1 %20, label %30, label %21, !prof !14

21:                                               ; preds = %19
  store i1 true, ptr @ethtool_notify.__already_done.6, align 1
  %22 = load i8, ptr %0, align 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @strchr(ptr noundef %0, i32 noundef 37) #9
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %0, ptr @.str.13
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ @.str.13, %21 ], [ %27, %24 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 707, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %29) #9
  br label %30

30:                                               ; preds = %28, %19, %18, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ethnl_init() #5 section ".init.text" {
  %1 = tail call i32 @genl_register_family(ptr noundef nonnull @ethtool_genl_family) #9
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4, !prof !13

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1047, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  br label %8

4:                                                ; preds = %0
  store i1 true, ptr @ethnl_ok, align 1
  %5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ethnl_netdev_notifier) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !13

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1052, i32 noundef 9, ptr noundef nonnull @.str.19) #9
  br label %8

8:                                                ; preds = %7, %4, %3
  %9 = phi i32 [ %1, %3 ], [ %5, %7 ], [ %5, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ethnl_default_notify(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp ugt i32 %1, 36
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr [37 x ptr], ptr @ethnl_default_notify_ops, i32 0, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i1 [ true, %3 ], [ %8, %5 ]
  %11 = load i1, ptr @ethnl_default_notify.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !13

14:                                               ; preds = %9
  store i1 true, ptr @ethnl_default_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %1) #9
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %94, label %16

16:                                               ; preds = %15
  %17 = getelementptr [37 x ptr], ptr @ethnl_default_notify_ops, i32 0, i32 %1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %94, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %21) #9
  br label %94

29:                                               ; preds = %23
  store ptr %0, ptr %21, align 64
  %30 = getelementptr inbounds %struct.ethnl_req_info, ptr %21, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = load i32, ptr %24, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %26, i8 0, i32 %33, i1 false) #9
  store ptr %0, ptr %26, align 64
  %34 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef nonnull %21, ptr noundef nonnull %26, ptr noundef null) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef nonnull %21, ptr noundef nonnull %26) #9
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %38
  %44 = add nuw i32 %41, 32
  %45 = add nuw i32 %41, 39
  %46 = and i32 %45, -4
  %47 = add nuw i32 %46, 19
  %48 = and i32 %47, -4
  %49 = tail call ptr @__alloc_skb(i32 noundef %48, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %88, label %51

51:                                               ; preds = %43
  %52 = trunc i32 %1 to i8
  %53 = load i32, ptr @ethnl_bcast_seq, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr @ethnl_bcast_seq, align 4
  %55 = tail call ptr @genlmsg_put(ptr noundef nonnull %49, i32 noundef 0, i32 noundef %54, ptr noundef nonnull @ethtool_genl_family, i32 noundef 0, i8 noundef zeroext %52) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 2
  %59 = load i16, ptr %58, align 2
  %60 = tail call i32 @ethnl_fill_reply_header(ptr noundef nonnull %49, ptr noundef %0, i16 noundef zeroext %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef nonnull %49, ptr noundef nonnull %21, ptr noundef nonnull %26) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void %69(ptr noundef nonnull %26) #9
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr i8, ptr %55, i32 -20
  %74 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 14
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i32
  %77 = ptrtoint ptr %73 to i32
  %78 = sub i32 %76, %77
  store i32 %78, ptr %73, align 4
  tail call void @kfree(ptr noundef nonnull %26) #9
  tail call void @kfree(ptr noundef nonnull %21) #9
  %79 = tail call i32 @ethnl_multicast(ptr noundef nonnull %49, ptr noundef %0)
  br label %94

80:                                               ; preds = %62, %57
  %81 = phi i32 [ %60, %57 ], [ %65, %62 ]
  %82 = icmp eq i32 %81, -90
  %83 = load i1, ptr @ethnl_default_notify.__already_done.11, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !13

86:                                               ; preds = %80
  store i1 true, ptr @ethnl_default_notify.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 664, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %44) #9
  br label %87

87:                                               ; preds = %86, %80, %51
  tail call void @kfree_skb_reason(ptr noundef nonnull %49, i32 noundef 0) #9
  br label %88

88:                                               ; preds = %87, %43, %38, %29
  %89 = getelementptr inbounds %struct.ethnl_request_ops, ptr %18, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef nonnull %26) #9
  br label %93

93:                                               ; preds = %92, %88
  tail call void @kfree(ptr noundef nonnull %26) #9
  tail call void @kfree(ptr noundef nonnull %21) #9
  br label %94

94:                                               ; preds = %93, %72, %28, %16, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ethnl_default_doit(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  %7 = zext i8 %6 to i32
  %8 = getelementptr [36 x ptr], ptr @ethnl_default_requests, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @ethnl_default_doit.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !13

14:                                               ; preds = %2
  store i1 true, ptr @ethnl_default_doit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %7) #9
  br label %15

15:                                               ; preds = %14, %2
  br i1 %10, label %147, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %147, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %19) #9
  br label %147

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 5
  %33 = load i8, ptr %32, align 4, !range !15
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 2
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr ptr, ptr %29, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %19, ptr noundef %39, ptr noundef nonnull @init_net, ptr noundef %31, i1 noundef zeroext %34) #9
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %130, label %42

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 %44(ptr noundef nonnull %19, ptr noundef %29, ptr noundef %31) #9
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %130, label %49

49:                                               ; preds = %46, %42
  %50 = load ptr, ptr %19, align 64
  %51 = load i32, ptr %22, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %24, i8 0, i32 %51, i1 false) #9
  store ptr %50, ptr %24, align 64
  tail call void @rtnl_lock() #9
  %52 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef nonnull %19, ptr noundef nonnull %24, ptr noundef %1) #9
  tail call void @rtnl_unlock() #9
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %124, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef nonnull %19, ptr noundef nonnull %24) #9
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %124, label %61

61:                                               ; preds = %56
  %62 = add nuw i32 %59, 32
  %63 = load ptr, ptr %19, align 64
  %64 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = load i16, ptr %35, align 2
  %67 = call ptr @ethnl_reply_init(i32 noundef %62, ptr noundef %63, i8 noundef zeroext %65, i16 noundef zeroext %66, ptr noundef %1, ptr noundef nonnull %3)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %124, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef nonnull %67, ptr noundef nonnull %19, ptr noundef nonnull %24) #9
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %117, label %76

76:                                               ; preds = %69
  %77 = load i32, ptr %70, align 8
  %78 = sub i32 %77, %71
  %79 = icmp ugt i32 %78, %59
  %80 = load i1, ptr @ethnl_default_doit.__already_done.15, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !13

83:                                               ; preds = %76
  store i1 true, ptr @ethnl_default_doit.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %59, i32 noundef %78) #9
  br label %84

84:                                               ; preds = %83, %76
  %85 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 10
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call void %86(ptr noundef nonnull %24) #9
  br label %89

89:                                               ; preds = %88, %84
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr i8, ptr %90, i32 -20
  %92 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 14
  %93 = load ptr, ptr %92, align 8
  %94 = ptrtoint ptr %93 to i32
  %95 = ptrtoint ptr %91 to i32
  %96 = sub i32 %94, %95
  store i32 %96, ptr %91, align 4
  %97 = load ptr, ptr %19, align 64
  %98 = icmp eq ptr %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %89
  %100 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %101 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 99
  %102 = load ptr, ptr %101, align 8
  %103 = ptrtoint ptr %102 to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %105 = inttoptr i32 %104 to ptr
  %106 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %105) #6, !srcloc !11
  %107 = add i32 %106, %103
  %108 = inttoptr i32 %107 to ptr
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -1
  store i32 %110, ptr %108, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #9, !srcloc !12
  br label %111

111:                                              ; preds = %99, %89
  tail call void @kfree(ptr noundef nonnull %24) #9
  tail call void @kfree(ptr noundef nonnull %19) #9
  %112 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %115 = tail call i32 @netlink_unicast(ptr noundef %114, ptr noundef nonnull %67, i32 noundef %113, i32 noundef 64) #9
  %116 = tail call i32 @llvm.smin.i32(i32 %115, i32 0) #9
  br label %147

117:                                              ; preds = %69
  %118 = icmp eq i32 %74, -90
  %119 = load i1, ptr @ethnl_default_doit.__already_done.17, align 1
  %120 = xor i1 %119, true
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %123, !prof !13

122:                                              ; preds = %117
  store i1 true, ptr @ethnl_default_doit.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 411, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %59) #9
  br label %123

123:                                              ; preds = %122, %117
  tail call void @kfree_skb_reason(ptr noundef nonnull %67, i32 noundef 0) #9
  br label %124

124:                                              ; preds = %123, %61, %56, %49
  %125 = phi i32 [ %54, %49 ], [ %59, %56 ], [ %74, %123 ], [ -12, %61 ]
  %126 = getelementptr inbounds %struct.ethnl_request_ops, ptr %9, i32 0, i32 10
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  tail call void %127(ptr noundef nonnull %24) #9
  br label %130

130:                                              ; preds = %129, %124, %46, %27
  %131 = phi i32 [ %125, %129 ], [ %125, %124 ], [ %47, %46 ], [ %40, %27 ]
  %132 = load ptr, ptr %19, align 64
  %133 = icmp eq ptr %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %136 = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 99
  %137 = load ptr, ptr %136, align 8
  %138 = ptrtoint ptr %137 to i32
  %139 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %140 = inttoptr i32 %139 to ptr
  %141 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %140) #6, !srcloc !11
  %142 = add i32 %141, %138
  %143 = inttoptr i32 %142 to ptr
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, -1
  store i32 %145, ptr %143, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #9, !srcloc !12
  br label %146

146:                                              ; preds = %134, %130
  tail call void @kfree(ptr noundef nonnull %24) #9
  tail call void @kfree(ptr noundef nonnull %19) #9
  br label %147

147:                                              ; preds = %146, %111, %26, %16, %15
  %148 = phi i32 [ %131, %146 ], [ %116, %111 ], [ -12, %26 ], [ -95, %15 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ethnl_default_start(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = getelementptr [36 x ptr], ptr @ethnl_default_requests, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = load i1, ptr @ethnl_default_start.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !13

16:                                               ; preds = %1
  store i1 true, ptr @ethnl_default_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 535, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %9) #9
  br label %17

17:                                               ; preds = %16, %1
  br i1 %12, label %74, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ethnl_request_ops, ptr %11, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ethnl_request_ops, ptr %11, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %72, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ethnl_request_ops, ptr %11, i32 0, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr ptr, ptr %30, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %21, ptr noundef %37, ptr noundef nonnull @init_net, ptr noundef %32, i1 noundef zeroext false) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.ethnl_request_ops, ptr %11, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef nonnull %21, ptr noundef %30, ptr noundef %32) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %44, %28
  %49 = phi i32 [ 0, %47 ], [ %38, %28 ], [ %45, %44 ]
  %50 = load ptr, ptr %21, align 64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %54 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 99
  %55 = load ptr, ptr %54, align 8
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #6, !srcloc !11
  %60 = add i32 %59, %56
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #9, !srcloc !12
  store ptr null, ptr %21, align 64
  br label %64

64:                                               ; preds = %52, %48
  %65 = icmp slt i32 %49, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  store ptr %11, ptr %4, align 4
  %67 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 1
  store ptr %21, ptr %67, align 4
  %68 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 2
  store ptr %26, ptr %68, align 4
  %69 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 3
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %70, align 4
  br label %74

71:                                               ; preds = %64
  tail call void @kfree(ptr noundef nonnull %26) #9
  br label %72

72:                                               ; preds = %71, %23
  %73 = phi i32 [ %49, %71 ], [ -12, %23 ]
  tail call void @kfree(ptr noundef nonnull %21) #9
  br label %74

74:                                               ; preds = %72, %66, %18, %17
  %75 = phi i32 [ %73, %72 ], [ 0, %66 ], [ -95, %17 ], [ -12, %18 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ethnl_default_dumpit(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  tail call void @rtnl_lock() #9
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %163

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  br label %17

17:                                               ; preds = %157, %9
  %18 = phi i32 [ %16, %9 ], [ %158, %157 ]
  %19 = phi i32 [ %5, %9 ], [ 0, %157 ]
  %20 = phi i32 [ %7, %9 ], [ %161, %157 ]
  %21 = phi i32 [ 0, %9 ], [ %159, %157 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %23 = getelementptr %struct.hlist_head, ptr %22, i32 %20
  store i32 %18, ptr %10, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = getelementptr i8, ptr %24, i32 -560
  %27 = icmp eq ptr %26, null
  %28 = or i1 %25, %27
  br i1 %28, label %157, label %29

29:                                               ; preds = %135, %17
  %30 = phi i32 [ %133, %135 ], [ %18, %17 ]
  %31 = phi ptr [ %139, %135 ], [ %26, %17 ]
  %32 = phi i32 [ %136, %135 ], [ %19, %17 ]
  %33 = phi i32 [ %118, %135 ], [ %21, %17 ]
  br label %34

34:                                               ; preds = %142, %29
  %35 = phi i32 [ %30, %29 ], [ %143, %142 ]
  %36 = phi i32 [ 0, %29 ], [ %145, %142 ]
  %37 = phi ptr [ %31, %29 ], [ %149, %142 ]
  %38 = phi i32 [ %33, %29 ], [ %144, %142 ]
  %39 = icmp slt i32 %36, %32
  br i1 %39, label %142, label %40

40:                                               ; preds = %34
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %42 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 99
  %43 = load ptr, ptr %42, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #6, !srcloc !11
  %48 = add i32 %47, %44
  %49 = inttoptr i32 %48 to ptr
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #9, !srcloc !12
  tail call void @rtnl_unlock() #9
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 3, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr inbounds %struct.nlmsghdr, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.ethnl_request_ops, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = tail call ptr @genlmsg_put(ptr noundef %0, i32 noundef %54, i32 noundef %57, ptr noundef nonnull @ethtool_genl_family, i32 noundef 2, i8 noundef zeroext %60) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %117, label %63

63:                                               ; preds = %40
  %64 = load ptr, ptr %12, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.ethnl_request_ops, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %64, i8 0, i32 %67, i1 false) #9
  store ptr %37, ptr %64, align 4
  tail call void @rtnl_lock() #9
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.ethnl_request_ops, ptr %68, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %13, align 4
  %72 = load ptr, ptr %12, align 4
  %73 = tail call i32 %70(ptr noundef %71, ptr noundef %72, ptr noundef null) #9
  tail call void @rtnl_unlock() #9
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %63
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.ethnl_request_ops, ptr %76, i32 0, i32 2
  %78 = load i16, ptr %77, align 2
  %79 = tail call i32 @ethnl_fill_reply_header(ptr noundef %0, ptr noundef nonnull %37, i16 noundef zeroext %78) #9
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.ethnl_request_ops, ptr %82, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %13, align 4
  %86 = load ptr, ptr %12, align 4
  %87 = tail call i32 %84(ptr noundef %0, ptr noundef %85, ptr noundef %86) #9
  br label %88

88:                                               ; preds = %81, %75, %63
  %89 = phi i32 [ %73, %63 ], [ %79, %75 ], [ %87, %81 ]
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr inbounds %struct.ethnl_request_ops, ptr %90, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %12, align 4
  tail call void %92(ptr noundef %95) #9
  br label %96

96:                                               ; preds = %94, %88
  %97 = load ptr, ptr %12, align 4
  store ptr null, ptr %97, align 4
  %98 = icmp slt i32 %89, 0
  %99 = getelementptr i8, ptr %61, i32 -20
  br i1 %98, label %100, label %112

100:                                              ; preds = %96
  %101 = icmp eq ptr %99, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %15, align 4
  %104 = icmp ugt ptr %103, %99
  br i1 %104, label %105, label %107, !prof !13

105:                                              ; preds = %102
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  %106 = load ptr, ptr %15, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi ptr [ %106, %105 ], [ %103, %102 ]
  %109 = ptrtoint ptr %99 to i32
  %110 = ptrtoint ptr %108 to i32
  %111 = sub i32 %109, %110
  tail call void @skb_trim(ptr noundef %0, i32 noundef %111) #9
  br label %117

112:                                              ; preds = %96
  %113 = load ptr, ptr %14, align 8
  %114 = ptrtoint ptr %113 to i32
  %115 = ptrtoint ptr %99 to i32
  %116 = sub i32 %114, %115
  store i32 %116, ptr %99, align 4
  br label %117

117:                                              ; preds = %112, %107, %100, %40
  %118 = phi i32 [ -90, %40 ], [ %89, %112 ], [ %89, %100 ], [ %89, %107 ]
  %119 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %120 = load ptr, ptr %42, align 8
  %121 = ptrtoint ptr %120 to i32
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #6, !srcloc !11
  %125 = add i32 %124, %121
  %126 = inttoptr i32 %125 to ptr
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %126, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %119) #9, !srcloc !12
  %129 = icmp sgt i32 %118, -1
  %130 = icmp eq i32 %118, -95
  %131 = or i1 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %117
  tail call void @rtnl_lock() #9
  %133 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  %134 = icmp eq i32 %133, %30
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = add i32 %36, 1
  store i32 %133, ptr %10, align 4
  %137 = load ptr, ptr %23, align 4
  %138 = icmp eq ptr %137, null
  %139 = getelementptr i8, ptr %137, i32 -560
  %140 = icmp eq ptr %139, null
  %141 = or i1 %138, %140
  br i1 %141, label %157, label %29

142:                                              ; preds = %132, %34
  %143 = phi i32 [ %35, %34 ], [ %30, %132 ]
  %144 = phi i32 [ %38, %34 ], [ %118, %132 ]
  %145 = add i32 %36, 1
  %146 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 85
  %147 = load ptr, ptr %146, align 16
  %148 = icmp eq ptr %147, null
  %149 = getelementptr i8, ptr %147, i32 -560
  %150 = icmp eq ptr %149, null
  %151 = or i1 %148, %150
  br i1 %151, label %157, label %34

152:                                              ; preds = %117
  %153 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %154 = load i32, ptr %153, align 8
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i32 %118, i32 %154, !prof !13
  br label %167

157:                                              ; preds = %142, %135, %17
  %158 = phi i32 [ %18, %17 ], [ %143, %142 ], [ %133, %135 ]
  %159 = phi i32 [ %21, %17 ], [ %144, %142 ], [ %118, %135 ]
  %160 = phi i32 [ 0, %17 ], [ %145, %142 ], [ 0, %135 ]
  %161 = add nsw i32 %20, 1
  %162 = icmp eq i32 %161, 256
  br i1 %162, label %163, label %17

163:                                              ; preds = %157, %2
  %164 = phi i32 [ 0, %2 ], [ %159, %157 ]
  %165 = phi i32 [ 0, %2 ], [ %160, %157 ]
  %166 = phi i32 [ %7, %2 ], [ 256, %157 ]
  tail call void @rtnl_unlock() #9
  br label %167

167:                                              ; preds = %163, %152
  %168 = phi i32 [ %20, %152 ], [ %166, %163 ]
  %169 = phi i32 [ %156, %152 ], [ %164, %163 ]
  %170 = phi i32 [ %36, %152 ], [ %165, %163 ]
  store i32 %168, ptr %6, align 4
  store i32 %170, ptr %4, align 4
  %171 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, %174
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.nlmsghdr, ptr %172, i32 0, i32 2
  %182 = load i16, ptr %181, align 2
  %183 = or i16 %182, 16
  store i16 %183, ptr %181, align 2
  br label %184

184:                                              ; preds = %180, %176, %167
  %185 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  %186 = load i32, ptr %185, align 4
  store i32 %186, ptr %173, align 4
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ethnl_default_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_linkinfo(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_linkmodes(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_debug(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_wol(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_features(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_privflags(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_rings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_channels(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_coalesce(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_pause(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_eee(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_act_cable_test(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_act_cable_test_tdr(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_tunnel_info_doit(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_tunnel_info_start(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_tunnel_info_dumpit(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_fec(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_set_module(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ethnl_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq i32 %1, 12
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  tail call void @ethtool_notify(ptr noundef %6, i32 noundef 13, ptr noundef null) #9
  br label %7

7:                                                ; preds = %5, %3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!"auto-init"}
!10 = !{i64 668312, i64 668373}
!11 = !{i64 687012}
!12 = !{i64 671329}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i8 0, i8 2}
