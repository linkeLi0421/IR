; ModuleID = '/llk/IR/net/ipv6/proc.c_pt.bc'
source_filename = "../net/ipv6/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.59, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.59 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.snmp_mib = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.131, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.131 = type { ptr }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.netdevice_tracker = type {}
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.173, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.173 = type { ptr }
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
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [39 x i8], %struct.rhashtable, [40 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [40 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@ipv6_proc_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv6_proc_init_net, ptr null, ptr @ipv6_proc_exit_net, ptr null, ptr null, i32 0 }, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str = private unnamed_addr constant [10 x i8] c"%-32s\09%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ifIndex\00", align 1
@snmp6_ipstats_list = internal unnamed_addr constant [33 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.3, i32 1 }, %struct.snmp_mib { ptr @.str.4, i32 7 }, %struct.snmp_mib { ptr @.str.5, i32 8 }, %struct.snmp_mib { ptr @.str.6, i32 9 }, %struct.snmp_mib { ptr @.str.7, i32 10 }, %struct.snmp_mib { ptr @.str.8, i32 11 }, %struct.snmp_mib { ptr @.str.9, i32 12 }, %struct.snmp_mib { ptr @.str.10, i32 13 }, %struct.snmp_mib { ptr @.str.11, i32 3 }, %struct.snmp_mib { ptr @.str.12, i32 4 }, %struct.snmp_mib { ptr @.str.13, i32 5 }, %struct.snmp_mib { ptr @.str.14, i32 14 }, %struct.snmp_mib { ptr @.str.15, i32 15 }, %struct.snmp_mib { ptr @.str.16, i32 16 }, %struct.snmp_mib { ptr @.str.17, i32 17 }, %struct.snmp_mib { ptr @.str.18, i32 18 }, %struct.snmp_mib { ptr @.str.19, i32 19 }, %struct.snmp_mib { ptr @.str.20, i32 20 }, %struct.snmp_mib { ptr @.str.21, i32 21 }, %struct.snmp_mib { ptr @.str.22, i32 22 }, %struct.snmp_mib { ptr @.str.23, i32 23 }, %struct.snmp_mib { ptr @.str.24, i32 24 }, %struct.snmp_mib { ptr @.str.25, i32 2 }, %struct.snmp_mib { ptr @.str.26, i32 6 }, %struct.snmp_mib { ptr @.str.27, i32 27 }, %struct.snmp_mib { ptr @.str.28, i32 28 }, %struct.snmp_mib { ptr @.str.29, i32 29 }, %struct.snmp_mib { ptr @.str.30, i32 30 }, %struct.snmp_mib { ptr @.str.31, i32 32 }, %struct.snmp_mib { ptr @.str.32, i32 33 }, %struct.snmp_mib { ptr @.str.33, i32 34 }, %struct.snmp_mib { ptr @.str.34, i32 35 }, %struct.snmp_mib zeroinitializer], align 4
@snmp6_icmp6_list = internal constant [6 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.36, i32 1 }, %struct.snmp_mib { ptr @.str.37, i32 2 }, %struct.snmp_mib { ptr @.str.38, i32 3 }, %struct.snmp_mib { ptr @.str.39, i32 4 }, %struct.snmp_mib { ptr @.str.40, i32 5 }, %struct.snmp_mib zeroinitializer], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%-32s\09%llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Ip6InReceives\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Ip6InHdrErrors\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Ip6InTooBigErrors\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Ip6InNoRoutes\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Ip6InAddrErrors\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Ip6InUnknownProtos\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Ip6InTruncatedPkts\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Ip6InDiscards\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Ip6InDelivers\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Ip6OutForwDatagrams\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Ip6OutRequests\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Ip6OutDiscards\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Ip6OutNoRoutes\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Ip6ReasmTimeout\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Ip6ReasmReqds\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Ip6ReasmOKs\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Ip6ReasmFails\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Ip6FragOKs\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Ip6FragFails\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Ip6FragCreates\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Ip6InMcastPkts\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Ip6OutMcastPkts\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Ip6InOctets\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Ip6OutOctets\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Ip6InMcastOctets\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Ip6OutMcastOctets\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Ip6InBcastOctets\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Ip6OutBcastOctets\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Ip6InNoECTPkts\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Ip6InECT1Pkts\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Ip6InECT0Pkts\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Ip6InCEPkts\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"%-32s\09%lu\0A\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"Icmp6InMsgs\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Icmp6InErrors\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Icmp6OutMsgs\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Icmp6OutErrors\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Icmp6InCsumErrors\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Icmp6%s%s\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Icmp6%sType%u\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"DestUnreachs\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"PktTooBigs\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"TimeExcds\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"ParmProblems\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Echos\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"EchoReplies\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"GroupMembQueries\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"GroupMembResponses\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"GroupMembReductions\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"RouterSolicits\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"RouterAdvertisements\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"NeighborSolicits\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"NeighborAdvertisements\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Redirects\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"MLDv2Reports\00", align 1
@icmp6type2name = internal unnamed_addr constant <{ [144 x ptr], [112 x ptr] }> <{ [144 x ptr] [ptr null, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.59], [112 x ptr] zeroinitializer }>, align 4
@.str.61 = private unnamed_addr constant [10 x i8] c"sockstat6\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"snmp6\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"dev_snmp6\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"TCP6: inuse %d\0A\00", align 1
@tcpv6_prot = external dso_local global %struct.proto, align 4
@.str.65 = private unnamed_addr constant [16 x i8] c"UDP6: inuse %d\0A\00", align 1
@udpv6_prot = external dso_local global %struct.proto, align 4
@.str.66 = private unnamed_addr constant [20 x i8] c"UDPLITE6: inuse %d\0A\00", align 1
@udplitev6_prot = external dso_local global %struct.proto, align 4
@.str.67 = private unnamed_addr constant [16 x i8] c"RAW6: inuse %d\0A\00", align 1
@rawv6_prot = external dso_local global %struct.proto, align 4
@.str.68 = private unnamed_addr constant [28 x i8] c"FRAG6: inuse %u memory %lu\0A\00", align 1
@snmp6_udp6_list = internal constant [10 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.69, i32 1 }, %struct.snmp_mib { ptr @.str.70, i32 2 }, %struct.snmp_mib { ptr @.str.71, i32 3 }, %struct.snmp_mib { ptr @.str.72, i32 4 }, %struct.snmp_mib { ptr @.str.73, i32 5 }, %struct.snmp_mib { ptr @.str.74, i32 6 }, %struct.snmp_mib { ptr @.str.75, i32 7 }, %struct.snmp_mib { ptr @.str.76, i32 8 }, %struct.snmp_mib { ptr @.str.77, i32 9 }, %struct.snmp_mib zeroinitializer], align 4
@snmp6_udplite6_list = internal constant [9 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.78, i32 1 }, %struct.snmp_mib { ptr @.str.79, i32 2 }, %struct.snmp_mib { ptr @.str.80, i32 3 }, %struct.snmp_mib { ptr @.str.81, i32 4 }, %struct.snmp_mib { ptr @.str.82, i32 5 }, %struct.snmp_mib { ptr @.str.83, i32 6 }, %struct.snmp_mib { ptr @.str.84, i32 7 }, %struct.snmp_mib { ptr @.str.85, i32 9 }, %struct.snmp_mib zeroinitializer], align 4
@.str.69 = private unnamed_addr constant [16 x i8] c"Udp6InDatagrams\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Udp6NoPorts\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"Udp6InErrors\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"Udp6OutDatagrams\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"Udp6RcvbufErrors\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Udp6SndbufErrors\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"Udp6InCsumErrors\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"Udp6IgnoredMulti\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"Udp6MemErrors\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"UdpLite6InDatagrams\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"UdpLite6NoPorts\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"UdpLite6InErrors\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"UdpLite6OutDatagrams\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"UdpLite6RcvbufErrors\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"UdpLite6SndbufErrors\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"UdpLite6InCsumErrors\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"UdpLite6MemErrors\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snmp6_register_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 12), align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @proc_create_single_data(ptr noundef nonnull %4, i16 noundef zeroext 292, ptr noundef nonnull %7, ptr noundef nonnull @snmp6_dev_seq_show, ptr noundef nonnull %0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 33
  store ptr %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %9, %6, %3, %1
  %15 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %1 ], [ -2, %6 ], [ -12, %9 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snmp6_dev_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %7) #8
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @snmp6_seq_show_item64(ptr noundef %0, ptr noundef %9)
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.atomic_t, ptr %11, i32 1
  %13 = load volatile i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %13) #8
  %14 = getelementptr %struct.atomic_t, ptr %11, i32 2
  %15 = load volatile i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %15) #8
  %16 = getelementptr %struct.atomic_t, ptr %11, i32 3
  %17 = load volatile i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef %17) #8
  %18 = getelementptr %struct.atomic_t, ptr %11, i32 4
  %19 = load volatile i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39, i32 noundef %19) #8
  %20 = getelementptr %struct.atomic_t, ptr %11, i32 5
  %21 = load volatile i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40, i32 noundef %21) #8
  %22 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 33, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @snmp6_seq_show_icmpv6msg(ptr noundef %0, ptr noundef %23)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snmp6_unregister_dev(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 12), align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 33
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @proc_remove(ptr noundef nonnull %6) #8
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %4, %1
  %10 = phi i32 [ 0, %8 ], [ -2, %1 ], [ -22, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ipv6_misc_proc_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv6_proc_ops) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_misc_proc_exit() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ipv6_proc_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snmp6_seq_show_item64(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [37 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %3, i8 0, i64 296, i1 false)
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %8, %2
  br label %24

8:                                                ; preds = %14
  %9 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #9
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %7

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %9, %8 ], [ %4, %2 ]
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %22, %14 ]
  %16 = getelementptr %struct.snmp_mib, ptr @snmp6_ipstats_list, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i64 @snmp_get_cpu_field64(ptr noundef %1, i32 noundef %13, i32 noundef %17, i32 noundef 296) #8
  %19 = getelementptr [37 x i64], ptr %3, i32 0, i32 %15
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, %18
  store i64 %21, ptr %19, align 8
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %8, label %14

24:                                               ; preds = %24, %7
  %25 = phi ptr [ %31, %24 ], [ @.str.3, %7 ]
  %26 = phi i32 [ %29, %24 ], [ 0, %7 ]
  %27 = getelementptr [37 x i64], ptr %3, i32 0, i32 %26
  %28 = load i64, ptr %27, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %25, i64 noundef %28) #8
  %29 = add nuw nsw i32 %26, 1
  %30 = getelementptr %struct.snmp_mib, ptr @snmp6_ipstats_list, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq i32 %29, 32
  br i1 %32, label %33, label %24

33:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snmp6_seq_show_item(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [37 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %5) #8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %52

10:                                               ; preds = %4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(148) %5, i8 0, i32 148, i1 false)
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %13 = icmp ult i32 %12, %11
  %14 = load ptr, ptr %3, align 4
  br i1 %13, label %15, label %28

15:                                               ; preds = %10
  %16 = icmp eq ptr %14, null
  %17 = ptrtoint ptr %1 to i32
  br label %21

18:                                               ; preds = %30, %21
  %19 = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef nonnull @__cpu_possible_mask) #9
  %20 = icmp ult i32 %19, %11
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %12, %15 ], [ %19, %18 ]
  br i1 %16, label %18, label %23

23:                                               ; preds = %21
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %17
  %27 = inttoptr i32 %26 to ptr
  br label %30

28:                                               ; preds = %18, %10
  %29 = icmp eq ptr %14, null
  br i1 %29, label %63, label %43

30:                                               ; preds = %30, %23
  %31 = phi i32 [ 0, %23 ], [ %39, %30 ]
  %32 = getelementptr %struct.snmp_mib, ptr %3, i32 %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i32, ptr %27, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [37 x i32], ptr %5, i32 0, i32 %31
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  store i32 %38, ptr %36, align 4
  %39 = add i32 %31, 1
  %40 = getelementptr %struct.snmp_mib, ptr %3, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %18, label %30

43:                                               ; preds = %43, %28
  %44 = phi ptr [ %50, %43 ], [ %14, %28 ]
  %45 = phi i32 [ %48, %43 ], [ 0, %28 ]
  %46 = getelementptr [37 x i32], ptr %5, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %44, i32 noundef %47) #8
  %48 = add i32 %45, 1
  %49 = getelementptr %struct.snmp_mib, ptr %3, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %43

52:                                               ; preds = %52, %7
  %53 = phi ptr [ %61, %52 ], [ %8, %7 ]
  %54 = phi i32 [ %59, %52 ], [ 0, %7 ]
  %55 = getelementptr %struct.snmp_mib, ptr %3, i32 %54, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.atomic_t, ptr %2, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %53, i32 noundef %58) #8
  %59 = add i32 %54, 1
  %60 = getelementptr %struct.snmp_mib, ptr %3, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %52

63:                                               ; preds = %52, %43, %28, %7
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snmp6_seq_show_icmpv6msg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %6 = and i32 %5, 255
  %7 = getelementptr [256 x ptr], ptr @icmp6type2name, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = and i32 %5, 256
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.43, ptr @.str.42
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.41, ptr noundef nonnull %13, ptr noundef nonnull %8)
  %15 = getelementptr %struct.atomic_t, ptr %1, i32 %5
  %16 = load volatile i32, ptr %15, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %3, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %10, %4
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 512
  br i1 %19, label %20, label %4

20:                                               ; preds = %31, %17
  %21 = phi i32 [ %32, %31 ], [ 0, %17 ]
  %22 = getelementptr %struct.atomic_t, ptr %1, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = and i32 %21, 256
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.43, ptr @.str.42
  %29 = and i32 %21, 255
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.44, ptr noundef nonnull %28, i32 noundef %29)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %3, i32 noundef %23) #8
  br label %31

31:                                               ; preds = %25, %20
  %32 = add nuw nsw i32 %21, 1
  %33 = icmp eq i32 %32, 512
  br i1 %33, label %34, label %20

34:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snmp_get_cpu_field64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv6_proc_init_net(ptr nocapture noundef %0) #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.61, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @sockstat6_seq_show, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.62, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @snmp6_seq_show, ptr noundef null) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.63, ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 12
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.62, ptr noundef %16) #8
  br label %17

17:                                               ; preds = %15, %6
  %18 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.61, ptr noundef %18) #8
  br label %19

19:                                               ; preds = %17, %10, %1
  %20 = phi i32 [ -12, %17 ], [ -12, %1 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv6_proc_exit_net(ptr nocapture noundef readonly %0) #7 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.61, ptr noundef %3) #8
  %4 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.63, ptr noundef %4) #8
  %5 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.62, ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sockstat6_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @tcpv6_prot) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %5) #8
  %6 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @udpv6_prot) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %6) #8
  %7 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @udplitev6_prot) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %7) #8
  %8 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @rawv6_prot) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %8) #8
  %9 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fqdir, ptr %10, i32 0, i32 8, i32 8
  %12 = load volatile i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fqdir, ptr %10, i32 0, i32 10
  %14 = load volatile i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %12, i32 noundef %14) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snmp6_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @snmp6_seq_show_item64(ptr noundef %0, ptr noundef %6)
  %7 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 10
  %8 = load ptr, ptr %7, align 8
  tail call fastcc void @snmp6_seq_show_item(ptr noundef %0, ptr noundef %8, ptr noundef null, ptr noundef nonnull @snmp6_icmp6_list)
  %9 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 11
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @snmp6_seq_show_icmpv6msg(ptr noundef %0, ptr noundef %10)
  %11 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call fastcc void @snmp6_seq_show_item(ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef nonnull @snmp6_udp6_list)
  %13 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @snmp6_seq_show_item(ptr noundef %0, ptr noundef %14, ptr noundef null, ptr noundef nonnull @snmp6_udplite6_list)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_prot_inuse_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!8 = !{!"auto-init"}
