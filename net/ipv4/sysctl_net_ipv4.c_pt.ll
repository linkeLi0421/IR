; ModuleID = '/llk/IR/net/ipv4/sysctl_net_ipv4.c_pt.bc'
source_filename = "../net/ipv4/sysctl_net_ipv4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_sysctl_net_ipv4__538_1468_sysctl_ipv4_init6 = internal global ptr @sysctl_ipv4_init, section ".initcall6.init", align 4
@init_net = external dso_local global %struct.net, align 64
@.str = private unnamed_addr constant [9 x i8] c"net/ipv4\00", align 1
@ipv4_table = internal global [12 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @sysctl_tcp_max_orphans, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @inet_peer_threshold, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr @inet_peer_minttl, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @inet_peer_maxttl, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @sysctl_tcp_mem, i32 12, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr @sysctl_tcp_low_latency, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr null, i32 2048, i16 292, ptr null, ptr @proc_tcp_available_ulp, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr @sysctl_icmp_msgs_per_sec, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.9, ptr @sysctl_icmp_msgs_burst, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.10, ptr @sysctl_udp_mem, i32 12, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr @sysctl_fib_sync_mem, i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr @sysctl_fib_sync_mem_min, ptr @sysctl_fib_sync_mem_max }, %struct.ctl_table zeroinitializer], align 4
@ipv4_sysctl_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv4_sysctl_init_net, ptr null, ptr @ipv4_sysctl_exit_net, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tcp_max_orphans\00", align 1
@sysctl_tcp_max_orphans = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"inet_peer_threshold\00", align 1
@inet_peer_threshold = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"inet_peer_minttl\00", align 1
@inet_peer_minttl = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"inet_peer_maxttl\00", align 1
@inet_peer_maxttl = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"tcp_mem\00", align 1
@sysctl_tcp_mem = external dso_local global [3 x i32], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"tcp_low_latency\00", align 1
@sysctl_tcp_low_latency = internal global i32 0, section ".data..read_mostly", align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"tcp_available_ulp\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"icmp_msgs_per_sec\00", align 1
@sysctl_icmp_msgs_per_sec = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"icmp_msgs_burst\00", align 1
@sysctl_icmp_msgs_burst = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"udp_mem\00", align 1
@sysctl_udp_mem = external dso_local global [3 x i32], align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"fib_sync_mem\00", align 1
@sysctl_fib_sync_mem = external dso_local global i32, align 4
@sysctl_fib_sync_mem_min = external dso_local global i32, align 4
@sysctl_fib_sync_mem_max = external dso_local global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ipv4_net_table = internal global [96 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @init_net, i64 540), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr getelementptr (i8, ptr @init_net, i64 541), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @init_net, i64 542), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr getelementptr (i8, ptr @init_net, i64 543), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.16, ptr getelementptr (i8, ptr @init_net, i64 544), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @init_net, i64 548), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @init_net, i64 552), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @init_net, i64 800), i32 8, i16 420, ptr null, ptr @ipv4_ping_group_range, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 584), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @init_net, i64 585), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @init_net, i64 592), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr getelementptr (i8, ptr @init_net, i64 593), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr getelementptr (i8, ptr @init_net, i64 595), i32 1, i16 420, ptr null, ptr @proc_udp_early_demux, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr getelementptr (i8, ptr @init_net, i64 594), i32 1, i16 420, ptr null, ptr @proc_tcp_early_demux, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr getelementptr (i8, ptr @init_net, i64 596), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.27, ptr getelementptr (i8, ptr @init_net, i64 586), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr @ip_ttl_min, ptr @ip_ttl_max }, %struct.ctl_table { ptr @.str.28, ptr getelementptr (i8, ptr @init_net, i64 572), i32 8, i16 420, ptr null, ptr @ipv4_local_port_range, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr getelementptr (i8, ptr @init_net, i64 812), i32 65536, i16 420, ptr null, ptr @proc_do_large_bitmap, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.30, ptr getelementptr (i8, ptr @init_net, i64 587), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.31, ptr getelementptr (i8, ptr @init_net, i64 588), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.32, ptr getelementptr (i8, ptr @init_net, i64 589), i32 1, i16 420, ptr null, ptr @ipv4_fwd_update_priority, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @init_net, i64 590), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @init_net, i64 591), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @init_net, i64 597), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr getelementptr (i8, ptr @init_net, i64 598), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr getelementptr (i8, ptr @init_net, i64 599), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.38, ptr getelementptr (i8, ptr @init_net, i64 604), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.39, ptr getelementptr (i8, ptr @init_net, i64 608), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @tcp_min_snd_mss_min, ptr @tcp_min_snd_mss_max }, %struct.ctl_table { ptr @.str.40, ptr getelementptr (i8, ptr @init_net, i64 600), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @tcp_min_snd_mss_min, ptr @tcp_min_snd_mss_max }, %struct.ctl_table { ptr @.str.41, ptr getelementptr (i8, ptr @init_net, i64 612), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr getelementptr (i8, ptr @init_net, i64 616), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr null, ptr @u32_max_div_HZ }, %struct.ctl_table { ptr @.str.43, ptr getelementptr (i8, ptr @init_net, i64 777), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.44, ptr getelementptr (i8, ptr @init_net, i64 780), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.45, ptr getelementptr (i8, ptr @init_net, i64 784), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.46, ptr getelementptr (i8, ptr @init_net, i64 748), i32 16, i16 420, ptr null, ptr @proc_tcp_congestion_control, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.47, ptr null, i32 2048, i16 292, ptr null, ptr @proc_tcp_available_congestion_control, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.48, ptr null, i32 2048, i16 420, ptr null, ptr @proc_allowed_congestion_control, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.49, ptr getelementptr (i8, ptr @init_net, i64 620), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.50, ptr getelementptr (i8, ptr @init_net, i64 628), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.51, ptr getelementptr (i8, ptr @init_net, i64 624), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.52, ptr getelementptr (i8, ptr @init_net, i64 629), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr @tcp_syn_retries_min, ptr @tcp_syn_retries_max }, %struct.ctl_table { ptr @.str.53, ptr getelementptr (i8, ptr @init_net, i64 630), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.54, ptr getelementptr (i8, ptr @init_net, i64 632), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.55, ptr getelementptr (i8, ptr @init_net, i64 636), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.56, ptr getelementptr (i8, ptr @init_net, i64 640), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr @tcp_retr1_max }, %struct.ctl_table { ptr @.str.57, ptr getelementptr (i8, ptr @init_net, i64 641), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.58, ptr getelementptr (i8, ptr @init_net, i64 642), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.59, ptr getelementptr (i8, ptr @init_net, i64 644), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.60, ptr getelementptr (i8, ptr @init_net, i64 648), i32 4, i16 420, ptr null, ptr @proc_douintvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.61, ptr getelementptr (i8, ptr @init_net, i64 643), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.62, ptr getelementptr (i8, ptr @init_net, i64 452), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.63, ptr getelementptr (i8, ptr @init_net, i64 740), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.64, ptr getelementptr (i8, ptr @init_net, i64 744), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.65, ptr getelementptr (i8, ptr @init_net, i64 744), i32 74, i16 384, ptr null, ptr @proc_tcp_fastopen_key, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.66, ptr getelementptr (i8, ptr @init_net, i64 756), i32 4, i16 420, ptr null, ptr @proc_tfo_blackhole_detect_timeout, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.67, ptr getelementptr (i8, ptr @init_net, i64 816), i32 4, i16 420, ptr null, ptr @ipv4_privileged_ports, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.68, ptr getelementptr (i8, ptr @init_net, i64 652), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.69, ptr getelementptr (i8, ptr @init_net, i64 653), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.70, ptr getelementptr (i8, ptr @init_net, i64 654), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.71, ptr getelementptr (i8, ptr @init_net, i64 655), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @four }, %struct.ctl_table { ptr @.str.72, ptr getelementptr (i8, ptr @init_net, i64 656), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.73, ptr getelementptr (i8, ptr @init_net, i64 657), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.74, ptr getelementptr (i8, ptr @init_net, i64 658), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.75, ptr getelementptr (i8, ptr @init_net, i64 659), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.76, ptr getelementptr (i8, ptr @init_net, i64 660), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.77, ptr getelementptr (i8, ptr @init_net, i64 661), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.78, ptr getelementptr (i8, ptr @init_net, i64 662), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.79, ptr getelementptr (i8, ptr @init_net, i64 663), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.80, ptr getelementptr (i8, ptr @init_net, i64 664), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.81, ptr getelementptr (i8, ptr @init_net, i64 672), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.82, ptr getelementptr (i8, ptr @init_net, i64 673), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.83, ptr getelementptr (i8, ptr @init_net, i64 668), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @tcp_adv_win_scale_min, ptr @tcp_adv_win_scale_max }, %struct.ctl_table { ptr @.str.84, ptr getelementptr (i8, ptr @init_net, i64 674), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.85, ptr getelementptr (i8, ptr @init_net, i64 675), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.86, ptr getelementptr (i8, ptr @init_net, i64 676), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.87, ptr getelementptr (i8, ptr @init_net, i64 677), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.88, ptr getelementptr (i8, ptr @init_net, i64 678), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.89, ptr getelementptr (i8, ptr @init_net, i64 679), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.90, ptr getelementptr (i8, ptr @init_net, i64 680), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.91, ptr getelementptr (i8, ptr @init_net, i64 684), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.92, ptr getelementptr (i8, ptr @init_net, i64 692), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.93, ptr getelementptr (i8, ptr @init_net, i64 688), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @one_day_secs }, %struct.ctl_table { ptr @.str.94, ptr getelementptr (i8, ptr @init_net, i64 693), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.95, ptr getelementptr (i8, ptr @init_net, i64 696), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.96, ptr getelementptr (i8, ptr @init_net, i64 700), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @thousand }, %struct.ctl_table { ptr @.str.97, ptr getelementptr (i8, ptr @init_net, i64 704), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @thousand }, %struct.ctl_table { ptr @.str.98, ptr getelementptr (i8, ptr @init_net, i64 708), i32 12, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.99, ptr getelementptr (i8, ptr @init_net, i64 720), i32 12, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.100, ptr getelementptr (i8, ptr @init_net, i64 732), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.101, ptr getelementptr (i8, ptr @init_net, i64 736), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.102, ptr getelementptr (i8, ptr @init_net, i64 695), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.103, ptr getelementptr (i8, ptr @init_net, i64 694), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.104, ptr getelementptr (i8, ptr @init_net, i64 772), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.105, ptr getelementptr (i8, ptr @init_net, i64 768), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.106, ptr getelementptr (i8, ptr @init_net, i64 776), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"icmp_echo_ignore_all\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"icmp_echo_enable_probe\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"icmp_echo_ignore_broadcasts\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"icmp_ignore_bogus_error_responses\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"icmp_errors_use_inbound_ifaddr\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"icmp_ratelimit\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"icmp_ratemask\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"ping_group_range\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"tcp_ecn\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"tcp_ecn_fallback\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"ip_dynaddr\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"ip_early_demux\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"udp_early_demux\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"tcp_early_demux\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"nexthop_compat_mode\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"ip_default_ttl\00", align 1
@ip_ttl_min = internal global i32 1, align 4
@ip_ttl_max = internal global i32 255, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"ip_local_port_range\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"ip_local_reserved_ports\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"ip_no_pmtu_disc\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"ip_forward_use_pmtu\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"ip_forward_update_priority\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"ip_nonlocal_bind\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"ip_autobind_reuse\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"fwmark_reflect\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"tcp_fwmark_accept\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"tcp_mtu_probing\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"tcp_base_mss\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"tcp_min_snd_mss\00", align 1
@tcp_min_snd_mss_min = internal global i32 48, align 4
@tcp_min_snd_mss_max = internal global i32 65535, align 4
@.str.40 = private unnamed_addr constant [20 x i8] c"tcp_mtu_probe_floor\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"tcp_probe_threshold\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"tcp_probe_interval\00", align 1
@u32_max_div_HZ = internal global i32 42949672, align 4
@.str.43 = private unnamed_addr constant [30 x i8] c"igmp_link_local_mcast_reports\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"igmp_max_memberships\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"igmp_max_msf\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"tcp_congestion_control\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"tcp_available_congestion_control\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"tcp_allowed_congestion_control\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"tcp_keepalive_time\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"tcp_keepalive_probes\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"tcp_keepalive_intvl\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"tcp_syn_retries\00", align 1
@tcp_syn_retries_min = internal global i32 1, align 4
@tcp_syn_retries_max = internal global i32 127, align 4
@.str.53 = private unnamed_addr constant [19 x i8] c"tcp_synack_retries\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"tcp_migrate_req\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"tcp_reordering\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"tcp_retries1\00", align 1
@tcp_retr1_max = internal global i32 255, align 4
@.str.57 = private unnamed_addr constant [13 x i8] c"tcp_retries2\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"tcp_orphan_retries\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"tcp_fin_timeout\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"tcp_notsent_lowat\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"tcp_tw_reuse\00", align 1
@two = internal global i32 2, align 4
@.str.62 = private unnamed_addr constant [19 x i8] c"tcp_max_tw_buckets\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"tcp_max_syn_backlog\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"tcp_fastopen\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"tcp_fastopen_key\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"tcp_fastopen_blackhole_timeout_sec\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"ip_unprivileged_port_start\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"tcp_sack\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"tcp_window_scaling\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"tcp_timestamps\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"tcp_early_retrans\00", align 1
@four = internal global i32 4, align 4
@.str.72 = private unnamed_addr constant [13 x i8] c"tcp_recovery\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"tcp_thin_linear_timeouts\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"tcp_slow_start_after_idle\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"tcp_retrans_collapse\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"tcp_stdurg\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"tcp_rfc1337\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"tcp_abort_on_overflow\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"tcp_fack\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"tcp_max_reordering\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"tcp_dsack\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"tcp_app_win\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"tcp_adv_win_scale\00", align 1
@tcp_adv_win_scale_min = internal global i32 -31, align 4
@tcp_adv_win_scale_max = internal global i32 31, align 4
@.str.84 = private unnamed_addr constant [9 x i8] c"tcp_frto\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"tcp_no_metrics_save\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"tcp_no_ssthresh_metrics_save\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"tcp_moderate_rcvbuf\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"tcp_tso_win_divisor\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"tcp_workaround_signed_windows\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"tcp_limit_output_bytes\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"tcp_challenge_ack_limit\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"tcp_min_tso_segs\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"tcp_min_rtt_wlen\00", align 1
@one_day_secs = internal global i32 86400, align 4
@.str.94 = private unnamed_addr constant [16 x i8] c"tcp_autocorking\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"tcp_invalid_ratelimit\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"tcp_pacing_ss_ratio\00", align 1
@thousand = internal global i32 1000, align 4
@.str.97 = private unnamed_addr constant [20 x i8] c"tcp_pacing_ca_ratio\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"tcp_wmem\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"tcp_rmem\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"tcp_comp_sack_delay_ns\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"tcp_comp_sack_slack_ns\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"tcp_comp_sack_nr\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"tcp_reflect_tos\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"udp_rmem_min\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"udp_wmem_min\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"fib_notify_on_flag_change\00", align 1
@ip_ping_group_range_min = internal global [2 x i32] zeroinitializer, align 4
@ip_ping_group_range_max = internal global [2 x i32] [i32 2147483647, i32 2147483647], align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@inet_protos = external dso_local global [256 x ptr], align 4
@inet6_protos = external dso_local global [256 x ptr], align 4
@ip_local_port_range_min = internal global [2 x i32] [i32 1, i32 1], align 4
@ip_local_port_range_max = internal global [2 x i32] [i32 65535, i32 65535], align 4
@set_local_port_range._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.set_local_port_range = private unnamed_addr constant [21 x i8] c"set_local_port_range\00", align 1
@.str.107 = private unnamed_addr constant [70 x i8] c"\013ip_local_port_range: prefer different parity for start/end values.\0A\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"%08x-%08x-%08x-%08x\00", align 1
@proc_tcp_fastopen_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"net/ipv4/sysctl_net_ipv4.c\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"%x-%x-%x-%x\00", align 1
@ip_privileged_port_min = internal global i32 0, align 4
@ip_privileged_port_max = internal global i32 65535, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_sysctl_net_ipv4__538_1468_sysctl_ipv4_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysctl_ipv4_init() #0 section ".init.text" {
  %1 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @ipv4_table) #11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv4_sysctl_ops) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %1) #11
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ -12, %6 ], [ -12, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tcp_available_ulp(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false)
  %7 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %6, i32 0, i32 2
  store i32 2048, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 1051840, i32 noundef 2048) #12
  %10 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  tail call void @tcp_get_available_ulp(ptr noundef nonnull %9, i32 noundef 2048) #11
  %13 = call i32 @proc_dostring(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %14 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %13, %12 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_available_ulp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv4_sysctl_init_net(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @ipv4_net_table) #11
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 3
  store ptr %2, ptr %3, align 16
  %4 = icmp eq ptr %2, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8192) #12
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 116
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 16
  tail call void @unregister_net_sysctl_table(ptr noundef %11) #11
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = phi i32 [ 0, %5 ], [ -12, %1 ], [ -12, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_sysctl_exit_net(ptr nocapture noundef readonly %0) #6 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 116
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.ctl_table_header, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv4_ping_group_range(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca [2 x i32], align 8
  %7 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 2
  store i32 8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 3
  %11 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  store i16 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 4
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 5
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 6
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 7
  store ptr @ip_ping_group_range_min, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 8
  store ptr @ip_ping_group_range_max, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -8
  %21 = getelementptr %struct.kgid_t, ptr %19, i32 1
  br label %22

22:                                               ; preds = %30, %5
  %23 = load volatile i32, ptr %20, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !10
  %27 = load volatile i32, ptr %20, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %26 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %32 = load i32, ptr %19, align 4
  %33 = load i32, ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %34 = load volatile i32, ptr %20, align 4
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %36, label %22

36:                                               ; preds = %30
  %37 = icmp eq i32 %32, -1
  %38 = load i32, ptr @overflowgid, align 4
  %39 = select i1 %37, i32 %38, i32 %32
  store i32 %39, ptr %6, align 8
  %40 = icmp eq i32 %33, -1
  %41 = select i1 %40, i32 %38, i32 %33
  %42 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %44 = icmp ne i32 %1, 0
  %45 = icmp eq i32 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %67

47:                                               ; preds = %36
  %48 = load i32, ptr %6, align 8
  %49 = load i32, ptr %42, align 4
  %50 = icmp ne i32 %48, -1
  %51 = icmp ne i32 %49, -1
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = icmp ult i32 %49, %48
  %55 = select i1 %54, i32 1, i32 %48
  %56 = select i1 %54, i32 0, i32 %49
  %57 = load ptr, ptr %18, align 4
  %58 = getelementptr i8, ptr %57, i32 -8
  %59 = getelementptr i8, ptr %57, i32 -4
  call void @_raw_spin_lock(ptr noundef %59) #11
  %60 = load i32, ptr %58, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %58, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !13
  store i32 %55, ptr %57, align 4
  %62 = getelementptr %struct.kgid_t, ptr %57, i32 1
  store i32 %56, ptr %62, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !14
  %63 = load i32, ptr %58, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %58, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %65 = load i16, ptr %59, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %59, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  br label %67

67:                                               ; preds = %53, %47, %36
  %68 = phi i32 [ -22, %47 ], [ 0, %53 ], [ %43, %36 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_udp_early_demux(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = tail call i32 @proc_dou8vec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %7 = icmp eq i32 %1, 0
  %8 = icmp ne i32 %6, 0
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 40), align 1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %12 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet_protos, i32 0, i32 17), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = icmp eq i8 %11, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.net_protocol, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %18, %16 ], [ null, %14 ]
  store ptr %20, ptr %12, align 4
  br label %21

21:                                               ; preds = %19, %10
  %22 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet6_protos, i32 0, i32 17), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = icmp eq i8 %11, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.inet6_protocol, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ null, %24 ]
  store ptr %30, ptr %22, align 4
  br label %31

31:                                               ; preds = %29, %21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %32

32:                                               ; preds = %31, %5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tcp_early_demux(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = tail call i32 @proc_dou8vec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %7 = icmp eq i32 %1, 0
  %8 = icmp ne i32 %6, 0
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 39), align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %12 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet_protos, i32 0, i32 6), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = icmp eq i8 %11, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.net_protocol, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %18, %16 ], [ null, %14 ]
  store ptr %20, ptr %12, align 4
  br label %21

21:                                               ; preds = %19, %10
  %22 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet6_protos, i32 0, i32 6), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = icmp eq i8 %11, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.inet6_protocol, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ null, %24 ]
  store ptr %30, ptr %22, align 4
  br label %31

31:                                               ; preds = %29, %21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %32

32:                                               ; preds = %31, %5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv4_local_port_range(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca [2 x i32], align 8
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -572
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 2
  store i32 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 4
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 5
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 6
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 7
  store ptr @ip_local_port_range_min, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 8
  store ptr @ip_local_port_range_max, ptr %20, align 4
  %21 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  call void @inet_get_local_port_range(ptr noundef %10, ptr noundef nonnull %6, ptr noundef %21) #11
  %22 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %23 = icmp ne i32 %1, 0
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %57

26:                                               ; preds = %5
  %27 = load i32, ptr %21, align 4
  %28 = load i32, ptr %6, align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %9, i32 244
  %32 = load i32, ptr %31, align 16
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  %35 = xor i32 %27, %28
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr i8, ptr %9, i32 -8
  %39 = getelementptr i8, ptr %9, i32 -4
  call void @_raw_spin_lock_bh(ptr noundef %39) #11
  %40 = load i32, ptr %38, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %38, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !13
  br i1 %37, label %42, label %51

42:                                               ; preds = %34
  %43 = getelementptr i8, ptr %9, i32 8
  %44 = load i8, ptr %43, align 4, !range !21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  store i8 1, ptr %43, align 4
  %47 = call i32 @___ratelimit(ptr noundef nonnull @set_local_port_range._rs, ptr noundef nonnull @__func__.set_local_port_range) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #13
  br label %51

51:                                               ; preds = %49, %46, %42, %34
  %52 = load i32, ptr %6, align 8
  store i32 %52, ptr %9, align 4
  %53 = load i32, ptr %21, align 4
  %54 = getelementptr i8, ptr %9, i32 4
  store i32 %53, ptr %54, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !14
  %55 = load i32, ptr %38, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %38, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %39) #11
  br label %57

57:                                               ; preds = %51, %30, %26, %5
  %58 = phi i32 [ 0, %51 ], [ %22, %5 ], [ -22, %30 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_large_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv4_fwd_update_priority(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @proc_dou8vec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %9 = icmp ne i32 %1, 0
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 -589
  %14 = tail call i32 @call_netevent_notifiers(i32 noundef 6, ptr noundef %13) #11
  br label %15

15:                                               ; preds = %12, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tcp_congestion_control(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -748
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  store ptr %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 2
  store i32 16, ptr %12, align 4
  call void @tcp_get_default_congestion_control(ptr noundef %10, ptr noundef nonnull %6) #11
  %13 = call i32 @proc_dostring(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %14 = icmp ne i32 %1, 0
  %15 = icmp eq i32 %13, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 @tcp_set_default_congestion_control(ptr noundef %10, ptr noundef nonnull %6) #11
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %18, %17 ], [ %13, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tcp_available_congestion_control(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false)
  %7 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %6, i32 0, i32 2
  store i32 2048, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 1051840, i32 noundef 2048) #12
  %10 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  tail call void @tcp_get_available_congestion_control(ptr noundef nonnull %9, i32 noundef 2048) #11
  %13 = call i32 @proc_dostring(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %14 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %13, %12 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_allowed_congestion_control(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false)
  %7 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %6, i32 0, i32 2
  store i32 2048, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 1051840, i32 noundef 2048) #12
  %10 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  tail call void @tcp_get_allowed_congestion_control(ptr noundef nonnull %9, i32 noundef 2048) #11
  %13 = call i32 @proc_dostring(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %14 = icmp ne i32 %1, 0
  %15 = icmp eq i32 %13, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 4
  %19 = call i32 @tcp_set_allowed_congestion_control(ptr noundef %18) #11
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %19, %17 ], [ %13, %12 ]
  %22 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi i32 [ %21, %20 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tcp_fastopen_key(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca [4 x i32], align 4
  %7 = alloca [4 x i32], align 4
  %8 = alloca %struct.ctl_table, align 4
  %9 = alloca [8 x i32], align 4
  %10 = alloca [8 x i32], align 4
  %11 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -744
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %8, i8 0, i32 36, i1 false)
  %14 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %8, i32 0, i32 2
  store i32 74, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 32, i1 false), !annotation !8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 74) #12
  %17 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %114, label %19

19:                                               ; preds = %5
  %20 = call i32 @tcp_fastopen_get_cipher(ptr noundef %13, ptr noundef null, ptr noundef nonnull %10) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false)
  br label %26

23:                                               ; preds = %19
  %24 = shl i32 %20, 2
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 1, %22 ], [ %20, %23 ]
  %28 = shl i32 %27, 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %9, ptr nonnull align 4 %10, i32 %28, i1 false)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %27, %26 ], [ %20, %23 ]
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %73, %29
  %33 = phi i32 [ %74, %73 ], [ 74, %29 ]
  %34 = phi i32 [ %71, %73 ], [ 0, %29 ]
  %35 = phi i32 [ %62, %73 ], [ 0, %29 ]
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr i8, ptr %36, i32 %34
  %38 = sub i32 %33, %34
  %39 = shl i32 %35, 2
  %40 = getelementptr [8 x i32], ptr %9, i32 0, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %39, 1
  %43 = getelementptr [8 x i32], ptr %9, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %39, 2
  %46 = getelementptr [8 x i32], ptr %9, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %39, 3
  %49 = getelementptr [8 x i32], ptr %9, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %37, i32 noundef %38, ptr noundef nonnull @.str.108, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50)
  %52 = add i32 %51, %34
  %53 = load i32, ptr %14, align 4
  %54 = add i32 %53, -1
  %55 = icmp sge i32 %52, %54
  %56 = load i1, ptr @proc_tcp_fastopen_key.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !22

59:                                               ; preds = %32
  store i1 true, ptr @proc_tcp_fastopen_key.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 323, i32 noundef 9, ptr noundef null) #11
  br label %60

60:                                               ; preds = %59, %32
  br i1 %55, label %75, label %61

61:                                               ; preds = %60
  %62 = add nuw nsw i32 %35, 1
  %63 = icmp slt i32 %62, %30
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load ptr, ptr %17, align 4
  %66 = getelementptr i8, ptr %65, i32 %52
  %67 = sub i32 %53, %52
  %68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %66, i32 noundef %67, ptr noundef nonnull @.str.110)
  %69 = add i32 %68, %52
  br label %70

70:                                               ; preds = %64, %61
  %71 = phi i32 [ %69, %64 ], [ %52, %61 ]
  %72 = icmp eq i32 %62, %30
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %14, align 4
  br label %32

75:                                               ; preds = %70, %60, %29
  %76 = call i32 @proc_dostring(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %77 = icmp ne i32 %1, 0
  %78 = icmp eq i32 %76, 0
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load ptr, ptr %17, align 4
  %82 = call ptr @strchr(ptr noundef %81, i32 noundef 44)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  store i8 0, ptr %82, align 1
  %85 = getelementptr i8, ptr %82, i32 1
  %86 = load ptr, ptr %17, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi ptr [ %86, %84 ], [ %81, %80 ]
  %89 = phi ptr [ %85, %84 ], [ null, %80 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #11, !annotation !8
  %90 = getelementptr inbounds i32, ptr %7, i32 1
  %91 = getelementptr inbounds i32, ptr %7, i32 2
  %92 = getelementptr inbounds i32, ptr %7, i32 3
  %93 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %88, ptr noundef nonnull @.str.111, ptr noundef nonnull %7, ptr noundef %90, ptr noundef %91, ptr noundef %92) #11
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %111

96:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  %97 = icmp eq ptr %89, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #11, !annotation !8
  %99 = getelementptr inbounds i32, ptr %6, i32 1
  %100 = getelementptr inbounds i32, ptr %6, i32 2
  %101 = getelementptr inbounds i32, ptr %6, i32 3
  %102 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %89, ptr noundef nonnull @.str.111, ptr noundef nonnull %6, ptr noundef %99, ptr noundef %100, ptr noundef %101) #11
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds i32, ptr %10, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %105, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %107

106:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %111

107:                                              ; preds = %104, %96
  %108 = getelementptr inbounds i32, ptr %10, i32 4
  %109 = select i1 %97, ptr null, ptr %108
  %110 = call i32 @tcp_fastopen_reset_cipher(ptr noundef %13, ptr noundef null, ptr noundef nonnull %10, ptr noundef %109) #11
  br label %111

111:                                              ; preds = %107, %106, %95, %75
  %112 = phi i32 [ 0, %107 ], [ %76, %75 ], [ -22, %95 ], [ -22, %106 ]
  %113 = load ptr, ptr %17, align 4
  call void @kfree(ptr noundef %113) #11
  br label %114

114:                                              ; preds = %111, %5
  %115 = phi i32 [ %112, %111 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tfo_blackhole_detect_timeout(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %9 = icmp ne i32 %1, 0
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 4
  store volatile i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv4_privileged_ports(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 8
  %8 = alloca %struct.ctl_table, align 4
  %9 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store i64 0, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  %11 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 2
  store i32 4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 4
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 5
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 6
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 7
  store ptr @ip_privileged_port_min, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 8
  store ptr @ip_privileged_port_max, ptr %20, align 4
  %21 = load i32, ptr %10, align 16
  store i32 %21, ptr %6, align 4
  %22 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  %23 = icmp ne i32 %1, 0
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = getelementptr i8, ptr %10, i32 -816
  %28 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  call void @inet_get_local_port_range(ptr noundef %27, ptr noundef nonnull %7, ptr noundef %28) #11
  %29 = load i32, ptr %7, align 8
  %30 = load i32, ptr %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 %30, ptr %10, align 16
  br label %33

33:                                               ; preds = %32, %26, %5
  %34 = phi i32 [ 0, %32 ], [ %22, %5 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netevent_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_default_congestion_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_default_congestion_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_available_congestion_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_allowed_congestion_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_allowed_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_get_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_reset_cipher(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2149227906}
!10 = !{i64 2149227748}
!11 = !{i64 2149228050}
!12 = !{i64 2149214483}
!13 = !{i64 2149214782}
!14 = !{i64 2149215083}
!15 = !{i64 2148960700}
!16 = !{i64 2148956524}
!17 = !{i64 2148956599, i64 2148956626, i64 2148956673, i64 2148956695, i64 2148956723, i64 2148956743}
!18 = !{i64 2148983703}
!19 = !{i64 2148874660}
!20 = !{i64 2148874877}
!21 = !{i8 0, i8 2}
!22 = !{!"branch_weights", i32 1, i32 2000}
