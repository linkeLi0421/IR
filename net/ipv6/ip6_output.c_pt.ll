; ModuleID = '/llk/IR/net/ipv6/ip6_output.c_pt.bc'
source_filename = "../net/ipv6/ip6_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_output:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_output\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_fraglist_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_fraglist_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_frag_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_frag_next\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_lookup_flow\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_sk_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_sk_dst_lookup_flow\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_sk_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_lookup_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_lookup_tunnel\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_lookup_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_append_data:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_append_data\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_append_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_push_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_push_pending_frames\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_push_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_flush_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_flush_pending_frames\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_flush_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.182, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.182 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.207, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.207 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.75, %union.anon.153, %union.anon.154, [48 x i8], %union.anon.155, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.157, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { i64 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, ptr }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.159, i32, i32, i32, i16, i16, %union.anon.161, %union.anon.162, %union.anon.163, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.159 = type { i32 }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.172, [0 x i32], %union.anon.173, i16, i16, %union.anon.174, %struct.refcount_struct, [0 x i32], %union.anon.175 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.172 = type { i32 }
%union.anon.173 = type { %struct.hlist_node }
%union.anon.174 = type { i32 }
%union.anon.175 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.176, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.177, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.178, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.176 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.177 = type { ptr }
%union.anon.178 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.139 }
%union.anon.139 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.190, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.201, i16 }
%union.anon.201 = type { %struct.anon.202 }
%struct.anon.202 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.203 }
%union.anon.203 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.205, i16 }
%struct.anon.205 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.206 }
%union.anon.206 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.inetpeer_addr = type { %union.anon.194, i16 }
%union.anon.194 = type { %struct.in6_addr }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.ip6_ra_chain = type { ptr, ptr, i32, ptr }
%struct.ip6_fraglist_iter = type { ptr, ptr, i32, i32, i32, i8 }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.ip6_frag_state = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.133, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.133 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.136, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.136 = type { %struct.in6_addr }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.145, %struct.list_head, ptr }
%union.anon.145 = type { %struct.anon.147 }
%struct.anon.147 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.135 }
%union.anon.135 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.197, i16, i8, i8, i32, i16, i16 }
%union.anon.197 = type { %struct.anon.199 }
%struct.anon.199 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.xfrm_dst = type { %union.anon.208, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.208 = type { %struct.rt6_info }
%struct.ubuf_info = type { ptr, %union.anon.209, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.209 = type { %struct.anon.211 }
%struct.anon.211 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.page = type { i32, %union.anon.19, %union.anon.71, %struct.atomic_t }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }

@__kstrtab_ip6_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_output = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_output to i32), ptr @__kstrtab_ip6_output, ptr @__kstrtabns_ip6_output }, section "___ksymtab+ip6_output", align 4
@__kstrtab_ip6_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_xmit to i32), ptr @__kstrtab_ip6_xmit, ptr @__kstrtabns_ip6_xmit }, section "___ksymtab+ip6_xmit", align 4
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@__kstrtab_ip6_fraglist_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_fraglist_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_fraglist_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_fraglist_init to i32), ptr @__kstrtab_ip6_fraglist_init, ptr @__kstrtabns_ip6_fraglist_init }, section "___ksymtab+ip6_fraglist_init", align 4
@__kstrtab_ip6_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_fraglist_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_fraglist_prepare to i32), ptr @__kstrtab_ip6_fraglist_prepare, ptr @__kstrtabns_ip6_fraglist_prepare }, section "___ksymtab+ip6_fraglist_prepare", align 4
@__kstrtab_ip6_frag_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_frag_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_frag_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_frag_init to i32), ptr @__kstrtab_ip6_frag_init, ptr @__kstrtabns_ip6_frag_init }, section "___ksymtab+ip6_frag_init", align 4
@__kstrtab_ip6_frag_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_frag_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_frag_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_frag_next to i32), ptr @__kstrtab_ip6_frag_next, ptr @__kstrtabns_ip6_frag_next }, section "___ksymtab+ip6_frag_next", align 4
@__kstrtab_ip6_dst_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_lookup to i32), ptr @__kstrtab_ip6_dst_lookup, ptr @__kstrtabns_ip6_dst_lookup }, section "___ksymtab_gpl+ip6_dst_lookup", align 4
@__kstrtab_ip6_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_lookup_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_lookup_flow to i32), ptr @__kstrtab_ip6_dst_lookup_flow, ptr @__kstrtabns_ip6_dst_lookup_flow }, section "___ksymtab_gpl+ip6_dst_lookup_flow", align 4
@__kstrtab_ip6_sk_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_sk_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_sk_dst_lookup_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_sk_dst_lookup_flow to i32), ptr @__kstrtab_ip6_sk_dst_lookup_flow, ptr @__kstrtabns_ip6_sk_dst_lookup_flow }, section "___ksymtab_gpl+ip6_sk_dst_lookup_flow", align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@__kstrtab_ip6_dst_lookup_tunnel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_lookup_tunnel = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_lookup_tunnel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_lookup_tunnel to i32), ptr @__kstrtab_ip6_dst_lookup_tunnel, ptr @__kstrtabns_ip6_dst_lookup_tunnel }, section "___ksymtab_gpl+ip6_dst_lookup_tunnel", align 4
@__kstrtab_ip6_append_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_append_data = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_append_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_append_data to i32), ptr @__kstrtab_ip6_append_data, ptr @__kstrtabns_ip6_append_data }, section "___ksymtab_gpl+ip6_append_data", align 4
@__kstrtab_ip6_push_pending_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_push_pending_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_push_pending_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_push_pending_frames to i32), ptr @__kstrtab_ip6_push_pending_frames, ptr @__kstrtabns_ip6_push_pending_frames }, section "___ksymtab_gpl+ip6_push_pending_frames", align 4
@__kstrtab_ip6_flush_pending_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_flush_pending_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_flush_pending_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_flush_pending_frames to i32), ptr @__kstrtab_ip6_flush_pending_frames, ptr @__kstrtabns_ip6_flush_pending_frames }, section "___ksymtab_gpl+ip6_flush_pending_frames", align 4
@.str = private unnamed_addr constant [23 x i8] c"include/linux/skbuff.h\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@neigh_hh_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"include/net/neighbour.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@ip6_ra_lock = external dso_local global %struct.rwlock_t, align 4
@ip6_ra_chain = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@.str.4 = private unnamed_addr constant [22 x i8] c"net/ipv6/ip6_output.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_ip6_append_data, ptr @__ksymtab_ip6_dst_lookup, ptr @__ksymtab_ip6_dst_lookup_flow, ptr @__ksymtab_ip6_dst_lookup_tunnel, ptr @__ksymtab_ip6_flush_pending_frames, ptr @__ksymtab_ip6_frag_init, ptr @__ksymtab_ip6_frag_next, ptr @__ksymtab_ip6_fraglist_init, ptr @__ksymtab_ip6_fraglist_prepare, ptr @__ksymtab_ip6_output, ptr @__ksymtab_ip6_push_pending_frames, ptr @__ksymtab_ip6_sk_dst_lookup_flow, ptr @__ksymtab_ip6_xmit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_output(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.76, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %12, align 8
  store ptr %8, ptr %9, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 32, i32 32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %59, label %16, !prof !9

16:                                               ; preds = %3
  %17 = icmp eq ptr %11, null
  %18 = tail call ptr @llvm.thread.pointer() #12
  br i1 %17, label %39, label %19, !prof !10

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = add i32 %21, 512
  store volatile i32 %22, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 33, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #9, !srcloc !12
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.ipstats_mib, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %34 = getelementptr [37 x i64], ptr %30, i32 0, i32 14
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, ptr %34, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %37 = load i32, ptr %31, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %31, align 4
  tail call fastcc void @local_bh_enable()
  br label %39

39:                                               ; preds = %19, %16
  %40 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = add i32 %41, 512
  store volatile i32 %42, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #9, !srcloc !12
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.ipstats_mib, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %54 = getelementptr [37 x i64], ptr %50, i32 0, i32 14
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, ptr %54, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %57 = load i32, ptr %51, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %51, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #12
  br label %166

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %64 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %65 = inttoptr i32 %64 to ptr
  %66 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #9, !srcloc !12
  %67 = add i32 %66, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10) to i32)
  %68 = inttoptr i32 %67 to ptr
  %69 = load volatile i16, ptr %68, align 2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load ptr, ptr %60, align 4
  %73 = getelementptr inbounds %struct.sock_common, ptr %72, i32 0, i32 4
  %74 = load volatile i8, ptr %73, align 2
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, -4161
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71, %63, %59
  %80 = load i32, ptr %4, align 8
  %81 = and i32 %80, -2
  %82 = inttoptr i32 %81 to ptr
  br label %99

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.inet_sock, ptr %72, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = load i32, ptr %4, align 8
  %87 = and i32 %86, -2
  %88 = inttoptr i32 %87 to ptr
  %89 = icmp eq ptr %85, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.ipv6_pinfo, ptr %85, i32 0, i32 9
  %92 = load i16, ptr %91, align 2
  %93 = and i16 %92, 56
  %94 = icmp ugt i16 %93, 16
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load ptr, ptr %88, align 4
  %97 = getelementptr inbounds %struct.net_device, ptr %96, i32 0, i32 20
  %98 = load volatile i32, ptr %97, align 4
  br label %106

99:                                               ; preds = %90, %83, %79
  %100 = phi ptr [ %82, %79 ], [ %88, %90 ], [ %88, %83 ]
  %101 = getelementptr inbounds %struct.dst_entry, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dst_ops, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 %104(ptr noundef %100) #12
  br label %106

106:                                              ; preds = %99, %95
  %107 = phi i32 [ %98, %95 ], [ %105, %99 ]
  %108 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 4
  %111 = load i16, ptr %110, align 4
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %106
  %114 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %2, i32 noundef %107) #12
  br i1 %114, label %134, label %115

115:                                              ; preds = %113
  %116 = tail call i64 @netif_skb_features(ptr noundef %2) #12
  %117 = and i64 %116, -34359672833
  %118 = tail call ptr @__skb_gso_segment(ptr noundef %2, i64 noundef %117, i1 noundef zeroext true) #12
  %119 = icmp eq ptr %118, null
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  %121 = or i1 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #12
  br label %166

123:                                              ; preds = %115
  tail call void @consume_skb(ptr noundef %2) #12
  br label %124

124:                                              ; preds = %124, %123
  %125 = phi ptr [ %118, %123 ], [ %127, %124 ]
  %126 = phi i32 [ 0, %123 ], [ %132, %124 ]
  %127 = load ptr, ptr %125, align 8
  store ptr null, ptr %125, align 8
  %128 = tail call i32 @ip6_fragment(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %125, ptr noundef nonnull @ip6_finish_output2) #12
  %129 = icmp ne i32 %128, 0
  %130 = icmp eq i32 %126, 0
  %131 = select i1 %129, i1 %130, i1 false
  %132 = select i1 %131, i32 %128, i32 %126
  %133 = icmp eq ptr %127, null
  br i1 %133, label %166, label %124

134:                                              ; preds = %113, %106
  %135 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %136 = load i32, ptr %135, align 8
  %137 = icmp ugt i32 %136, %107
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load ptr, ptr %108, align 4
  %140 = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 4
  %141 = load i16, ptr %140, align 4
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %138, %134
  %144 = load i32, ptr %4, align 8
  %145 = and i32 %144, -2
  %146 = inttoptr i32 %145 to ptr
  %147 = getelementptr inbounds %struct.dst_entry, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, -4
  %150 = inttoptr i32 %149 to ptr
  %151 = getelementptr i32, ptr %150, i32 11
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  %157 = load i16, ptr %156, align 4
  %158 = icmp ne i16 %157, 0
  %159 = zext i16 %157 to i32
  %160 = icmp ugt i32 %136, %159
  %161 = select i1 %158, i1 %160, i1 false
  br i1 %161, label %162, label %164

162:                                              ; preds = %155, %143, %138
  %163 = tail call i32 @ip6_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ip6_finish_output2) #12
  br label %166

164:                                              ; preds = %155
  %165 = tail call i32 @ip6_finish_output2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %166

166:                                              ; preds = %164, %162, %124, %122, %39
  %167 = phi i32 [ 0, %39 ], [ %163, %162 ], [ %165, %164 ], [ -12, %122 ], [ %132, %124 ]
  ret i32 %167
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ip6_autoflowlabel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ipv6_pinfo, ptr %1, i32 0, i32 9
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 4096
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 17
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -1
  %11 = and i8 %10, -3
  %12 = icmp eq i8 %11, 0
  br label %16

13:                                               ; preds = %2
  %14 = and i16 %4, 2048
  %15 = icmp ne i16 %14, 0
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i1 [ %15, %13 ], [ %12, %7 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.flow_keys, align 8
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, -4161
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %19, %17 ], [ null, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %22 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  store ptr %22, ptr %9, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rt6_info, ptr %26, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  %30 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  %31 = load i8, ptr %30, align 2
  store i8 %31, ptr %10, align 1
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 19
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 21
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = add nuw nsw i32 %39, %36
  %41 = and i32 %40, 131056
  %42 = add nuw nsw i32 %41, 56
  %43 = icmp eq ptr %4, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %42, %47
  %52 = add nuw nsw i32 %51, %50
  br label %53

53:                                               ; preds = %44, %20
  %54 = phi i32 [ %52, %44 ], [ %42, %20 ]
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %56 to i32
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %59, %60
  %62 = icmp ugt i32 %54, %61
  br i1 %62, label %63, label %108, !prof !10

63:                                               ; preds = %53
  %64 = tail call ptr @skb_expand_head(ptr noundef %1, i32 noundef %54) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %108

66:                                               ; preds = %63
  %67 = icmp eq ptr %29, null
  %68 = tail call ptr @llvm.thread.pointer() #12
  br i1 %67, label %89, label %69, !prof !10

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = add i32 %71, 512
  store volatile i32 %72, ptr %70, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %73 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 33, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #9, !srcloc !12
  %79 = add i32 %78, %75
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.ipstats_mib, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %84 = getelementptr [37 x i64], ptr %80, i32 0, i32 14
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, ptr %84, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %87 = load i32, ptr %81, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %81, align 4
  tail call fastcc void @local_bh_enable()
  br label %89

89:                                               ; preds = %69, %66
  %90 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %91 = load volatile i32, ptr %90, align 4
  %92 = add i32 %91, 512
  store volatile i32 %92, ptr %90, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %93 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %96 = inttoptr i32 %95 to ptr
  %97 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %96) #9, !srcloc !12
  %98 = add i32 %97, %94
  %99 = inttoptr i32 %98 to ptr
  %100 = getelementptr inbounds %struct.ipstats_mib, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %103 = getelementptr [37 x i64], ptr %99, i32 0, i32 14
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, ptr %103, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %106 = load i32, ptr %100, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %100, align 4
  tail call fastcc void @local_bh_enable()
  br label %354

108:                                              ; preds = %63, %53
  %109 = phi ptr [ %64, %63 ], [ %1, %53 ]
  br i1 %43, label %127, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 3
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %115 = load i16, ptr %114, align 4
  %116 = zext i16 %115 to i32
  %117 = add i32 %33, %113
  %118 = add i32 %117, %116
  %119 = icmp eq i16 %115, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %110
  call void @ipv6_push_frag_opts(ptr noundef %109, ptr noundef nonnull %4, ptr noundef nonnull %10) #12
  %121 = load i16, ptr %111, align 2
  br label %122

122:                                              ; preds = %120, %110
  %123 = phi i16 [ %121, %120 ], [ %112, %110 ]
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 2
  call void @ipv6_push_nfrag_opts(ptr noundef %109, ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef %126) #12
  br label %127

127:                                              ; preds = %125, %122, %108
  %128 = phi i32 [ %118, %125 ], [ %118, %122 ], [ %33, %108 ]
  %129 = call ptr @skb_push(ptr noundef %109, i32 noundef 40) #12
  %130 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 17
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 16
  %133 = load ptr, ptr %132, align 8
  %134 = ptrtoint ptr %131 to i32
  %135 = ptrtoint ptr %133 to i32
  %136 = sub i32 %134, %135
  %137 = trunc i32 %136 to i16
  %138 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13, i32 0, i32 18
  store i16 %137, ptr %138, align 4
  %139 = and i32 %136, 65535
  %140 = getelementptr i8, ptr %133, i32 %139
  %141 = icmp eq ptr %21, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %127
  %143 = getelementptr inbounds %struct.ipv6_pinfo, ptr %21, i32 0, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = shl i32 %144, 16
  %146 = ashr i32 %145, 23
  %147 = icmp slt i32 %145, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142, %127
  %149 = call i32 @ip6_dst_hoplimit(ptr noundef %26) #12
  br label %150

150:                                              ; preds = %148, %142
  %151 = phi i32 [ %149, %148 ], [ %146, %142 ]
  %152 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 3
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr inbounds %struct.ipv6_pinfo, ptr %21, i32 0, i32 9
  %155 = load i16, ptr %154, align 2
  %156 = and i16 %155, 4096
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 17), align 1
  %160 = add i8 %159, -1
  %161 = and i8 %160, -3
  %162 = icmp eq i8 %161, 0
  br label %166

163:                                              ; preds = %150
  %164 = and i16 %155, 2048
  %165 = icmp ne i16 %164, 0
  br label %166

166:                                              ; preds = %163, %158
  %167 = phi i1 [ %165, %163 ], [ %162, %158 ]
  %168 = and i32 %153, -61696
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %212

170:                                              ; preds = %166
  %171 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 17), align 1
  %172 = icmp ne i8 %171, 0
  %173 = icmp eq i8 %171, 3
  %174 = select i1 %167, i1 %172, i1 %173
  br i1 %174, label %175, label %212

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13
  %177 = load i16, ptr %176, align 8
  %178 = and i16 %177, 768
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13, i32 0, i32 7
  %182 = load i32, ptr %181, align 8
  br label %204

183:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i32 72, i1 false) #12, !annotation !17
  %184 = call i32 @__get_hash_from_flowi6(ptr noundef %2, ptr noundef nonnull %8) #12
  %185 = getelementptr inbounds %struct.flow_keys, ptr %8, i32 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = load i16, ptr %176, align 8
  %190 = and i16 %189, -769
  br label %197

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.flow_keys, ptr %8, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  %195 = load i16, ptr %176, align 8
  %196 = and i16 %195, -769
  br i1 %194, label %199, label %197

197:                                              ; preds = %191, %188
  %198 = phi i16 [ %190, %188 ], [ %196, %191 ]
  br label %199

199:                                              ; preds = %197, %191
  %200 = phi i16 [ %198, %197 ], [ %196, %191 ]
  %201 = phi i16 [ 768, %197 ], [ 512, %191 ]
  %202 = or i16 %201, %200
  store i16 %202, ptr %176, align 8
  %203 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13, i32 0, i32 7
  store i32 %184, ptr %203, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #12
  br label %204

204:                                              ; preds = %199, %180
  %205 = phi i32 [ %182, %180 ], [ %184, %199 ]
  %206 = call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 16) #12
  %207 = and i32 %206, -61696
  %208 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 27), align 1
  %209 = icmp eq i8 %208, 0
  %210 = or i32 %207, 2048
  %211 = select i1 %209, i32 %207, i32 %210
  br label %212

212:                                              ; preds = %204, %170, %166
  %213 = phi i32 [ %211, %204 ], [ 0, %170 ], [ %168, %166 ]
  %214 = shl i32 %5, 20
  %215 = or i32 %214, 1610612736
  %216 = call i32 @llvm.bswap.i32(i32 %215) #12
  %217 = or i32 %213, %216
  store i32 %217, ptr %140, align 4
  %218 = trunc i32 %128 to i16
  %219 = call i16 @llvm.bswap.i16(i16 %218)
  %220 = getelementptr inbounds %struct.ipv6hdr, ptr %140, i32 0, i32 2
  store i16 %219, ptr %220, align 4
  %221 = load i8, ptr %10, align 1
  %222 = getelementptr inbounds %struct.ipv6hdr, ptr %140, i32 0, i32 3
  store i8 %221, ptr %222, align 2
  %223 = trunc i32 %151 to i8
  %224 = getelementptr inbounds %struct.ipv6hdr, ptr %140, i32 0, i32 4
  store i8 %223, ptr %224, align 1
  %225 = getelementptr inbounds %struct.ipv6hdr, ptr %140, i32 0, i32 5
  %226 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %225, ptr noundef align 8 dereferenceable(16) %226, i32 16, i1 false)
  %227 = getelementptr inbounds %struct.ipv6hdr, ptr %140, i32 0, i32 6
  %228 = load ptr, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %227, ptr noundef align 4 dereferenceable(16) %228, i32 16, i1 false)
  %229 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %229, align 8
  %230 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13, i32 0, i32 5
  store i32 %6, ptr %230, align 8
  %231 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13, i32 0, i32 11
  store i32 %3, ptr %231, align 4
  %232 = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.dst_ops, ptr %233, i32 0, i32 5
  %235 = load ptr, ptr %234, align 4
  %236 = call i32 %235(ptr noundef %26) #12
  %237 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %238 = load i32, ptr %237, align 8
  %239 = icmp ugt i32 %238, %236
  br i1 %239, label %240, label %251

240:                                              ; preds = %212
  %241 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 13
  %242 = load i16, ptr %241, align 8
  %243 = and i16 %242, 8
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.skb_shared_info, ptr %247, i32 0, i32 4
  %249 = load i16, ptr %248, align 4
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %311, label %251

251:                                              ; preds = %245, %240, %212
  %252 = icmp eq ptr %29, null
  br i1 %252, label %278, label %253, !prof !10

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 33, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %257 = getelementptr i64, ptr %255, i32 5
  %258 = ptrtoint ptr %257 to i32
  %259 = call i32 @llvm.read_register.i32(metadata !0) #12
  %260 = inttoptr i32 %259 to ptr
  %261 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %260) #9, !srcloc !12
  %262 = add i32 %261, %258
  %263 = inttoptr i32 %262 to ptr
  %264 = load i64, ptr %263, align 8
  %265 = add i64 %264, 1
  store i64 %265, ptr %263, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %256) #12, !srcloc !19
  %266 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %267 = load i32, ptr %237, align 8
  %268 = zext i32 %267 to i64
  %269 = getelementptr i64, ptr %255, i32 6
  %270 = ptrtoint ptr %269 to i32
  %271 = call i32 @llvm.read_register.i32(metadata !0) #12
  %272 = inttoptr i32 %271 to ptr
  %273 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %272) #9, !srcloc !12
  %274 = add i32 %273, %270
  %275 = inttoptr i32 %274 to ptr
  %276 = load i64, ptr %275, align 8
  %277 = add i64 %276, %268
  store i64 %277, ptr %275, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %266) #12, !srcloc !19
  br label %278

278:                                              ; preds = %253, %251
  %279 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %280 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %281 = getelementptr i64, ptr %279, i32 5
  %282 = ptrtoint ptr %281 to i32
  %283 = call i32 @llvm.read_register.i32(metadata !0) #12
  %284 = inttoptr i32 %283 to ptr
  %285 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %284) #9, !srcloc !12
  %286 = add i32 %285, %282
  %287 = inttoptr i32 %286 to ptr
  %288 = load i64, ptr %287, align 8
  %289 = add i64 %288, 1
  store i64 %289, ptr %287, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %280) #12, !srcloc !19
  %290 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %291 = load i32, ptr %237, align 8
  %292 = zext i32 %291 to i64
  %293 = getelementptr i64, ptr %279, i32 6
  %294 = ptrtoint ptr %293 to i32
  %295 = call i32 @llvm.read_register.i32(metadata !0) #12
  %296 = inttoptr i32 %295 to ptr
  %297 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %296) #9, !srcloc !12
  %298 = add i32 %297, %294
  %299 = inttoptr i32 %298 to ptr
  %300 = load i64, ptr %299, align 8
  %301 = add i64 %300, %292
  store i64 %301, ptr %299, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %290) #12, !srcloc !19
  %302 = icmp eq ptr %109, null
  br i1 %302, label %354, label %303, !prof !10

303:                                              ; preds = %278
  %304 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 4
  %305 = load i32, ptr %304, align 8
  %306 = and i32 %305, -2
  %307 = inttoptr i32 %306 to ptr
  %308 = getelementptr inbounds %struct.dst_entry, ptr %307, i32 0, i32 6
  %309 = load ptr, ptr %308, align 4
  %310 = call i32 %309(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %109) #12
  br label %354

311:                                              ; preds = %245
  %312 = getelementptr inbounds %struct.anon.76, ptr %109, i32 0, i32 2
  store ptr %27, ptr %312, align 8
  call void @ipv6_local_error(ptr noundef %0, i32 noundef 90, ptr noundef %2, i32 noundef %236) #12
  %313 = icmp eq ptr %29, null
  %314 = tail call ptr @llvm.thread.pointer() #12
  br i1 %313, label %335, label %315, !prof !10

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.thread_info, ptr %314, i32 0, i32 1
  %317 = load volatile i32, ptr %316, align 4
  %318 = add i32 %317, 512
  store volatile i32 %318, ptr %316, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %319 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 33, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = ptrtoint ptr %320 to i32
  %322 = call i32 @llvm.read_register.i32(metadata !0) #12
  %323 = inttoptr i32 %322 to ptr
  %324 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %323) #9, !srcloc !12
  %325 = add i32 %324, %321
  %326 = inttoptr i32 %325 to ptr
  %327 = getelementptr inbounds %struct.ipstats_mib, ptr %326, i32 0, i32 1
  %328 = load i32, ptr %327, align 4
  %329 = add i32 %328, 1
  store i32 %329, ptr %327, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %330 = getelementptr [37 x i64], ptr %326, i32 0, i32 21
  %331 = load i64, ptr %330, align 8
  %332 = add i64 %331, 1
  store i64 %332, ptr %330, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %333 = load i32, ptr %327, align 4
  %334 = add i32 %333, 1
  store i32 %334, ptr %327, align 4
  call fastcc void @local_bh_enable()
  br label %335

335:                                              ; preds = %315, %311
  %336 = getelementptr inbounds %struct.thread_info, ptr %314, i32 0, i32 1
  %337 = load volatile i32, ptr %336, align 4
  %338 = add i32 %337, 512
  store volatile i32 %338, ptr %336, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %339 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %340 = ptrtoint ptr %339 to i32
  %341 = call i32 @llvm.read_register.i32(metadata !0) #12
  %342 = inttoptr i32 %341 to ptr
  %343 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %342) #9, !srcloc !12
  %344 = add i32 %343, %340
  %345 = inttoptr i32 %344 to ptr
  %346 = getelementptr inbounds %struct.ipstats_mib, ptr %345, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, 1
  store i32 %348, ptr %346, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %349 = getelementptr [37 x i64], ptr %345, i32 0, i32 21
  %350 = load i64, ptr %349, align 8
  %351 = add i64 %350, 1
  store i64 %351, ptr %349, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %352 = load i32, ptr %346, align 4
  %353 = add i32 %352, 1
  store i32 %353, ptr %346, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %109, i32 noundef 0) #12
  br label %354

354:                                              ; preds = %335, %303, %278, %89
  %355 = phi i32 [ %310, %303 ], [ -90, %335 ], [ -105, %89 ], [ 0, %278 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  ret i32 %355
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_push_frag_opts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_push_nfrag_opts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_forward(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.inetpeer_addr, align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !10

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 69
  %18 = load volatile ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi ptr [ %18, %16 ], [ null, %1 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %566, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 7
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %608

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %608, !prof !9

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48, !prof !10

47:                                               ; preds = %43
  tail call void @__skb_warn_lro_forwarding(ptr noundef %0) #12
  br label %608

48:                                               ; preds = %43, %39, %33
  %49 = getelementptr inbounds %struct.ipv6_devconf, ptr %21, i32 0, i32 46
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 32, i32 46
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef %0)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i16, ptr %25, align 8
  br label %103

61:                                               ; preds = %56
  %62 = icmp eq ptr %20, null
  %63 = tail call ptr @llvm.thread.pointer() #12
  br i1 %62, label %84, label %64, !prof !10

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %66 = load volatile i32, ptr %65, align 4
  %67 = add i32 %66, 512
  store volatile i32 %67, ptr %65, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %68 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #9, !srcloc !12
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.ipstats_mib, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %79 = getelementptr [37 x i64], ptr %75, i32 0, i32 13
  %80 = load i64, ptr %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, ptr %79, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %82 = load i32, ptr %76, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %76, align 4
  tail call fastcc void @local_bh_enable()
  br label %84

84:                                               ; preds = %64, %61
  %85 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %86 = load volatile i32, ptr %85, align 4
  %87 = add i32 %86, 512
  store volatile i32 %87, ptr %85, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %88 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %91 = inttoptr i32 %90 to ptr
  %92 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %91) #9, !srcloc !12
  %93 = add i32 %92, %89
  %94 = inttoptr i32 %93 to ptr
  %95 = getelementptr inbounds %struct.ipstats_mib, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %98 = getelementptr [37 x i64], ptr %94, i32 0, i32 13
  %99 = load i64, ptr %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, ptr %98, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %101 = load i32, ptr %95, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %95, align 4
  tail call fastcc void @local_bh_enable()
  br label %608

103:                                              ; preds = %59, %52, %48
  %104 = phi i16 [ %60, %59 ], [ %26, %52 ], [ %26, %48 ]
  %105 = and i16 %104, 96
  %106 = icmp eq i16 %105, 64
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = and i16 %104, -97
  store i16 %108, ptr %25, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %111 = load i16, ptr %110, align 4
  %112 = and i16 %111, 8
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %121, label %114, !prof !9

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %116 = load i16, ptr %115, align 4
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  %118 = zext i16 %117 to i32
  %119 = tail call fastcc i32 @ip6_call_ra_chain(ptr noundef %0, i32 noundef %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %609

121:                                              ; preds = %114, %109
  %122 = getelementptr inbounds %struct.ipv6hdr, ptr %11, i32 0, i32 4
  %123 = load i8, ptr %122, align 1
  %124 = icmp ult i8 %123, 2
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %12) #12
  %126 = icmp eq ptr %20, null
  %127 = tail call ptr @llvm.thread.pointer() #12
  br i1 %126, label %148, label %128, !prof !10

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %130 = load volatile i32, ptr %129, align 4
  %131 = add i32 %130, 512
  store volatile i32 %131, ptr %129, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %132 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %136 = inttoptr i32 %135 to ptr
  %137 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #9, !srcloc !12
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr inbounds %struct.ipstats_mib, ptr %139, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %143 = getelementptr [37 x i64], ptr %139, i32 0, i32 7
  %144 = load i64, ptr %143, align 8
  %145 = add i64 %144, 1
  store i64 %145, ptr %143, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %146 = load i32, ptr %140, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %140, align 4
  tail call fastcc void @local_bh_enable()
  br label %148

148:                                              ; preds = %128, %125
  %149 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = add i32 %150, 512
  store volatile i32 %151, ptr %149, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %152 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %155 = inttoptr i32 %154 to ptr
  %156 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %155) #9, !srcloc !12
  %157 = add i32 %156, %153
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.ipstats_mib, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr %159, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %162 = getelementptr [37 x i64], ptr %158, i32 0, i32 7
  %163 = load i64, ptr %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, ptr %162, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %165 = load i32, ptr %159, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %159, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %609

167:                                              ; preds = %121
  %168 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %169 = getelementptr inbounds %struct.ipv6_devconf, ptr %168, i32 0, i32 27
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %296, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ipv6hdr, ptr %11, i32 0, i32 6
  %174 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %175 = load ptr, ptr %174, align 8
  %176 = tail call ptr @pneigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef nonnull @init_net, ptr noundef %173, ptr noundef %175, i32 noundef 0) #12
  %177 = icmp eq ptr %176, null
  br i1 %177, label %296, label %178

178:                                              ; preds = %172
  %179 = load ptr, ptr %6, align 8
  %180 = load i16, ptr %8, align 4
  %181 = zext i16 %180 to i32
  %182 = getelementptr i8, ptr %179, i32 %181
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %183 = getelementptr inbounds %struct.ipv6hdr, ptr %182, i32 0, i32 3
  %184 = load i8, ptr %183, align 2
  store i8 %184, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !17
  %185 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %184) #12
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %253, label %189

189:                                              ; preds = %186
  %190 = load i8, ptr %3, align 1
  br label %191

191:                                              ; preds = %189, %178
  %192 = phi i8 [ %190, %189 ], [ %184, %178 ]
  %193 = phi i32 [ %187, %189 ], [ 40, %178 ]
  %194 = icmp eq i8 %192, 58
  br i1 %194, label %195, label %230

195:                                              ; preds = %191
  %196 = load ptr, ptr %6, align 8
  %197 = load i16, ptr %8, align 4
  %198 = zext i16 %197 to i32
  %199 = getelementptr i8, ptr %196, i32 %198
  %200 = getelementptr i8, ptr %199, i32 %193
  %201 = getelementptr i8, ptr %200, i32 1
  %202 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %203 = load ptr, ptr %202, align 4
  %204 = ptrtoint ptr %201 to i32
  %205 = ptrtoint ptr %203 to i32
  %206 = sub i32 %204, %205
  %207 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %208 = load i32, ptr %207, align 8
  %209 = load i32, ptr %36, align 4
  %210 = sub i32 %208, %209
  %211 = icmp ugt i32 %206, %210
  br i1 %211, label %212, label %222, !prof !10

212:                                              ; preds = %195
  %213 = icmp ult i32 %208, %206
  br i1 %213, label %253, label %214, !prof !10

214:                                              ; preds = %212
  %215 = sub i32 %206, %210
  %216 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %215) #12
  %217 = icmp eq ptr %216, null
  br i1 %217, label %253, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr %6, align 8
  %220 = load i16, ptr %8, align 4
  %221 = zext i16 %220 to i32
  br label %222

222:                                              ; preds = %218, %195
  %223 = phi i32 [ %221, %218 ], [ %198, %195 ]
  %224 = phi ptr [ %219, %218 ], [ %196, %195 ]
  %225 = getelementptr i8, ptr %224, i32 %223
  %226 = getelementptr i8, ptr %225, i32 %193
  %227 = load i8, ptr %226, align 4
  %228 = add i8 %227, 118
  %229 = icmp ult i8 %228, -5
  br i1 %229, label %230, label %249

230:                                              ; preds = %222, %191
  %231 = getelementptr inbounds %struct.ipv6hdr, ptr %182, i32 0, i32 6
  %232 = call i32 @__ipv6_addr_type(ptr noundef %231) #12
  %233 = and i32 %232, 32
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %253, label %235

235:                                              ; preds = %230
  %236 = load i32, ptr %5, align 8
  %237 = and i32 %236, -2
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %254, label %239

239:                                              ; preds = %235
  %240 = inttoptr i32 %237 to ptr
  %241 = getelementptr inbounds %struct.dst_entry, ptr %240, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %254, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.dst_ops, ptr %242, i32 0, i32 10
  %246 = load ptr, ptr %245, align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %244
  call void %246(ptr noundef %0) #12
  br label %254

249:                                              ; preds = %222
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %250 = load i8, ptr %122, align 1
  %251 = add i8 %250, -1
  store i8 %251, ptr %122, align 1
  %252 = call i32 @ip6_input(ptr noundef %0) #12
  br label %609

253:                                              ; preds = %230, %214, %212, %186
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %296

254:                                              ; preds = %248, %244, %239, %235
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %255 = icmp eq ptr %20, null
  %256 = tail call ptr @llvm.thread.pointer() #12
  br i1 %255, label %277, label %257, !prof !10

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 1
  %259 = load volatile i32, ptr %258, align 4
  %260 = add i32 %259, 512
  store volatile i32 %260, ptr %258, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %261 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = ptrtoint ptr %262 to i32
  %264 = call i32 @llvm.read_register.i32(metadata !0) #12
  %265 = inttoptr i32 %264 to ptr
  %266 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %265) #9, !srcloc !12
  %267 = add i32 %266, %263
  %268 = inttoptr i32 %267 to ptr
  %269 = getelementptr inbounds %struct.ipstats_mib, ptr %268, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, 1
  store i32 %271, ptr %269, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %272 = getelementptr [37 x i64], ptr %268, i32 0, i32 13
  %273 = load i64, ptr %272, align 8
  %274 = add i64 %273, 1
  store i64 %274, ptr %272, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %275 = load i32, ptr %269, align 4
  %276 = add i32 %275, 1
  store i32 %276, ptr %269, align 4
  call fastcc void @local_bh_enable()
  br label %277

277:                                              ; preds = %257, %254
  %278 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 1
  %279 = load volatile i32, ptr %278, align 4
  %280 = add i32 %279, 512
  store volatile i32 %280, ptr %278, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %281 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %282 = ptrtoint ptr %281 to i32
  %283 = call i32 @llvm.read_register.i32(metadata !0) #12
  %284 = inttoptr i32 %283 to ptr
  %285 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %284) #9, !srcloc !12
  %286 = add i32 %285, %282
  %287 = inttoptr i32 %286 to ptr
  %288 = getelementptr inbounds %struct.ipstats_mib, ptr %287, i32 0, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = add i32 %289, 1
  store i32 %290, ptr %288, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %291 = getelementptr [37 x i64], ptr %287, i32 0, i32 13
  %292 = load i64, ptr %291, align 8
  %293 = add i64 %292, 1
  store i64 %293, ptr %291, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %294 = load i32, ptr %288, align 4
  %295 = add i32 %294, 1
  store i32 %295, ptr %288, align 4
  call fastcc void @local_bh_enable()
  br label %608

296:                                              ; preds = %253, %172, %167
  %297 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %298 = and i8 %297, 2
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %296
  %301 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 1), align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %364, label %303

303:                                              ; preds = %300
  %304 = load i32, ptr %5, align 8
  %305 = and i32 %304, -2
  %306 = inttoptr i32 %305 to ptr
  %307 = getelementptr inbounds %struct.dst_entry, ptr %306, i32 0, i32 7
  %308 = load i16, ptr %307, align 4
  %309 = and i16 %308, 2
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %319, label %364

311:                                              ; preds = %296
  %312 = load i32, ptr %5, align 8
  %313 = and i32 %312, -2
  %314 = inttoptr i32 %313 to ptr
  %315 = getelementptr inbounds %struct.dst_entry, ptr %314, i32 0, i32 7
  %316 = load i16, ptr %315, align 4
  %317 = and i16 %316, 2
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %319, label %364

319:                                              ; preds = %311, %303
  %320 = call i32 @__xfrm_route_forward(ptr noundef %0, i16 noundef zeroext 10) #12
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %364

322:                                              ; preds = %319
  %323 = icmp eq ptr %20, null
  %324 = tail call ptr @llvm.thread.pointer() #12
  br i1 %323, label %345, label %325, !prof !10

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 1
  %327 = load volatile i32, ptr %326, align 4
  %328 = add i32 %327, 512
  store volatile i32 %328, ptr %326, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %329 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = ptrtoint ptr %330 to i32
  %332 = call i32 @llvm.read_register.i32(metadata !0) #12
  %333 = inttoptr i32 %332 to ptr
  %334 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %333) #9, !srcloc !12
  %335 = add i32 %334, %331
  %336 = inttoptr i32 %335 to ptr
  %337 = getelementptr inbounds %struct.ipstats_mib, ptr %336, i32 0, i32 1
  %338 = load i32, ptr %337, align 4
  %339 = add i32 %338, 1
  store i32 %339, ptr %337, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %340 = getelementptr [37 x i64], ptr %336, i32 0, i32 13
  %341 = load i64, ptr %340, align 8
  %342 = add i64 %341, 1
  store i64 %342, ptr %340, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %343 = load i32, ptr %337, align 4
  %344 = add i32 %343, 1
  store i32 %344, ptr %337, align 4
  call fastcc void @local_bh_enable()
  br label %345

345:                                              ; preds = %325, %322
  %346 = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 1
  %347 = load volatile i32, ptr %346, align 4
  %348 = add i32 %347, 512
  store volatile i32 %348, ptr %346, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %349 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %350 = ptrtoint ptr %349 to i32
  %351 = call i32 @llvm.read_register.i32(metadata !0) #12
  %352 = inttoptr i32 %351 to ptr
  %353 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %352) #9, !srcloc !12
  %354 = add i32 %353, %350
  %355 = inttoptr i32 %354 to ptr
  %356 = getelementptr inbounds %struct.ipstats_mib, ptr %355, i32 0, i32 1
  %357 = load i32, ptr %356, align 4
  %358 = add i32 %357, 1
  store i32 %358, ptr %356, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %359 = getelementptr [37 x i64], ptr %355, i32 0, i32 13
  %360 = load i64, ptr %359, align 8
  %361 = add i64 %360, 1
  store i64 %361, ptr %359, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %362 = load i32, ptr %356, align 4
  %363 = add i32 %362, 1
  store i32 %363, ptr %356, align 4
  call fastcc void @local_bh_enable()
  br label %608

364:                                              ; preds = %319, %311, %303, %300
  %365 = load i32, ptr %5, align 8
  %366 = and i32 %365, -2
  %367 = inttoptr i32 %366 to ptr
  %368 = load i32, ptr %12, align 8
  %369 = load ptr, ptr %367, align 4
  %370 = getelementptr inbounds %struct.net_device, ptr %369, i32 0, i32 17
  %371 = load i32, ptr %370, align 4
  %372 = icmp eq i32 %368, %371
  br i1 %372, label %373, label %407

373:                                              ; preds = %364
  %374 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %375 = load i16, ptr %374, align 4
  %376 = icmp eq i16 %375, 0
  br i1 %376, label %377, label %407

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %379 = load i8, ptr %378, align 1
  %380 = and i8 %379, 1
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %391, label %382

382:                                              ; preds = %377
  %383 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %384 = load ptr, ptr %383, align 8
  %385 = getelementptr inbounds %struct.skb_ext, ptr %384, i32 0, i32 1
  %386 = load i8, ptr %385, align 1
  %387 = zext i8 %386 to i32
  %388 = shl nuw nsw i32 %387, 3
  %389 = getelementptr i8, ptr %384, i32 %388
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %407

391:                                              ; preds = %382, %377
  %392 = getelementptr inbounds %struct.rt6_info, ptr %367, i32 0, i32 7
  %393 = load i32, ptr %392, align 4
  %394 = getelementptr inbounds %struct.ipv6hdr, ptr %11, i32 0, i32 6
  %395 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 4), align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  %396 = getelementptr inbounds i8, ptr %2, i32 16
  store i32 10, ptr %396, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef align 4 dereferenceable(16) %394, i32 16, i1 false) #12
  %397 = call ptr @inet_getpeer(ptr noundef %395, ptr noundef nonnull %2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %398 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %397, i32 noundef 100) #12
  br i1 %398, label %399, label %404

399:                                              ; preds = %391
  %400 = and i32 %393, 2
  %401 = icmp eq i32 %400, 0
  %402 = getelementptr inbounds %struct.rt6_info, ptr %367, i32 0, i32 5
  %403 = select i1 %401, ptr %394, ptr %402
  call void @ndisc_send_redirect(ptr noundef %0, ptr noundef %403) #12
  br label %404

404:                                              ; preds = %399, %391
  %405 = icmp eq ptr %397, null
  br i1 %405, label %419, label %406

406:                                              ; preds = %404
  call void @inet_putpeer(ptr noundef nonnull %397) #12
  br label %419

407:                                              ; preds = %382, %373, %364
  %408 = getelementptr inbounds %struct.ipv6hdr, ptr %11, i32 0, i32 5
  %409 = call i32 @__ipv6_addr_type(ptr noundef %408) #12
  %410 = and i32 %409, 65535
  %411 = icmp ne i32 %410, 0
  %412 = and i32 %409, 18
  %413 = icmp eq i32 %412, 0
  %414 = and i1 %411, %413
  br i1 %414, label %415, label %566

415:                                              ; preds = %407
  %416 = and i32 %409, 32
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %415
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 2, i32 noundef 0, ptr noundef null, ptr noundef %12) #12
  br label %566

419:                                              ; preds = %415, %406, %404
  %420 = call fastcc i32 @ip6_dst_mtu_maybe_forward(ptr noundef %367)
  %421 = call i32 @llvm.umax.i32(i32 %420, i32 1280)
  %422 = call fastcc zeroext i1 @ip6_pkt_too_big(ptr noundef %0, i32 noundef %421)
  %423 = load ptr, ptr %367, align 4
  br i1 %422, label %424, label %507

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  store ptr %423, ptr %425, align 8
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %421, ptr noundef null, ptr noundef %12) #12
  %426 = icmp eq ptr %20, null
  %427 = tail call ptr @llvm.thread.pointer() #12
  br i1 %426, label %448, label %428, !prof !10

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.thread_info, ptr %427, i32 0, i32 1
  %430 = load volatile i32, ptr %429, align 4
  %431 = add i32 %430, 512
  store volatile i32 %431, ptr %429, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %432 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %433 = load ptr, ptr %432, align 4
  %434 = ptrtoint ptr %433 to i32
  %435 = call i32 @llvm.read_register.i32(metadata !0) #12
  %436 = inttoptr i32 %435 to ptr
  %437 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %436) #9, !srcloc !12
  %438 = add i32 %437, %434
  %439 = inttoptr i32 %438 to ptr
  %440 = getelementptr inbounds %struct.ipstats_mib, ptr %439, i32 0, i32 1
  %441 = load i32, ptr %440, align 4
  %442 = add i32 %441, 1
  store i32 %442, ptr %440, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %443 = getelementptr [37 x i64], ptr %439, i32 0, i32 8
  %444 = load i64, ptr %443, align 8
  %445 = add i64 %444, 1
  store i64 %445, ptr %443, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %446 = load i32, ptr %440, align 4
  %447 = add i32 %446, 1
  store i32 %447, ptr %440, align 4
  call fastcc void @local_bh_enable()
  br label %448

448:                                              ; preds = %428, %424
  %449 = getelementptr inbounds %struct.thread_info, ptr %427, i32 0, i32 1
  %450 = load volatile i32, ptr %449, align 4
  %451 = add i32 %450, 512
  store volatile i32 %451, ptr %449, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %452 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %453 = ptrtoint ptr %452 to i32
  %454 = call i32 @llvm.read_register.i32(metadata !0) #12
  %455 = inttoptr i32 %454 to ptr
  %456 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %455) #9, !srcloc !12
  %457 = add i32 %456, %453
  %458 = inttoptr i32 %457 to ptr
  %459 = getelementptr inbounds %struct.ipstats_mib, ptr %458, i32 0, i32 1
  %460 = load i32, ptr %459, align 4
  %461 = add i32 %460, 1
  store i32 %461, ptr %459, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %462 = getelementptr [37 x i64], ptr %458, i32 0, i32 8
  %463 = load i64, ptr %462, align 8
  %464 = add i64 %463, 1
  store i64 %464, ptr %462, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %465 = load i32, ptr %459, align 4
  %466 = add i32 %465, 1
  store i32 %466, ptr %459, align 4
  call fastcc void @local_bh_enable()
  %467 = getelementptr inbounds %struct.rt6_info, ptr %367, i32 0, i32 6
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %489, label %470, !prof !10

470:                                              ; preds = %448
  %471 = load volatile i32, ptr %449, align 4
  %472 = add i32 %471, 512
  store volatile i32 %472, ptr %449, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %473 = getelementptr inbounds %struct.inet6_dev, ptr %468, i32 0, i32 33, i32 1
  %474 = load ptr, ptr %473, align 4
  %475 = ptrtoint ptr %474 to i32
  %476 = call i32 @llvm.read_register.i32(metadata !0) #12
  %477 = inttoptr i32 %476 to ptr
  %478 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %477) #9, !srcloc !12
  %479 = add i32 %478, %475
  %480 = inttoptr i32 %479 to ptr
  %481 = getelementptr inbounds %struct.ipstats_mib, ptr %480, i32 0, i32 1
  %482 = load i32, ptr %481, align 4
  %483 = add i32 %482, 1
  store i32 %483, ptr %481, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %484 = getelementptr [37 x i64], ptr %480, i32 0, i32 21
  %485 = load i64, ptr %484, align 8
  %486 = add i64 %485, 1
  store i64 %486, ptr %484, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %487 = load i32, ptr %481, align 4
  %488 = add i32 %487, 1
  store i32 %488, ptr %481, align 4
  call fastcc void @local_bh_enable()
  br label %489

489:                                              ; preds = %470, %448
  %490 = load volatile i32, ptr %449, align 4
  %491 = add i32 %490, 512
  store volatile i32 %491, ptr %449, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %492 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %493 = ptrtoint ptr %492 to i32
  %494 = call i32 @llvm.read_register.i32(metadata !0) #12
  %495 = inttoptr i32 %494 to ptr
  %496 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %495) #9, !srcloc !12
  %497 = add i32 %496, %493
  %498 = inttoptr i32 %497 to ptr
  %499 = getelementptr inbounds %struct.ipstats_mib, ptr %498, i32 0, i32 1
  %500 = load i32, ptr %499, align 4
  %501 = add i32 %500, 1
  store i32 %501, ptr %499, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %502 = getelementptr [37 x i64], ptr %498, i32 0, i32 21
  %503 = load i64, ptr %502, align 8
  %504 = add i64 %503, 1
  store i64 %504, ptr %502, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %505 = load i32, ptr %499, align 4
  %506 = add i32 %505, 1
  store i32 %506, ptr %499, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %609

507:                                              ; preds = %419
  %508 = getelementptr inbounds %struct.net_device, ptr %423, i32 0, i32 19
  %509 = load i16, ptr %508, align 2
  %510 = zext i16 %509 to i32
  %511 = call fastcc i32 @skb_cow(ptr noundef %0, i32 noundef %510)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %557, label %513

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.rt6_info, ptr %367, i32 0, i32 6
  %515 = load ptr, ptr %514, align 4
  %516 = icmp eq ptr %515, null
  %517 = tail call ptr @llvm.thread.pointer() #12
  br i1 %516, label %538, label %518, !prof !10

518:                                              ; preds = %513
  %519 = getelementptr inbounds %struct.thread_info, ptr %517, i32 0, i32 1
  %520 = load volatile i32, ptr %519, align 4
  %521 = add i32 %520, 512
  store volatile i32 %521, ptr %519, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %522 = getelementptr inbounds %struct.inet6_dev, ptr %515, i32 0, i32 33, i32 1
  %523 = load ptr, ptr %522, align 4
  %524 = ptrtoint ptr %523 to i32
  %525 = call i32 @llvm.read_register.i32(metadata !0) #12
  %526 = inttoptr i32 %525 to ptr
  %527 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %526) #9, !srcloc !12
  %528 = add i32 %527, %524
  %529 = inttoptr i32 %528 to ptr
  %530 = getelementptr inbounds %struct.ipstats_mib, ptr %529, i32 0, i32 1
  %531 = load i32, ptr %530, align 4
  %532 = add i32 %531, 1
  store i32 %532, ptr %530, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %533 = getelementptr [37 x i64], ptr %529, i32 0, i32 14
  %534 = load i64, ptr %533, align 8
  %535 = add i64 %534, 1
  store i64 %535, ptr %533, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %536 = load i32, ptr %530, align 4
  %537 = add i32 %536, 1
  store i32 %537, ptr %530, align 4
  call fastcc void @local_bh_enable()
  br label %538

538:                                              ; preds = %518, %513
  %539 = getelementptr inbounds %struct.thread_info, ptr %517, i32 0, i32 1
  %540 = load volatile i32, ptr %539, align 4
  %541 = add i32 %540, 512
  store volatile i32 %541, ptr %539, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %542 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %543 = ptrtoint ptr %542 to i32
  %544 = call i32 @llvm.read_register.i32(metadata !0) #12
  %545 = inttoptr i32 %544 to ptr
  %546 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %545) #9, !srcloc !12
  %547 = add i32 %546, %543
  %548 = inttoptr i32 %547 to ptr
  %549 = getelementptr inbounds %struct.ipstats_mib, ptr %548, i32 0, i32 1
  %550 = load i32, ptr %549, align 4
  %551 = add i32 %550, 1
  store i32 %551, ptr %549, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %552 = getelementptr [37 x i64], ptr %548, i32 0, i32 14
  %553 = load i64, ptr %552, align 8
  %554 = add i64 %553, 1
  store i64 %554, ptr %552, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %555 = load i32, ptr %549, align 4
  %556 = add i32 %555, 1
  store i32 %556, ptr %549, align 4
  call fastcc void @local_bh_enable()
  br label %608

557:                                              ; preds = %507
  %558 = load ptr, ptr %6, align 8
  %559 = load i16, ptr %8, align 4
  %560 = zext i16 %559 to i32
  %561 = getelementptr i8, ptr %558, i32 %560
  %562 = getelementptr inbounds %struct.ipv6hdr, ptr %561, i32 0, i32 4
  %563 = load i8, ptr %562, align 1
  %564 = add i8 %563, -1
  store i8 %564, ptr %562, align 1
  %565 = call fastcc i32 @ip6_forward_finish(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %0) #12, !callees !20
  br label %609

566:                                              ; preds = %418, %407, %19
  %567 = icmp eq ptr %20, null
  %568 = tail call ptr @llvm.thread.pointer() #12
  br i1 %567, label %589, label %569, !prof !10

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.thread_info, ptr %568, i32 0, i32 1
  %571 = load volatile i32, ptr %570, align 4
  %572 = add i32 %571, 512
  store volatile i32 %572, ptr %570, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %573 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %574 = load ptr, ptr %573, align 4
  %575 = ptrtoint ptr %574 to i32
  %576 = call i32 @llvm.read_register.i32(metadata !0) #12
  %577 = inttoptr i32 %576 to ptr
  %578 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %577) #9, !srcloc !12
  %579 = add i32 %578, %575
  %580 = inttoptr i32 %579 to ptr
  %581 = getelementptr inbounds %struct.ipstats_mib, ptr %580, i32 0, i32 1
  %582 = load i32, ptr %581, align 4
  %583 = add i32 %582, 1
  store i32 %583, ptr %581, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %584 = getelementptr [37 x i64], ptr %580, i32 0, i32 10
  %585 = load i64, ptr %584, align 8
  %586 = add i64 %585, 1
  store i64 %586, ptr %584, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %587 = load i32, ptr %581, align 4
  %588 = add i32 %587, 1
  store i32 %588, ptr %581, align 4
  call fastcc void @local_bh_enable()
  br label %589

589:                                              ; preds = %569, %566
  %590 = getelementptr inbounds %struct.thread_info, ptr %568, i32 0, i32 1
  %591 = load volatile i32, ptr %590, align 4
  %592 = add i32 %591, 512
  store volatile i32 %592, ptr %590, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %593 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %594 = ptrtoint ptr %593 to i32
  %595 = call i32 @llvm.read_register.i32(metadata !0) #12
  %596 = inttoptr i32 %595 to ptr
  %597 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %596) #9, !srcloc !12
  %598 = add i32 %597, %594
  %599 = inttoptr i32 %598 to ptr
  %600 = getelementptr inbounds %struct.ipstats_mib, ptr %599, i32 0, i32 1
  %601 = load i32, ptr %600, align 4
  %602 = add i32 %601, 1
  store i32 %602, ptr %600, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %603 = getelementptr [37 x i64], ptr %599, i32 0, i32 10
  %604 = load i64, ptr %603, align 8
  %605 = add i64 %604, 1
  store i64 %605, ptr %603, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %606 = load i32, ptr %600, align 4
  %607 = add i32 %606, 1
  store i32 %607, ptr %600, align 4
  call fastcc void @local_bh_enable()
  br label %608

608:                                              ; preds = %589, %538, %345, %277, %84, %47, %29, %24
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #12
  br label %609

609:                                              ; preds = %608, %557, %489, %249, %148, %114
  %610 = phi i32 [ -22, %608 ], [ -110, %148 ], [ -90, %489 ], [ %565, %557 ], [ 0, %114 ], [ %252, %249 ]
  ret i32 %610
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %0) unnamed_addr #2 {
  %2 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %3 = and i8 %2, 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 2), align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %8, %5
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = inttoptr i32 %16 to ptr
  %20 = getelementptr inbounds %struct.dst_entry, ptr %19, i32 0, i32 7
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %35, label %39

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = inttoptr i32 %27 to ptr
  %31 = getelementptr inbounds %struct.dst_entry, ptr %30, i32 0, i32 7
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %24, %18, %13
  %36 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 2, ptr noundef %0, i16 noundef zeroext 10) #12
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %35, %29, %18, %8
  %40 = phi i32 [ 1, %18 ], [ 1, %8 ], [ 1, %29 ], [ %38, %35 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_call_ra_chain(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @ip6_ra_lock) #12
  %3 = load ptr, ptr @ip6_ra_chain, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %35, %5
  %8 = phi ptr [ %3, %5 ], [ %37, %35 ]
  %9 = phi ptr [ null, %5 ], [ %36, %35 ]
  %10 = getelementptr inbounds %struct.ip6_ra_chain, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ip6_ra_chain, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %17
  %27 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %28 = load volatile i8, ptr %27, align 2
  %29 = icmp eq ptr %9, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @rawv6_rcv(ptr noundef nonnull %9, ptr noundef nonnull %31) #12
  br label %35

35:                                               ; preds = %33, %30, %26, %21, %13, %7
  %36 = phi ptr [ %9, %21 ], [ %9, %13 ], [ %9, %7 ], [ %11, %26 ], [ %11, %33 ], [ %11, %30 ]
  %37 = load ptr, ptr %8, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %7

39:                                               ; preds = %35
  %40 = icmp eq ptr %36, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = tail call i32 @rawv6_rcv(ptr noundef nonnull %36, ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ip6_ra_lock) #12, !srcloc !22
  %43 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @ip6_ra_lock) #12, !srcloc !23
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !25
  br label %47

47:                                               ; preds = %46, %41
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %54

48:                                               ; preds = %39, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ip6_ra_lock) #12, !srcloc !22
  %49 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @ip6_ra_lock) #12, !srcloc !23
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !25
  br label %53

53:                                               ; preds = %52, %48
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ 1, %47 ], [ 0, %53 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_input(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_send_redirect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_dst_mtu_maybe_forward(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr i32, ptr %5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 69
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 32, i32 2
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ 1280, %13 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %11, %9 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ip6_pkt_too_big(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %8 = load i16, ptr %7, align 4
  %9 = icmp ne i16 %8, 0
  %10 = zext i16 %8 to i32
  %11 = icmp ugt i32 %10, %1
  %12 = and i1 %9, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 4
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %0, i32 noundef %1) #12
  br i1 %25, label %27, label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26, %24, %13, %6, %2
  %28 = phi i1 [ true, %26 ], [ false, %2 ], [ true, %6 ], [ false, %13 ], [ false, %24 ]
  ret i1 %28
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = icmp ne i32 %12, 1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %7 ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %23) #12
  %25 = or i32 %24, %16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = add i32 %24, 63
  %29 = and i32 %28, -64
  %30 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %29, i32 noundef 0, i32 noundef 2592) #12
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi i32 [ %30, %27 ], [ 0, %15 ]
  ret i32 %32
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_forward_finish(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = tail call ptr @llvm.thread.pointer() #12
  br i1 %10, label %32, label %12, !prof !10

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = add i32 %14, 512
  store volatile i32 %15, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #9, !srcloc !12
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.ipstats_mib, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %27 = getelementptr [37 x i64], ptr %23, i32 0, i32 4
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %30 = load i32, ptr %24, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %24, align 4
  tail call fastcc void @local_bh_enable()
  br label %32

32:                                               ; preds = %12, %3
  %33 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = add i32 %34, 512
  store volatile i32 %35, ptr %33, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %36 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #9, !srcloc !12
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %47 = getelementptr [37 x i64], ptr %43, i32 0, i32 4
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, ptr %47, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %50 = load i32, ptr %44, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %44, align 4
  tail call fastcc void @local_bh_enable()
  %52 = load ptr, ptr %8, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54, !prof !10

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.inet6_dev, ptr %52, i32 0, i32 33, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr [37 x i64], ptr %59, i32 0, i32 6
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #9, !srcloc !12
  %65 = add i32 %64, %61
  %66 = inttoptr i32 %65 to ptr
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %57
  store i64 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %54, %32
  %70 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = zext i32 %71 to i64
  %73 = load ptr, ptr %36, align 4
  %74 = getelementptr [37 x i64], ptr %73, i32 0, i32 6
  %75 = ptrtoint ptr %74 to i32
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #9, !srcloc !12
  %79 = add i32 %78, %75
  %80 = inttoptr i32 %79 to ptr
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %81, %72
  store i64 %82, ptr %80, align 8
  %83 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 3
  %84 = load i16, ptr %83, align 2
  %85 = and i16 %84, 4096
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %69
  tail call void @consume_skb(ptr noundef %2) #12
  br label %96

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  store i64 0, ptr %89, align 8
  %90 = load i32, ptr %4, align 8
  %91 = and i32 %90, -2
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.dst_entry, ptr %92, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 %94(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %96

96:                                               ; preds = %88, %87
  %97 = phi i32 [ 0, %87 ], [ %95, %88 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_fraglist_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i8 noundef zeroext %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  store i8 44, ptr %2, align 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call ptr @kmemdup(ptr noundef %12, i32 noundef %1, i32 noundef 2592) #12
  store ptr %13, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %5, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 6
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %5, i32 0, i32 2
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %5, i32 0, i32 3
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %5, i32 0, i32 4
  store i32 %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %5, i32 0, i32 5
  store i8 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = sub i32 %28, %1
  store i32 %29, ptr %27, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !29
  unreachable

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %1
  %38 = getelementptr i8, ptr %37, i32 -8
  %39 = sub i32 0, %1
  %40 = getelementptr i8, ptr %38, i32 %39
  store ptr %40, ptr %35, align 4
  %41 = add i32 %28, 8
  store i32 %41, ptr %27, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = ptrtoint ptr %40 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %9, align 4
  %47 = and i32 %45, 65535
  %48 = getelementptr i8, ptr %42, i32 %47
  %49 = load ptr, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr align 4 %49, i32 %1, i1 false)
  store i8 %3, ptr %38, align 4
  %50 = getelementptr inbounds %struct.frag_hdr, ptr %38, i32 0, i32 1
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.frag_hdr, ptr %38, i32 0, i32 2
  store i16 256, ptr %51, align 2
  %52 = getelementptr inbounds %struct.frag_hdr, ptr %38, i32 0, i32 3
  store i32 %4, ptr %52, align 4
  %53 = load i32, ptr %27, align 8
  %54 = load i32, ptr %30, align 4
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %34
  %60 = zext i8 %57 to i32
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ %64, %61 ], [ %60, %59 ]
  %63 = phi i32 [ %67, %61 ], [ 0, %59 ]
  %64 = add nsw i32 %62, -1
  %65 = getelementptr %struct.skb_shared_info, ptr %55, i32 0, i32 12, i32 %64, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %63
  %68 = icmp ugt i32 %62, 1
  br i1 %68, label %61, label %69

69:                                               ; preds = %61, %34
  %70 = phi i32 [ 0, %34 ], [ %67, %61 ]
  %71 = sub i32 %53, %54
  %72 = add i32 %70, %71
  store i32 %70, ptr %30, align 4
  store i32 %72, ptr %27, align 8
  %73 = trunc i32 %72 to i16
  %74 = add i16 %73, -40
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %76 = load ptr, ptr %7, align 8
  %77 = load i16, ptr %9, align 4
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %76, i32 %78
  %80 = getelementptr inbounds %struct.ipv6hdr, ptr %79, i32 0, i32 2
  store i16 %75, ptr %80, align 4
  br label %81

81:                                               ; preds = %69, %6
  %82 = phi i32 [ 0, %69 ], [ -12, %6 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_fraglist_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 0, %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, -97
  store i16 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  store i16 %18, ptr %19, align 2
  %20 = getelementptr i8, ptr %12, i32 -8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 8
  %24 = getelementptr i8, ptr %20, i32 %7
  store ptr %24, ptr %11, align 4
  %25 = add i32 %23, %6
  store i32 %25, ptr %21, align 8
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %26, %16
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 18
  store i16 %28, ptr %29, align 4
  %30 = and i32 %27, 65535
  %31 = getelementptr i8, ptr %14, i32 %30
  %32 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 4 %32, i32 %6, i1 false)
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 -8, %6
  %38 = add i32 %37, %34
  %39 = add i32 %38, %36
  store i32 %39, ptr %35, align 4
  %40 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %1, i32 0, i32 5
  %41 = load i8, ptr %40, align 4
  store i8 %41, ptr %20, align 4
  %42 = getelementptr i8, ptr %12, i32 -7
  store i8 0, ptr %42, align 1
  %43 = load i32, ptr %35, align 4
  %44 = trunc i32 %43 to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = getelementptr i8, ptr %12, i32 -6
  store i16 %45, ptr %46, align 2
  %47 = load ptr, ptr %4, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %2
  %50 = or i16 %45, 256
  store i16 %50, ptr %46, align 2
  br label %51

51:                                               ; preds = %49, %2
  %52 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %1, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %12, i32 -4
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %21, align 8
  %56 = trunc i32 %55 to i16
  %57 = add i16 %56, -40
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %59 = load ptr, ptr %13, align 8
  %60 = load i16, ptr %29, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %59, i32 %61
  %63 = getelementptr inbounds %struct.ipv6hdr, ptr %62, i32 0, i32 2
  store i16 %58, ptr %63, align 4
  tail call fastcc void @ip6_copy_metadata(ptr noundef %4, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_copy_metadata(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %6 = and i16 %4, 7
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, -8
  %9 = or i16 %8, %6
  store i16 %9, ptr %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %14 = load i16, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = and i32 %17, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = and i32 %17, -2
  %24 = inttoptr i32 %23 to ptr
  tail call void @dst_release(ptr noundef %24) #12
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, ptr %16, align 8
  br label %26

26:                                               ; preds = %25, %2
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = inttoptr i32 %29 to ptr
  %33 = getelementptr inbounds %struct.dst_entry, ptr %32, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #12, !srcloc !22
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 0, i32 1, ptr elementtype(i32) %33) #12, !srcloc !31
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  br label %39

38:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %39

39:                                               ; preds = %38, %37, %26
  %40 = icmp ne i32 %29, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %43 = load i16, ptr %42, align 2
  %44 = lshr i16 %43, 14
  %45 = trunc i16 %44 to i8
  %46 = and i8 %45, 1
  %47 = or i8 %46, %41
  %48 = zext i8 %47 to i16
  %49 = shl nuw nsw i16 %48, 14
  %50 = and i16 %43, -16385
  %51 = or i16 %49, %50
  store i16 %51, ptr %42, align 2
  store i32 %29, ptr %16, align 8
  %52 = getelementptr inbounds %struct.anon.76, ptr %1, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  store ptr %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 %59, ptr %60, align 8
  %61 = load i16, ptr %3, align 8
  %62 = and i16 %61, 512
  %63 = load i16, ptr %5, align 8
  %64 = and i16 %63, -513
  %65 = or i16 %64, %62
  store i16 %65, ptr %5, align 8
  %66 = load i16, ptr %3, align 8
  %67 = and i16 %66, 256
  %68 = and i16 %65, -257
  %69 = or i16 %68, %67
  store i16 %69, ptr %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %71 = load i16, ptr %70, align 2
  %72 = and i16 %71, 16384
  %73 = or i16 %72, %50
  store i16 %73, ptr %42, align 2
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %39
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %79 = load ptr, ptr %78, align 8
  tail call void @__skb_ext_put(ptr noundef %79) #12
  br label %80

80:                                               ; preds = %77, %39
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr %74, align 1
  %83 = load i8, ptr %81, align 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %87 = load ptr, ptr %86, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #12, !srcloc !22
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #12, !srcloc !33
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !10

91:                                               ; preds = %85
  %92 = add i32 %89, 1
  %93 = or i32 %92, %89
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %97, label %95, !prof !9

95:                                               ; preds = %91, %85
  %96 = phi i32 [ 2, %85 ], [ 1, %91 ]
  tail call void @refcount_warn_saturate(ptr noundef %87, i32 noundef %96) #12
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  store ptr %87, ptr %98, align 8
  br label %99

99:                                               ; preds = %97, %80
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ip6_frag_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7, ptr nocapture noundef writeonly %8) #7 {
  store ptr %5, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 9
  store i8 %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 8
  store i32 %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 1
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 2
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %15, %1
  %17 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 5
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 6
  store i32 %4, ptr %19, align 4
  %20 = zext i16 %3 to i32
  %21 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 7
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ip6_frag_state, ptr %8, i32 0, i32 4
  store i32 0, ptr %22, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip6_frag_next(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %5, %7
  %9 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %10 = and i32 %9, -8
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %11, 8
  %19 = add i32 %18, %13
  %20 = add i32 %19, %15
  %21 = add i32 %20, %17
  %22 = tail call ptr @__alloc_skb(i32 noundef %21, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %121, label %24

24:                                               ; preds = %2
  tail call fastcc void @ip6_copy_metadata(ptr noundef nonnull %22, ptr noundef %0)
  %25 = load i32, ptr %14, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 %25
  store ptr %31, ptr %29, align 8
  %32 = load i32, ptr %12, align 4
  %33 = add i32 %18, %32
  %34 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %33) #12
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %35 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 18
  store i16 %41, ptr %42, align 4
  %43 = and i32 %40, 65535
  %44 = getelementptr i8, ptr %37, i32 %43
  %45 = load i32, ptr %12, align 4
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = trunc i32 %45 to i16
  %48 = add i16 %47, 8
  %49 = add i16 %48, %41
  %50 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 17
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %24
  tail call void @skb_set_owner_w(ptr noundef nonnull %22, ptr noundef nonnull %52) #12
  %55 = load ptr, ptr %36, align 8
  %56 = load i16, ptr %42, align 4
  br label %57

57:                                               ; preds = %54, %24
  %58 = phi i16 [ %56, %54 ], [ %41, %24 ]
  %59 = phi ptr [ %55, %54 ], [ %37, %24 ]
  %60 = zext i16 %58 to i32
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = load i32, ptr %12, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %64 = load ptr, ptr %63, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %64, i32 %62, i1 false) #12
  %65 = load ptr, ptr %36, align 8
  %66 = load i16, ptr %42, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %72 = load i16, ptr %71, align 4
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %70, i32 %73
  %75 = ptrtoint ptr %3 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  %78 = getelementptr i8, ptr %68, i32 %77
  store i8 44, ptr %78, align 1
  %79 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 9
  %80 = load i8, ptr %79, align 4
  store i8 %80, ptr %46, align 4
  %81 = getelementptr inbounds %struct.frag_hdr, ptr %46, i32 0, i32 1
  store i8 0, ptr %81, align 1
  %82 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.frag_hdr, ptr %46, i32 0, i32 3
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %36, align 8
  %88 = load i16, ptr %50, align 2
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %87, i32 %89
  %91 = tail call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %86, ptr noundef %90, i32 noundef %11) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93, !prof !9

93:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 794, 0\0A.popsection", ""() #12, !srcloc !34
  unreachable

94:                                               ; preds = %57
  %95 = load i32, ptr %4, align 4
  %96 = sub i32 %95, %11
  store i32 %96, ptr %4, align 4
  %97 = getelementptr inbounds %struct.ip6_frag_state, ptr %1, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = trunc i32 %98 to i16
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %101 = getelementptr inbounds %struct.frag_hdr, ptr %46, i32 0, i32 2
  store i16 %100, ptr %101, align 2
  %102 = load i32, ptr %4, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %94
  %105 = or i16 %100, 256
  store i16 %105, ptr %101, align 2
  br label %106

106:                                              ; preds = %104, %94
  %107 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 5
  %108 = load i32, ptr %107, align 8
  %109 = trunc i32 %108 to i16
  %110 = add i16 %109, -40
  %111 = tail call i16 @llvm.bswap.i16(i16 %110)
  %112 = load ptr, ptr %36, align 8
  %113 = load i16, ptr %42, align 4
  %114 = zext i16 %113 to i32
  %115 = getelementptr i8, ptr %112, i32 %114
  %116 = getelementptr inbounds %struct.ipv6hdr, ptr %115, i32 0, i32 2
  store i16 %111, ptr %116, align 4
  %117 = load i32, ptr %85, align 4
  %118 = add i32 %117, %11
  store i32 %118, ptr %85, align 4
  %119 = load i32, ptr %97, align 4
  %120 = add i32 %119, %11
  store i32 %120, ptr %97, align 4
  br label %121

121:                                              ; preds = %106, %2
  %122 = phi ptr [ %22, %106 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ip6_frag_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.ip6_fraglist_iter, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -2
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #9, !srcloc !12
  %19 = add i32 %18, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10) to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = load volatile i16, ptr %20, align 2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.sock_common, ptr %24, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, -4161
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.inet_sock, ptr %24, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %23, %15, %4
  %35 = phi ptr [ null, %15 ], [ null, %4 ], [ %33, %31 ], [ null, %23 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !17
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %37 = load i64, ptr %36, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !17
  %38 = call i32 @ip6_find_1stfragopt(ptr noundef %2, ptr noundef nonnull %6) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %592, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %6, align 4
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = ptrtoint ptr %41 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %49, %50
  %52 = load ptr, ptr %12, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %40
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %55 = call i32 @llvm.read_register.i32(metadata !0) #12
  %56 = inttoptr i32 %55 to ptr
  %57 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #9, !srcloc !12
  %58 = add i32 %57, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10) to i32)
  %59 = inttoptr i32 %58 to ptr
  %60 = load volatile i16, ptr %59, align 2
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load ptr, ptr %12, align 4
  %64 = getelementptr inbounds %struct.sock_common, ptr %63, i32 0, i32 4
  %65 = load volatile i8, ptr %64, align 2
  %66 = zext i8 %65 to i32
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, -4161
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62, %54, %40
  %71 = load i32, ptr %8, align 8
  %72 = and i32 %71, -2
  %73 = inttoptr i32 %72 to ptr
  br label %90

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.inet_sock, ptr %63, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = load i32, ptr %8, align 8
  %78 = and i32 %77, -2
  %79 = inttoptr i32 %78 to ptr
  %80 = icmp eq ptr %76, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.ipv6_pinfo, ptr %76, i32 0, i32 9
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, 56
  %85 = icmp ugt i16 %84, 16
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load ptr, ptr %79, align 4
  %88 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 20
  %89 = load volatile i32, ptr %88, align 4
  br label %97

90:                                               ; preds = %81, %74, %70
  %91 = phi ptr [ %73, %70 ], [ %79, %81 ], [ %79, %74 ]
  %92 = getelementptr inbounds %struct.dst_entry, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.dst_ops, ptr %93, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef %91) #12
  br label %97

97:                                               ; preds = %90, %86
  %98 = phi i32 [ %89, %86 ], [ %96, %90 ]
  %99 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %100 = load i16, ptr %99, align 8
  %101 = and i16 %100, 8
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = icmp ugt i32 %105, %98
  br i1 %106, label %567, label %107, !prof !10

107:                                              ; preds = %103, %97
  %108 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  %109 = load i16, ptr %108, align 4
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = zext i16 %109 to i32
  %113 = icmp ult i32 %98, %112
  br i1 %113, label %567, label %114

114:                                              ; preds = %111
  %115 = call i32 @llvm.umax.i32(i32 %112, i32 1280)
  br label %116

116:                                              ; preds = %114, %107
  %117 = phi i32 [ %115, %114 ], [ %98, %107 ]
  %118 = icmp eq ptr %35, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = icmp uge i32 %121, %117
  %123 = icmp eq i32 %121, 0
  %124 = or i1 %122, %123
  %125 = select i1 %124, i32 %117, i32 %121
  br label %126

126:                                              ; preds = %119, %116
  %127 = phi i32 [ %117, %116 ], [ %125, %119 ]
  %128 = add nuw i32 %38, 16
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %567, label %130

130:                                              ; preds = %126
  %131 = sub nuw i32 -8, %38
  %132 = add i32 %131, %127
  %133 = load ptr, ptr %43, align 8
  %134 = load i16, ptr %45, align 4
  %135 = zext i16 %134 to i32
  %136 = getelementptr i8, ptr %133, i32 %135
  %137 = getelementptr inbounds %struct.ipv6hdr, ptr %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.ipv6hdr, ptr %136, i32 0, i32 5
  %139 = call i32 @ipv6_select_ident(ptr noundef %0, ptr noundef %137, ptr noundef %138) #12
  %140 = load i16, ptr %99, align 8
  %141 = and i16 %140, 96
  %142 = icmp eq i16 %141, 96
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = call i32 @skb_checksum_help(ptr noundef %2) #12
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %592

146:                                              ; preds = %143, %130
  %147 = phi i32 [ 0, %143 ], [ %38, %130 ]
  %148 = load ptr, ptr %43, align 8
  %149 = load i16, ptr %45, align 4
  %150 = zext i16 %149 to i32
  %151 = getelementptr i8, ptr %148, i32 %150
  %152 = getelementptr i8, ptr %151, i32 %51
  store ptr %152, ptr %6, align 4
  %153 = load ptr, ptr %11, align 4
  %154 = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 19
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i32
  %157 = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 21
  %158 = load i16, ptr %157, align 8
  %159 = zext i16 %158 to i32
  %160 = add nuw nsw i32 %159, %156
  %161 = and i32 %160, 131056
  %162 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.skb_shared_info, ptr %163, i32 0, i32 6
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %438, label %167

167:                                              ; preds = %146
  %168 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %169 = load i32, ptr %168, align 8
  %170 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.skb_shared_info, ptr %163, i32 0, i32 2
  %173 = load i8, ptr %172, align 2
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %167
  %176 = zext i8 %173 to i32
  br label %177

177:                                              ; preds = %177, %175
  %178 = phi i32 [ %180, %177 ], [ %176, %175 ]
  %179 = phi i32 [ %183, %177 ], [ 0, %175 ]
  %180 = add nsw i32 %178, -1
  %181 = getelementptr %struct.skb_shared_info, ptr %163, i32 0, i32 12, i32 %180, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, %179
  %184 = icmp ugt i32 %178, 1
  br i1 %184, label %177, label %185

185:                                              ; preds = %177, %167
  %186 = phi i32 [ 0, %167 ], [ %183, %177 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !17
  %187 = add i32 %38, %171
  %188 = sub i32 %169, %187
  %189 = add i32 %188, %186
  %190 = icmp ule i32 %189, %132
  %191 = and i32 %189, 7
  %192 = icmp eq i32 %191, 0
  %193 = and i1 %190, %192
  br i1 %193, label %194, label %423

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 11
  %196 = load i8, ptr %195, align 2
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.skb_shared_info, ptr %163, i32 0, i32 10
  %201 = load volatile i32, ptr %200, align 4
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %423

204:                                              ; preds = %199, %194
  %205 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %206 = load ptr, ptr %205, align 4
  %207 = ptrtoint ptr %206 to i32
  %208 = ptrtoint ptr %148 to i32
  %209 = sub i32 %207, %208
  %210 = add nuw nsw i32 %161, 24
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %423, label %212

212:                                              ; preds = %204
  %213 = add i32 %38, 24
  %214 = add i32 %213, %161
  %215 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  br label %216

216:                                              ; preds = %250, %212
  %217 = phi ptr [ %165, %212 ], [ %255, %250 ]
  %218 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 5
  %219 = load i32, ptr %218, align 8
  %220 = icmp ugt i32 %219, %132
  br i1 %220, label %404, label %221

221:                                              ; preds = %216
  %222 = and i32 %219, 7
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %217, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %404

227:                                              ; preds = %224, %221
  %228 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 17
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 16
  %231 = load ptr, ptr %230, align 8
  %232 = ptrtoint ptr %229 to i32
  %233 = ptrtoint ptr %231 to i32
  %234 = sub i32 %232, %233
  %235 = icmp ult i32 %234, %214
  br i1 %235, label %404, label %236

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 19
  %238 = load volatile i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %404

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244, !prof !9

244:                                              ; preds = %240
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #12, !srcloc !35
  unreachable

245:                                              ; preds = %240
  %246 = load ptr, ptr %12, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  store ptr %246, ptr %241, align 4
  %249 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_wfree, ptr %249, align 4
  br label %250

250:                                              ; preds = %248, %245
  %251 = getelementptr inbounds %struct.sk_buff, ptr %217, i32 0, i32 18
  %252 = load i32, ptr %251, align 8
  %253 = load i32, ptr %215, align 8
  %254 = sub i32 %253, %252
  store i32 %254, ptr %215, align 8
  %255 = load ptr, ptr %217, align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %216

257:                                              ; preds = %250
  %258 = call i32 @ip6_fraglist_init(ptr noundef %2, i32 noundef %38, ptr noundef %152, i8 noundef zeroext %42, i32 noundef %139, ptr noundef nonnull %7)
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %437, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %7, i32 0, i32 1
  %262 = getelementptr inbounds %struct.rt6_info, ptr %11, i32 0, i32 6
  %263 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %264 = load ptr, ptr %261, align 4
  br label %265

265:                                              ; preds = %319, %260
  %266 = phi ptr [ %320, %319 ], [ %264, %260 ]
  %267 = phi ptr [ %317, %319 ], [ %2, %260 ]
  %268 = icmp eq ptr %266, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %265
  call void @ip6_fraglist_prepare(ptr noundef %267, ptr noundef nonnull %7)
  br label %270

270:                                              ; preds = %269, %265
  %271 = getelementptr inbounds %struct.sk_buff, ptr %267, i32 0, i32 2
  store i64 %37, ptr %271, align 8
  %272 = call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %267) #12
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %361

274:                                              ; preds = %270
  %275 = load ptr, ptr %262, align 4
  %276 = icmp eq ptr %275, null
  %277 = tail call ptr @llvm.thread.pointer() #12
  br i1 %276, label %298, label %278, !prof !10

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 1
  %280 = load volatile i32, ptr %279, align 4
  %281 = add i32 %280, 512
  store volatile i32 %281, ptr %279, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %282 = getelementptr inbounds %struct.inet6_dev, ptr %275, i32 0, i32 33, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = ptrtoint ptr %283 to i32
  %285 = call i32 @llvm.read_register.i32(metadata !0) #12
  %286 = inttoptr i32 %285 to ptr
  %287 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %286) #9, !srcloc !12
  %288 = add i32 %287, %284
  %289 = inttoptr i32 %288 to ptr
  %290 = getelementptr inbounds %struct.ipstats_mib, ptr %289, i32 0, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, 1
  store i32 %292, ptr %290, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %293 = getelementptr [37 x i64], ptr %289, i32 0, i32 22
  %294 = load i64, ptr %293, align 8
  %295 = add i64 %294, 1
  store i64 %295, ptr %293, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %296 = load i32, ptr %290, align 4
  %297 = add i32 %296, 1
  store i32 %297, ptr %290, align 4
  call fastcc void @local_bh_enable()
  br label %298

298:                                              ; preds = %278, %274
  %299 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 1
  %300 = load volatile i32, ptr %299, align 4
  %301 = add i32 %300, 512
  store volatile i32 %301, ptr %299, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %302 = load ptr, ptr %263, align 4
  %303 = ptrtoint ptr %302 to i32
  %304 = call i32 @llvm.read_register.i32(metadata !0) #12
  %305 = inttoptr i32 %304 to ptr
  %306 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %305) #9, !srcloc !12
  %307 = add i32 %306, %303
  %308 = inttoptr i32 %307 to ptr
  %309 = getelementptr inbounds %struct.ipstats_mib, ptr %308, i32 0, i32 1
  %310 = load i32, ptr %309, align 4
  %311 = add i32 %310, 1
  store i32 %311, ptr %309, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %312 = getelementptr [37 x i64], ptr %308, i32 0, i32 22
  %313 = load i64, ptr %312, align 8
  %314 = add i64 %313, 1
  store i64 %314, ptr %312, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %315 = load i32, ptr %309, align 4
  %316 = add i32 %315, 1
  store i32 %316, ptr %309, align 4
  call fastcc void @local_bh_enable()
  %317 = load ptr, ptr %261, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %298
  %320 = load ptr, ptr %317, align 8
  store ptr %320, ptr %261, align 4
  store ptr null, ptr %317, align 8
  br label %265

321:                                              ; preds = %298
  %322 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 1
  %323 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %323) #12
  %324 = load ptr, ptr %262, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %345, label %326, !prof !10

326:                                              ; preds = %321
  %327 = load volatile i32, ptr %322, align 4
  %328 = add i32 %327, 512
  store volatile i32 %328, ptr %322, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %329 = getelementptr inbounds %struct.inet6_dev, ptr %324, i32 0, i32 33, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = ptrtoint ptr %330 to i32
  %332 = call i32 @llvm.read_register.i32(metadata !0) #12
  %333 = inttoptr i32 %332 to ptr
  %334 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %333) #9, !srcloc !12
  %335 = add i32 %334, %331
  %336 = inttoptr i32 %335 to ptr
  %337 = getelementptr inbounds %struct.ipstats_mib, ptr %336, i32 0, i32 1
  %338 = load i32, ptr %337, align 4
  %339 = add i32 %338, 1
  store i32 %339, ptr %337, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %340 = getelementptr [37 x i64], ptr %336, i32 0, i32 20
  %341 = load i64, ptr %340, align 8
  %342 = add i64 %341, 1
  store i64 %342, ptr %340, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %343 = load i32, ptr %337, align 4
  %344 = add i32 %343, 1
  store i32 %344, ptr %337, align 4
  call fastcc void @local_bh_enable()
  br label %345

345:                                              ; preds = %326, %321
  %346 = load volatile i32, ptr %322, align 4
  %347 = add i32 %346, 512
  store volatile i32 %347, ptr %322, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %348 = load ptr, ptr %263, align 4
  %349 = ptrtoint ptr %348 to i32
  %350 = call i32 @llvm.read_register.i32(metadata !0) #12
  %351 = inttoptr i32 %350 to ptr
  %352 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %351) #9, !srcloc !12
  %353 = add i32 %352, %349
  %354 = inttoptr i32 %353 to ptr
  %355 = getelementptr inbounds %struct.ipstats_mib, ptr %354, i32 0, i32 1
  %356 = load i32, ptr %355, align 4
  %357 = add i32 %356, 1
  store i32 %357, ptr %355, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %358 = getelementptr [37 x i64], ptr %354, i32 0, i32 20
  %359 = load i64, ptr %358, align 8
  %360 = add i64 %359, 1
  store i64 %360, ptr %358, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  br label %433

361:                                              ; preds = %270
  %362 = load ptr, ptr %261, align 4
  %363 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %363) #12
  call void @kfree_skb_list(ptr noundef %362) #12
  %364 = load ptr, ptr %262, align 4
  %365 = icmp eq ptr %364, null
  %366 = tail call ptr @llvm.thread.pointer() #12
  br i1 %365, label %387, label %367, !prof !10

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.thread_info, ptr %366, i32 0, i32 1
  %369 = load volatile i32, ptr %368, align 4
  %370 = add i32 %369, 512
  store volatile i32 %370, ptr %368, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %371 = getelementptr inbounds %struct.inet6_dev, ptr %364, i32 0, i32 33, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = ptrtoint ptr %372 to i32
  %374 = call i32 @llvm.read_register.i32(metadata !0) #12
  %375 = inttoptr i32 %374 to ptr
  %376 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %375) #9, !srcloc !12
  %377 = add i32 %376, %373
  %378 = inttoptr i32 %377 to ptr
  %379 = getelementptr inbounds %struct.ipstats_mib, ptr %378, i32 0, i32 1
  %380 = load i32, ptr %379, align 4
  %381 = add i32 %380, 1
  store i32 %381, ptr %379, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %382 = getelementptr [37 x i64], ptr %378, i32 0, i32 21
  %383 = load i64, ptr %382, align 8
  %384 = add i64 %383, 1
  store i64 %384, ptr %382, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %385 = load i32, ptr %379, align 4
  %386 = add i32 %385, 1
  store i32 %386, ptr %379, align 4
  call fastcc void @local_bh_enable()
  br label %387

387:                                              ; preds = %367, %361
  %388 = getelementptr inbounds %struct.thread_info, ptr %366, i32 0, i32 1
  %389 = load volatile i32, ptr %388, align 4
  %390 = add i32 %389, 512
  store volatile i32 %390, ptr %388, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %391 = load ptr, ptr %263, align 4
  %392 = ptrtoint ptr %391 to i32
  %393 = call i32 @llvm.read_register.i32(metadata !0) #12
  %394 = inttoptr i32 %393 to ptr
  %395 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %394) #9, !srcloc !12
  %396 = add i32 %395, %392
  %397 = inttoptr i32 %396 to ptr
  %398 = getelementptr inbounds %struct.ipstats_mib, ptr %397, i32 0, i32 1
  %399 = load i32, ptr %398, align 4
  %400 = add i32 %399, 1
  store i32 %400, ptr %398, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %401 = getelementptr [37 x i64], ptr %397, i32 0, i32 21
  %402 = load i64, ptr %401, align 8
  %403 = add i64 %402, 1
  store i64 %403, ptr %401, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  br label %433

404:                                              ; preds = %236, %227, %224, %216
  %405 = load ptr, ptr %162, align 4
  %406 = getelementptr inbounds %struct.skb_shared_info, ptr %405, i32 0, i32 6
  %407 = load ptr, ptr %406, align 8
  %408 = icmp eq ptr %407, null
  %409 = icmp eq ptr %407, %217
  %410 = select i1 %408, i1 true, i1 %409
  br i1 %410, label %423, label %411

411:                                              ; preds = %411, %404
  %412 = phi ptr [ %419, %411 ], [ %407, %404 ]
  %413 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 1
  store ptr null, ptr %413, align 4
  %414 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %414, align 4
  %415 = getelementptr inbounds %struct.sk_buff, ptr %412, i32 0, i32 18
  %416 = load i32, ptr %415, align 8
  %417 = load i32, ptr %215, align 8
  %418 = add i32 %417, %416
  store i32 %418, ptr %215, align 8
  %419 = load ptr, ptr %412, align 8
  %420 = icmp eq ptr %419, null
  %421 = icmp eq ptr %419, %217
  %422 = select i1 %420, i1 true, i1 %421
  br i1 %422, label %423, label %411

423:                                              ; preds = %411, %404, %204, %199, %185
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  %424 = load ptr, ptr %11, align 4
  %425 = getelementptr inbounds %struct.net_device, ptr %424, i32 0, i32 19
  %426 = load i16, ptr %425, align 2
  %427 = getelementptr inbounds %struct.net_device, ptr %424, i32 0, i32 21
  %428 = load i16, ptr %427, align 8
  %429 = zext i16 %426 to i32
  %430 = zext i16 %428 to i32
  %431 = add nuw nsw i32 %430, %429
  %432 = and i32 %431, 131056
  br label %438

433:                                              ; preds = %387, %345
  %434 = phi ptr [ %355, %345 ], [ %398, %387 ]
  %435 = load i32, ptr %434, align 4
  %436 = add i32 %435, 1
  store i32 %436, ptr %434, align 4
  call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br label %641

437:                                              ; preds = %257
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br label %592

438:                                              ; preds = %423, %146
  %439 = phi i32 [ %432, %423 ], [ %161, %146 ]
  %440 = phi ptr [ %424, %423 ], [ %153, %146 ]
  %441 = getelementptr inbounds %struct.net_device, ptr %440, i32 0, i32 22
  %442 = load i16, ptr %441, align 2
  %443 = add nuw nsw i32 %439, 16
  store ptr %152, ptr %5, align 4
  %444 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 9
  store i8 %42, ptr %444, align 4
  %445 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 8
  store i32 %139, ptr %445, align 4
  %446 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 1
  store i32 %38, ptr %446, align 4
  %447 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 2
  store i32 %132, ptr %447, align 4
  %448 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %449 = load i32, ptr %448, align 8
  %450 = sub i32 %449, %38
  %451 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 3
  store i32 %450, ptr %451, align 4
  %452 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 5
  store i32 %38, ptr %452, align 4
  %453 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 6
  store i32 %443, ptr %453, align 4
  %454 = zext i16 %442 to i32
  %455 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 7
  store i32 %454, ptr %455, align 4
  %456 = getelementptr inbounds %struct.ip6_frag_state, ptr %5, i32 0, i32 4
  store i32 0, ptr %456, align 4
  %457 = icmp eq i32 %449, %38
  br i1 %457, label %518, label %458

458:                                              ; preds = %438
  %459 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  br label %460

460:                                              ; preds = %497, %458
  %461 = call ptr @ip6_frag_next(ptr noundef %2, ptr noundef nonnull %5)
  %462 = icmp ugt ptr %461, inttoptr (i32 -4096 to ptr)
  br i1 %462, label %463, label %465

463:                                              ; preds = %460
  %464 = ptrtoint ptr %461 to i32
  br label %592

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.sk_buff, ptr %461, i32 0, i32 2
  store i64 %37, ptr %466, align 8
  %467 = call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %461) #12
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %592

469:                                              ; preds = %465
  %470 = load i32, ptr %8, align 8
  %471 = and i32 %470, -2
  %472 = inttoptr i32 %471 to ptr
  %473 = getelementptr inbounds %struct.rt6_info, ptr %472, i32 0, i32 6
  %474 = load ptr, ptr %473, align 4
  %475 = icmp eq ptr %474, null
  %476 = tail call ptr @llvm.thread.pointer() #12
  br i1 %475, label %497, label %477, !prof !10

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct.thread_info, ptr %476, i32 0, i32 1
  %479 = load volatile i32, ptr %478, align 4
  %480 = add i32 %479, 512
  store volatile i32 %480, ptr %478, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %481 = getelementptr inbounds %struct.inet6_dev, ptr %474, i32 0, i32 33, i32 1
  %482 = load ptr, ptr %481, align 4
  %483 = ptrtoint ptr %482 to i32
  %484 = call i32 @llvm.read_register.i32(metadata !0) #12
  %485 = inttoptr i32 %484 to ptr
  %486 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %485) #9, !srcloc !12
  %487 = add i32 %486, %483
  %488 = inttoptr i32 %487 to ptr
  %489 = getelementptr inbounds %struct.ipstats_mib, ptr %488, i32 0, i32 1
  %490 = load i32, ptr %489, align 4
  %491 = add i32 %490, 1
  store i32 %491, ptr %489, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %492 = getelementptr [37 x i64], ptr %488, i32 0, i32 22
  %493 = load i64, ptr %492, align 8
  %494 = add i64 %493, 1
  store i64 %494, ptr %492, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %495 = load i32, ptr %489, align 4
  %496 = add i32 %495, 1
  store i32 %496, ptr %489, align 4
  call fastcc void @local_bh_enable()
  br label %497

497:                                              ; preds = %477, %469
  %498 = getelementptr inbounds %struct.thread_info, ptr %476, i32 0, i32 1
  %499 = load volatile i32, ptr %498, align 4
  %500 = add i32 %499, 512
  store volatile i32 %500, ptr %498, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %501 = load ptr, ptr %459, align 4
  %502 = ptrtoint ptr %501 to i32
  %503 = call i32 @llvm.read_register.i32(metadata !0) #12
  %504 = inttoptr i32 %503 to ptr
  %505 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %504) #9, !srcloc !12
  %506 = add i32 %505, %502
  %507 = inttoptr i32 %506 to ptr
  %508 = getelementptr inbounds %struct.ipstats_mib, ptr %507, i32 0, i32 1
  %509 = load i32, ptr %508, align 4
  %510 = add i32 %509, 1
  store i32 %510, ptr %508, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %511 = getelementptr [37 x i64], ptr %507, i32 0, i32 22
  %512 = load i64, ptr %511, align 8
  %513 = add i64 %512, 1
  store i64 %513, ptr %511, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %514 = load i32, ptr %508, align 4
  %515 = add i32 %514, 1
  store i32 %515, ptr %508, align 4
  call fastcc void @local_bh_enable()
  %516 = load i32, ptr %451, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %460

518:                                              ; preds = %497, %438
  %519 = phi i32 [ %147, %438 ], [ 0, %497 ]
  %520 = load i32, ptr %8, align 8
  %521 = and i32 %520, -2
  %522 = inttoptr i32 %521 to ptr
  %523 = getelementptr inbounds %struct.rt6_info, ptr %522, i32 0, i32 6
  %524 = load ptr, ptr %523, align 4
  %525 = icmp eq ptr %524, null
  %526 = tail call ptr @llvm.thread.pointer() #12
  br i1 %525, label %547, label %527, !prof !10

527:                                              ; preds = %518
  %528 = getelementptr inbounds %struct.thread_info, ptr %526, i32 0, i32 1
  %529 = load volatile i32, ptr %528, align 4
  %530 = add i32 %529, 512
  store volatile i32 %530, ptr %528, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %531 = getelementptr inbounds %struct.inet6_dev, ptr %524, i32 0, i32 33, i32 1
  %532 = load ptr, ptr %531, align 4
  %533 = ptrtoint ptr %532 to i32
  %534 = call i32 @llvm.read_register.i32(metadata !0) #12
  %535 = inttoptr i32 %534 to ptr
  %536 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %535) #9, !srcloc !12
  %537 = add i32 %536, %533
  %538 = inttoptr i32 %537 to ptr
  %539 = getelementptr inbounds %struct.ipstats_mib, ptr %538, i32 0, i32 1
  %540 = load i32, ptr %539, align 4
  %541 = add i32 %540, 1
  store i32 %541, ptr %539, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %542 = getelementptr [37 x i64], ptr %538, i32 0, i32 20
  %543 = load i64, ptr %542, align 8
  %544 = add i64 %543, 1
  store i64 %544, ptr %542, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %545 = load i32, ptr %539, align 4
  %546 = add i32 %545, 1
  store i32 %546, ptr %539, align 4
  call fastcc void @local_bh_enable()
  br label %547

547:                                              ; preds = %527, %518
  %548 = getelementptr inbounds %struct.thread_info, ptr %526, i32 0, i32 1
  %549 = load volatile i32, ptr %548, align 4
  %550 = add i32 %549, 512
  store volatile i32 %550, ptr %548, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %551 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %552 = load ptr, ptr %551, align 4
  %553 = ptrtoint ptr %552 to i32
  %554 = call i32 @llvm.read_register.i32(metadata !0) #12
  %555 = inttoptr i32 %554 to ptr
  %556 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %555) #9, !srcloc !12
  %557 = add i32 %556, %553
  %558 = inttoptr i32 %557 to ptr
  %559 = getelementptr inbounds %struct.ipstats_mib, ptr %558, i32 0, i32 1
  %560 = load i32, ptr %559, align 4
  %561 = add i32 %560, 1
  store i32 %561, ptr %559, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %562 = getelementptr [37 x i64], ptr %558, i32 0, i32 20
  %563 = load i64, ptr %562, align 8
  %564 = add i64 %563, 1
  store i64 %564, ptr %562, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %565 = load i32, ptr %559, align 4
  %566 = add i32 %565, 1
  store i32 %566, ptr %559, align 4
  call fastcc void @local_bh_enable()
  call void @consume_skb(ptr noundef %2) #12
  br label %641

567:                                              ; preds = %126, %111, %103
  %568 = phi i32 [ %98, %103 ], [ %98, %111 ], [ %127, %126 ]
  %569 = load ptr, ptr %12, align 4
  %570 = icmp eq ptr %569, null
  br i1 %570, label %590, label %571

571:                                              ; preds = %567
  %572 = load i32, ptr %8, align 8
  %573 = and i32 %572, -2
  %574 = inttoptr i32 %573 to ptr
  %575 = getelementptr inbounds %struct.dst_entry, ptr %574, i32 0, i32 2
  %576 = load i32, ptr %575, align 4
  %577 = and i32 %576, -4
  %578 = inttoptr i32 %577 to ptr
  %579 = getelementptr i32, ptr %578, i32 11
  %580 = load i32, ptr %579, align 4
  %581 = and i32 %580, 8
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %590, label %583

583:                                              ; preds = %571
  %584 = getelementptr inbounds %struct.sock, ptr %569, i32 0, i32 43
  %585 = load i8, ptr %584, align 8
  %586 = or i8 %585, 1
  store i8 %586, ptr %584, align 8
  %587 = getelementptr inbounds %struct.sock, ptr %569, i32 0, i32 38
  %588 = load i64, ptr %587, align 8
  %589 = and i64 %588, -34359672833
  store i64 %589, ptr %587, align 8
  br label %590

590:                                              ; preds = %583, %571, %567
  %591 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  call void @icmp6_send(ptr noundef %2, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %568, ptr noundef null, ptr noundef %591) #12
  br label %592

592:                                              ; preds = %590, %465, %463, %437, %143, %34
  %593 = phi i32 [ %38, %34 ], [ -90, %590 ], [ %144, %143 ], [ %258, %437 ], [ %464, %463 ], [ %467, %465 ]
  %594 = load i32, ptr %8, align 8
  %595 = and i32 %594, -2
  %596 = inttoptr i32 %595 to ptr
  %597 = getelementptr inbounds %struct.rt6_info, ptr %596, i32 0, i32 6
  %598 = load ptr, ptr %597, align 4
  %599 = icmp eq ptr %598, null
  %600 = tail call ptr @llvm.thread.pointer() #12
  br i1 %599, label %621, label %601, !prof !10

601:                                              ; preds = %592
  %602 = getelementptr inbounds %struct.thread_info, ptr %600, i32 0, i32 1
  %603 = load volatile i32, ptr %602, align 4
  %604 = add i32 %603, 512
  store volatile i32 %604, ptr %602, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %605 = getelementptr inbounds %struct.inet6_dev, ptr %598, i32 0, i32 33, i32 1
  %606 = load ptr, ptr %605, align 4
  %607 = ptrtoint ptr %606 to i32
  %608 = call i32 @llvm.read_register.i32(metadata !0) #12
  %609 = inttoptr i32 %608 to ptr
  %610 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %609) #9, !srcloc !12
  %611 = add i32 %610, %607
  %612 = inttoptr i32 %611 to ptr
  %613 = getelementptr inbounds %struct.ipstats_mib, ptr %612, i32 0, i32 1
  %614 = load i32, ptr %613, align 4
  %615 = add i32 %614, 1
  store i32 %615, ptr %613, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %616 = getelementptr [37 x i64], ptr %612, i32 0, i32 21
  %617 = load i64, ptr %616, align 8
  %618 = add i64 %617, 1
  store i64 %618, ptr %616, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %619 = load i32, ptr %613, align 4
  %620 = add i32 %619, 1
  store i32 %620, ptr %613, align 4
  call fastcc void @local_bh_enable()
  br label %621

621:                                              ; preds = %601, %592
  %622 = getelementptr inbounds %struct.thread_info, ptr %600, i32 0, i32 1
  %623 = load volatile i32, ptr %622, align 4
  %624 = add i32 %623, 512
  store volatile i32 %624, ptr %622, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %625 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %626 = load ptr, ptr %625, align 4
  %627 = ptrtoint ptr %626 to i32
  %628 = call i32 @llvm.read_register.i32(metadata !0) #12
  %629 = inttoptr i32 %628 to ptr
  %630 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %629) #9, !srcloc !12
  %631 = add i32 %630, %627
  %632 = inttoptr i32 %631 to ptr
  %633 = getelementptr inbounds %struct.ipstats_mib, ptr %632, i32 0, i32 1
  %634 = load i32, ptr %633, align 4
  %635 = add i32 %634, 1
  store i32 %635, ptr %633, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %636 = getelementptr [37 x i64], ptr %632, i32 0, i32 21
  %637 = load i64, ptr %636, align 8
  %638 = add i64 %637, 1
  store i64 %638, ptr %636, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %639 = load i32, ptr %633, align 4
  %640 = add i32 %639, 1
  store i32 %640, ptr %633, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #12
  br label %641

641:                                              ; preds = %621, %547, %433
  %642 = phi i32 [ %593, %621 ], [ %519, %547 ], [ %272, %433 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  ret i32 %642
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_select_ident(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_dst_lookup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) #0 {
  store ptr null, ptr %2, align 4
  %5 = tail call fastcc i32 @ip6_dst_lookup_tail(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_dst_lookup_tail(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.flowi6, align 8
  %6 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  %11 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %10, %12
  %14 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %2, align 4
  br label %107

20:                                               ; preds = %4
  %21 = tail call ptr @ip6_route_output_flags(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 0) #12
  store ptr %21, ptr %2, align 4
  %22 = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 15
  %23 = load i16, ptr %22, align 4
  %24 = icmp ne i16 %23, 0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %25 = icmp eq ptr %21, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.rt6_info, ptr %21, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi ptr [ %29, %27 ], [ null, %20 ]
  %32 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %33 = icmp eq ptr %1, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %36 = load volatile i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, -4161
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi ptr [ %43, %41 ], [ null, %34 ]
  %46 = getelementptr inbounds %struct.ipv6_pinfo, ptr %45, i32 0, i32 9
  %47 = load i16, ptr %46, align 2
  %48 = lshr i16 %47, 7
  %49 = and i16 %48, 7
  %50 = zext i16 %49 to i32
  br label %51

51:                                               ; preds = %44, %30
  %52 = phi i32 [ %50, %44 ], [ 0, %30 ]
  %53 = icmp eq ptr %31, null
  br i1 %53, label %92, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 11, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %59, i32 16, i1 false) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %96

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 20
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nexthop, ptr %62, i32 0, i32 9
  %66 = load i8, ptr %65, align 2, !range !36
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nexthop, ptr %62, i32 0, i32 12
  %70 = load volatile ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nh_group, ptr %70, i32 0, i32 1
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.nh_group, ptr %70, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %74, %64
  %79 = phi ptr [ %76, %74 ], [ %62, %64 ]
  %80 = getelementptr inbounds %struct.nexthop, ptr %79, i32 0, i32 12
  %81 = load volatile ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nh_info, ptr %81, i32 0, i32 2
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, 10
  %85 = getelementptr inbounds %struct.nh_info, ptr %81, i32 0, i32 5
  %86 = select i1 %84, ptr %85, ptr null
  br label %89

87:                                               ; preds = %60
  %88 = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 21
  br label %89

89:                                               ; preds = %87, %78, %74, %68
  %90 = phi ptr [ %88, %87 ], [ null, %74 ], [ %86, %78 ], [ null, %68 ]
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %51
  %93 = phi ptr [ %91, %89 ], [ null, %51 ]
  %94 = tail call i32 @ipv6_dev_get_saddr(ptr noundef %0, ptr noundef %93, ptr noundef %32, i32 noundef %52, ptr noundef %6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %256

96:                                               ; preds = %92, %58
  %97 = load ptr, ptr %2, align 4
  %98 = getelementptr inbounds %struct.dst_entry, ptr %97, i32 0, i32 15
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @dst_release(ptr noundef %97) #12
  store ptr null, ptr %2, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = phi ptr [ %97, %96 ], [ null, %101 ]
  %104 = load i32, ptr %3, align 8
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  br label %107

107:                                              ; preds = %102, %18
  %108 = phi ptr [ %19, %18 ], [ %103, %102 ]
  %109 = phi i32 [ 0, %18 ], [ %106, %102 ]
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call ptr @ip6_route_output_flags(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %109) #12
  store ptr %112, ptr %2, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi ptr [ %112, %111 ], [ %108, %107 ]
  %115 = getelementptr inbounds %struct.dst_entry, ptr %114, i32 0, i32 15
  %116 = load i16, ptr %115, align 4
  %117 = sext i16 %116 to i32
  %118 = icmp eq i16 %116, 0
  br i1 %118, label %119, label %256

119:                                              ; preds = %113
  %120 = tail call ptr @llvm.thread.pointer() #12
  %121 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %122 = load volatile i32, ptr %121, align 4
  %123 = add i32 %122, 512
  store volatile i32 %123, ptr %121, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %124 = load ptr, ptr %114, align 4
  %125 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %126 = getelementptr inbounds %struct.rt6_info, ptr %114, i32 0, i32 7
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.rt6_info, ptr %114, i32 0, i32 5
  br label %137

132:                                              ; preds = %119
  %133 = and i32 %127, 16777216
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135, !prof !9

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.rt6_info, ptr %114, i32 0, i32 3
  br label %137

137:                                              ; preds = %135, %132, %130
  %138 = phi ptr [ %131, %130 ], [ %136, %135 ], [ %125, %132 ]
  %139 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31), align 4
  %140 = getelementptr inbounds %struct.neigh_hash_table, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %138, align 4
  %142 = ptrtoint ptr %124 to i32
  %143 = xor i32 %141, %142
  %144 = load i32, ptr %140, align 4
  %145 = mul i32 %143, %144
  %146 = getelementptr i32, ptr %138, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr %struct.neigh_hash_table, ptr %139, i32 0, i32 2, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = mul i32 %149, %147
  %151 = add i32 %150, %145
  %152 = getelementptr i32, ptr %138, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.neigh_hash_table, ptr %139, i32 0, i32 2, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = mul i32 %155, %153
  %157 = add i32 %151, %156
  %158 = getelementptr i32, ptr %138, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr %struct.neigh_hash_table, ptr %139, i32 0, i32 2, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = mul i32 %161, %159
  %163 = add i32 %157, %162
  %164 = getelementptr inbounds %struct.neigh_hash_table, ptr %139, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = sub i32 32, %165
  %167 = lshr i32 %163, %166
  %168 = load ptr, ptr %139, align 4
  %169 = getelementptr ptr, ptr %168, i32 %167
  %170 = load volatile ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %202, label %172

172:                                              ; preds = %194, %137
  %173 = phi ptr [ %195, %194 ], [ %170, %137 ]
  %174 = getelementptr inbounds %struct.neighbour, ptr %173, i32 0, i32 26
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, %124
  br i1 %176, label %177, label %194

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.neighbour, ptr %173, i32 0, i32 28
  %179 = load i32, ptr %178, align 4
  %180 = xor i32 %179, %141
  %181 = getelementptr %struct.neighbour, ptr %173, i32 1, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = xor i32 %182, %147
  %184 = or i32 %183, %180
  %185 = getelementptr %struct.neighbour, ptr %173, i32 1, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = xor i32 %186, %153
  %188 = or i32 %184, %187
  %189 = getelementptr %struct.neighbour, ptr %173, i32 1, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = xor i32 %190, %159
  %192 = or i32 %188, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %177, %172
  %195 = load volatile ptr, ptr %173, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %202, label %172

197:                                              ; preds = %177
  %198 = getelementptr inbounds %struct.neighbour, ptr %173, i32 0, i32 12
  %199 = load i8, ptr %198, align 4
  %200 = and i8 %199, -34
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197, %194, %137
  tail call fastcc void @local_bh_enable() #12
  br label %232

203:                                              ; preds = %197
  tail call fastcc void @local_bh_enable() #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #12
  %204 = load ptr, ptr %2, align 4
  %205 = load ptr, ptr %204, align 4
  %206 = tail call ptr @ipv6_get_ifaddr(ptr noundef %0, ptr noundef %6, ptr noundef %205, i32 noundef 1) #12
  %207 = icmp eq ptr %206, null
  br i1 %207, label %229, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.inet6_ifaddr, ptr %206, i32 0, i32 8
  %210 = load i32, ptr %209, align 4
  %211 = and i32 %210, 4
  %212 = icmp eq i32 %211, 0
  %213 = getelementptr inbounds %struct.inet6_ifaddr, ptr %206, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %213) #12, !srcloc !22
  %214 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %213, ptr %213, i32 1, ptr elementtype(i32) %213) #12, !srcloc !38
  %215 = extractvalue { i32, i32, i32 } %214, 0
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %220, label %217

217:                                              ; preds = %208
  %218 = icmp sgt i32 %215, 0
  br i1 %218, label %221, label %219, !prof !9

219:                                              ; preds = %217
  tail call void @refcount_warn_saturate(ptr noundef %213, i32 noundef 3) #12
  br i1 %212, label %229, label %222

220:                                              ; preds = %208
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !39
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %206) #12
  br i1 %212, label %229, label %222

221:                                              ; preds = %217
  br i1 %212, label %229, label %222

222:                                              ; preds = %221, %220, %219
  %223 = load ptr, ptr %2, align 4
  tail call void @dst_release(ptr noundef %223) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef align 8 dereferenceable(88) %3, i32 88, i1 false)
  %224 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %224, i8 0, i32 16, i1 false)
  %225 = call ptr @ip6_route_output_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 0) #12
  store ptr %225, ptr %2, align 4
  %226 = getelementptr inbounds %struct.dst_entry, ptr %225, i32 0, i32 15
  %227 = load i16, ptr %226, align 4
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %222, %221, %220, %219, %203
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #12
  br label %232

230:                                              ; preds = %222
  %231 = sext i16 %227 to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #12
  br label %256

232:                                              ; preds = %229, %202
  %233 = load i32, ptr %6, align 4
  %234 = load i32, ptr %8, align 4
  %235 = or i32 %234, %233
  %236 = load i32, ptr %11, align 4
  %237 = xor i32 %236, -65536
  %238 = or i32 %235, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %281

240:                                              ; preds = %232
  %241 = load i32, ptr %125, align 4
  %242 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = or i32 %243, %241
  %245 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 2
  %246 = load i32, ptr %245, align 4
  %247 = xor i32 %246, -65536
  %248 = or i32 %247, %244
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %281, label %250

250:                                              ; preds = %240
  %251 = or i32 %244, %246
  %252 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = or i32 %251, %253
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %281, label %256

256:                                              ; preds = %250, %230, %113, %92
  %257 = phi i32 [ %117, %113 ], [ %231, %230 ], [ -97, %250 ], [ %94, %92 ]
  %258 = load ptr, ptr %2, align 4
  call void @dst_release(ptr noundef %258) #12
  store ptr null, ptr %2, align 4
  %259 = icmp eq i32 %257, -101
  br i1 %259, label %260, label %281

260:                                              ; preds = %256
  %261 = tail call ptr @llvm.thread.pointer() #12
  %262 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 1
  %263 = load volatile i32, ptr %262, align 4
  %264 = add i32 %263, 512
  store volatile i32 %264, ptr %262, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %265 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = ptrtoint ptr %266 to i32
  %268 = call i32 @llvm.read_register.i32(metadata !0) #12
  %269 = inttoptr i32 %268 to ptr
  %270 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %269) #9, !srcloc !12
  %271 = add i32 %270, %267
  %272 = inttoptr i32 %271 to ptr
  %273 = getelementptr inbounds %struct.ipstats_mib, ptr %272, i32 0, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = add i32 %274, 1
  store i32 %275, ptr %273, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %276 = getelementptr [37 x i64], ptr %272, i32 0, i32 15
  %277 = load i64, ptr %276, align 8
  %278 = add i64 %277, 1
  store i64 %278, ptr %276, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %279 = load i32, ptr %273, align 4
  %280 = add i32 %279, 1
  store i32 %280, ptr %273, align 4
  call fastcc void @local_bh_enable()
  br label %281

281:                                              ; preds = %260, %256, %250, %240, %232
  %282 = phi i32 [ 0, %250 ], [ 0, %240 ], [ 0, %232 ], [ -101, %260 ], [ %257, %256 ]
  ret i32 %282
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip6_dst_lookup_flow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4
  %6 = call fastcc i32 @ip6_dst_lookup_tail(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %6 to ptr
  br label %17

10:                                               ; preds = %4
  %11 = icmp eq ptr %3, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  br label %14

14:                                               ; preds = %12, %10
  %15 = load ptr, ptr %5, align 4
  %16 = tail call ptr @xfrm_lookup_route(ptr noundef %0, ptr noundef %15, ptr noundef %2, ptr noundef %1, i32 noundef 0) #12
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %9, %8 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip6_sk_dst_lookup_flow(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, -4161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  %17 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @sk_dst_check(ptr noundef %0, i32 noundef %18) #12
  %20 = load volatile i8, ptr %6, align 2
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, -4161
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  br label %28

28:                                               ; preds = %25, %15
  %29 = phi ptr [ %27, %25 ], [ null, %15 ]
  %30 = icmp eq ptr %19, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dst_entry, ptr %19, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i16, ptr %33, align 64
  %35 = icmp eq i16 %34, 10
  br i1 %35, label %36, label %105

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ipv6_pinfo, ptr %29, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rt6_info, ptr %19, i32 0, i32 3, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rt6_info, ptr %19, i32 0, i32 3
  %45 = load i32, ptr %37, align 4
  %46 = load i32, ptr %44, align 4
  %47 = xor i32 %46, %45
  %48 = getelementptr %struct.flowi6, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.rt6_info, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %49
  %53 = or i32 %52, %47
  %54 = getelementptr %struct.flowi6, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.rt6_info, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %55
  %59 = or i32 %53, %58
  %60 = getelementptr %struct.flowi6, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.rt6_info, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = xor i32 %63, %61
  %65 = or i32 %59, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %43, %36
  %68 = icmp eq ptr %39, null
  br i1 %68, label %105, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %37, align 4
  %71 = load i32, ptr %39, align 4
  %72 = xor i32 %71, %70
  %73 = getelementptr %struct.flowi6, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr [4 x i32], ptr %39, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = xor i32 %76, %74
  %78 = or i32 %77, %72
  %79 = getelementptr %struct.flowi6, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr [4 x i32], ptr %39, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = xor i32 %82, %80
  %84 = or i32 %78, %83
  %85 = getelementptr %struct.flowi6, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr [4 x i32], ptr %39, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = xor i32 %88, %86
  %90 = or i32 %84, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %69, %43
  %93 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %92
  %98 = load i32, ptr %1, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %133, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %19, align 4
  %102 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 17
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %98, %103
  br i1 %104, label %133, label %105

105:                                              ; preds = %100, %69, %67, %31
  tail call void @dst_release(ptr noundef nonnull %19) #12
  br label %106

106:                                              ; preds = %105, %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4
  %107 = call fastcc i32 @ip6_dst_lookup_tail(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = inttoptr i32 %107 to ptr
  br label %118

111:                                              ; preds = %106
  %112 = icmp eq ptr %2, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %114, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false) #12
  br label %115

115:                                              ; preds = %113, %111
  %116 = load ptr, ptr %5, align 4
  %117 = tail call ptr @xfrm_lookup_route(ptr noundef nonnull @init_net, ptr noundef %116, ptr noundef %1, ptr noundef %0, i32 noundef 0) #12
  br label %118

118:                                              ; preds = %115, %109
  %119 = phi ptr [ %110, %109 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %120 = xor i1 %3, true
  %121 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = icmp eq ptr %119, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.dst_entry, ptr %119, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #12, !srcloc !22
  %127 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 0, i32 1, ptr elementtype(i32) %126) #12, !srcloc !31
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  br label %132

131:                                              ; preds = %125
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %132

132:                                              ; preds = %131, %130, %123
  tail call void @ip6_sk_dst_store_flow(ptr noundef %0, ptr noundef %119, ptr noundef %1) #12
  br label %133

133:                                              ; preds = %132, %118, %100, %97, %92
  %134 = phi ptr [ %119, %132 ], [ %119, %118 ], [ %19, %92 ], [ %19, %100 ], [ %19, %97 ]
  ret ptr %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_dst_store_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip6_dst_lookup_tunnel(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i1 noundef zeroext %7) #0 {
  %9 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %9) #12
  %10 = getelementptr inbounds %struct.ip_tunnel_info, ptr %5, i32 0, i32 1
  br i1 %7, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call ptr @dst_cache_get_ip6(ptr noundef %10, ptr noundef %4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11, %8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %9, i8 0, i32 88, i1 false)
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 5
  store i8 %6, ptr %18, align 2
  %19 = getelementptr inbounds %struct.flowi6, ptr %9, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ip_tunnel_key, ptr %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ip_tunnel_key, ptr %5, i32 0, i32 1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 8 dereferenceable(16) %21, i32 16, i1 false)
  %22 = getelementptr inbounds %struct.flowi6, ptr %9, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false)
  %23 = getelementptr inbounds %struct.ip_tunnel_key, ptr %5, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, 30
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.ip_tunnel_key, ptr %5, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = shl nuw nsw i32 %26, 20
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %31 = or i32 %30, %28
  %32 = getelementptr inbounds %struct.flowi6, ptr %9, i32 0, i32 3
  store i32 %31, ptr %32, align 8
  %33 = load ptr, ptr @ipv6_stub, align 4
  %34 = getelementptr inbounds %struct.ipv6_stub, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = call ptr %35(ptr noundef %2, ptr noundef %37, ptr noundef nonnull %9, ptr noundef null) #12
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %47, label %40

40:                                               ; preds = %14
  %41 = load ptr, ptr %38, align 4
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @dst_release(ptr noundef %38) #12
  br label %47

44:                                               ; preds = %40
  br i1 %7, label %45, label %46

45:                                               ; preds = %44
  call void @dst_cache_set_ip6(ptr noundef %10, ptr noundef %38, ptr noundef %22) #12
  br label %46

46:                                               ; preds = %45, %44
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %22, i32 16, i1 false)
  br label %47

47:                                               ; preds = %46, %43, %14, %11
  %48 = phi ptr [ inttoptr (i32 -40 to ptr), %43 ], [ %38, %46 ], [ %12, %11 ], [ inttoptr (i32 -101 to ptr), %14 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %9) #12
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip6(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_append_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, -4161
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi ptr [ %18, %16 ], [ null, %9 ]
  %21 = and i32 %8, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %29 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 20
  %30 = tail call fastcc i32 @ip6_setup_cork(ptr noundef %0, ptr noundef %28, ptr noundef %29, ptr noundef %5, ptr noundef %7, ptr noundef %6)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ipcm6_cookie, ptr %5, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ipv6_txoptions, ptr %34, i32 0, i32 2
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %39, %36 ], [ 0, %32 ]
  %42 = add i32 %41, %3
  %43 = add i32 %41, %4
  br label %46

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ 0, %44 ]
  %48 = phi ptr [ %6, %40 ], [ %45, %44 ]
  %49 = phi i32 [ %42, %40 ], [ %3, %44 ]
  %50 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %51 = getelementptr inbounds %struct.ipv6_pinfo, ptr %20, i32 0, i32 20
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 132224
  %55 = icmp eq i32 %54, 1152
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = tail call ptr @llvm.thread.pointer() #12
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 139
  br label %61

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 37
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %58, %56 ], [ %60, %59 ]
  %63 = tail call fastcc i32 @__ip6_append_data(ptr noundef %0, ptr noundef %48, ptr noundef %24, ptr noundef %50, ptr noundef %51, ptr noundef %62, ptr noundef %1, ptr noundef %2, i32 noundef %49, i32 noundef %47, i32 noundef %8, ptr noundef %5)
  br label %64

64:                                               ; preds = %61, %27, %19
  %65 = phi i32 [ %63, %61 ], [ 0, %19 ], [ %30, %27 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_setup_cork(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, -4161
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ null, %6 ]
  %18 = getelementptr inbounds %struct.ipcm6_cookie, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %141, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1363, i32 noundef 9, ptr noundef null) #12
  br label %256

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !9

30:                                               ; preds = %25
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 2
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 0, %25 ], [ %33, %30 ]
  %36 = or i32 %27, 256
  %37 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %35, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef %36, i32 noundef 36) #13
  store ptr %39, ptr %2, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %256, label %41, !prof !10

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ipv6_txoptions, ptr %39, i32 0, i32 1
  store i32 36, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 2
  %44 = load i16, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ipv6_txoptions, ptr %39, i32 0, i32 2
  store i16 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 3
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds %struct.ipv6_txoptions, ptr %39, i32 0, i32 3
  store i16 %47, ptr %48, align 2
  %49 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %41
  %53 = load i32, ptr %26, align 8
  %54 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %50, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 3
  %58 = add nuw nsw i32 %57, 8
  %59 = tail call ptr @kmemdup(ptr noundef nonnull %50, i32 noundef %58, i32 noundef %53) #12
  %60 = load ptr, ptr %2, align 4
  br label %61

61:                                               ; preds = %52, %41
  %62 = phi ptr [ %60, %52 ], [ %39, %41 ]
  %63 = phi ptr [ %59, %52 ], [ null, %41 ]
  %64 = getelementptr inbounds %struct.ipv6_txoptions, ptr %62, i32 0, i32 5
  store ptr %63, ptr %64, align 4
  %65 = load ptr, ptr %49, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds %struct.ipv6_txoptions, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %256, label %72

72:                                               ; preds = %67, %61
  %73 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %26, align 8
  %78 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %74, i32 0, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 3
  %82 = add nuw nsw i32 %81, 8
  %83 = tail call ptr @kmemdup(ptr noundef nonnull %74, i32 noundef %82, i32 noundef %77) #12
  br label %84

84:                                               ; preds = %76, %72
  %85 = phi ptr [ %83, %76 ], [ null, %72 ]
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr inbounds %struct.ipv6_txoptions, ptr %86, i32 0, i32 7
  store ptr %85, ptr %87, align 4
  %88 = load ptr, ptr %73, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %2, align 4
  %92 = getelementptr inbounds %struct.ipv6_txoptions, ptr %91, i32 0, i32 7
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %256, label %95

95:                                               ; preds = %90, %84
  %96 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %26, align 8
  %101 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %97, i32 0, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 3
  %105 = add nuw nsw i32 %104, 8
  %106 = tail call ptr @kmemdup(ptr noundef nonnull %97, i32 noundef %105, i32 noundef %100) #12
  br label %107

107:                                              ; preds = %99, %95
  %108 = phi ptr [ %106, %99 ], [ null, %95 ]
  %109 = load ptr, ptr %2, align 4
  %110 = getelementptr inbounds %struct.ipv6_txoptions, ptr %109, i32 0, i32 4
  store ptr %108, ptr %110, align 4
  %111 = load ptr, ptr %96, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %2, align 4
  %115 = getelementptr inbounds %struct.ipv6_txoptions, ptr %114, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %256, label %118

118:                                              ; preds = %113, %107
  %119 = getelementptr inbounds %struct.ipv6_txoptions, ptr %19, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %26, align 8
  %124 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %120, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 3
  %128 = add nuw nsw i32 %127, 8
  %129 = tail call ptr @kmemdup(ptr noundef nonnull %120, i32 noundef %128, i32 noundef %123) #12
  br label %130

130:                                              ; preds = %122, %118
  %131 = phi ptr [ %129, %122 ], [ null, %118 ]
  %132 = load ptr, ptr %2, align 4
  %133 = getelementptr inbounds %struct.ipv6_txoptions, ptr %132, i32 0, i32 6
  store ptr %131, ptr %133, align 4
  %134 = load ptr, ptr %119, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = load ptr, ptr %2, align 4
  %138 = getelementptr inbounds %struct.ipv6_txoptions, ptr %137, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %256, label %141

141:                                              ; preds = %136, %130, %16
  %142 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %142) #12, !srcloc !22
  %143 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %142, ptr %142, i32 0, i32 1, ptr elementtype(i32) %142) #12, !srcloc !31
  %144 = extractvalue { i32, i32, i32 } %143, 0
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  br label %148

147:                                              ; preds = %141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %148

148:                                              ; preds = %147, %146
  %149 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 5
  store ptr %4, ptr %149, align 4
  %150 = getelementptr inbounds %struct.inet_cork_full, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(88) %150, ptr noundef align 8 dereferenceable(88) %5, i32 88, i1 false)
  %151 = getelementptr inbounds %struct.ipcm6_cookie, ptr %3, i32 0, i32 1
  %152 = load i16, ptr %151, align 8
  %153 = trunc i16 %152 to i8
  %154 = getelementptr inbounds %struct.inet6_cork, ptr %2, i32 0, i32 1
  store i8 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.ipcm6_cookie, ptr %3, i32 0, i32 2
  %156 = load i16, ptr %155, align 2
  %157 = trunc i16 %156 to i8
  %158 = getelementptr inbounds %struct.inet6_cork, ptr %2, i32 0, i32 2
  store i8 %157, ptr %158, align 1
  %159 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 7
  %160 = load i16, ptr %159, align 4
  %161 = and i16 %160, 32
  %162 = icmp eq i16 %161, 0
  %163 = getelementptr inbounds %struct.ipv6_pinfo, ptr %17, i32 0, i32 9
  %164 = load i16, ptr %163, align 2
  %165 = and i16 %164, 56
  %166 = icmp ugt i16 %165, 16
  br i1 %162, label %178, label %167

167:                                              ; preds = %148
  br i1 %166, label %168, label %172

168:                                              ; preds = %167
  %169 = load ptr, ptr %4, align 4
  %170 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 20
  %171 = load volatile i32, ptr %170, align 4
  br label %200

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.dst_ops, ptr %174, i32 0, i32 5
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 %176(ptr noundef %4) #12
  br label %200

178:                                              ; preds = %148
  br i1 %166, label %179, label %183

179:                                              ; preds = %178
  %180 = load ptr, ptr %4, align 4
  %181 = getelementptr inbounds %struct.net_device, ptr %180, i32 0, i32 20
  %182 = load volatile i32, ptr %181, align 4
  br label %200

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 4
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  %187 = and i16 %160, 64
  %188 = icmp eq i16 %187, 0
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.xfrm_dst, ptr %4, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  br label %193

193:                                              ; preds = %190, %183
  %194 = phi ptr [ %192, %190 ], [ %4, %183 ]
  %195 = getelementptr inbounds %struct.dst_entry, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.dst_ops, ptr %196, i32 0, i32 5
  %198 = load ptr, ptr %197, align 4
  %199 = tail call i32 %198(ptr noundef %194) #12
  br label %200

200:                                              ; preds = %193, %179, %172, %168
  %201 = phi i32 [ %171, %168 ], [ %177, %172 ], [ %182, %179 ], [ %199, %193 ]
  %202 = getelementptr inbounds %struct.ipv6_pinfo, ptr %17, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = icmp uge i32 %203, %201
  %205 = icmp eq i32 %203, 0
  %206 = or i1 %204, %205
  %207 = select i1 %206, i32 %201, i32 %203
  %208 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 3
  store i32 %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.ipcm6_cookie, ptr %3, i32 0, i32 3
  %210 = load i16, ptr %209, align 4
  %211 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 10
  store i16 %210, ptr %211, align 2
  %212 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 6
  store i8 0, ptr %212, align 8
  %213 = getelementptr inbounds %struct.sockcm_cookie, ptr %3, i32 0, i32 1
  %214 = load i32, ptr %213, align 8
  %215 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 12
  store i32 %214, ptr %215, align 8
  %216 = getelementptr inbounds %struct.sockcm_cookie, ptr %3, i32 0, i32 2
  %217 = load i16, ptr %216, align 4
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %220, label %219, !prof !9

219:                                              ; preds = %200
  tail call void @__sock_tx_timestamp(i16 noundef zeroext %217, ptr noundef %212) #12
  br label %220

220:                                              ; preds = %219, %200
  %221 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %222 = load volatile i32, ptr %221, align 4
  %223 = and i32 %222, 524288
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225, !prof !9

225:                                              ; preds = %220
  %226 = load i8, ptr %212, align 1
  %227 = or i8 %226, 16
  store i8 %227, ptr %212, align 1
  br label %228

228:                                              ; preds = %225, %220
  %229 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 4
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i16, ptr %159, align 4
  %234 = and i16 %233, 64
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232, %228
  %237 = getelementptr inbounds %struct.xfrm_dst, ptr %4, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %232
  %240 = phi ptr [ %238, %236 ], [ %4, %232 ]
  %241 = getelementptr inbounds %struct.dst_entry, ptr %240, i32 0, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = and i32 %242, -4
  %244 = inttoptr i32 %243 to ptr
  %245 = getelementptr i32, ptr %244, i32 11
  %246 = load i32, ptr %245, align 4
  %247 = and i32 %246, 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %239
  %250 = load i32, ptr %1, align 8
  %251 = or i32 %250, 2
  store i32 %251, ptr %1, align 8
  br label %252

252:                                              ; preds = %249, %239
  %253 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 4
  store i32 0, ptr %253, align 8
  %254 = load i64, ptr %3, align 8
  %255 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 11
  store i64 %254, ptr %255, align 8
  br label %256

256:                                              ; preds = %252, %136, %113, %90, %67, %34, %24
  %257 = phi i32 [ -22, %24 ], [ 0, %252 ], [ -105, %34 ], [ -105, %67 ], [ -105, %90 ], [ -105, %113 ], [ -105, %136 ]
  ret i32 %257
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ip6_append_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef readonly %11) unnamed_addr #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  store i32 0, ptr %13, align 4, !annotation !17
  %15 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #12
  store i8 0, ptr %14, align 1
  %18 = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %2
  %21 = select i1 %20, ptr null, ptr %19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = icmp eq ptr %17, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ipv6_txoptions, ptr %17, i32 0, i32 2
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %28, %25 ], [ 0, %23 ]
  %31 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 9
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.rt6_info, ptr %16, i32 0, i32 10
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 %33, %36
  br label %38

38:                                               ; preds = %29, %12
  %39 = phi i32 [ 0, %12 ], [ %37, %29 ]
  %40 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %41 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 10
  %42 = load i16, ptr %41, align 2
  %43 = icmp ne i16 %42, 0
  %44 = icmp eq i16 %42, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = phi i32 [ %47, %45 ], [ 65575, %38 ]
  %50 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 6
  %51 = load i8, ptr %50, align 8
  %52 = and i8 %51, 66
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 128
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #12, !srcloc !22
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #12, !srcloc !41
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !42
  %63 = add i32 %62, -1
  br label %64

64:                                               ; preds = %59, %54, %48
  %65 = phi i32 [ %63, %59 ], [ 0, %54 ], [ 0, %48 ]
  %66 = load ptr, ptr %16, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 19
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 21
  %71 = load i16, ptr %70, align 8
  %72 = zext i16 %71 to i32
  %73 = add nuw nsw i32 %72, %69
  %74 = and i32 %73, 131056
  %75 = getelementptr inbounds %struct.rt6_info, ptr %16, i32 0, i32 10
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %77, 40
  %79 = icmp eq ptr %17, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %64
  %81 = getelementptr inbounds %struct.ipv6_txoptions, ptr %17, i32 0, i32 3
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = add nuw nsw i32 %78, %83
  %85 = getelementptr inbounds %struct.ipv6_txoptions, ptr %17, i32 0, i32 2
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  %88 = add nuw nsw i32 %83, %87
  br label %89

89:                                               ; preds = %80, %64
  %90 = phi i32 [ %84, %80 ], [ %78, %64 ]
  %91 = phi i32 [ %88, %80 ], [ 0, %64 ]
  %92 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -4
  %95 = inttoptr i32 %94 to ptr
  %96 = getelementptr i32, ptr %95, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 8
  %99 = add nuw nsw i32 %78, %91
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp ugt i32 %49, %90
  br i1 %101, label %102, label %162

102:                                              ; preds = %89
  %103 = sub i32 %49, %90
  %104 = and i32 %103, -8
  %105 = add i32 %104, %90
  %106 = icmp ult i32 %105, 9
  br i1 %106, label %162, label %107

107:                                              ; preds = %102
  %108 = add i32 %105, -8
  %109 = add i32 %100, %9
  %110 = icmp ugt i32 %109, %49
  br i1 %110, label %162, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 4
  %113 = load i32, ptr %112, align 8
  %114 = add i32 %113, %8
  %115 = sub i32 %49, %100
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ipcm6_cookie, ptr %11, i32 0, i32 4
  %119 = load i8, ptr %118, align 2
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %123 = load i16, ptr %122, align 4
  switch i16 %123, label %126 [
    i16 17, label %124
    i16 255, label %124
  ]

124:                                              ; preds = %121, %121
  %125 = add i32 %115, 40
  tail call void @ipv6_local_rxpmtu(ptr noundef %0, ptr noundef %1, i32 noundef %125) #12
  br label %162

126:                                              ; preds = %121, %117, %111
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %128 = load volatile i8, ptr %127, align 2
  %129 = zext i8 %128 to i32
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, -4161
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8
  br label %136

136:                                              ; preds = %133, %126
  %137 = phi ptr [ %135, %133 ], [ null, %126 ]
  %138 = getelementptr inbounds %struct.ipv6_pinfo, ptr %137, i32 0, i32 9
  %139 = load i16, ptr %138, align 2
  %140 = and i16 %139, 48
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %136
  %143 = load volatile i8, ptr %127, align 2
  %144 = zext i8 %143 to i32
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, -4161
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %150 = load ptr, ptr %149, align 8
  br label %151

151:                                              ; preds = %148, %142
  %152 = phi ptr [ %150, %148 ], [ null, %142 ]
  %153 = getelementptr inbounds %struct.ipv6_pinfo, ptr %152, i32 0, i32 9
  %154 = load i16, ptr %153, align 2
  %155 = and i16 %154, 56
  %156 = icmp eq i16 %155, 40
  br i1 %156, label %157, label %158

157:                                              ; preds = %151, %136
  br label %158

158:                                              ; preds = %157, %151
  %159 = phi i32 [ 65575, %157 ], [ %49, %151 ]
  %160 = sub i32 %159, %100
  %161 = icmp ugt i32 %114, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158, %124, %107, %102, %89
  %163 = add i32 %49, 40
  %164 = sub i32 %163, %100
  %165 = tail call i32 @llvm.smax.i32(i32 %164, i32 0)
  tail call void @ipv6_local_error(ptr noundef %0, i32 noundef 90, ptr noundef %1, i32 noundef %165) #12
  br label %786

166:                                              ; preds = %158
  %167 = icmp eq i32 %9, 0
  br i1 %167, label %190, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %170 = load i16, ptr %169, align 4
  %171 = icmp ne i16 %170, 17
  %172 = icmp ne i32 %100, 40
  %173 = select i1 %171, i1 true, i1 %172
  %174 = add i32 %49, -40
  %175 = icmp ult i32 %174, %8
  %176 = select i1 %173, i1 true, i1 %175
  br i1 %176, label %190, label %177

177:                                              ; preds = %168
  %178 = and i32 %10, 32768
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i16, ptr %41, align 2
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %180, %177
  %184 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 23
  %185 = load i64, ptr %184, align 16
  %186 = and i64 %185, 24
  %187 = icmp eq i64 %186, 0
  %188 = xor i1 %187, true
  %189 = select i1 %187, i16 0, i16 96
  br label %190

190:                                              ; preds = %183, %180, %168, %166
  %191 = phi i1 [ false, %180 ], [ false, %168 ], [ false, %166 ], [ %188, %183 ]
  %192 = phi i16 [ 0, %180 ], [ 0, %168 ], [ 0, %166 ], [ %189, %183 ]
  %193 = and i32 %10, 67108864
  %194 = icmp ne i32 %193, 0
  %195 = icmp ne i32 %8, 0
  %196 = and i1 %195, %194
  br i1 %196, label %197, label %242

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %199, 262144
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %242, label %202

202:                                              ; preds = %197
  br i1 %22, label %216, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15
  %205 = load ptr, ptr %204, align 4
  %206 = load i8, ptr %205, align 8
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.skb_shared_info, ptr %205, i32 0, i32 11
  %211 = load ptr, ptr %210, align 4
  br label %212

212:                                              ; preds = %209, %203
  %213 = phi ptr [ %211, %209 ], [ null, %203 ]
  %214 = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i32 noundef %8, ptr noundef %213) #12
  %215 = icmp eq ptr %214, null
  br i1 %215, label %786, label %219

216:                                              ; preds = %202
  %217 = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i32 noundef %8, ptr noundef null) #12
  %218 = icmp eq ptr %217, null
  br i1 %218, label %786, label %227

219:                                              ; preds = %212
  %220 = load ptr, ptr %204, align 4
  %221 = load i8, ptr %220, align 8
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.skb_shared_info, ptr %220, i32 0, i32 11
  %226 = load ptr, ptr %225, align 4
  br label %227

227:                                              ; preds = %224, %219, %216
  %228 = phi ptr [ %214, %224 ], [ %214, %219 ], [ %217, %216 ]
  %229 = phi ptr [ %226, %224 ], [ null, %219 ], [ null, %216 ]
  %230 = icmp eq ptr %229, null
  %231 = zext i1 %230 to i8
  store i8 %231, ptr %14, align 1
  %232 = load ptr, ptr %16, align 4
  %233 = getelementptr inbounds %struct.net_device, ptr %232, i32 0, i32 23
  %234 = load i64, ptr %233, align 16
  %235 = and i64 %234, 1
  %236 = icmp ne i64 %235, 0
  %237 = and i1 %191, %236
  br i1 %237, label %242, label %238

238:                                              ; preds = %227
  %239 = getelementptr inbounds %struct.ubuf_info, ptr %228, i32 0, i32 1, i32 0, i32 2
  %240 = load i8, ptr %239, align 2
  %241 = and i8 %240, -2
  store i8 %241, ptr %239, align 2
  call fastcc void @skb_zcopy_set(ptr noundef %21, ptr noundef nonnull %228, ptr noundef nonnull %14)
  br label %242

242:                                              ; preds = %238, %227, %197, %190
  %243 = phi i1 [ %43, %238 ], [ %43, %197 ], [ %43, %190 ], [ true, %227 ]
  %244 = phi ptr [ %228, %238 ], [ null, %197 ], [ null, %190 ], [ %228, %227 ]
  %245 = load i32, ptr %112, align 8
  %246 = add i32 %245, %8
  store i32 %246, ptr %112, align 8
  br i1 %22, label %291, label %247

247:                                              ; preds = %538, %242
  %248 = phi i32 [ %108, %242 ], [ %335, %538 ]
  %249 = phi i32 [ %49, %242 ], [ %336, %538 ]
  %250 = phi i32 [ 0, %242 ], [ %539, %538 ]
  %251 = phi i32 [ %65, %242 ], [ 0, %538 ]
  %252 = phi i32 [ 0, %242 ], [ %479, %538 ]
  %253 = phi i32 [ %39, %242 ], [ 0, %538 ]
  %254 = phi i32 [ %40, %242 ], [ 0, %538 ]
  %255 = phi ptr [ null, %242 ], [ %301, %538 ]
  %256 = phi ptr [ %19, %242 ], [ %413, %538 ]
  %257 = phi i32 [ %9, %242 ], [ 0, %538 ]
  %258 = phi i32 [ %8, %242 ], [ %481, %538 ]
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %706

260:                                              ; preds = %247
  %261 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 5
  %262 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 6
  %263 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 15
  %264 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 14
  %265 = icmp eq ptr %244, null
  %266 = getelementptr inbounds %struct.ubuf_info, ptr %244, i32 0, i32 1, i32 0, i32 2
  %267 = getelementptr inbounds %struct.page_frag, ptr %5, i32 0, i32 1
  %268 = icmp eq ptr %256, null
  %269 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 11
  %270 = getelementptr inbounds %struct.page_frag, ptr %5, i32 0, i32 2
  %271 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 18
  br label %272

272:                                              ; preds = %700, %260
  %273 = phi i32 [ %258, %260 ], [ %704, %700 ]
  %274 = phi i32 [ %252, %260 ], [ %703, %700 ]
  %275 = phi i32 [ %250, %260 ], [ %701, %700 ]
  %276 = load i32, ptr %112, align 8
  %277 = icmp ugt i32 %276, %249
  br i1 %277, label %282, label %278

278:                                              ; preds = %272
  %279 = load i32, ptr %3, align 8
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278, %272
  br label %283

283:                                              ; preds = %282, %278
  %284 = phi i32 [ %248, %282 ], [ %249, %278 ]
  %285 = load i32, ptr %261, align 8
  %286 = sub i32 %284, %285
  %287 = icmp slt i32 %286, %273
  %288 = sub i32 %248, %285
  %289 = select i1 %287, i32 %288, i32 %286
  %290 = icmp slt i32 %289, 1
  br i1 %290, label %291, label %545

291:                                              ; preds = %283, %242
  %292 = phi i32 [ %246, %242 ], [ %276, %283 ]
  %293 = phi i32 [ %108, %242 ], [ %248, %283 ]
  %294 = phi i32 [ %49, %242 ], [ %249, %283 ]
  %295 = phi i32 [ 0, %242 ], [ %275, %283 ]
  %296 = phi i32 [ %65, %242 ], [ %251, %283 ]
  %297 = phi i32 [ 0, %242 ], [ %274, %283 ]
  %298 = phi i32 [ %39, %242 ], [ %253, %283 ]
  %299 = phi i32 [ %40, %242 ], [ %254, %283 ]
  %300 = phi ptr [ null, %242 ], [ %255, %283 ]
  %301 = phi ptr [ null, %242 ], [ %256, %283 ]
  %302 = phi i32 [ %9, %242 ], [ %257, %283 ]
  %303 = phi i32 [ %8, %242 ], [ %273, %283 ]
  %304 = icmp ne ptr %301, null
  br i1 %304, label %305, label %315

305:                                              ; preds = %291
  %306 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 5
  %307 = load i32, ptr %306, align 8
  %308 = sub i32 %307, %293
  %309 = icmp eq ptr %300, null
  br i1 %309, label %310, label %333

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 7
  %312 = load i16, ptr %311, align 4
  %313 = and i16 %312, 32
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %327, label %333

315:                                              ; preds = %291
  %316 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 7
  %317 = load i16, ptr %316, align 4
  %318 = and i16 %317, 32
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 9
  %322 = load i16, ptr %321, align 4
  %323 = zext i16 %322 to i32
  %324 = sub i32 %49, %323
  %325 = sub i32 %324, %90
  %326 = and i32 %325, -8
  br label %327

327:                                              ; preds = %320, %310
  %328 = phi i32 [ %104, %310 ], [ %326, %320 ]
  %329 = phi i32 [ %308, %310 ], [ 0, %320 ]
  %330 = phi i32 [ %49, %310 ], [ %324, %320 ]
  %331 = add nsw i32 %90, -8
  %332 = add i32 %331, %328
  br label %333

333:                                              ; preds = %327, %315, %310, %305
  %334 = phi i32 [ %308, %305 ], [ %329, %327 ], [ %308, %310 ], [ 0, %315 ]
  %335 = phi i32 [ %293, %305 ], [ %332, %327 ], [ %293, %310 ], [ %293, %315 ]
  %336 = phi i32 [ %294, %305 ], [ %330, %327 ], [ %294, %310 ], [ %294, %315 ]
  %337 = add i32 %334, %303
  %338 = icmp ugt i32 %292, %336
  br i1 %338, label %343, label %339

339:                                              ; preds = %333
  %340 = load i32, ptr %3, align 8
  %341 = and i32 %340, 2
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %339, %333
  br label %344

344:                                              ; preds = %343, %339
  %345 = phi i32 [ %335, %343 ], [ %336, %339 ]
  %346 = sub i32 %345, %90
  %347 = icmp ugt i32 %337, %346
  %348 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 10
  %349 = load i16, ptr %348, align 2
  %350 = zext i16 %349 to i32
  %351 = add nsw i32 %90, %350
  %352 = sub i32 %335, %351
  %353 = select i1 %347, i32 %352, i32 %337
  %354 = add i32 %353, %90
  %355 = add nsw i32 %298, %74
  %356 = add nsw i32 %355, 24
  %357 = add i32 %356, %350
  %358 = and i32 %10, 32768
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %366, label %360

360:                                              ; preds = %344
  %361 = load ptr, ptr %16, align 4
  %362 = getelementptr inbounds %struct.net_device, ptr %361, i32 0, i32 23
  %363 = load i64, ptr %362, align 16
  %364 = and i64 %363, 1
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %379, label %366

366:                                              ; preds = %360, %344
  br i1 %243, label %376, label %367

367:                                              ; preds = %366
  %368 = add i32 %357, %354
  %369 = icmp ult i32 %368, 16128
  br i1 %369, label %379, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr %16, align 4
  %372 = getelementptr inbounds %struct.net_device, ptr %371, i32 0, i32 23
  %373 = load i64, ptr %372, align 16
  %374 = and i64 %373, 1
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %370, %366
  %377 = call i32 @llvm.smin.i32(i32 %354, i32 144)
  %378 = sub i32 %354, %377
  br label %379

379:                                              ; preds = %376, %370, %367, %360
  %380 = phi i32 [ %377, %376 ], [ %354, %370 ], [ %354, %367 ], [ %336, %360 ]
  %381 = phi i32 [ %378, %376 ], [ 0, %370 ], [ 0, %367 ], [ 0, %360 ]
  %382 = add i32 %380, %357
  %383 = icmp eq i32 %353, %337
  %384 = select i1 %383, i32 0, i32 %350
  %385 = add i32 %384, %353
  %386 = add i32 %385, %90
  %387 = add i32 %334, %302
  %388 = add i32 %387, %381
  %389 = sub i32 %385, %388
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %379
  store i32 -22, ptr %13, align 4
  br label %712

392:                                              ; preds = %379
  %393 = icmp eq i32 %302, 0
  br i1 %393, label %394, label %408

394:                                              ; preds = %392
  %395 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %396 = load volatile i32, ptr %395, align 4
  %397 = add i32 %396, %295
  %398 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %399 = load i32, ptr %398, align 8
  %400 = shl i32 %399, 1
  %401 = icmp ugt i32 %397, %400
  br i1 %401, label %407, label %402

402:                                              ; preds = %394
  %403 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %404 = load i32, ptr %403, align 8
  %405 = call ptr @__alloc_skb(i32 noundef %382, i32 noundef %404, i32 noundef 0, i32 noundef -1) #12
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %412, !prof !10

407:                                              ; preds = %402, %394
  store i32 -105, ptr %13, align 4
  br label %712

408:                                              ; preds = %392
  %409 = and i32 %10, 64
  %410 = call ptr @sock_alloc_send_skb(ptr noundef %0, i32 noundef %382, i32 noundef %409, ptr noundef nonnull %13) #12
  %411 = icmp eq ptr %410, null
  br i1 %411, label %712, label %412

412:                                              ; preds = %408, %402
  %413 = phi ptr [ %410, %408 ], [ %405, %402 ]
  %414 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %414, align 8
  %415 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 13
  %416 = load i16, ptr %415, align 8
  %417 = and i16 %416, -97
  %418 = or i16 %417, %192
  store i16 %418, ptr %415, align 8
  %419 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %419, align 4
  %420 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 17
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr i8, ptr %421, i32 %356
  store ptr %422, ptr %420, align 4
  %423 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 14
  %424 = load ptr, ptr %423, align 8
  %425 = getelementptr i8, ptr %424, i32 %356
  store ptr %425, ptr %423, align 8
  %426 = sub i32 %386, %381
  %427 = call ptr @skb_put(ptr noundef nonnull %413, i32 noundef %426) #12
  %428 = load ptr, ptr %420, align 4
  %429 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 16
  %430 = load ptr, ptr %429, align 8
  %431 = ptrtoint ptr %428 to i32
  %432 = ptrtoint ptr %430 to i32
  %433 = sub i32 %431, %432
  %434 = trunc i32 %433 to i16
  %435 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 13, i32 0, i32 18
  %436 = trunc i32 %299 to i16
  %437 = add i16 %434, %436
  store i16 %437, ptr %435, align 4
  %438 = getelementptr i8, ptr %427, i32 %90
  %439 = trunc i32 %90 to i16
  %440 = add i16 %437, %439
  %441 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 13, i32 0, i32 17
  store i16 %440, ptr %441, align 2
  %442 = icmp eq i32 %334, 0
  br i1 %442, label %470, label %443

443:                                              ; preds = %412
  %444 = getelementptr i8, ptr %438, i32 %302
  %445 = call i32 @skb_copy_and_csum_bits(ptr noundef %301, i32 noundef %335, ptr noundef %444, i32 noundef %334) #12
  store i32 %445, ptr %419, align 4
  %446 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 13, i32 0, i32 4
  %447 = load i32, ptr %446, align 4
  %448 = xor i32 %445, -1
  %449 = add i32 %447, %448
  %450 = icmp ult i32 %449, %448
  %451 = zext i1 %450 to i32
  %452 = add i32 %449, %451
  store i32 %452, ptr %446, align 4
  %453 = getelementptr i8, ptr %438, i32 %334
  %454 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 5
  %455 = load i32, ptr %454, align 8
  %456 = icmp ugt i32 %455, %335
  br i1 %456, label %457, label %470

457:                                              ; preds = %443
  %458 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 6
  %459 = load i32, ptr %458, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  store i32 %335, ptr %454, align 8
  %462 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 17
  %463 = load ptr, ptr %462, align 4
  %464 = getelementptr i8, ptr %463, i32 %335
  %465 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 14
  store ptr %464, ptr %465, align 8
  br label %470

466:                                              ; preds = %457
  %467 = call i32 @___pskb_trim(ptr noundef %301, i32 noundef %335) #12
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %470, label %469, !prof !9

469:                                              ; preds = %466
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2827, 0\0A.popsection", ""() #12, !srcloc !43
  unreachable

470:                                              ; preds = %466, %461, %443, %412
  %471 = phi ptr [ %438, %412 ], [ %453, %443 ], [ %453, %461 ], [ %453, %466 ]
  %472 = icmp eq i32 %385, %388
  br i1 %472, label %478, label %473

473:                                              ; preds = %470
  %474 = getelementptr i8, ptr %471, i32 %302
  %475 = call i32 %6(ptr noundef %7, ptr noundef %474, i32 noundef %297, i32 noundef %389, i32 noundef %334, ptr noundef nonnull %413) #12
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  store i32 -14, ptr %13, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %413, i32 noundef 0) #12
  br label %712

478:                                              ; preds = %473, %470
  %479 = add i32 %389, %297
  %480 = add i32 %302, %389
  %481 = sub i32 %303, %480
  %482 = load i8, ptr %50, align 8
  %483 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 15
  %484 = load ptr, ptr %483, align 4
  %485 = getelementptr inbounds %struct.skb_shared_info, ptr %484, i32 0, i32 3
  store i8 %482, ptr %485, align 1
  store i8 0, ptr %50, align 8
  %486 = load ptr, ptr %483, align 4
  %487 = getelementptr inbounds %struct.skb_shared_info, ptr %486, i32 0, i32 9
  store i32 %296, ptr %487, align 4
  %488 = icmp eq ptr %244, null
  br i1 %488, label %521, label %489

489:                                              ; preds = %478
  %490 = load ptr, ptr %483, align 4
  %491 = load i8, ptr %490, align 8
  %492 = and i8 %491, 1
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %498, label %494

494:                                              ; preds = %489
  %495 = getelementptr inbounds %struct.skb_shared_info, ptr %490, i32 0, i32 11
  %496 = load ptr, ptr %495, align 4
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %521

498:                                              ; preds = %494, %489
  %499 = load i8, ptr %14, align 1, !range !36
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %502, label %501, !prof !9

501:                                              ; preds = %498
  store i8 0, ptr %14, align 1
  br label %513

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.ubuf_info, ptr %244, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %503) #12, !srcloc !22
  %504 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %503, ptr %503, i32 1, ptr elementtype(i32) %503) #12, !srcloc !33
  %505 = extractvalue { i32, i32, i32 } %504, 0
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %511, label %507, !prof !10

507:                                              ; preds = %502
  %508 = add i32 %505, 1
  %509 = or i32 %508, %505
  %510 = icmp sgt i32 %509, -1
  br i1 %510, label %513, label %511, !prof !9

511:                                              ; preds = %507, %502
  %512 = phi i32 [ 2, %502 ], [ 1, %507 ]
  call void @refcount_warn_saturate(ptr noundef %503, i32 noundef %512) #12
  br label %513

513:                                              ; preds = %511, %507, %501
  %514 = load ptr, ptr %483, align 4
  %515 = getelementptr inbounds %struct.skb_shared_info, ptr %514, i32 0, i32 11
  store ptr %244, ptr %515, align 4
  %516 = getelementptr inbounds %struct.ubuf_info, ptr %244, i32 0, i32 3
  %517 = load i8, ptr %516, align 4
  %518 = load ptr, ptr %483, align 4
  %519 = load i8, ptr %518, align 8
  %520 = or i8 %519, %517
  store i8 %520, ptr %518, align 8
  br label %521

521:                                              ; preds = %513, %494, %478
  %522 = and i32 %10, 2048
  %523 = icmp eq i32 %522, 0
  %524 = select i1 %523, i1 true, i1 %304
  br i1 %524, label %529, label %525

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 13, i32 0, i32 3
  %527 = load i16, ptr %526, align 2
  %528 = or i16 %527, 32
  store i16 %528, ptr %526, align 2
  br label %529

529:                                              ; preds = %525, %521
  %530 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 4, i32 0, i32 1
  %531 = load ptr, ptr %530, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %533, label %538

533:                                              ; preds = %529
  store ptr @sock_wfree, ptr %530, align 4
  %534 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 1
  store ptr %0, ptr %534, align 4
  %535 = getelementptr inbounds %struct.sk_buff, ptr %413, i32 0, i32 18
  %536 = load i32, ptr %535, align 8
  %537 = add i32 %536, %295
  br label %538

538:                                              ; preds = %533, %529
  %539 = phi i32 [ %295, %529 ], [ %537, %533 ]
  %540 = load ptr, ptr %18, align 4
  store volatile ptr %2, ptr %413, align 8
  %541 = getelementptr inbounds %struct.anon.76, ptr %413, i32 0, i32 1
  store volatile ptr %540, ptr %541, align 4
  store volatile ptr %413, ptr %18, align 4
  store volatile ptr %413, ptr %540, align 4
  %542 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %543 = load i32, ptr %542, align 4
  %544 = add i32 %543, 1
  store volatile i32 %544, ptr %542, align 4
  br label %247

545:                                              ; preds = %283
  %546 = call i32 @llvm.umin.i32(i32 %289, i32 %273)
  %547 = load ptr, ptr %16, align 4
  %548 = getelementptr inbounds %struct.net_device, ptr %547, i32 0, i32 23
  %549 = load i64, ptr %548, align 16
  %550 = and i64 %549, 1
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %552, label %577

552:                                              ; preds = %545
  %553 = load i32, ptr %262, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %561

555:                                              ; preds = %552
  %556 = load ptr, ptr %263, align 4
  %557 = load ptr, ptr %264, align 8
  %558 = ptrtoint ptr %556 to i32
  %559 = ptrtoint ptr %557 to i32
  %560 = sub i32 %558, %559
  br label %561

561:                                              ; preds = %555, %552
  %562 = phi i32 [ %560, %555 ], [ 0, %552 ]
  %563 = icmp slt i32 %562, %546
  br i1 %563, label %577, label %564

564:                                              ; preds = %561
  %565 = call ptr @skb_put(ptr noundef %256, i32 noundef %546) #12
  %566 = call i32 %6(ptr noundef %7, ptr noundef %565, i32 noundef %274, i32 noundef %546, i32 noundef %285, ptr noundef %256) #12
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %700

568:                                              ; preds = %564
  %569 = load i32, ptr %262, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %572, label %571, !prof !9

571:                                              ; preds = %568
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %576

572:                                              ; preds = %568
  store i32 %285, ptr %261, align 8
  %573 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 17
  %574 = load ptr, ptr %573, align 4
  %575 = getelementptr i8, ptr %574, i32 %285
  store ptr %575, ptr %264, align 8
  br label %576

576:                                              ; preds = %572, %571
  store i32 -14, ptr %13, align 4
  br label %712

577:                                              ; preds = %561, %545
  br i1 %265, label %582, label %578

578:                                              ; preds = %577
  %579 = load i8, ptr %266, align 2
  %580 = and i8 %579, 1
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %582, label %697

582:                                              ; preds = %578, %577
  %583 = load ptr, ptr %263, align 4
  %584 = getelementptr inbounds %struct.skb_shared_info, ptr %583, i32 0, i32 2
  %585 = load i8, ptr %584, align 2
  %586 = zext i8 %585 to i32
  store i32 -12, ptr %13, align 4
  %587 = call zeroext i1 @sk_page_frag_refill(ptr noundef %0, ptr noundef %5) #12
  br i1 %587, label %588, label %712

588:                                              ; preds = %582
  %589 = load ptr, ptr %5, align 4
  %590 = load i16, ptr %267, align 4
  %591 = zext i16 %590 to i32
  br i1 %268, label %601, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr %263, align 4
  %594 = load i8, ptr %593, align 8
  %595 = and i8 %594, 1
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %601, label %597

597:                                              ; preds = %592
  %598 = getelementptr inbounds %struct.skb_shared_info, ptr %593, i32 0, i32 11
  %599 = load ptr, ptr %598, align 4
  %600 = icmp ne ptr %599, null
  br label %601

601:                                              ; preds = %597, %592, %588
  %602 = phi i1 [ %600, %597 ], [ false, %592 ], [ false, %588 ]
  %603 = icmp eq i8 %585, 0
  %604 = or i1 %603, %602
  br i1 %604, label %618, label %605

605:                                              ; preds = %601
  %606 = load ptr, ptr %263, align 4
  %607 = add nsw i32 %586, -1
  %608 = getelementptr %struct.skb_shared_info, ptr %606, i32 0, i32 12, i32 %607
  %609 = load ptr, ptr %608, align 4
  %610 = icmp eq ptr %609, %589
  br i1 %610, label %611, label %618

611:                                              ; preds = %605
  %612 = getelementptr %struct.skb_shared_info, ptr %606, i32 0, i32 12, i32 %607, i32 2
  %613 = load i32, ptr %612, align 4
  %614 = getelementptr %struct.skb_shared_info, ptr %606, i32 0, i32 12, i32 %607, i32 1
  %615 = load i32, ptr %614, align 4
  %616 = add i32 %615, %613
  %617 = icmp eq i32 %616, %591
  br i1 %617, label %666, label %618

618:                                              ; preds = %611, %605, %601
  store i32 -90, ptr %13, align 4
  %619 = icmp eq i8 %585, 17
  br i1 %619, label %712, label %620

620:                                              ; preds = %618
  %621 = load ptr, ptr %263, align 4
  %622 = getelementptr %struct.skb_shared_info, ptr %621, i32 0, i32 12, i32 %586
  store ptr %589, ptr %622, align 4
  %623 = getelementptr %struct.skb_shared_info, ptr %621, i32 0, i32 12, i32 %586, i32 2
  store i32 %591, ptr %623, align 4
  %624 = getelementptr %struct.skb_shared_info, ptr %621, i32 0, i32 12, i32 %586, i32 1
  store i32 0, ptr %624, align 4
  %625 = getelementptr inbounds %struct.page, ptr %589, i32 0, i32 1
  %626 = load volatile i32, ptr %625, align 4
  %627 = and i32 %626, 1
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %631, label %629, !prof !9

629:                                              ; preds = %620
  %630 = add i32 %626, -1
  br label %633

631:                                              ; preds = %620
  %632 = ptrtoint ptr %589 to i32
  br label %633

633:                                              ; preds = %631, %629
  %634 = phi i32 [ %630, %629 ], [ %632, %631 ]
  %635 = inttoptr i32 %634 to ptr
  %636 = getelementptr inbounds %struct.page, ptr %635, i32 0, i32 1
  %637 = load ptr, ptr %636, align 4
  %638 = ptrtoint ptr %637 to i32
  %639 = and i32 %638, 2
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %644, label %641

641:                                              ; preds = %633
  %642 = load i8, ptr %269, align 2
  %643 = or i8 %642, 64
  store i8 %643, ptr %269, align 2
  br label %644

644:                                              ; preds = %641, %633
  %645 = add nuw nsw i32 %586, 1
  %646 = trunc i32 %645 to i8
  %647 = load ptr, ptr %263, align 4
  %648 = getelementptr inbounds %struct.skb_shared_info, ptr %647, i32 0, i32 2
  store i8 %646, ptr %648, align 2
  %649 = load ptr, ptr %5, align 4
  %650 = getelementptr inbounds %struct.page, ptr %649, i32 0, i32 1
  %651 = load volatile i32, ptr %650, align 4
  %652 = and i32 %651, 1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %656, label %654, !prof !9

654:                                              ; preds = %644
  %655 = add i32 %651, -1
  br label %658

656:                                              ; preds = %644
  %657 = ptrtoint ptr %649 to i32
  br label %658

658:                                              ; preds = %656, %654
  %659 = phi i32 [ %655, %654 ], [ %657, %656 ]
  %660 = inttoptr i32 %659 to ptr
  %661 = getelementptr inbounds %struct.page, ptr %660, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %661) #12, !srcloc !22
  %662 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %661, ptr %661, i32 1, ptr elementtype(i32) %661) #12, !srcloc !44
  %663 = load i16, ptr %267, align 4
  %664 = load ptr, ptr %5, align 4
  %665 = zext i16 %663 to i32
  br label %666

666:                                              ; preds = %658, %611
  %667 = phi i32 [ %665, %658 ], [ %591, %611 ]
  %668 = phi ptr [ %664, %658 ], [ %589, %611 ]
  %669 = phi i32 [ %645, %658 ], [ %586, %611 ]
  %670 = load i16, ptr %270, align 2
  %671 = zext i16 %670 to i32
  %672 = sub nsw i32 %671, %667
  %673 = call i32 @llvm.smin.i32(i32 %546, i32 %672)
  %674 = call ptr @page_address(ptr noundef %668) #12
  %675 = load i16, ptr %267, align 4
  %676 = zext i16 %675 to i32
  %677 = getelementptr i8, ptr %674, i32 %676
  %678 = load i32, ptr %261, align 8
  %679 = call i32 %6(ptr noundef %7, ptr noundef %677, i32 noundef %274, i32 noundef %673, i32 noundef %678, ptr noundef %256) #12
  %680 = icmp slt i32 %679, 0
  br i1 %680, label %711, label %681

681:                                              ; preds = %666
  %682 = load i16, ptr %267, align 4
  %683 = trunc i32 %673 to i16
  %684 = add i16 %682, %683
  store i16 %684, ptr %267, align 4
  %685 = load ptr, ptr %263, align 4
  %686 = add nsw i32 %669, -1
  %687 = getelementptr %struct.skb_shared_info, ptr %685, i32 0, i32 12, i32 %686, i32 1
  %688 = load i32, ptr %687, align 4
  %689 = add i32 %688, %673
  store i32 %689, ptr %687, align 4
  %690 = load i32, ptr %261, align 8
  %691 = add i32 %690, %673
  store i32 %691, ptr %261, align 8
  %692 = load i32, ptr %262, align 4
  %693 = add i32 %692, %673
  store i32 %693, ptr %262, align 4
  %694 = load i32, ptr %271, align 8
  %695 = add i32 %694, %673
  store i32 %695, ptr %271, align 8
  %696 = add i32 %673, %275
  br label %700

697:                                              ; preds = %578
  %698 = call i32 @skb_zerocopy_iter_dgram(ptr noundef %256, ptr noundef %7, i32 noundef %546) #12
  store i32 %698, ptr %13, align 4
  %699 = icmp slt i32 %698, 0
  br i1 %699, label %716, label %700

700:                                              ; preds = %697, %681, %564
  %701 = phi i32 [ %275, %697 ], [ %696, %681 ], [ %275, %564 ]
  %702 = phi i32 [ %546, %697 ], [ %673, %681 ], [ %546, %564 ]
  %703 = add i32 %702, %274
  %704 = sub i32 %273, %702
  %705 = icmp sgt i32 %704, 0
  br i1 %705, label %272, label %706

706:                                              ; preds = %700, %247
  %707 = phi i32 [ %250, %247 ], [ %701, %700 ]
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %786, label %709

709:                                              ; preds = %706
  %710 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  call fastcc void @refcount_add(i32 noundef %707, ptr noundef %710)
  br label %786

711:                                              ; preds = %666
  store i32 -14, ptr %13, align 4
  br label %712

712:                                              ; preds = %711, %618, %582, %576, %477, %408, %407, %391
  %713 = phi i32 [ %295, %391 ], [ %295, %477 ], [ %295, %408 ], [ %275, %711 ], [ %275, %576 ], [ %295, %407 ], [ %275, %582 ], [ %275, %618 ]
  %714 = phi i32 [ %303, %391 ], [ %303, %477 ], [ %303, %408 ], [ %273, %711 ], [ %273, %576 ], [ %303, %407 ], [ %273, %582 ], [ %273, %618 ]
  %715 = icmp eq ptr %244, null
  br i1 %715, label %726, label %716

716:                                              ; preds = %712, %697
  %717 = phi i32 [ %714, %712 ], [ %273, %697 ]
  %718 = phi i32 [ %713, %712 ], [ %275, %697 ]
  %719 = load i8, ptr %14, align 1, !range !36
  %720 = icmp ne i8 %719, 0
  %721 = load ptr, ptr %244, align 4
  %722 = icmp eq ptr %721, @msg_zerocopy_callback
  br i1 %722, label %723, label %724

723:                                              ; preds = %716
  call void @msg_zerocopy_put_abort(ptr noundef nonnull %244, i1 noundef zeroext %720) #12
  br label %726

724:                                              ; preds = %716
  br i1 %720, label %725, label %726

725:                                              ; preds = %724
  call void %721(ptr noundef null, ptr noundef nonnull %244, i1 noundef zeroext true) #12
  br label %726

726:                                              ; preds = %725, %724, %723, %712
  %727 = phi i32 [ %714, %712 ], [ %717, %723 ], [ %717, %724 ], [ %717, %725 ]
  %728 = phi i32 [ %713, %712 ], [ %718, %723 ], [ %718, %724 ], [ %718, %725 ]
  %729 = load i32, ptr %112, align 8
  %730 = sub i32 %729, %727
  store i32 %730, ptr %112, align 8
  %731 = getelementptr inbounds %struct.rt6_info, ptr %16, i32 0, i32 6
  %732 = load ptr, ptr %731, align 4
  %733 = icmp eq ptr %732, null
  %734 = tail call ptr @llvm.thread.pointer() #12
  br i1 %733, label %755, label %735, !prof !10

735:                                              ; preds = %726
  %736 = getelementptr inbounds %struct.thread_info, ptr %734, i32 0, i32 1
  %737 = load volatile i32, ptr %736, align 4
  %738 = add i32 %737, 512
  store volatile i32 %738, ptr %736, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %739 = getelementptr inbounds %struct.inet6_dev, ptr %732, i32 0, i32 33, i32 1
  %740 = load ptr, ptr %739, align 4
  %741 = ptrtoint ptr %740 to i32
  %742 = call i32 @llvm.read_register.i32(metadata !0) #12
  %743 = inttoptr i32 %742 to ptr
  %744 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %743) #9, !srcloc !12
  %745 = add i32 %744, %741
  %746 = inttoptr i32 %745 to ptr
  %747 = getelementptr inbounds %struct.ipstats_mib, ptr %746, i32 0, i32 1
  %748 = load i32, ptr %747, align 4
  %749 = add i32 %748, 1
  store i32 %749, ptr %747, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %750 = getelementptr [37 x i64], ptr %746, i32 0, i32 14
  %751 = load i64, ptr %750, align 8
  %752 = add i64 %751, 1
  store i64 %752, ptr %750, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %753 = load i32, ptr %747, align 4
  %754 = add i32 %753, 1
  store i32 %754, ptr %747, align 4
  call fastcc void @local_bh_enable()
  br label %755

755:                                              ; preds = %735, %726
  %756 = getelementptr inbounds %struct.thread_info, ptr %734, i32 0, i32 1
  %757 = load volatile i32, ptr %756, align 4
  %758 = add i32 %757, 512
  store volatile i32 %758, ptr %756, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %759 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %760 = ptrtoint ptr %759 to i32
  %761 = call i32 @llvm.read_register.i32(metadata !0) #12
  %762 = inttoptr i32 %761 to ptr
  %763 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %762) #9, !srcloc !12
  %764 = add i32 %763, %760
  %765 = inttoptr i32 %764 to ptr
  %766 = getelementptr inbounds %struct.ipstats_mib, ptr %765, i32 0, i32 1
  %767 = load i32, ptr %766, align 4
  %768 = add i32 %767, 1
  store i32 %768, ptr %766, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %769 = getelementptr [37 x i64], ptr %765, i32 0, i32 14
  %770 = load i64, ptr %769, align 8
  %771 = add i64 %770, 1
  store i64 %771, ptr %769, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %772 = load i32, ptr %766, align 4
  %773 = add i32 %772, 1
  store i32 %773, ptr %766, align 4
  call fastcc void @local_bh_enable()
  %774 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %774) #12, !srcloc !22
  %775 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %774, ptr %774, i32 %728, ptr elementtype(i32) %774) #12, !srcloc !33
  %776 = extractvalue { i32, i32, i32 } %775, 0
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %782, label %778, !prof !10

778:                                              ; preds = %755
  %779 = add i32 %776, %728
  %780 = or i32 %779, %776
  %781 = icmp sgt i32 %780, -1
  br i1 %781, label %784, label %782, !prof !9

782:                                              ; preds = %778, %755
  %783 = phi i32 [ 2, %755 ], [ 1, %778 ]
  call void @refcount_warn_saturate(ptr noundef %774, i32 noundef %783) #12
  br label %784

784:                                              ; preds = %782, %778
  %785 = load i32, ptr %13, align 4
  br label %786

786:                                              ; preds = %784, %709, %706, %216, %212, %162
  %787 = phi i32 [ -90, %162 ], [ %785, %784 ], [ -105, %212 ], [ 0, %709 ], [ 0, %706 ], [ -105, %216 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  ret i32 %787
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ip6_make_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.flow_keys, align 8
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr %6, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, -4161
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ %17, %15 ], [ null, %4 ]
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.inet_cork_full, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  %24 = getelementptr inbounds %struct.inet_cork_full, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 5
  %25 = load i8, ptr %24, align 2
  store i8 %25, ptr %8, align 1
  %26 = load ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, %1
  %28 = select i1 %27, ptr null, ptr %26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %418, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store volatile i32 %33, ptr %31, align 4
  %34 = load ptr, ptr %28, align 8
  %35 = getelementptr inbounds %struct.anon.76, ptr %28, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr null, ptr %35, align 4
  store ptr null, ptr %28, align 8
  %37 = getelementptr inbounds %struct.anon.76, ptr %34, i32 0, i32 1
  store volatile ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 18
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = icmp ult ptr %42, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %30
  %51 = ptrtoint ptr %48 to i32
  %52 = ptrtoint ptr %42 to i32
  %53 = sub i32 %51, %52
  %54 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 %55, %53
  store i32 %56, ptr %54, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %61, !prof !10

60:                                               ; preds = %50
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !29
  unreachable

61:                                               ; preds = %50
  %62 = getelementptr i8, ptr %42, i32 %53
  store ptr %62, ptr %41, align 4
  br label %63

63:                                               ; preds = %61, %30
  %64 = load ptr, ptr %1, align 4
  %65 = icmp eq ptr %64, %1
  %66 = icmp eq ptr %64, null
  %67 = or i1 %65, %66
  br i1 %67, label %114, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 17
  %70 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %71 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %72 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 18
  br label %73

73:                                               ; preds = %94, %68
  %74 = phi ptr [ %64, %68 ], [ %110, %94 ]
  %75 = phi ptr [ %40, %68 ], [ %74, %94 ]
  %76 = load i32, ptr %31, align 4
  %77 = add i32 %76, -1
  store volatile i32 %77, ptr %31, align 4
  %78 = load ptr, ptr %74, align 8
  %79 = getelementptr inbounds %struct.anon.76, ptr %74, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr null, ptr %79, align 4
  store ptr null, ptr %74, align 8
  %81 = getelementptr inbounds %struct.anon.76, ptr %78, i32 0, i32 1
  store volatile ptr %80, ptr %81, align 4
  store volatile ptr %78, ptr %80, align 8
  %82 = load i16, ptr %69, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16, ptr %45, align 4
  %85 = zext i16 %84 to i32
  %86 = sub nsw i32 %83, %85
  %87 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 5
  %88 = load i32, ptr %87, align 8
  %89 = sub i32 %88, %86
  store i32 %89, ptr %87, align 8
  %90 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %94, !prof !10

93:                                               ; preds = %73
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !29
  unreachable

94:                                               ; preds = %73
  %95 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 %86
  store ptr %97, ptr %95, align 4
  store ptr %74, ptr %75, align 4
  %98 = load i32, ptr %87, align 8
  %99 = load i32, ptr %70, align 8
  %100 = add i32 %99, %98
  store i32 %100, ptr %70, align 8
  %101 = load i32, ptr %87, align 8
  %102 = load i32, ptr %71, align 4
  %103 = add i32 %102, %101
  store i32 %103, ptr %71, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 18
  %105 = load i32, ptr %104, align 8
  %106 = load i32, ptr %72, align 8
  %107 = add i32 %106, %105
  store i32 %107, ptr %72, align 8
  %108 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %108, align 4
  %109 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 1
  store ptr null, ptr %109, align 4
  %110 = load ptr, ptr %1, align 4
  %111 = icmp eq ptr %110, %1
  %112 = icmp eq ptr %110, null
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %73

114:                                              ; preds = %94, %63
  %115 = load volatile i8, ptr %9, align 2
  %116 = zext i8 %115 to i32
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, -4161
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %122 = load ptr, ptr %121, align 8
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi ptr [ %122, %120 ], [ null, %114 ]
  %125 = getelementptr inbounds %struct.ipv6_pinfo, ptr %124, i32 0, i32 9
  %126 = load i16, ptr %125, align 2
  %127 = and i16 %126, 48
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13
  %131 = load i16, ptr %130, align 8
  br label %149

132:                                              ; preds = %123
  %133 = load volatile i8, ptr %9, align 2
  %134 = zext i8 %133 to i32
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, -4161
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %140 = load ptr, ptr %139, align 8
  br label %141

141:                                              ; preds = %138, %132
  %142 = phi ptr [ %140, %138 ], [ null, %132 ]
  %143 = getelementptr inbounds %struct.ipv6_pinfo, ptr %142, i32 0, i32 9
  %144 = load i16, ptr %143, align 2
  %145 = and i16 %144, 56
  %146 = icmp eq i16 %145, 40
  %147 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13
  %148 = load i16, ptr %147, align 8
  br i1 %146, label %149, label %152

149:                                              ; preds = %141, %129
  %150 = phi i16 [ %131, %129 ], [ %148, %141 ]
  %151 = phi ptr [ %130, %129 ], [ %147, %141 ]
  br label %152

152:                                              ; preds = %149, %141
  %153 = phi i16 [ %150, %149 ], [ %148, %141 ]
  %154 = phi ptr [ %151, %149 ], [ %147, %141 ]
  %155 = phi i16 [ 8, %149 ], [ 0, %141 ]
  %156 = and i16 %153, -9
  %157 = or i16 %155, %156
  store i16 %157, ptr %154, align 8
  %158 = load ptr, ptr %7, align 4
  %159 = getelementptr inbounds %struct.inet_cork_full, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %158, ptr noundef align 8 dereferenceable(16) %159, i32 16, i1 false)
  %160 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 17
  %161 = load i16, ptr %160, align 2
  %162 = zext i16 %161 to i32
  %163 = load i16, ptr %45, align 4
  %164 = zext i16 %163 to i32
  %165 = sub nsw i32 %162, %164
  %166 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %167 = load i32, ptr %166, align 8
  %168 = sub i32 %167, %165
  store i32 %168, ptr %166, align 8
  %169 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = icmp ult i32 %168, %170
  br i1 %171, label %172, label %173, !prof !10

172:                                              ; preds = %152
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !29
  unreachable

173:                                              ; preds = %152
  %174 = load ptr, ptr %41, align 4
  %175 = getelementptr i8, ptr %174, i32 %165
  store ptr %175, ptr %41, align 4
  %176 = icmp eq ptr %20, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.ipv6_txoptions, ptr %20, i32 0, i32 2
  %179 = load i16, ptr %178, align 4
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  call void @ipv6_push_frag_opts(ptr noundef %28, ptr noundef nonnull %20, ptr noundef nonnull %8) #12
  br label %182

182:                                              ; preds = %181, %177
  %183 = getelementptr inbounds %struct.ipv6_txoptions, ptr %20, i32 0, i32 3
  %184 = load i16, ptr %183, align 2
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.inet_cork_full, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 2
  call void @ipv6_push_nfrag_opts(ptr noundef %28, ptr noundef nonnull %20, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %187) #12
  br label %188

188:                                              ; preds = %186, %182, %173
  %189 = call ptr @skb_push(ptr noundef %28, i32 noundef 40) #12
  %190 = load ptr, ptr %41, align 4
  %191 = load ptr, ptr %43, align 8
  %192 = ptrtoint ptr %190 to i32
  %193 = ptrtoint ptr %191 to i32
  %194 = sub i32 %192, %193
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %45, align 4
  %196 = and i32 %194, 65535
  %197 = getelementptr i8, ptr %191, i32 %196
  %198 = getelementptr inbounds %struct.inet6_cork, ptr %3, i32 0, i32 2
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds %struct.inet_cork_full, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 3
  %202 = load i32, ptr %201, align 8
  %203 = getelementptr inbounds %struct.ipv6_pinfo, ptr %19, i32 0, i32 9
  %204 = load i16, ptr %203, align 2
  %205 = and i16 %204, 4096
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %188
  %208 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 17), align 1
  %209 = add i8 %208, -1
  %210 = and i8 %209, -3
  %211 = icmp eq i8 %210, 0
  br label %215

212:                                              ; preds = %188
  %213 = and i16 %204, 2048
  %214 = icmp ne i16 %213, 0
  br label %215

215:                                              ; preds = %212, %207
  %216 = phi i1 [ %214, %212 ], [ %211, %207 ]
  %217 = and i32 %202, -61696
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %260

219:                                              ; preds = %215
  %220 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 17), align 1
  %221 = icmp ne i8 %220, 0
  %222 = icmp eq i8 %220, 3
  %223 = select i1 %216, i1 %221, i1 %222
  br i1 %223, label %224, label %260

224:                                              ; preds = %219
  %225 = load i16, ptr %154, align 8
  %226 = and i16 %225, 768
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 7
  %230 = load i32, ptr %229, align 8
  br label %252

231:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i32 72, i1 false) #12, !annotation !17
  %232 = call i32 @__get_hash_from_flowi6(ptr noundef %23, ptr noundef nonnull %5) #12
  %233 = getelementptr inbounds %struct.flow_keys, ptr %5, i32 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = load i16, ptr %154, align 8
  %238 = and i16 %237, -769
  br label %245

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.flow_keys, ptr %5, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = icmp eq i32 %241, 0
  %243 = load i16, ptr %154, align 8
  %244 = and i16 %243, -769
  br i1 %242, label %247, label %245

245:                                              ; preds = %239, %236
  %246 = phi i16 [ %238, %236 ], [ %244, %239 ]
  br label %247

247:                                              ; preds = %245, %239
  %248 = phi i16 [ %246, %245 ], [ %244, %239 ]
  %249 = phi i16 [ 768, %245 ], [ 512, %239 ]
  %250 = or i16 %249, %248
  store i16 %250, ptr %154, align 8
  %251 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 7
  store i32 %232, ptr %251, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #12
  br label %252

252:                                              ; preds = %247, %228
  %253 = phi i32 [ %230, %228 ], [ %232, %247 ]
  %254 = call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 16) #12
  %255 = and i32 %254, -61696
  %256 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 27), align 1
  %257 = icmp eq i8 %256, 0
  %258 = or i32 %255, 2048
  %259 = select i1 %257, i32 %255, i32 %258
  br label %260

260:                                              ; preds = %252, %219, %215
  %261 = phi i32 [ %259, %252 ], [ 0, %219 ], [ %217, %215 ]
  %262 = shl nuw nsw i32 %200, 20
  %263 = or i32 %262, 1610612736
  %264 = call i32 @llvm.bswap.i32(i32 %263) #12
  %265 = or i32 %261, %264
  store i32 %265, ptr %197, align 4
  %266 = getelementptr inbounds %struct.inet6_cork, ptr %3, i32 0, i32 1
  %267 = load i8, ptr %266, align 4
  %268 = getelementptr inbounds %struct.ipv6hdr, ptr %197, i32 0, i32 4
  store i8 %267, ptr %268, align 1
  %269 = load i8, ptr %8, align 1
  %270 = getelementptr inbounds %struct.ipv6hdr, ptr %197, i32 0, i32 3
  store i8 %269, ptr %270, align 2
  %271 = getelementptr inbounds %struct.ipv6hdr, ptr %197, i32 0, i32 5
  %272 = getelementptr inbounds %struct.inet_cork_full, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %271, ptr noundef align 8 dereferenceable(16) %272, i32 16, i1 false)
  %273 = getelementptr inbounds %struct.ipv6hdr, ptr %197, i32 0, i32 6
  %274 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %273, ptr noundef align 4 dereferenceable(16) %274, i32 16, i1 false)
  %275 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 5
  store i32 %276, ptr %277, align 8
  %278 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 12
  %279 = load i32, ptr %278, align 8
  %280 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 11
  store i32 %279, ptr %280, align 4
  %281 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 11
  %282 = load i64, ptr %281, align 8
  %283 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 2
  store i64 %282, ptr %283, align 8
  %284 = icmp eq ptr %22, null
  br i1 %284, label %292, label %285

285:                                              ; preds = %260
  %286 = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %286) #12, !srcloc !22
  %287 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %286, ptr %286, i32 0, i32 1, ptr elementtype(i32) %286) #12, !srcloc !31
  %288 = extractvalue { i32, i32, i32 } %287, 0
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  br label %292

291:                                              ; preds = %285
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %292

292:                                              ; preds = %291, %290, %260
  %293 = icmp ne ptr %22, null
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 13, i32 0, i32 3
  %296 = load i16, ptr %295, align 2
  %297 = lshr i16 %296, 14
  %298 = trunc i16 %297 to i8
  %299 = and i8 %298, 1
  %300 = or i8 %299, %294
  %301 = zext i8 %300 to i16
  %302 = shl nuw nsw i16 %301, 14
  %303 = and i16 %296, -16385
  %304 = or i16 %302, %303
  store i16 %304, ptr %295, align 2
  %305 = ptrtoint ptr %22 to i32
  %306 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 4
  store i32 %305, ptr %306, align 8
  %307 = getelementptr inbounds %struct.rt6_info, ptr %22, i32 0, i32 6
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %335, label %310, !prof !10

310:                                              ; preds = %292
  %311 = getelementptr inbounds %struct.inet6_dev, ptr %308, i32 0, i32 33, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %314 = getelementptr i64, ptr %312, i32 5
  %315 = ptrtoint ptr %314 to i32
  %316 = call i32 @llvm.read_register.i32(metadata !0) #12
  %317 = inttoptr i32 %316 to ptr
  %318 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %317) #9, !srcloc !12
  %319 = add i32 %318, %315
  %320 = inttoptr i32 %319 to ptr
  %321 = load i64, ptr %320, align 8
  %322 = add i64 %321, 1
  store i64 %322, ptr %320, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %313) #12, !srcloc !19
  %323 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %324 = load i32, ptr %166, align 8
  %325 = zext i32 %324 to i64
  %326 = getelementptr i64, ptr %312, i32 6
  %327 = ptrtoint ptr %326 to i32
  %328 = call i32 @llvm.read_register.i32(metadata !0) #12
  %329 = inttoptr i32 %328 to ptr
  %330 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %329) #9, !srcloc !12
  %331 = add i32 %330, %327
  %332 = inttoptr i32 %331 to ptr
  %333 = load i64, ptr %332, align 8
  %334 = add i64 %333, %325
  store i64 %334, ptr %332, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %323) #12, !srcloc !19
  br label %335

335:                                              ; preds = %310, %292
  %336 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %337 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %338 = getelementptr i64, ptr %336, i32 5
  %339 = ptrtoint ptr %338 to i32
  %340 = call i32 @llvm.read_register.i32(metadata !0) #12
  %341 = inttoptr i32 %340 to ptr
  %342 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %341) #9, !srcloc !12
  %343 = add i32 %342, %339
  %344 = inttoptr i32 %343 to ptr
  %345 = load i64, ptr %344, align 8
  %346 = add i64 %345, 1
  store i64 %346, ptr %344, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %337) #12, !srcloc !19
  %347 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %348 = load i32, ptr %166, align 8
  %349 = zext i32 %348 to i64
  %350 = getelementptr i64, ptr %336, i32 6
  %351 = ptrtoint ptr %350 to i32
  %352 = call i32 @llvm.read_register.i32(metadata !0) #12
  %353 = inttoptr i32 %352 to ptr
  %354 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %353) #9, !srcloc !12
  %355 = add i32 %354, %351
  %356 = inttoptr i32 %355 to ptr
  %357 = load i64, ptr %356, align 8
  %358 = add i64 %357, %349
  store i64 %358, ptr %356, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %347) #12, !srcloc !19
  %359 = load i8, ptr %8, align 1
  %360 = icmp eq i8 %359, 58
  br i1 %360, label %361, label %417

361:                                              ; preds = %335
  %362 = load i32, ptr %306, align 8
  %363 = and i32 %362, -2
  %364 = inttoptr i32 %363 to ptr
  %365 = getelementptr inbounds %struct.rt6_info, ptr %364, i32 0, i32 6
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %394, label %368, !prof !10

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.inet6_dev, ptr %366, i32 0, i32 33, i32 3
  %370 = load ptr, ptr %369, align 4
  %371 = load ptr, ptr %43, align 8
  %372 = load i16, ptr %160, align 2
  %373 = zext i16 %372 to i32
  %374 = getelementptr i8, ptr %371, i32 %373
  %375 = load i8, ptr %374, align 4
  %376 = zext i8 %375 to i32
  %377 = or i32 %376, 256
  %378 = getelementptr [512 x %struct.atomic_t], ptr %370, i32 0, i32 %377
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %378) #12, !srcloc !22
  %379 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %378, ptr %378, i32 1, ptr elementtype(i32) %378) #12, !srcloc !44
  %380 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %381 = load ptr, ptr %43, align 8
  %382 = load i16, ptr %160, align 2
  %383 = zext i16 %382 to i32
  %384 = getelementptr i8, ptr %381, i32 %383
  %385 = load i8, ptr %384, align 4
  %386 = zext i8 %385 to i32
  %387 = or i32 %386, 256
  %388 = getelementptr [512 x %struct.atomic_t], ptr %380, i32 0, i32 %387
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %388) #12, !srcloc !22
  %389 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %388, ptr %388, i32 1, ptr elementtype(i32) %388) #12, !srcloc !44
  %390 = getelementptr inbounds %struct.inet6_dev, ptr %366, i32 0, i32 33, i32 2
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr [6 x %struct.atomic_t], ptr %391, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %392) #12, !srcloc !22
  %393 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %392, ptr %392, i32 1, ptr elementtype(i32) %392) #12, !srcloc !44
  br label %405

394:                                              ; preds = %361
  %395 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %396 = load ptr, ptr %43, align 8
  %397 = load i16, ptr %160, align 2
  %398 = zext i16 %397 to i32
  %399 = getelementptr i8, ptr %396, i32 %398
  %400 = load i8, ptr %399, align 4
  %401 = zext i8 %400 to i32
  %402 = or i32 %401, 256
  %403 = getelementptr [512 x %struct.atomic_t], ptr %395, i32 0, i32 %402
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %403) #12, !srcloc !22
  %404 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %403, ptr %403, i32 1, ptr elementtype(i32) %403) #12, !srcloc !44
  br label %405

405:                                              ; preds = %394, %368
  %406 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %407 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %408 = getelementptr [6 x i32], ptr %407, i32 0, i32 3
  %409 = ptrtoint ptr %408 to i32
  %410 = call i32 @llvm.read_register.i32(metadata !0) #12
  %411 = inttoptr i32 %410 to ptr
  %412 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %411) #9, !srcloc !12
  %413 = add i32 %412, %409
  %414 = inttoptr i32 %413 to ptr
  %415 = load i32, ptr %414, align 4
  %416 = add i32 %415, 1
  store i32 %416, ptr %414, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %406) #12, !srcloc !19
  br label %417

417:                                              ; preds = %405, %335
  call fastcc void @ip6_cork_release(ptr noundef %2, ptr noundef %3)
  br label %418

418:                                              ; preds = %417, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_cork_release(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ipv6_txoptions, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #12
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ipv6_txoptions, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #12
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.ipv6_txoptions, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #12
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.ipv6_txoptions, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #12
  %17 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %17) #12
  store ptr null, ptr %1, align 4
  br label %18

18:                                               ; preds = %5, %2
  %19 = getelementptr inbounds %struct.inet_cork, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  tail call void @dst_release(ptr noundef nonnull %20) #12
  store ptr null, ptr %19, align 4
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, -3
  store i32 %24, ptr %0, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.inet_cork_full, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %26, i8 0, i32 88, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_send_skb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @ip6_local_out(ptr noundef nonnull @init_net, ptr noundef %7, ptr noundef %0) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %1
  %11 = icmp sgt i32 %8, 0
  %12 = icmp eq i32 %8, 2
  %13 = select i1 %12, i32 0, i32 -105
  %14 = select i1 %11, i32 %13, i32 %8
  br i1 %12, label %59, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rt6_info, ptr %6, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = tail call ptr @llvm.thread.pointer() #12
  br i1 %18, label %40, label %20, !prof !10

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = add i32 %22, 512
  store volatile i32 %23, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %17, i32 0, i32 33, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #9, !srcloc !12
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %35 = getelementptr [37 x i64], ptr %31, i32 0, i32 14
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, ptr %35, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %38 = load i32, ptr %32, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %32, align 4
  tail call fastcc void @local_bh_enable()
  br label %40

40:                                               ; preds = %20, %15
  %41 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = add i32 %42, 512
  store volatile i32 %43, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %44 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #9, !srcloc !12
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.ipstats_mib, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %54 = getelementptr [37 x i64], ptr %50, i32 0, i32 14
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, ptr %54, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %57 = load i32, ptr %51, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %51, align 4
  tail call fastcc void @local_bh_enable()
  br label %59

59:                                               ; preds = %40, %10, %1
  %60 = phi i32 [ %14, %40 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_push_pending_frames(ptr noundef %0) #0 {
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
  %13 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %15 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 20
  %16 = tail call ptr @__ip6_make_skb(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @ip6_send_skb(ptr noundef nonnull %16)
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %19, %18 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_flush_pending_frames(ptr noundef %0) #0 {
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
  %13 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %15 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 20
  tail call fastcc void @__ip6_flush_pending_frames(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ip6_flush_pending_frames(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon.83, ptr %1, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %1
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %74, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  br label %12

12:                                               ; preds = %69, %10
  %13 = phi ptr [ %6, %10 ], [ %70, %69 ]
  %14 = load i32, ptr %11, align 4
  %15 = add i32 %14, -1
  store volatile i32 %15, ptr %11, align 4
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds %struct.anon.76, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr null, ptr %17, align 4
  store ptr null, ptr %13, align 8
  %19 = getelementptr inbounds %struct.anon.76, ptr %16, i32 0, i32 1
  store volatile ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %12
  %25 = inttoptr i32 %22 to ptr
  %26 = getelementptr inbounds %struct.rt6_info, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = tail call ptr @llvm.thread.pointer() #12
  br i1 %28, label %50, label %30, !prof !10

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = add i32 %32, 512
  store volatile i32 %33, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %34 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 33, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #9, !srcloc !12
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.ipstats_mib, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %45 = getelementptr [37 x i64], ptr %41, i32 0, i32 14
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %45, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %48 = load i32, ptr %42, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %42, align 4
  tail call fastcc void @local_bh_enable()
  br label %50

50:                                               ; preds = %30, %24
  %51 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = add i32 %52, 512
  store volatile i32 %53, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %54 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %57) #9, !srcloc !12
  %59 = add i32 %58, %55
  %60 = inttoptr i32 %59 to ptr
  %61 = getelementptr inbounds %struct.ipstats_mib, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %64 = getelementptr [37 x i64], ptr %60, i32 0, i32 14
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr %64, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %67 = load i32, ptr %61, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %61, align 4
  tail call fastcc void @local_bh_enable()
  br label %69

69:                                               ; preds = %50, %12
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #12
  %70 = load volatile ptr, ptr %5, align 4
  %71 = icmp eq ptr %70, %1
  %72 = icmp eq ptr %70, null
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %12

74:                                               ; preds = %69, %4
  tail call fastcc void @ip6_cork_release(ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip6_make_skb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.inet6_cork, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  store i64 0, ptr %11, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  %13 = getelementptr inbounds i8, ptr %12, i32 12
  store i32 0, ptr %13, align 4, !annotation !17
  %14 = getelementptr inbounds %struct.ipcm6_cookie, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ipv6_txoptions, ptr %15, i32 0, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = and i32 %8, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  store ptr %12, ptr %12, align 4
  %26 = getelementptr inbounds %struct.anon.83, ptr %12, i32 0, i32 1
  store ptr %12, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sk_buff_head, ptr %12, i32 0, i32 1
  store i32 0, ptr %27, align 4
  store i32 0, ptr %9, align 8
  %28 = getelementptr inbounds %struct.inet_cork, ptr %9, i32 0, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.inet_cork, ptr %9, i32 0, i32 2
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %struct.inet_cork, ptr %9, i32 0, i32 5
  store ptr null, ptr %30, align 4
  store ptr null, ptr %11, align 8
  %31 = call fastcc i32 @ip6_setup_cork(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %11, ptr noundef %5, ptr noundef %7, ptr noundef %6)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  call fastcc void @ip6_cork_release(ptr noundef %9, ptr noundef nonnull %11)
  %34 = inttoptr i32 %31 to ptr
  br label %67

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ipcm6_cookie, ptr %5, i32 0, i32 4
  %37 = load i8, ptr %36, align 2
  %38 = icmp slt i8 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %41 = load volatile i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, -4161
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi ptr [ %48, %46 ], [ null, %39 ]
  %51 = getelementptr inbounds %struct.ipv6_pinfo, ptr %50, i32 0, i32 9
  %52 = load i16, ptr %51, align 2
  %53 = lshr i16 %52, 10
  %54 = trunc i16 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, ptr %36, align 2
  br label %56

56:                                               ; preds = %49, %35
  %57 = tail call ptr @llvm.thread.pointer() #12
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 139
  %59 = add i32 %22, %3
  %60 = add i32 %22, %4
  %61 = call fastcc i32 @__ip6_append_data(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %12, ptr noundef %9, ptr noundef nonnull %11, ptr noundef %58, ptr noundef %1, ptr noundef %2, i32 noundef %59, i32 noundef %60, i32 noundef %8, ptr noundef %5)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  call fastcc void @__ip6_flush_pending_frames(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %9, ptr noundef nonnull %11)
  %64 = inttoptr i32 %61 to ptr
  br label %67

65:                                               ; preds = %56
  %66 = call ptr @__ip6_make_skb(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %9, ptr noundef nonnull %11)
  br label %67

67:                                               ; preds = %65, %63, %33, %21
  %68 = phi ptr [ %34, %33 ], [ %64, %63 ], [ %66, %65 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_finish_output2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 21
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, %13
  %18 = and i32 %17, 131056
  %19 = add nuw nsw i32 %18, 16
  %20 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = icmp ugt i32 %19, %26
  br i1 %27, label %28, label %81, !prof !10

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 44
  %30 = load ptr, ptr %29, align 16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %81, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @skb_expand_head(ptr noundef %2, i32 noundef %19) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  br label %81

38:                                               ; preds = %32
  %39 = icmp eq ptr %10, null
  %40 = tail call ptr @llvm.thread.pointer() #12
  br i1 %39, label %61, label %41, !prof !10

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = add i32 %43, 512
  store volatile i32 %44, ptr %42, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %45 = getelementptr inbounds %struct.inet6_dev, ptr %10, i32 0, i32 33, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #9, !srcloc !12
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.ipstats_mib, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %56 = getelementptr [37 x i64], ptr %52, i32 0, i32 14
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %56, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %59 = load i32, ptr %53, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %53, align 4
  tail call fastcc void @local_bh_enable()
  br label %61

61:                                               ; preds = %41, %38
  %62 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %63 = load volatile i32, ptr %62, align 4
  %64 = add i32 %63, 512
  store volatile i32 %64, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %65 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #9, !srcloc !12
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = getelementptr inbounds %struct.ipstats_mib, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %76 = getelementptr [37 x i64], ptr %72, i32 0, i32 14
  %77 = load i64, ptr %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, ptr %76, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %79 = load i32, ptr %73, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %73, align 4
  tail call fastcc void @local_bh_enable()
  br label %438

81:                                               ; preds = %35, %28, %3
  %82 = phi ptr [ %37, %35 ], [ %23, %28 ], [ %23, %3 ]
  %83 = phi ptr [ %33, %35 ], [ %2, %28 ], [ %2, %3 ]
  %84 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 16
  %85 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 13, i32 0, i32 18
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %82, i32 %87
  %89 = getelementptr inbounds %struct.ipv6hdr, ptr %88, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 255
  %92 = icmp eq i32 %91, 255
  br i1 %92, label %93, label %218

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %155

98:                                               ; preds = %93
  %99 = tail call zeroext i1 @sk_mc_loop(ptr noundef %1) #12
  br i1 %99, label %100, label %155

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ipv6hdr, ptr %88, i32 0, i32 5
  %102 = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %8, ptr noundef %89, ptr noundef %101) #12
  br i1 %102, label %103, label %155

103:                                              ; preds = %100
  %104 = tail call ptr @skb_clone(ptr noundef %83, i32 noundef 2592) #12
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = tail call i32 @dev_loopback_xmit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %104) #12, !callees !20
  br label %108

108:                                              ; preds = %106, %103
  %109 = getelementptr inbounds %struct.ipv6hdr, ptr %88, i32 0, i32 4
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %155

112:                                              ; preds = %108
  %113 = icmp eq ptr %10, null
  %114 = tail call ptr @llvm.thread.pointer() #12
  br i1 %113, label %135, label %115, !prof !10

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %117 = load volatile i32, ptr %116, align 4
  %118 = add i32 %117, 512
  store volatile i32 %118, ptr %116, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %119 = getelementptr inbounds %struct.inet6_dev, ptr %10, i32 0, i32 33, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = ptrtoint ptr %120 to i32
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #9, !srcloc !12
  %125 = add i32 %124, %121
  %126 = inttoptr i32 %125 to ptr
  %127 = getelementptr inbounds %struct.ipstats_mib, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %130 = getelementptr [37 x i64], ptr %126, i32 0, i32 14
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, ptr %130, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %133 = load i32, ptr %127, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %127, align 4
  tail call fastcc void @local_bh_enable()
  br label %135

135:                                              ; preds = %115, %112
  %136 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %137 = load volatile i32, ptr %136, align 4
  %138 = add i32 %137, 512
  store volatile i32 %138, ptr %136, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %139 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = ptrtoint ptr %140 to i32
  %142 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %143 = inttoptr i32 %142 to ptr
  %144 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %143) #9, !srcloc !12
  %145 = add i32 %144, %141
  %146 = inttoptr i32 %145 to ptr
  %147 = getelementptr inbounds %struct.ipstats_mib, ptr %146, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %150 = getelementptr [37 x i64], ptr %146, i32 0, i32 14
  %151 = load i64, ptr %150, align 8
  %152 = add i64 %151, 1
  store i64 %152, ptr %150, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %153 = load i32, ptr %147, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %147, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %83, i32 noundef 0) #12
  br label %438

155:                                              ; preds = %108, %100, %98, %93
  %156 = icmp eq ptr %10, null
  br i1 %156, label %183, label %157, !prof !10

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.inet6_dev, ptr %10, i32 0, i32 33, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %161 = getelementptr i64, ptr %159, i32 24
  %162 = ptrtoint ptr %161 to i32
  %163 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %164 = inttoptr i32 %163 to ptr
  %165 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %164) #9, !srcloc !12
  %166 = add i32 %165, %162
  %167 = inttoptr i32 %166 to ptr
  %168 = load i64, ptr %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, ptr %167, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %160) #12, !srcloc !19
  %170 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %171 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 5
  %172 = load i32, ptr %171, align 8
  %173 = zext i32 %172 to i64
  %174 = getelementptr i64, ptr %159, i32 28
  %175 = ptrtoint ptr %174 to i32
  %176 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %177 = inttoptr i32 %176 to ptr
  %178 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %177) #9, !srcloc !12
  %179 = add i32 %178, %175
  %180 = inttoptr i32 %179 to ptr
  %181 = load i64, ptr %180, align 8
  %182 = add i64 %181, %173
  store i64 %182, ptr %180, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %170) #12, !srcloc !19
  br label %183

183:                                              ; preds = %157, %155
  %184 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %187 = getelementptr i64, ptr %185, i32 24
  %188 = ptrtoint ptr %187 to i32
  %189 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %190 = inttoptr i32 %189 to ptr
  %191 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #9, !srcloc !12
  %192 = add i32 %191, %188
  %193 = inttoptr i32 %192 to ptr
  %194 = load i64, ptr %193, align 8
  %195 = add i64 %194, 1
  store i64 %195, ptr %193, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %186) #12, !srcloc !19
  %196 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %197 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 5
  %198 = load i32, ptr %197, align 8
  %199 = zext i32 %198 to i64
  %200 = getelementptr i64, ptr %185, i32 28
  %201 = ptrtoint ptr %200 to i32
  %202 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %203 = inttoptr i32 %202 to ptr
  %204 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %203) #9, !srcloc !12
  %205 = add i32 %204, %201
  %206 = inttoptr i32 %205 to ptr
  %207 = load i64, ptr %206, align 8
  %208 = add i64 %207, %199
  store i64 %208, ptr %206, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %196) #12, !srcloc !19
  %209 = getelementptr [16 x i8], ptr %89, i32 0, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = and i8 %210, 14
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %183
  %214 = load i32, ptr %94, align 8
  %215 = and i32 %214, 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  tail call void @kfree_skb_reason(ptr noundef %83, i32 noundef 0) #12
  br label %438

218:                                              ; preds = %213, %183, %81
  %219 = tail call ptr @llvm.thread.pointer() #12
  %220 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 1
  %221 = load volatile i32, ptr %220, align 4
  %222 = add i32 %221, 512
  store volatile i32 %222, ptr %220, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %223 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 7
  %224 = load i32, ptr %223, align 4
  %225 = and i32 %224, 2
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 5
  br label %234

229:                                              ; preds = %218
  %230 = and i32 %224, 16777216
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232, !prof !9

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 3
  br label %234

234:                                              ; preds = %232, %229, %227
  %235 = phi ptr [ %228, %227 ], [ %233, %232 ], [ %89, %229 ]
  %236 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31), align 4
  %237 = getelementptr inbounds %struct.neigh_hash_table, ptr %236, i32 0, i32 2
  %238 = load i32, ptr %235, align 4
  %239 = ptrtoint ptr %8 to i32
  %240 = xor i32 %238, %239
  %241 = load i32, ptr %237, align 4
  %242 = mul i32 %240, %241
  %243 = getelementptr i32, ptr %235, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr %struct.neigh_hash_table, ptr %236, i32 0, i32 2, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = mul i32 %246, %244
  %248 = add i32 %247, %242
  %249 = getelementptr i32, ptr %235, i32 2
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr %struct.neigh_hash_table, ptr %236, i32 0, i32 2, i32 2
  %252 = load i32, ptr %251, align 4
  %253 = mul i32 %252, %250
  %254 = add i32 %248, %253
  %255 = getelementptr i32, ptr %235, i32 3
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr %struct.neigh_hash_table, ptr %236, i32 0, i32 2, i32 3
  %258 = load i32, ptr %257, align 4
  %259 = mul i32 %258, %256
  %260 = add i32 %254, %259
  %261 = getelementptr inbounds %struct.neigh_hash_table, ptr %236, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = sub i32 32, %262
  %264 = lshr i32 %260, %263
  %265 = load ptr, ptr %236, align 4
  %266 = getelementptr ptr, ptr %265, i32 %264
  %267 = load volatile ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %294, label %269

269:                                              ; preds = %291, %234
  %270 = phi ptr [ %292, %291 ], [ %267, %234 ]
  %271 = getelementptr inbounds %struct.neighbour, ptr %270, i32 0, i32 26
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, %8
  br i1 %273, label %274, label %291

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.neighbour, ptr %270, i32 0, i32 28
  %276 = load i32, ptr %275, align 4
  %277 = xor i32 %276, %238
  %278 = getelementptr %struct.neighbour, ptr %270, i32 1, i32 1
  %279 = load i32, ptr %278, align 4
  %280 = xor i32 %279, %244
  %281 = or i32 %280, %277
  %282 = getelementptr %struct.neighbour, ptr %270, i32 1, i32 2
  %283 = load i32, ptr %282, align 4
  %284 = xor i32 %283, %250
  %285 = or i32 %281, %284
  %286 = getelementptr %struct.neighbour, ptr %270, i32 1, i32 3
  %287 = load i32, ptr %286, align 4
  %288 = xor i32 %287, %256
  %289 = or i32 %285, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %274, %269
  %292 = load volatile ptr, ptr %270, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %269

294:                                              ; preds = %291, %234
  %295 = tail call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %235, ptr noundef %8, i1 noundef zeroext false) #12
  br label %296

296:                                              ; preds = %294, %274
  %297 = phi ptr [ %295, %294 ], [ %270, %274 ]
  %298 = icmp ugt ptr %297, inttoptr (i32 -4096 to ptr)
  br i1 %298, label %398, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 13, i32 0, i32 3
  %301 = load i16, ptr %300, align 2
  %302 = and i16 %301, 32
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %321, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %313, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.sock, ptr %306, i32 0, i32 29
  %310 = load volatile i32, ptr %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %308
  store volatile i32 0, ptr %309, align 4
  br label %313

313:                                              ; preds = %312, %308, %304
  %314 = icmp eq ptr %297, null
  br i1 %314, label %321, label %315

315:                                              ; preds = %313
  %316 = load volatile i32, ptr @jiffies, align 64
  %317 = getelementptr inbounds %struct.neighbour, ptr %297, i32 0, i32 3
  %318 = load volatile i32, ptr %317, align 4
  %319 = icmp eq i32 %318, %316
  br i1 %319, label %321, label %320

320:                                              ; preds = %315
  store volatile i32 %316, ptr %317, align 4
  br label %321

321:                                              ; preds = %320, %315, %313, %299
  %322 = getelementptr inbounds %struct.neighbour, ptr %297, i32 0, i32 20
  %323 = getelementptr inbounds %struct.neighbour, ptr %297, i32 0, i32 12
  %324 = load volatile i8, ptr %323, align 4
  %325 = and i8 %324, -62
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %392, label %327

327:                                              ; preds = %321
  %328 = load volatile i32, ptr %322, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %392, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.neighbour, ptr %297, i32 0, i32 20, i32 1
  %332 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 17
  %333 = getelementptr inbounds %struct.neighbour, ptr %297, i32 0, i32 20, i32 2
  br label %334

334:                                              ; preds = %367, %330
  %335 = load volatile i32, ptr %331, align 4
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %342, label %338

338:                                              ; preds = %338, %334
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !46
  %339 = load volatile i32, ptr %331, align 4
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %338

342:                                              ; preds = %338, %334
  %343 = phi i32 [ %335, %334 ], [ %339, %338 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !47
  %344 = load volatile i32, ptr %322, align 4
  %345 = icmp ult i32 %344, 17
  br i1 %345, label %346, label %355, !prof !9

346:                                              ; preds = %342
  %347 = load ptr, ptr %332, align 4
  %348 = load ptr, ptr %84, align 8
  %349 = ptrtoint ptr %347 to i32
  %350 = ptrtoint ptr %348 to i32
  %351 = sub i32 %349, %350
  %352 = icmp ugt i32 %351, 15
  br i1 %352, label %353, label %367, !prof !9

353:                                              ; preds = %346
  %354 = getelementptr i8, ptr %347, i32 -16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %354, ptr noundef align 4 dereferenceable(16) %333, i32 16, i1 false) #12
  br label %367

355:                                              ; preds = %342
  %356 = add i32 %344, 15
  %357 = and i32 %356, -16
  %358 = load ptr, ptr %332, align 4
  %359 = load ptr, ptr %84, align 8
  %360 = ptrtoint ptr %358 to i32
  %361 = ptrtoint ptr %359 to i32
  %362 = sub i32 %360, %361
  %363 = icmp ult i32 %362, %357
  br i1 %363, label %367, label %364, !prof !10

364:                                              ; preds = %355
  %365 = sub i32 0, %357
  %366 = getelementptr i8, ptr %358, i32 %365
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %366, ptr align 4 %333, i32 %357, i1 false) #12
  br label %367

367:                                              ; preds = %364, %355, %353, %346
  %368 = phi i32 [ 16, %353 ], [ 16, %346 ], [ %357, %364 ], [ %357, %355 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !48
  %369 = load volatile i32, ptr %331, align 4
  %370 = icmp eq i32 %369, %343
  br i1 %370, label %371, label %334

371:                                              ; preds = %367
  %372 = load ptr, ptr %332, align 4
  %373 = load ptr, ptr %84, align 8
  %374 = ptrtoint ptr %372 to i32
  %375 = ptrtoint ptr %373 to i32
  %376 = sub i32 %374, %375
  %377 = icmp ult i32 %376, %368
  %378 = load i1, ptr @neigh_hh_output.__already_done, align 1
  %379 = xor i1 %378, true
  %380 = select i1 %377, i1 %379, i1 false
  br i1 %380, label %381, label %382, !prof !10

381:                                              ; preds = %371
  store i1 true, ptr @neigh_hh_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 9, ptr noundef null) #12
  br label %382

382:                                              ; preds = %381, %371
  br i1 %377, label %383, label %384

383:                                              ; preds = %382
  tail call void @kfree_skb_reason(ptr noundef %83, i32 noundef 0) #12
  br label %396

384:                                              ; preds = %382
  %385 = load ptr, ptr %332, align 4
  %386 = sub i32 0, %344
  %387 = getelementptr i8, ptr %385, i32 %386
  store ptr %387, ptr %332, align 4
  %388 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 5
  %389 = load i32, ptr %388, align 8
  %390 = add i32 %389, %344
  store i32 %390, ptr %388, align 8
  %391 = tail call i32 @dev_queue_xmit(ptr noundef %83) #12
  br label %396

392:                                              ; preds = %327, %321
  %393 = getelementptr inbounds %struct.neighbour, ptr %297, i32 0, i32 21
  %394 = load ptr, ptr %393, align 4
  %395 = tail call i32 %394(ptr noundef %297, ptr noundef %83) #12
  br label %396

396:                                              ; preds = %392, %384, %383
  %397 = phi i32 [ %395, %392 ], [ 1, %383 ], [ %391, %384 ]
  tail call fastcc void @local_bh_enable() #12
  br label %438

398:                                              ; preds = %296
  tail call fastcc void @local_bh_enable() #12
  %399 = icmp eq ptr %10, null
  br i1 %399, label %419, label %400, !prof !10

400:                                              ; preds = %398
  %401 = load volatile i32, ptr %220, align 4
  %402 = add i32 %401, 512
  store volatile i32 %402, ptr %220, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %403 = getelementptr inbounds %struct.inet6_dev, ptr %10, i32 0, i32 33, i32 1
  %404 = load ptr, ptr %403, align 4
  %405 = ptrtoint ptr %404 to i32
  %406 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %407 = inttoptr i32 %406 to ptr
  %408 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %407) #9, !srcloc !12
  %409 = add i32 %408, %405
  %410 = inttoptr i32 %409 to ptr
  %411 = getelementptr inbounds %struct.ipstats_mib, ptr %410, i32 0, i32 1
  %412 = load i32, ptr %411, align 4
  %413 = add i32 %412, 1
  store i32 %413, ptr %411, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %414 = getelementptr [37 x i64], ptr %410, i32 0, i32 15
  %415 = load i64, ptr %414, align 8
  %416 = add i64 %415, 1
  store i64 %416, ptr %414, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %417 = load i32, ptr %411, align 4
  %418 = add i32 %417, 1
  store i32 %418, ptr %411, align 4
  tail call fastcc void @local_bh_enable()
  br label %419

419:                                              ; preds = %400, %398
  %420 = load volatile i32, ptr %220, align 4
  %421 = add i32 %420, 512
  store volatile i32 %421, ptr %220, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %422 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %423 = load ptr, ptr %422, align 4
  %424 = ptrtoint ptr %423 to i32
  %425 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %426 = inttoptr i32 %425 to ptr
  %427 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %426) #9, !srcloc !12
  %428 = add i32 %427, %424
  %429 = inttoptr i32 %428 to ptr
  %430 = getelementptr inbounds %struct.ipstats_mib, ptr %429, i32 0, i32 1
  %431 = load i32, ptr %430, align 4
  %432 = add i32 %431, 1
  store i32 %432, ptr %430, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !13
  %433 = getelementptr [37 x i64], ptr %429, i32 0, i32 15
  %434 = load i64, ptr %433, align 8
  %435 = add i64 %434, 1
  store i64 %435, ptr %433, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !14
  %436 = load i32, ptr %430, align 4
  %437 = add i32 %436, 1
  store i32 %437, ptr %430, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %83, i32 noundef 0) #12
  br label %438

438:                                              ; preds = %419, %396, %217, %135, %61
  %439 = phi i32 [ -22, %419 ], [ %397, %396 ], [ 0, %217 ], [ -12, %61 ], [ 0, %135 ]
  ret i32 %439
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_mc_loop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_mcast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_loopback_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_hash_from_flowi6(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_rcv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_route_forward(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_get_ifaddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_ifa_finish_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_rxpmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msg_zerocopy_realloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_zcopy_set(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %13, %7
  %18 = icmp eq ptr %2, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 1, !range !36
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %19
  store i8 0, ptr %2, align 1
  br label %34

23:                                               ; preds = %19, %17
  %24 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #12, !srcloc !22
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #12, !srcloc !33
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !10

28:                                               ; preds = %23
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %34, label %32, !prof !9

32:                                               ; preds = %28, %23
  %33 = phi i32 [ 2, %23 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %33) #12
  br label %34

34:                                               ; preds = %32, %28, %22
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 11
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ubuf_info, ptr %1, i32 0, i32 3
  %38 = load i8, ptr %37, align 4
  %39 = load ptr, ptr %8, align 4
  %40 = load i8, ptr %39, align 8
  %41 = or i8 %40, %38
  store i8 %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %34, %13, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_iter_dgram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_add(i32 noundef %0, ptr noundef %1) unnamed_addr #2 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #12, !srcloc !22
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %0, ptr elementtype(i32) %1) #12, !srcloc !33
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %2
  %7 = add i32 %4, %0
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 2, %2 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %11) #12
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_callback(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_put_abort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148874624}
!12 = !{i64 376093}
!13 = !{i64 2149422025}
!14 = !{i64 2149422326}
!15 = !{i64 2154388141}
!16 = !{i64 2154405400}
!17 = !{!"auto-init"}
!18 = !{i64 357393, i64 357454}
!19 = !{i64 360410}
!20 = distinct !{ptr @dev_loopback_xmit, null, ptr @ip6_forward_finish}
!21 = !{i64 2148950381}
!22 = !{i64 462154, i64 2147952125, i64 2147952151, i64 2147952198, i64 2147952220, i64 2147952248, i64 2147952268}
!23 = !{i64 1453805, i64 1453828, i64 1453848, i64 1453872, i64 1453888}
!24 = !{i64 2148938323}
!25 = !{i64 2148938398, i64 2148938425, i64 2148938472, i64 2148938494, i64 2148938522, i64 2148938542}
!26 = !{i64 2148987984}
!27 = !{i64 2149060854}
!28 = !{i64 2149061071}
!29 = !{i64 2153661619, i64 2153662107, i64 2153661656, i64 2153661712, i64 2153661746, i64 2153661770, i64 2153661811, i64 2153661832, i64 2153661860, i64 2153661894}
!30 = !{i64 2147963844}
!31 = !{i64 448723, i64 448748, i64 448770, i64 448786, i64 448798, i64 448818, i64 448842, i64 448858, i64 448870}
!32 = !{i64 2147963970}
!33 = !{i64 2147965795, i64 2147965827, i64 2147965856, i64 2147965890, i64 2147965921, i64 2147965944}
!34 = !{i64 2157690449, i64 2157690935, i64 2157690486, i64 2157690542, i64 2157690576, i64 2157690600, i64 2157690641, i64 2157690662, i64 2157690690, i64 2157690724}
!35 = !{i64 2157693627, i64 2157694113, i64 2157693664, i64 2157693720, i64 2157693754, i64 2157693778, i64 2157693819, i64 2157693840, i64 2157693868, i64 2157693902}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148065993}
!38 = !{i64 2147968152, i64 2147968184, i64 2147968213, i64 2147968247, i64 2147968278, i64 2147968301}
!39 = !{i64 2149010487}
!40 = !{i64 2148062159}
!41 = !{i64 2147965021, i64 2147965053, i64 2147965082, i64 2147965116, i64 2147965147, i64 2147965170}
!42 = !{i64 2148062362}
!43 = !{i64 2153673431, i64 2153673919, i64 2153673468, i64 2153673524, i64 2153673558, i64 2153673582, i64 2153673623, i64 2153673644, i64 2153673672, i64 2153673706}
!44 = !{i64 2147964337, i64 2147964363, i64 2147964392, i64 2147964426, i64 2147964457, i64 2147964480}
!45 = !{i64 2149435149}
!46 = !{i64 2149434991}
!47 = !{i64 2149435293}
!48 = !{i64 2149421726}
