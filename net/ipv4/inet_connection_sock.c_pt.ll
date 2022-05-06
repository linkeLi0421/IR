; ModuleID = '/llk/IR/net/ipv4/inet_connection_sock.c_pt.bc'
source_filename = "../net/ipv4/inet_connection_sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_rcv_saddr_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_rcv_saddr_equal\22\09\09\09\09\09"
module asm "__kstrtabns_inet_rcv_saddr_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_get_local_port_range:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_get_local_port_range\22\09\09\09\09\09"
module asm "__kstrtabns_inet_get_local_port_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_accept\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_init_xmit_timers:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_init_xmit_timers\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_init_xmit_timers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_clear_xmit_timers:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_clear_xmit_timers\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_clear_xmit_timers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_delete_keepalive_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_delete_keepalive_timer\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_delete_keepalive_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_reset_keepalive_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_reset_keepalive_timer\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_reset_keepalive_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_route_req:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_route_req\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_route_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_route_child_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_route_child_sock\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_route_child_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_rtx_syn_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_rtx_syn_ack\22\09\09\09\09\09"
module asm "__kstrtabns_inet_rtx_syn_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_reqsk_queue_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_reqsk_queue_drop\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_reqsk_queue_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_reqsk_queue_drop_and_put:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_reqsk_queue_drop_and_put\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_reqsk_queue_drop_and_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_reqsk_queue_hash_add:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_reqsk_queue_hash_add\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_reqsk_queue_hash_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_clone_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_clone_lock\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_clone_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_destroy_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_destroy_sock\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_destroy_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_prepare_forced_close:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_prepare_forced_close\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_prepare_forced_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_listen_start:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_listen_start\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_listen_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_reqsk_queue_add:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_reqsk_queue_add\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_reqsk_queue_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_complete_hashdance:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_complete_hashdance\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_complete_hashdance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_listen_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_listen_stop\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_listen_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_addr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_addr2sockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_addr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_csk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_csk_update_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_inet_csk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.171, [0 x i32], %union.anon.172, i16, i16, %union.anon.173, %struct.refcount_struct, [0 x i32], %union.anon.174 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { %struct.hlist_node }
%union.anon.173 = type { i32 }
%union.anon.174 = type { i32 }
%struct.anon = type { i32, i32 }
%struct.inet_bind_bucket = type { %struct.possible_net_t, i32, i16, i8, i8, %struct.kuid_t, %struct.in6_addr, i32, i16, i8, %struct.hlist_node, %struct.hlist_head }
%struct.kuid_t = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.175, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.176, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.177, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.175 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.176 = type { ptr }
%union.anon.177 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.170, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.170 = type { ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.131 }
%union.anon.131 = type { %struct.hlist_head }
%struct.inet_bind_hashbucket = type { %struct.spinlock, %struct.hlist_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.186, %struct.anon.187, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.120 }
%union.anon.120 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.186 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.187 = type { i32, i32, i32, i32 }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.188 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.2 = type { i16, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.anon.121 = type { i16, i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.125, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.125 = type { %struct.in6_addr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.190, %struct.anon.191, %struct.anon.192, i32, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.190 = type { i32, i32, i64 }
%struct.anon.191 = type { i32, i32, i64 }
%struct.anon.192 = type { i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@__kstrtab_inet_rcv_saddr_equal = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_rcv_saddr_equal = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_rcv_saddr_equal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_rcv_saddr_equal to i32), ptr @__kstrtab_inet_rcv_saddr_equal, ptr @__kstrtabns_inet_rcv_saddr_equal }, section "___ksymtab+inet_rcv_saddr_equal", align 4
@__kstrtab_inet_get_local_port_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_get_local_port_range = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_get_local_port_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_get_local_port_range to i32), ptr @__kstrtab_inet_get_local_port_range, ptr @__kstrtabns_inet_get_local_port_range }, section "___ksymtab+inet_get_local_port_range", align 4
@.str = private unnamed_addr constant [32 x i8] c"net/ipv4/inet_connection_sock.c\00", align 1
@__kstrtab_inet_csk_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_get_port to i32), ptr @__kstrtab_inet_csk_get_port, ptr @__kstrtabns_inet_csk_get_port }, section "___ksymtab_gpl+inet_csk_get_port", align 4
@__kstrtab_inet_csk_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_accept to i32), ptr @__kstrtab_inet_csk_accept, ptr @__kstrtabns_inet_csk_accept }, section "___ksymtab+inet_csk_accept", align 4
@__kstrtab_inet_csk_init_xmit_timers = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_init_xmit_timers = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_init_xmit_timers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_init_xmit_timers to i32), ptr @__kstrtab_inet_csk_init_xmit_timers, ptr @__kstrtabns_inet_csk_init_xmit_timers }, section "___ksymtab+inet_csk_init_xmit_timers", align 4
@__kstrtab_inet_csk_clear_xmit_timers = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_clear_xmit_timers = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_clear_xmit_timers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_clear_xmit_timers to i32), ptr @__kstrtab_inet_csk_clear_xmit_timers, ptr @__kstrtabns_inet_csk_clear_xmit_timers }, section "___ksymtab+inet_csk_clear_xmit_timers", align 4
@__kstrtab_inet_csk_delete_keepalive_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_delete_keepalive_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_delete_keepalive_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_delete_keepalive_timer to i32), ptr @__kstrtab_inet_csk_delete_keepalive_timer, ptr @__kstrtabns_inet_csk_delete_keepalive_timer }, section "___ksymtab+inet_csk_delete_keepalive_timer", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_inet_csk_reset_keepalive_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_reset_keepalive_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_reset_keepalive_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_reset_keepalive_timer to i32), ptr @__kstrtab_inet_csk_reset_keepalive_timer, ptr @__kstrtabns_inet_csk_reset_keepalive_timer }, section "___ksymtab+inet_csk_reset_keepalive_timer", align 4
@__kstrtab_inet_csk_route_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_route_req = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_route_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_route_req to i32), ptr @__kstrtab_inet_csk_route_req, ptr @__kstrtabns_inet_csk_route_req }, section "___ksymtab_gpl+inet_csk_route_req", align 4
@__kstrtab_inet_csk_route_child_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_route_child_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_route_child_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_route_child_sock to i32), ptr @__kstrtab_inet_csk_route_child_sock, ptr @__kstrtabns_inet_csk_route_child_sock }, section "___ksymtab_gpl+inet_csk_route_child_sock", align 4
@__kstrtab_inet_rtx_syn_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_rtx_syn_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_rtx_syn_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_rtx_syn_ack to i32), ptr @__kstrtab_inet_rtx_syn_ack, ptr @__kstrtabns_inet_rtx_syn_ack }, section "___ksymtab+inet_rtx_syn_ack", align 4
@__kstrtab_inet_csk_reqsk_queue_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_reqsk_queue_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_reqsk_queue_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_reqsk_queue_drop to i32), ptr @__kstrtab_inet_csk_reqsk_queue_drop, ptr @__kstrtabns_inet_csk_reqsk_queue_drop }, section "___ksymtab+inet_csk_reqsk_queue_drop", align 4
@__kstrtab_inet_csk_reqsk_queue_drop_and_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_reqsk_queue_drop_and_put = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_reqsk_queue_drop_and_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_reqsk_queue_drop_and_put to i32), ptr @__kstrtab_inet_csk_reqsk_queue_drop_and_put, ptr @__kstrtabns_inet_csk_reqsk_queue_drop_and_put }, section "___ksymtab+inet_csk_reqsk_queue_drop_and_put", align 4
@__kstrtab_inet_csk_reqsk_queue_hash_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_reqsk_queue_hash_add = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_reqsk_queue_hash_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_reqsk_queue_hash_add to i32), ptr @__kstrtab_inet_csk_reqsk_queue_hash_add, ptr @__kstrtabns_inet_csk_reqsk_queue_hash_add }, section "___ksymtab_gpl+inet_csk_reqsk_queue_hash_add", align 4
@__kstrtab_inet_csk_clone_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_clone_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_clone_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_clone_lock to i32), ptr @__kstrtab_inet_csk_clone_lock, ptr @__kstrtabns_inet_csk_clone_lock }, section "___ksymtab_gpl+inet_csk_clone_lock", align 4
@__kstrtab_inet_csk_destroy_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_destroy_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_destroy_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_destroy_sock to i32), ptr @__kstrtab_inet_csk_destroy_sock, ptr @__kstrtabns_inet_csk_destroy_sock }, section "___ksymtab+inet_csk_destroy_sock", align 4
@__kstrtab_inet_csk_prepare_forced_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_prepare_forced_close = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_prepare_forced_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_prepare_forced_close to i32), ptr @__kstrtab_inet_csk_prepare_forced_close, ptr @__kstrtabns_inet_csk_prepare_forced_close }, section "___ksymtab+inet_csk_prepare_forced_close", align 4
@__kstrtab_inet_csk_listen_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_listen_start = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_listen_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_listen_start to i32), ptr @__kstrtab_inet_csk_listen_start, ptr @__kstrtabns_inet_csk_listen_start }, section "___ksymtab_gpl+inet_csk_listen_start", align 4
@__kstrtab_inet_csk_reqsk_queue_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_reqsk_queue_add = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_reqsk_queue_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_reqsk_queue_add to i32), ptr @__kstrtab_inet_csk_reqsk_queue_add, ptr @__kstrtabns_inet_csk_reqsk_queue_add }, section "___ksymtab+inet_csk_reqsk_queue_add", align 4
@__kstrtab_inet_csk_complete_hashdance = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_complete_hashdance = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_complete_hashdance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_complete_hashdance to i32), ptr @__kstrtab_inet_csk_complete_hashdance, ptr @__kstrtabns_inet_csk_complete_hashdance }, section "___ksymtab+inet_csk_complete_hashdance", align 4
@inet_csk_listen_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_inet_csk_listen_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_listen_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_listen_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_listen_stop to i32), ptr @__kstrtab_inet_csk_listen_stop, ptr @__kstrtabns_inet_csk_listen_stop }, section "___ksymtab_gpl+inet_csk_listen_stop", align 4
@__kstrtab_inet_csk_addr2sockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_addr2sockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_addr2sockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_addr2sockaddr to i32), ptr @__kstrtab_inet_csk_addr2sockaddr, ptr @__kstrtabns_inet_csk_addr2sockaddr }, section "___ksymtab_gpl+inet_csk_addr2sockaddr", align 4
@__kstrtab_inet_csk_update_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_csk_update_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_csk_update_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_csk_update_pmtu to i32), ptr @__kstrtab_inet_csk_update_pmtu, ptr @__kstrtabns_inet_csk_update_pmtu }, section "___ksymtab_gpl+inet_csk_update_pmtu", align 4
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"include/net/request_sock.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_inet_csk_accept, ptr @__ksymtab_inet_csk_addr2sockaddr, ptr @__ksymtab_inet_csk_clear_xmit_timers, ptr @__ksymtab_inet_csk_clone_lock, ptr @__ksymtab_inet_csk_complete_hashdance, ptr @__ksymtab_inet_csk_delete_keepalive_timer, ptr @__ksymtab_inet_csk_destroy_sock, ptr @__ksymtab_inet_csk_get_port, ptr @__ksymtab_inet_csk_init_xmit_timers, ptr @__ksymtab_inet_csk_listen_start, ptr @__ksymtab_inet_csk_listen_stop, ptr @__ksymtab_inet_csk_prepare_forced_close, ptr @__ksymtab_inet_csk_reqsk_queue_add, ptr @__ksymtab_inet_csk_reqsk_queue_drop, ptr @__ksymtab_inet_csk_reqsk_queue_drop_and_put, ptr @__ksymtab_inet_csk_reqsk_queue_hash_add, ptr @__ksymtab_inet_csk_reset_keepalive_timer, ptr @__ksymtab_inet_csk_route_child_sock, ptr @__ksymtab_inet_csk_route_req, ptr @__ksymtab_inet_csk_update_pmtu, ptr @__ksymtab_inet_get_local_port_range, ptr @__ksymtab_inet_rcv_saddr_equal, ptr @__ksymtab_inet_rtx_syn_ack], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inet_rcv_saddr_equal(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 10
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %10 = load i16, ptr %9, align 8
  %11 = icmp eq i16 %10, 10
  %12 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %13 = select i1 %11, ptr %12, ptr null
  %14 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 32
  %21 = icmp ne i8 %20, 0
  %22 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 32
  %25 = icmp ne i8 %24, 0
  %26 = tail call fastcc zeroext i1 @ipv6_rcv_saddr_equal(ptr noundef %8, ptr noundef %13, i32 noundef %15, i32 noundef %17, i1 noundef zeroext %21, i1 noundef zeroext %25, i1 noundef zeroext %2, i1 noundef zeroext %2)
  br label %44

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %29
  %38 = icmp eq i32 %36, 0
  %39 = and i1 %38, %2
  %40 = or i1 %37, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = icmp eq i32 %29, 0
  %43 = and i1 %42, %2
  br label %44

44:                                               ; preds = %41, %34, %27, %7
  %45 = phi i1 [ %26, %7 ], [ true, %34 ], [ %43, %41 ], [ false, %27 ]
  ret i1 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipv6_rcv_saddr_equal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 {
  %9 = tail call i32 @__ipv6_addr_type(ptr noundef %0) #11
  %10 = and i32 %9, 65535
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @__ipv6_addr_type(ptr noundef nonnull %1) #11
  %14 = and i32 %13, 65535
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ 4096, %8 ]
  %17 = icmp eq i32 %10, 4096
  %18 = icmp eq i32 %16, 4096
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  br i1 %5, label %68, label %21

21:                                               ; preds = %20
  %22 = icmp eq i32 %2, %3
  %23 = icmp eq i32 %2, 0
  %24 = and i1 %23, %6
  %25 = or i1 %22, %24
  br i1 %25, label %68, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %3, 0
  %28 = and i1 %27, %7
  br label %68

29:                                               ; preds = %15
  %30 = icmp eq i32 %10, 0
  %31 = icmp eq i32 %16, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %68, label %33

33:                                               ; preds = %29
  %34 = and i1 %31, %7
  %35 = xor i1 %34, true
  %36 = select i1 %5, i1 %17, i1 false
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = and i1 %30, %6
  %40 = xor i1 %39, true
  %41 = select i1 %4, i1 %18, i1 false
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  br i1 %11, label %67, label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %0, align 4
  %46 = load i32, ptr %1, align 4
  %47 = xor i32 %46, %45
  %48 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %49
  %53 = or i32 %52, %47
  %54 = getelementptr [4 x i32], ptr %0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %55
  %59 = or i32 %53, %58
  %60 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = xor i32 %63, %61
  %65 = or i32 %59, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %44, %43
  br label %68

68:                                               ; preds = %67, %44, %38, %33, %29, %26, %21, %20
  %69 = phi i1 [ false, %67 ], [ true, %21 ], [ %28, %26 ], [ false, %20 ], [ true, %29 ], [ true, %33 ], [ true, %38 ], [ true, %44 ]
  ret i1 %69
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @inet_rcv_saddr_any(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, 10
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  %11 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %10, %12
  %14 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  br label %20

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i32 [ %16, %5 ], [ %19, %17 ]
  %22 = icmp eq i32 %21, 0
  ret i1 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_get_local_port_range(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 28
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 28, i32 1
  %6 = getelementptr %struct.net, ptr %0, i32 0, i32 35, i32 28, i32 1, i32 1
  br label %7

7:                                                ; preds = %15, %3
  %8 = load volatile i32, ptr %4, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !10
  %12 = load volatile i32, ptr %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr %1, align 4
  %18 = load i32, ptr %6, align 4
  store i32 %18, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %19 = load volatile i32, ptr %4, align 4
  %20 = icmp eq i32 %19, %16
  br i1 %20, label %21, label %7

21:                                               ; preds = %15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_update_fastreuse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @sock_i_uid(ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp ne i8 %10, 10
  %12 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %42

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %15, %8
  %20 = phi i1 [ false, %15 ], [ %11, %8 ]
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 3
  store i8 %21, ptr %22, align 2
  %23 = load i8, ptr %4, align 1
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 4
  br i1 %25, label %41, label %27

27:                                               ; preds = %19
  store i8 1, ptr %26, align 1
  %28 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 5
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 7
  store i32 %30, ptr %31, align 4
  %32 = load i8, ptr %4, align 1
  %33 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 9
  %34 = lshr i8 %32, 5
  %35 = and i8 %34, 1
  store i8 %35, ptr %33, align 2
  %36 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %37 = load i16, ptr %36, align 8
  %38 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 8
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %39, ptr noundef align 4 dereferenceable(16) %40, i32 16, i1 false)
  br label %117

41:                                               ; preds = %19
  store i8 0, ptr %26, align 1
  br label %117

42:                                               ; preds = %8
  br i1 %11, label %46, label %43

43:                                               ; preds = %42, %15
  %44 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 3
  store i8 0, ptr %44, align 2
  %45 = load i8, ptr %4, align 1
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i8 [ %45, %43 ], [ %5, %42 ]
  %48 = and i8 %47, 16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %115, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @sock_i_uid(ptr noundef %1) #11
  %52 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = icmp slt i8 %53, 1
  br i1 %54, label %101, label %55

55:                                               ; preds = %50
  %56 = load i8, ptr %4, align 1
  %57 = and i8 %56, 16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 81
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %51
  br i1 %66, label %67, label %101

67:                                               ; preds = %63
  %68 = icmp eq i8 %53, 1
  br i1 %68, label %117, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 8
  %71 = load i16, ptr %70, align 4
  %72 = icmp eq i16 %71, 10
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %76 = load i16, ptr %75, align 8
  %77 = icmp eq i16 %76, 10
  %78 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %79 = select i1 %77, ptr %78, ptr null
  %80 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 9
  %85 = load i8, ptr %84, align 2, !range !13
  %86 = icmp ne i8 %85, 0
  %87 = and i8 %56, 32
  %88 = icmp ne i8 %87, 0
  %89 = tail call fastcc zeroext i1 @ipv6_rcv_saddr_equal(ptr noundef %74, ptr noundef %79, i32 noundef %81, i32 noundef %83, i1 noundef zeroext %86, i1 noundef zeroext %88, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br i1 %89, label %117, label %101

90:                                               ; preds = %69
  %91 = and i8 %56, 32
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, %95
  %99 = icmp eq i32 %97, 0
  %100 = or i1 %98, %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %93, %90, %73, %63, %59, %55, %50
  store i8 2, ptr %52, align 1
  %102 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 5
  store i32 %3, ptr %102, align 4
  %103 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 7
  store i32 %104, ptr %105, align 4
  %106 = load i8, ptr %4, align 1
  %107 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 9
  %108 = lshr i8 %106, 5
  %109 = and i8 %108, 1
  store i8 %109, ptr %107, align 2
  %110 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %111 = load i16, ptr %110, align 8
  %112 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 8
  store i16 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %113, ptr noundef align 4 dereferenceable(16) %114, i32 16, i1 false)
  br label %117

115:                                              ; preds = %46
  %116 = getelementptr inbounds %struct.inet_bind_bucket, ptr %0, i32 0, i32 4
  store i8 0, ptr %116, align 1
  br label %117

117:                                              ; preds = %115, %101, %93, %73, %67, %41, %27
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_csk_get_port(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %9 = load volatile i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 10
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ true, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 48
  %16 = load ptr, ptr %15, align 4
  %17 = zext i16 %1 to i32
  %18 = icmp eq i16 %1, 0
  %19 = getelementptr inbounds %struct.inet_hashinfo, ptr %16, i32 0, i32 5
  br i1 %18, label %20, label %149

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.inet_hashinfo, ptr %16, i32 0, i32 6
  br label %22

22:                                               ; preds = %142, %20
  %23 = phi i8 [ %4, %20 ], [ %143, %142 ]
  %24 = phi i1 [ false, %20 ], [ true, %142 ]
  %25 = and i8 %23, 15
  %26 = icmp eq i8 %25, 1
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %136, %22
  %29 = phi i32 [ %27, %22 ], [ 2, %136 ]
  br label %30

30:                                               ; preds = %38, %28
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 28), align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %34, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !10
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 28), align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %31, %30 ], [ %35, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %40 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 28, i32 1), align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 28, i32 1, i32 1), align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 28), align 4
  %43 = icmp eq i32 %42, %39
  br i1 %43, label %44, label %30

44:                                               ; preds = %38
  %45 = add i32 %41, 1
  %46 = sub i32 %45, %40
  %47 = icmp slt i32 %46, 4
  %48 = select i1 %47, i32 0, i32 %29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = ashr i32 %46, 1
  %52 = and i32 %51, -2
  %53 = add i32 %52, %40
  %54 = icmp eq i32 %48, 1
  %55 = select i1 %54, i32 %40, i32 %53
  %56 = select i1 %54, i32 %53, i32 %45
  %57 = sub i32 %56, %55
  br label %58

58:                                               ; preds = %50, %44
  %59 = phi i32 [ %57, %50 ], [ %46, %44 ]
  %60 = phi i32 [ %55, %50 ], [ %40, %44 ]
  %61 = phi i32 [ %56, %50 ], [ %45, %44 ]
  %62 = icmp ugt i32 %59, 1
  %63 = and i32 %59, -2
  %64 = select i1 %62, i32 %63, i32 %59, !prof !14
  %65 = tail call i32 @prandom_u32() #11
  %66 = urem i32 %65, %64
  %67 = or i32 %66, 1
  %68 = icmp eq i32 %64, 0
  br label %69

69:                                               ; preds = %132, %58
  %70 = phi i32 [ %67, %58 ], [ %133, %132 ]
  br i1 %68, label %132, label %71

71:                                               ; preds = %69
  %72 = add i32 %70, %60
  br label %73

73:                                               ; preds = %128, %71
  %74 = phi i32 [ %130, %128 ], [ %72, %71 ]
  %75 = phi i32 [ %129, %128 ], [ 0, %71 ]
  %76 = icmp slt i32 %74, %61
  br i1 %76, label %79, label %77, !prof !14

77:                                               ; preds = %73
  %78 = sub i32 %74, %64
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %78, %77 ], [ %74, %73 ]
  %81 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 116), align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = lshr i32 %80, 5
  %85 = and i32 %84, 2047
  %86 = getelementptr i32, ptr %81, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %80, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %83, %79
  %93 = load ptr, ptr %19, align 4
  %94 = load i32, ptr %21, align 8
  %95 = and i32 %80, 65535
  %96 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %97 = add i32 %96, %95
  %98 = add i32 %94, -1
  %99 = and i32 %97, %98
  %100 = getelementptr %struct.inet_bind_hashbucket, ptr %93, i32 %99
  tail call void @_raw_spin_lock_bh(ptr noundef %100) #11
  %101 = getelementptr %struct.inet_bind_hashbucket, ptr %93, i32 %99, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = getelementptr i8, ptr %102, i32 -36
  %105 = icmp eq ptr %104, null
  %106 = or i1 %103, %105
  br i1 %106, label %144, label %107

107:                                              ; preds = %119, %92
  %108 = phi ptr [ %123, %119 ], [ %104, %92 ]
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.inet_bind_bucket, ptr %108, i32 0, i32 2
  %113 = load i16, ptr %112, align 4
  %114 = zext i16 %113 to i32
  %115 = icmp eq i32 %80, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = tail call fastcc i32 @inet_csk_bind_conflict(ptr noundef %0, ptr noundef nonnull %108, i1 noundef zeroext %24, i1 noundef zeroext false) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %144, label %126

119:                                              ; preds = %111, %107
  %120 = getelementptr inbounds %struct.inet_bind_bucket, ptr %108, i32 0, i32 10
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  %123 = getelementptr i8, ptr %121, i32 -36
  %124 = icmp eq ptr %123, null
  %125 = or i1 %122, %124
  br i1 %125, label %144, label %107

126:                                              ; preds = %116
  tail call void @_raw_spin_unlock_bh(ptr noundef %100) #11
  %127 = tail call i32 @__cond_resched() #11
  br label %128

128:                                              ; preds = %126, %83
  %129 = add i32 %75, 2
  %130 = add i32 %80, 2
  %131 = icmp ult i32 %129, %64
  br i1 %131, label %73, label %132

132:                                              ; preds = %128, %69
  %133 = add i32 %70, -1
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %69, label %136

136:                                              ; preds = %132
  %137 = icmp eq i32 %48, 1
  br i1 %137, label %28, label %138

138:                                              ; preds = %136
  %139 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 36), align 1
  %140 = icmp eq i8 %139, 0
  %141 = or i1 %24, %140
  br i1 %141, label %274, label %142

142:                                              ; preds = %138
  %143 = load i8, ptr %3, align 1
  br label %22

144:                                              ; preds = %119, %116, %92
  %145 = phi ptr [ null, %119 ], [ %108, %116 ], [ null, %92 ]
  %146 = icmp eq ptr %100, null
  br i1 %146, label %274, label %147

147:                                              ; preds = %144
  %148 = icmp eq ptr %145, null
  br i1 %148, label %179, label %257

149:                                              ; preds = %11
  %150 = load ptr, ptr %19, align 4
  %151 = getelementptr inbounds %struct.inet_hashinfo, ptr %16, i32 0, i32 6
  %152 = load i32, ptr %151, align 8
  %153 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %154 = add i32 %153, %17
  %155 = add i32 %152, -1
  %156 = and i32 %154, %155
  %157 = getelementptr %struct.inet_bind_hashbucket, ptr %150, i32 %156
  tail call void @_raw_spin_lock_bh(ptr noundef %157) #11
  %158 = getelementptr %struct.inet_bind_hashbucket, ptr %150, i32 %156, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  %161 = getelementptr i8, ptr %159, i32 -36
  %162 = icmp eq ptr %161, null
  %163 = or i1 %160, %162
  br i1 %163, label %179, label %164

164:                                              ; preds = %172, %149
  %165 = phi ptr [ %176, %172 ], [ %161, %149 ]
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.inet_bind_bucket, ptr %165, i32 0, i32 2
  %170 = load i16, ptr %169, align 4
  %171 = icmp eq i16 %170, %1
  br i1 %171, label %187, label %172

172:                                              ; preds = %168, %164
  %173 = getelementptr inbounds %struct.inet_bind_bucket, ptr %165, i32 0, i32 10
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  %176 = getelementptr i8, ptr %174, i32 -36
  %177 = icmp eq ptr %176, null
  %178 = or i1 %175, %177
  br i1 %178, label %179, label %164

179:                                              ; preds = %172, %149, %147
  %180 = phi i32 [ %80, %147 ], [ %17, %149 ], [ %17, %172 ]
  %181 = phi ptr [ %100, %147 ], [ %157, %149 ], [ %157, %172 ]
  %182 = getelementptr inbounds %struct.inet_hashinfo, ptr %16, i32 0, i32 4
  %183 = load ptr, ptr %182, align 16
  %184 = trunc i32 %180 to i16
  %185 = tail call ptr @inet_bind_bucket_create(ptr noundef %183, ptr noundef nonnull @init_net, ptr noundef %181, i16 noundef zeroext %184, i32 noundef 0) #11
  %186 = icmp eq ptr %185, null
  br i1 %186, label %271, label %187

187:                                              ; preds = %179, %168
  %188 = phi i32 [ %180, %179 ], [ %17, %168 ]
  %189 = phi ptr [ %185, %179 ], [ %165, %168 ]
  %190 = phi ptr [ %181, %179 ], [ %157, %168 ]
  %191 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 11
  %192 = load volatile ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %257, label %194

194:                                              ; preds = %187
  %195 = load i8, ptr %3, align 1
  %196 = and i8 %195, 15
  %197 = icmp eq i8 %196, 2
  br i1 %197, label %257, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 3
  %200 = load i8, ptr %199, align 2
  %201 = icmp slt i8 %200, 1
  %202 = select i1 %201, i1 true, i1 %12
  br i1 %202, label %203, label %257

203:                                              ; preds = %198
  %204 = tail call i32 @sock_i_uid(ptr noundef %0) #11
  %205 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 4
  %206 = load i8, ptr %205, align 1
  %207 = icmp slt i8 %206, 1
  br i1 %207, label %254, label %208

208:                                              ; preds = %203
  %209 = load i8, ptr %3, align 1
  %210 = and i8 %209, 16
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %254, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %214 = load volatile ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %254

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 5
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, %204
  br i1 %219, label %220, label %254

220:                                              ; preds = %216
  %221 = icmp eq i8 %206, 1
  br i1 %221, label %257, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 8
  %224 = load i16, ptr %223, align 4
  %225 = icmp eq i16 %224, 10
  br i1 %225, label %226, label %243

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 6
  %228 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %229 = load i16, ptr %228, align 8
  %230 = icmp eq i16 %229, 10
  %231 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %232 = select i1 %230, ptr %231, ptr null
  %233 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 7
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 9
  %238 = load i8, ptr %237, align 2, !range !13
  %239 = icmp ne i8 %238, 0
  %240 = and i8 %209, 32
  %241 = icmp ne i8 %240, 0
  %242 = tail call fastcc zeroext i1 @ipv6_rcv_saddr_equal(ptr noundef %227, ptr noundef %232, i32 noundef %234, i32 noundef %236, i1 noundef zeroext %239, i1 noundef zeroext %241, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br i1 %242, label %257, label %254

243:                                              ; preds = %222
  %244 = and i8 %209, 32
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr inbounds %struct.inet_bind_bucket, ptr %189, i32 0, i32 7
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, %248
  %252 = icmp eq i32 %250, 0
  %253 = or i1 %251, %252
  br i1 %253, label %257, label %254

254:                                              ; preds = %246, %243, %226, %216, %212, %208, %203
  %255 = tail call fastcc i32 @inet_csk_bind_conflict(ptr noundef %0, ptr noundef nonnull %189, i1 noundef zeroext true, i1 noundef zeroext true)
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %254, %246, %226, %220, %198, %194, %187, %147
  %258 = phi i32 [ %188, %194 ], [ %188, %254 ], [ %188, %246 ], [ %188, %198 ], [ %188, %187 ], [ %80, %147 ], [ %188, %220 ], [ %188, %226 ]
  %259 = phi ptr [ %189, %194 ], [ %189, %254 ], [ %189, %246 ], [ %189, %198 ], [ %189, %187 ], [ %145, %147 ], [ %189, %220 ], [ %189, %226 ]
  %260 = phi ptr [ %190, %194 ], [ %190, %254 ], [ %190, %246 ], [ %190, %198 ], [ %190, %187 ], [ %100, %147 ], [ %190, %220 ], [ %190, %226 ]
  tail call void @inet_csk_update_fastreuse(ptr noundef nonnull %259, ptr noundef %0)
  %261 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = trunc i32 %258 to i16
  tail call void @inet_bind_hash(ptr noundef %0, ptr noundef nonnull %259, i16 noundef zeroext %265) #11
  %266 = load ptr, ptr %261, align 4
  br label %267

267:                                              ; preds = %264, %257
  %268 = phi ptr [ %266, %264 ], [ %262, %257 ]
  %269 = icmp eq ptr %268, %259
  br i1 %269, label %271, label %270, !prof !14

270:                                              ; preds = %267
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 410, i32 noundef 9, ptr noundef null) #11
  br label %271

271:                                              ; preds = %270, %267, %254, %179
  %272 = phi ptr [ %190, %254 ], [ %181, %179 ], [ %260, %270 ], [ %260, %267 ]
  %273 = phi i32 [ 1, %254 ], [ 1, %179 ], [ 0, %270 ], [ 0, %267 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %272) #11
  br label %274

274:                                              ; preds = %271, %144, %138
  %275 = phi i32 [ %273, %271 ], [ 1, %144 ], [ 1, %138 ]
  ret i32 %275
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_bind_bucket_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet_csk_bind_conflict(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 0
  %9 = and i8 %6, 16
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @sock_i_uid(ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sock_reuseport, ptr %13, i32 0, i32 3
  %17 = load volatile i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i1 [ false, %4 ], [ %18, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %21 = getelementptr inbounds %struct.inet_bind_bucket, ptr %1, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -24
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %259, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %29 = select i1 %3, i1 true, i1 %10
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %33 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %34 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %35 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %36 = xor i1 %3, true
  %37 = select i1 %36, i1 true, i1 %10
  br label %38

38:                                               ; preds = %252, %27
  %39 = phi ptr [ %24, %27 ], [ %256, %252 ]
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %252, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %28, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq i32 %42, %46
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %252

50:                                               ; preds = %44, %41
  br i1 %8, label %154, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %154, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 4
  %58 = load volatile i8, ptr %57, align 2
  %59 = icmp eq i8 %58, 10
  br i1 %59, label %154, label %60

60:                                               ; preds = %56
  br i1 %2, label %61, label %72

61:                                               ; preds = %60
  br i1 %29, label %252, label %62

62:                                               ; preds = %61
  %63 = and i8 %53, 16
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i1 true, i1 %20
  br i1 %65, label %252, label %66

66:                                               ; preds = %62
  %67 = load volatile i8, ptr %57, align 2
  %68 = icmp eq i8 %67, 6
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @sock_i_uid(ptr noundef nonnull %39) #11
  %71 = icmp eq i32 %11, %70
  br i1 %71, label %72, label %252

72:                                               ; preds = %69, %66, %60
  %73 = load i16, ptr %30, align 8
  %74 = icmp eq i16 %73, 10
  br i1 %74, label %75, label %141

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 3
  %77 = load i16, ptr %76, align 8
  %78 = icmp eq i16 %77, 10
  %79 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 11
  %80 = select i1 %78, ptr %79, ptr null
  %81 = load i32, ptr %31, align 4
  %82 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = load i8, ptr %5, align 1
  %85 = and i8 %84, 32
  %86 = icmp ne i8 %85, 0
  %87 = load i8, ptr %52, align 1
  %88 = and i8 %87, 32
  %89 = icmp ne i8 %88, 0
  %90 = tail call i32 @__ipv6_addr_type(ptr noundef %32) #11
  %91 = and i32 %90, 65535
  %92 = icmp eq ptr %80, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %75
  %94 = tail call i32 @__ipv6_addr_type(ptr noundef nonnull %80) #11
  %95 = and i32 %94, 65535
  br label %96

96:                                               ; preds = %93, %75
  %97 = phi i32 [ %95, %93 ], [ 4096, %75 ]
  %98 = icmp eq i32 %91, 4096
  %99 = icmp eq i32 %97, 4096
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  br i1 %89, label %252, label %102

102:                                              ; preds = %101
  %103 = icmp eq i32 %81, %83
  %104 = icmp eq i32 %81, 0
  %105 = or i1 %104, %103
  %106 = icmp eq i32 %83, 0
  %107 = or i1 %106, %105
  br i1 %107, label %259, label %252

108:                                              ; preds = %96
  %109 = icmp eq i32 %91, 0
  %110 = icmp eq i32 %97, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %259, label %112

112:                                              ; preds = %108
  %113 = xor i1 %110, true
  %114 = select i1 %89, i1 %98, i1 false
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %116, label %259

116:                                              ; preds = %112
  %117 = xor i1 %109, true
  %118 = select i1 %86, i1 %99, i1 false
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %259

120:                                              ; preds = %116
  br i1 %92, label %252, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %32, align 4
  %123 = load i32, ptr %80, align 4
  %124 = xor i32 %123, %122
  %125 = load i32, ptr %33, align 4
  %126 = getelementptr [4 x i32], ptr %80, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = xor i32 %127, %125
  %129 = or i32 %128, %124
  %130 = load i32, ptr %34, align 4
  %131 = getelementptr [4 x i32], ptr %80, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = xor i32 %132, %130
  %134 = or i32 %129, %133
  %135 = load i32, ptr %35, align 4
  %136 = getelementptr [4 x i32], ptr %80, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = xor i32 %137, %135
  %139 = or i32 %134, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %259, label %252

141:                                              ; preds = %72
  %142 = load i8, ptr %52, align 1
  %143 = and i8 %142, 32
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %252

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = load i32, ptr %31, align 4
  %149 = icmp eq i32 %148, %147
  %150 = icmp eq i32 %148, 0
  %151 = or i1 %149, %150
  %152 = icmp eq i32 %147, 0
  %153 = or i1 %152, %151
  br i1 %153, label %259, label %252

154:                                              ; preds = %56, %51, %50
  br i1 %37, label %168, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 5
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 16
  %159 = icmp eq i8 %158, 0
  %160 = select i1 %159, i1 true, i1 %20
  br i1 %160, label %168, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 4
  %163 = load volatile i8, ptr %162, align 2
  %164 = icmp eq i8 %163, 6
  br i1 %164, label %252, label %165

165:                                              ; preds = %161
  %166 = tail call i32 @sock_i_uid(ptr noundef nonnull %39) #11
  %167 = icmp eq i32 %11, %166
  br i1 %167, label %252, label %168

168:                                              ; preds = %165, %155, %154
  %169 = load i16, ptr %30, align 8
  %170 = icmp eq i16 %169, 10
  br i1 %170, label %171, label %238

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 3
  %173 = load i16, ptr %172, align 8
  %174 = icmp eq i16 %173, 10
  %175 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 11
  %176 = select i1 %174, ptr %175, ptr null
  %177 = load i32, ptr %31, align 4
  %178 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = load i8, ptr %5, align 1
  %181 = and i8 %180, 32
  %182 = icmp ne i8 %181, 0
  %183 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 5
  %184 = load i8, ptr %183, align 1
  %185 = and i8 %184, 32
  %186 = icmp ne i8 %185, 0
  %187 = tail call i32 @__ipv6_addr_type(ptr noundef %32) #11
  %188 = and i32 %187, 65535
  %189 = icmp eq ptr %176, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %171
  %191 = tail call i32 @__ipv6_addr_type(ptr noundef nonnull %176) #11
  %192 = and i32 %191, 65535
  br label %193

193:                                              ; preds = %190, %171
  %194 = phi i32 [ %192, %190 ], [ 4096, %171 ]
  %195 = icmp eq i32 %188, 4096
  %196 = icmp eq i32 %194, 4096
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  br i1 %186, label %252, label %199

199:                                              ; preds = %198
  %200 = icmp eq i32 %177, %179
  %201 = icmp eq i32 %177, 0
  %202 = or i1 %201, %200
  %203 = icmp eq i32 %179, 0
  %204 = or i1 %203, %202
  br i1 %204, label %259, label %252

205:                                              ; preds = %193
  %206 = icmp eq i32 %188, 0
  %207 = icmp eq i32 %194, 0
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %259, label %209

209:                                              ; preds = %205
  %210 = xor i1 %207, true
  %211 = select i1 %186, i1 %195, i1 false
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %213, label %259

213:                                              ; preds = %209
  %214 = xor i1 %206, true
  %215 = select i1 %182, i1 %196, i1 false
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %217, label %259

217:                                              ; preds = %213
  br i1 %189, label %252, label %218

218:                                              ; preds = %217
  %219 = load i32, ptr %32, align 4
  %220 = load i32, ptr %176, align 4
  %221 = xor i32 %220, %219
  %222 = load i32, ptr %33, align 4
  %223 = getelementptr [4 x i32], ptr %176, i32 0, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = xor i32 %224, %222
  %226 = or i32 %225, %221
  %227 = load i32, ptr %34, align 4
  %228 = getelementptr [4 x i32], ptr %176, i32 0, i32 2
  %229 = load i32, ptr %228, align 4
  %230 = xor i32 %229, %227
  %231 = or i32 %226, %230
  %232 = load i32, ptr %35, align 4
  %233 = getelementptr [4 x i32], ptr %176, i32 0, i32 3
  %234 = load i32, ptr %233, align 4
  %235 = xor i32 %234, %232
  %236 = or i32 %231, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %259, label %252

238:                                              ; preds = %168
  %239 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 5
  %240 = load i8, ptr %239, align 1
  %241 = and i8 %240, 32
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = load i32, ptr %31, align 4
  %247 = icmp eq i32 %246, %245
  %248 = icmp eq i32 %246, 0
  %249 = or i1 %247, %248
  %250 = icmp eq i32 %245, 0
  %251 = or i1 %250, %249
  br i1 %251, label %259, label %252

252:                                              ; preds = %243, %238, %218, %217, %199, %198, %165, %161, %145, %141, %121, %120, %102, %101, %69, %62, %61, %44, %38
  %253 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 7
  %254 = load ptr, ptr %253, align 8
  %255 = icmp eq ptr %254, null
  %256 = getelementptr i8, ptr %254, i32 -24
  %257 = icmp eq ptr %256, null
  %258 = or i1 %255, %257
  br i1 %258, label %259, label %38

259:                                              ; preds = %252, %243, %218, %213, %209, %205, %199, %145, %121, %116, %112, %108, %102, %19
  %260 = phi i32 [ 0, %19 ], [ 1, %218 ], [ 1, %213 ], [ 1, %209 ], [ 1, %205 ], [ 1, %199 ], [ 1, %243 ], [ 1, %121 ], [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 1, %102 ], [ 1, %145 ], [ 0, %252 ]
  ret i32 %260
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_bind_hash(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_accept(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 zeroext %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %10, label %97

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 5
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = and i32 %1, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 62
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %23 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %5, align 4
  store ptr %23, ptr %22, align 4
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %24, align 4
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  br label %28

28:                                               ; preds = %51, %21
  %29 = phi i32 [ %19, %21 ], [ %37, %51 ]
  %30 = load volatile ptr, ptr %27, align 4
  %31 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 1) #11
  call void @release_sock(ptr noundef %0) #11
  %32 = load volatile ptr, ptr %11, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @schedule_timeout(i32 noundef %29) #11
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i32 [ %35, %34 ], [ %29, %28 ]
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %38 = load volatile ptr, ptr %11, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load volatile i8, ptr %7, align 2
  %42 = icmp eq i8 %41, 10
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load volatile i32, ptr %23, align 4
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53, !prof !14

47:                                               ; preds = %43
  %48 = load volatile i32, ptr %23, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = icmp eq i32 %37, 0
  br i1 %52, label %59, label %28

53:                                               ; preds = %43
  %54 = icmp eq i32 %37, 2147483647
  %55 = select i1 %54, i32 -512, i32 -4
  br label %59

56:                                               ; preds = %47
  %57 = icmp eq i32 %37, 2147483647
  %58 = select i1 %57, i32 -512, i32 -4
  br label %59

59:                                               ; preds = %56, %53, %51, %40
  %60 = phi i32 [ %58, %56 ], [ %55, %53 ], [ -11, %51 ], [ -22, %40 ]
  %61 = load volatile ptr, ptr %27, align 4
  call void @finish_wait(ptr noundef %61, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  br label %97

62:                                               ; preds = %36
  %63 = load volatile ptr, ptr %27, align 4
  call void @finish_wait(ptr noundef %63, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  br label %64

64:                                               ; preds = %62, %10
  call void @_raw_spin_lock_bh(ptr noundef %6) #11
  %65 = load ptr, ptr %11, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store volatile i32 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.request_sock, ptr %65, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  store volatile ptr %72, ptr %11, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  store ptr null, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %67, %64
  call void @_raw_spin_unlock_bh(ptr noundef %6) #11
  %77 = getelementptr inbounds %struct.request_sock, ptr %65, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, 6
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tcp_request_sock, ptr %65, i32 0, i32 3
  %84 = load i8, ptr %83, align 8, !range !13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %87) #11
  %88 = load i8, ptr %83, align 8, !range !13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store ptr null, ptr %77, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi ptr [ null, %90 ], [ %65, %86 ]
  call void @_raw_spin_unlock_bh(ptr noundef %87) #11
  br label %93

93:                                               ; preds = %91, %82, %76
  %94 = phi ptr [ %92, %91 ], [ %65, %82 ], [ %65, %76 ]
  call void @release_sock(ptr noundef %0) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  call fastcc void @reqsk_put(ptr noundef nonnull %94)
  br label %99

97:                                               ; preds = %59, %17, %14, %4
  %98 = phi i32 [ -22, %4 ], [ %60, %59 ], [ -11, %17 ], [ -11, %14 ]
  store i32 %98, ptr %2, align 4
  call void @release_sock(ptr noundef %0) #11
  br label %99

99:                                               ; preds = %97, %96, %93
  %100 = phi ptr [ null, %97 ], [ %78, %93 ], [ %78, %96 ]
  ret ptr %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reqsk_put(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %39, label %8, !prof !14

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #11
  br label %39

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %10 = load volatile i32, ptr %2, align 4
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @reqsk_free.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !21

15:                                               ; preds = %9
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 126, i32 noundef 9, ptr noundef null) #11
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.request_sock_ops, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #11
  %21 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #11, !srcloc !18
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #11, !srcloc !19
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !14

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #11
  br label %33

32:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %22) #11
  br label %33

33:                                               ; preds = %32, %31, %29, %16
  %34 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %35) #11
  %36 = load ptr, ptr %17, align 8
  %37 = getelementptr inbounds %struct.request_sock_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %0) #11
  br label %39

39:                                               ; preds = %33, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_init_xmit_timers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %5, ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %6 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %6, ptr noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 32
  tail call void @init_timer_key(ptr noundef %7, ptr noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  store i8 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 0, ptr %9, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_clear_xmit_timers(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_stop_timer(ptr noundef %0, ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 5
  tail call void @sk_stop_timer(ptr noundef %0, ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 32
  tail call void @sk_stop_timer(ptr noundef %0, ptr noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stop_timer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_delete_keepalive_timer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 32
  tail call void @sk_stop_timer(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 32
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, %1
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %3, i32 noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_route_req(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %4 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 30
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %14 = load volatile i32, ptr %13, align 4
  %15 = lshr i32 %14, 13
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = or i8 %17, %12
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %20 = load i16, ptr %19, align 4
  %21 = trunc i16 %20 to i8
  %22 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 40
  %25 = icmp ne i16 %24, 0
  %26 = zext i1 %25 to i8
  %27 = icmp eq ptr %5, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1
  %33 = select i1 %31, ptr %2, ptr %32
  br label %34

34:                                               ; preds = %28, %3
  %35 = phi ptr [ %2, %3 ], [ %33, %28 ]
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 2
  %40 = load i16, ptr %39, align 4
  %41 = getelementptr inbounds %struct.anon.2, ptr %39, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %45 = load i32, ptr %44, align 4
  store i32 %7, ptr %1, align 8
  %46 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 1
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  store i32 %9, ptr %47, align 8
  %48 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 3
  store i8 %18, ptr %48, align 4
  %49 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 4
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 %21, ptr %50, align 2
  %51 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  store i8 %26, ptr %51, align 1
  %52 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 7
  store i32 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 9
  store i64 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 8
  store i32 %45, ptr %54, align 4
  %55 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  store i32 %36, ptr %55, align 4
  %56 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  store i32 %38, ptr %56, align 8
  %57 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  store i16 %40, ptr %57, align 8
  %58 = getelementptr inbounds %struct.anon.121, ptr %57, i32 0, i32 1
  store i16 %43, ptr %58, align 2
  %59 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 10
  store i32 0, ptr %59, align 8
  %60 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef %0) #11
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %74, label %62

62:                                               ; preds = %34
  br i1 %27, label %72, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 6
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtable, ptr %60, i32 0, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %63, %62
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %94

73:                                               ; preds = %68
  tail call void @dst_release(ptr noundef %60) #11
  br label %74

74:                                               ; preds = %73, %34
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %75 = tail call ptr @llvm.thread.pointer() #11
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %77 = load volatile i32, ptr %76, align 4
  %78 = add i32 %77, 512
  store volatile i32 %78, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %79 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #10, !srcloc !23
  %84 = add i32 %83, %80
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.ipstats_mib, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !24
  %89 = getelementptr [37 x i64], ptr %85, i32 0, i32 15
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, ptr %89, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !25
  %92 = load i32, ptr %86, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %86, align 4
  tail call fastcc void @local_bh_enable()
  br label %94

94:                                               ; preds = %74, %72
  %95 = phi ptr [ null, %74 ], [ %60, %72 ]
  ret ptr %95
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_route_child_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1
  %7 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 30
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %15 = load volatile i32, ptr %14, align 4
  %16 = lshr i32 %15, 13
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = or i8 %18, %13
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %21 = load i16, ptr %20, align 4
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 40
  %26 = icmp ne i16 %25, 0
  %27 = zext i1 %26 to i8
  %28 = icmp eq ptr %5, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1
  %34 = select i1 %32, ptr %2, ptr %33
  br label %35

35:                                               ; preds = %29, %3
  %36 = phi ptr [ %2, %3 ], [ %34, %29 ]
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 2
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr inbounds %struct.anon.2, ptr %40, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %46 = load i32, ptr %45, align 4
  store i32 %8, ptr %6, align 8
  %47 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 2
  store i32 %10, ptr %48, align 8
  %49 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 3
  store i8 %19, ptr %49, align 4
  %50 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 4
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 5
  store i8 %22, ptr %51, align 2
  %52 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  store i8 %27, ptr %52, align 1
  %53 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  store i64 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  store i32 %46, ptr %55, align 4
  %56 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %37, ptr %56, align 4
  %57 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  store i32 %39, ptr %57, align 8
  %58 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i16 %41, ptr %58, align 8
  %59 = getelementptr inbounds %struct.anon.121, ptr %58, i32 0, i32 1
  store i16 %44, ptr %59, align 2
  %60 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 10
  store i32 0, ptr %60, align 8
  %61 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %6, ptr noundef %0) #11
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %74, label %63

63:                                               ; preds = %35
  br i1 %28, label %94, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.rtable, ptr %61, i32 0, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %69
  tail call void @dst_release(ptr noundef %61) #11
  br label %74

74:                                               ; preds = %73, %35
  %75 = tail call ptr @llvm.thread.pointer() #11
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %77 = load volatile i32, ptr %76, align 4
  %78 = add i32 %77, 512
  store volatile i32 %78, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %79 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #10, !srcloc !23
  %84 = add i32 %83, %80
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.ipstats_mib, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !24
  %89 = getelementptr [37 x i64], ptr %85, i32 0, i32 15
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, ptr %89, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !25
  %92 = load i32, ptr %86, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %86, align 4
  tail call fastcc void @local_bh_enable()
  br label %94

94:                                               ; preds = %74, %69, %64, %63
  %95 = phi ptr [ null, %74 ], [ %61, %69 ], [ %61, %64 ], [ %61, %63 ]
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_rtx_syn_ack(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_sock_ops, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = add i8 %11, 1
  store i8 %12, ptr %10, align 2
  br label %13

13:                                               ; preds = %9, %2
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 48
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.inet_hashinfo, ptr %10, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %12
  %18 = getelementptr %struct.spinlock, ptr %14, i32 %17
  tail call void @_raw_spin_lock(ptr noundef %18) #11
  %19 = load ptr, ptr %3, align 4
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  store volatile ptr %23, ptr %19, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.hlist_nulls_node, ptr %23, i32 0, i32 1
  store volatile ptr %19, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %21
  store volatile ptr null, ptr %3, align 4
  br label %30

30:                                               ; preds = %29, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %31 = load i16, ptr %18, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %33

33:                                               ; preds = %30, %2
  %34 = phi i1 [ %20, %30 ], [ false, %2 ]
  %35 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 6, i32 0, i32 1
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 6
  %40 = tail call i32 @del_timer_sync(ptr noundef %39) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @reqsk_put(ptr noundef %1) #11
  br label %43

43:                                               ; preds = %42, %38, %33
  br i1 %34, label %44, label %54

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = icmp ult i8 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !18
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !30
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #11, !srcloc !18
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #11, !srcloc !30
  tail call fastcc void @reqsk_put(ptr noundef %1)
  br label %54

54:                                               ; preds = %51, %43
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_reqsk_queue_drop_and_put(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @reqsk_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_reqsk_queue_hash_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %4, ptr noundef nonnull @reqsk_timer_handler, i32 noundef 1048576, ptr noundef null, ptr noundef null) #11
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, %2
  %7 = tail call i32 @mod_timer(ptr noundef %4, i32 noundef %6) #11
  %8 = tail call zeroext i1 @inet_ehash_insert(ptr noundef %1, ptr noundef null, ptr noundef null) #11
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !31
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  store volatile i32 3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !18
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !32
  %12 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #11, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_clone_lock(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @sk_clone_lock(ptr noundef %0, i32 noundef %2) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  tail call void @inet_sk_set_state(ptr noundef nonnull %4, i32 noundef 3) #11
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 2
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 2
  store i16 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 1
  store i16 %12, ptr %13, align 2
  %14 = load i16, ptr %11, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = getelementptr inbounds %struct.inet_sock, ptr %4, i32 0, i32 6
  store i16 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -8388609
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.inet_sock, ptr %4, i32 0, i32 18
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inet_request_sock, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 34
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 12
  %25 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 12
  %26 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %25, ptr elementtype(i64) %25) #11, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #11, !srcloc !18
  %27 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %24, ptr %24, i64 %26) #11, !srcloc !34
  %28 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 18
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 20
  store i8 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 22
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 26
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(52) %32, i8 0, i32 52, i1 false)
  %33 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %34, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %1, ptr noundef nonnull %4, i32 noundef %2) #11
  br label %41

41:                                               ; preds = %40, %36, %6, %3
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_clone_lock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_destroy_sock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 7
  br i1 %4, label %6, label %5, !prof !14

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 9, ptr noundef null) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !21

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1002, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !14

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1005, i32 noundef 9, ptr noundef null) #11
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.anon.2, ptr %18, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !21

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1008, i32 noundef 9, ptr noundef null) #11
  br label %27

27:                                               ; preds = %26, %22, %17
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.proto, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0) #11
  tail call void @sk_stream_kill_queues(ptr noundef %0) #11
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !14

35:                                               ; preds = %27
  %36 = tail call i32 @xfrm_policy_delete(ptr noundef nonnull %33, i32 noundef 3) #11
  store ptr null, ptr %32, align 8
  br label %37

37:                                               ; preds = %35, %27
  %38 = getelementptr %struct.sock, ptr %0, i32 0, i32 18, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !14

41:                                               ; preds = %37
  %42 = tail call i32 @xfrm_policy_delete(ptr noundef nonnull %39, i32 noundef 4) #11
  store ptr null, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !35
  %45 = load ptr, ptr %28, align 8
  %46 = getelementptr inbounds %struct.proto, ptr %45, i32 0, i32 45
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #10, !srcloc !23
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #11, !srcloc !36
  %56 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #11, !srcloc !18
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #11, !srcloc !19
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %43
  %61 = icmp sgt i32 %58, 0
  br i1 %61, label %64, label %62, !prof !14

62:                                               ; preds = %60
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef 3) #11
  br label %64

63:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef %0) #11
  br label %64

64:                                               ; preds = %63, %62, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stream_kill_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_prepare_forced_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #11, !srcloc !19
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !14

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #11
  br label %13

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef %0) #11
  br label %13

13:                                               ; preds = %12, %11, %9
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !35
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.proto, ptr %19, i32 0, i32 45
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #10, !srcloc !23
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #11, !srcloc !36
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %31 = getelementptr inbounds %struct.anon.2, ptr %30, i32 0, i32 1
  store i16 0, ptr %31, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_csk_listen_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1
  tail call void @reqsk_queue_alloc(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #11
  tail call void @inet_sk_state_store(ptr noundef %0, i32 noundef 10) #11
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = tail call i32 %8(ptr noundef %0, i16 noundef zeroext %11) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i16, ptr %10, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #11, !srcloc !18
  %21 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %20) #11, !srcloc !38
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = inttoptr i32 %22 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  tail call void @dst_release(ptr noundef %23) #11
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.proto, ptr %24, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !14

29:                                               ; preds = %14, %1
  %30 = phi i32 [ -98, %1 ], [ %27, %14 ]
  tail call void @inet_sk_set_state(ptr noundef %0, i32 noundef 7) #11
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i32 [ %30, %29 ], [ 0, %14 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reqsk_queue_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_state_store(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_reqsk_queue_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 10
  br i1 %7, label %9, label %8, !prof !14

8:                                                ; preds = %3
  tail call fastcc void @inet_child_forget(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 8
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store volatile ptr %1, ptr %12, align 4
  br label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.request_sock, ptr %18, i32 0, i32 1
  store ptr %1, ptr %19, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store volatile i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %8
  %26 = phi ptr [ null, %8 ], [ %2, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %27 = load i16, ptr %4, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inet_child_forget(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2, i32 noundef 2048) #11
  %9 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 71
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 17
  store ptr null, ptr %14, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %9) #11
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !35
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 45
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #10, !srcloc !23
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #11, !srcloc !36
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 6
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 3
  %32 = load i8, ptr %31, align 8, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %2, i32 0, i32 116
  %36 = load volatile ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %39, label %38, !prof !14

38:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_connection_sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1080, 0\0A.popsection", ""() #11, !srcloc !40
  unreachable

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %44, label %43, !prof !14

43:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_connection_sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1081, 0\0A.popsection", ""() #11, !srcloc !41
  unreachable

44:                                               ; preds = %39
  store volatile ptr null, ptr %35, align 8
  br label %45

45:                                               ; preds = %44, %30, %3
  tail call void @inet_csk_destroy_sock(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_complete_hashdance(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  br i1 %3, label %5, label %140

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %7, ptr noundef %2)
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %9, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #11, !srcloc !18
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #11, !srcloc !30
  br label %16

16:                                               ; preds = %13, %5
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %9, i32 0, i32 1, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #11, !srcloc !18
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #11, !srcloc !30
  %19 = load ptr, ptr %6, align 8
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %113, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !18
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #11, !srcloc !42
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !21

26:                                               ; preds = %21
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !14

30:                                               ; preds = %26, %21
  %31 = phi i32 [ 2, %21 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #11
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call fastcc ptr @inet_reqsk_clone(ptr noundef %2, ptr noundef %0)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call fastcc void @inet_child_forget(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  br label %140

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 19
  store volatile i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %38) #11
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %40 = load volatile i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 10
  br i1 %41, label %45, label %42, !prof !14

42:                                               ; preds = %36
  tail call fastcc void @inet_child_forget(ptr noundef %0, ptr noundef nonnull %33, ptr noundef %1) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %43 = load i16, ptr %38, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %64

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.request_sock, ptr %33, i32 0, i32 8
  store ptr %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.request_sock, ptr %33, i32 0, i32 1
  store ptr null, ptr %47, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store volatile ptr %33, ptr %48, align 4
  br label %56

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.request_sock, ptr %54, i32 0, i32 1
  store ptr %33, ptr %55, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  store ptr %33, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store volatile i32 %60, ptr %58, align 4
  %61 = icmp eq ptr %1, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %62 = load i16, ptr %38, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br i1 %61, label %64, label %99

64:                                               ; preds = %56, %42
  %65 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %66 = getelementptr [126 x i32], ptr %65, i32 0, i32 125
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #10, !srcloc !23
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.request_sock, ptr %33, i32 0, i32 9
  store ptr null, ptr %75, align 8
  %76 = getelementptr inbounds %struct.inet_request_sock, ptr %33, i32 0, i32 3
  store ptr null, ptr %76, align 8
  %77 = getelementptr inbounds %struct.inet_request_sock, ptr %33, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.request_sock, ptr %33, i32 0, i32 7
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.request_sock_ops, ptr %79, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef nonnull %33) #11
  %82 = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 13
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %64
  %86 = getelementptr inbounds %struct.sock_common, ptr %83, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #11, !srcloc !18
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #11, !srcloc !19
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %94, label %92, !prof !14

92:                                               ; preds = %90
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef 3) #11
  br label %94

93:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %83) #11
  br label %94

94:                                               ; preds = %93, %92, %90, %64
  %95 = load ptr, ptr %75, align 8
  tail call void @kfree(ptr noundef %95) #11
  %96 = load ptr, ptr %78, align 8
  %97 = getelementptr inbounds %struct.request_sock_ops, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  tail call void @kmem_cache_free(ptr noundef %98, ptr noundef nonnull %33) #11
  br label %140

99:                                               ; preds = %56
  %100 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %101 = getelementptr [126 x i32], ptr %100, i32 0, i32 124
  %102 = ptrtoint ptr %101 to i32
  %103 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %104 = inttoptr i32 %103 to ptr
  %105 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %104) #10, !srcloc !23
  %106 = add i32 %105, %102
  %107 = inttoptr i32 %106 to ptr
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 9
  store ptr null, ptr %110, align 8
  %111 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3
  store ptr null, ptr %111, align 8
  %112 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %112, align 4
  tail call fastcc void @reqsk_put(ptr noundef %2)
  br label %152

113:                                              ; preds = %16
  %114 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %114) #11
  %115 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %116 = load volatile i8, ptr %115, align 2
  %117 = icmp eq i8 %116, 10
  br i1 %117, label %121, label %118, !prof !14

118:                                              ; preds = %113
  tail call fastcc void @inet_child_forget(ptr noundef %0, ptr noundef %2, ptr noundef %1) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %119 = load i16, ptr %114, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %140

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 8
  store ptr %1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 1
  store ptr null, ptr %123, align 8
  %124 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 5
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store volatile ptr %2, ptr %124, align 4
  br label %132

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.request_sock, ptr %130, i32 0, i32 1
  store ptr %2, ptr %131, align 8
  br label %132

132:                                              ; preds = %128, %127
  %133 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  store ptr %2, ptr %133, align 4
  %134 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 1
  store volatile i32 %136, ptr %134, align 4
  %137 = icmp eq ptr %1, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %138 = load i16, ptr %114, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br i1 %137, label %140, label %152

140:                                              ; preds = %132, %118, %94, %35, %4
  %141 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %142 = load i16, ptr %141, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %141, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %144 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %144) #11, !srcloc !18
  %145 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %144, ptr %144, i32 1, ptr elementtype(i32) %144) #11, !srcloc !19
  %146 = extractvalue { i32, i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %151, label %148

148:                                              ; preds = %140
  %149 = icmp sgt i32 %146, 0
  br i1 %149, label %152, label %150, !prof !14

150:                                              ; preds = %148
  tail call void @refcount_warn_saturate(ptr noundef %144, i32 noundef 3) #11
  br label %152

151:                                              ; preds = %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef %1) #11
  br label %152

152:                                              ; preds = %151, %150, %148, %132, %99
  %153 = phi ptr [ %1, %99 ], [ %1, %132 ], [ null, %148 ], [ null, %150 ], [ null, %151 ]
  ret ptr %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet_reqsk_clone(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_sock_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 10784) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %11 = getelementptr [126 x i32], ptr %10, i32 0, i32 125
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #10, !srcloc !23
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #11, !srcloc !18
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #11, !srcloc !19
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %57, label %26, !prof !14

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #11
  br label %57

27:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef %1) #11
  br label %57

28:                                               ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(84) %7, ptr noundef align 8 dereferenceable(84) %0, i32 80, i1 false)
  %29 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 20
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 20
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.request_sock_ops, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -104
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %29, ptr align 8 %30, i32 %34, i1 false)
  %35 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 15, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  %37 = load i16, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 16
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 17
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 17
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 18
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  store ptr %1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 6
  br i1 %48, label %49, label %57

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.tcp_request_sock, ptr %7, i32 0, i32 3
  %51 = load i8, ptr %50, align 8, !range !13
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !43
  %54 = getelementptr inbounds %struct.request_sock, ptr %7, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %55, i32 0, i32 116
  store volatile ptr %7, ptr %56, align 8
  br label %57

57:                                               ; preds = %53, %49, %28, %27, %26, %24
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_csk_listen_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %137, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 6
  br label %9

9:                                                ; preds = %133, %6
  %10 = phi ptr [ %4, %6 ], [ %135, %133 ]
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, -1
  store volatile i32 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.request_sock, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store volatile ptr %14, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store ptr null, ptr %8, align 4
  br label %17

17:                                               ; preds = %16, %9
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #11
  %18 = getelementptr inbounds %struct.request_sock, ptr %10, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = add i32 %22, 512
  store volatile i32 %23, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %24 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 4, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !14

28:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1189, i32 noundef 9, ptr noundef null) #11
  br label %29

29:                                               ; preds = %28, %17
  %30 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !18
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #11, !srcloc !42
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !21

34:                                               ; preds = %29
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !14

38:                                               ; preds = %34, %29
  %39 = phi i32 [ 2, %29 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #11
  br label %40

40:                                               ; preds = %38, %34
  %41 = tail call ptr @reuseport_migrate_sock(ptr noundef %0, ptr noundef %19, ptr noundef null) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %122, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @inet_reqsk_clone(ptr noundef nonnull %10, ptr noundef nonnull %41)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %122, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sock_common, ptr %44, i32 0, i32 19
  store volatile i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inet_connection_sock, ptr %41, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %48) #11
  %49 = getelementptr inbounds %struct.sock_common, ptr %41, i32 0, i32 4
  %50 = load volatile i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 10
  br i1 %51, label %53, label %52, !prof !14

52:                                               ; preds = %46
  tail call fastcc void @inet_child_forget(ptr noundef nonnull %41, ptr noundef nonnull %44, ptr noundef %19) #11
  br label %69

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.request_sock, ptr %44, i32 0, i32 8
  store ptr %19, ptr %54, align 4
  %55 = getelementptr inbounds %struct.request_sock, ptr %44, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = getelementptr inbounds %struct.inet_connection_sock, ptr %41, i32 0, i32 1, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store volatile ptr %44, ptr %56, align 4
  br label %64

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.inet_connection_sock, ptr %41, i32 0, i32 1, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.request_sock, ptr %62, i32 0, i32 1
  store ptr %44, ptr %63, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = getelementptr inbounds %struct.inet_connection_sock, ptr %41, i32 0, i32 1, i32 6
  store ptr %44, ptr %65, align 4
  %66 = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 53
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store volatile i32 %68, ptr %66, align 4
  br label %69

69:                                               ; preds = %64, %52
  %70 = phi ptr [ null, %52 ], [ %19, %64 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %71 = load i16, ptr %48, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %73 = icmp eq ptr %70, null
  %74 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  br i1 %73, label %88, label %75

75:                                               ; preds = %69
  %76 = getelementptr [126 x i32], ptr %74, i32 0, i32 124
  %77 = ptrtoint ptr %76 to i32
  %78 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %79 = inttoptr i32 %78 to ptr
  %80 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %79) #10, !srcloc !23
  %81 = add i32 %80, %77
  %82 = inttoptr i32 %81 to ptr
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.request_sock, ptr %10, i32 0, i32 9
  store ptr null, ptr %85, align 8
  %86 = getelementptr inbounds %struct.inet_request_sock, ptr %10, i32 0, i32 3
  store ptr null, ptr %86, align 8
  %87 = getelementptr inbounds %struct.inet_request_sock, ptr %10, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %87, align 4
  br label %123

88:                                               ; preds = %69
  %89 = getelementptr [126 x i32], ptr %74, i32 0, i32 125
  %90 = ptrtoint ptr %89 to i32
  %91 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %92 = inttoptr i32 %91 to ptr
  %93 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %92) #10, !srcloc !23
  %94 = add i32 %93, %90
  %95 = inttoptr i32 %94 to ptr
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.request_sock, ptr %44, i32 0, i32 9
  store ptr null, ptr %98, align 8
  %99 = getelementptr inbounds %struct.inet_request_sock, ptr %44, i32 0, i32 3
  store ptr null, ptr %99, align 8
  %100 = getelementptr inbounds %struct.inet_request_sock, ptr %44, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %100, align 4
  %101 = getelementptr inbounds %struct.request_sock, ptr %44, i32 0, i32 7
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.request_sock_ops, ptr %102, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  tail call void %104(ptr noundef nonnull %44) #11
  %105 = getelementptr inbounds %struct.sock_common, ptr %44, i32 0, i32 13
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %88
  %109 = getelementptr inbounds %struct.sock_common, ptr %106, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #11, !srcloc !18
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #11, !srcloc !19
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %117, label %115, !prof !14

115:                                              ; preds = %113
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #11
  br label %117

116:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %106) #11
  br label %117

117:                                              ; preds = %116, %115, %113, %88
  %118 = load ptr, ptr %98, align 8
  tail call void @kfree(ptr noundef %118) #11
  %119 = load ptr, ptr %101, align 8
  %120 = getelementptr inbounds %struct.request_sock_ops, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  tail call void @kmem_cache_free(ptr noundef %121, ptr noundef nonnull %44) #11
  br label %123

122:                                              ; preds = %43, %40
  tail call fastcc void @inet_child_forget(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %19)
  br label %123

123:                                              ; preds = %122, %117, %75
  tail call fastcc void @reqsk_put(ptr noundef nonnull %10)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %124 = load i16, ptr %24, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  tail call fastcc void @local_bh_enable()
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !18
  %126 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #11, !srcloc !19
  %127 = extractvalue { i32, i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = icmp sgt i32 %127, 0
  br i1 %130, label %133, label %131, !prof !14

131:                                              ; preds = %129
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 3) #11
  br label %133

132:                                              ; preds = %123
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef %19) #11
  br label %133

133:                                              ; preds = %132, %131, %129
  %134 = tail call i32 @__cond_resched() #11
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #11
  %135 = load ptr, ptr %3, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %9

137:                                              ; preds = %133, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #11
  %138 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %142) #11
  %143 = load ptr, ptr %138, align 4
  store ptr null, ptr %138, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %142) #11
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %145, %141
  %146 = phi ptr [ %148, %145 ], [ %143, %141 ]
  %147 = getelementptr inbounds %struct.request_sock, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 8
  tail call fastcc void @reqsk_put(ptr noundef nonnull %146)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %145

150:                                              ; preds = %145, %141, %137
  %151 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %152 = load i32, ptr %151, align 4
  %153 = icmp ne i32 %152, 0
  %154 = load i1, ptr @inet_csk_listen_stop.__already_done, align 1
  %155 = xor i1 %154, true
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %158, !prof !21

157:                                              ; preds = %150
  store i1 true, ptr @inet_csk_listen_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1237, i32 noundef 9, ptr noundef null) #11
  br label %158

158:                                              ; preds = %157, %150
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_migrate_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @inet_csk_addr2sockaddr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  store i16 2, ptr %1, align 4
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  store i16 %6, ptr %7, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_csk_update_pmtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @__sk_dst_check(ptr noundef %0, i32 noundef 0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %7 = tail call fastcc ptr @inet_csk_rebuild_route(ptr noundef %0, ptr noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %3, %2 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.dst_entry, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dst_ops, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef nonnull %10, ptr noundef %0, ptr noundef null, i32 noundef %1, i1 noundef zeroext true) #11
  %15 = tail call ptr @__sk_dst_check(ptr noundef %0, i32 noundef 0) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %19 = tail call fastcc ptr @inet_csk_rebuild_route(ptr noundef %0, ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %9, %5
  %21 = phi ptr [ %15, %9 ], [ %19, %17 ], [ null, %5 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @inet_csk_rebuild_route(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = phi i32 [ %13, %11 ], [ %3, %7 ], [ %3, %2 ]
  %16 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %21 = load i16, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %23 = load i16, ptr %22, align 4
  %24 = trunc i16 %23 to i8
  %25 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 30
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %29 = load volatile i32, ptr %28, align 4
  %30 = lshr i32 %29, 13
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = or i8 %32, %27
  %34 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq ptr %0, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 40
  %43 = icmp ne i16 %42, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %46 = load i32, ptr %45, align 4
  store i32 %35, ptr %1, align 8
  %47 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  store i8 %44, ptr %47, align 1
  %48 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 7
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 9
  store i64 0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 8
  store i32 %46, ptr %50, align 4
  br label %53

51:                                               ; preds = %14
  store i32 %35, ptr %1, align 8
  %52 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %52, i8 0, i64 17, i1 false) #11
  br label %53

53:                                               ; preds = %51, %37
  %54 = phi i32 [ 0, %51 ], [ %39, %37 ]
  %55 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 1
  store i32 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  store i32 %54, ptr %56, align 8
  %57 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 3
  store i8 %33, ptr %57, align 4
  %58 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 4
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 %24, ptr %59, align 2
  %60 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  store i32 %15, ptr %60, align 4
  %61 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  store i32 %17, ptr %61, align 8
  %62 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  store i16 %19, ptr %62, align 8
  %63 = getelementptr inbounds %struct.anon.121, ptr %62, i32 0, i32 1
  store i16 %21, ptr %63, align 2
  %64 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 10
  store i32 0, ptr %64, align 8
  %65 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef %0) #11
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  %67 = select i1 %66, ptr null, ptr %65
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %53
  tail call void @sk_setup_caps(ptr noundef %0, ptr noundef nonnull %67) #11
  br label %70

70:                                               ; preds = %69, %53
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @reqsk_timer_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -124
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  %7 = icmp eq i8 %6, 10
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @reuseport_migrate_sock(ptr noundef %4, ptr noundef %2, ptr noundef null) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %201, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @inet_reqsk_clone(ptr noundef %2, ptr noundef nonnull %9)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %201, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 19
  store volatile i32 3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.request_sock, ptr %12, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %16, ptr noundef nonnull @reqsk_timer_handler, i32 noundef 1048576, ptr noundef null, ptr noundef null) #11
  %17 = getelementptr i8, ptr %0, i32 -5
  %18 = load i8, ptr %17, align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %9, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #11, !srcloc !32
  br label %23

23:                                               ; preds = %20, %14
  %24 = getelementptr inbounds %struct.inet_connection_sock, ptr %9, i32 0, i32 1, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #11, !srcloc !18
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #11, !srcloc !32
  br label %26

26:                                               ; preds = %23, %1
  %27 = phi ptr [ %9, %23 ], [ %4, %1 ]
  %28 = phi ptr [ %12, %23 ], [ null, %1 ]
  %29 = phi ptr [ %12, %23 ], [ %2, %1 ]
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 21
  %31 = load i8, ptr %30, align 8
  %32 = icmp eq i8 %31, 0
  %33 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 54), align 2
  %34 = select i1 %32, i8 %33, i8 %31
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 1, i32 3
  %37 = load volatile i32, ptr %36, align 4
  %38 = shl i32 %37, 1
  %39 = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 54
  %40 = load volatile i32, ptr %39, align 8
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 8)
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 1, i32 4
  %45 = load volatile i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ %45, %43 ], [ %49, %46 ]
  %48 = phi i32 [ %35, %43 ], [ %53, %46 ]
  %49 = shl i32 %47, 1
  %50 = icmp ult i32 %48, 3
  %51 = icmp slt i32 %37, %49
  %52 = select i1 %50, i1 true, i1 %51
  %53 = add nsw i32 %48, -1
  br i1 %52, label %54, label %46

54:                                               ; preds = %46, %26
  %55 = phi i32 [ %35, %26 ], [ %48, %46 ]
  %56 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 1, i32 1
  %57 = load volatile i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.request_sock, ptr %29, i32 0, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = lshr i8 %60, 1
  %62 = zext i8 %61 to i32
  br i1 %58, label %63, label %66

63:                                               ; preds = %54
  %64 = icmp ule i32 %55, %62
  %65 = zext i1 %64 to i32
  br label %83

66:                                               ; preds = %54
  %67 = icmp ugt i32 %55, %62
  %68 = getelementptr inbounds %struct.inet_request_sock, ptr %29, i32 0, i32 1
  %69 = load i16, ptr %68, align 8
  %70 = and i16 %69, 4096
  %71 = icmp eq i16 %70, 0
  br i1 %67, label %76, label %72

72:                                               ; preds = %66
  br i1 %71, label %83, label %73

73:                                               ; preds = %72
  %74 = icmp uge i8 %61, %57
  %75 = zext i1 %74 to i32
  br label %77

76:                                               ; preds = %66
  br i1 %71, label %83, label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  %79 = zext i8 %57 to i32
  %80 = add nsw i32 %79, -1
  %81 = icmp ule i32 %80, %62
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %77, %76, %72, %63
  %84 = phi i32 [ %65, %63 ], [ 0, %76 ], [ %78, %77 ], [ 1, %72 ]
  %85 = phi i32 [ 1, %63 ], [ 1, %76 ], [ %82, %77 ], [ 1, %72 ]
  %86 = getelementptr inbounds %struct.request_sock, ptr %29, i32 0, i32 7
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.request_sock_ops, ptr %87, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %29) #11
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %91, label %155

91:                                               ; preds = %83
  %92 = icmp eq i32 %85, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %86, align 8
  %95 = getelementptr inbounds %struct.request_sock_ops, ptr %94, i32 0, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 %96(ptr noundef %27, ptr noundef %29) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.request_sock, ptr %29, i32 0, i32 3
  %101 = load i8, ptr %100, align 2
  %102 = add i8 %101, 1
  store i8 %102, ptr %100, align 2
  br label %108

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.inet_request_sock, ptr %29, i32 0, i32 1
  %105 = load i16, ptr %104, align 8
  %106 = and i16 %105, 4096
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %155, label %108

108:                                              ; preds = %103, %99, %91
  %109 = load i8, ptr %59, align 1
  %110 = add i8 %109, 2
  store i8 %110, ptr %59, align 1
  %111 = icmp ult i8 %109, 2
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #11, !srcloc !18
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #11, !srcloc !30
  %115 = load i8, ptr %59, align 1
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i8 [ %115, %112 ], [ %110, %108 ]
  %118 = lshr i8 %117, 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 100, %119
  %121 = tail call i32 @llvm.umin.i32(i32 %120, i32 12000)
  %122 = getelementptr inbounds %struct.request_sock, ptr %29, i32 0, i32 6
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = add i32 %121, %123
  %125 = tail call i32 @mod_timer(ptr noundef %122, i32 noundef %124) #11
  %126 = icmp eq ptr %28, null
  br i1 %126, label %204, label %127

127:                                              ; preds = %116
  %128 = tail call zeroext i1 @inet_ehash_insert(ptr noundef nonnull %28, ptr noundef %2, ptr noundef null) #11
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %27, ptr noundef nonnull %28)
  br label %168

131:                                              ; preds = %127
  %132 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %133 = getelementptr [126 x i32], ptr %132, i32 0, i32 124
  %134 = ptrtoint ptr %133 to i32
  %135 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %136 = inttoptr i32 %135 to ptr
  %137 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #10, !srcloc !23
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  %142 = getelementptr i8, ptr %0, i32 28
  store ptr null, ptr %142, align 8
  %143 = getelementptr i8, ptr %0, i32 52
  store ptr null, ptr %143, align 8
  %144 = getelementptr i8, ptr %0, i32 56
  store ptr null, ptr %144, align 4
  %145 = load ptr, ptr %3, align 8
  %146 = getelementptr i8, ptr %0, i32 -5
  %147 = load i8, ptr %146, align 1
  %148 = icmp ult i8 %147, 2
  br i1 %148, label %149, label %152

149:                                              ; preds = %131
  %150 = getelementptr inbounds %struct.inet_connection_sock, ptr %145, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #11, !srcloc !18
  %151 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %150, ptr %150, i32 1, ptr elementtype(i32) %150) #11, !srcloc !30
  br label %152

152:                                              ; preds = %149, %131
  %153 = getelementptr inbounds %struct.inet_connection_sock, ptr %145, i32 0, i32 1, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #11, !srcloc !18
  %154 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #11, !srcloc !30
  tail call fastcc void @reqsk_put(ptr noundef %2)
  tail call fastcc void @reqsk_put(ptr noundef nonnull %28)
  br label %204

155:                                              ; preds = %103, %83
  %156 = icmp eq ptr %28, null
  br i1 %156, label %201, label %157

157:                                              ; preds = %155
  %158 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %159 = getelementptr [126 x i32], ptr %158, i32 0, i32 125
  %160 = ptrtoint ptr %159 to i32
  %161 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %162 = inttoptr i32 %161 to ptr
  %163 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %162) #10, !srcloc !23
  %164 = add i32 %163, %160
  %165 = inttoptr i32 %164 to ptr
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  br label %168

168:                                              ; preds = %157, %129
  %169 = getelementptr inbounds %struct.request_sock, ptr %28, i32 0, i32 9
  store ptr null, ptr %169, align 8
  %170 = getelementptr inbounds %struct.inet_request_sock, ptr %28, i32 0, i32 3
  store ptr null, ptr %170, align 8
  %171 = getelementptr inbounds %struct.inet_request_sock, ptr %28, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %171, align 4
  %172 = getelementptr inbounds %struct.request_sock, ptr %28, i32 0, i32 4
  %173 = load i8, ptr %172, align 1
  %174 = icmp ult i8 %173, 2
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 1, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %176) #11, !srcloc !18
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %176, ptr %176, i32 1, ptr elementtype(i32) %176) #11, !srcloc !30
  br label %178

178:                                              ; preds = %175, %168
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #11, !srcloc !18
  %179 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #11, !srcloc !30
  %180 = getelementptr inbounds %struct.request_sock, ptr %28, i32 0, i32 7
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.request_sock_ops, ptr %181, i32 0, i32 7
  %183 = load ptr, ptr %182, align 4
  tail call void %183(ptr noundef nonnull %28) #11
  %184 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 13
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %196, label %187

187:                                              ; preds = %178
  %188 = getelementptr inbounds %struct.sock_common, ptr %185, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %188) #11, !srcloc !18
  %189 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %188, ptr %188, i32 1, ptr elementtype(i32) %188) #11, !srcloc !19
  %190 = extractvalue { i32, i32, i32 } %189, 0
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = icmp sgt i32 %190, 0
  br i1 %193, label %196, label %194, !prof !14

194:                                              ; preds = %192
  tail call void @refcount_warn_saturate(ptr noundef %188, i32 noundef 3) #11
  br label %196

195:                                              ; preds = %187
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %185) #11
  br label %196

196:                                              ; preds = %195, %194, %192, %178
  %197 = load ptr, ptr %169, align 8
  tail call void @kfree(ptr noundef %197) #11
  %198 = load ptr, ptr %180, align 8
  %199 = getelementptr inbounds %struct.request_sock_ops, ptr %198, i32 0, i32 2
  %200 = load ptr, ptr %199, align 4
  tail call void @kmem_cache_free(ptr noundef %200, ptr noundef nonnull %28) #11
  br label %201

201:                                              ; preds = %196, %155, %11, %8
  %202 = load ptr, ptr %3, align 8
  %203 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %202, ptr noundef %2) #11
  tail call fastcc void @reqsk_put(ptr noundef %2) #11
  br label %204

204:                                              ; preds = %201, %152, %116
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_ehash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_delete(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }

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
!9 = !{i64 2149429744}
!10 = !{i64 2149429586}
!11 = !{i64 2149429888}
!12 = !{i64 2149416321}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149079100}
!16 = !{i64 2149079317}
!17 = !{i64 2148179286}
!18 = !{i64 576220, i64 2148066191, i64 2148066217, i64 2148066264, i64 2148066286, i64 2148066314, i64 2148066334}
!19 = !{i64 2148081421, i64 2148081453, i64 2148081482, i64 2148081516, i64 2148081547, i64 2148081570}
!20 = !{i64 2149028733}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2148892870}
!23 = !{i64 500598}
!24 = !{i64 2149416620}
!25 = !{i64 2149416921}
!26 = !{i64 2148960745}
!27 = !{i64 2148956569}
!28 = !{i64 2148956644, i64 2148956671, i64 2148956718, i64 2148956740, i64 2148956768, i64 2148956788}
!29 = !{i64 2148983748}
!30 = !{i64 2148079963, i64 2148079989, i64 2148080018, i64 2148080052, i64 2148080083, i64 2148080106}
!31 = !{i64 2157390182}
!32 = !{i64 2148077606, i64 2148077632, i64 2148077661, i64 2148077695, i64 2148077726, i64 2148077749}
!33 = !{i64 565834, i64 565855}
!34 = !{i64 566079, i64 566099, i64 566127, i64 566157, i64 566173}
!35 = !{i64 481898, i64 481959}
!36 = !{i64 484915}
!37 = !{i64 2155307252}
!38 = !{i64 584870, i64 584887, i64 584911, i64 584937, i64 584955}
!39 = !{i64 2155307571}
!40 = !{i64 2157430763, i64 2157431260, i64 2157430800, i64 2157430856, i64 2157430890, i64 2157430914, i64 2157430955, i64 2157430976, i64 2157431004, i64 2157431038}
!41 = !{i64 2157431894, i64 2157432391, i64 2157431931, i64 2157431987, i64 2157432021, i64 2157432045, i64 2157432086, i64 2157432107, i64 2157432135, i64 2157432169}
!42 = !{i64 2148079064, i64 2148079096, i64 2148079125, i64 2148079159, i64 2148079190, i64 2148079213}
!43 = !{i64 2157341403}
!44 = !{i64 2155408071}
