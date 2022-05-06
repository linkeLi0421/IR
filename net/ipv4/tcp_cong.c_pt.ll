; ModuleID = '/llk/IR/net/ipv4/tcp_cong.c_pt.bc'
source_filename = "../net/ipv4/tcp_cong.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_register_congestion_control:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_register_congestion_control\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_register_congestion_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_unregister_congestion_control:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_unregister_congestion_control\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_unregister_congestion_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_ca_get_key_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_ca_get_key_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_ca_get_key_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_ca_get_name_by_key:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_ca_get_name_by_key\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_ca_get_name_by_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_slow_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_slow_start\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_slow_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_cong_avoid_ai:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_cong_avoid_ai\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_cong_avoid_ai:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_reno_cong_avoid:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_reno_cong_avoid\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_reno_cong_avoid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_reno_ssthresh:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_reno_ssthresh\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_reno_ssthresh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_reno_undo_cwnd:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_reno_undo_cwnd\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_reno_undo_cwnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
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
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.178, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
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

@tcp_cong_list = internal global %struct.list_head { ptr @tcp_cong_list, ptr @tcp_cong_list }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\013TCP: %s does not implement required ops\0A\00", align 1
@tcp_cong_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\015TCP: %s already registered or non-unique key\0A\00", align 1
@__kstrtab_tcp_register_congestion_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_register_congestion_control = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_register_congestion_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_register_congestion_control to i32), ptr @__kstrtab_tcp_register_congestion_control, ptr @__kstrtabns_tcp_register_congestion_control }, section "___ksymtab_gpl+tcp_register_congestion_control", align 4
@__kstrtab_tcp_unregister_congestion_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_unregister_congestion_control = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_unregister_congestion_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_unregister_congestion_control to i32), ptr @__kstrtab_tcp_unregister_congestion_control, ptr @__kstrtabns_tcp_unregister_congestion_control }, section "___ksymtab_gpl+tcp_unregister_congestion_control", align 4
@__kstrtab_tcp_ca_get_key_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_ca_get_key_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_ca_get_key_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_ca_get_key_by_name to i32), ptr @__kstrtab_tcp_ca_get_key_by_name, ptr @__kstrtabns_tcp_ca_get_key_by_name }, section "___ksymtab_gpl+tcp_ca_get_key_by_name", align 4
@__kstrtab_tcp_ca_get_name_by_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_ca_get_name_by_key = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_ca_get_name_by_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_ca_get_name_by_key to i32), ptr @__kstrtab_tcp_ca_get_name_by_key, ptr @__kstrtabns_tcp_ca_get_name_by_key }, section "___ksymtab_gpl+tcp_ca_get_name_by_key", align 4
@tcp_reno = dso_local global %struct.tcp_congestion_ops { ptr @tcp_reno_ssthresh, ptr @tcp_reno_cong_avoid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"reno\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 1, ptr null, ptr null, [40 x i8] undef }, align 64
@init_net = external dso_local global %struct.net, align 64
@__initcall__kmod_tcp_cong__539_256_tcp_congestion_default7 = internal global ptr @tcp_congestion_default, section ".initcall7.init", align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@tcp_get_available_congestion_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"net/ipv4/tcp_cong.c\00", align 1
@tcp_get_allowed_congestion_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_tcp_slow_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_slow_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_slow_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_slow_start to i32), ptr @__kstrtab_tcp_slow_start, ptr @__kstrtabns_tcp_slow_start }, section "___ksymtab_gpl+tcp_slow_start", align 4
@__kstrtab_tcp_cong_avoid_ai = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_cong_avoid_ai = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_cong_avoid_ai = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_cong_avoid_ai to i32), ptr @__kstrtab_tcp_cong_avoid_ai, ptr @__kstrtabns_tcp_cong_avoid_ai }, section "___ksymtab_gpl+tcp_cong_avoid_ai", align 4
@__kstrtab_tcp_reno_cong_avoid = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_reno_cong_avoid = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_reno_cong_avoid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_reno_cong_avoid to i32), ptr @__kstrtab_tcp_reno_cong_avoid, ptr @__kstrtabns_tcp_reno_cong_avoid }, section "___ksymtab_gpl+tcp_reno_cong_avoid", align 4
@__kstrtab_tcp_reno_ssthresh = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_reno_ssthresh = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_reno_ssthresh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_reno_ssthresh to i32), ptr @__kstrtab_tcp_reno_ssthresh, ptr @__kstrtabns_tcp_reno_ssthresh }, section "___ksymtab_gpl+tcp_reno_ssthresh", align 4
@__kstrtab_tcp_reno_undo_cwnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_reno_undo_cwnd = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_reno_undo_cwnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_reno_undo_cwnd to i32), ptr @__kstrtab_tcp_reno_undo_cwnd, ptr @__kstrtabns_tcp_reno_undo_cwnd }, section "___ksymtab_gpl+tcp_reno_undo_cwnd", align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"tcp_%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cubic\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_tcp_cong__539_256_tcp_congestion_default7, ptr @__ksymtab_tcp_ca_get_key_by_name, ptr @__ksymtab_tcp_ca_get_name_by_key, ptr @__ksymtab_tcp_cong_avoid_ai, ptr @__ksymtab_tcp_register_congestion_control, ptr @__ksymtab_tcp_reno_cong_avoid, ptr @__ksymtab_tcp_reno_ssthresh, ptr @__ksymtab_tcp_reno_undo_cwnd, ptr @__ksymtab_tcp_slow_start, ptr @__ksymtab_tcp_unregister_congestion_control], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_ca_find(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @tcp_cong_list, %1 ], [ %4, %6 ]
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @tcp_cong_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -20
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -64
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_ca_find_key(i32 noundef %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @tcp_cong_list, %1 ], [ %4, %6 ]
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @tcp_cong_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -64
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_register_congestion_control(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %4, %1
  %17 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17) #14
  br label %119

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11
  %21 = tail call i32 @strlen(ptr noundef %20)
  %22 = add i32 %21, -559038721
  %23 = load i32, ptr %20, align 1
  %24 = add i32 %23, %22
  %25 = getelementptr %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11, i32 4
  %26 = load i32, ptr %25, align 1
  %27 = add i32 %26, %22
  %28 = getelementptr %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11, i32 8
  %29 = load i32, ptr %28, align 1
  %30 = add i32 %29, %22
  %31 = sub i32 %24, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 4) #15
  %33 = xor i32 %31, %32
  %34 = add i32 %30, %27
  %35 = sub i32 %27, %33
  %36 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 6) #15
  %37 = xor i32 %35, %36
  %38 = add i32 %33, %34
  %39 = sub i32 %34, %37
  %40 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 8) #15
  %41 = xor i32 %39, %40
  %42 = add i32 %37, %38
  %43 = sub i32 %38, %41
  %44 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 16) #15
  %45 = xor i32 %43, %44
  %46 = add i32 %41, %42
  %47 = sub i32 %42, %45
  %48 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 19) #15
  %49 = xor i32 %47, %48
  %50 = add i32 %45, %46
  %51 = sub i32 %46, %49
  %52 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 4) #15
  %53 = xor i32 %51, %52
  %54 = add i32 %49, %50
  %55 = getelementptr %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11, i32 12
  %56 = getelementptr %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11, i32 15
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11, i32 14
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = getelementptr %struct.tcp_congestion_ops, ptr %0, i32 0, i32 11, i32 13
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = load i8, ptr %55, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %63, %59
  %71 = or i32 %70, %67
  %72 = or i32 %71, %69
  %73 = add i32 %72, %50
  %74 = xor i32 %53, %54
  %75 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 14) #15
  %76 = sub i32 %74, %75
  %77 = xor i32 %76, %73
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 11) #15
  %79 = sub i32 %77, %78
  %80 = xor i32 %79, %54
  %81 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 25) #15
  %82 = sub i32 %80, %81
  %83 = xor i32 %82, %76
  %84 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 16) #15
  %85 = sub i32 %83, %84
  %86 = xor i32 %85, %79
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 4) #15
  %88 = sub i32 %86, %87
  %89 = xor i32 %88, %82
  %90 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 14) #15
  %91 = sub i32 %89, %90
  %92 = xor i32 %91, %85
  %93 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 24) #15
  %94 = sub i32 %92, %93
  %95 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 14
  store i32 %94, ptr %95, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_cong_list_lock) #15
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %102, %19
  %99 = phi ptr [ %100, %102 ], [ @tcp_cong_list, %19 ]
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, @tcp_cong_list
  br i1 %101, label %111, label %102

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %100, i32 8
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, %96
  br i1 %105, label %106, label %98

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %100, i32 -64
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106, %19
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %20) #14
  br label %115

111:                                              ; preds = %106, %98
  %112 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 13
  %113 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tcp_cong_list, i32 0, i32 1), align 4
  store ptr @tcp_cong_list, ptr %112, align 4
  %114 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 13, i32 1
  store ptr %113, ptr %114, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  store volatile ptr %112, ptr %113, align 4
  store ptr %112, ptr getelementptr inbounds (%struct.list_head, ptr @tcp_cong_list, i32 0, i32 1), align 4
  br label %115

115:                                              ; preds = %111, %109
  %116 = phi i32 [ -17, %109 ], [ 0, %111 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %117 = load i16, ptr @tcp_cong_list_lock, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr @tcp_cong_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %119

119:                                              ; preds = %115, %16
  %120 = phi i32 [ %116, %115 ], [ -22, %16 ]
  ret i32 %120
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_unregister_congestion_control(ptr nocapture noundef %0) #4 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_cong_list_lock) #15
  %2 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 13
  %3 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %0, i32 0, i32 13, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %7 = load i16, ptr @tcp_cong_list_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @tcp_cong_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  tail call void @synchronize_rcu() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_ca_get_key_by_name(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #4 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @tcp_cong_list, %3 ], [ %6, %8 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @tcp_cong_list
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -20
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %1) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12, %4
  %16 = tail call zeroext i1 @capable(i32 noundef 12) #15
  br i1 %16, label %17, label %39

17:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %18 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ @tcp_cong_list, %17 ], [ %21, %23 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @tcp_cong_list
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -20
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef %1) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %21, i32 -64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %12
  %31 = phi ptr [ %28, %27 ], [ %13, %12 ]
  %32 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %31, i32 0, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %31, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = lshr i8 %36, 1
  %38 = and i8 %37, 1
  store i8 %38, ptr %2, align 1
  br label %39

39:                                               ; preds = %30, %27, %19, %15
  %40 = phi i32 [ %33, %30 ], [ 0, %27 ], [ 0, %15 ], [ 0, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_ca_get_name_by_key(i32 noundef %0, ptr noundef %1) #4 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @tcp_cong_list, %2 ], [ %5, %7 ]
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @tcp_cong_list
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %5, i32 -20
  %16 = tail call ptr @strncpy(ptr noundef %1, ptr noundef %15, i32 noundef 16)
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi ptr [ %1, %14 ], [ null, %11 ], [ null, %3 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret ptr %18
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_assign_congestion_control(ptr noundef %0) local_unnamed_addr #4 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 102), align 4
  %3 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %2, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @try_module_get(ptr noundef %4) #15
  br i1 %5, label %7, label %6, !prof !15

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi ptr [ @tcp_reno, %6 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  store ptr %8, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %10 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(104) %10, i8 0, i32 104, i1 false)
  %11 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %8, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %16 = load i8, ptr %15, align 4
  br i1 %14, label %39, label %17

17:                                               ; preds = %7
  %18 = or i8 %16, 2
  store i8 %18, ptr %15, align 4
  %19 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %20 = load volatile i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, -4161
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = load volatile i8, ptr %19, align 2
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, -4161
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr null, ptr %27
  %36 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 11
  %37 = load i8, ptr %36, align 1
  %38 = or i8 %37, 2
  store i8 %38, ptr %36, align 1
  br label %61

39:                                               ; preds = %7
  %40 = and i8 %16, -4
  store i8 %40, ptr %15, align 4
  %41 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %42 = load volatile i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, -4161
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load volatile i8, ptr %41, align 2
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, -4161
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr null, ptr %49
  %58 = getelementptr inbounds %struct.ipv6_pinfo, ptr %57, i32 0, i32 11
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, -4
  store i8 %60, ptr %58, align 1
  br label %61

61:                                               ; preds = %51, %47, %39, %29, %25, %17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_init_congestion_control(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %0) #15
  %9 = load ptr, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %4, %1 ]
  %12 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %11, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  br i1 %15, label %40, label %18

18:                                               ; preds = %10
  %19 = or i8 %17, 2
  store i8 %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %21 = load volatile i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, -4161
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = load volatile i8, ptr %20, align 2
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, -4161
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr null, ptr %28
  %37 = getelementptr inbounds %struct.ipv6_pinfo, ptr %36, i32 0, i32 11
  %38 = load i8, ptr %37, align 1
  %39 = or i8 %38, 2
  store i8 %39, ptr %37, align 1
  br label %62

40:                                               ; preds = %10
  %41 = and i8 %17, -4
  store i8 %41, ptr %16, align 4
  %42 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %43 = load volatile i8, ptr %42, align 2
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, -4161
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load volatile i8, ptr %42, align 2
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, -4161
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr null, ptr %50
  %59 = getelementptr inbounds %struct.ipv6_pinfo, ptr %58, i32 0, i32 11
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, -4
  store i8 %61, ptr %59, align 1
  br label %62

62:                                               ; preds = %52, %48, %40, %30, %26, %18
  %63 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %64 = load i8, ptr %63, align 4
  %65 = or i8 %64, 32
  store i8 %65, ptr %63, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_cleanup_congestion_control(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #15
  %8 = load ptr, ptr %2, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %10, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %12) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_set_default_congestion_control(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @tcp_cong_list, %2 ], [ %5, %7 ]
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @tcp_cong_list
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -20
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %1) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11, %3
  %15 = tail call zeroext i1 @capable(i32 noundef 12) #15
  br i1 %15, label %16, label %48

16:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %17 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ @tcp_cong_list, %16 ], [ %20, %22 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @tcp_cong_list
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 -20
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef %1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %18

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %20, i32 -64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26, %11
  %30 = phi ptr [ %27, %26 ], [ %12, %11 ]
  %31 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %30, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = tail call zeroext i1 @try_module_get(ptr noundef %32) #15
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 102
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %36 = ptrtoint ptr %30 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #15, !srcloc !17
  %37 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %36, ptr %35) #15, !srcloc !18
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = inttoptr i32 %38 to ptr
  %42 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  tail call void @module_put(ptr noundef %43) #15
  br label %44

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %30, i32 0, i32 15
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %29, %26, %18, %14
  %49 = phi i32 [ 0, %44 ], [ -2, %26 ], [ -16, %29 ], [ -2, %14 ], [ -2, %18 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret i32 %49
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcp_congestion_default() #9 section ".init.text" {
  %1 = tail call i32 @tcp_set_default_congestion_control(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.7)
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_get_available_congestion_control(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %21 ]
  %5 = phi ptr [ @tcp_cong_list, %2 ], [ %6, %21 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @tcp_cong_list
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 %4
  %10 = sub i32 %1, %4
  %11 = icmp eq i32 %4, 0
  %12 = select i1 %11, ptr @.str.3, ptr @.str.4
  %13 = getelementptr i8, ptr %6, i32 -20
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %12, ptr noundef %13)
  %15 = add i32 %14, %4
  %16 = icmp uge i32 %15, %1
  %17 = load i1, ptr @tcp_get_available_congestion_control.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !20

20:                                               ; preds = %8
  store i1 true, ptr @tcp_get_available_congestion_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 270, i32 noundef 9, ptr noundef null) #15
  br label %21

21:                                               ; preds = %20, %8
  br i1 %16, label %22, label %3

22:                                               ; preds = %21, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_get_default_congestion_control(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 102
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %4, i32 0, i32 11
  %6 = tail call ptr @strncpy(ptr noundef %1, ptr noundef %5, i32 noundef 16)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_get_allowed_congestion_control(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  store i8 0, ptr %0, align 1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %3 = load volatile ptr, ptr @tcp_cong_list, align 4
  %4 = icmp eq ptr %3, @tcp_cong_list
  br i1 %4, label %30, label %5

5:                                                ; preds = %26, %2
  %6 = phi ptr [ %28, %26 ], [ %3, %2 ]
  %7 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %8 = getelementptr i8, ptr %6, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 %7
  %14 = sub i32 %1, %7
  %15 = icmp eq i32 %7, 0
  %16 = select i1 %15, ptr @.str.3, ptr @.str.4
  %17 = getelementptr i8, ptr %6, i32 -20
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %16, ptr noundef %17)
  %19 = add i32 %18, %7
  %20 = icmp uge i32 %19, %1
  %21 = load i1, ptr @tcp_get_allowed_congestion_control.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !20

24:                                               ; preds = %12
  store i1 true, ptr @tcp_get_allowed_congestion_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 302, i32 noundef 9, ptr noundef null) #15
  br label %25

25:                                               ; preds = %24, %12
  br i1 %20, label %30, label %26

26:                                               ; preds = %25, %5
  %27 = phi i32 [ %19, %25 ], [ %7, %5 ]
  %28 = load volatile ptr, ptr %6, align 4
  %29 = icmp eq ptr %28, @tcp_cong_list
  br i1 %29, label %30, label %5

30:                                               ; preds = %26, %25, %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_set_allowed_congestion_control(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 1051840) #15
  store ptr %4, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_cong_list_lock) #15
  br label %7

7:                                                ; preds = %21, %6
  %8 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %8, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ %15, %17 ], [ @tcp_cong_list, %10 ]
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @tcp_cong_list
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 -20
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull %8) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %15, i32 -64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %7

24:                                               ; preds = %10, %7
  %25 = load volatile ptr, ptr @tcp_cong_list, align 4
  %26 = icmp eq ptr %25, @tcp_cong_list
  br i1 %26, label %27, label %30

27:                                               ; preds = %30, %24
  %28 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %37

30:                                               ; preds = %30, %24
  %31 = phi ptr [ %35, %30 ], [ %25, %24 ]
  %32 = getelementptr i8, ptr %31, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -2
  store i32 %34, ptr %32, align 4
  %35 = load volatile ptr, ptr %31, align 4
  %36 = icmp eq ptr %35, @tcp_cong_list
  br i1 %36, label %27, label %30

37:                                               ; preds = %57, %27
  %38 = phi ptr [ %58, %57 ], [ %28, %27 ]
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %45, %37
  %42 = phi ptr [ %43, %45 ], [ @tcp_cong_list, %37 ]
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, @tcp_cong_list
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %43, i32 -20
  %47 = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull %38) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %41

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %43, i32 -64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !20

52:                                               ; preds = %49, %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 336, i32 noundef 9, ptr noundef null) #15
  br label %57

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %43, i32 12
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %52
  %58 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %37

60:                                               ; preds = %57, %37, %27, %21, %13
  %61 = phi i32 [ 0, %27 ], [ 0, %37 ], [ 0, %57 ], [ -2, %13 ], [ -2, %21 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %62 = load i16, ptr @tcp_cong_list_lock, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr @tcp_cong_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  call void @kfree(ptr noundef nonnull %4) #15
  br label %64

64:                                               ; preds = %60, %1
  %65 = phi i32 [ %61, %60 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_set_congestion_control(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %6 = load i8, ptr %5, align 4
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %8, label %137

8:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br i1 %2, label %19, label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ %11, %13 ], [ @tcp_cong_list, %8 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @tcp_cong_list
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -20
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %1) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %11, i32 -64
  br label %44

19:                                               ; preds = %23, %8
  %20 = phi ptr [ %21, %23 ], [ @tcp_cong_list, %8 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @tcp_cong_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -20
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef %1) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %21, i32 -64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27, %19
  %31 = tail call zeroext i1 @capable(i32 noundef 12) #15
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  %33 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ @tcp_cong_list, %32 ], [ %36, %38 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @tcp_cong_list
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 -20
  %40 = tail call i32 @strcmp(ptr noundef %39, ptr noundef %1) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %36, i32 -64
  br label %44

44:                                               ; preds = %42, %34, %30, %27, %17, %9
  %45 = phi ptr [ %18, %17 ], [ %28, %27 ], [ null, %30 ], [ %43, %42 ], [ null, %34 ], [ null, %9 ]
  %46 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8, ptr %5, align 4
  %51 = or i8 %50, 64
  store i8 %51, ptr %5, align 4
  br label %135

52:                                               ; preds = %44
  %53 = icmp eq ptr %45, null
  br i1 %53, label %135, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %45, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  %59 = or i1 %58, %3
  br i1 %59, label %60, label %135

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %45, i32 0, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = tail call zeroext i1 @try_module_get(ptr noundef %62) #15
  br i1 %63, label %64, label %135

64:                                               ; preds = %60
  %65 = load ptr, ptr %46, align 4
  %66 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %65, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  tail call void %67(ptr noundef %0) #15
  %70 = load ptr, ptr %46, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ %65, %64 ]
  %73 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %72, i32 0, i32 12
  %74 = load ptr, ptr %73, align 4
  tail call void @module_put(ptr noundef %74) #15
  store ptr %45, ptr %46, align 4
  %75 = load i8, ptr %5, align 4
  %76 = or i8 %75, 64
  store i8 %76, ptr %5, align 4
  %77 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(104) %77, i8 0, i32 104, i1 false) #15
  %78 = load i32, ptr %55, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %82 = load i8, ptr %81, align 4
  br i1 %80, label %105, label %83

83:                                               ; preds = %71
  %84 = or i8 %82, 2
  store i8 %84, ptr %81, align 4
  %85 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %86 = load volatile i8, ptr %85, align 2
  %87 = zext i8 %86 to i32
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, -4161
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %127, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %127, label %95

95:                                               ; preds = %91
  %96 = load volatile i8, ptr %85, align 2
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, -4161
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr null, ptr %93
  %102 = getelementptr inbounds %struct.ipv6_pinfo, ptr %101, i32 0, i32 11
  %103 = load i8, ptr %102, align 1
  %104 = or i8 %103, 2
  store i8 %104, ptr %102, align 1
  br label %127

105:                                              ; preds = %71
  %106 = and i8 %82, -4
  store i8 %106, ptr %81, align 4
  %107 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %108 = load volatile i8, ptr %107, align 2
  %109 = zext i8 %108 to i32
  %110 = shl nuw i32 1, %109
  %111 = and i32 %110, -4161
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %113
  %118 = load volatile i8, ptr %107, align 2
  %119 = zext i8 %118 to i32
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, -4161
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, ptr null, ptr %115
  %124 = getelementptr inbounds %struct.ipv6_pinfo, ptr %123, i32 0, i32 11
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, -4
  store i8 %126, ptr %124, align 1
  br label %127

127:                                              ; preds = %117, %113, %105, %95, %91, %83
  %128 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %129 = load volatile i8, ptr %128, align 2
  %130 = zext i8 %129 to i32
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, 1152
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  tail call void @tcp_init_congestion_control(ptr noundef %0) #15
  br label %135

135:                                              ; preds = %134, %127, %60, %54, %52, %49
  %136 = phi i32 [ 0, %49 ], [ -2, %52 ], [ -1, %54 ], [ -16, %60 ], [ 0, %127 ], [ 0, %134 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %137

137:                                              ; preds = %135, %4
  %138 = phi i32 [ %136, %135 ], [ -1, %4 ]
  ret i32 %138
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_slow_start(ptr nocapture noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = sub i32 %5, %8
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11)
  store i32 %12, ptr %3, align 8
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_cong_avoid_ai(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ %5, %3 ]
  %13 = add i32 %12, %2
  store i32 %13, ptr %4, align 4
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %17 = load i32, ptr %16, align 8
  br label %25

18:                                               ; preds = %11
  %19 = udiv i32 %13, %1
  %20 = mul i32 %19, %1
  %21 = sub i32 %13, %20
  store i32 %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %19
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi i32 [ %17, %15 ], [ %24, %18 ]
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29)
  store i32 %30, ptr %27, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_reno_cong_avoid(ptr nocapture noundef %0, i32 %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 53
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 1
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %18, label %48

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %16 = load i8, ptr %15, align 1
  %17 = icmp slt i8 %16, 0
  br i1 %17, label %26, label %48

18:                                               ; preds = %9
  %19 = add i32 %5, %2
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %7) #15
  %21 = sub i32 %19, %20
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.umin.i32(i32 %20, i32 %23) #15
  store i32 %24, ptr %4, align 8
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %18, %14
  %27 = phi i32 [ %24, %18 ], [ %5, %14 ]
  %28 = phi i32 [ %21, %18 ], [ %2, %14 ]
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %27
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = add i32 %27, %33
  %35 = select i1 %31, i32 %30, i32 0
  %36 = add i32 %35, %28
  store i32 %36, ptr %29, align 4
  %37 = icmp ult i32 %36, %27
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = udiv i32 %36, %27
  %40 = mul i32 %39, %27
  %41 = sub i32 %36, %40
  store i32 %41, ptr %29, align 4
  %42 = add i32 %34, %39
  br label %43

43:                                               ; preds = %38, %26
  %44 = phi i32 [ %42, %38 ], [ %34, %26 ]
  %45 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46) #15
  store i32 %47, ptr %4, align 8
  br label %48

48:                                               ; preds = %43, %18, %14, %9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_reno_ssthresh(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 2)
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_reno_undo_cwnd(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }

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
!8 = !{i64 2150726782}
!9 = !{i64 2148936251}
!10 = !{i64 2148932075}
!11 = !{i64 2148932150, i64 2148932177, i64 2148932224, i64 2148932246, i64 2148932274, i64 2148932294}
!12 = !{i64 2148959254}
!13 = !{i64 2149054606}
!14 = !{i64 2149054823}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2157010554}
!17 = !{i64 551726, i64 2148041697, i64 2148041723, i64 2148041770, i64 2148041792, i64 2148041820, i64 2148041840}
!18 = !{i64 560376, i64 560393, i64 560417, i64 560443, i64 560461}
!19 = !{i64 2157010872}
!20 = !{!"branch_weights", i32 1, i32 2000}
