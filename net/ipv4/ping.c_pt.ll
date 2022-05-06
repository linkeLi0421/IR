; ModuleID = '/llk/IR/net/ipv4/ping.c_pt.bc'
source_filename = "../net/ipv4/ping.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pingv6_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pingv6_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pingv6_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_hash\22\09\09\09\09\09"
module asm "__kstrtabns_ping_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_ping_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_ping_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_init_sock\22\09\09\09\09\09"
module asm "__kstrtabns_ping_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_close:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_close\22\09\09\09\09\09"
module asm "__kstrtabns_ping_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_bind\22\09\09\09\09\09"
module asm "__kstrtabns_ping_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_err:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_err\22\09\09\09\09\09"
module asm "__kstrtabns_ping_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_getfrag\22\09\09\09\09\09"
module asm "__kstrtabns_ping_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_common_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_common_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_ping_common_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_ping_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_queue_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_ping_queue_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_ping_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_prot\22\09\09\09\09\09"
module asm "__kstrtabns_ping_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_seq_start\22\09\09\09\09\09"
module asm "__kstrtabns_ping_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_seq_next\22\09\09\09\09\09"
module asm "__kstrtabns_ping_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ping_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22ping_seq_stop\22\09\09\09\09\09"
module asm "__kstrtabns_ping_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pingv6_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ping_table = type { [64 x %struct.hlist_nulls_head], %struct.rwlock_t }
%struct.hlist_nulls_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.icmp_err = type { i32, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.123, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.123 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.88, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.124, [0 x i32], %union.anon.125, i16, i16, %union.anon.126, %struct.refcount_struct, [0 x i32], %union.anon.127 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { %struct.hlist_node }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.128, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.129, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.130, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.128 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.129 = type { ptr }
%union.anon.130 = type { ptr }
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
%struct.flowi = type { %union.anon.83 }
%union.anon.83 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.103, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.103 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.anon = type { i32, i32 }
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
%struct.icmphdr = type { i8, i8, i16, %union.anon.139 }
%union.anon.139 = type { i32 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.142 }
%union.anon.142 = type { [1 x i32] }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.136, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.144, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.144 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.pingfakehdr = type { %struct.icmphdr, ptr, i16, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.122, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.120 }
%union.anon.4 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.122 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.84 = type { i16, i16 }
%struct.anon.85 = type { i8, i8 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon.140 = type { i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ping_iter_state = type { %struct.seq_net_private, i32, i16 }
%struct.seq_net_private = type {}

@pingv6_ops = dso_local global %struct.pingv6_ops zeroinitializer, align 4
@__kstrtab_pingv6_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pingv6_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pingv6_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pingv6_ops to i32), ptr @__kstrtab_pingv6_ops, ptr @__kstrtabns_pingv6_ops }, section "___ksymtab_gpl+pingv6_ops", align 4
@__kstrtab_ping_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_hash to i32), ptr @__kstrtab_ping_hash, ptr @__kstrtabns_ping_hash }, section "___ksymtab_gpl+ping_hash", align 4
@ping_table = internal global %struct.ping_table zeroinitializer, align 4
@ping_port_rover = internal unnamed_addr global i16 0, align 2
@__kstrtab_ping_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_get_port to i32), ptr @__kstrtab_ping_get_port, ptr @__kstrtabns_ping_get_port }, section "___ksymtab_gpl+ping_get_port", align 4
@__kstrtab_ping_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_unhash to i32), ptr @__kstrtab_ping_unhash, ptr @__kstrtabns_ping_unhash }, section "___ksymtab_gpl+ping_unhash", align 4
@__kstrtab_ping_init_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_init_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_init_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_init_sock to i32), ptr @__kstrtab_ping_init_sock, ptr @__kstrtabns_ping_init_sock }, section "___ksymtab_gpl+ping_init_sock", align 4
@__kstrtab_ping_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_close = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_close to i32), ptr @__kstrtab_ping_close, ptr @__kstrtabns_ping_close }, section "___ksymtab_gpl+ping_close", align 4
@__kstrtab_ping_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_bind to i32), ptr @__kstrtab_ping_bind, ptr @__kstrtabns_ping_bind }, section "___ksymtab_gpl+ping_bind", align 4
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@__kstrtab_ping_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_err = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_err to i32), ptr @__kstrtab_ping_err, ptr @__kstrtabns_ping_err }, section "___ksymtab_gpl+ping_err", align 4
@__kstrtab_ping_getfrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_getfrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_getfrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_getfrag to i32), ptr @__kstrtab_ping_getfrag, ptr @__kstrtabns_ping_getfrag }, section "___ksymtab_gpl+ping_getfrag", align 4
@__kstrtab_ping_common_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_common_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_common_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_common_sendmsg to i32), ptr @__kstrtab_ping_common_sendmsg, ptr @__kstrtabns_ping_common_sendmsg }, section "___ksymtab_gpl+ping_common_sendmsg", align 4
@__kstrtab_ping_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_recvmsg to i32), ptr @__kstrtab_ping_recvmsg, ptr @__kstrtabns_ping_recvmsg }, section "___ksymtab_gpl+ping_recvmsg", align 4
@__kstrtab_ping_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_queue_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_queue_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_queue_rcv_skb to i32), ptr @__kstrtab_ping_queue_rcv_skb, ptr @__kstrtabns_ping_queue_rcv_skb }, section "___ksymtab_gpl+ping_queue_rcv_skb", align 4
@__kstrtab_ping_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_rcv to i32), ptr @__kstrtab_ping_rcv, ptr @__kstrtabns_ping_rcv }, section "___ksymtab_gpl+ping_rcv", align 4
@ping_prot = dso_local global %struct.proto { ptr @ping_close, ptr null, ptr @ip4_datagram_connect, ptr @__udp_disconnect, ptr null, ptr null, ptr @ping_init_sock, ptr null, ptr null, ptr @ip_setsockopt, ptr @ip_getsockopt, ptr null, ptr @ping_v4_sendmsg, ptr @ping_recvmsg, ptr null, ptr @ping_bind, ptr null, ptr @ping_queue_rcv_skb, ptr null, ptr @ip4_datagram_release_cb, ptr @ping_hash, ptr @ping_unhash, ptr null, ptr @ping_get_port, ptr @ping_unhash, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 704, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.123 zeroinitializer, ptr null, [32 x i8] c"PING\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__kstrtab_ping_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_prot to i32), ptr @__kstrtab_ping_prot, ptr @__kstrtabns_ping_prot }, section "___ksymtab+ping_prot", align 4
@__kstrtab_ping_seq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_seq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_seq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_seq_start to i32), ptr @__kstrtab_ping_seq_start, ptr @__kstrtabns_ping_seq_start }, section "___ksymtab_gpl+ping_seq_start", align 4
@__kstrtab_ping_seq_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_seq_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_seq_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_seq_next to i32), ptr @__kstrtab_ping_seq_next, ptr @__kstrtabns_ping_seq_next }, section "___ksymtab_gpl+ping_seq_next", align 4
@__kstrtab_ping_seq_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_ping_seq_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_ping_seq_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ping_seq_stop to i32), ptr @__kstrtab_ping_seq_stop, ptr @__kstrtabns_ping_seq_stop }, section "___ksymtab_gpl+ping_seq_stop", align 4
@ping_v4_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ping_v4_proc_init_net, ptr null, ptr @ping_v4_proc_exit_net, ptr null, ptr null, i32 0 }, align 4
@init_net = external dso_local global %struct.net, align 64
@.str.3 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@ping_v4_seq_ops = internal constant %struct.seq_operations { ptr @ping_v4_seq_start, ptr @ping_seq_stop, ptr @ping_seq_next, ptr @ping_v4_seq_show }, align 4
@.str.4 = private unnamed_addr constant [115 x i8] c"  sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"%5d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_ping_bind, ptr @__ksymtab_ping_close, ptr @__ksymtab_ping_common_sendmsg, ptr @__ksymtab_ping_err, ptr @__ksymtab_ping_get_port, ptr @__ksymtab_ping_getfrag, ptr @__ksymtab_ping_hash, ptr @__ksymtab_ping_init_sock, ptr @__ksymtab_ping_prot, ptr @__ksymtab_ping_queue_rcv_skb, ptr @__ksymtab_ping_rcv, ptr @__ksymtab_ping_recvmsg, ptr @__ksymtab_ping_seq_next, ptr @__ksymtab_ping_seq_start, ptr @__ksymtab_ping_seq_stop, ptr @__ksymtab_ping_unhash, ptr @__ksymtab_pingv6_ops], section "llvm.metadata"

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_hash(ptr nocapture readnone %0) #0 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #14, !srcloc !9
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_get_port(ptr noundef %0, i16 noundef zeroext %1) #1 {
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %2
  %5 = load i16, ptr @ping_port_rover, align 2
  %6 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %9 = phi i16 [ %5, %4 ], [ %12, %27 ]
  %10 = add i16 %9, 1
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, i16 1, i16 %10
  %13 = zext i16 %12 to i32
  %14 = add i32 %6, %13
  %15 = and i32 %14, 63
  %16 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %15
  br label %17

17:                                               ; preds = %23, %7
  %18 = phi ptr [ %16, %7 ], [ %19, %23 ]
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %19, i32 -70
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, %12
  br i1 %26, label %27, label %17

27:                                               ; preds = %23
  %28 = add nuw nsw i32 %8, 1
  %29 = icmp eq i32 %28, 65536
  br i1 %29, label %109, label %7

30:                                               ; preds = %17
  store i16 %12, ptr @ping_port_rover, align 2
  %31 = icmp ugt i32 %8, 65535
  br i1 %31, label %109, label %66

32:                                               ; preds = %2
  %33 = zext i16 %1 to i32
  %34 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %35 = add i32 %34, %33
  %36 = and i32 %35, 63
  %37 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  br label %44

44:                                               ; preds = %61, %42
  %45 = phi ptr [ %38, %42 ], [ %62, %61 ]
  %46 = getelementptr i8, ptr %45, i32 -84
  %47 = getelementptr i8, ptr %45, i32 -70
  %48 = load i16, ptr %47, align 2
  %49 = icmp ne i16 %48, %1
  %50 = icmp eq ptr %46, %0
  %51 = or i1 %50, %49
  br i1 %51, label %61, label %52

52:                                               ; preds = %44
  %53 = getelementptr i8, ptr %45, i32 -65
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %109, label %57

57:                                               ; preds = %52
  %58 = load i8, ptr %43, align 1
  %59 = and i8 %58, 15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %109, label %61

61:                                               ; preds = %57, %44
  %62 = load ptr, ptr %45, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %44, label %66

66:                                               ; preds = %61, %32, %30
  %67 = phi ptr [ %16, %30 ], [ %37, %32 ], [ %37, %61 ]
  %68 = phi i16 [ %12, %30 ], [ %1, %32 ], [ %1, %61 ]
  %69 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %70 = getelementptr inbounds %struct.anon.2, ptr %69, i32 0, i32 1
  store i16 %68, ptr %70, align 2
  %71 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %109

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #14, !srcloc !10
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #14, !srcloc !11
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !12

79:                                               ; preds = %74
  %80 = add i32 %77, 1
  %81 = or i32 %80, %77
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %85, label %83, !prof !13

83:                                               ; preds = %79, %74
  %84 = phi i32 [ 2, %74 ], [ 1, %79 ]
  tail call void @refcount_warn_saturate(ptr noundef %75, i32 noundef %84) #14
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %87 = load ptr, ptr %67, align 4
  store ptr %87, ptr %86, align 4
  store volatile ptr %67, ptr %71, align 4
  store ptr %86, ptr %67, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.hlist_nulls_node, ptr %87, i32 0, i32 1
  store volatile ptr %86, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %95 = load ptr, ptr %94, align 8
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !14
  %97 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %98 = getelementptr inbounds %struct.proto, ptr %95, i32 0, i32 25
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.prot_inuse, ptr %97, i32 0, i32 1, i32 %99
  %101 = ptrtoint ptr %100 to i32
  %102 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #10, !srcloc !15
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %96) #14, !srcloc !16
  br label %109

109:                                              ; preds = %93, %66, %57, %52, %30, %27
  %110 = phi i32 [ 0, %93 ], [ 0, %66 ], [ 1, %30 ], [ 1, %27 ], [ 1, %52 ], [ 1, %57 ]
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  ret i32 %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ping_unhash(ptr noundef %0) #1 {
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  store volatile ptr %7, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.hlist_nulls_node, ptr %7, i32 0, i32 1
  store volatile ptr %3, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %5
  store volatile ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  store ptr null, ptr %2, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #14, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #14, !srcloc !18
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %22, label %20, !prof !13

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #14
  br label %22

21:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void @sk_free(ptr noundef %0) #14
  br label %22

22:                                               ; preds = %21, %20, %18
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.anon.2, ptr %23, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !14
  %29 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %30 = getelementptr inbounds %struct.proto, ptr %27, i32 0, i32 25
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.prot_inuse, ptr %29, i32 0, i32 1, i32 %31
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #10, !srcloc !15
  %37 = add i32 %36, %33
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #14, !srcloc !16
  br label %41

41:                                               ; preds = %22, %1
  tail call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_init_sock(ptr nocapture noundef %0) #1 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, 10
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = or i8 %12, 32
  store i8 %13, ptr %11, align 1
  br label %14

14:                                               ; preds = %10, %1
  br label %15

15:                                               ; preds = %23, %14
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 114), align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !21
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 114), align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %16, %15 ], [ %20, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %25 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 114, i32 1), align 32
  %26 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 114, i32 1, i32 1), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 114), align 8
  %28 = icmp eq i32 %27, %24
  br i1 %28, label %29, label %15

29:                                               ; preds = %23
  %30 = icmp ule i32 %25, %6
  %31 = icmp ule i32 %6, %26
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 23
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #14, !srcloc !10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !24
  %38 = getelementptr inbounds %struct.group_info, ptr %36, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %51

41:                                               ; preds = %44
  %42 = add nuw nsw i32 %45, 1
  %43 = icmp eq i32 %42, %39
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %33
  %45 = phi i32 [ %42, %41 ], [ 0, %33 ]
  %46 = getelementptr %struct.group_info, ptr %36, i32 0, i32 2, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp ule i32 %25, %47
  %49 = icmp ule i32 %47, %26
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %41

51:                                               ; preds = %44, %41, %33
  %52 = phi i32 [ -13, %33 ], [ 0, %44 ], [ -13, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #14, !srcloc !10
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !26
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @groups_free(ptr noundef %36) #14
  br label %57

57:                                               ; preds = %56, %51, %29
  %58 = phi i32 [ %52, %56 ], [ %52, %51 ], [ 0, %29 ]
  ret i32 %58
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ping_close(ptr noundef %0, i32 %1) #1 {
  tail call void @sk_common_release(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 8
  switch i16 %7, label %187 [
    i16 2, label %8
    i16 10, label %44
  ]

8:                                                ; preds = %3
  %9 = icmp ult i32 %2, 16
  br i1 %9, label %187, label %10

10:                                               ; preds = %8
  %11 = load i16, ptr %1, align 4
  switch i16 %11, label %187 [
    i16 2, label %12
    i16 0, label %15
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  br label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %187

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ 0, %15 ]
  %21 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %22 = tail call i32 @inet_addr_type(ptr noundef nonnull @init_net, i32 noundef %20) #14
  %23 = load i32, ptr %21, align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 35), align 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = and i16 %28, 32
  %33 = icmp ne i16 %32, 0
  br label %34

34:                                               ; preds = %31, %26, %19
  %35 = phi i1 [ true, %26 ], [ true, %19 ], [ %33, %31 ]
  %36 = icmp eq i32 %23, 0
  %37 = or i1 %36, %35
  %38 = icmp eq i32 %22, 2
  %39 = or i1 %38, %37
  %40 = icmp eq i32 %22, 5
  %41 = or i1 %40, %39
  %42 = icmp eq i32 %22, 3
  %43 = or i1 %42, %41
  br i1 %43, label %108, label %187

44:                                               ; preds = %3
  %45 = icmp ult i32 %2, 28
  br i1 %45, label %187, label %46

46:                                               ; preds = %44
  %47 = load i16, ptr %1, align 4
  %48 = icmp eq i16 %47, 10
  br i1 %48, label %49, label %187

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %51 = tail call i32 @__ipv6_addr_type(ptr noundef %50) #14
  %52 = and i32 %51, 65535
  %53 = and i32 %51, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = icmp ne i32 %52, 0
  %57 = and i32 %51, 1
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %56, %58
  br i1 %59, label %187, label %63

60:                                               ; preds = %49
  %61 = and i32 %51, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %187, label %69

63:                                               ; preds = %55
  %64 = and i32 %51, 2
  %65 = icmp ne i32 %64, 0
  %66 = and i32 %51, 48
  %67 = icmp ne i32 %66, 0
  %68 = and i1 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %60
  %70 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %187, label %73

73:                                               ; preds = %69, %63
  %74 = phi i1 [ false, %69 ], [ true, %63 ]
  %75 = phi i32 [ 1, %69 ], [ 0, %63 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  %76 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %77) #14
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  br label %187

83:                                               ; preds = %79, %73
  %84 = phi ptr [ %80, %79 ], [ null, %73 ]
  %85 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 5), align 4
  %86 = tail call i32 %85(ptr noundef nonnull @init_net, ptr noundef %50, ptr noundef %84, i32 noundef %75) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %87 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 25), align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %91 = load i16, ptr %90, align 8
  %92 = and i16 %91, 4
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = and i16 %91, 32
  %96 = icmp ne i16 %95, 0
  br label %97

97:                                               ; preds = %94, %89, %83
  %98 = phi i1 [ true, %89 ], [ true, %83 ], [ %96, %94 ]
  %99 = icmp ne i32 %86, 0
  %100 = select i1 %98, i1 true, i1 %99
  %101 = icmp eq i32 %52, 0
  %102 = or i1 %101, %100
  %103 = xor i1 %102, true
  %104 = or i1 %74, %103
  br i1 %104, label %107, label %105

105:                                              ; preds = %97
  %106 = load i32, ptr %76, align 4
  store i32 %106, ptr %4, align 4
  br label %108

107:                                              ; preds = %97
  br i1 %102, label %108, label %187

108:                                              ; preds = %107, %105, %34
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #14
  %109 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %110 = getelementptr inbounds %struct.anon.2, ptr %109, i32 0, i32 1
  %111 = load i16, ptr %110, align 2
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %185

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  %115 = load i16, ptr %114, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %117 = tail call i32 @ping_get_port(ptr noundef %0, i16 noundef zeroext %116)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i32 %5, ptr %4, align 4
  br label %185

120:                                              ; preds = %113
  %121 = load i16, ptr %1, align 2
  switch i16 %121, label %141 [
    i16 2, label %122
    i16 10, label %127
  ]

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %124, ptr %126, align 4
  br label %141

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %129 = load volatile i8, ptr %128, align 2
  %130 = zext i8 %129 to i32
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, -4161
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %136 = load ptr, ptr %135, align 8
  br label %137

137:                                              ; preds = %134, %127
  %138 = phi ptr [ %136, %134 ], [ null, %127 ]
  %139 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %140 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %138, ptr noundef align 4 dereferenceable(16) %140, i32 16, i1 false) #14
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %139, ptr noundef align 4 dereferenceable(16) %140, i32 16, i1 false) #14
  br label %141

141:                                              ; preds = %137, %122, %120
  %142 = load i16, ptr %6, align 8
  switch i16 %142, label %165 [
    i16 2, label %143
    i16 10, label %147
  ]

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %160

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = or i32 %151, %149
  %153 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = or i32 %152, %154
  %156 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = or i32 %155, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %147, %143
  %161 = phi i1 [ false, %143 ], [ true, %147 ]
  %162 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %163 = load i8, ptr %162, align 8
  %164 = or i8 %163, 64
  store i8 %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %160, %147, %143, %141
  %166 = phi i1 [ true, %147 ], [ false, %143 ], [ false, %141 ], [ %161, %160 ]
  %167 = icmp eq i16 %115, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %170 = load i8, ptr %169, align 8
  %171 = or i8 %170, -128
  store i8 %171, ptr %169, align 8
  br label %172

172:                                              ; preds = %168, %165
  %173 = load i16, ptr %110, align 2
  %174 = tail call i16 @llvm.bswap.i16(i16 %173)
  %175 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 %174, ptr %175, align 8
  store i32 0, ptr %0, align 8
  store i16 0, ptr %109, align 4
  br i1 %166, label %176, label %178

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %177, i8 0, i32 16, i1 false)
  br label %178

178:                                              ; preds = %176, %172
  %179 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %179, align 4
  %180 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %180, align 4
  %181 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #14, !srcloc !10
  %182 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %181) #14, !srcloc !31
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = inttoptr i32 %183 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  tail call void @dst_release(ptr noundef %184) #14
  br label %185

185:                                              ; preds = %178, %119, %108
  %186 = phi i32 [ -22, %108 ], [ -98, %119 ], [ 0, %178 ]
  tail call void @release_sock(ptr noundef %0) #14
  br label %187

187:                                              ; preds = %185, %107, %82, %69, %60, %55, %46, %44, %34, %15, %10, %8, %3
  %188 = phi i32 [ %186, %185 ], [ -19, %82 ], [ -22, %44 ], [ -97, %46 ], [ -22, %55 ], [ -22, %69 ], [ -22, %60 ], [ -22, %8 ], [ -97, %10 ], [ -97, %15 ], [ -97, %3 ], [ -99, %107 ], [ -99, %34 ]
  ret i32 %188
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ping_err(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.icmphdr, ptr %14, i32 0, i32 1
  br label %27

16:                                               ; preds = %3
  %17 = icmp eq i16 %6, -8826
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = getelementptr inbounds %struct.icmp6hdr, ptr %24, i32 0, i32 1
  br label %27

26:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #14, !srcloc !33
  unreachable

27:                                               ; preds = %18, %8
  %28 = phi ptr [ %14, %8 ], [ %24, %18 ]
  %29 = phi ptr [ %15, %8 ], [ %25, %18 ]
  %30 = xor i1 %7, true
  %31 = load i8, ptr %28, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %1
  %35 = load i8, ptr %29, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, ptr %34, align 4
  %38 = getelementptr inbounds %struct.icmphdr, ptr %34, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %37, 8
  %41 = and i1 %7, %40
  %42 = icmp eq i8 %39, 0
  %43 = and i1 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %27
  %45 = icmp eq i8 %37, 42
  %46 = and i1 %7, %45
  %47 = and i1 %46, %42
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = icmp eq i8 %37, -128
  %50 = and i1 %49, %30
  %51 = and i1 %50, %42
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = icmp eq i8 %37, -96
  %54 = and i1 %53, %30
  %55 = and i1 %54, %42
  br i1 %55, label %56, label %134

56:                                               ; preds = %52, %48, %44, %27
  %57 = getelementptr inbounds %struct.icmphdr, ptr %34, i32 0, i32 3
  %58 = load i16, ptr %57, align 4
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %60 = tail call fastcc ptr @ping_lookup(ptr noundef %0, i16 noundef zeroext %59)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %134, label %62

62:                                               ; preds = %56
  store i32 0, ptr %4, align 4
  %63 = load i16, ptr %5, align 8
  switch i16 %63, label %88 [
    i16 8, label %64
    i16 -8826, label %85
  ]

64:                                               ; preds = %62
  switch i8 %31, label %65 [
    i8 5, label %84
    i8 4, label %66
    i8 12, label %67
    i8 3, label %68
  ]

65:                                               ; preds = %64
  store i32 113, ptr %4, align 4
  br label %88

66:                                               ; preds = %64
  store i32 121, ptr %4, align 4
  br label %88

67:                                               ; preds = %64
  store i32 71, ptr %4, align 4
  br label %88

68:                                               ; preds = %64
  %69 = icmp eq i8 %35, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  tail call void @ipv4_sk_update_pmtu(ptr noundef %0, ptr noundef nonnull %60, i32 noundef %2) #14
  %71 = getelementptr inbounds %struct.inet_sock, ptr %60, i32 0, i32 11
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %125, label %74

74:                                               ; preds = %70
  store i32 90, ptr %4, align 4
  br label %88

75:                                               ; preds = %68
  store i32 113, ptr %4, align 4
  %76 = icmp ult i8 %35, 16
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  %78 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %36
  %79 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %36, i32 1
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 1
  %82 = zext i8 %81 to i32
  %83 = load i32, ptr %78, align 4
  store i32 %83, ptr %4, align 4
  br label %88

84:                                               ; preds = %64
  tail call void @ipv4_sk_redirect(ptr noundef %0, ptr noundef nonnull %60) #14
  store i32 121, ptr %4, align 4
  br label %88

85:                                               ; preds = %62
  %86 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 3), align 4
  %87 = call i32 %86(i8 noundef zeroext %31, i8 noundef zeroext %35, ptr noundef nonnull %4) #14
  br label %88

88:                                               ; preds = %85, %84, %77, %75, %74, %67, %66, %65, %62
  %89 = phi i32 [ 0, %65 ], [ 1, %74 ], [ %82, %77 ], [ 0, %75 ], [ 1, %67 ], [ 0, %66 ], [ 0, %84 ], [ %87, %85 ], [ 0, %62 ]
  br i1 %7, label %90, label %95

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.inet_sock, ptr %60, i32 0, i32 12
  %92 = load i16, ptr %91, align 8
  %93 = and i16 %92, 1
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %111, label %117

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.sock_common, ptr %60, i32 0, i32 4
  %97 = load volatile i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, -4161
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.inet_sock, ptr %60, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8
  br label %105

105:                                              ; preds = %102, %95
  %106 = phi ptr [ %104, %102 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.ipv6_pinfo, ptr %106, i32 0, i32 9
  %108 = load i16, ptr %107, align 2
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105, %90
  %112 = icmp eq i32 %89, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.sock_common, ptr %60, i32 0, i32 4
  %115 = load volatile i8, ptr %114, align 2
  %116 = icmp eq i8 %115, 1
  br i1 %116, label %122, label %125

117:                                              ; preds = %90
  %118 = load i32, ptr %4, align 4
  call void @ip_icmp_error(ptr noundef nonnull %60, ptr noundef %0, i32 noundef %118, i16 noundef zeroext 0, i32 noundef %2, ptr noundef %34) #14
  br label %122

119:                                              ; preds = %105
  %120 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 4), align 4
  %121 = load i32, ptr %4, align 4
  call void %120(ptr noundef nonnull %60, ptr noundef %0, i32 noundef %121, i16 noundef zeroext 0, i32 noundef %2, ptr noundef %34) #14
  br label %122

122:                                              ; preds = %119, %117, %113
  %123 = load i32, ptr %4, align 4
  %124 = getelementptr inbounds %struct.sock, ptr %60, i32 0, i32 51
  store i32 %123, ptr %124, align 4
  call void @sk_error_report(ptr noundef nonnull %60) #14
  br label %125

125:                                              ; preds = %122, %113, %111, %70
  %126 = getelementptr inbounds %struct.sock_common, ptr %60, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #14, !srcloc !10
  %127 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #14, !srcloc !18
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = icmp sgt i32 %128, 0
  br i1 %131, label %134, label %132, !prof !13

132:                                              ; preds = %130
  call void @refcount_warn_saturate(ptr noundef %126, i32 noundef 3) #14
  br label %134

133:                                              ; preds = %125
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  call void @sk_free(ptr noundef nonnull %60) #14
  br label %134

134:                                              ; preds = %133, %132, %130, %56, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ping_lookup(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = zext i16 %1 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %5 = add i32 %4, %3
  %6 = and i32 %5, 63
  %7 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %9 = load i16, ptr %8, align 8
  switch i16 %9, label %121 [
    i16 8, label %10
    i16 -8826, label %23
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = inttoptr i32 %13 to ptr
  %17 = getelementptr inbounds %struct.rtable, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15, %10
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %20, %15
  %27 = phi i32 [ %25, %23 ], [ %22, %20 ], [ %18, %15 ]
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  %28 = load ptr, ptr %7, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %119

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  br label %35

35:                                               ; preds = %114, %32
  %36 = phi ptr [ %28, %32 ], [ %115, %114 ]
  %37 = getelementptr i8, ptr %36, i32 -70
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, %1
  br i1 %39, label %40, label %114

40:                                               ; preds = %35
  %41 = load i16, ptr %8, align 8
  switch i16 %41, label %114 [
    i16 8, label %42
    i16 -8826, label %58
  ]

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %36, i32 -68
  %44 = load i16, ptr %43, align 8
  %45 = icmp eq i16 %44, 2
  br i1 %45, label %46, label %114

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %36, i32 -80
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %96, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %33, align 8
  %52 = load i16, ptr %34, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = getelementptr inbounds %struct.iphdr, ptr %54, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %48, %56
  br i1 %57, label %96, label %114

58:                                               ; preds = %40
  %59 = getelementptr i8, ptr %36, i32 -68
  %60 = load i16, ptr %59, align 8
  %61 = icmp eq i16 %60, 10
  br i1 %61, label %62, label %114

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %36, i32 -32
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %36, i32 -28
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, %64
  %68 = getelementptr i8, ptr %36, i32 -24
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %67, %69
  %71 = getelementptr i8, ptr %36, i32 -20
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %70, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %62
  %76 = load ptr, ptr %33, align 8
  %77 = load i16, ptr %34, align 4
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %76, i32 %78
  %80 = getelementptr inbounds %struct.ipv6hdr, ptr %79, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, %64
  %83 = getelementptr [4 x i32], ptr %80, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, %66
  %86 = or i32 %85, %82
  %87 = getelementptr [4 x i32], ptr %80, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = xor i32 %88, %69
  %90 = or i32 %86, %89
  %91 = getelementptr [4 x i32], ptr %80, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = xor i32 %92, %72
  %94 = or i32 %90, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %75, %62, %50, %46
  %97 = getelementptr i8, ptr %36, i32 -64
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  %100 = icmp eq i32 %98, %27
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = getelementptr i8, ptr %36, i32 -84
  %104 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #14, !srcloc !10
  %105 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #14, !srcloc !11
  %106 = extractvalue { i32, i32, i32 } %105, 0
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108, !prof !12

108:                                              ; preds = %102
  %109 = add i32 %106, 1
  %110 = or i32 %109, %106
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %119, label %112, !prof !13

112:                                              ; preds = %108, %102
  %113 = phi i32 [ 2, %102 ], [ 1, %108 ]
  tail call void @refcount_warn_saturate(ptr noundef %104, i32 noundef %113) #14
  br label %119

114:                                              ; preds = %96, %75, %58, %50, %42, %40, %35
  %115 = load ptr, ptr %36, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %35, label %119

119:                                              ; preds = %114, %112, %108, %26
  %120 = phi ptr [ %103, %108 ], [ %103, %112 ], [ null, %26 ], [ null, %114 ]
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  br label %121

121:                                              ; preds = %119, %2
  %122 = phi ptr [ %120, %119 ], [ null, %2 ]
  ret ptr %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_getfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr nocapture noundef %5) #1 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %6
  %9 = add i32 %3, -8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #14, !srcloc !34
  unreachable

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %1, i32 8
  %14 = getelementptr inbounds %struct.pingfakehdr, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.pingfakehdr, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msghdr, ptr %16, i32 0, i32 2
  %18 = tail call i32 @csum_and_copy_from_iter(ptr noundef %13, i32 noundef %9, ptr noundef %14, ptr noundef %17) #14
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %32, label %20, !prof !13

20:                                               ; preds = %12
  tail call void @iov_iter_revert(ptr noundef %17, i32 noundef %18) #14
  br label %43

21:                                               ; preds = %6
  %22 = icmp ult i32 %2, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #14, !srcloc !35
  unreachable

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pingfakehdr, ptr %0, i32 0, i32 3
  %26 = getelementptr inbounds %struct.pingfakehdr, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.msghdr, ptr %27, i32 0, i32 2
  %29 = tail call i32 @csum_and_copy_from_iter(ptr noundef %1, i32 noundef %3, ptr noundef %25, ptr noundef %28) #14
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %32, label %31, !prof !13

31:                                               ; preds = %24
  tail call void @iov_iter_revert(ptr noundef %28, i32 noundef %29) #14
  br label %43

32:                                               ; preds = %24, %12
  %33 = getelementptr inbounds %struct.pingfakehdr, ptr %0, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 10
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.pingfakehdr, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, -97
  store i16 %42, ptr %40, align 8
  store i32 0, ptr %37, align 4
  br label %43

43:                                               ; preds = %36, %32, %31, %20
  %44 = phi i32 [ -14, %20 ], [ -14, %31 ], [ 0, %36 ], [ 0, %32 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_common_sendmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = icmp ugt i32 %2, 65535
  br i1 %6, label %48, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %2, %4
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %16 = tail call i32 @_copy_from_iter(ptr noundef %3, i32 noundef %4, ptr noundef %15) #14
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %19, label %18, !prof !13

18:                                               ; preds = %14
  tail call void @iov_iter_revert(ptr noundef %15, i32 noundef %16) #14
  br label %48

19:                                               ; preds = %14
  switch i32 %0, label %24 [
    i32 2, label %20
    i32 10, label %22
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.icmphdr, ptr %3, i32 0, i32 1
  br label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.icmp6hdr, ptr %3, i32 0, i32 1
  br label %25

24:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #14, !srcloc !36
  unreachable

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %27 = load i8, ptr %26, align 1
  %28 = load i8, ptr %3, align 4
  %29 = icmp eq i32 %0, 2
  %30 = icmp eq i8 %28, 8
  %31 = and i1 %29, %30
  %32 = icmp eq i8 %27, 0
  %33 = and i1 %32, %31
  br i1 %33, label %48, label %34

34:                                               ; preds = %25
  %35 = icmp eq i8 %28, 42
  %36 = and i1 %29, %35
  %37 = and i1 %32, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %0, 10
  %40 = icmp eq i8 %28, -128
  %41 = and i1 %39, %40
  %42 = and i1 %32, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = icmp eq i8 %28, -96
  %45 = and i1 %39, %44
  %46 = and i1 %32, %45
  %47 = select i1 %46, i32 0, i32 -22
  br label %48

48:                                               ; preds = %43, %38, %34, %25, %18, %9, %7, %5
  %49 = phi i32 [ -90, %5 ], [ -22, %7 ], [ -95, %9 ], [ -14, %18 ], [ 0, %25 ], [ 0, %34 ], [ 0, %38 ], [ %47, %43 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %9 = load i16, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 -95, ptr %7, align 4
  %10 = and i32 %4, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %197

12:                                               ; preds = %6
  %13 = and i32 %4, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @inet_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #14
  br label %199

17:                                               ; preds = %12
  %18 = call ptr @skb_recv_datagram(ptr noundef %0, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %7) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %197, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = icmp ugt i32 %22, %2
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 32
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %2, %24 ], [ %22, %20 ]
  %30 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %31 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %18, i32 noundef 0, ptr noundef %30, i32 noundef %29) #14
  store i32 %31, ptr %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %196

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %45 = load i16, ptr %44, align 8
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = icmp eq i64 %35, 0
  %51 = and i32 %46, 16
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, ptr %38, align 8
  %56 = icmp eq i64 %55, 0
  %57 = and i16 %45, 64
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %54, %49, %43, %33
  call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %18) #14
  br label %71

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %63 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %63) #14
  %64 = load i32, ptr %62, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %62, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !37
  %66 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %35, ptr %66, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !38
  %67 = load i32, ptr %62, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %62, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !39
  %69 = load i16, ptr %63, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !40
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !41
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  br label %71

71:                                               ; preds = %61, %60
  %72 = load volatile i32, ptr %39, align 4
  %73 = and i32 %72, 524288
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, 1024
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %18) #14
  br label %81

81:                                               ; preds = %80, %75, %71
  switch i16 %9, label %194 [
    i16 2, label %82
    i16 10, label %104
  ]

82:                                               ; preds = %81
  %83 = load ptr, ptr %1, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  store i16 2, ptr %83, align 4
  %86 = getelementptr inbounds %struct.sockaddr_in, ptr %83, i32 0, i32 1
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 18
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %88, i32 %91
  %93 = getelementptr inbounds %struct.iphdr, ptr %92, i32 0, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.sockaddr_in, ptr %83, i32 0, i32 2
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.sockaddr_in, ptr %83, i32 0, i32 3
  store i64 0, ptr %96, align 4
  store i32 16, ptr %5, align 4
  br label %97

97:                                               ; preds = %85, %82
  %98 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %195, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %103, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0) #14
  br label %195

104:                                              ; preds = %81
  %105 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %106 = load volatile i8, ptr %105, align 2
  %107 = zext i8 %106 to i32
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, -4161
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8
  br label %114

114:                                              ; preds = %111, %104
  %115 = phi ptr [ %113, %111 ], [ null, %104 ]
  %116 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 18
  %119 = load i16, ptr %118, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr i8, ptr %117, i32 %120
  %122 = load ptr, ptr %1, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %152, label %124

124:                                              ; preds = %114
  store i16 10, ptr %122, align 4
  %125 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 1
  store i16 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 3
  %127 = getelementptr inbounds %struct.ipv6hdr, ptr %121, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %126, ptr noundef align 4 dereferenceable(16) %127, i32 16, i1 false)
  %128 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 2
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.ipv6_pinfo, ptr %115, i32 0, i32 9
  %130 = load i16, ptr %129, align 2
  %131 = and i16 %130, 2
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = load i32, ptr %121, align 4
  %135 = and i32 %134, -241
  store i32 %135, ptr %128, align 4
  br label %136

136:                                              ; preds = %133, %124
  %137 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3
  %138 = load i32, ptr %137, align 8
  %139 = call i32 @__ipv6_addr_type(ptr noundef %126) #14
  %140 = and i32 %139, 32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = and i32 %139, 2
  %144 = icmp ne i32 %143, 0
  %145 = and i32 %139, 48
  %146 = icmp ne i32 %145, 0
  %147 = and i1 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142, %136
  br label %149

149:                                              ; preds = %148, %142
  %150 = phi i32 [ %138, %148 ], [ 0, %142 ]
  %151 = getelementptr inbounds %struct.sockaddr_in6, ptr %122, i32 0, i32 4
  store i32 %150, ptr %151, align 4
  store i32 28, ptr %5, align 4
  br label %152

152:                                              ; preds = %149, %114
  %153 = load volatile i8, ptr %105, align 2
  %154 = zext i8 %153 to i32
  %155 = shl nuw i32 1, %154
  %156 = and i32 %155, -4161
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %160 = load ptr, ptr %159, align 8
  br label %161

161:                                              ; preds = %158, %152
  %162 = phi ptr [ %160, %158 ], [ null, %152 ]
  %163 = getelementptr inbounds %struct.ipv6_pinfo, ptr %162, i32 0, i32 8
  %164 = load i16, ptr %163, align 4
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 1), align 4
  call void %167(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18) #14
  br label %168

168:                                              ; preds = %166, %161
  %169 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 16
  %170 = load i16, ptr %169, align 8
  switch i16 %170, label %195 [
    i16 -8826, label %171
    i16 8, label %187
  ]

171:                                              ; preds = %168
  %172 = load volatile i8, ptr %105, align 2
  %173 = zext i8 %172 to i32
  %174 = shl nuw i32 1, %173
  %175 = and i32 %174, -4161
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %179 = load ptr, ptr %178, align 8
  br label %180

180:                                              ; preds = %177, %171
  %181 = phi ptr [ %179, %177 ], [ null, %171 ]
  %182 = getelementptr inbounds %struct.ipv6_pinfo, ptr %181, i32 0, i32 8
  %183 = load i16, ptr %182, align 4
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %180
  %186 = load ptr, ptr getelementptr inbounds (%struct.pingv6_ops, ptr @pingv6_ops, i32 0, i32 2), align 4
  call void %186(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18) #14
  br label %195

187:                                              ; preds = %168
  %188 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %189 = load i16, ptr %188, align 2
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %193, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0) #14
  br label %195

194:                                              ; preds = %81
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #14, !srcloc !43
  unreachable

195:                                              ; preds = %191, %187, %185, %180, %168, %101, %97
  store i32 %29, ptr %7, align 4
  br label %196

196:                                              ; preds = %195, %28
  call void @skb_free_datagram(ptr noundef %0, ptr noundef nonnull %18) #14
  br label %197

197:                                              ; preds = %196, %17, %6
  %198 = load i32, ptr %7, align 4
  br label %199

199:                                              ; preds = %197, %15
  %200 = phi i32 [ %198, %197 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ping_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #14
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ -1, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ping_rcv(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %7 to i32
  %12 = sub i32 %10, %11
  %13 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %12) #14
  %14 = getelementptr inbounds %struct.icmphdr, ptr %7, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = tail call fastcc ptr @ping_lookup(ptr noundef %0, i16 noundef zeroext %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %1
  %20 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %17, ptr noundef nonnull %20) #14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #14
  br label %26

26:                                               ; preds = %25, %22
  %27 = xor i1 %24, true
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i1 [ false, %19 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #14, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #14, !srcloc !18
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !13

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #14
  br label %38

37:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %17) #14
  br label %38

38:                                               ; preds = %37, %36, %34, %1
  %39 = phi i1 [ false, %1 ], [ %29, %34 ], [ %29, %36 ], [ %29, %37 ]
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ping_v4_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.ipcm_cookie, align 8
  %6 = alloca %struct.icmphdr, align 8
  %7 = alloca %struct.pingfakehdr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.ip_options_data, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !44
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store i64 0, ptr %6, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false), !annotation !44
  %10 = icmp ugt i32 %2, 65535
  br i1 %10, label %281, label %11

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 8
  br i1 %12, label %281, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %281

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %20 = call i32 @_copy_from_iter(ptr noundef nonnull %6, i32 noundef 8, ptr noundef %19) #14
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %23, label %22, !prof !13

22:                                               ; preds = %18
  call void @iov_iter_revert(ptr noundef %19, i32 noundef %20) #14
  br label %281

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.icmphdr, ptr %6, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = load i8, ptr %6, align 8
  %27 = icmp eq i8 %26, 8
  %28 = icmp eq i8 %25, 0
  %29 = icmp eq i8 %26, 42
  %30 = or i1 %27, %29
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %281

32:                                               ; preds = %23
  %33 = load ptr, ptr %1, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, 16
  br i1 %38, label %281, label %39

39:                                               ; preds = %35
  %40 = load i16, ptr %33, align 4
  %41 = icmp eq i16 %40, 2
  br i1 %41, label %42, label %281

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sockaddr_in, ptr %33, i32 0, i32 2
  br label %48

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %46 = load volatile i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %48, label %281

48:                                               ; preds = %44, %42
  %49 = phi ptr [ %43, %42 ], [ %0, %44 ]
  %50 = load i32, ptr %49, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(30) %5, i8 0, i32 30, i1 false) #14
  %51 = getelementptr inbounds i8, ptr %5, i32 30
  store i16 -1, ptr %51, align 2
  %52 = getelementptr inbounds i8, ptr %5, i32 32
  store i64 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.sockcm_cookie, ptr %5, i32 0, i32 1
  store i32 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %57 = load i16, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sockcm_cookie, ptr %5, i32 0, i32 2
  store i16 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 1
  store i32 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  br label %82

70:                                               ; preds = %48
  %71 = call i32 @ip_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i1 noundef zeroext false) #14
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  br i1 %72, label %76, label %75, !prof !13

75:                                               ; preds = %70
  call void @kfree(ptr noundef %74) #14
  br label %281

76:                                               ; preds = %70
  %77 = icmp eq ptr %74, null
  %78 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  %79 = icmp eq ptr %74, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %64, align 8
  store i32 %50, ptr %64, align 8
  br label %97

82:                                               ; preds = %76, %68
  %83 = phi ptr [ %69, %68 ], [ %78, %76 ]
  %84 = phi i1 [ true, %68 ], [ %77, %76 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  %85 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ip_options_rcu, ptr %86, i32 0, i32 1, i32 2
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  %92 = add nuw nsw i32 %91, 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %9, ptr noundef nonnull align 4 %86, i32 %92, i1 false)
  store ptr %9, ptr %83, align 8
  br label %93

93:                                               ; preds = %88, %82
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %94 = load ptr, ptr %83, align 8
  %95 = load i32, ptr %64, align 8
  store i32 %50, ptr %64, align 8
  %96 = icmp eq ptr %94, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %93, %80
  %98 = phi ptr [ %78, %80 ], [ %83, %93 ]
  %99 = phi i1 [ %77, %80 ], [ %84, %93 ]
  %100 = phi i32 [ %81, %80 ], [ %95, %93 ]
  %101 = phi ptr [ %74, %80 ], [ %94, %93 ]
  %102 = getelementptr inbounds %struct.ip_options_rcu, ptr %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.ip_options_rcu, ptr %101, i32 0, i32 1, i32 3
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %97
  %107 = icmp eq i32 %50, 0
  br i1 %107, label %264, label %108

108:                                              ; preds = %106
  %109 = load i32, ptr %102, align 4
  br label %110

110:                                              ; preds = %108, %97, %93
  %111 = phi ptr [ %98, %108 ], [ %98, %97 ], [ %83, %93 ]
  %112 = phi i1 [ %99, %108 ], [ %99, %97 ], [ %84, %93 ]
  %113 = phi i1 [ false, %108 ], [ false, %97 ], [ true, %93 ]
  %114 = phi i32 [ %100, %108 ], [ %100, %97 ], [ %95, %93 ]
  %115 = phi ptr [ %101, %108 ], [ %101, %97 ], [ null, %93 ]
  %116 = phi i32 [ %109, %108 ], [ %50, %97 ], [ %50, %93 ]
  %117 = load i16, ptr %51, align 2
  %118 = icmp eq i16 %117, -1
  br i1 %118, label %121, label %119

119:                                              ; preds = %110
  %120 = trunc i16 %117 to i8
  br label %124

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %123 = load i8, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i8 [ %120, %119 ], [ %123, %121 ]
  %126 = and i8 %125, 30
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 8192
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load i32, ptr %14, align 4
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  br i1 %113, label %143, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.ip_options_rcu, ptr %115, i32 0, i32 1, i32 6
  %138 = load i8, ptr %137, align 4
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136, %131, %124
  %142 = or i8 %126, 1
  br label %143

143:                                              ; preds = %141, %136, %135
  %144 = phi i8 [ %142, %141 ], [ %126, %136 ], [ %126, %135 ]
  %145 = and i32 %50, 240
  %146 = icmp eq i32 %145, 224
  %147 = load i32, ptr %61, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %146, label %149, label %159

149:                                              ; preds = %143
  br i1 %148, label %150, label %153

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  %152 = load i32, ptr %151, align 8
  store i32 %152, ptr %61, align 4
  br label %153

153:                                              ; preds = %150, %149
  %154 = phi i32 [ %147, %149 ], [ %152, %150 ]
  %155 = icmp eq i32 %114, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 17
  %158 = load i32, ptr %157, align 4
  br label %163

159:                                              ; preds = %143
  br i1 %148, label %160, label %163

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 15
  %162 = load i32, ptr %161, align 4
  store i32 %162, ptr %61, align 4
  br label %163

163:                                              ; preds = %160, %159, %156, %153
  %164 = phi i32 [ %154, %153 ], [ %154, %156 ], [ %147, %159 ], [ %162, %160 ]
  %165 = phi i32 [ %114, %153 ], [ %158, %156 ], [ %114, %159 ], [ %114, %160 ]
  %166 = load i32, ptr %55, align 8
  %167 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %168 = load i16, ptr %167, align 4
  %169 = trunc i16 %168 to i8
  %170 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %171 = load i16, ptr %170, align 8
  %172 = and i16 %171, 40
  %173 = icmp ne i16 %172, 0
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %176 = load i32, ptr %175, align 4
  store i32 %164, ptr %4, align 8
  %177 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 1
  store i32 1, ptr %177, align 4
  %178 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  store i32 %166, ptr %178, align 8
  %179 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  store i8 %144, ptr %179, align 4
  %180 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 4
  store i8 0, ptr %180, align 1
  %181 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 5
  store i8 %169, ptr %181, align 2
  %182 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 6
  store i8 %174, ptr %182, align 1
  %183 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 7
  store i32 0, ptr %183, align 8
  %184 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 9
  store i64 0, ptr %184, align 8
  %185 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 8
  store i32 %176, ptr %185, align 4
  %186 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  store i32 %116, ptr %186, align 4
  %187 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  store i32 %165, ptr %187, align 8
  %188 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 3
  %189 = getelementptr inbounds %struct.anon.84, ptr %188, i32 0, i32 1
  store i16 0, ptr %189, align 2
  %190 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 10
  store i32 0, ptr %190, align 8
  %191 = load i8, ptr %6, align 8
  store i8 %191, ptr %188, align 8
  %192 = load i8, ptr %24, align 1
  %193 = getelementptr inbounds %struct.anon.85, ptr %188, i32 0, i32 1
  store i8 %192, ptr %193, align 1
  %194 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef %0) #14
  store ptr %194, ptr %8, align 4
  %195 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  br i1 %195, label %196, label %219

196:                                              ; preds = %163
  %197 = ptrtoint ptr %194 to i32
  store ptr null, ptr %8, align 4
  %198 = icmp eq ptr %194, inttoptr (i32 -101 to ptr)
  br i1 %198, label %199, label %261

199:                                              ; preds = %196
  %200 = tail call ptr @llvm.thread.pointer() #14
  %201 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %202 = load volatile i32, ptr %201, align 4
  %203 = add i32 %202, 512
  store volatile i32 %203, ptr %201, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !45
  %204 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %205 = ptrtoint ptr %204 to i32
  %206 = call i32 @llvm.read_register.i32(metadata !0) #14
  %207 = inttoptr i32 %206 to ptr
  %208 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %207) #10, !srcloc !15
  %209 = add i32 %208, %205
  %210 = inttoptr i32 %209 to ptr
  %211 = getelementptr inbounds %struct.ipstats_mib, ptr %210, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !37
  %214 = getelementptr [37 x i64], ptr %210, i32 0, i32 15
  %215 = load i64, ptr %214, align 8
  %216 = add i64 %215, 1
  store i64 %216, ptr %214, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !38
  %217 = load i32, ptr %211, align 4
  %218 = add i32 %217, 1
  store i32 %218, ptr %211, align 4
  call fastcc void @local_bh_enable()
  br label %261

219:                                              ; preds = %163
  %220 = getelementptr inbounds %struct.rtable, ptr %194, i32 0, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, 268435456
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %219
  %225 = load volatile i32, ptr %127, align 4
  %226 = and i32 %225, 64
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %261, label %228

228:                                              ; preds = %224, %219
  %229 = load i32, ptr %14, align 4
  %230 = and i32 %229, 2064
  %231 = icmp eq i32 %230, 2064
  br i1 %231, label %274, label %232

232:                                              ; preds = %280, %274, %228
  %233 = load i32, ptr %64, align 8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, ptr %186, align 4
  store i32 %236, ptr %64, align 8
  br label %237

237:                                              ; preds = %235, %232
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #14
  %238 = load i8, ptr %6, align 8
  store i8 %238, ptr %7, align 4
  %239 = load i8, ptr %24, align 1
  %240 = getelementptr inbounds %struct.icmphdr, ptr %7, i32 0, i32 1
  store i8 %239, ptr %240, align 1
  %241 = getelementptr inbounds %struct.icmphdr, ptr %7, i32 0, i32 2
  store i16 0, ptr %241, align 2
  %242 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %243 = load i16, ptr %242, align 8
  %244 = getelementptr inbounds %struct.icmphdr, ptr %7, i32 0, i32 3
  store i16 %243, ptr %244, align 4
  %245 = getelementptr inbounds %struct.icmphdr, ptr %6, i32 0, i32 3
  %246 = getelementptr inbounds %struct.anon.140, ptr %245, i32 0, i32 1
  %247 = load i16, ptr %246, align 2
  %248 = getelementptr inbounds %struct.anon.140, ptr %244, i32 0, i32 1
  store i16 %247, ptr %248, align 2
  %249 = getelementptr inbounds %struct.pingfakehdr, ptr %7, i32 0, i32 1
  store ptr %1, ptr %249, align 4
  %250 = getelementptr inbounds %struct.pingfakehdr, ptr %7, i32 0, i32 3
  store i32 0, ptr %250, align 4
  %251 = getelementptr inbounds %struct.pingfakehdr, ptr %7, i32 0, i32 2
  store i16 2, ptr %251, align 4
  %252 = load i32, ptr %14, align 4
  %253 = call i32 @ip_append_data(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @ping_getfrag, ptr noundef nonnull %7, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef %252) #14
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %237
  call void @ip_flush_pending_frames(ptr noundef %0) #14
  br label %258

256:                                              ; preds = %237
  %257 = call fastcc i32 @ping_v4_push_pending_frames(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %4)
  br label %258

258:                                              ; preds = %256, %255
  %259 = phi i32 [ %253, %255 ], [ %257, %256 ]
  call void @release_sock(ptr noundef %0) #14
  %260 = load ptr, ptr %8, align 4
  br label %261

261:                                              ; preds = %258, %224, %199, %196
  %262 = phi ptr [ null, %199 ], [ null, %196 ], [ %260, %258 ], [ %194, %224 ]
  %263 = phi i32 [ -101, %199 ], [ %197, %196 ], [ %259, %258 ], [ -13, %224 ]
  call void @dst_release(ptr noundef %262) #14
  br i1 %112, label %269, label %265

264:                                              ; preds = %106
  br i1 %99, label %281, label %265

265:                                              ; preds = %264, %261
  %266 = phi i32 [ %263, %261 ], [ -22, %264 ]
  %267 = phi ptr [ %111, %261 ], [ %98, %264 ]
  %268 = load ptr, ptr %267, align 8
  call void @kfree(ptr noundef %268) #14
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi i32 [ %263, %261 ], [ %266, %265 ]
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load i8, ptr %6, align 8
  call void @icmp_out_count(ptr noundef nonnull @init_net, i8 noundef zeroext %273) #14
  br label %281

274:                                              ; preds = %228
  %275 = getelementptr inbounds %struct.dst_entry, ptr %194, i32 0, i32 1
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.dst_ops, ptr %276, i32 0, i32 15
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %232, label %280

280:                                              ; preds = %274
  call void %278(ptr noundef %194, ptr noundef %186) #14
  br label %232

281:                                              ; preds = %272, %269, %264, %75, %44, %39, %35, %23, %22, %13, %11, %3
  %282 = phi i32 [ %71, %75 ], [ %2, %272 ], [ -89, %44 ], [ %270, %269 ], [ -14, %22 ], [ -95, %13 ], [ -22, %11 ], [ -90, %3 ], [ -97, %39 ], [ -22, %35 ], [ -22, %23 ], [ -22, %264 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %282
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip4_datagram_release_cb(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ping_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ping_iter_state, ptr %5, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ping_iter_state, ptr %5, i32 0, i32 2
  store i16 %2, ptr %7, align 4
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  %8 = load i64, ptr %1, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = add i64 %8, -1
  %12 = tail call fastcc ptr @ping_get_idx(ptr noundef %0, i64 noundef %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ inttoptr (i32 1 to ptr), %3 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ping_get_idx(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ping_iter_state, ptr %4, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ping_iter_state, ptr %4, i32 0, i32 2
  br label %7

7:                                                ; preds = %26, %2
  %8 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %9 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load i16, ptr %6, align 4
  br label %21

16:                                               ; preds = %21
  %17 = load ptr, ptr %22, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %14
  %22 = phi ptr [ %10, %14 ], [ %17, %16 ]
  %23 = getelementptr i8, ptr %22, i32 -68
  %24 = load i16, ptr %23, align 8
  %25 = icmp eq i16 %24, %15
  br i1 %25, label %29, label %16

26:                                               ; preds = %16, %7
  %27 = add nuw nsw i32 %8, 1
  store i32 %27, ptr %5, align 4
  %28 = icmp eq i32 %27, 64
  br i1 %28, label %82, label %7

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %22, i32 -84
  %31 = icmp ne ptr %30, null
  %32 = icmp ne i64 %1, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %82

34:                                               ; preds = %78, %29
  %35 = phi i64 [ %80, %78 ], [ %1, %29 ]
  %36 = phi ptr [ %79, %78 ], [ %30, %29 ]
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.sock_common, ptr %36, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = getelementptr i8, ptr %39, i32 -84
  %44 = icmp eq ptr %43, null
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.ping_iter_state, ptr %37, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  %50 = icmp slt i32 %49, 64
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ping_iter_state, ptr %37, i32 0, i32 2
  br label %53

53:                                               ; preds = %72, %51
  %54 = phi i32 [ %49, %51 ], [ %73, %72 ]
  %55 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %54
  %56 = load volatile ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i16, ptr %52, align 4
  br label %67

62:                                               ; preds = %67
  %63 = load ptr, ptr %68, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %60
  %68 = phi ptr [ %56, %60 ], [ %63, %62 ]
  %69 = getelementptr i8, ptr %68, i32 -68
  %70 = load i16, ptr %69, align 8
  %71 = icmp eq i16 %70, %61
  br i1 %71, label %75, label %62

72:                                               ; preds = %62, %53
  %73 = add nsw i32 %54, 1
  store i32 %73, ptr %47, align 4
  %74 = icmp eq i32 %73, 64
  br i1 %74, label %82, label %53

75:                                               ; preds = %67
  %76 = getelementptr i8, ptr %68, i32 -84
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75, %34
  %79 = phi ptr [ %76, %75 ], [ %43, %34 ]
  %80 = add i64 %35, -1
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %86, label %34

82:                                               ; preds = %75, %72, %29, %26
  %83 = phi i64 [ %1, %29 ], [ %35, %72 ], [ %35, %75 ], [ %1, %26 ]
  %84 = phi ptr [ %30, %29 ], [ null, %72 ], [ null, %75 ], [ null, %26 ]
  %85 = icmp eq i64 %83, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %78
  %87 = phi ptr [ %84, %82 ], [ %79, %78 ]
  br label %88

88:                                               ; preds = %86, %82, %46
  %89 = phi ptr [ %87, %86 ], [ null, %82 ], [ null, %46 ]
  ret ptr %89
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ping_seq_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #7 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  br i1 %4, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ping_iter_state, ptr %6, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ping_iter_state, ptr %6, i32 0, i32 2
  br label %10

10:                                               ; preds = %29, %7
  %11 = phi i32 [ 0, %7 ], [ %30, %29 ]
  %12 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load i16, ptr %9, align 4
  br label %24

19:                                               ; preds = %24
  %20 = load ptr, ptr %25, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %17
  %25 = phi ptr [ %13, %17 ], [ %20, %19 ]
  %26 = getelementptr i8, ptr %25, i32 -68
  %27 = load i16, ptr %26, align 8
  %28 = icmp eq i16 %27, %18
  br i1 %28, label %32, label %19

29:                                               ; preds = %19, %10
  %30 = add nuw nsw i32 %11, 1
  store i32 %30, ptr %8, align 4
  %31 = icmp eq i32 %30, 64
  br i1 %31, label %74, label %10

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %25, i32 -84
  br label %74

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr i8, ptr %36, i32 -84
  %41 = icmp eq ptr %40, null
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.ping_iter_state, ptr %6, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = icmp slt i32 %46, 64
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ping_iter_state, ptr %6, i32 0, i32 2
  br label %50

50:                                               ; preds = %69, %48
  %51 = phi i32 [ %46, %48 ], [ %70, %69 ]
  %52 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %51
  %53 = load volatile ptr, ptr %52, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i16, ptr %49, align 4
  br label %64

59:                                               ; preds = %64
  %60 = load ptr, ptr %65, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59, %57
  %65 = phi ptr [ %53, %57 ], [ %60, %59 ]
  %66 = getelementptr i8, ptr %65, i32 -68
  %67 = load i16, ptr %66, align 8
  %68 = icmp eq i16 %67, %58
  br i1 %68, label %72, label %59

69:                                               ; preds = %59, %50
  %70 = add nsw i32 %51, 1
  store i32 %70, ptr %44, align 4
  %71 = icmp eq i32 %70, 64
  br i1 %71, label %74, label %50

72:                                               ; preds = %64
  %73 = getelementptr i8, ptr %65, i32 -84
  br label %74

74:                                               ; preds = %72, %69, %43, %34, %32, %29
  %75 = phi ptr [ %33, %32 ], [ %40, %34 ], [ null, %43 ], [ %73, %72 ], [ null, %29 ], [ null, %69 ]
  %76 = load i64, ptr %2, align 8
  %77 = add i64 %76, 1
  store i64 %77, ptr %2, align 8
  ret ptr %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ping_seq_stop(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ping_proc_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ping_v4_net_ops) #14
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ping_proc_exit() local_unnamed_addr #1 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ping_v4_net_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define dso_local void @ping_init() local_unnamed_addr #9 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %3 = shl nuw i32 %2, 1
  %4 = or i32 %3, 1
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr [64 x %struct.hlist_nulls_head], ptr @ping_table, i32 0, i32 %2
  store ptr %5, ptr %6, align 4
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 64
  br i1 %8, label %9, label %1

9:                                                ; preds = %1
  store i32 0, ptr getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_cmsg_send(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #12 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ping_v4_push_pending_frames(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pingfakehdr, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @csum_partial(ptr noundef %1, i32 noundef 8, i32 noundef %11) #14
  store i32 %12, ptr %10, align 4
  %13 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %12) #15, !srcloc !46
  %14 = xor i32 %13, -1
  %15 = lshr i32 %14, 16
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.icmphdr, ptr %1, i32 0, i32 2
  store i16 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 16
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 17
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = load i64, ptr %1, align 4
  store i64 %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, -97
  store i16 %27, ptr %25, align 8
  %28 = tail call i32 @ip_push_pending_frames(ptr noundef %0, ptr noundef %2) #14
  br label %29

29:                                               ; preds = %9, %3
  %30 = phi i32 [ %28, %9 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_out_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_push_pending_frames(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ping_v4_proc_init_net(ptr nocapture noundef readonly %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @ping_v4_seq_ops, i32 noundef 8, ptr noundef null) #14
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ping_v4_proc_exit_net(ptr nocapture noundef readonly %0) #13 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ping_v4_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ping_iter_state, ptr %4, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ping_iter_state, ptr %4, i32 0, i32 2
  store i16 2, ptr %6, align 4
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.ping_table, ptr @ping_table, i32 0, i32 1)) #14
  %7 = load i64, ptr %1, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = add i64 %7, -1
  %11 = tail call fastcc ptr @ping_get_idx(ptr noundef %0, i64 noundef %10) #14
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ inttoptr (i32 1 to ptr), %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ping_v4_seq_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 127
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  store i32 %5, ptr %6, align 8
  %7 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #14
  br label %42

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ping_iter_state, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %1, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #14
  %20 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %21 = load i16, ptr %20, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #14
  %23 = zext i16 %22 to i32
  %24 = zext i16 %19 to i32
  %25 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %29 = load volatile i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %32 = load volatile i32, ptr %31, align 4
  %33 = tail call i32 @sock_i_uid(ptr noundef %1) #14
  %34 = icmp eq i32 %33, -1
  %35 = load i32, ptr @overflowuid, align 4
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = tail call i32 @sock_i_ino(ptr noundef %1) #14
  %38 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %39 = load volatile i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 5
  %41 = load volatile i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %16, i32 noundef %23, i32 noundef %14, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %36, i32 noundef 0, i32 noundef %37, i32 noundef %39, ptr noundef %1, i32 noundef %41) #14
  br label %42

42:                                               ; preds = %9, %8
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 10) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 2155902370, i64 2155902850, i64 2155902407, i64 2155902463, i64 2155902497, i64 2155902521, i64 2155902562, i64 2155902583, i64 2155902611, i64 2155902645}
!10 = !{i64 567262, i64 2148068828, i64 2148068854, i64 2148068901, i64 2148068923, i64 2148068951, i64 2148068971}
!11 = !{i64 2148133548, i64 2148133580, i64 2148133609, i64 2148133643, i64 2148133674, i64 2148133697}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 596009, i64 596070}
!15 = !{i64 603114}
!16 = !{i64 599026}
!17 = !{i64 2148233770}
!18 = !{i64 2148135905, i64 2148135937, i64 2148135966, i64 2148136000, i64 2148136031, i64 2148136054}
!19 = !{i64 2149279300}
!20 = !{i64 2149633816}
!21 = !{i64 2149633658}
!22 = !{i64 2149633960}
!23 = !{i64 2149624448}
!24 = !{i64 2148132090, i64 2148132116, i64 2148132145, i64 2148132179, i64 2148132210, i64 2148132233}
!25 = !{i64 2148232769}
!26 = !{i64 2148135131, i64 2148135163, i64 2148135192, i64 2148135226, i64 2148135257, i64 2148135280}
!27 = !{i64 2148232972}
!28 = !{i64 2148979186}
!29 = !{i64 2148979403}
!30 = !{i64 2155320031}
!31 = !{i64 639354, i64 639371, i64 639395, i64 639421, i64 639439}
!32 = !{i64 2155320350}
!33 = !{i64 2155930617, i64 2155931097, i64 2155930654, i64 2155930710, i64 2155930744, i64 2155930768, i64 2155930809, i64 2155930830, i64 2155930858, i64 2155930892}
!34 = !{i64 2155936708, i64 2155937188, i64 2155936745, i64 2155936801, i64 2155936835, i64 2155936859, i64 2155936900, i64 2155936921, i64 2155936949, i64 2155936983}
!35 = !{i64 2155937613, i64 2155938093, i64 2155937650, i64 2155937706, i64 2155937740, i64 2155937764, i64 2155937805, i64 2155937826, i64 2155937854, i64 2155937888}
!36 = !{i64 2155940783, i64 2155941263, i64 2155940820, i64 2155940876, i64 2155940910, i64 2155940934, i64 2155940975, i64 2155940996, i64 2155941024, i64 2155941058}
!37 = !{i64 2149624747}
!38 = !{i64 2149625048}
!39 = !{i64 2149205385}
!40 = !{i64 2149201209}
!41 = !{i64 2149201284, i64 2149201311, i64 2149201358, i64 2149201380, i64 2149201408, i64 2149201428}
!42 = !{i64 2149228388}
!43 = !{i64 2155956162, i64 2155956642, i64 2155956199, i64 2155956255, i64 2155956289, i64 2155956313, i64 2155956354, i64 2155956375, i64 2155956403, i64 2155956437}
!44 = !{!"auto-init"}
!45 = !{i64 2148792766}
!46 = !{i64 5416868}
