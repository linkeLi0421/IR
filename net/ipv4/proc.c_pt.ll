; ModuleID = '/llk/IR/net/ipv4/proc.c_pt.bc'
source_filename = "../net/ipv4/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.155, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.155 = type { ptr }
%struct.snmp_mib = type { ptr, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.172, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.172 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [39 x i8], %struct.rhashtable, [40 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [40 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }

@ip_proc_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip_proc_init_net, ptr null, ptr @ip_proc_exit_net, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str = private unnamed_addr constant [9 x i8] c"sockstat\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"netstat\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"snmp\00", align 1
@tcp_prot = external dso_local global %struct.proto, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"TCP: inuse %d orphan %d tw %d alloc %d mem %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"UDP: inuse %d mem %ld\0A\00", align 1
@udp_prot = external dso_local global %struct.proto, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"UDPLITE: inuse %d\0A\00", align 1
@udplite_prot = external dso_local global %struct.proto, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"RAW: inuse %d\0A\00", align 1
@raw_prot = external dso_local global %struct.proto, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"FRAG: inuse %u memory %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"TcpExt:\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@snmp4_net_list = internal unnamed_addr constant [126 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.14, i32 1 }, %struct.snmp_mib { ptr @.str.15, i32 2 }, %struct.snmp_mib { ptr @.str.16, i32 3 }, %struct.snmp_mib { ptr @.str.17, i32 4 }, %struct.snmp_mib { ptr @.str.18, i32 5 }, %struct.snmp_mib { ptr @.str.19, i32 6 }, %struct.snmp_mib { ptr @.str.20, i32 7 }, %struct.snmp_mib { ptr @.str.21, i32 8 }, %struct.snmp_mib { ptr @.str.22, i32 9 }, %struct.snmp_mib { ptr @.str.23, i32 10 }, %struct.snmp_mib { ptr @.str.24, i32 11 }, %struct.snmp_mib { ptr @.str.25, i32 12 }, %struct.snmp_mib { ptr @.str.26, i32 13 }, %struct.snmp_mib { ptr @.str.27, i32 14 }, %struct.snmp_mib { ptr @.str.28, i32 15 }, %struct.snmp_mib { ptr @.str.29, i32 16 }, %struct.snmp_mib { ptr @.str.30, i32 17 }, %struct.snmp_mib { ptr @.str.31, i32 18 }, %struct.snmp_mib { ptr @.str.32, i32 19 }, %struct.snmp_mib { ptr @.str.33, i32 20 }, %struct.snmp_mib { ptr @.str.34, i32 21 }, %struct.snmp_mib { ptr @.str.35, i32 22 }, %struct.snmp_mib { ptr @.str.36, i32 23 }, %struct.snmp_mib { ptr @.str.37, i32 24 }, %struct.snmp_mib { ptr @.str.38, i32 25 }, %struct.snmp_mib { ptr @.str.39, i32 26 }, %struct.snmp_mib { ptr @.str.40, i32 27 }, %struct.snmp_mib { ptr @.str.41, i32 28 }, %struct.snmp_mib { ptr @.str.42, i32 29 }, %struct.snmp_mib { ptr @.str.43, i32 30 }, %struct.snmp_mib { ptr @.str.44, i32 31 }, %struct.snmp_mib { ptr @.str.45, i32 32 }, %struct.snmp_mib { ptr @.str.46, i32 33 }, %struct.snmp_mib { ptr @.str.47, i32 34 }, %struct.snmp_mib { ptr @.str.48, i32 35 }, %struct.snmp_mib { ptr @.str.49, i32 36 }, %struct.snmp_mib { ptr @.str.50, i32 37 }, %struct.snmp_mib { ptr @.str.51, i32 38 }, %struct.snmp_mib { ptr @.str.52, i32 39 }, %struct.snmp_mib { ptr @.str.53, i32 40 }, %struct.snmp_mib { ptr @.str.54, i32 41 }, %struct.snmp_mib { ptr @.str.55, i32 42 }, %struct.snmp_mib { ptr @.str.56, i32 43 }, %struct.snmp_mib { ptr @.str.57, i32 44 }, %struct.snmp_mib { ptr @.str.58, i32 45 }, %struct.snmp_mib { ptr @.str.59, i32 78 }, %struct.snmp_mib { ptr @.str.60, i32 46 }, %struct.snmp_mib { ptr @.str.61, i32 47 }, %struct.snmp_mib { ptr @.str.62, i32 48 }, %struct.snmp_mib { ptr @.str.63, i32 49 }, %struct.snmp_mib { ptr @.str.64, i32 50 }, %struct.snmp_mib { ptr @.str.65, i32 51 }, %struct.snmp_mib { ptr @.str.66, i32 52 }, %struct.snmp_mib { ptr @.str.67, i32 53 }, %struct.snmp_mib { ptr @.str.68, i32 54 }, %struct.snmp_mib { ptr @.str.69, i32 55 }, %struct.snmp_mib { ptr @.str.70, i32 56 }, %struct.snmp_mib { ptr @.str.71, i32 57 }, %struct.snmp_mib { ptr @.str.72, i32 58 }, %struct.snmp_mib { ptr @.str.73, i32 59 }, %struct.snmp_mib { ptr @.str.74, i32 60 }, %struct.snmp_mib { ptr @.str.75, i32 61 }, %struct.snmp_mib { ptr @.str.76, i32 62 }, %struct.snmp_mib { ptr @.str.77, i32 63 }, %struct.snmp_mib { ptr @.str.78, i32 64 }, %struct.snmp_mib { ptr @.str.79, i32 65 }, %struct.snmp_mib { ptr @.str.80, i32 66 }, %struct.snmp_mib { ptr @.str.81, i32 67 }, %struct.snmp_mib { ptr @.str.82, i32 68 }, %struct.snmp_mib { ptr @.str.83, i32 69 }, %struct.snmp_mib { ptr @.str.84, i32 70 }, %struct.snmp_mib { ptr @.str.85, i32 71 }, %struct.snmp_mib { ptr @.str.86, i32 72 }, %struct.snmp_mib { ptr @.str.87, i32 73 }, %struct.snmp_mib { ptr @.str.88, i32 74 }, %struct.snmp_mib { ptr @.str.89, i32 75 }, %struct.snmp_mib { ptr @.str.90, i32 76 }, %struct.snmp_mib { ptr @.str.91, i32 77 }, %struct.snmp_mib { ptr @.str.92, i32 79 }, %struct.snmp_mib { ptr @.str.93, i32 80 }, %struct.snmp_mib { ptr @.str.94, i32 81 }, %struct.snmp_mib { ptr @.str.95, i32 82 }, %struct.snmp_mib { ptr @.str.96, i32 83 }, %struct.snmp_mib { ptr @.str.97, i32 84 }, %struct.snmp_mib { ptr @.str.98, i32 85 }, %struct.snmp_mib { ptr @.str.99, i32 86 }, %struct.snmp_mib { ptr @.str.100, i32 87 }, %struct.snmp_mib { ptr @.str.101, i32 88 }, %struct.snmp_mib { ptr @.str.102, i32 89 }, %struct.snmp_mib { ptr @.str.103, i32 90 }, %struct.snmp_mib { ptr @.str.104, i32 91 }, %struct.snmp_mib { ptr @.str.105, i32 92 }, %struct.snmp_mib { ptr @.str.106, i32 93 }, %struct.snmp_mib { ptr @.str.107, i32 94 }, %struct.snmp_mib { ptr @.str.108, i32 95 }, %struct.snmp_mib { ptr @.str.109, i32 96 }, %struct.snmp_mib { ptr @.str.110, i32 97 }, %struct.snmp_mib { ptr @.str.111, i32 98 }, %struct.snmp_mib { ptr @.str.112, i32 99 }, %struct.snmp_mib { ptr @.str.113, i32 100 }, %struct.snmp_mib { ptr @.str.114, i32 101 }, %struct.snmp_mib { ptr @.str.115, i32 102 }, %struct.snmp_mib { ptr @.str.116, i32 103 }, %struct.snmp_mib { ptr @.str.117, i32 104 }, %struct.snmp_mib { ptr @.str.118, i32 105 }, %struct.snmp_mib { ptr @.str.119, i32 106 }, %struct.snmp_mib { ptr @.str.120, i32 107 }, %struct.snmp_mib { ptr @.str.121, i32 108 }, %struct.snmp_mib { ptr @.str.122, i32 109 }, %struct.snmp_mib { ptr @.str.123, i32 110 }, %struct.snmp_mib { ptr @.str.124, i32 111 }, %struct.snmp_mib { ptr @.str.125, i32 112 }, %struct.snmp_mib { ptr @.str.126, i32 113 }, %struct.snmp_mib { ptr @.str.127, i32 114 }, %struct.snmp_mib { ptr @.str.128, i32 115 }, %struct.snmp_mib { ptr @.str.129, i32 116 }, %struct.snmp_mib { ptr @.str.130, i32 117 }, %struct.snmp_mib { ptr @.str.131, i32 118 }, %struct.snmp_mib { ptr @.str.132, i32 119 }, %struct.snmp_mib { ptr @.str.133, i32 120 }, %struct.snmp_mib { ptr @.str.134, i32 121 }, %struct.snmp_mib { ptr @.str.135, i32 122 }, %struct.snmp_mib { ptr @.str.136, i32 123 }, %struct.snmp_mib { ptr @.str.137, i32 124 }, %struct.snmp_mib { ptr @.str.138, i32 125 }, %struct.snmp_mib zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"\0ATcpExt:\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\0AIpExt:\00", align 1
@snmp4_ipextstats_list = internal unnamed_addr constant [19 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.139, i32 9 }, %struct.snmp_mib { ptr @.str.140, i32 12 }, %struct.snmp_mib { ptr @.str.141, i32 23 }, %struct.snmp_mib { ptr @.str.142, i32 24 }, %struct.snmp_mib { ptr @.str.143, i32 25 }, %struct.snmp_mib { ptr @.str.144, i32 26 }, %struct.snmp_mib { ptr @.str.145, i32 2 }, %struct.snmp_mib { ptr @.str.146, i32 6 }, %struct.snmp_mib { ptr @.str.147, i32 27 }, %struct.snmp_mib { ptr @.str.148, i32 28 }, %struct.snmp_mib { ptr @.str.149, i32 29 }, %struct.snmp_mib { ptr @.str.150, i32 30 }, %struct.snmp_mib { ptr @.str.151, i32 31 }, %struct.snmp_mib { ptr @.str.152, i32 32 }, %struct.snmp_mib { ptr @.str.153, i32 33 }, %struct.snmp_mib { ptr @.str.154, i32 34 }, %struct.snmp_mib { ptr @.str.155, i32 35 }, %struct.snmp_mib { ptr @.str.156, i32 36 }, %struct.snmp_mib zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [6 x i8] c" %llu\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SyncookiesSent\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"SyncookiesRecv\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"SyncookiesFailed\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"EmbryonicRsts\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"PruneCalled\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"RcvPruned\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"OfoPruned\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"OutOfWindowIcmps\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"LockDroppedIcmps\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"ArpFilter\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"TW\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"TWRecycled\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"TWKilled\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"PAWSActive\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"PAWSEstab\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"DelayedACKs\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"DelayedACKLocked\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"DelayedACKLost\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"ListenOverflows\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"ListenDrops\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"TCPHPHits\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"TCPPureAcks\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"TCPHPAcks\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"TCPRenoRecovery\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"TCPSackRecovery\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"TCPSACKReneging\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"TCPSACKReorder\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"TCPRenoReorder\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"TCPTSReorder\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"TCPFullUndo\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"TCPPartialUndo\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"TCPDSACKUndo\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"TCPLossUndo\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"TCPLostRetransmit\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"TCPRenoFailures\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"TCPSackFailures\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"TCPLossFailures\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"TCPFastRetrans\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"TCPSlowStartRetrans\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"TCPTimeouts\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"TCPLossProbes\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"TCPLossProbeRecovery\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"TCPRenoRecoveryFail\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"TCPSackRecoveryFail\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"TCPRcvCollapsed\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"TCPBacklogCoalesce\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"TCPDSACKOldSent\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"TCPDSACKOfoSent\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"TCPDSACKRecv\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"TCPDSACKOfoRecv\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"TCPAbortOnData\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"TCPAbortOnClose\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"TCPAbortOnMemory\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"TCPAbortOnTimeout\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"TCPAbortOnLinger\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"TCPAbortFailed\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"TCPMemoryPressures\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"TCPMemoryPressuresChrono\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"TCPSACKDiscard\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"TCPDSACKIgnoredOld\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"TCPDSACKIgnoredNoUndo\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"TCPSpuriousRTOs\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"TCPMD5NotFound\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"TCPMD5Unexpected\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"TCPMD5Failure\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"TCPSackShifted\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"TCPSackMerged\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"TCPSackShiftFallback\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"TCPBacklogDrop\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"PFMemallocDrop\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"TCPMinTTLDrop\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"TCPDeferAcceptDrop\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"IPReversePathFilter\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"TCPTimeWaitOverflow\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"TCPReqQFullDoCookies\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"TCPReqQFullDrop\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"TCPRetransFail\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"TCPRcvCoalesce\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"TCPOFOQueue\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"TCPOFODrop\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"TCPOFOMerge\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"TCPChallengeACK\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"TCPSYNChallenge\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"TCPFastOpenActive\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"TCPFastOpenActiveFail\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"TCPFastOpenPassive\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"TCPFastOpenPassiveFail\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"TCPFastOpenListenOverflow\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"TCPFastOpenCookieReqd\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"TCPFastOpenBlackhole\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"TCPSpuriousRtxHostQueues\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"BusyPollRxPackets\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"TCPAutoCorking\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"TCPFromZeroWindowAdv\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"TCPToZeroWindowAdv\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"TCPWantZeroWindowAdv\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"TCPSynRetrans\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"TCPOrigDataSent\00", align 1
@.str.112 = private unnamed_addr constant [22 x i8] c"TCPHystartTrainDetect\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"TCPHystartTrainCwnd\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"TCPHystartDelayDetect\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"TCPHystartDelayCwnd\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"TCPACKSkippedSynRecv\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"TCPACKSkippedPAWS\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"TCPACKSkippedSeq\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"TCPACKSkippedFinWait2\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"TCPACKSkippedTimeWait\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"TCPACKSkippedChallenge\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"TCPWinProbe\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"TCPKeepAlive\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"TCPMTUPFail\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"TCPMTUPSuccess\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"TCPDelivered\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"TCPDeliveredCE\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"TCPAckCompressed\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"TCPZeroWindowDrop\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"TCPRcvQDrop\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"TCPWqueueTooBig\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"TCPFastOpenPassiveAltKey\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"TcpTimeoutRehash\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"TcpDuplicateDataRehash\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"TCPDSACKRecvSegs\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"TCPDSACKIgnoredDubious\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"TCPMigrateReqSuccess\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"TCPMigrateReqFailure\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.139 = private unnamed_addr constant [11 x i8] c"InNoRoutes\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"InTruncatedPkts\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"InMcastPkts\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"OutMcastPkts\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"InBcastPkts\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"OutBcastPkts\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"InOctets\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"OutOctets\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"InMcastOctets\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"OutMcastOctets\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"InBcastOctets\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"OutBcastOctets\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"InCsumErrors\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"InNoECTPkts\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"InECT1Pkts\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"InECT0Pkts\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"InCEPkts\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"ReasmOverlaps\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"Ip: Forwarding DefaultTTL\00", align 1
@snmp4_ipstats_list = internal unnamed_addr constant [18 x %struct.snmp_mib] [%struct.snmp_mib { ptr @.str.159, i32 1 }, %struct.snmp_mib { ptr @.str.160, i32 7 }, %struct.snmp_mib { ptr @.str.161, i32 10 }, %struct.snmp_mib { ptr @.str.162, i32 4 }, %struct.snmp_mib { ptr @.str.163, i32 11 }, %struct.snmp_mib { ptr @.str.164, i32 13 }, %struct.snmp_mib { ptr @.str.165, i32 3 }, %struct.snmp_mib { ptr @.str.166, i32 5 }, %struct.snmp_mib { ptr @.str.167, i32 14 }, %struct.snmp_mib { ptr @.str.168, i32 15 }, %struct.snmp_mib { ptr @.str.169, i32 16 }, %struct.snmp_mib { ptr @.str.170, i32 17 }, %struct.snmp_mib { ptr @.str.171, i32 18 }, %struct.snmp_mib { ptr @.str.172, i32 19 }, %struct.snmp_mib { ptr @.str.173, i32 20 }, %struct.snmp_mib { ptr @.str.174, i32 21 }, %struct.snmp_mib { ptr @.str.175, i32 22 }, %struct.snmp_mib zeroinitializer], align 4
@.str.158 = private unnamed_addr constant [11 x i8] c"\0AIp: %d %d\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"InReceives\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"InHdrErrors\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"InAddrErrors\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"ForwDatagrams\00", align 1
@.str.163 = private unnamed_addr constant [16 x i8] c"InUnknownProtos\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"InDiscards\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"InDelivers\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"OutRequests\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"OutDiscards\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"OutNoRoutes\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"ReasmTimeout\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"ReasmReqds\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"ReasmOKs\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"ReasmFails\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"FragOKs\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"FragFails\00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"FragCreates\00", align 1
@.str.176 = private unnamed_addr constant [36 x i8] c"\0AIcmp: InMsgs InErrors InCsumErrors\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c" In%s\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c" OutMsgs OutErrors\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c" Out%s\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"\0AIcmp: %lu %lu %lu\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c" %lu %lu\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"DestUnreachs\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"TimeExcds\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"ParmProbs\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"SrcQuenchs\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"Redirects\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"Echos\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"EchoReps\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"Timestamps\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"TimestampReps\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"AddrMasks\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"AddrMaskReps\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"\0AIcmpMsg:\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c" %sType%u\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"\0ATcp:\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"\0AUdp:\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"\0AUdpLite:\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"RtoAlgorithm\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"RtoMin\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"RtoMax\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"MaxConn\00", align 1
@.str.205 = private unnamed_addr constant [12 x i8] c"ActiveOpens\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"PassiveOpens\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"AttemptFails\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"EstabResets\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"CurrEstab\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"InSegs\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"OutSegs\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"RetransSegs\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"InErrs\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"OutRsts\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"InDatagrams\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"NoPorts\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"InErrors\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"OutDatagrams\00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"RcvbufErrors\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"SndbufErrors\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"IgnoredMulti\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"MemErrors\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ip_misc_proc_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_proc_ops) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip_proc_init_net(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @sockstat_seq_show, ptr noundef null) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @netstat_seq_show, ptr noundef null) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull @snmp_seq_show, ptr noundef null) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %15) #9
  br label %16

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %17) #9
  br label %18

18:                                               ; preds = %16, %10, %1
  %19 = phi i32 [ 0, %10 ], [ -12, %1 ], [ -12, %16 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_proc_exit_net(ptr nocapture noundef readonly %0) #2 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %3) #9
  %4 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %4) #9
  %5 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sockstat_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @tcp_orphan_count_sum() #9
  %6 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 31), align 4
  %7 = tail call i64 @__percpu_counter_sum(ptr noundef %6) #9
  %8 = tail call i64 @llvm.smax.i64(i64 %7, i64 0) #9
  %9 = trunc i64 %8 to i32
  tail call void @socket_seq_show(ptr noundef %0) #9
  %10 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @tcp_prot) #9
  %11 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35
  %12 = load volatile i32, ptr %11, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 30), align 4
  %14 = load volatile i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %5, i32 noundef %12, i32 noundef %9, i32 noundef %14) #9
  %15 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @udp_prot) #9
  %16 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 30), align 4
  %17 = load volatile i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %17) #9
  %18 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @udplite_prot) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %18) #9
  %19 = tail call i32 @sock_prot_inuse_get(ptr noundef %4, ptr noundef nonnull @raw_prot) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %19) #9
  %20 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 18
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.fqdir, ptr %21, i32 0, i32 8, i32 8
  %23 = load volatile i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fqdir, ptr %21, i32 0, i32 10
  %25 = load volatile i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %23, i32 noundef %25) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netstat_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #9
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %9, %5 ]
  %7 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %8) #9
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 125
  br i1 %10, label %11, label %5

11:                                               ; preds = %5
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #9
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 500) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %20, label %19

19:                                               ; preds = %24, %15
  br label %48

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 3
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 3
  br label %54

24:                                               ; preds = %31
  %25 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #11
  %26 = icmp ult i32 %25, %16
  br i1 %26, label %27, label %19

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %17, %20 ], [ %25, %24 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i32 [ 0, %27 ], [ %44, %31 ]
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %32, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = ptrtoint ptr %33 to i32
  %37 = add i32 %30, %36
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr i32, ptr %38, i32 %35
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i32, ptr %13, i32 %32
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  store i32 %43, ptr %41, align 4
  %44 = add i32 %32, 1
  %45 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %24, label %31

48:                                               ; preds = %48, %19
  %49 = phi i32 [ %52, %48 ], [ 0, %19 ]
  %50 = getelementptr i32, ptr %13, i32 %49
  %51 = load i32, ptr %50, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %51) #9
  %52 = add nuw nsw i32 %49, 1
  %53 = icmp eq i32 %52, 125
  br i1 %53, label %62, label %48

54:                                               ; preds = %54, %22
  %55 = phi i32 [ 0, %22 ], [ %60, %54 ]
  %56 = load ptr, ptr %23, align 4
  %57 = getelementptr [126 x %struct.snmp_mib], ptr @snmp4_net_list, i32 0, i32 %55, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @snmp_fold_field(ptr noundef %56, i32 noundef %58) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %59) #9
  %60 = add nuw nsw i32 %55, 1
  %61 = icmp eq i32 %60, 125
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %48
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.139) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.140) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.141) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.142) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.143) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.144) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.145) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.146) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.147) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.148) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.149) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.150) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.152) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.153) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.154) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.155) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.156) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  br i1 %14, label %63, label %65

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30
  br label %126

65:                                               ; preds = %62
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %13, i8 0, i32 144, i1 false)
  %66 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %67 = load i32, ptr @nr_cpu_ids, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30
  br label %75

71:                                               ; preds = %115
  %72 = tail call i32 @cpumask_next(i32 noundef %76, ptr noundef nonnull @__cpu_possible_mask) #11
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %69
  %76 = phi i32 [ %66, %69 ], [ %72, %71 ]
  br label %115

77:                                               ; preds = %71
  %78 = load i64, ptr %13, align 8
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi i64 [ %78, %77 ], [ 0, %65 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %80) #9
  %81 = getelementptr i64, ptr %13, i32 1
  %82 = load i64, ptr %81, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %82) #9
  %83 = getelementptr i64, ptr %13, i32 2
  %84 = load i64, ptr %83, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %84) #9
  %85 = getelementptr i64, ptr %13, i32 3
  %86 = load i64, ptr %85, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %86) #9
  %87 = getelementptr i64, ptr %13, i32 4
  %88 = load i64, ptr %87, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %88) #9
  %89 = getelementptr i64, ptr %13, i32 5
  %90 = load i64, ptr %89, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %90) #9
  %91 = getelementptr i64, ptr %13, i32 6
  %92 = load i64, ptr %91, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %92) #9
  %93 = getelementptr i64, ptr %13, i32 7
  %94 = load i64, ptr %93, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %94) #9
  %95 = getelementptr i64, ptr %13, i32 8
  %96 = load i64, ptr %95, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %96) #9
  %97 = getelementptr i64, ptr %13, i32 9
  %98 = load i64, ptr %97, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %98) #9
  %99 = getelementptr i64, ptr %13, i32 10
  %100 = load i64, ptr %99, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %100) #9
  %101 = getelementptr i64, ptr %13, i32 11
  %102 = load i64, ptr %101, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %102) #9
  %103 = getelementptr i64, ptr %13, i32 12
  %104 = load i64, ptr %103, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %104) #9
  %105 = getelementptr i64, ptr %13, i32 13
  %106 = load i64, ptr %105, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %106) #9
  %107 = getelementptr i64, ptr %13, i32 14
  %108 = load i64, ptr %107, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %108) #9
  %109 = getelementptr i64, ptr %13, i32 15
  %110 = load i64, ptr %109, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %110) #9
  %111 = getelementptr i64, ptr %13, i32 16
  %112 = load i64, ptr %111, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %112) #9
  %113 = getelementptr i64, ptr %13, i32 17
  %114 = load i64, ptr %113, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %114) #9
  br label %134

115:                                              ; preds = %115, %75
  %116 = phi i32 [ 0, %75 ], [ %124, %115 ]
  %117 = load ptr, ptr %70, align 8
  %118 = getelementptr [19 x %struct.snmp_mib], ptr @snmp4_ipextstats_list, i32 0, i32 %116, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = tail call i64 @snmp_get_cpu_field64(ptr noundef %117, i32 noundef %76, i32 noundef %119, i32 noundef 296) #9
  %121 = getelementptr i64, ptr %13, i32 %116
  %122 = load i64, ptr %121, align 8
  %123 = add i64 %122, %120
  store i64 %123, ptr %121, align 8
  %124 = add nuw nsw i32 %116, 1
  %125 = icmp eq i32 %124, 18
  br i1 %125, label %71, label %115

126:                                              ; preds = %126, %63
  %127 = phi i32 [ 0, %63 ], [ %132, %126 ]
  %128 = load ptr, ptr %64, align 8
  %129 = getelementptr [19 x %struct.snmp_mib], ptr @snmp4_ipextstats_list, i32 0, i32 %127, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = tail call i64 @snmp_fold_field64(ptr noundef %128, i32 noundef %130, i32 noundef 296) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %131) #9
  %132 = add nuw nsw i32 %127, 1
  %133 = icmp eq i32 %132, 18
  br i1 %133, label %134, label %126

134:                                              ; preds = %126, %79
  tail call void @kfree(ptr noundef %13) #9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snmp_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = alloca [16 x i16], align 2
  %4 = alloca [16 x i32], align 4
  %5 = alloca [37 x i64], align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %5, i8 0, i64 296, i1 false) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.157) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.159) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.160) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.161) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.162) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.163) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.164) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.165) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.166) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.167) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.168) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.169) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.170) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.171) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.172) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.173) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.174) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.175) #9
  %8 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ipv4_devconf, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2, i32 1
  %14 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 31
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %13, i32 noundef %16) #9
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30
  br label %26

22:                                               ; preds = %62
  %23 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef nonnull @__cpu_possible_mask) #11
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %17, %20 ], [ %23, %22 ]
  br label %62

28:                                               ; preds = %22
  %29 = load i64, ptr %5, align 8
  %30 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 4
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 5
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 6
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 7
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 8
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 9
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 10
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 11
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 12
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 13
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 14
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 15
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds [37 x i64], ptr %5, i32 0, i32 16
  %61 = load i64, ptr %60, align 8
  br label %73

62:                                               ; preds = %62, %26
  %63 = phi i32 [ 0, %26 ], [ %71, %62 ]
  %64 = load ptr, ptr %21, align 8
  %65 = getelementptr [18 x %struct.snmp_mib], ptr @snmp4_ipstats_list, i32 0, i32 %63, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = tail call i64 @snmp_get_cpu_field64(ptr noundef %64, i32 noundef %27, i32 noundef %66, i32 noundef 296) #9
  %68 = getelementptr [37 x i64], ptr %5, i32 0, i32 %63
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, %67
  store i64 %70, ptr %68, align 8
  %71 = add nuw nsw i32 %63, 1
  %72 = icmp eq i32 %71, 17
  br i1 %72, label %22, label %62

73:                                               ; preds = %28, %2
  %74 = phi i64 [ %61, %28 ], [ 0, %2 ]
  %75 = phi i64 [ %59, %28 ], [ 0, %2 ]
  %76 = phi i64 [ %57, %28 ], [ 0, %2 ]
  %77 = phi i64 [ %55, %28 ], [ 0, %2 ]
  %78 = phi i64 [ %53, %28 ], [ 0, %2 ]
  %79 = phi i64 [ %51, %28 ], [ 0, %2 ]
  %80 = phi i64 [ %49, %28 ], [ 0, %2 ]
  %81 = phi i64 [ %47, %28 ], [ 0, %2 ]
  %82 = phi i64 [ %45, %28 ], [ 0, %2 ]
  %83 = phi i64 [ %43, %28 ], [ 0, %2 ]
  %84 = phi i64 [ %41, %28 ], [ 0, %2 ]
  %85 = phi i64 [ %39, %28 ], [ 0, %2 ]
  %86 = phi i64 [ %37, %28 ], [ 0, %2 ]
  %87 = phi i64 [ %35, %28 ], [ 0, %2 ]
  %88 = phi i64 [ %33, %28 ], [ 0, %2 ]
  %89 = phi i64 [ %31, %28 ], [ 0, %2 ]
  %90 = phi i64 [ %29, %28 ], [ 0, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %90) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %89) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %88) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %87) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %86) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %85) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %84) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %83) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %82) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %81) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %80) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %79) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %78) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %77) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %76) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %75) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %74) #9
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %5) #9
  %91 = load ptr, ptr %6, align 8
  %92 = getelementptr inbounds %struct.net, ptr %91, i32 0, i32 30, i32 9
  %93 = load ptr, ptr %92, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.176) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.182) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.183) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.184) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.185) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.186) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.187) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.188) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.189) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.190) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.191) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.192) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.178) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.182) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.183) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.184) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.185) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.186) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.187) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.188) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.189) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.190) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.191) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.192) #9
  %94 = getelementptr inbounds %struct.net, ptr %91, i32 0, i32 30, i32 8
  %95 = load ptr, ptr %94, align 8
  %96 = tail call i32 @snmp_fold_field(ptr noundef %95, i32 noundef 1) #9
  %97 = load ptr, ptr %94, align 8
  %98 = tail call i32 @snmp_fold_field(ptr noundef %97, i32 noundef 2) #9
  %99 = load ptr, ptr %94, align 8
  %100 = tail call i32 @snmp_fold_field(ptr noundef %99, i32 noundef 27) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.180, i32 noundef %96, i32 noundef %98, i32 noundef %100) #9
  %101 = getelementptr %struct.atomic_t, ptr %93, i32 3
  %102 = load volatile i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %102) #9
  %103 = getelementptr %struct.atomic_t, ptr %93, i32 11
  %104 = load volatile i32, ptr %103, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %104) #9
  %105 = getelementptr %struct.atomic_t, ptr %93, i32 12
  %106 = load volatile i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %106) #9
  %107 = getelementptr %struct.atomic_t, ptr %93, i32 4
  %108 = load volatile i32, ptr %107, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %108) #9
  %109 = getelementptr %struct.atomic_t, ptr %93, i32 5
  %110 = load volatile i32, ptr %109, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %110) #9
  %111 = getelementptr %struct.atomic_t, ptr %93, i32 8
  %112 = load volatile i32, ptr %111, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %112) #9
  %113 = load volatile i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %113) #9
  %114 = getelementptr %struct.atomic_t, ptr %93, i32 13
  %115 = load volatile i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %115) #9
  %116 = getelementptr %struct.atomic_t, ptr %93, i32 14
  %117 = load volatile i32, ptr %116, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %117) #9
  %118 = getelementptr %struct.atomic_t, ptr %93, i32 17
  %119 = load volatile i32, ptr %118, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %119) #9
  %120 = getelementptr %struct.atomic_t, ptr %93, i32 18
  %121 = load volatile i32, ptr %120, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %121) #9
  %122 = load ptr, ptr %94, align 8
  %123 = tail call i32 @snmp_fold_field(ptr noundef %122, i32 noundef 14) #9
  %124 = load ptr, ptr %94, align 8
  %125 = tail call i32 @snmp_fold_field(ptr noundef %124, i32 noundef 15) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.181, i32 noundef %123, i32 noundef %125) #9
  %126 = getelementptr %struct.atomic_t, ptr %93, i32 259
  %127 = load volatile i32, ptr %126, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %127) #9
  %128 = getelementptr %struct.atomic_t, ptr %93, i32 267
  %129 = load volatile i32, ptr %128, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %129) #9
  %130 = getelementptr %struct.atomic_t, ptr %93, i32 268
  %131 = load volatile i32, ptr %130, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %131) #9
  %132 = getelementptr %struct.atomic_t, ptr %93, i32 260
  %133 = load volatile i32, ptr %132, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %133) #9
  %134 = getelementptr %struct.atomic_t, ptr %93, i32 261
  %135 = load volatile i32, ptr %134, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %135) #9
  %136 = getelementptr %struct.atomic_t, ptr %93, i32 264
  %137 = load volatile i32, ptr %136, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %137) #9
  %138 = getelementptr %struct.atomic_t, ptr %93, i32 256
  %139 = load volatile i32, ptr %138, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %139) #9
  %140 = getelementptr %struct.atomic_t, ptr %93, i32 269
  %141 = load volatile i32, ptr %140, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %141) #9
  %142 = getelementptr %struct.atomic_t, ptr %93, i32 270
  %143 = load volatile i32, ptr %142, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %143) #9
  %144 = getelementptr %struct.atomic_t, ptr %93, i32 273
  %145 = load volatile i32, ptr %144, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %145) #9
  %146 = getelementptr %struct.atomic_t, ptr %93, i32 274
  %147 = load volatile i32, ptr %146, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %147) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %3, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #9, !annotation !8
  %148 = load ptr, ptr %6, align 8
  %149 = getelementptr inbounds %struct.net, ptr %148, i32 0, i32 30, i32 9
  %150 = getelementptr inbounds i32, ptr %4, i32 1
  %151 = getelementptr inbounds i32, ptr %4, i32 2
  %152 = getelementptr inbounds i32, ptr %4, i32 3
  %153 = getelementptr inbounds i32, ptr %4, i32 4
  %154 = getelementptr inbounds i32, ptr %4, i32 5
  %155 = getelementptr inbounds i32, ptr %4, i32 6
  %156 = getelementptr inbounds i32, ptr %4, i32 7
  %157 = getelementptr inbounds i32, ptr %4, i32 8
  %158 = getelementptr inbounds i32, ptr %4, i32 9
  %159 = getelementptr inbounds i32, ptr %4, i32 10
  %160 = getelementptr inbounds i32, ptr %4, i32 11
  %161 = getelementptr inbounds i32, ptr %4, i32 12
  %162 = getelementptr inbounds i32, ptr %4, i32 13
  %163 = getelementptr inbounds i32, ptr %4, i32 14
  %164 = getelementptr inbounds i32, ptr %4, i32 15
  br label %165

165:                                              ; preds = %213, %73
  %166 = phi i32 [ 0, %73 ], [ %214, %213 ]
  %167 = phi i32 [ 0, %73 ], [ %215, %213 ]
  %168 = load ptr, ptr %149, align 4
  %169 = getelementptr [512 x %struct.atomic_t], ptr %168, i32 0, i32 %167
  %170 = load volatile i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %190, label %172

172:                                              ; preds = %165
  %173 = trunc i32 %167 to i16
  %174 = getelementptr [16 x i16], ptr %3, i32 0, i32 %166
  store i16 %173, ptr %174, align 2
  %175 = add i32 %166, 1
  %176 = getelementptr [16 x i32], ptr %4, i32 0, i32 %166
  store i32 %170, ptr %176, align 4
  %177 = icmp eq i32 %175, 16
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.193) #9
  br label %179

179:                                              ; preds = %179, %178
  %180 = phi i32 [ %188, %179 ], [ 0, %178 ]
  %181 = getelementptr i16, ptr %3, i32 %180
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %183, 256
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, ptr @.str.196, ptr @.str.195
  %187 = and i32 %183, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef nonnull %186, i32 noundef %187) #9
  %188 = add nuw nsw i32 %180, 1
  %189 = icmp eq i32 %188, 16
  br i1 %189, label %194, label %179

190:                                              ; preds = %172, %165
  %191 = phi i32 [ %175, %172 ], [ %166, %165 ]
  %192 = add nuw nsw i32 %167, 1
  %193 = icmp eq i32 %192, 512
  br i1 %193, label %216, label %213

194:                                              ; preds = %179
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.193) #9
  %195 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %195) #9
  %196 = load i32, ptr %150, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %196) #9
  %197 = load i32, ptr %151, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %197) #9
  %198 = load i32, ptr %152, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %198) #9
  %199 = load i32, ptr %153, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %199) #9
  %200 = load i32, ptr %154, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %200) #9
  %201 = load i32, ptr %155, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %201) #9
  %202 = load i32, ptr %156, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %202) #9
  %203 = load i32, ptr %157, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %203) #9
  %204 = load i32, ptr %158, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %204) #9
  %205 = load i32, ptr %159, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %205) #9
  %206 = load i32, ptr %160, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %206) #9
  %207 = load i32, ptr %161, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %207) #9
  %208 = load i32, ptr %162, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %208) #9
  %209 = load i32, ptr %163, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %209) #9
  %210 = load i32, ptr %164, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %210) #9
  %211 = add nuw nsw i32 %167, 1
  %212 = icmp eq i32 %211, 512
  br i1 %212, label %239, label %213

213:                                              ; preds = %194, %190
  %214 = phi i32 [ %191, %190 ], [ 0, %194 ]
  %215 = phi i32 [ %192, %190 ], [ %211, %194 ]
  br label %165

216:                                              ; preds = %190
  %217 = icmp eq i32 %191, 0
  br i1 %217, label %239, label %218

218:                                              ; preds = %216
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.193) #9
  %219 = icmp sgt i32 %191, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %218
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.193) #9
  br label %239

221:                                              ; preds = %221, %218
  %222 = phi i32 [ %230, %221 ], [ 0, %218 ]
  %223 = getelementptr i16, ptr %3, i32 %222
  %224 = load i16, ptr %223, align 2
  %225 = zext i16 %224 to i32
  %226 = and i32 %225, 256
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, ptr @.str.196, ptr @.str.195
  %229 = and i32 %225, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef nonnull %228, i32 noundef %229) #9
  %230 = add nuw nsw i32 %222, 1
  %231 = icmp eq i32 %230, %191
  br i1 %231, label %232, label %221

232:                                              ; preds = %221
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.193) #9
  br label %233

233:                                              ; preds = %233, %232
  %234 = phi i32 [ %237, %233 ], [ 0, %232 ]
  %235 = getelementptr i32, ptr %4, i32 %234
  %236 = load i32, ptr %235, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %236) #9
  %237 = add nuw nsw i32 %234, 1
  %238 = icmp eq i32 %237, %191
  br i1 %238, label %239, label %233

239:                                              ; preds = %233, %220, %216, %194
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  %240 = load ptr, ptr %6, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.197) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.201) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.202) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.203) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.204) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.205) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.206) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.207) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.208) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.209) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.210) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.211) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.212) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.213) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.214) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.197) #9
  %241 = load i32, ptr @nr_cpu_ids, align 4
  %242 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %243 = icmp ult i32 %242, %241
  br i1 %243, label %244, label %316

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.net, ptr %240, i32 0, i32 30, i32 2
  %246 = load ptr, ptr %245, align 8
  %247 = ptrtoint ptr %246 to i32
  br label %248

248:                                              ; preds = %248, %244
  %249 = phi i32 [ 0, %244 ], [ %313, %248 ]
  %250 = phi i32 [ 0, %244 ], [ %310, %248 ]
  %251 = phi i32 [ 0, %244 ], [ %307, %248 ]
  %252 = phi i32 [ 0, %244 ], [ %304, %248 ]
  %253 = phi i32 [ 0, %244 ], [ %301, %248 ]
  %254 = phi i32 [ 0, %244 ], [ %298, %248 ]
  %255 = phi i32 [ 0, %244 ], [ %295, %248 ]
  %256 = phi i32 [ 0, %244 ], [ %292, %248 ]
  %257 = phi i32 [ 0, %244 ], [ %289, %248 ]
  %258 = phi i32 [ 0, %244 ], [ %286, %248 ]
  %259 = phi i32 [ 0, %244 ], [ %283, %248 ]
  %260 = phi i32 [ 0, %244 ], [ %280, %248 ]
  %261 = phi i32 [ 0, %244 ], [ %277, %248 ]
  %262 = phi i32 [ 0, %244 ], [ %274, %248 ]
  %263 = phi i32 [ 0, %244 ], [ %271, %248 ]
  %264 = phi i32 [ %242, %244 ], [ %314, %248 ]
  %265 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %264
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %266, %247
  %268 = inttoptr i32 %267 to ptr
  %269 = getelementptr i32, ptr %268, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, %263
  %272 = getelementptr i32, ptr %268, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = add i32 %273, %262
  %275 = getelementptr i32, ptr %268, i32 3
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %276, %261
  %278 = getelementptr i32, ptr %268, i32 4
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %279, %260
  %281 = getelementptr i32, ptr %268, i32 5
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %282, %259
  %284 = getelementptr i32, ptr %268, i32 6
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, %258
  %287 = getelementptr i32, ptr %268, i32 7
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, %257
  %290 = getelementptr i32, ptr %268, i32 8
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, %256
  %293 = getelementptr i32, ptr %268, i32 9
  %294 = load i32, ptr %293, align 4
  %295 = add i32 %294, %255
  %296 = getelementptr i32, ptr %268, i32 10
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, %254
  %299 = getelementptr i32, ptr %268, i32 11
  %300 = load i32, ptr %299, align 4
  %301 = add i32 %300, %253
  %302 = getelementptr i32, ptr %268, i32 12
  %303 = load i32, ptr %302, align 4
  %304 = add i32 %303, %252
  %305 = getelementptr i32, ptr %268, i32 13
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, %251
  %308 = getelementptr i32, ptr %268, i32 14
  %309 = load i32, ptr %308, align 4
  %310 = add i32 %309, %250
  %311 = getelementptr i32, ptr %268, i32 15
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %312, %249
  %314 = tail call i32 @cpumask_next(i32 noundef %264, ptr noundef nonnull @__cpu_possible_mask) #11
  %315 = icmp ult i32 %314, %241
  br i1 %315, label %248, label %316

316:                                              ; preds = %248, %239
  %317 = phi i32 [ 0, %239 ], [ %283, %248 ]
  %318 = phi i32 [ 0, %239 ], [ %286, %248 ]
  %319 = phi i32 [ 0, %239 ], [ %289, %248 ]
  %320 = phi i32 [ 0, %239 ], [ %292, %248 ]
  %321 = phi i32 [ 0, %239 ], [ %295, %248 ]
  %322 = phi i32 [ 0, %239 ], [ %298, %248 ]
  %323 = phi i32 [ 0, %239 ], [ %301, %248 ]
  %324 = phi i32 [ 0, %239 ], [ %304, %248 ]
  %325 = phi i32 [ 0, %239 ], [ %307, %248 ]
  %326 = phi i32 [ 0, %239 ], [ %310, %248 ]
  %327 = phi i32 [ 0, %239 ], [ %313, %248 ]
  %328 = phi i32 [ 0, %239 ], [ %280, %248 ]
  %329 = phi i32 [ 0, %239 ], [ %277, %248 ]
  %330 = phi i32 [ 0, %239 ], [ %274, %248 ]
  %331 = phi i32 [ 0, %239 ], [ %271, %248 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %331) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %330) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %329) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.198, i32 noundef %328) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %317) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %318) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %319) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %320) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %321) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %322) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %323) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %324) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %325) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %326) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %327) #9
  %332 = load i32, ptr @nr_cpu_ids, align 4
  %333 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %334 = icmp ult i32 %333, %332
  br i1 %334, label %335, label %383

335:                                              ; preds = %316
  %336 = getelementptr inbounds %struct.net, ptr %240, i32 0, i32 30, i32 4
  %337 = load ptr, ptr %336, align 8
  %338 = ptrtoint ptr %337 to i32
  br label %339

339:                                              ; preds = %339, %335
  %340 = phi i32 [ 0, %335 ], [ %380, %339 ]
  %341 = phi i32 [ 0, %335 ], [ %377, %339 ]
  %342 = phi i32 [ 0, %335 ], [ %374, %339 ]
  %343 = phi i32 [ 0, %335 ], [ %371, %339 ]
  %344 = phi i32 [ 0, %335 ], [ %368, %339 ]
  %345 = phi i32 [ 0, %335 ], [ %365, %339 ]
  %346 = phi i32 [ 0, %335 ], [ %362, %339 ]
  %347 = phi i32 [ 0, %335 ], [ %359, %339 ]
  %348 = phi i32 [ 0, %335 ], [ %356, %339 ]
  %349 = phi i32 [ %333, %335 ], [ %381, %339 ]
  %350 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %349
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, %338
  %353 = inttoptr i32 %352 to ptr
  %354 = getelementptr i32, ptr %353, i32 1
  %355 = load i32, ptr %354, align 4
  %356 = add i32 %355, %348
  %357 = getelementptr i32, ptr %353, i32 2
  %358 = load i32, ptr %357, align 4
  %359 = add i32 %358, %347
  %360 = getelementptr i32, ptr %353, i32 3
  %361 = load i32, ptr %360, align 4
  %362 = add i32 %361, %346
  %363 = getelementptr i32, ptr %353, i32 4
  %364 = load i32, ptr %363, align 4
  %365 = add i32 %364, %345
  %366 = getelementptr i32, ptr %353, i32 5
  %367 = load i32, ptr %366, align 4
  %368 = add i32 %367, %344
  %369 = getelementptr i32, ptr %353, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = add i32 %370, %343
  %372 = getelementptr i32, ptr %353, i32 7
  %373 = load i32, ptr %372, align 4
  %374 = add i32 %373, %342
  %375 = getelementptr i32, ptr %353, i32 8
  %376 = load i32, ptr %375, align 4
  %377 = add i32 %376, %341
  %378 = getelementptr i32, ptr %353, i32 9
  %379 = load i32, ptr %378, align 4
  %380 = add i32 %379, %340
  %381 = tail call i32 @cpumask_next(i32 noundef %349, ptr noundef nonnull @__cpu_possible_mask) #11
  %382 = icmp ult i32 %381, %332
  br i1 %382, label %339, label %383

383:                                              ; preds = %339, %316
  %384 = phi i32 [ 0, %316 ], [ %380, %339 ]
  %385 = phi i32 [ 0, %316 ], [ %377, %339 ]
  %386 = phi i32 [ 0, %316 ], [ %374, %339 ]
  %387 = phi i32 [ 0, %316 ], [ %371, %339 ]
  %388 = phi i32 [ 0, %316 ], [ %368, %339 ]
  %389 = phi i32 [ 0, %316 ], [ %365, %339 ]
  %390 = phi i32 [ 0, %316 ], [ %362, %339 ]
  %391 = phi i32 [ 0, %316 ], [ %359, %339 ]
  %392 = phi i32 [ 0, %316 ], [ %356, %339 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.199) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.215) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.216) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.217) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.218) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.219) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.220) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.221) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.222) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.199) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %392) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %391) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %390) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %389) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %388) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %387) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %386) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %385) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %384) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.200) #9
  %393 = load i32, ptr @nr_cpu_ids, align 4
  %394 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %395 = icmp ult i32 %394, %393
  br i1 %395, label %396, label %444

396:                                              ; preds = %383
  %397 = getelementptr inbounds %struct.net, ptr %240, i32 0, i32 30, i32 6
  %398 = load ptr, ptr %397, align 8
  %399 = ptrtoint ptr %398 to i32
  br label %400

400:                                              ; preds = %400, %396
  %401 = phi i32 [ 0, %396 ], [ %441, %400 ]
  %402 = phi i32 [ 0, %396 ], [ %438, %400 ]
  %403 = phi i32 [ 0, %396 ], [ %435, %400 ]
  %404 = phi i32 [ 0, %396 ], [ %432, %400 ]
  %405 = phi i32 [ 0, %396 ], [ %429, %400 ]
  %406 = phi i32 [ 0, %396 ], [ %426, %400 ]
  %407 = phi i32 [ 0, %396 ], [ %423, %400 ]
  %408 = phi i32 [ 0, %396 ], [ %420, %400 ]
  %409 = phi i32 [ 0, %396 ], [ %417, %400 ]
  %410 = phi i32 [ %394, %396 ], [ %442, %400 ]
  %411 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %410
  %412 = load i32, ptr %411, align 4
  %413 = add i32 %412, %399
  %414 = inttoptr i32 %413 to ptr
  %415 = getelementptr i32, ptr %414, i32 1
  %416 = load i32, ptr %415, align 4
  %417 = add i32 %416, %409
  %418 = getelementptr i32, ptr %414, i32 2
  %419 = load i32, ptr %418, align 4
  %420 = add i32 %419, %408
  %421 = getelementptr i32, ptr %414, i32 3
  %422 = load i32, ptr %421, align 4
  %423 = add i32 %422, %407
  %424 = getelementptr i32, ptr %414, i32 4
  %425 = load i32, ptr %424, align 4
  %426 = add i32 %425, %406
  %427 = getelementptr i32, ptr %414, i32 5
  %428 = load i32, ptr %427, align 4
  %429 = add i32 %428, %405
  %430 = getelementptr i32, ptr %414, i32 6
  %431 = load i32, ptr %430, align 4
  %432 = add i32 %431, %404
  %433 = getelementptr i32, ptr %414, i32 7
  %434 = load i32, ptr %433, align 4
  %435 = add i32 %434, %403
  %436 = getelementptr i32, ptr %414, i32 8
  %437 = load i32, ptr %436, align 4
  %438 = add i32 %437, %402
  %439 = getelementptr i32, ptr %414, i32 9
  %440 = load i32, ptr %439, align 4
  %441 = add i32 %440, %401
  %442 = tail call i32 @cpumask_next(i32 noundef %410, ptr noundef nonnull @__cpu_possible_mask) #11
  %443 = icmp ult i32 %442, %393
  br i1 %443, label %400, label %444

444:                                              ; preds = %400, %383
  %445 = phi i32 [ 0, %383 ], [ %441, %400 ]
  %446 = phi i32 [ 0, %383 ], [ %438, %400 ]
  %447 = phi i32 [ 0, %383 ], [ %435, %400 ]
  %448 = phi i32 [ 0, %383 ], [ %432, %400 ]
  %449 = phi i32 [ 0, %383 ], [ %429, %400 ]
  %450 = phi i32 [ 0, %383 ], [ %426, %400 ]
  %451 = phi i32 [ 0, %383 ], [ %423, %400 ]
  %452 = phi i32 [ 0, %383 ], [ %420, %400 ]
  %453 = phi i32 [ 0, %383 ], [ %417, %400 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.215) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.216) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.217) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.218) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.219) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.220) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.151) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.221) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.222) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.200) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %453) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %452) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %451) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %450) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %449) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %448) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %447) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %446) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %445) #9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_orphan_count_sum() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @socket_seq_show(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_prot_inuse_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snmp_fold_field(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snmp_get_cpu_field64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snmp_fold_field64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readonly willreturn }

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
