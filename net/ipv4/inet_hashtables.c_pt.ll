; ModuleID = '/llk/IR/net/ipv4/inet_hashtables.c_pt.bc'
source_filename = "../net/ipv4/inet_hashtables.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_put_port:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_put_port\22\09\09\09\09\09"
module asm "__kstrtabns_inet_put_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_inherit_port:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_inherit_port\22\09\09\09\09\09"
module asm "__kstrtabns___inet_inherit_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_lookup_listener:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_lookup_listener\22\09\09\09\09\09"
module asm "__kstrtabns___inet_lookup_listener:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_gen_put:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_gen_put\22\09\09\09\09\09"
module asm "__kstrtabns_sock_gen_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_edemux:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_edemux\22\09\09\09\09\09"
module asm "__kstrtabns_sock_edemux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_lookup_established:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_lookup_established\22\09\09\09\09\09"
module asm "__kstrtabns___inet_lookup_established:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_ehash_nolisten:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_ehash_nolisten\22\09\09\09\09\09"
module asm "__kstrtabns_inet_ehash_nolisten:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_hash\22\09\09\09\09\09"
module asm "__kstrtabns___inet_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_hash\22\09\09\09\09\09"
module asm "__kstrtabns_inet_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_inet_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_hash_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_hash_connect\22\09\09\09\09\09"
module asm "__kstrtabns_inet_hash_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_hashinfo_init:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_hashinfo_init\22\09\09\09\09\09"
module asm "__kstrtabns_inet_hashinfo_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_hashinfo2_init_mod:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_hashinfo2_init_mod\22\09\09\09\09\09"
module asm "__kstrtabns_inet_hashinfo2_init_mod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_ehash_locks_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_ehash_locks_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_inet_ehash_locks_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.11, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32 }
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
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.156 }
%union.anon.156 = type { %struct.hlist_head }
%struct.inet_bind_bucket = type { %struct.possible_net_t, i32, i16, i8, i8, %struct.kuid_t, %struct.in6_addr, i32, i16, i8, %struct.hlist_node, %struct.hlist_head }
%struct.possible_net_t = type {}
%struct.kuid_t = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.inet_bind_hashbucket = type { %struct.spinlock, %struct.hlist_head }
%struct.sock_common = type { %union.anon.13, %union.anon.15, %union.anon.16, i16, i8, i8, i32, %union.anon.18, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.157, [0 x i32], %union.anon.158, i16, i16, %union.anon.159, %struct.refcount_struct, [0 x i32], %union.anon.160 }
%union.anon.13 = type { i64 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { %struct.hlist_node }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%struct.anon.17 = type { i16, i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.161, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.162, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.163, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.161 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { ptr }
%struct.sk_buff_head = type { %union.anon.83, i32, %struct.spinlock }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.167 }
%union.anon.167 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.155, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.155 = type { ptr }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.183, %struct.anon.184, ptr, i32, i8 }
%struct.anon.183 = type { i32, i32 }
%struct.anon.184 = type { ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.173 }
%union.anon.173 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.121 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { %struct.anon.123, [0 x %struct.sock_filter] }
%struct.anon.123 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon.14 = type { i32, i32 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.76, %union.anon.138, %union.anon.139, [48 x i8], %union.anon.140, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.142, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr, %union.anon.78 }
%union.anon.78 = type { ptr }
%union.anon.138 = type { ptr }
%union.anon.139 = type { i64 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i32, ptr }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.144, i32, i32, i32, i16, i16, %union.anon.146, %union.anon.147, %union.anon.148, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.144 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i16 }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }

@__kstrtab_inet_put_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_put_port = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_put_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_put_port to i32), ptr @__kstrtab_inet_put_port, ptr @__kstrtabns_inet_put_port }, section "___ksymtab+inet_put_port", align 4
@__kstrtab___inet_inherit_port = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_inherit_port = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_inherit_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_inherit_port to i32), ptr @__kstrtab___inet_inherit_port, ptr @__kstrtabns___inet_inherit_port }, section "___ksymtab_gpl+__inet_inherit_port", align 4
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@__kstrtab___inet_lookup_listener = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_lookup_listener = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_lookup_listener = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_lookup_listener to i32), ptr @__kstrtab___inet_lookup_listener, ptr @__kstrtabns___inet_lookup_listener }, section "___ksymtab_gpl+__inet_lookup_listener", align 4
@__kstrtab_sock_gen_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_gen_put = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_gen_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_gen_put to i32), ptr @__kstrtab_sock_gen_put, ptr @__kstrtabns_sock_gen_put }, section "___ksymtab_gpl+sock_gen_put", align 4
@__kstrtab_sock_edemux = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_edemux = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_edemux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_edemux to i32), ptr @__kstrtab_sock_edemux, ptr @__kstrtabns_sock_edemux }, section "___ksymtab+sock_edemux", align 4
@__kstrtab___inet_lookup_established = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_lookup_established = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_lookup_established = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_lookup_established to i32), ptr @__kstrtab___inet_lookup_established, ptr @__kstrtabns___inet_lookup_established }, section "___ksymtab_gpl+__inet_lookup_established", align 4
@inet_ehash_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [27 x i8] c"net/ipv4/inet_hashtables.c\00", align 1
@inet_ehash_insert.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_inet_ehash_nolisten = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_ehash_nolisten = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_ehash_nolisten = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_ehash_nolisten to i32), ptr @__kstrtab_inet_ehash_nolisten, ptr @__kstrtabns_inet_ehash_nolisten }, section "___ksymtab_gpl+inet_ehash_nolisten", align 4
@__kstrtab___inet_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_hash = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_hash to i32), ptr @__kstrtab___inet_hash, ptr @__kstrtabns___inet_hash }, section "___ksymtab+__inet_hash", align 4
@__kstrtab_inet_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_hash to i32), ptr @__kstrtab_inet_hash, ptr @__kstrtabns_inet_hash }, section "___ksymtab_gpl+inet_hash", align 4
@__kstrtab_inet_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_unhash to i32), ptr @__kstrtab_inet_unhash, ptr @__kstrtabns_inet_unhash }, section "___ksymtab_gpl+inet_unhash", align 4
@__inet_hash_connect.___done = internal global i8 0, section ".data.once", align 1
@__inet_hash_connect.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@table_perturb = internal global [256 x i32] zeroinitializer, align 4
@__kstrtab_inet_hash_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_hash_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_hash_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_hash_connect to i32), ptr @__kstrtab_inet_hash_connect, ptr @__kstrtabns_inet_hash_connect }, section "___ksymtab_gpl+inet_hash_connect", align 4
@__kstrtab_inet_hashinfo_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_hashinfo_init = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_hashinfo_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_hashinfo_init to i32), ptr @__kstrtab_inet_hashinfo_init, ptr @__kstrtabns_inet_hashinfo_init }, section "___ksymtab_gpl+inet_hashinfo_init", align 4
@__kstrtab_inet_hashinfo2_init_mod = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_hashinfo2_init_mod = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_hashinfo2_init_mod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_hashinfo2_init_mod to i32), ptr @__kstrtab_inet_hashinfo2_init_mod, ptr @__kstrtabns_inet_hashinfo2_init_mod }, section "___ksymtab_gpl+inet_hashinfo2_init_mod", align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__kstrtab_inet_ehash_locks_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_ehash_locks_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_ehash_locks_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_ehash_locks_alloc to i32), ptr @__kstrtab_inet_ehash_locks_alloc, ptr @__kstrtabns_inet_ehash_locks_alloc }, section "___ksymtab_gpl+inet_ehash_locks_alloc", align 4
@init_net = external dso_local global %struct.net, align 64
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 64
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"include/net/request_sock.h\00", align 1
@inet_ehashfn.inet_ehash_secret = internal global i32 0, section ".data..read_mostly", align 4
@inet_ehashfn.___done = internal global i8 0, section ".data.once", align 1
@inet_ehashfn.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@inet_unhash2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab___inet_hash, ptr @__ksymtab___inet_inherit_port, ptr @__ksymtab___inet_lookup_established, ptr @__ksymtab___inet_lookup_listener, ptr @__ksymtab_inet_ehash_locks_alloc, ptr @__ksymtab_inet_ehash_nolisten, ptr @__ksymtab_inet_hash, ptr @__ksymtab_inet_hash_connect, ptr @__ksymtab_inet_hashinfo2_init_mod, ptr @__ksymtab_inet_hashinfo_init, ptr @__ksymtab_inet_put_port, ptr @__ksymtab_inet_unhash, ptr @__ksymtab_sock_edemux, ptr @__ksymtab_sock_gen_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_bind_bucket_create(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 1
  store i32 %4, ptr %9, align 8
  %10 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 2
  store i16 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 3
  store i8 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 4
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 11
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 10
  %15 = getelementptr inbounds %struct.inet_bind_hashbucket, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %16, ptr %14, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  store volatile ptr %14, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %8
  store volatile ptr %14, ptr %15, align 4
  %21 = getelementptr inbounds %struct.inet_bind_bucket, ptr %6, i32 0, i32 10, i32 1
  store volatile ptr %15, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %5
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_bind_bucket_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet_bind_bucket, ptr %1, i32 0, i32 11
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet_bind_bucket, ptr %1, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inet_bind_bucket, ptr %1, i32 0, i32 10, i32 1
  %10 = load ptr, ptr %9, align 4
  store volatile ptr %8, ptr %10, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_bind_hash(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.anon.17, ptr %4, i32 0, i32 1
  store i16 %2, ptr %5, align 2
  %6 = getelementptr inbounds %struct.inet_bind_bucket, ptr %1, i32 0, i32 11
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %6, align 4
  store volatile ptr %8, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %7, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %3
  store volatile ptr %7, ptr %6, align 4
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  store ptr %1, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_put_port(ptr nocapture noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 48
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.anon.17, ptr %10, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.inet_hashinfo, ptr %9, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = zext i16 %12 to i32
  %16 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %17 = add i32 %16, %15
  %18 = add i32 %14, -1
  %19 = and i32 %17, %18
  %20 = getelementptr inbounds %struct.inet_hashinfo, ptr %9, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.inet_bind_hashbucket, ptr %21, i32 %19
  tail call void @_raw_spin_lock(ptr noundef %22) #14
  %23 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store volatile ptr %26, ptr %28, align 4
  %29 = icmp eq ptr %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %1
  store ptr null, ptr %23, align 4
  store i16 0, ptr %11, align 2
  %33 = getelementptr inbounds %struct.inet_hashinfo, ptr %9, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr inbounds %struct.inet_bind_bucket, ptr %24, i32 0, i32 11
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.inet_bind_bucket, ptr %24, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.inet_bind_bucket, ptr %24, i32 0, i32 10, i32 1
  %42 = load ptr, ptr %41, align 4
  store volatile ptr %40, ptr %42, align 4
  %43 = icmp eq ptr %40, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  store volatile ptr %42, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %38
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %24) #14
  br label %47

47:                                               ; preds = %46, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %48 = load i16, ptr %22, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__inet_inherit_port(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proto, ptr %4, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.anon.17, ptr %7, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = zext i16 %9 to i32
  %13 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %14 = add i32 %13, %12
  %15 = add i32 %11, -1
  %16 = and i32 %14, %15
  %17 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.inet_bind_hashbucket, ptr %18, i32 %16
  tail call void @_raw_spin_lock(ptr noundef %19) #14
  %20 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26, !prof !14

23:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %24 = load i16, ptr %19, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %88

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.inet_bind_bucket, ptr %21, i32 0, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, %9
  br i1 %29, label %75, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.inet_bind_hashbucket, ptr %18, i32 %16, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -36
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %45, %30
  %38 = phi ptr [ %49, %45 ], [ %34, %30 ]
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.inet_bind_bucket, ptr %38, i32 0, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, %9
  br i1 %44, label %73, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.inet_bind_bucket, ptr %38, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = getelementptr i8, ptr %47, i32 -36
  %50 = icmp eq ptr %49, null
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %37

52:                                               ; preds = %45, %30
  %53 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 4
  %54 = load ptr, ptr %53, align 16
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %54, i32 noundef 2592) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 1
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 2
  store i16 %9, ptr %59, align 4
  %60 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 3
  store i8 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 4
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 11
  store ptr null, ptr %62, align 4
  %63 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 10
  %64 = load ptr, ptr %31, align 4
  store volatile ptr %64, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  store volatile ptr %63, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %57
  store volatile ptr %63, ptr %31, align 4
  %69 = getelementptr inbounds %struct.inet_bind_bucket, ptr %55, i32 0, i32 10, i32 1
  store volatile ptr %31, ptr %69, align 8
  br label %73

70:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %71 = load i16, ptr %19, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %88

73:                                               ; preds = %68, %41
  %74 = phi ptr [ %55, %68 ], [ %38, %41 ]
  tail call void @inet_csk_update_fastreuse(ptr noundef nonnull %74, ptr noundef %1) #14
  br label %75

75:                                               ; preds = %73, %26
  %76 = phi ptr [ %74, %73 ], [ %21, %26 ]
  store i16 %9, ptr %8, align 2
  %77 = getelementptr inbounds %struct.inet_bind_bucket, ptr %76, i32 0, i32 11
  %78 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7
  %79 = load ptr, ptr %77, align 4
  store volatile ptr %79, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.hlist_node, ptr %79, i32 0, i32 1
  store volatile ptr %78, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %75
  store volatile ptr %78, ptr %77, align 4
  %84 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %77, ptr %84, align 4
  %85 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 2
  store ptr %76, ptr %85, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %86 = load i16, ptr %19, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %88

88:                                               ; preds = %83, %70, %23
  %89 = phi i32 [ -2, %23 ], [ 0, %83 ], [ -12, %70 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_update_fastreuse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__inet_lookup_listener(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = load volatile i32, ptr @bpf_sk_lookup_enabled, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16, !prof !14

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @inet_lookup_run_bpf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %8)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %80

16:                                               ; preds = %13, %10
  %17 = zext i16 %7 to i32
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -559038733
  %21 = add i32 %20, %6
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 14) #14
  %23 = sub i32 0, %22
  %24 = xor i32 %21, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11) #14
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %20
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 25) #14
  %29 = sub i32 %27, %28
  %30 = xor i32 %29, %23
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 16) #14
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 4) #14
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 14) #14
  %38 = sub i32 %36, %37
  %39 = xor i32 %38, %32
  %40 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 24) #14
  %41 = sub i32 %39, %40
  %42 = xor i32 %41, %17
  %43 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 8
  %44 = load ptr, ptr %43, align 32
  %45 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %42, %46
  %48 = getelementptr %struct.inet_listen_hashbucket, ptr %44, i32 %47
  %49 = tail call fastcc ptr @inet_lhash2_lookup(ptr noundef %0, ptr noundef %48, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %16
  %52 = load i32, ptr %18, align 4
  %53 = add i32 %52, -559038733
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 14) #14
  %55 = sub i32 0, %54
  %56 = xor i32 %53, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 11) #14
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %53
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 25) #14
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 16) #14
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %58
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 4) #14
  %67 = sub i32 %65, %66
  %68 = xor i32 %67, %61
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 14) #14
  %70 = sub i32 %68, %69
  %71 = xor i32 %70, %64
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 24) #14
  %73 = sub i32 %71, %72
  %74 = xor i32 %73, %17
  %75 = load ptr, ptr %43, align 32
  %76 = load i32, ptr %45, align 4
  %77 = and i32 %74, %76
  %78 = getelementptr %struct.inet_listen_hashbucket, ptr %75, i32 %77
  %79 = tail call fastcc ptr @inet_lhash2_lookup(ptr noundef %0, ptr noundef %78, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef 0, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9)
  br label %80

80:                                               ; preds = %51, %16, %13
  %81 = phi ptr [ %14, %13 ], [ %49, %16 ], [ %79, %51 ]
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %83 = select i1 %82, ptr null, ptr %81
  ret ptr %83
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet_lookup_run_bpf(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %8) unnamed_addr #4 {
  %10 = alloca %struct.bpf_sk_lookup_kern, align 4
  %11 = icmp eq ptr %1, @tcp_hashinfo
  br i1 %11, label %12, label %119

12:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %13 = getelementptr %struct.net, ptr %0, i32 0, i32 38, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  br label %119

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #14
  %18 = getelementptr inbounds i8, ptr %10, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %18, i8 0, i32 12, i1 false) #14, !annotation !17
  store i16 2, ptr %10, align 4
  %19 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 1
  store i16 6, ptr %19, align 2
  %20 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 2
  store i16 %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 3
  store i16 %7, ptr %21, align 2
  %22 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 4
  store i32 %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 4, i32 1
  store i32 %6, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 5
  store i64 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 7
  store i32 %8, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %10, i32 0, i32 8
  tail call void @migrate_disable() #14
  %27 = getelementptr inbounds %struct.bpf_prog_array, ptr %14, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %91, label %30

30:                                               ; preds = %84, %17
  %31 = phi ptr [ %89, %84 ], [ %28, %17 ]
  %32 = phi i8 [ %87, %84 ], [ 1, %17 ]
  %33 = phi i1 [ %86, %84 ], [ false, %17 ]
  %34 = phi ptr [ %85, %84 ], [ null, %17 ]
  %35 = phi ptr [ %88, %84 ], [ %27, %17 ]
  store ptr %34, ptr %18, align 4
  %36 = zext i1 %33 to i8
  store i8 %36, ptr %26, align 4
  %37 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67, !prof !14

39:                                               ; preds = %30
  %40 = call i64 @sched_clock() #14
  %41 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 1
  %42 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef nonnull %10, ptr noundef %41) #14
  %45 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = call i32 @llvm.read_register.i32(metadata !0) #14
  %49 = inttoptr i32 %48 to ptr
  %50 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #10, !srcloc !18
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 3
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !19
  %55 = load i32, ptr %53, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %53, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !20
  %57 = load i64, ptr %52, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %52, align 8
  %59 = getelementptr inbounds %struct.bpf_prog_stats, ptr %52, i32 0, i32 1
  %60 = call i64 @sched_clock() #14
  %61 = sub i64 %60, %40
  %62 = and i64 %61, 4294967295
  %63 = load i64, ptr %59, align 8
  %64 = add i64 %62, %63
  store i64 %64, ptr %59, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !21
  %65 = load i32, ptr %53, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %53, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #14, !srcloc !22
  br label %72

67:                                               ; preds = %30
  %68 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 1
  %69 = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef nonnull %10, ptr noundef %68) #14
  br label %72

72:                                               ; preds = %67, %39
  %73 = phi i32 [ %44, %39 ], [ %71, %67 ]
  switch i32 %73, label %84 [
    i32 1, label %74
    i32 0, label %80
  ]

74:                                               ; preds = %72
  %75 = load ptr, ptr %18, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i8, ptr %26, align 4, !range !23
  %79 = icmp ne i8 %78, 0
  br label %84

80:                                               ; preds = %72
  %81 = and i8 %32, 1
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i8 %32, i8 0
  br label %84

84:                                               ; preds = %80, %77, %74, %72
  %85 = phi ptr [ %75, %77 ], [ %34, %80 ], [ %34, %72 ], [ %34, %74 ]
  %86 = phi i1 [ %79, %77 ], [ %33, %80 ], [ %33, %72 ], [ %33, %74 ]
  %87 = phi i8 [ %32, %77 ], [ %83, %80 ], [ %32, %72 ], [ %32, %74 ]
  %88 = getelementptr %struct.bpf_prog_array_item, ptr %35, i32 1
  %89 = load volatile ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %30

91:                                               ; preds = %84, %17
  %92 = phi ptr [ null, %17 ], [ %85, %84 ]
  %93 = phi i1 [ false, %17 ], [ %86, %84 ]
  %94 = phi i8 [ 1, %17 ], [ %87, %84 ]
  store ptr %92, ptr %18, align 4
  %95 = zext i1 %93 to i8
  store i8 %95, ptr %26, align 4
  call void @migrate_enable() #14
  %96 = and i8 %94, 1
  %97 = icmp ne i8 %96, 0
  %98 = icmp ne ptr %92, null
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  br label %119

101:                                              ; preds = %91
  %102 = load ptr, ptr %18, align 4
  %103 = load i8, ptr %26, align 4, !range !23
  %104 = icmp eq i8 %103, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = icmp eq ptr %102, null
  %107 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  %108 = or i1 %106, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 5
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 16
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = call fastcc i32 @inet_ehashfn(ptr noundef %0, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %4, i16 noundef zeroext %5) #14
  %116 = call ptr @reuseport_select_sock(ptr noundef nonnull %102, i32 noundef %115, ptr noundef %2, i32 noundef %3) #14
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, ptr %102, ptr %116
  br label %119

119:                                              ; preds = %114, %109, %105, %101, %100, %16, %9
  %120 = phi ptr [ null, %9 ], [ %102, %105 ], [ %102, %101 ], [ inttoptr (i32 -111 to ptr), %100 ], [ null, %16 ], [ %102, %109 ], [ %118, %114 ]
  ret ptr %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet_lhash2_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %1, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -840
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %78, label %17

17:                                               ; preds = %69, %10
  %18 = phi ptr [ %75, %69 ], [ %14, %10 ]
  %19 = phi ptr [ %71, %69 ], [ null, %10 ]
  %20 = phi i32 [ %70, %69 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 2
  %22 = getelementptr inbounds %struct.anon.17, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, %7
  br i1 %24, label %25, label %57

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.anon.14, ptr %18, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %6
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %36, %8
  %40 = icmp eq i32 %36, %9
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38, %34
  %43 = phi i32 [ 1, %34 ], [ 2, %38 ]
  %44 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 3
  %45 = load i16, ptr %44, align 8
  %46 = icmp eq i16 %45, 2
  %47 = zext i1 %46 to i32
  %48 = add nuw nsw i32 %43, %47
  %49 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 18
  %50 = load volatile i32, ptr %49, align 8
  %51 = tail call ptr @llvm.thread.pointer() #14
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = add nuw nsw i32 %48, %55
  br label %57

57:                                               ; preds = %42, %38, %30, %25, %17
  %58 = phi i32 [ -1, %30 ], [ -1, %38 ], [ -1, %25 ], [ -1, %17 ], [ %56, %42 ]
  %59 = icmp sgt i32 %58, %20
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 5
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 16
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = tail call fastcc i32 @inet_ehashfn(ptr noundef %0, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %4, i16 noundef zeroext %5) #14
  %67 = tail call ptr @reuseport_select_sock(ptr noundef nonnull %18, i32 noundef %66, ptr noundef %2, i32 noundef %3) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %60, %57
  %70 = phi i32 [ %20, %57 ], [ %58, %65 ], [ %58, %60 ]
  %71 = phi ptr [ %19, %57 ], [ %18, %65 ], [ %18, %60 ]
  %72 = getelementptr inbounds %struct.inet_connection_sock, ptr %18, i32 0, i32 15
  %73 = load volatile ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  %75 = getelementptr i8, ptr %73, i32 -840
  %76 = icmp eq ptr %75, null
  %77 = or i1 %74, %76
  br i1 %77, label %78, label %17

78:                                               ; preds = %69, %65, %10
  %79 = phi ptr [ null, %10 ], [ %71, %69 ], [ %67, %65 ]
  ret ptr %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_gen_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #14, !srcloc !25
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #14, !srcloc !26
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %48, label %8, !prof !27

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #14
  br label %48

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 6
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @inet_twsk_free(ptr noundef %0) #14
  br label %48

14:                                               ; preds = %9
  %15 = load volatile i8, ptr %10, align 2
  %16 = icmp eq i8 %15, 12
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load volatile i32, ptr %2, align 4
  %19 = icmp ne i32 %18, 0
  %20 = load i1, ptr @reqsk_free.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !14

23:                                               ; preds = %17
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 126, i32 noundef 9, ptr noundef null) #14
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.request_sock_ops, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %0) #14
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #14, !srcloc !25
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #14, !srcloc !26
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !27

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #14
  br label %41

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  tail call void @sk_free(ptr noundef nonnull %30) #14
  br label %41

41:                                               ; preds = %40, %39, %37, %24
  %42 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 9
  %43 = load ptr, ptr %42, align 8
  tail call void @kfree(ptr noundef %43) #14
  %44 = load ptr, ptr %25, align 8
  %45 = getelementptr inbounds %struct.request_sock_ops, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef %0) #14
  br label %48

47:                                               ; preds = %14
  tail call void @sk_free(ptr noundef %0) #14
  br label %48

48:                                               ; preds = %47, %41, %13, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_edemux(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @sock_gen_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__inet_lookup_established(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = zext i16 %5 to i32
  %10 = shl nuw i32 %9, 16
  %11 = zext i16 %3 to i32
  %12 = or i32 %10, %11
  %13 = tail call fastcc i32 @inet_ehashfn(ptr noundef %0, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %2, i16 noundef zeroext %3)
  %14 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, %13
  %17 = load ptr, ptr %1, align 64
  %18 = getelementptr %struct.inet_ehash_bucket, ptr %17, i32 %16
  br label %19

19:                                               ; preds = %89, %8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %20 = load volatile ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %97

24:                                               ; preds = %90, %19
  %25 = phi ptr [ %91, %90 ], [ %20, %19 ]
  %26 = getelementptr i8, ptr %25, i32 -84
  %27 = getelementptr i8, ptr %25, i32 -76
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, %13
  br i1 %29, label %30, label %90

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %25, i32 -72
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %12
  br i1 %33, label %34, label %90, !prof !27

34:                                               ; preds = %30
  %35 = load i32, ptr %26, align 8
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %90, !prof !27

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %25, i32 -80
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %4
  br i1 %40, label %41, label %90, !prof !27

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %25, i32 -64
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %6
  %45 = icmp eq i32 %43, %7
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %90, !prof !30

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %25, i32 -72
  %49 = getelementptr i8, ptr %25, i32 -80
  %50 = getelementptr i8, ptr %25, i32 -64
  %51 = getelementptr i8, ptr %25, i32 16
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %64, %47
  %55 = phi i32 [ %62, %64 ], [ %52, %47 ]
  %56 = add i32 %55, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #14, !srcloc !25
  br label %57

57:                                               ; preds = %57, %54
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 %55, i32 %56, ptr elementtype(i32) %51) #14, !srcloc !31
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  %63 = icmp eq i32 %62, %55
  br i1 %63, label %66, label %64, !prof !27

64:                                               ; preds = %61
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %66, label %54

66:                                               ; preds = %64, %61, %47
  %67 = phi i32 [ 0, %47 ], [ 0, %64 ], [ %55, %61 ]
  %68 = add i32 %67, 1
  %69 = or i32 %68, %67
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %72, label %71, !prof !27

71:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef 0) #14
  br label %72

72:                                               ; preds = %71, %66
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %101, label %74, !prof !14

74:                                               ; preds = %72
  %75 = load i32, ptr %48, align 4
  %76 = icmp eq i32 %75, %12
  br i1 %76, label %77, label %88, !prof !27

77:                                               ; preds = %74
  %78 = load i32, ptr %26, align 8
  %79 = icmp eq i32 %78, %2
  br i1 %79, label %80, label %88, !prof !27

80:                                               ; preds = %77
  %81 = load i32, ptr %49, align 4
  %82 = icmp eq i32 %81, %4
  br i1 %82, label %83, label %88, !prof !27

83:                                               ; preds = %80
  %84 = load i32, ptr %50, align 4
  %85 = icmp eq i32 %84, %6
  %86 = icmp eq i32 %84, %7
  %87 = or i1 %85, %86
  br i1 %87, label %101, label %88, !prof !30

88:                                               ; preds = %83, %80, %77, %74
  tail call void @sock_gen_put(ptr noundef %26)
  br label %89

89:                                               ; preds = %97, %88
  br label %19

90:                                               ; preds = %41, %37, %34, %30, %24
  %91 = load volatile ptr, ptr %25, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %24, label %95

95:                                               ; preds = %90
  %96 = ptrtoint ptr %91 to i32
  br label %97

97:                                               ; preds = %95, %19
  %98 = phi i32 [ %21, %19 ], [ %96, %95 ]
  %99 = lshr i32 %98, 1
  %100 = icmp eq i32 %99, %16
  br i1 %100, label %101, label %89

101:                                              ; preds = %97, %83, %72
  %102 = phi ptr [ null, %97 ], [ null, %72 ], [ %26, %83 ]
  ret ptr %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet_ehashfn(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = load volatile i32, ptr @inet_ehashfn.___once_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13, !prof !14

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !17
  %10 = call zeroext i1 @__do_once_start(ptr noundef nonnull @inet_ehashfn.___done, ptr noundef nonnull %6) #14
  br i1 %10, label %11, label %12, !prof !14

11:                                               ; preds = %9
  call void @get_random_bytes(ptr noundef nonnull @inet_ehashfn.inet_ehash_secret, i32 noundef 4) #14
  call void @__do_once_done(ptr noundef nonnull @inet_ehashfn.___done, ptr noundef nonnull @inet_ehashfn.___once_key, ptr noundef nonnull %6, ptr noundef null) #14
  br label %12

12:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %13

13:                                               ; preds = %12, %5
  %14 = load i32, ptr @inet_ehashfn.inet_ehash_secret, align 4
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = zext i16 %2 to i32
  %18 = shl nuw i32 %17, 16
  %19 = zext i16 %4 to i32
  %20 = or i32 %18, %19
  %21 = add i32 %14, -559038725
  %22 = add i32 %21, %16
  %23 = add i32 %22, %1
  %24 = add i32 %22, %3
  %25 = add i32 %20, %22
  %26 = xor i32 %25, %24
  %27 = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 14) #14
  %28 = sub i32 %26, %27
  %29 = xor i32 %28, %23
  %30 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11) #14
  %31 = sub i32 %29, %30
  %32 = xor i32 %31, %24
  %33 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 25) #14
  %34 = sub i32 %32, %33
  %35 = xor i32 %34, %28
  %36 = call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16) #14
  %37 = sub i32 %35, %36
  %38 = xor i32 %37, %31
  %39 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 4) #14
  %40 = sub i32 %38, %39
  %41 = xor i32 %40, %34
  %42 = call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 14) #14
  %43 = sub i32 %41, %42
  %44 = xor i32 %43, %37
  %45 = call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 24) #14
  %46 = sub i32 %44, %45
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inet_ehash_insert(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @inet_ehash_insert.__already_done, align 1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %14, label %13, !prof !27

13:                                               ; preds = %3
  store i1 true, ptr @inet_ehash_insert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 569, i32 noundef 9, ptr noundef null) #14
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %16 = load i16, ptr %15, align 8
  %17 = icmp eq i16 %16, 10
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %20
  %24 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, -65536
  %27 = or i32 %23, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %31 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %32 = getelementptr inbounds %struct.anon.17, ptr %31, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = load i16, ptr %31, align 4
  %35 = tail call i32 @inet6_ehashfn(ptr noundef nonnull @init_net, ptr noundef %30, i16 noundef zeroext %33, ptr noundef %19, i16 noundef zeroext %34) #14
  br label %45

36:                                               ; preds = %18, %14
  %37 = getelementptr inbounds %struct.anon.14, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %40 = getelementptr inbounds %struct.anon.17, ptr %39, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = load i32, ptr %0, align 8
  %43 = load i16, ptr %39, align 4
  %44 = tail call fastcc i32 @inet_ehashfn(ptr noundef nonnull @init_net, i32 noundef %38, i16 noundef zeroext %41, i32 noundef %42, i16 noundef zeroext %43) #14
  br label %45

45:                                               ; preds = %36, %29
  %46 = phi i32 [ %44, %36 ], [ %35, %29 ]
  %47 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  store i32 %46, ptr %47, align 8
  %48 = load ptr, ptr %7, align 64
  %49 = getelementptr inbounds %struct.inet_hashinfo, ptr %7, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, %46
  %52 = getelementptr %struct.inet_ehash_bucket, ptr %48, i32 %51
  %53 = getelementptr inbounds %struct.inet_hashinfo, ptr %7, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.inet_hashinfo, ptr %7, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, %46
  %58 = getelementptr %struct.spinlock, ptr %54, i32 %57
  tail call void @_raw_spin_lock(ptr noundef %58) #14
  %59 = icmp eq ptr %1, null
  br i1 %59, label %91, label %60

60:                                               ; preds = %45
  %61 = load i32, ptr %47, align 8
  %62 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = icmp ne i32 %61, %63
  %65 = load i1, ptr @inet_ehash_insert.__already_done.1, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !14

68:                                               ; preds = %60
  store i1 true, ptr @inet_ehash_insert.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #14
  br label %69

69:                                               ; preds = %68, %60
  %70 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %213, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  store volatile ptr %75, ptr %71, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.hlist_nulls_node, ptr %75, i32 0, i32 1
  store volatile ptr %71, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %73
  store volatile ptr null, ptr %70, align 4
  %82 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %83 = load volatile i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %86, !prof !14

85:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 751, i32 noundef 9, ptr noundef null) #14
  br label %86

86:                                               ; preds = %85, %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #14, !srcloc !25
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #14, !srcloc !26
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %205, !prof !14

90:                                               ; preds = %86
  tail call void @refcount_warn_saturate(ptr noundef %82, i32 noundef 4) #14
  br label %205

91:                                               ; preds = %45
  %92 = icmp eq ptr %2, null
  br i1 %92, label %205, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %95 = getelementptr inbounds %struct.anon.17, ptr %94, i32 0, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = zext i16 %96 to i32
  %98 = shl nuw i32 %97, 16
  %99 = load i16, ptr %94, align 4
  %100 = zext i16 %99 to i32
  %101 = or i32 %98, %100
  %102 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  %104 = load volatile ptr, ptr %52, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %203

108:                                              ; preds = %93
  %109 = load i32, ptr %47, align 8
  %110 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %111 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %112 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %113 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %114 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %115 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %116 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %117 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %118 = getelementptr inbounds %struct.anon.14, ptr %0, i32 0, i32 1
  br label %119

119:                                              ; preds = %198, %108
  %120 = phi ptr [ %104, %108 ], [ %199, %198 ]
  %121 = getelementptr i8, ptr %120, i32 -84
  %122 = getelementptr i8, ptr %120, i32 -76
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, %109
  br i1 %124, label %125, label %198

125:                                              ; preds = %119
  %126 = load i16, ptr %15, align 8
  switch i16 %126, label %198 [
    i16 2, label %127
    i16 10, label %144
  ]

127:                                              ; preds = %125
  %128 = getelementptr i8, ptr %120, i32 -72
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, %101
  br i1 %130, label %131, label %198

131:                                              ; preds = %127
  %132 = load i32, ptr %121, align 8
  %133 = load i32, ptr %0, align 8
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %198

135:                                              ; preds = %131
  %136 = getelementptr i8, ptr %120, i32 -80
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr %118, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %198

140:                                              ; preds = %135
  %141 = getelementptr i8, ptr %120, i32 -64
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, %103
  br i1 %143, label %204, label %198

144:                                              ; preds = %125
  %145 = getelementptr i8, ptr %120, i32 -72
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, %101
  br i1 %147, label %148, label %198

148:                                              ; preds = %144
  %149 = getelementptr i8, ptr %120, i32 -68
  %150 = load i16, ptr %149, align 8
  %151 = icmp eq i16 %150, 10
  br i1 %151, label %152, label %198

152:                                              ; preds = %148
  %153 = getelementptr i8, ptr %120, i32 -48
  %154 = load i32, ptr %153, align 4
  %155 = load i32, ptr %110, align 4
  %156 = xor i32 %155, %154
  %157 = getelementptr i8, ptr %120, i32 -44
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %111, align 4
  %160 = xor i32 %159, %158
  %161 = or i32 %160, %156
  %162 = getelementptr i8, ptr %120, i32 -40
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr %112, align 4
  %165 = xor i32 %164, %163
  %166 = or i32 %161, %165
  %167 = getelementptr i8, ptr %120, i32 -36
  %168 = load i32, ptr %167, align 4
  %169 = load i32, ptr %113, align 4
  %170 = xor i32 %169, %168
  %171 = or i32 %166, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %152
  %174 = getelementptr i8, ptr %120, i32 -32
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %114, align 4
  %177 = xor i32 %176, %175
  %178 = getelementptr i8, ptr %120, i32 -28
  %179 = load i32, ptr %178, align 4
  %180 = load i32, ptr %115, align 4
  %181 = xor i32 %180, %179
  %182 = or i32 %181, %177
  %183 = getelementptr i8, ptr %120, i32 -24
  %184 = load i32, ptr %183, align 4
  %185 = load i32, ptr %116, align 4
  %186 = xor i32 %185, %184
  %187 = or i32 %182, %186
  %188 = getelementptr i8, ptr %120, i32 -20
  %189 = load i32, ptr %188, align 4
  %190 = load i32, ptr %117, align 4
  %191 = xor i32 %190, %189
  %192 = or i32 %187, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %173
  %195 = getelementptr i8, ptr %120, i32 -64
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, %103
  br i1 %197, label %204, label %198

198:                                              ; preds = %194, %173, %152, %148, %144, %140, %135, %131, %127, %125, %119
  %199 = load volatile ptr, ptr %120, align 4
  %200 = ptrtoint ptr %199 to i32
  %201 = and i32 %200, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %119, label %203

203:                                              ; preds = %198, %93
  store i8 0, ptr %2, align 1
  br label %205

204:                                              ; preds = %194, %140
  store i8 1, ptr %2, align 1
  br label %213

205:                                              ; preds = %203, %91, %90, %86
  %206 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %207 = load ptr, ptr %52, align 4
  store ptr %207, ptr %206, align 4
  store volatile ptr %52, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  store volatile ptr %206, ptr %52, align 4
  %208 = ptrtoint ptr %207 to i32
  %209 = and i32 %208, 1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.hlist_nulls_node, ptr %207, i32 0, i32 1
  store volatile ptr %206, ptr %212, align 4
  br label %213

213:                                              ; preds = %211, %205, %204, %69
  %214 = phi i1 [ false, %204 ], [ false, %69 ], [ true, %205 ], [ true, %211 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %215 = load i16, ptr %58, align 4
  %216 = add i16 %215, 1
  store i16 %216, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  ret i1 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inet_ehash_nolisten(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call zeroext i1 @inet_ehash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !19
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %10 = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.prot_inuse, ptr %9, i32 0, i32 1, i32 %11
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #10, !srcloc !18
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #14, !srcloc !22
  br label %38

21:                                               ; preds = %3
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !19
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.proto, ptr %24, i32 0, i32 45
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #10, !srcloc !18
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #14, !srcloc !22
  tail call void @inet_sk_set_state(ptr noundef %0, i32 noundef 7) #14
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 4
  tail call void @inet_csk_destroy_sock(ptr noundef %0) #14
  br label %38

38:                                               ; preds = %21, %5
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_destroy_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__inet_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proto, ptr %4, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i1 @inet_ehash_nolisten(ptr noundef %0, ptr noundef %1, ptr noundef null)
  br label %202

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !27

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 643, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.anon.17, ptr %18, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %23 = add i32 %22, %21
  %24 = and i32 %23, 31
  %25 = getelementptr %struct.inet_hashinfo, ptr %6, i32 0, i32 10, i32 %24
  tail call void @_raw_spin_lock(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @sock_i_uid(ptr noundef %0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  %34 = getelementptr %struct.inet_hashinfo, ptr %6, i32 0, i32 10, i32 %24, i32 2
  %35 = load volatile ptr, ptr %34, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %41 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  br label %42

42:                                               ; preds = %78, %39
  %43 = phi ptr [ %35, %39 ], [ %79, %78 ]
  %44 = getelementptr i8, ptr %43, i32 -84
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %78, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %43, i32 -68
  %48 = load i16, ptr %47, align 8
  %49 = load i16, ptr %40, align 8
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %43, i32 -65
  %53 = load i8, ptr %52, align 1
  %54 = load i8, ptr %26, align 1
  %55 = xor i8 %54, %53
  %56 = and i8 %55, 32
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = getelementptr i8, ptr %43, i32 -64
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %41, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %43, i32 672
  %65 = load ptr, ptr %64, align 4
  %66 = icmp ne ptr %65, %32
  %67 = and i8 %53, 16
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = tail call i32 @sock_i_uid(ptr noundef %44) #14
  %72 = icmp eq i32 %33, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = tail call zeroext i1 @inet_rcv_saddr_equal(ptr noundef %0, ptr noundef %44, i1 noundef zeroext false) #14
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = tail call zeroext i1 @inet_rcv_saddr_any(ptr noundef %0) #14
  %77 = tail call i32 @reuseport_add_sock(ptr noundef %0, ptr noundef %44, i1 noundef zeroext %76) #14
  br label %86

78:                                               ; preds = %73, %70, %63, %58, %51, %46, %42
  %79 = load volatile ptr, ptr %43, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %42, label %83

83:                                               ; preds = %78, %30
  %84 = tail call zeroext i1 @inet_rcv_saddr_any(ptr noundef %0) #14
  %85 = tail call i32 @reuseport_alloc(ptr noundef %0, i1 noundef zeroext %84) #14
  br label %86

86:                                               ; preds = %83, %75
  %87 = phi i32 [ %85, %83 ], [ %77, %75 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %198

89:                                               ; preds = %86
  %90 = load i8, ptr %26, align 1
  %91 = and i8 %90, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %95 = load i16, ptr %94, align 8
  %96 = icmp eq i16 %95, 10
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = getelementptr %struct.inet_hashinfo, ptr %6, i32 0, i32 10, i32 %24, i32 2
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi ptr [ null, %97 ], [ %102, %99 ]
  %101 = phi ptr [ %98, %97 ], [ %102, %99 ]
  %102 = load ptr, ptr %101, align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %99, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %108 = icmp eq ptr %100, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %100, align 4
  store ptr %110, ptr %107, align 4
  store ptr %100, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  br label %118

111:                                              ; preds = %106
  %112 = load ptr, ptr %98, align 4
  store ptr %112, ptr %107, align 4
  store volatile ptr %98, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  store volatile ptr %107, ptr %98, align 4
  %113 = ptrtoint ptr %112 to i32
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.hlist_nulls_node, ptr %112, i32 0, i32 1
  br label %118

118:                                              ; preds = %116, %109
  %119 = phi ptr [ %117, %116 ], [ %100, %109 ]
  store volatile ptr %107, ptr %119, align 4
  br label %129

120:                                              ; preds = %93, %89, %17
  %121 = getelementptr %struct.inet_hashinfo, ptr %6, i32 0, i32 10, i32 %24, i32 2
  %122 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %123 = load ptr, ptr %121, align 4
  store ptr %123, ptr %122, align 4
  store volatile ptr %121, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  store volatile ptr %122, ptr %121, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.hlist_nulls_node, ptr %123, i32 0, i32 1
  store volatile ptr %122, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %120, %118, %111
  %130 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 8
  %131 = load ptr, ptr %130, align 32
  %132 = icmp eq ptr %131, null
  br i1 %132, label %177, label %133

133:                                              ; preds = %129
  %134 = tail call fastcc ptr @inet_lhash2_bucket_sk(ptr noundef %6, ptr noundef %0) #14
  tail call void @_raw_spin_lock(ptr noundef %134) #14
  %135 = load i8, ptr %26, align 1
  %136 = and i8 %135, 16
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %163, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %140 = load i16, ptr %139, align 8
  %141 = icmp eq i16 %140, 10
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %134, i32 0, i32 2
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi ptr [ null, %142 ], [ %147, %144 ]
  %146 = phi ptr [ %143, %142 ], [ %147, %144 ]
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %144

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15
  %151 = icmp eq ptr %145, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %145, align 4
  store ptr %153, ptr %150, align 4
  %154 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15, i32 1
  store volatile ptr %145, ptr %154, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !36
  br label %161

155:                                              ; preds = %149
  %156 = load ptr, ptr %143, align 4
  store ptr %156, ptr %150, align 4
  %157 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15, i32 1
  store volatile ptr %143, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  store volatile ptr %150, ptr %143, align 4
  %158 = icmp eq ptr %156, null
  br i1 %158, label %171, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  br label %161

161:                                              ; preds = %159, %152
  %162 = phi ptr [ %160, %159 ], [ %145, %152 ]
  store volatile ptr %150, ptr %162, align 4
  br label %171

163:                                              ; preds = %138, %133
  %164 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15
  %165 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %134, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  store ptr %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15, i32 1
  store volatile ptr %165, ptr %167, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  store volatile ptr %164, ptr %165, align 4
  %168 = icmp eq ptr %166, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.hlist_node, ptr %166, i32 0, i32 1
  store volatile ptr %164, ptr %170, align 4
  br label %171

171:                                              ; preds = %169, %163, %161, %155
  %172 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %134, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %175 = load i16, ptr %134, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %134, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %177

177:                                              ; preds = %171, %129
  %178 = getelementptr %struct.inet_hashinfo, ptr %6, i32 0, i32 10, i32 %24, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 4
  %181 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %182 = load i32, ptr %181, align 4
  %183 = or i32 %182, 8388608
  store i32 %183, ptr %181, align 4
  %184 = load ptr, ptr %3, align 8
  %185 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !19
  %186 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %187 = getelementptr inbounds %struct.proto, ptr %184, i32 0, i32 25
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr %struct.prot_inuse, ptr %186, i32 0, i32 1, i32 %188
  %190 = ptrtoint ptr %189 to i32
  %191 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %192 = inttoptr i32 %191 to ptr
  %193 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %192) #10, !srcloc !18
  %194 = add i32 %193, %190
  %195 = inttoptr i32 %194 to ptr
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %185) #14, !srcloc !22
  br label %198

198:                                              ; preds = %177, %86
  %199 = phi i32 [ %87, %86 ], [ 0, %177 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %200 = load i16, ptr %25, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %202

202:                                              ; preds = %198, %10
  %203 = phi i32 [ 0, %10 ], [ %199, %198 ]
  ret i32 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_hash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 7
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 512
  store volatile i32 %9, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %10 = tail call i32 @__inet_hash(ptr noundef %0, ptr noundef null)
  tail call fastcc void @local_bh_enable()
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_unhash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 48
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 10
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.anon.17, ptr %14, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %19 = add i32 %18, %17
  %20 = and i32 %19, 31
  %21 = getelementptr %struct.inet_hashinfo, ptr %5, i32 0, i32 10, i32 %20
  br label %31

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %24
  %30 = getelementptr %struct.spinlock, ptr %26, i32 %29
  br label %31

31:                                               ; preds = %22, %13
  %32 = phi ptr [ %21, %13 ], [ %30, %22 ]
  %33 = phi ptr [ %21, %13 ], [ null, %22 ]
  tail call void @_raw_spin_lock_bh(ptr noundef %32) #14
  %34 = load ptr, ptr %6, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %104, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @reuseport_stop_listen_sock(ptr noundef %0) #14
  br label %41

41:                                               ; preds = %40, %36
  %42 = icmp eq ptr %33, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 8
  %45 = load ptr, ptr %44, align 32
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15
  %49 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 15, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = load i1, ptr @inet_unhash2.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !14

55:                                               ; preds = %47
  store i1 true, ptr @inet_unhash2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #14
  br label %56

56:                                               ; preds = %55, %47
  br i1 %51, label %73, label %57

57:                                               ; preds = %56
  %58 = tail call fastcc ptr @inet_lhash2_bucket_sk(ptr noundef %5, ptr noundef %0) #14
  tail call void @_raw_spin_lock(ptr noundef %58) #14
  %59 = load ptr, ptr %49, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %48, align 4
  store volatile ptr %62, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  store volatile ptr %59, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %61
  store volatile ptr null, ptr %49, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %58, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %71 = load i16, ptr %58, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %73

73:                                               ; preds = %67, %56, %43
  %74 = getelementptr inbounds %struct.inet_listen_hashbucket, ptr %33, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  store i32 %76, ptr %74, align 4
  br label %77

77:                                               ; preds = %73, %41
  %78 = load ptr, ptr %6, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  store volatile ptr %82, ptr %78, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.hlist_nulls_node, ptr %82, i32 0, i32 1
  store volatile ptr %78, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %80
  store volatile ptr null, ptr %6, align 4
  br label %89

89:                                               ; preds = %88, %77
  %90 = load ptr, ptr %2, align 8
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !19
  %92 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %93 = getelementptr inbounds %struct.proto, ptr %90, i32 0, i32 25
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.prot_inuse, ptr %92, i32 0, i32 1, i32 %94
  %96 = ptrtoint ptr %95 to i32
  %97 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %98) #10, !srcloc !18
  %100 = add i32 %99, %96
  %101 = inttoptr i32 %100 to ptr
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, -1
  store i32 %103, ptr %101, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #14, !srcloc !22
  br label %104

104:                                              ; preds = %89, %31
  tail call void @_raw_spin_unlock_bh(ptr noundef %32) #14
  br label %105

105:                                              ; preds = %104, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reuseport_stop_listen_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__inet_hash_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.inet_timewait_death_row, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.anon.17, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !17
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = zext i16 %13 to i32
  %21 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %22 = add i32 %21, %20
  %23 = add i32 %19, -1
  %24 = and i32 %22, %23
  %25 = getelementptr %struct.inet_bind_hashbucket, ptr %17, i32 %24
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #14
  %28 = getelementptr inbounds %struct.inet_bind_bucket, ptr %27, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -84
  %32 = select i1 %30, ptr null, ptr %31
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %40

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call zeroext i1 @inet_ehash_nolisten(ptr noundef %1, ptr noundef null, ptr noundef null)
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #14
  br label %218

40:                                               ; preds = %34, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %41 = load i16, ptr %25, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %43 = tail call i32 %3(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %13, ptr noundef null) #14
  tail call fastcc void @local_bh_enable()
  br label %218

44:                                               ; preds = %4
  call void @inet_get_local_port_range(ptr noundef nonnull @init_net, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %7, align 4
  %47 = load i32, ptr %6, align 4
  %48 = sub i32 %46, %47
  %49 = icmp ugt i32 %48, 1
  %50 = and i32 %48, -2
  %51 = select i1 %49, i32 %50, i32 %48, !prof !27
  %52 = load volatile i32, ptr @__inet_hash_connect.___once_key, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58, !prof !14

54:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !17
  %55 = call zeroext i1 @__do_once_start(ptr noundef nonnull @__inet_hash_connect.___done, ptr noundef nonnull %8) #14
  br i1 %55, label %56, label %57, !prof !14

56:                                               ; preds = %54
  call void @get_random_bytes(ptr noundef nonnull @table_perturb, i32 noundef 1024) #14
  call void @__do_once_done(ptr noundef nonnull @__inet_hash_connect.___done, ptr noundef nonnull @__inet_hash_connect.___once_key, ptr noundef nonnull %8, ptr noundef null) #14
  br label %57

57:                                               ; preds = %56, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %58

58:                                               ; preds = %57, %44
  %59 = mul i32 %2, 1640531527
  %60 = lshr i32 %59, 24
  %61 = getelementptr [256 x i32], ptr @table_perturb, i32 0, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = add i32 %62, %2
  %64 = urem i32 %63, %51
  %65 = and i32 %64, -2
  %66 = icmp eq i32 %51, 0
  %67 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 5
  %68 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 6
  %69 = icmp ugt i32 %51, 1
  br label %70

70:                                               ; preds = %169, %58
  %71 = phi i32 [ %65, %58 ], [ %170, %169 ]
  br i1 %66, label %169, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %6, align 4
  %74 = add i32 %73, %71
  br label %75

75:                                               ; preds = %165, %72
  %76 = phi i32 [ %167, %165 ], [ %74, %72 ]
  %77 = phi i32 [ %166, %165 ], [ 0, %72 ]
  %78 = load i32, ptr %7, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %82, label %80, !prof !27

80:                                               ; preds = %75
  %81 = sub i32 %76, %51
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi i32 [ %81, %80 ], [ %76, %75 ]
  %84 = trunc i32 %83 to i16
  %85 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 116), align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = lshr i32 %83, 5
  %89 = and i32 %88, 2047
  %90 = getelementptr i32, ptr %85, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %83, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %165

96:                                               ; preds = %87, %82
  %97 = load ptr, ptr %67, align 4
  %98 = load i32, ptr %68, align 8
  %99 = and i32 %83, 65535
  %100 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %101 = add i32 %100, %99
  %102 = add i32 %98, -1
  %103 = and i32 %101, %102
  %104 = getelementptr %struct.inet_bind_hashbucket, ptr %97, i32 %103
  call void @_raw_spin_lock_bh(ptr noundef %104) #14
  %105 = getelementptr %struct.inet_bind_hashbucket, ptr %97, i32 %103, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  %108 = getelementptr i8, ptr %106, i32 -36
  %109 = icmp eq ptr %108, null
  %110 = or i1 %107, %109
  br i1 %110, label %143, label %111

111:                                              ; preds = %136, %96
  %112 = phi ptr [ %140, %136 ], [ %108, %96 ]
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.inet_bind_bucket, ptr %112, i32 0, i32 2
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  %119 = icmp eq i32 %83, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.inet_bind_bucket, ptr %112, i32 0, i32 3
  %122 = load i8, ptr %121, align 2
  %123 = icmp sgt i8 %122, -1
  br i1 %123, label %163, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.inet_bind_bucket, ptr %112, i32 0, i32 4
  %126 = load i8, ptr %125, align 1
  %127 = icmp sgt i8 %126, -1
  br i1 %127, label %163, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.inet_bind_bucket, ptr %112, i32 0, i32 11
  %130 = load volatile ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133, !prof !14

132:                                              ; preds = %128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 9, ptr noundef null) #14
  br label %133

133:                                              ; preds = %132, %128
  %134 = call i32 %3(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %84, ptr noundef nonnull %5) #14
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %174, label %163

136:                                              ; preds = %115, %111
  %137 = getelementptr inbounds %struct.inet_bind_bucket, ptr %112, i32 0, i32 10
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  %140 = getelementptr i8, ptr %138, i32 -36
  %141 = icmp eq ptr %140, null
  %142 = or i1 %139, %141
  br i1 %142, label %143, label %111

143:                                              ; preds = %136, %96
  %144 = trunc i32 %83 to i16
  %145 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 4
  %146 = load ptr, ptr %145, align 16
  %147 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %146, i32 noundef 2592) #14
  %148 = icmp eq ptr %147, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 1
  store i32 0, ptr %150, align 8
  %151 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 2
  store i16 %144, ptr %151, align 4
  %152 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 3
  store i8 0, ptr %152, align 2
  %153 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 4
  store i8 0, ptr %153, align 1
  %154 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 11
  store ptr null, ptr %154, align 4
  %155 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 10
  %156 = load ptr, ptr %105, align 4
  store volatile ptr %156, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  store volatile ptr %155, ptr %159, align 4
  br label %161

160:                                              ; preds = %143
  call void @_raw_spin_unlock_bh(ptr noundef %104) #14
  br label %218

161:                                              ; preds = %158, %149
  store volatile ptr %155, ptr %105, align 4
  %162 = getelementptr inbounds %struct.inet_bind_bucket, ptr %147, i32 0, i32 10, i32 1
  store volatile ptr %105, ptr %162, align 8
  store i8 -1, ptr %152, align 2
  store i8 -1, ptr %153, align 1
  br label %176

163:                                              ; preds = %133, %124, %120
  call void @_raw_spin_unlock_bh(ptr noundef %104) #14
  %164 = call i32 @__cond_resched() #14
  br label %165

165:                                              ; preds = %163, %87
  %166 = add i32 %77, 2
  %167 = add i32 %83, 2
  %168 = icmp ult i32 %166, %51
  br i1 %168, label %75, label %169

169:                                              ; preds = %165, %70
  %170 = add i32 %71, 1
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, i1 %69, i1 false
  br i1 %173, label %70, label %218

174:                                              ; preds = %133
  %175 = trunc i32 %83 to i16
  br label %176

176:                                              ; preds = %174, %161
  %177 = phi i16 [ %144, %161 ], [ %175, %174 ]
  %178 = phi ptr [ %147, %161 ], [ %112, %174 ]
  %179 = icmp eq i32 %77, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = call i32 @prandom_u32() #14
  %182 = and i32 %181, 15
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %183, i32 2, i32 0
  br label %185

185:                                              ; preds = %180, %176
  %186 = phi i32 [ %77, %176 ], [ %184, %180 ]
  %187 = load volatile i32, ptr %61, align 4
  %188 = add i32 %186, 2
  %189 = add i32 %188, %187
  store volatile i32 %189, ptr %61, align 4
  store i16 %177, ptr %12, align 2
  %190 = getelementptr inbounds %struct.inet_bind_bucket, ptr %178, i32 0, i32 11
  %191 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7
  %192 = load ptr, ptr %190, align 4
  store volatile ptr %192, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.hlist_node, ptr %192, i32 0, i32 1
  store volatile ptr %191, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %185
  store volatile ptr %191, ptr %190, align 4
  %197 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %190, ptr %197, align 4
  %198 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 2
  store ptr %178, ptr %198, align 4
  %199 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = call i16 @llvm.bswap.i16(i16 %177)
  %204 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  store i16 %203, ptr %204, align 8
  %205 = load ptr, ptr %5, align 4
  %206 = call zeroext i1 @inet_ehash_nolisten(ptr noundef %1, ptr noundef %205, ptr noundef null)
  br label %207

207:                                              ; preds = %202, %196
  %208 = load ptr, ptr %5, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  call void @inet_twsk_bind_unhash(ptr noundef nonnull %208, ptr noundef %10) #14
  br label %211

211:                                              ; preds = %210, %207
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %212 = load i16, ptr %104, align 4
  %213 = add i16 %212, 1
  store i16 %213, ptr %104, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %214 = load ptr, ptr %5, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %214) #14
  br label %217

217:                                              ; preds = %216, %211
  call fastcc void @local_bh_enable()
  br label %218

218:                                              ; preds = %217, %169, %160, %40, %38
  %219 = phi i32 [ %43, %40 ], [ 0, %38 ], [ 0, %217 ], [ -12, %160 ], [ -99, %169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %219
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_bind_unhash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_hash_connect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.17, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %1, align 8
  %11 = load i16, ptr %3, align 4
  %12 = tail call i32 @secure_ipv4_port_ephemeral(i32 noundef %9, i32 noundef %10, i16 noundef zeroext %11) #14
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %7 ]
  %15 = tail call i32 @__inet_hash_connect(ptr noundef %0, ptr noundef %1, i32 noundef %14, ptr noundef nonnull @__inet_check_established)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__inet_check_established(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inet_timewait_death_row, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %1, align 8
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = zext i16 %2 to i32
  %13 = shl nuw i32 %12, 16
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = or i32 %13, %16
  %18 = tail call fastcc i32 @inet_ehashfn(ptr noundef nonnull @init_net, i32 noundef %8, i16 noundef zeroext %2, i32 noundef %9, i16 noundef zeroext %15)
  %19 = load ptr, ptr %6, align 64
  %20 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, %18
  %23 = getelementptr %struct.inet_ehash_bucket, ptr %19, i32 %22
  %24 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inet_hashinfo, ptr %6, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %18
  %29 = getelementptr %struct.spinlock, ptr %25, i32 %28
  tail call void @_raw_spin_lock(ptr noundef %29) #14
  %30 = load ptr, ptr %23, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %72, %4
  %35 = phi ptr [ %73, %72 ], [ %30, %4 ]
  %36 = getelementptr i8, ptr %35, i32 -84
  %37 = getelementptr i8, ptr %35, i32 -76
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, %18
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %35, i32 -72
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %17
  br i1 %43, label %44, label %72, !prof !27

44:                                               ; preds = %40
  %45 = load i32, ptr %36, align 8
  %46 = icmp eq i32 %45, %9
  br i1 %46, label %47, label %72, !prof !27

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %35, i32 -80
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %8
  br i1 %50, label %51, label %72, !prof !27

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %35, i32 -64
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %11
  %55 = icmp eq i32 %53, 0
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %72, !prof !30

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %35, i32 -66
  %59 = load volatile i8, ptr %58, align 2
  %60 = icmp eq i8 %59, 6
  br i1 %60, label %61, label %152

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.proto, ptr %63, i32 0, i32 47
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.timewait_sock_ops, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %152, label %69

69:                                               ; preds = %61
  %70 = tail call i32 %67(ptr noundef %1, ptr noundef %36, ptr noundef %3) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %152, label %77

72:                                               ; preds = %51, %47, %44, %40, %34
  %73 = load ptr, ptr %35, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %34, label %77

77:                                               ; preds = %72, %69, %4
  %78 = phi ptr [ %36, %69 ], [ null, %4 ], [ null, %72 ]
  %79 = getelementptr inbounds %struct.anon.17, ptr %14, i32 0, i32 1
  store i16 %2, ptr %79, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %2)
  %81 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  store i16 %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  store i32 %18, ptr %82, align 8
  %83 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86, !prof !27

86:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 485, i32 noundef 9, ptr noundef null) #14
  br label %87

87:                                               ; preds = %86, %77
  %88 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %89 = load ptr, ptr %23, align 4
  store ptr %89, ptr %88, align 4
  store volatile ptr %23, ptr %83, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  store volatile ptr %88, ptr %23, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.hlist_nulls_node, ptr %89, i32 0, i32 1
  store volatile ptr %88, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %87
  %96 = icmp eq ptr %78, null
  br i1 %96, label %130, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.sock_common, ptr %78, i32 0, i32 15, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.sock_common, ptr %78, i32 0, i32 15
  %103 = load ptr, ptr %102, align 4
  store volatile ptr %103, ptr %99, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.hlist_nulls_node, ptr %103, i32 0, i32 1
  store volatile ptr %99, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %101
  store volatile ptr null, ptr %98, align 4
  %110 = getelementptr inbounds %struct.sock_common, ptr %78, i32 0, i32 19
  %111 = load volatile i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %114, !prof !14

113:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 751, i32 noundef 9, ptr noundef null) #14
  br label %114

114:                                              ; preds = %113, %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #14, !srcloc !25
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #14, !srcloc !26
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %119, !prof !14

118:                                              ; preds = %114
  tail call void @refcount_warn_saturate(ptr noundef %110, i32 noundef 4) #14
  br label %119

119:                                              ; preds = %118, %114, %97
  %120 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %121 = getelementptr [126 x i32], ptr %120, i32 0, i32 12
  %122 = ptrtoint ptr %121 to i32
  %123 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %124 = inttoptr i32 %123 to ptr
  %125 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %124) #10, !srcloc !18
  %126 = add i32 %125, %122
  %127 = inttoptr i32 %126 to ptr
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  br label %130

130:                                              ; preds = %119, %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %131 = load i16, ptr %29, align 4
  %132 = add i16 %131, 1
  store i16 %132, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %133 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %134 = load ptr, ptr %133, align 8
  %135 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !19
  %136 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %137 = getelementptr inbounds %struct.proto, ptr %134, i32 0, i32 25
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr %struct.prot_inuse, ptr %136, i32 0, i32 1, i32 %138
  %140 = ptrtoint ptr %139 to i32
  %141 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %142 = inttoptr i32 %141 to ptr
  %143 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %142) #10, !srcloc !18
  %144 = add i32 %143, %140
  %145 = inttoptr i32 %144 to ptr
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #14, !srcloc !22
  %148 = icmp eq ptr %3, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %130
  store ptr %78, ptr %3, align 4
  br label %155

150:                                              ; preds = %130
  br i1 %96, label %155, label %151

151:                                              ; preds = %150
  tail call void @inet_twsk_deschedule_put(ptr noundef nonnull %78) #14
  br label %155

152:                                              ; preds = %69, %61, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %153 = load i16, ptr %29, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %155

155:                                              ; preds = %152, %151, %150, %149
  %156 = phi i32 [ -99, %152 ], [ 0, %150 ], [ 0, %151 ], [ 0, %149 ]
  ret i32 %156
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @inet_hashinfo_init(ptr nocapture noundef writeonly %0) #6 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %10, %2 ]
  %4 = getelementptr %struct.inet_hashinfo, ptr %0, i32 0, i32 10, i32 %3
  store i32 0, ptr %4, align 4
  %5 = shl nuw i32 %3, 1
  %6 = add nuw nsw i32 %5, 1073741825
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.inet_hashinfo, ptr %0, i32 0, i32 10, i32 %3, i32 2
  store ptr %7, ptr %8, align 4
  %9 = getelementptr %struct.inet_hashinfo, ptr %0, i32 0, i32 10, i32 %3, i32 1
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %2

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 8
  store ptr null, ptr %13, align 32
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @inet_hashinfo2_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 section ".init.text" {
  %7 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 7
  %8 = tail call ptr @alloc_large_system_hash(ptr noundef %1, i32 noundef 12, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef %7, i32 noundef %4, i32 noundef %5) #14
  %9 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 8
  store ptr %8, ptr %9, align 32
  store i32 0, ptr %8, align 4
  %10 = load ptr, ptr %9, align 32
  %11 = getelementptr %struct.inet_listen_hashbucket, ptr %10, i32 0, i32 2
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %9, align 32
  %13 = getelementptr %struct.inet_listen_hashbucket, ptr %12, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %16, %6
  %17 = phi i32 [ %24, %16 ], [ 1, %6 ]
  %18 = load ptr, ptr %9, align 32
  %19 = getelementptr %struct.inet_listen_hashbucket, ptr %18, i32 %17
  store i32 0, ptr %19, align 4
  %20 = load ptr, ptr %9, align 32
  %21 = getelementptr %struct.inet_listen_hashbucket, ptr %20, i32 %17, i32 2
  store ptr null, ptr %21, align 4
  %22 = load ptr, ptr %9, align 32
  %23 = getelementptr %struct.inet_listen_hashbucket, ptr %22, i32 %17, i32 1
  store i32 0, ptr %23, align 4
  %24 = add i32 %17, 1
  %25 = load i32, ptr %7, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %16

27:                                               ; preds = %16, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_hashinfo2_init_mod(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 384) #15
  %4 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 8
  store ptr %3, ptr %4, align 32
  %5 = icmp eq ptr %3, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 7
  store i32 31, ptr %7, align 4
  store i32 0, ptr %3, align 8
  %8 = load ptr, ptr %4, align 32
  %9 = getelementptr %struct.inet_listen_hashbucket, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = load ptr, ptr %4, align 32
  %11 = getelementptr %struct.inet_listen_hashbucket, ptr %10, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %14, %6
  %15 = phi i32 [ %22, %14 ], [ 1, %6 ]
  %16 = load ptr, ptr %4, align 32
  %17 = getelementptr %struct.inet_listen_hashbucket, ptr %16, i32 %15
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %4, align 32
  %19 = getelementptr %struct.inet_listen_hashbucket, ptr %18, i32 %15, i32 2
  store ptr null, ptr %19, align 4
  %20 = load ptr, ptr %4, align 32
  %21 = getelementptr %struct.inet_listen_hashbucket, ptr %20, i32 %15, i32 1
  store i32 0, ptr %21, align 4
  %22 = add i32 %15, 1
  %23 = load i32, ptr %7, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %6, %1
  %26 = phi i32 [ -12, %1 ], [ 0, %6 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_ehash_locks_alloc(ptr nocapture noundef %0) #0 {
  %2 = load i32, ptr @__cpu_possible_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #14
  %5 = shl i32 %4, 5
  %6 = add i32 %5, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #14, !range !38
  %8 = sub nuw nsw i32 32, %7
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  %13 = tail call i32 @llvm.umin.i32(i32 %9, i32 %12)
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #14
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !14

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 1
  store ptr null, ptr %17, align 4
  br label %36

18:                                               ; preds = %1
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias ptr @kvmalloc_node(i32 noundef %19, i32 noundef 3264, i32 noundef -1) #16
  %21 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %13, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  store i32 0, ptr %20, align 4
  %26 = icmp eq i32 %13, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %31, %27 ], [ 1, %25 ]
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr %struct.spinlock, ptr %29, i32 %28
  store i32 0, ptr %30, align 4
  %31 = add nuw i32 %28, 1
  %32 = icmp eq i32 %31, %13
  br i1 %32, label %33, label %27

33:                                               ; preds = %27, %25, %23
  %34 = add i32 %13, -1
  %35 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %18, %16
  %37 = phi i32 [ 0, %33 ], [ -12, %18 ], [ -12, %16 ]
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_ehashfn(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_rcv_saddr_equal(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_add_sock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_rcv_saddr_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_alloc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc ptr @inet_lhash2_bucket_sk(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 10
  br i1 %5, label %6, label %127

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.anon.17, ptr %8, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %13 = load i32, ptr %7, align 4
  %14 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  %17 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  %20 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %6
  %25 = add i32 %12, -559038733
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 14) #14
  %27 = sub i32 0, %26
  %28 = xor i32 %25, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11) #14
  %30 = sub i32 %28, %29
  %31 = xor i32 %30, %25
  %32 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 25) #14
  %33 = sub i32 %31, %32
  %34 = xor i32 %33, %27
  %35 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 16) #14
  %36 = sub i32 %34, %35
  %37 = xor i32 %36, %30
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 4) #14
  %39 = sub i32 %37, %38
  %40 = xor i32 %39, %33
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 14) #14
  %42 = sub i32 %40, %41
  %43 = xor i32 %42, %36
  %44 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 24) #14
  %45 = sub i32 %43, %44
  br label %124

46:                                               ; preds = %6
  %47 = xor i32 %18, -65536
  %48 = or i32 %47, %16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = add i32 %12, -559038733
  %52 = add i32 %21, %51
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 14) #14
  %54 = sub i32 0, %53
  %55 = xor i32 %52, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11) #14
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %51
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 25) #14
  %60 = sub i32 %58, %59
  %61 = xor i32 %60, %54
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 16) #14
  %63 = sub i32 %61, %62
  %64 = xor i32 %63, %57
  %65 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 4) #14
  %66 = sub i32 %64, %65
  %67 = xor i32 %66, %60
  %68 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 14) #14
  %69 = sub i32 %67, %68
  %70 = xor i32 %69, %63
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 24) #14
  %72 = sub i32 %70, %71
  br label %124

73:                                               ; preds = %46
  %74 = add i32 %12, -559038721
  %75 = add i32 %13, %74
  %76 = add i32 %15, %74
  %77 = add i32 %18, %74
  %78 = sub i32 %75, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 4) #14
  %80 = xor i32 %78, %79
  %81 = add i32 %77, %76
  %82 = sub i32 %76, %80
  %83 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 6) #14
  %84 = xor i32 %82, %83
  %85 = add i32 %80, %81
  %86 = sub i32 %81, %84
  %87 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 8) #14
  %88 = xor i32 %86, %87
  %89 = add i32 %84, %85
  %90 = sub i32 %85, %88
  %91 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 16) #14
  %92 = xor i32 %90, %91
  %93 = add i32 %88, %89
  %94 = sub i32 %89, %92
  %95 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 19) #14
  %96 = xor i32 %94, %95
  %97 = add i32 %92, %93
  %98 = sub i32 %93, %96
  %99 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 4) #14
  %100 = xor i32 %98, %99
  %101 = add i32 %96, %97
  %102 = add i32 %97, %21
  %103 = xor i32 %100, %101
  %104 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 14) #14
  %105 = sub i32 %103, %104
  %106 = xor i32 %105, %102
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 11) #14
  %108 = sub i32 %106, %107
  %109 = xor i32 %108, %101
  %110 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 25) #14
  %111 = sub i32 %109, %110
  %112 = xor i32 %111, %105
  %113 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 16) #14
  %114 = sub i32 %112, %113
  %115 = xor i32 %114, %108
  %116 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 4) #14
  %117 = sub i32 %115, %116
  %118 = xor i32 %117, %111
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 14) #14
  %120 = sub i32 %118, %119
  %121 = xor i32 %120, %114
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 24) #14
  %123 = sub i32 %121, %122
  br label %124

124:                                              ; preds = %73, %50, %24
  %125 = phi i32 [ %45, %24 ], [ %72, %50 ], [ %123, %73 ]
  %126 = xor i32 %125, %11
  br label %158

127:                                              ; preds = %2
  %128 = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %131 = getelementptr inbounds %struct.anon.17, ptr %130, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %135 = add i32 %134, -559038733
  %136 = add i32 %135, %129
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 14) #14
  %138 = sub i32 0, %137
  %139 = xor i32 %136, %138
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 11) #14
  %141 = sub i32 %139, %140
  %142 = xor i32 %141, %135
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 25) #14
  %144 = sub i32 %142, %143
  %145 = xor i32 %144, %138
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 16) #14
  %147 = sub i32 %145, %146
  %148 = xor i32 %147, %141
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 4) #14
  %150 = sub i32 %148, %149
  %151 = xor i32 %150, %144
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 14) #14
  %153 = sub i32 %151, %152
  %154 = xor i32 %153, %147
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 24) #14
  %156 = sub i32 %154, %155
  %157 = xor i32 %156, %133
  br label %158

158:                                              ; preds = %127, %124
  %159 = phi i32 [ %126, %124 ], [ %157, %127 ]
  %160 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 8
  %161 = load ptr, ptr %160, align 32
  %162 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, %159
  %165 = getelementptr %struct.inet_listen_hashbucket, ptr %161, i32 %164
  ret ptr %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_ipv4_port_ephemeral(i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2148881535}
!10 = !{i64 2148949410}
!11 = !{i64 2148945234}
!12 = !{i64 2148945309, i64 2148945336, i64 2148945383, i64 2148945405, i64 2148945433, i64 2148945453}
!13 = !{i64 2148972413}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149067765}
!16 = !{i64 2149067982}
!17 = !{!"auto-init"}
!18 = !{i64 489263}
!19 = !{i64 470563, i64 470624}
!20 = !{i64 2149405285}
!21 = !{i64 2149405586}
!22 = !{i64 473580}
!23 = !{i8 0, i8 2}
!24 = !{i64 2148167951}
!25 = !{i64 564885, i64 2148054856, i64 2148054882, i64 2148054929, i64 2148054951, i64 2148054979, i64 2148054999}
!26 = !{i64 2148070086, i64 2148070118, i64 2148070147, i64 2148070181, i64 2148070212, i64 2148070235}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2149017398}
!29 = !{i64 2157050013}
!30 = !{!"branch_weights", i32 4001, i32 1}
!31 = !{i64 550948, i64 550972, i64 550993, i64 551010, i64 551027}
!32 = !{i64 2157076702}
!33 = !{i64 2154889017}
!34 = !{i64 2157103763}
!35 = !{i64 2154902398}
!36 = !{i64 2150622306}
!37 = !{i64 2150607265}
!38 = !{i32 0, i32 33}
