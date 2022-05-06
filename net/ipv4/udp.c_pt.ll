; ModuleID = '/llk/IR/net/ipv4/udp.c_pt.bc'
source_filename = "../net/ipv4/udp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_table:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_table\22\09\09\09\09\09"
module asm "__kstrtabns_udp_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_udp_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_udp_mem\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_udp_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_memory_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_memory_allocated\22\09\09\09\09\09"
module asm "__kstrtabns_udp_memory_allocated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_lib_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_lib_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_udp_lib_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp4_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp4_lib_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___udp4_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_encap_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_encap_enable\22\09\09\09\09\09"
module asm "__kstrtabns_udp_encap_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_encap_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_encap_disable\22\09\09\09\09\09"
module asm "__kstrtabns_udp_encap_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_flush_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_flush_pending_frames\22\09\09\09\09\09"
module asm "__kstrtabns_udp_flush_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp4_hwcsum:\09\09\09\09\09"
module asm "\09.asciz \09\22udp4_hwcsum\22\09\09\09\09\09"
module asm "__kstrtabns_udp4_hwcsum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_set_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_set_csum\22\09\09\09\09\09"
module asm "__kstrtabns_udp_set_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_push_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_push_pending_frames\22\09\09\09\09\09"
module asm "__kstrtabns_udp_push_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_cmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_cmsg_send\22\09\09\09\09\09"
module asm "__kstrtabns_udp_cmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_udp_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_skb_destructor:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_skb_destructor\22\09\09\09\09\09"
module asm "__kstrtabns_udp_skb_destructor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp_enqueue_schedule_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp_enqueue_schedule_skb\22\09\09\09\09\09"
module asm "__kstrtabns___udp_enqueue_schedule_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_destruct_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_destruct_sock\22\09\09\09\09\09"
module asm "__kstrtabns_udp_destruct_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_init_sock\22\09\09\09\09\09"
module asm "__kstrtabns_udp_init_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_consume_udp:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_consume_udp\22\09\09\09\09\09"
module asm "__kstrtabns_skb_consume_udp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_udp_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_recv_udp:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_recv_udp\22\09\09\09\09\09"
module asm "__kstrtabns___skb_recv_udp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_read_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_read_sock\22\09\09\09\09\09"
module asm "__kstrtabns_udp_read_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_pre_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_pre_connect\22\09\09\09\09\09"
module asm "__kstrtabns_udp_pre_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns___udp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_udp_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_lib_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_lib_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_udp_lib_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_lib_rehash:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_lib_rehash\22\09\09\09\09\09"
module asm "__kstrtabns_udp_lib_rehash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_sk_rx_dst_set:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_sk_rx_dst_set\22\09\09\09\09\09"
module asm "__kstrtabns_udp_sk_rx_dst_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_lib_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_lib_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_udp_lib_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_lib_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_lib_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_udp_lib_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_poll\22\09\09\09\09\09"
module asm "__kstrtabns_udp_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_abort\22\09\09\09\09\09"
module asm "__kstrtabns_udp_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_prot\22\09\09\09\09\09"
module asm "__kstrtabns_udp_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_seq_start\22\09\09\09\09\09"
module asm "__kstrtabns_udp_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_seq_next\22\09\09\09\09\09"
module asm "__kstrtabns_udp_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_seq_stop\22\09\09\09\09\09"
module asm "__kstrtabns_udp_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_seq_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_seq_ops\22\09\09\09\09\09"
module asm "__kstrtabns_udp_seq_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_flow_hashrnd:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_flow_hashrnd\22\09\09\09\09\09"
module asm "__kstrtabns_udp_flow_hashrnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.icmp_err = type { i32, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.178, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.178 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.udp_seq_afinfo = type { i16, ptr }
%struct.sock_common = type { %union.anon.1, %union.anon.2, %union.anon.3, i16, i8, i8, i32, %union.anon.5, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.179, [0 x i32], %union.anon.180, i16, i16, %union.anon.181, %struct.refcount_struct, [0 x i32], %union.anon.182 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { %struct.hlist_node }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%struct.udp_hslot = type { %struct.hlist_head, i32, %struct.spinlock, [4 x i8] }
%struct.anon.4 = type { i16, i16 }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.183, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.184, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.185, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.183 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.184 = type { ptr }
%union.anon.185 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.anon = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.199, %struct.anon.200, ptr, i32, i8 }
%struct.anon.199 = type { i32, i32 }
%struct.anon.200 = type { ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.143 }
%union.anon.143 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.anon.105, [0 x %struct.sock_filter] }
%struct.anon.105 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.127, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.127 = type { %struct.in6_addr }
%struct.icmphdr = type { i8, i8, i16, %union.anon.194 }
%union.anon.194 = type { i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.136 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [20 x i8], %struct.sk_buff_head, i32, [44 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ip_tunnel_encap_ops = type { ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.52 = type { i16, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.177, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.6, %union.anon.175 }
%union.anon.6 = type { ptr }
%union.anon.175 = type { i64 }
%union.anon.177 = type { ptr }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.123 = type { i16, i16 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.read_descriptor_t = type { i32, i32, %union.anon.186, i32 }
%union.anon.186 = type { ptr }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.udp_iter_state = type { %struct.seq_net_private, i32, ptr }
%struct.seq_net_private = type {}
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.187, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.188, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.189, ptr, %struct.address_space, %struct.list_head, %union.anon.190, i32, i32, ptr, ptr }
%union.anon.187 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.188 = type { %struct.callback_head }
%union.anon.189 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.190 = type { ptr }

@udp_table = dso_local global %struct.udp_table zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_udp_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_table = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_table to i32), ptr @__kstrtab_udp_table, ptr @__kstrtabns_udp_table }, section "___ksymtab+udp_table", align 4
@sysctl_udp_mem = dso_local global [3 x i32] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_sysctl_udp_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_udp_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_udp_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_udp_mem to i32), ptr @__kstrtab_sysctl_udp_mem, ptr @__kstrtabns_sysctl_udp_mem }, section "___ksymtab+sysctl_udp_mem", align 4
@udp_memory_allocated = dso_local global %struct.atomic_t zeroinitializer, align 64
@__kstrtab_udp_memory_allocated = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_memory_allocated = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_memory_allocated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_memory_allocated to i32), ptr @__kstrtab_udp_memory_allocated, ptr @__kstrtabns_udp_memory_allocated }, section "___ksymtab+udp_memory_allocated", align 4
@__kstrtab_udp_lib_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_lib_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_lib_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_lib_get_port to i32), ptr @__kstrtab_udp_lib_get_port, ptr @__kstrtabns_udp_lib_get_port }, section "___ksymtab+udp_lib_get_port", align 4
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@__kstrtab___udp4_lib_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp4_lib_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___udp4_lib_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp4_lib_lookup to i32), ptr @__kstrtab___udp4_lib_lookup, ptr @__kstrtabns___udp4_lib_lookup }, section "___ksymtab_gpl+__udp4_lib_lookup", align 4
@udp_encap_needed_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_udp_encap_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_encap_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_encap_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_encap_enable to i32), ptr @__kstrtab_udp_encap_enable, ptr @__kstrtabns_udp_encap_enable }, section "___ksymtab+udp_encap_enable", align 4
@__kstrtab_udp_encap_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_encap_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_encap_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_encap_disable to i32), ptr @__kstrtab_udp_encap_disable, ptr @__kstrtabns_udp_encap_disable }, section "___ksymtab+udp_encap_disable", align 4
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@__kstrtab_udp_flush_pending_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_flush_pending_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_flush_pending_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_flush_pending_frames to i32), ptr @__kstrtab_udp_flush_pending_frames, ptr @__kstrtabns_udp_flush_pending_frames }, section "___ksymtab+udp_flush_pending_frames", align 4
@__kstrtab_udp4_hwcsum = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp4_hwcsum = external dso_local constant [0 x i8], align 1
@__ksymtab_udp4_hwcsum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp4_hwcsum to i32), ptr @__kstrtab_udp4_hwcsum, ptr @__kstrtabns_udp4_hwcsum }, section "___ksymtab_gpl+udp4_hwcsum", align 4
@__kstrtab_udp_set_csum = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_set_csum = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_set_csum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_set_csum to i32), ptr @__kstrtab_udp_set_csum, ptr @__kstrtabns_udp_set_csum }, section "___ksymtab+udp_set_csum", align 4
@__kstrtab_udp_push_pending_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_push_pending_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_push_pending_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_push_pending_frames to i32), ptr @__kstrtab_udp_push_pending_frames, ptr @__kstrtabns_udp_push_pending_frames }, section "___ksymtab+udp_push_pending_frames", align 4
@__kstrtab_udp_cmsg_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_cmsg_send = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_cmsg_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_cmsg_send to i32), ptr @__kstrtab_udp_cmsg_send, ptr @__kstrtabns_udp_cmsg_send }, section "___ksymtab_gpl+udp_cmsg_send", align 4
@__kstrtab_udp_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_sendmsg to i32), ptr @__kstrtab_udp_sendmsg, ptr @__kstrtabns_udp_sendmsg }, section "___ksymtab+udp_sendmsg", align 4
@__kstrtab_udp_skb_destructor = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_skb_destructor = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_skb_destructor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_skb_destructor to i32), ptr @__kstrtab_udp_skb_destructor, ptr @__kstrtabns_udp_skb_destructor }, section "___ksymtab+udp_skb_destructor", align 4
@__kstrtab___udp_enqueue_schedule_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp_enqueue_schedule_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___udp_enqueue_schedule_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp_enqueue_schedule_skb to i32), ptr @__kstrtab___udp_enqueue_schedule_skb, ptr @__kstrtabns___udp_enqueue_schedule_skb }, section "___ksymtab_gpl+__udp_enqueue_schedule_skb", align 4
@__kstrtab_udp_destruct_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_destruct_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_destruct_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_destruct_sock to i32), ptr @__kstrtab_udp_destruct_sock, ptr @__kstrtabns_udp_destruct_sock }, section "___ksymtab_gpl+udp_destruct_sock", align 4
@__kstrtab_udp_init_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_init_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_init_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_init_sock to i32), ptr @__kstrtab_udp_init_sock, ptr @__kstrtabns_udp_init_sock }, section "___ksymtab_gpl+udp_init_sock", align 4
@__kstrtab_skb_consume_udp = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_consume_udp = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_consume_udp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_consume_udp to i32), ptr @__kstrtab_skb_consume_udp, ptr @__kstrtabns_skb_consume_udp }, section "___ksymtab_gpl+skb_consume_udp", align 4
@__kstrtab_udp_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_ioctl to i32), ptr @__kstrtab_udp_ioctl, ptr @__kstrtabns_udp_ioctl }, section "___ksymtab+udp_ioctl", align 4
@__kstrtab___skb_recv_udp = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_recv_udp = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_recv_udp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_recv_udp to i32), ptr @__kstrtab___skb_recv_udp, ptr @__kstrtabns___skb_recv_udp }, section "___ksymtab+__skb_recv_udp", align 4
@__kstrtab_udp_read_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_read_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_read_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_read_sock to i32), ptr @__kstrtab_udp_read_sock, ptr @__kstrtabns_udp_read_sock }, section "___ksymtab+udp_read_sock", align 4
@__kstrtab_udp_pre_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_pre_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_pre_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_pre_connect to i32), ptr @__kstrtab_udp_pre_connect, ptr @__kstrtabns_udp_pre_connect }, section "___ksymtab+udp_pre_connect", align 4
@__kstrtab___udp_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab___udp_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp_disconnect to i32), ptr @__kstrtab___udp_disconnect, ptr @__kstrtabns___udp_disconnect }, section "___ksymtab+__udp_disconnect", align 4
@__kstrtab_udp_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_disconnect to i32), ptr @__kstrtab_udp_disconnect, ptr @__kstrtabns_udp_disconnect }, section "___ksymtab+udp_disconnect", align 4
@__kstrtab_udp_lib_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_lib_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_lib_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_lib_unhash to i32), ptr @__kstrtab_udp_lib_unhash, ptr @__kstrtabns_udp_lib_unhash }, section "___ksymtab+udp_lib_unhash", align 4
@__kstrtab_udp_lib_rehash = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_lib_rehash = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_lib_rehash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_lib_rehash to i32), ptr @__kstrtab_udp_lib_rehash, ptr @__kstrtabns_udp_lib_rehash }, section "___ksymtab+udp_lib_rehash", align 4
@__kstrtab_udp_sk_rx_dst_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_sk_rx_dst_set = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_sk_rx_dst_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_sk_rx_dst_set to i32), ptr @__kstrtab_udp_sk_rx_dst_set, ptr @__kstrtabns_udp_sk_rx_dst_set }, section "___ksymtab+udp_sk_rx_dst_set", align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@__kstrtab_udp_lib_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_lib_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_lib_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_lib_setsockopt to i32), ptr @__kstrtab_udp_lib_setsockopt, ptr @__kstrtabns_udp_lib_setsockopt }, section "___ksymtab+udp_lib_setsockopt", align 4
@__kstrtab_udp_lib_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_lib_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_lib_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_lib_getsockopt to i32), ptr @__kstrtab_udp_lib_getsockopt, ptr @__kstrtabns_udp_lib_getsockopt }, section "___ksymtab+udp_lib_getsockopt", align 4
@__kstrtab_udp_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_poll to i32), ptr @__kstrtab_udp_poll, ptr @__kstrtabns_udp_poll }, section "___ksymtab+udp_poll", align 4
@__kstrtab_udp_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_abort to i32), ptr @__kstrtab_udp_abort, ptr @__kstrtabns_udp_abort }, section "___ksymtab_gpl+udp_abort", align 4
@udp_prot = dso_local global %struct.proto { ptr @udp_lib_close, ptr @udp_pre_connect, ptr @ip4_datagram_connect, ptr @udp_disconnect, ptr null, ptr @udp_ioctl, ptr @udp_init_sock, ptr @udp_destroy_sock, ptr null, ptr @udp_setsockopt, ptr @udp_getsockopt, ptr null, ptr @udp_sendmsg, ptr @udp_recvmsg, ptr @udp_sendpage, ptr null, ptr null, ptr null, ptr null, ptr @ip4_datagram_release_cb, ptr @udp_lib_hash, ptr @udp_lib_unhash, ptr @udp_v4_rehash, ptr @udp_v4_get_port, ptr @udp_lib_unhash, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @udp_memory_allocated, ptr null, ptr null, ptr @sysctl_udp_mem, ptr null, ptr null, i32 768, i32 772, i32 0, i8 0, ptr null, i32 832, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.178 { ptr @udp_table }, ptr null, [32 x i8] c"UDP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @udp_abort }, align 4
@__kstrtab_udp_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_prot to i32), ptr @__kstrtab_udp_prot, ptr @__kstrtabns_udp_prot }, section "___ksymtab+udp_prot", align 4
@__kstrtab_udp_seq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_seq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_seq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_seq_start to i32), ptr @__kstrtab_udp_seq_start, ptr @__kstrtabns_udp_seq_start }, section "___ksymtab+udp_seq_start", align 4
@__kstrtab_udp_seq_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_seq_next = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_seq_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_seq_next to i32), ptr @__kstrtab_udp_seq_next, ptr @__kstrtabns_udp_seq_next }, section "___ksymtab+udp_seq_next", align 4
@__kstrtab_udp_seq_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_seq_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_seq_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_seq_stop to i32), ptr @__kstrtab_udp_seq_stop, ptr @__kstrtabns_udp_seq_stop }, section "___ksymtab+udp_seq_stop", align 4
@.str.2 = private unnamed_addr constant [116 x i8] c"   sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\00", align 1
@udp_seq_ops = dso_local constant %struct.seq_operations { ptr @udp_seq_start, ptr @udp_seq_stop, ptr @udp_seq_next, ptr @udp4_seq_show }, align 4
@__kstrtab_udp_seq_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_seq_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_seq_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_seq_ops to i32), ptr @__kstrtab_udp_seq_ops, ptr @__kstrtabns_udp_seq_ops }, section "___ksymtab+udp_seq_ops", align 4
@udp4_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @udp4_proc_init_net, ptr null, ptr @udp4_proc_exit_net, ptr null, ptr null, i32 0 }, align 4
@__setup_str_set_uhash_entries = internal constant [15 x i8] c"uhash_entries=\00", section ".init.rodata", align 1
@__setup_set_uhash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_uhash_entries, ptr @set_uhash_entries, i32 0 }, section ".init.setup", align 4
@uhash_entries = internal global i32 0, section ".init.data", align 4
@udp_flow_hashrnd.hashrnd = internal global i32 0, section ".data..read_mostly", align 4
@udp_flow_hashrnd.___done = internal global i8 0, section ".data.once", align 1
@udp_flow_hashrnd.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@__kstrtab_udp_flow_hashrnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_flow_hashrnd = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_flow_hashrnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_flow_hashrnd to i32), ptr @__kstrtab_udp_flow_hashrnd, ptr @__kstrtabns_udp_flow_hashrnd }, section "___ksymtab+udp_flow_hashrnd", align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@init_net = external dso_local global %struct.net, align 64
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@udp_busylocks_log = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@udp_busylocks = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"UDP: failed to alloc udp_busylocks\0A\00", align 1
@udp_sysctl_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @udp_sysctl_init, ptr null, ptr null, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"UDP: failed to init sysctl parameters.\0A\00", align 1
@udp_ehashfn.udp_ehash_secret = internal global i32 0, section ".data..read_mostly", align 4
@udp_ehashfn.___done = internal global i8 0, section ".data.once", align 1
@udp_ehashfn.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@iptun_encaps = external dso_local global [8 x ptr], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@__tracepoint_udp_fail_queue_rcv_skb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@udp_post_segment_fix_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"include/net/udp.h\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"%5d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@udp4_seq_afinfo = internal global %struct.udp_seq_afinfo { i16 2, ptr @udp_table }, align 4
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab___skb_recv_udp, ptr @__ksymtab___udp4_lib_lookup, ptr @__ksymtab___udp_disconnect, ptr @__ksymtab___udp_enqueue_schedule_skb, ptr @__ksymtab_skb_consume_udp, ptr @__ksymtab_sysctl_udp_mem, ptr @__ksymtab_udp4_hwcsum, ptr @__ksymtab_udp_abort, ptr @__ksymtab_udp_cmsg_send, ptr @__ksymtab_udp_destruct_sock, ptr @__ksymtab_udp_disconnect, ptr @__ksymtab_udp_encap_disable, ptr @__ksymtab_udp_encap_enable, ptr @__ksymtab_udp_flow_hashrnd, ptr @__ksymtab_udp_flush_pending_frames, ptr @__ksymtab_udp_init_sock, ptr @__ksymtab_udp_ioctl, ptr @__ksymtab_udp_lib_get_port, ptr @__ksymtab_udp_lib_getsockopt, ptr @__ksymtab_udp_lib_rehash, ptr @__ksymtab_udp_lib_setsockopt, ptr @__ksymtab_udp_lib_unhash, ptr @__ksymtab_udp_memory_allocated, ptr @__ksymtab_udp_poll, ptr @__ksymtab_udp_pre_connect, ptr @__ksymtab_udp_prot, ptr @__ksymtab_udp_push_pending_frames, ptr @__ksymtab_udp_read_sock, ptr @__ksymtab_udp_sendmsg, ptr @__ksymtab_udp_seq_next, ptr @__ksymtab_udp_seq_ops, ptr @__ksymtab_udp_seq_start, ptr @__ksymtab_udp_seq_stop, ptr @__ksymtab_udp_set_csum, ptr @__ksymtab_udp_sk_rx_dst_set, ptr @__ksymtab_udp_skb_destructor, ptr @__ksymtab_udp_table, ptr @__setup_set_uhash_entries], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_lib_get_port(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 48
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i16 %1, 0
  br i1 %11, label %12, label %88

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !9
  call void @inet_get_local_port_range(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %13, 1
  %16 = sub i32 %15, %14
  %17 = call i32 @prandom_u32() #18
  %18 = zext i32 %17 to i64
  %19 = zext i32 %16 to i64
  %20 = mul nuw i64 %19, %18
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i32, ptr %4, align 4
  %24 = add i32 %23, %22
  %25 = trunc i32 %24 to i16
  %26 = or i32 %17, 1
  %27 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = mul i32 %29, %26
  %31 = add i32 %24, %28
  %32 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 3
  %33 = trunc i32 %30 to i16
  %34 = trunc i32 %31 to i16
  br label %35

35:                                               ; preds = %83, %12
  %36 = phi i32 [ %28, %12 ], [ %85, %83 ]
  %37 = phi i16 [ 0, %12 ], [ %38, %83 ]
  %38 = phi i16 [ %25, %12 ], [ %84, %83 ]
  %39 = zext i16 %38 to i32
  %40 = load ptr, ptr %10, align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %42 = add i32 %41, %39
  %43 = and i32 %42, %36
  %44 = getelementptr %struct.udp_hslot, ptr %40, i32 %43
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #18
  %45 = getelementptr %struct.udp_hslot, ptr %40, i32 %43, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %45) #18
  %46 = load i32, ptr %32, align 4
  %47 = call fastcc i32 @udp_lib_lport_inuse(i16 noundef zeroext %37, ptr noundef %44, ptr noundef nonnull %6, ptr noundef %0, i32 noundef %46)
  %48 = load i32, ptr %4, align 4
  %49 = load i32, ptr %5, align 4
  %50 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 116), align 4
  %51 = icmp eq ptr %50, null
  br label %52

52:                                               ; preds = %77, %35
  %53 = phi i16 [ %38, %35 ], [ %78, %77 ]
  %54 = zext i16 %53 to i32
  %55 = icmp sgt i32 %48, %54
  %56 = icmp slt i32 %49, %54
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %77, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %32, align 4
  %60 = lshr i32 %54, %59
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr %6, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  br i1 %51, label %86, label %69

69:                                               ; preds = %68
  %70 = lshr i32 %54, 5
  %71 = getelementptr i32, ptr %50, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %54, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %69, %58, %52
  %78 = add i16 %53, %33
  %79 = icmp eq i16 %78, %38
  br i1 %79, label %80, label %52

80:                                               ; preds = %77
  call void @_raw_spin_unlock_bh(ptr noundef %45) #18
  %81 = call i32 @__cond_resched() #18
  %82 = icmp eq i16 %38, %34
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = add i16 %38, 1
  %85 = load i32, ptr %27, align 4
  br label %35

86:                                               ; preds = %69, %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %131

87:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %326

88:                                               ; preds = %3
  %89 = zext i16 %1 to i32
  %90 = load ptr, ptr %10, align 4
  %91 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %94 = add i32 %93, %89
  %95 = and i32 %94, %92
  %96 = getelementptr %struct.udp_hslot, ptr %90, i32 %95
  %97 = getelementptr %struct.udp_hslot, ptr %90, i32 %95, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %97) #18
  %98 = getelementptr %struct.udp_hslot, ptr %90, i32 %95, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, 10
  br i1 %100, label %101, label %128

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %103 = getelementptr [2 x i16], ptr %102, i32 0, i32 1
  %104 = load i16, ptr %103, align 2
  %105 = xor i16 %104, %1
  %106 = zext i16 %105 to i32
  %107 = load i32, ptr %91, align 4
  %108 = and i32 %107, %106
  %109 = and i32 %107, %2
  %110 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr %struct.udp_hslot, ptr %111, i32 %108, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp slt i32 %99, %113
  br i1 %114, label %128, label %115

115:                                              ; preds = %101
  %116 = getelementptr %struct.udp_hslot, ptr %111, i32 %108
  %117 = tail call fastcc i32 @udp_lib_lport_inuse2(i16 noundef zeroext %1, ptr noundef %116, ptr noundef %0)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %322

119:                                              ; preds = %115
  %120 = icmp eq i32 %109, %108
  br i1 %120, label %131, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %110, align 4
  %123 = load i32, ptr %91, align 4
  %124 = and i32 %123, %109
  %125 = getelementptr %struct.udp_hslot, ptr %122, i32 %124
  %126 = tail call fastcc i32 @udp_lib_lport_inuse2(i16 noundef zeroext %1, ptr noundef %125, ptr noundef %0)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %322

128:                                              ; preds = %101, %88
  %129 = tail call fastcc i32 @udp_lib_lport_inuse(i16 noundef zeroext %1, ptr noundef %96, ptr noundef null, ptr noundef %0, i32 noundef 0)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %322

131:                                              ; preds = %128, %121, %119, %86
  %132 = phi ptr [ %96, %128 ], [ %44, %86 ], [ %96, %121 ], [ %96, %119 ]
  %133 = phi i16 [ %1, %128 ], [ %53, %86 ], [ %1, %121 ], [ %1, %119 ]
  %134 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %135 = getelementptr inbounds %struct.anon.4, ptr %134, i32 0, i32 1
  store i16 %133, ptr %135, align 2
  %136 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  store i16 %133, ptr %136, align 8
  %137 = getelementptr [2 x i16], ptr %136, i32 0, i32 1
  %138 = load i16, ptr %137, align 2
  %139 = xor i16 %138, %133
  store i16 %139, ptr %137, align 2
  %140 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %318

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %145 = load i8, ptr %144, align 1
  %146 = and i8 %145, 16
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %210, label %148

148:                                              ; preds = %143
  %149 = call i32 @sock_i_uid(ptr noundef %0) #18
  %150 = load ptr, ptr %132, align 8
  %151 = icmp eq ptr %150, null
  %152 = getelementptr i8, ptr %150, i32 -84
  %153 = icmp eq ptr %152, null
  %154 = or i1 %151, %153
  br i1 %154, label %201, label %155

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %157 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  br label %158

158:                                              ; preds = %194, %155
  %159 = phi ptr [ %152, %155 ], [ %198, %194 ]
  %160 = icmp eq ptr %159, %0
  br i1 %160, label %194, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.sock_common, ptr %159, i32 0, i32 3
  %163 = load i16, ptr %162, align 8
  %164 = load i16, ptr %156, align 8
  %165 = icmp eq i16 %163, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.sock_common, ptr %159, i32 0, i32 5
  %168 = load i8, ptr %167, align 1
  %169 = load i8, ptr %144, align 1
  %170 = xor i8 %169, %168
  %171 = and i8 %170, 32
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.sock_common, ptr %159, i32 0, i32 1
  %175 = load i16, ptr %174, align 8
  %176 = load i16, ptr %136, align 8
  %177 = icmp eq i16 %175, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.sock_common, ptr %159, i32 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = load i32, ptr %157, align 4
  %182 = icmp ne i32 %180, %181
  %183 = and i8 %168, 16
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %182, i1 true, i1 %184
  br i1 %185, label %194, label %186

186:                                              ; preds = %178
  %187 = call i32 @sock_i_uid(ptr noundef nonnull %159) #18
  %188 = icmp eq i32 %149, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = call zeroext i1 @inet_rcv_saddr_equal(ptr noundef %0, ptr noundef nonnull %159, i1 noundef zeroext false) #18
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = call zeroext i1 @inet_rcv_saddr_any(ptr noundef %0) #18
  %193 = call i32 @reuseport_add_sock(ptr noundef %0, ptr noundef nonnull %159, i1 noundef zeroext %192) #18
  br label %204

194:                                              ; preds = %189, %186, %178, %173, %166, %161, %158
  %195 = getelementptr inbounds %struct.sock_common, ptr %159, i32 0, i32 15
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  %198 = getelementptr i8, ptr %196, i32 -84
  %199 = icmp eq ptr %198, null
  %200 = or i1 %197, %199
  br i1 %200, label %201, label %158

201:                                              ; preds = %194, %148
  %202 = call zeroext i1 @inet_rcv_saddr_any(ptr noundef %0) #18
  %203 = call i32 @reuseport_alloc(ptr noundef %0, i1 noundef zeroext %202) #18
  br label %204

204:                                              ; preds = %201, %191
  %205 = phi i32 [ %193, %191 ], [ %203, %201 ]
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  store i16 0, ptr %135, align 2
  store i16 0, ptr %136, align 8
  %208 = load i16, ptr %137, align 2
  %209 = xor i16 %208, %133
  store i16 %209, ptr %137, align 2
  br label %322

210:                                              ; preds = %204, %143
  %211 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %211) #18, !srcloc !10
  %212 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %211, ptr %211, i32 1, ptr elementtype(i32) %211) #18, !srcloc !11
  %213 = extractvalue { i32, i32, i32 } %212, 0
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215, !prof !12

215:                                              ; preds = %210
  %216 = add i32 %213, 1
  %217 = or i32 %216, %213
  %218 = icmp sgt i32 %217, -1
  br i1 %218, label %221, label %219, !prof !13

219:                                              ; preds = %215, %210
  %220 = phi i32 [ 2, %210 ], [ 1, %215 ]
  call void @refcount_warn_saturate(ptr noundef %211, i32 noundef %220) #18
  br label %221

221:                                              ; preds = %219, %215
  %222 = load i8, ptr %144, align 1
  %223 = and i8 %222, 16
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %246, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %227 = load i16, ptr %226, align 8
  %228 = icmp eq i16 %227, 10
  br i1 %228, label %229, label %246

229:                                              ; preds = %229, %225
  %230 = phi ptr [ %232, %229 ], [ null, %225 ]
  %231 = phi ptr [ %232, %229 ], [ %132, %225 ]
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %229

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %236 = icmp eq ptr %230, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %230, align 4
  store ptr %238, ptr %235, align 4
  store volatile ptr %230, ptr %140, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  br label %244

239:                                              ; preds = %234
  %240 = load ptr, ptr %132, align 4
  store ptr %240, ptr %235, align 4
  store volatile ptr %132, ptr %140, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  store volatile ptr %235, ptr %132, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %252, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.hlist_node, ptr %240, i32 0, i32 1
  br label %244

244:                                              ; preds = %242, %237
  %245 = phi ptr [ %243, %242 ], [ %230, %237 ]
  store volatile ptr %235, ptr %245, align 4
  br label %252

246:                                              ; preds = %225, %221
  %247 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %248 = load ptr, ptr %132, align 4
  store ptr %248, ptr %247, align 4
  store volatile ptr %132, ptr %140, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  store volatile ptr %247, ptr %132, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.hlist_node, ptr %248, i32 0, i32 1
  store volatile ptr %247, ptr %251, align 4
  br label %252

252:                                              ; preds = %250, %246, %244, %239
  %253 = getelementptr inbounds %struct.udp_hslot, ptr %132, i32 0, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 4
  %256 = load ptr, ptr %7, align 8
  %257 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %258 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %259 = getelementptr inbounds %struct.proto, ptr %256, i32 0, i32 25
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr %struct.prot_inuse, ptr %258, i32 0, i32 1, i32 %260
  %262 = ptrtoint ptr %261 to i32
  %263 = call i32 @llvm.read_register.i32(metadata !0) #18
  %264 = inttoptr i32 %263 to ptr
  %265 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %264) #14, !srcloc !17
  %266 = add i32 %265, %262
  %267 = inttoptr i32 %266 to ptr
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, 1
  store i32 %269, ptr %267, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %257) #18, !srcloc !18
  %270 = load i16, ptr %137, align 2
  %271 = zext i16 %270 to i32
  %272 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, %271
  %277 = getelementptr %struct.udp_hslot, ptr %273, i32 %276
  %278 = getelementptr %struct.udp_hslot, ptr %273, i32 %276, i32 2
  call void @_raw_spin_lock(ptr noundef %278) #18
  %279 = load i8, ptr %144, align 1
  %280 = and i8 %279, 16
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %305, label %282

282:                                              ; preds = %252
  %283 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %284 = load i16, ptr %283, align 8
  %285 = icmp eq i16 %284, 10
  br i1 %285, label %286, label %305

286:                                              ; preds = %286, %282
  %287 = phi ptr [ %289, %286 ], [ null, %282 ]
  %288 = phi ptr [ %289, %286 ], [ %277, %282 ]
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %286

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %293 = icmp eq ptr %287, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr %287, align 4
  store ptr %295, ptr %292, align 4
  %296 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %287, ptr %296, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  br label %303

297:                                              ; preds = %291
  %298 = load ptr, ptr %277, align 4
  store ptr %298, ptr %292, align 4
  %299 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %277, ptr %299, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  store volatile ptr %292, ptr %277, align 4
  %300 = icmp eq ptr %298, null
  br i1 %300, label %312, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.hlist_node, ptr %298, i32 0, i32 1
  br label %303

303:                                              ; preds = %301, %294
  %304 = phi ptr [ %302, %301 ], [ %287, %294 ]
  store volatile ptr %292, ptr %304, align 4
  br label %312

305:                                              ; preds = %282, %252
  %306 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %307 = load ptr, ptr %277, align 4
  store ptr %307, ptr %306, align 4
  %308 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %277, ptr %308, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  store volatile ptr %306, ptr %277, align 4
  %309 = icmp eq ptr %307, null
  br i1 %309, label %312, label %310

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.hlist_node, ptr %307, i32 0, i32 1
  store volatile ptr %306, ptr %311, align 4
  br label %312

312:                                              ; preds = %310, %305, %303, %297
  %313 = getelementptr %struct.udp_hslot, ptr %273, i32 %276, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %316 = load i16, ptr %278, align 4
  %317 = add i16 %316, 1
  store i16 %317, ptr %278, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %318

318:                                              ; preds = %312, %131
  %319 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %320 = load i32, ptr %319, align 4
  %321 = or i32 %320, 8388608
  store i32 %321, ptr %319, align 4
  br label %322

322:                                              ; preds = %318, %207, %128, %121, %115
  %323 = phi ptr [ %132, %207 ], [ %132, %318 ], [ %96, %128 ], [ %96, %121 ], [ %96, %115 ]
  %324 = phi i32 [ 1, %207 ], [ 0, %318 ], [ 1, %128 ], [ 1, %121 ], [ 1, %115 ]
  %325 = getelementptr inbounds %struct.udp_hslot, ptr %323, i32 0, i32 2
  call void @_raw_spin_unlock_bh(ptr noundef %325) #18
  br label %326

326:                                              ; preds = %322, %87
  %327 = phi i32 [ %324, %322 ], [ 1, %87 ]
  ret i32 %327
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_lib_lport_inuse(i16 noundef zeroext %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call i32 @sock_i_uid(ptr noundef %3) #18
  %7 = load ptr, ptr %1, align 8
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -84
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %79, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  %14 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 5
  %15 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 6
  %16 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 81
  br label %17

17:                                               ; preds = %72, %12
  %18 = phi ptr [ %9, %12 ], [ %76, %72 ]
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %72, label %20

20:                                               ; preds = %17
  br i1 %13, label %21, label %25

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 1
  %23 = load i16, ptr %22, align 8
  %24 = icmp eq i16 %23, %0
  br i1 %24, label %25, label %72

25:                                               ; preds = %21, %20
  %26 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i8, ptr %14, align 1
  %32 = and i8 %31, 15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %30, %25
  %35 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %15, align 4
  %40 = icmp eq i32 %39, 0
  %41 = icmp eq i32 %36, %39
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %38, %34
  %44 = tail call zeroext i1 @inet_rcv_saddr_equal(ptr noundef %3, ptr noundef nonnull %18, i1 noundef zeroext true) #18
  br i1 %44, label %45, label %72

45:                                               ; preds = %43
  %46 = load i8, ptr %26, align 1
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %14, align 1
  %51 = and i8 %50, 16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load volatile ptr, ptr %16, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = tail call i32 @sock_i_uid(ptr noundef nonnull %18) #18
  %58 = icmp eq i32 %6, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br i1 %13, label %79, label %72

60:                                               ; preds = %56, %53, %49, %45
  br i1 %13, label %79, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 1
  %63 = load i16, ptr %62, align 8
  %64 = zext i16 %63 to i32
  %65 = lshr i32 %64, %4
  %66 = and i32 %65, 31
  %67 = shl nuw i32 1, %66
  %68 = lshr i32 %65, 5
  %69 = getelementptr i32, ptr %2, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %67, %70
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %61, %59, %43, %38, %30, %21, %17
  %73 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 15
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = getelementptr i8, ptr %74, i32 -84
  %77 = icmp eq ptr %76, null
  %78 = or i1 %75, %77
  br i1 %78, label %79, label %17

79:                                               ; preds = %72, %60, %59, %5
  %80 = phi i32 [ 0, %5 ], [ 0, %72 ], [ 1, %60 ], [ 0, %59 ]
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_lib_lport_inuse2(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @sock_i_uid(ptr noundef %2) #18
  %5 = getelementptr inbounds %struct.udp_hslot, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %5) #18
  %6 = load ptr, ptr %1, align 8
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -24
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %65, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 5
  %13 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  br label %14

14:                                               ; preds = %58, %11
  %15 = phi ptr [ %8, %11 ], [ %62, %58 ]
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %58, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 1
  %19 = load i16, ptr %18, align 8
  %20 = icmp eq i16 %19, %0
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %12, align 1
  %28 = and i8 %27, 15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %13, align 4
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i32 %32, %35
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %34, %30
  %40 = tail call zeroext i1 @inet_rcv_saddr_equal(ptr noundef %2, ptr noundef nonnull %15, i1 noundef zeroext true) #18
  br i1 %40, label %41, label %58

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load i8, ptr %12, align 1
  %48 = and i8 %47, 16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 81
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = tail call i32 @sock_i_uid(ptr noundef nonnull %15) #18
  %56 = icmp eq i32 %4, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %54, %50, %46, %41
  br label %65

58:                                               ; preds = %39, %34, %26, %17, %14
  %59 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 7
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  %62 = getelementptr i8, ptr %60, i32 -24
  %63 = icmp eq ptr %62, null
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %14

65:                                               ; preds = %58, %57, %54, %3
  %66 = phi i32 [ 1, %57 ], [ 0, %54 ], [ 0, %3 ], [ 0, %58 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %67 = load i16, ptr %5, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_v4_get_port(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = zext i16 %1 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %5 = add i32 %4, -559038733
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 14) #18
  %7 = sub i32 0, %6
  %8 = xor i32 %5, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 11) #18
  %10 = sub i32 %8, %9
  %11 = xor i32 %10, %5
  %12 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 25) #18
  %13 = sub i32 %11, %12
  %14 = xor i32 %13, %7
  %15 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 16) #18
  %16 = sub i32 %14, %15
  %17 = xor i32 %16, %10
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 4) #18
  %19 = sub i32 %17, %18
  %20 = xor i32 %19, %13
  %21 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 14) #18
  %22 = sub i32 %20, %21
  %23 = xor i32 %22, %16
  %24 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 24) #18
  %25 = sub i32 %23, %24
  %26 = xor i32 %25, %3
  %27 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %5, %28
  %30 = xor i32 %29, %7
  %31 = sub i32 %30, %9
  %32 = xor i32 %31, %5
  %33 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 25) #18
  %34 = sub i32 %32, %33
  %35 = xor i32 %34, %7
  %36 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16) #18
  %37 = sub i32 %35, %36
  %38 = xor i32 %37, %31
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 4) #18
  %40 = sub i32 %38, %39
  %41 = xor i32 %40, %34
  %42 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 14) #18
  %43 = sub i32 %41, %42
  %44 = xor i32 %43, %37
  %45 = lshr i32 %43, 8
  %46 = sub i32 %44, %45
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %49 = getelementptr [2 x i16], ptr %48, i32 0, i32 1
  store i16 %47, ptr %49, align 2
  %50 = tail call i32 @udp_lib_get_port(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %26)
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__udp4_lib_lookup(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = tail call i16 @llvm.bswap.i16(i16 %4)
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -559038733
  %15 = add i32 %14, %3
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 14) #18
  %17 = sub i32 0, %16
  %18 = xor i32 %15, %17
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 11) #18
  %20 = sub i32 %18, %19
  %21 = xor i32 %20, %14
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 25) #18
  %23 = sub i32 %21, %22
  %24 = xor i32 %23, %17
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 16) #18
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %20
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 4) #18
  %29 = sub i32 %27, %28
  %30 = xor i32 %29, %23
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 14) #18
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 24) #18
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %11
  %37 = getelementptr inbounds %struct.udp_table, ptr %7, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %36, %38
  %40 = getelementptr inbounds %struct.udp_table, ptr %7, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.udp_hslot, ptr %41, i32 %39
  %43 = tail call fastcc ptr @udp4_lib_lookup2(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %11, i32 noundef %5, i32 noundef %6, ptr noundef %42, ptr noundef %8)
  %44 = icmp eq ptr %43, null
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %46 = or i1 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.sock_common, ptr %43, i32 0, i32 4
  %49 = load volatile i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %90, label %51

51:                                               ; preds = %47, %9
  %52 = load volatile i32, ptr @bpf_sk_lookup_enabled, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %60, !prof !12

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @udp4_lookup_run_bpf(ptr noundef %0, ptr noundef %7, ptr noundef %8, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %10, i32 noundef %5)
  %56 = icmp ne ptr %55, null
  %57 = xor i1 %44, true
  %58 = select i1 %56, i1 true, i1 %57
  %59 = select i1 %56, ptr %55, ptr %43
  br i1 %58, label %90, label %61

60:                                               ; preds = %51
  br i1 %44, label %61, label %90

61:                                               ; preds = %60, %54
  %62 = load i32, ptr %12, align 4
  %63 = add i32 %62, -559038733
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 14) #18
  %65 = sub i32 0, %64
  %66 = xor i32 %63, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 11) #18
  %68 = sub i32 %66, %67
  %69 = xor i32 %68, %63
  %70 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 25) #18
  %71 = sub i32 %69, %70
  %72 = xor i32 %71, %65
  %73 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 16) #18
  %74 = sub i32 %72, %73
  %75 = xor i32 %74, %68
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 4) #18
  %77 = sub i32 %75, %76
  %78 = xor i32 %77, %71
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 14) #18
  %80 = sub i32 %78, %79
  %81 = xor i32 %80, %74
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 24) #18
  %83 = sub i32 %81, %82
  %84 = xor i32 %83, %11
  %85 = load i32, ptr %37, align 4
  %86 = and i32 %84, %85
  %87 = load ptr, ptr %40, align 4
  %88 = getelementptr %struct.udp_hslot, ptr %87, i32 %86
  %89 = tail call fastcc ptr @udp4_lib_lookup2(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef 0, i32 noundef %11, i32 noundef %5, i32 noundef %6, ptr noundef %88, ptr noundef %8)
  br label %90

90:                                               ; preds = %61, %60, %54, %47
  %91 = phi ptr [ %43, %60 ], [ %89, %61 ], [ %43, %47 ], [ %59, %54 ]
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  %93 = select i1 %92, ptr null, ptr %91
  ret ptr %93
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp4_lib_lookup2(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = load volatile ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -24
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %98, label %15

15:                                               ; preds = %9
  %16 = trunc i32 %4 to i16
  br label %17

17:                                               ; preds = %89, %15
  %18 = phi ptr [ %12, %15 ], [ %95, %89 ]
  %19 = phi ptr [ null, %15 ], [ %91, %89 ]
  %20 = phi i32 [ 0, %15 ], [ %90, %89 ]
  %21 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 1
  %22 = load i16, ptr %21, align 8
  %23 = icmp eq i16 %22, %16
  br i1 %23, label %24, label %73

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 32
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 3
  %35 = load i16, ptr %34, align 8
  %36 = icmp eq i16 %35, 2
  %37 = select i1 %36, i32 2, i32 1
  %38 = load i32, ptr %18, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = icmp eq i32 %38, %1
  br i1 %41, label %42, label %73

42:                                               ; preds = %40
  %43 = or i32 %37, 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi i32 [ %43, %42 ], [ %37, %33 ]
  %46 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 2
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = icmp eq i16 %47, %2
  br i1 %50, label %51, label %73

51:                                               ; preds = %49
  %52 = add nsw i32 %45, 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ %52, %51 ], [ %45, %44 ]
  %55 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = icmp eq i32 %56, %5
  %60 = icmp eq i32 %56, %6
  %61 = or i1 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58, %53
  %63 = add nsw i32 %54, 4
  %64 = select i1 %57, i32 %54, i32 %63
  %65 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 18
  %66 = load volatile i32, ptr %65, align 8
  %67 = tail call ptr @llvm.thread.pointer() #18
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %66, %69
  %71 = zext i1 %70 to i32
  %72 = add i32 %64, %71
  br label %73

73:                                               ; preds = %62, %58, %49, %40, %29, %24, %17
  %74 = phi i32 [ %72, %62 ], [ -1, %24 ], [ -1, %17 ], [ -1, %29 ], [ -1, %40 ], [ -1, %49 ], [ -1, %58 ]
  %75 = icmp sgt i32 %74, %20
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = tail call fastcc ptr @lookup_reuseport(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %8, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %16)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %80 = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 81
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br label %98

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.sock_reuseport, ptr %81, i32 0, i32 6
  %86 = load i8, ptr %85, align 4
  %87 = and i8 %86, 2
  %88 = icmp eq i8 %87, 0
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br i1 %88, label %98, label %89

89:                                               ; preds = %84, %76, %73
  %90 = phi i32 [ %20, %73 ], [ %74, %84 ], [ %74, %76 ]
  %91 = phi ptr [ %19, %73 ], [ %77, %84 ], [ %18, %76 ]
  %92 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 7
  %93 = load volatile ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  %95 = getelementptr i8, ptr %93, i32 -24
  %96 = icmp eq ptr %95, null
  %97 = or i1 %94, %96
  br i1 %97, label %98, label %17

98:                                               ; preds = %89, %84, %83, %9
  %99 = phi ptr [ %77, %83 ], [ null, %9 ], [ %77, %84 ], [ %91, %89 ]
  ret ptr %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp4_lookup_run_bpf(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i16 noundef zeroext %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.bpf_sk_lookup_kern, align 4
  %10 = icmp eq ptr %1, @udp_table
  br i1 %10, label %11, label %112

11:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %12 = getelementptr %struct.net, ptr %0, i32 0, i32 38, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br label %112

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #18
  %17 = getelementptr inbounds i8, ptr %9, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %17, i8 0, i32 12, i1 false) #18, !annotation !9
  store i16 2, ptr %9, align 4
  %18 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 1
  store i16 17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 2
  store i16 %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 3
  store i16 %6, ptr %20, align 2
  %21 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 4
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 4, i32 1
  store i32 %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 5
  store i64 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 7
  store i32 %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %9, i32 0, i32 8
  tail call void @migrate_disable() #18
  %26 = getelementptr inbounds %struct.bpf_prog_array, ptr %13, i32 0, i32 1
  %27 = load volatile ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %90, label %29

29:                                               ; preds = %83, %16
  %30 = phi ptr [ %88, %83 ], [ %27, %16 ]
  %31 = phi i8 [ %86, %83 ], [ 1, %16 ]
  %32 = phi i1 [ %85, %83 ], [ false, %16 ]
  %33 = phi ptr [ %84, %83 ], [ null, %16 ]
  %34 = phi ptr [ %87, %83 ], [ %26, %16 ]
  store ptr %33, ptr %17, align 4
  %35 = zext i1 %32 to i8
  store i8 %35, ptr %25, align 4
  %36 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %66, !prof !12

38:                                               ; preds = %29
  %39 = call i64 @sched_clock() #18
  %40 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 1
  %41 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef nonnull %9, ptr noundef %40) #18
  %44 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = call i32 @llvm.read_register.i32(metadata !0) #18
  %48 = inttoptr i32 %47 to ptr
  %49 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #14, !srcloc !17
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.bpf_prog_stats, ptr %51, i32 0, i32 3
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %54 = load i32, ptr %52, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %52, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !25
  %56 = load i64, ptr %51, align 8
  %57 = add i64 %56, 1
  store i64 %57, ptr %51, align 8
  %58 = getelementptr inbounds %struct.bpf_prog_stats, ptr %51, i32 0, i32 1
  %59 = call i64 @sched_clock() #18
  %60 = sub i64 %59, %39
  %61 = and i64 %60, 4294967295
  %62 = load i64, ptr %58, align 8
  %63 = add i64 %61, %62
  store i64 %63, ptr %58, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !26
  %64 = load i32, ptr %52, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %52, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #18, !srcloc !18
  br label %71

66:                                               ; preds = %29
  %67 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 1
  %68 = getelementptr inbounds %struct.bpf_prog, ptr %30, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef nonnull %9, ptr noundef %67) #18
  br label %71

71:                                               ; preds = %66, %38
  %72 = phi i32 [ %43, %38 ], [ %70, %66 ]
  switch i32 %72, label %83 [
    i32 1, label %73
    i32 0, label %79
  ]

73:                                               ; preds = %71
  %74 = load ptr, ptr %17, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i8, ptr %25, align 4, !range !27
  %78 = icmp ne i8 %77, 0
  br label %83

79:                                               ; preds = %71
  %80 = and i8 %31, 1
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i8 %31, i8 0
  br label %83

83:                                               ; preds = %79, %76, %73, %71
  %84 = phi ptr [ %74, %76 ], [ %33, %79 ], [ %33, %71 ], [ %33, %73 ]
  %85 = phi i1 [ %78, %76 ], [ %32, %79 ], [ %32, %71 ], [ %32, %73 ]
  %86 = phi i8 [ %31, %76 ], [ %82, %79 ], [ %31, %71 ], [ %31, %73 ]
  %87 = getelementptr %struct.bpf_prog_array_item, ptr %34, i32 1
  %88 = load volatile ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %29

90:                                               ; preds = %83, %16
  %91 = phi ptr [ null, %16 ], [ %84, %83 ]
  %92 = phi i1 [ false, %16 ], [ %85, %83 ]
  %93 = phi i8 [ 1, %16 ], [ %86, %83 ]
  store ptr %91, ptr %17, align 4
  %94 = zext i1 %92 to i8
  store i8 %94, ptr %25, align 4
  call void @migrate_enable() #18
  %95 = and i8 %93, 1
  %96 = icmp ne i8 %95, 0
  %97 = icmp ne ptr %91, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br label %112

100:                                              ; preds = %90
  %101 = load ptr, ptr %17, align 4
  %102 = load i8, ptr %25, align 4, !range !27
  %103 = icmp eq i8 %102, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = icmp eq ptr %101, null
  %106 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  %107 = or i1 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = call fastcc ptr @lookup_reuseport(ptr noundef %0, ptr noundef nonnull %101, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i16 noundef zeroext %6)
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, ptr %101, ptr %109
  br label %112

112:                                              ; preds = %108, %104, %100, %99, %15, %8
  %113 = phi ptr [ null, %8 ], [ %101, %104 ], [ %101, %100 ], [ inttoptr (i32 -111 to ptr), %99 ], [ null, %15 ], [ %111, %108 ]
  ret ptr %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @udp4_lib_lookup_skb(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = inttoptr i32 %16 to ptr
  %20 = getelementptr inbounds %struct.rtable, ptr %19, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %3
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %25, %23 ], [ %21, %18 ]
  %28 = tail call ptr @__udp4_lib_lookup(ptr noundef nonnull @init_net, i32 noundef %11, i16 noundef zeroext %1, i32 noundef %13, i16 noundef zeroext %2, i32 noundef %27, i32 noundef 0, ptr noundef nonnull @udp_table, ptr noundef null)
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_encap_enable() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !27
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !12

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @udp_encap_needed_key) #18
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @udp_encap_needed_key) #18, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @udp_encap_needed_key, ptr nonnull @udp_encap_needed_key, i32 1, ptr nonnull elementtype(i32) @udp_encap_needed_key) #18, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_encap_disable() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !27
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !12

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @udp_encap_needed_key) #18
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @udp_encap_needed_key) #18, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @udp_encap_needed_key, ptr nonnull @udp_encap_needed_key, i32 1, ptr nonnull elementtype(i32) @udp_encap_needed_key) #18, !srcloc !29
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @static_key_slow_dec() unnamed_addr #5 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !27
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !12

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @udp_encap_needed_key) #18
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @udp_encap_needed_key) #18, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @udp_encap_needed_key, ptr nonnull @udp_encap_needed_key, i32 1, ptr nonnull elementtype(i32) @udp_encap_needed_key) #18, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__udp4_lib_err(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 4
  %7 = shl i8 %6, 2
  %8 = and i8 %7, 60
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.icmphdr, ptr %16, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.iphdr, ptr %5, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.udphdr, ptr %10, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds %struct.iphdr, ptr %5, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = load i16, ptr %10, align 2
  %29 = load ptr, ptr %21, align 8
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = tail call ptr @__udp4_lib_lookup(ptr noundef nonnull @init_net, i32 noundef %23, i16 noundef zeroext %25, i32 noundef %27, i16 noundef zeroext %28, i32 noundef %31, i32 noundef 0, ptr noundef %2, ptr noundef null)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.udp_sock, ptr %32, i32 0, i32 3
  %36 = load i8, ptr %35, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %34, %3
  %39 = load volatile i32, ptr @udp_encap_needed_key, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46, !prof !12

41:                                               ; preds = %38
  %42 = tail call fastcc ptr @__udp4_lib_err_encap(ptr noundef %5, ptr noundef %10, ptr noundef %2, ptr noundef %32, ptr noundef %0, i32 noundef %1)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %98, label %44

44:                                               ; preds = %41
  %45 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %59

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %42, %44 ], [ inttoptr (i32 -2 to ptr), %38 ]
  %48 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %49 = getelementptr [28 x i32], ptr %48, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #14, !srcloc !17
  %54 = add i32 %53, %50
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = ptrtoint ptr %47 to i32
  br label %98

59:                                               ; preds = %44, %34
  %60 = phi i1 [ false, %34 ], [ true, %44 ]
  %61 = phi ptr [ %32, %34 ], [ %42, %44 ]
  switch i8 %17, label %79 [
    i8 5, label %78
    i8 4, label %98
    i8 12, label %62
    i8 3, label %63
  ]

62:                                               ; preds = %59
  br label %79

63:                                               ; preds = %59
  %64 = icmp eq i8 %19, 4
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  tail call void @ipv4_sk_update_pmtu(ptr noundef %0, ptr noundef nonnull %61, i32 noundef %1) #18
  %66 = getelementptr inbounds %struct.inet_sock, ptr %61, i32 0, i32 11
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %98, label %79

69:                                               ; preds = %63
  %70 = icmp ult i8 %19, 16
  br i1 %70, label %71, label %79

71:                                               ; preds = %69
  %72 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %20
  %73 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %20, i32 1
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 1
  %76 = zext i8 %75 to i32
  %77 = load i32, ptr %72, align 4
  br label %79

78:                                               ; preds = %59
  tail call void @ipv4_sk_redirect(ptr noundef %0, ptr noundef nonnull %61) #18
  br label %98

79:                                               ; preds = %71, %69, %65, %62, %59
  %80 = phi i32 [ %76, %71 ], [ 0, %69 ], [ 1, %62 ], [ 0, %59 ], [ 1, %65 ]
  %81 = phi i32 [ %77, %71 ], [ 113, %69 ], [ 71, %62 ], [ 113, %59 ], [ 90, %65 ]
  br i1 %60, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.inet_sock, ptr %61, i32 0, i32 12
  %84 = load i16, ptr %83, align 8
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = icmp eq i32 %80, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 4
  %91 = load volatile i8, ptr %90, align 2
  %92 = icmp eq i8 %91, 1
  br i1 %92, label %96, label %98

93:                                               ; preds = %82
  %94 = load i16, ptr %24, align 2
  %95 = getelementptr %struct.udphdr, ptr %10, i32 1
  tail call void @ip_icmp_error(ptr noundef nonnull %61, ptr noundef %0, i32 noundef %81, i16 noundef zeroext %94, i32 noundef %1, ptr noundef %95) #18
  br label %96

96:                                               ; preds = %93, %89
  %97 = getelementptr inbounds %struct.sock, ptr %61, i32 0, i32 51
  store i32 %81, ptr %97, align 4
  tail call void @sk_error_report(ptr noundef nonnull %61) #18
  br label %98

98:                                               ; preds = %96, %89, %87, %79, %78, %65, %59, %46, %41
  %99 = phi i32 [ %58, %46 ], [ 0, %41 ], [ 0, %87 ], [ 0, %89 ], [ 0, %79 ], [ 0, %65 ], [ 0, %59 ], [ 0, %96 ], [ 0, %78 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__udp4_lib_err_encap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  %15 = load i16, ptr %14, align 2
  %16 = ptrtoint ptr %8 to i32
  %17 = sub i32 %13, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %9, align 4
  %19 = load i8, ptr %0, align 4
  %20 = shl i8 %19, 2
  %21 = and i8 %20, 60
  %22 = zext i8 %21 to i16
  %23 = add i16 %22, %18
  store i16 %23, ptr %14, align 2
  %24 = icmp eq ptr %3, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.udp_sock, ptr %3, i32 0, i32 12
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %134, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef nonnull %3, ptr noundef %4) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %134, label %53

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.iphdr, ptr %0, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = load i16, ptr %1, align 2
  %36 = getelementptr inbounds %struct.iphdr, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.udphdr, ptr %1, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.anon.43, ptr %4, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 17
  %43 = load i32, ptr %42, align 4
  %44 = tail call ptr @__udp4_lib_lookup(ptr noundef nonnull @init_net, i32 noundef %34, i16 noundef zeroext %35, i32 noundef %37, i16 noundef zeroext %39, i32 noundef %43, i32 noundef 0, ptr noundef %2, ptr noundef null)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.udp_sock, ptr %44, i32 0, i32 12
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call i32 %48(ptr noundef nonnull %44, ptr noundef %4) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %134, label %53

53:                                               ; preds = %50, %46, %32, %29
  %54 = load volatile ptr, ptr @iptun_encaps, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %54, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = tail call i32 %58(ptr noundef %4, i32 noundef %5) #18
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %134, label %63

63:                                               ; preds = %60, %56, %53
  %64 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 1), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call i32 %68(ptr noundef %4, i32 noundef %5) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %134, label %73

73:                                               ; preds = %70, %66, %63
  %74 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 2), align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = tail call i32 %78(ptr noundef %4, i32 noundef %5) #18
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %134, label %83

83:                                               ; preds = %80, %76, %73
  %84 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 3), align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %84, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = tail call i32 %88(ptr noundef %4, i32 noundef %5) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %134, label %93

93:                                               ; preds = %90, %86, %83
  %94 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 4), align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %94, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = tail call i32 %98(ptr noundef %4, i32 noundef %5) #18
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %134, label %103

103:                                              ; preds = %100, %96, %93
  %104 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 5), align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %104, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = tail call i32 %108(ptr noundef %4, i32 noundef %5) #18
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %110, %106, %103
  %114 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 6), align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %114, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = tail call i32 %118(ptr noundef %4, i32 noundef %5) #18
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %120, %116, %113
  %124 = load volatile ptr, ptr getelementptr inbounds ([8 x ptr], ptr @iptun_encaps, i32 0, i32 7), align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %124, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = tail call i32 %128(ptr noundef %4, i32 noundef %5) #18
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130, %126, %123
  br label %134

134:                                              ; preds = %133, %130, %120, %110, %100, %90, %80, %70, %60, %50, %29, %25
  %135 = phi ptr [ %3, %25 ], [ %44, %50 ], [ %3, %29 ], [ null, %60 ], [ null, %70 ], [ null, %80 ], [ null, %90 ], [ null, %100 ], [ null, %110 ], [ null, %120 ], [ null, %130 ], [ inttoptr (i32 -2 to ptr), %133 ]
  %136 = zext i16 %15 to i32
  %137 = getelementptr i8, ptr %8, i32 %136
  %138 = ptrtoint ptr %137 to i32
  %139 = sub i32 %138, %13
  %140 = zext i16 %10 to i32
  %141 = getelementptr i8, ptr %8, i32 %140
  %142 = ptrtoint ptr %141 to i32
  %143 = sub i32 %142, %13
  %144 = load ptr, ptr %11, align 4
  %145 = load ptr, ptr %7, align 8
  %146 = ptrtoint ptr %144 to i32
  %147 = ptrtoint ptr %145 to i32
  %148 = sub i32 %146, %147
  %149 = trunc i32 %148 to i16
  %150 = trunc i32 %139 to i16
  %151 = add i16 %149, %150
  store i16 %151, ptr %14, align 2
  %152 = trunc i32 %143 to i16
  %153 = add i16 %149, %152
  store i16 %153, ptr %9, align 4
  ret ptr %135
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
define dso_local i32 @udp_err(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__udp4_lib_err(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @udp_table)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_flush_pending_frames(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  store i16 0, ptr %6, align 2
  store i32 0, ptr %2, align 64
  tail call void @ip_flush_pending_frames(ptr noundef %0) #18
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp4_hwcsum(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = sub i32 %16, %14
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.anon.52, ptr %24, i32 0, i32 1
  store i16 6, ptr %25, align 2
  %26 = add i32 %17, 17
  %27 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %2, i32 %1, i32 %26) #19, !srcloc !30
  %28 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %27) #19, !srcloc !31
  %29 = xor i32 %28, -1
  %30 = lshr i32 %29, 16
  %31 = trunc i32 %30 to i16
  %32 = xor i16 %31, -1
  %33 = getelementptr inbounds %struct.udphdr, ptr %9, i32 0, i32 3
  store i16 %32, ptr %33, align 2
  br label %63

34:                                               ; preds = %34, %3
  %35 = phi i32 [ %43, %34 ], [ 0, %3 ]
  %36 = phi i32 [ %46, %34 ], [ %17, %3 ]
  %37 = phi ptr [ %47, %34 ], [ %21, %3 ]
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 13, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %35
  %41 = icmp ult i32 %40, %39
  %42 = zext i1 %41 to i32
  %43 = add i32 %40, %42
  %44 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = sub i32 %36, %45
  %47 = load ptr, ptr %37, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %34

49:                                               ; preds = %34
  %50 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef %14, i32 noundef %46, i32 noundef %43) #18
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %52 = load i16, ptr %51, align 8
  %53 = and i16 %52, -97
  store i16 %53, ptr %51, align 8
  %54 = add i32 %17, 17
  %55 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %50, i32 %2, i32 %1, i32 %54) #19, !srcloc !32
  %56 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %55) #19, !srcloc !31
  %57 = xor i32 %56, -1
  %58 = lshr i32 %57, 16
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.udphdr, ptr %9, i32 0, i32 3
  %61 = icmp eq i16 %59, 0
  %62 = select i1 %61, i16 -1, i16 %59
  store i16 %62, ptr %60, align 2
  br label %63

63:                                               ; preds = %49, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_set_csum(i1 noundef zeroext %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  br i1 %0, label %12, label %14

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 0, ptr %13, align 2
  br label %75

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = add i32 %4, 17
  %22 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %3, i32 %2, i32 %21) #19, !srcloc !30
  %23 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %22) #19, !srcloc !31
  %24 = xor i32 %23, -1
  %25 = lshr i32 %24, 16
  %26 = trunc i32 %25 to i16
  %27 = xor i16 %26, -1
  %28 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 %27, ptr %28, align 2
  br label %75

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %31 = load i16, ptr %30, align 8
  %32 = and i16 %31, 96
  %33 = icmp eq i16 %32, 96
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 0, ptr %35, align 2
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = load i16, ptr %8, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %36, i32 %42
  %44 = getelementptr inbounds %struct.anon.52, ptr %37, i32 0, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %40, i32 %46
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = xor i32 %49, -1
  %51 = ptrtoint ptr %40 to i32
  %52 = ptrtoint ptr %43 to i32
  %53 = sub i32 %51, %52
  %54 = tail call i32 @csum_partial(ptr noundef %43, i32 noundef %53, i32 noundef %50) #18
  %55 = add i32 %4, 17
  %56 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %54, i32 %3, i32 %2, i32 %55) #19, !srcloc !32
  %57 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %56) #19, !srcloc !31
  %58 = xor i32 %57, -1
  %59 = lshr i32 %58, 16
  %60 = trunc i32 %59 to i16
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i16 -1, i16 %60
  store i16 %62, ptr %35, align 2
  br label %75

63:                                               ; preds = %29
  %64 = or i16 %31, 96
  store i16 %64, ptr %30, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i16 %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.anon.52, ptr %65, i32 0, i32 1
  store i16 6, ptr %66, align 2
  %67 = add i32 %4, 17
  %68 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %3, i32 %2, i32 %67) #19, !srcloc !30
  %69 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %68) #19, !srcloc !31
  %70 = xor i32 %69, -1
  %71 = lshr i32 %70, 16
  %72 = trunc i32 %71 to i16
  %73 = xor i16 %72, -1
  %74 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  store i16 %73, ptr %74, align 2
  br label %75

75:                                               ; preds = %63, %34, %20, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_push_pending_frames(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %5 = tail call ptr @__ip_make_skb(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @udp_send_skb(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %4)
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  store i32 0, ptr %12, align 64
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_send_skb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 46
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 136
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %18, %17
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %19, %21
  %23 = add i32 %22, -8
  %24 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 6
  %25 = load i16, ptr %24, align 8
  store i16 %25, ptr %14, align 2
  %26 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  %27 = load i16, ptr %26, align 8
  %28 = getelementptr inbounds %struct.udphdr, ptr %14, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  %29 = trunc i32 %22 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = getelementptr inbounds %struct.udphdr, ptr %14, i32 0, i32 2
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.udphdr, ptr %14, i32 0, i32 3
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 10
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %91, label %36

36:                                               ; preds = %3
  %37 = load i16, ptr %11, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = zext i16 %34 to i32
  %43 = add nuw nsw i32 %42, 8
  %44 = add nuw nsw i32 %43, %38
  %45 = sub nsw i32 %44, %41
  %46 = getelementptr inbounds %struct.inet_cork, ptr %2, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #18
  br label %237

50:                                               ; preds = %36
  %51 = shl nuw nsw i32 %42, 6
  %52 = icmp sgt i32 %23, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #18
  br label %237

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 43
  %56 = load i8, ptr %55, align 8
  %57 = and i8 %56, 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #18
  br label %237

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 96
  %64 = icmp ne i16 %63, 96
  %65 = select i1 %64, i1 true, i1 %8
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, -2
  %70 = inttoptr i32 %69 to ptr
  %71 = getelementptr inbounds %struct.dst_entry, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66, %60
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #18
  br label %237

75:                                               ; preds = %66
  %76 = icmp sgt i32 %23, %42
  br i1 %76, label %77, label %136

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 4
  store i16 %34, ptr %80, align 4
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 8
  store i32 131072, ptr %82, align 8
  %83 = load i16, ptr %33, align 2
  %84 = zext i16 %83 to i32
  %85 = add i32 %22, -9
  %86 = add i32 %85, %84
  %87 = sdiv i32 %86, %84
  %88 = trunc i32 %87 to i16
  %89 = load ptr, ptr %78, align 4
  %90 = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 5
  store i16 %88, ptr %90, align 2
  br label %136

91:                                               ; preds = %3
  br i1 %8, label %92, label %124

92:                                               ; preds = %91
  %93 = load ptr, ptr %4, align 4
  %94 = load ptr, ptr %9, align 8
  %95 = load i16, ptr %11, align 2
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = load ptr, ptr %15, align 4
  %99 = ptrtoint ptr %97 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = load i32, ptr %20, align 8
  %103 = sub i32 %102, %101
  %104 = getelementptr inbounds %struct.udp_sock, ptr %93, i32 0, i32 9
  %105 = load i8, ptr %104, align 2
  %106 = and i8 %105, 2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.udp_sock, ptr %93, i32 0, i32 7
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp sgt i32 %103, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = icmp eq i16 %110, 0
  %115 = select i1 %114, i32 %103, i32 %111
  %116 = tail call i16 @llvm.bswap.i16(i16 %110) #18
  %117 = getelementptr inbounds %struct.udphdr, ptr %97, i32 0, i32 2
  store i16 %116, ptr %117, align 2
  br label %118

118:                                              ; preds = %113, %108, %92
  %119 = phi i32 [ %115, %113 ], [ %103, %108 ], [ %103, %92 ]
  %120 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %121 = load i16, ptr %120, align 8
  %122 = and i16 %121, -97
  store i16 %122, ptr %120, align 8
  %123 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef %101, i32 noundef %119, i32 noundef 0) #18
  br label %165

124:                                              ; preds = %91
  %125 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 43
  %126 = load i8, ptr %125, align 8
  %127 = and i8 %126, 4
  %128 = icmp eq i8 %127, 0
  %129 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %130 = load i16, ptr %129, align 8
  br i1 %128, label %133, label %131

131:                                              ; preds = %124
  %132 = and i16 %130, -97
  store i16 %132, ptr %129, align 8
  br label %182

133:                                              ; preds = %124
  %134 = and i16 %130, 96
  %135 = icmp eq i16 %134, 96
  br i1 %135, label %136, label %141

136:                                              ; preds = %133, %77, %75
  %137 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  %138 = load i32, ptr %137, align 8
  %139 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  tail call void @udp4_hwcsum(ptr noundef %0, i32 noundef %138, i32 noundef %140)
  br label %182

141:                                              ; preds = %133
  %142 = load ptr, ptr %9, align 8
  %143 = load i16, ptr %11, align 2
  %144 = zext i16 %143 to i32
  %145 = getelementptr i8, ptr %142, i32 %144
  %146 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = tail call i32 @csum_partial(ptr noundef %145, i32 noundef 8, i32 noundef %147) #18
  %149 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.skb_shared_info, ptr %150, i32 0, i32 6
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %165, label %154

154:                                              ; preds = %154, %141
  %155 = phi ptr [ %163, %154 ], [ %152, %141 ]
  %156 = phi i32 [ %162, %154 ], [ %148, %141 ]
  %157 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, %156
  %160 = icmp ult i32 %159, %158
  %161 = zext i1 %160 to i32
  %162 = add i32 %159, %161
  %163 = load ptr, ptr %155, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %154

165:                                              ; preds = %154, %141, %118
  %166 = phi i32 [ %123, %118 ], [ %148, %141 ], [ %162, %154 ]
  %167 = load i16, ptr %6, align 4
  %168 = and i16 %167, 255
  %169 = zext i16 %168 to i32
  %170 = add i32 %22, %169
  %171 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  %174 = load i32, ptr %173, align 8
  %175 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %166, i32 %172, i32 %174, i32 %170) #19, !srcloc !32
  %176 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %175) #19, !srcloc !31
  %177 = xor i32 %176, -1
  %178 = lshr i32 %177, 16
  %179 = trunc i32 %178 to i16
  %180 = icmp eq i16 %179, 0
  %181 = select i1 %180, i16 -1, i16 %179
  store i16 %181, ptr %32, align 2
  br label %182

182:                                              ; preds = %165, %136, %131
  %183 = tail call i32 @ip_send_skb(ptr noundef nonnull @init_net, ptr noundef %0) #18
  switch i32 %183, label %237 [
    i32 0, label %213
    i32 -105, label %184
  ]

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 12
  %186 = load i16, ptr %185, align 8
  %187 = and i16 %186, 1
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %237

189:                                              ; preds = %184
  %190 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %8, label %191, label %202

191:                                              ; preds = %189
  %192 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %193 = getelementptr [10 x i32], ptr %192, i32 0, i32 6
  %194 = ptrtoint ptr %193 to i32
  %195 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %196 = inttoptr i32 %195 to ptr
  %197 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %196) #14, !srcloc !17
  %198 = add i32 %197, %194
  %199 = inttoptr i32 %198 to ptr
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %190) #18, !srcloc !18
  br label %237

202:                                              ; preds = %189
  %203 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %204 = getelementptr [10 x i32], ptr %203, i32 0, i32 6
  %205 = ptrtoint ptr %204 to i32
  %206 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %207 = inttoptr i32 %206 to ptr
  %208 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %207) #14, !srcloc !17
  %209 = add i32 %208, %205
  %210 = inttoptr i32 %209 to ptr
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %190) #18, !srcloc !18
  br label %237

213:                                              ; preds = %182
  %214 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %8, label %215, label %226

215:                                              ; preds = %213
  %216 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %217 = getelementptr [10 x i32], ptr %216, i32 0, i32 4
  %218 = ptrtoint ptr %217 to i32
  %219 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %220 = inttoptr i32 %219 to ptr
  %221 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %220) #14, !srcloc !17
  %222 = add i32 %221, %218
  %223 = inttoptr i32 %222 to ptr
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, 1
  store i32 %225, ptr %223, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %214) #18, !srcloc !18
  br label %237

226:                                              ; preds = %213
  %227 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %228 = getelementptr [10 x i32], ptr %227, i32 0, i32 4
  %229 = ptrtoint ptr %228 to i32
  %230 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %231 = inttoptr i32 %230 to ptr
  %232 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %231) #14, !srcloc !17
  %233 = add i32 %232, %229
  %234 = inttoptr i32 %233 to ptr
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %214) #18, !srcloc !18
  br label %237

237:                                              ; preds = %226, %215, %202, %191, %184, %182, %74, %59, %53, %49
  %238 = phi i32 [ -105, %184 ], [ 0, %215 ], [ 0, %226 ], [ %183, %182 ], [ 0, %202 ], [ 0, %191 ], [ -22, %49 ], [ -22, %53 ], [ -22, %59 ], [ -5, %74 ]
  ret i32 %238
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_cmsg_send(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 11
  br i1 %6, label %7, label %57

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %43, %11
  %14 = phi i32 [ %5, %11 ], [ %46, %43 ]
  %15 = phi i1 [ false, %11 ], [ %47, %43 ]
  %16 = phi ptr [ %9, %11 ], [ %50, %43 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 11
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load ptr, ptr %12, align 8
  %21 = ptrtoint ptr %16 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %14, %21
  %24 = add i32 %23, %22
  %25 = icmp ugt i32 %17, %24
  br i1 %25, label %60, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cmsghdr, ptr %16, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 17
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cmsghdr, ptr %16, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 103
  %34 = icmp eq i32 %17, 14
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %16, i32 12
  %38 = load i16, ptr %37, align 2
  store i16 %38, ptr %2, align 2
  %39 = load ptr, ptr %12, align 8
  %40 = load i32, ptr %4, align 8
  %41 = load i32, ptr %16, align 4
  %42 = ptrtoint ptr %39 to i32
  br label %43

43:                                               ; preds = %36, %26
  %44 = phi i32 [ %42, %36 ], [ %22, %26 ]
  %45 = phi i32 [ %41, %36 ], [ %17, %26 ]
  %46 = phi i32 [ %40, %36 ], [ %14, %26 ]
  %47 = phi i1 [ %15, %36 ], [ true, %26 ]
  %48 = add i32 %45, 3
  %49 = and i32 %48, -4
  %50 = getelementptr i8, ptr %16, i32 %49
  %51 = getelementptr %struct.cmsghdr, ptr %50, i32 1
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %52, %44
  %54 = icmp ugt i32 %53, %46
  %55 = icmp eq ptr %50, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %13

57:                                               ; preds = %43, %7, %3
  %58 = phi i1 [ false, %7 ], [ false, %3 ], [ %47, %43 ]
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %57, %30, %19, %13
  %61 = phi i32 [ %59, %57 ], [ -22, %19 ], [ -22, %13 ], [ -22, %30 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.ipcm_cookie, align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.ip_options_data, align 4
  %8 = alloca %struct.inet_cork, align 8
  %9 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store ptr null, ptr %6, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 136
  %13 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 2
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 32768
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !9
  %23 = icmp ugt i32 %2, 65535
  br i1 %23, label %413, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %413

29:                                               ; preds = %24
  %30 = select i1 %12, ptr @udplite_getfrag, ptr @ip_generic_getfrag
  %31 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %32 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %36 = load i32, ptr %32, align 64
  switch i32 %36, label %37 [
    i32 0, label %38
    i32 2, label %313
  ], !prof !33

37:                                               ; preds = %35
  tail call void @release_sock(ptr noundef %0) #18
  br label %413

38:                                               ; preds = %35
  tail call void @release_sock(ptr noundef %0) #18
  br label %39

39:                                               ; preds = %38, %29
  %40 = add nuw nsw i32 %2, 8
  %41 = icmp eq ptr %9, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, 16
  br i1 %45, label %413, label %46

46:                                               ; preds = %42
  %47 = load i16, ptr %9, align 4
  switch i16 %47, label %413 [
    i16 2, label %48
    i16 0, label %48
  ]

48:                                               ; preds = %46, %46
  %49 = getelementptr inbounds %struct.sockaddr_in, ptr %9, i32 0, i32 2
  %50 = getelementptr inbounds %struct.sockaddr_in, ptr %9, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %413, label %60

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %55 = load volatile i8, ptr %54, align 2
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %57, label %413

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %59 = load i16, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = phi i16 [ %51, %48 ], [ %59, %57 ]
  %62 = phi ptr [ %49, %48 ], [ %0, %57 ]
  %63 = phi i32 [ 0, %48 ], [ 1, %57 ]
  %64 = load i32, ptr %62, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(30) %5, i8 0, i32 30, i1 false) #18
  %65 = getelementptr inbounds i8, ptr %5, i32 30
  store i16 -1, ptr %65, align 2
  %66 = getelementptr inbounds i8, ptr %5, i32 32
  store i64 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.sockcm_cookie, ptr %5, i32 0, i32 1
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %71 = load i16, ptr %70, align 8
  %72 = getelementptr inbounds %struct.sockcm_cookie, ptr %5, i32 0, i32 2
  store i16 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 1
  store i32 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 6
  %80 = load volatile i16, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 7
  store i16 %80, ptr %81, align 2
  %82 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %60
  %86 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  br label %108

87:                                               ; preds = %60
  %88 = call i32 @udp_cmsg_send(ptr undef, ptr noundef %1, ptr noundef %81)
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %92 = load i16, ptr %91, align 8
  %93 = icmp eq i16 %92, 10
  %94 = call i32 @ip_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i1 noundef zeroext %93) #18
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i32 [ %94, %90 ], [ %88, %87 ]
  %97 = icmp slt i32 %96, 0
  %98 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  br i1 %97, label %100, label %101, !prof !12

100:                                              ; preds = %95
  call void @kfree(ptr noundef %99) #18
  br label %413

101:                                              ; preds = %95
  %102 = icmp ne ptr %99, null
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  %105 = icmp eq ptr %99, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %78, align 8
  store i32 %64, ptr %78, align 8
  br label %124

108:                                              ; preds = %101, %85
  %109 = phi ptr [ %86, %85 ], [ %104, %101 ]
  %110 = phi i32 [ 0, %85 ], [ %103, %101 ]
  %111 = phi i32 [ %63, %85 ], [ 0, %101 ]
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %112 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.ip_options_rcu, ptr %113, i32 0, i32 1, i32 2
  %117 = load i8, ptr %116, align 4
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %118, 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %7, ptr noundef nonnull align 4 %113, i32 %119, i1 false)
  store ptr %7, ptr %109, align 8
  br label %120

120:                                              ; preds = %115, %108
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  %121 = load ptr, ptr %109, align 8
  %122 = load i32, ptr %78, align 8
  store i32 %64, ptr %78, align 8
  %123 = icmp eq ptr %121, null
  br i1 %123, label %137, label %124

124:                                              ; preds = %120, %106
  %125 = phi i32 [ %103, %106 ], [ %110, %120 ]
  %126 = phi i32 [ 0, %106 ], [ %111, %120 ]
  %127 = phi i32 [ %107, %106 ], [ %122, %120 ]
  %128 = phi ptr [ %99, %106 ], [ %121, %120 ]
  %129 = getelementptr inbounds %struct.ip_options_rcu, ptr %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.ip_options_rcu, ptr %128, i32 0, i32 1, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %124
  %134 = icmp eq i32 %64, 0
  br i1 %134, label %358, label %135

135:                                              ; preds = %133
  %136 = load i32, ptr %129, align 4
  br label %137

137:                                              ; preds = %135, %124, %120
  %138 = phi i32 [ %125, %135 ], [ %125, %124 ], [ %110, %120 ]
  %139 = phi i1 [ false, %135 ], [ false, %124 ], [ true, %120 ]
  %140 = phi i32 [ %127, %135 ], [ %127, %124 ], [ %122, %120 ]
  %141 = phi ptr [ %128, %135 ], [ %128, %124 ], [ null, %120 ]
  %142 = phi i32 [ %136, %135 ], [ %64, %124 ], [ %64, %120 ]
  %143 = phi i32 [ 0, %135 ], [ %126, %124 ], [ %111, %120 ]
  %144 = load i16, ptr %65, align 2
  %145 = icmp eq i16 %144, -1
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = trunc i16 %144 to i8
  br label %151

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %150 = load i8, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %146
  %152 = phi i8 [ %147, %146 ], [ %150, %148 ]
  %153 = and i8 %152, 30
  %154 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %155, 8192
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load i32, ptr %25, align 4
  %160 = and i32 %159, 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  br i1 %139, label %170, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.ip_options_rcu, ptr %141, i32 0, i32 1, i32 6
  %165 = load i8, ptr %164, align 4
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163, %158, %151
  %169 = or i8 %153, 1
  br label %170

170:                                              ; preds = %168, %163, %162
  %171 = phi i8 [ %169, %168 ], [ %153, %163 ], [ %153, %162 ]
  %172 = phi i32 [ 0, %168 ], [ %143, %163 ], [ %143, %162 ]
  %173 = and i32 %64, 240
  %174 = icmp eq i32 %173, 224
  %175 = load i32, ptr %75, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %174, label %177, label %186

177:                                              ; preds = %170
  br i1 %176, label %178, label %181

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  %180 = load i32, ptr %179, align 8
  store i32 %180, ptr %75, align 4
  br label %181

181:                                              ; preds = %178, %177
  %182 = icmp eq i32 %140, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 17
  %185 = load i32, ptr %184, align 4
  br label %195

186:                                              ; preds = %170
  br i1 %176, label %187, label %190

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 15
  %189 = load i32, ptr %188, align 4
  store i32 %189, ptr %75, align 4
  br label %190

190:                                              ; preds = %187, %186
  %191 = icmp eq i32 %172, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %190
  %193 = call ptr @sk_dst_check(ptr noundef %0, i32 noundef 0) #18
  store ptr %193, ptr %6, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %271

195:                                              ; preds = %192, %190, %183, %181
  %196 = phi i32 [ %140, %192 ], [ %140, %181 ], [ %185, %183 ], [ %140, %190 ]
  %197 = phi i1 [ false, %192 ], [ true, %181 ], [ true, %183 ], [ true, %190 ]
  %198 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %199 = load i16, ptr %198, align 8
  %200 = and i16 %199, 40
  %201 = icmp ne i16 %200, 0
  %202 = zext i1 %201 to i8
  %203 = load i32, ptr %75, align 4
  %204 = load i32, ptr %69, align 8
  %205 = load i16, ptr %10, align 4
  %206 = trunc i16 %205 to i8
  %207 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %208 = load i16, ptr %207, align 8
  %209 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %210 = load i32, ptr %209, align 4
  store i32 %203, ptr %4, align 8
  %211 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 1
  store i32 1, ptr %211, align 4
  %212 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  store i32 %204, ptr %212, align 8
  %213 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  store i8 %171, ptr %213, align 4
  %214 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 4
  store i8 0, ptr %214, align 1
  %215 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 5
  store i8 %206, ptr %215, align 2
  %216 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 6
  store i8 %202, ptr %216, align 1
  %217 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 7
  store i32 0, ptr %217, align 8
  %218 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 9
  store i64 0, ptr %218, align 8
  %219 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 8
  store i32 %210, ptr %219, align 4
  %220 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  store i32 %142, ptr %220, align 4
  %221 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  store i32 %196, ptr %221, align 8
  %222 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 3
  store i16 %61, ptr %222, align 8
  %223 = getelementptr inbounds %struct.anon.123, ptr %222, i32 0, i32 1
  store i16 %208, ptr %223, align 2
  %224 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 10
  store i32 0, ptr %224, align 8
  %225 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef %0) #18
  store ptr %225, ptr %6, align 4
  %226 = icmp ugt ptr %225, inttoptr (i32 -4096 to ptr)
  br i1 %226, label %227, label %250

227:                                              ; preds = %195
  %228 = ptrtoint ptr %225 to i32
  store ptr null, ptr %6, align 4
  %229 = icmp eq ptr %225, inttoptr (i32 -101 to ptr)
  br i1 %229, label %230, label %354

230:                                              ; preds = %227
  %231 = tail call ptr @llvm.thread.pointer() #18
  %232 = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 1
  %233 = load volatile i32, ptr %232, align 4
  %234 = add i32 %233, 512
  store volatile i32 %234, ptr %232, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  %235 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %236 = ptrtoint ptr %235 to i32
  %237 = call i32 @llvm.read_register.i32(metadata !0) #18
  %238 = inttoptr i32 %237 to ptr
  %239 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %238) #14, !srcloc !17
  %240 = add i32 %239, %236
  %241 = inttoptr i32 %240 to ptr
  %242 = getelementptr inbounds %struct.ipstats_mib, ptr %241, i32 0, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, 1
  store i32 %244, ptr %242, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !25
  %245 = getelementptr [37 x i64], ptr %241, i32 0, i32 15
  %246 = load i64, ptr %245, align 8
  %247 = add i64 %246, 1
  store i64 %247, ptr %245, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !26
  %248 = load i32, ptr %242, align 4
  %249 = add i32 %248, 1
  store i32 %249, ptr %242, align 4
  call fastcc void @local_bh_enable()
  br label %354

250:                                              ; preds = %195
  %251 = getelementptr inbounds %struct.rtable, ptr %225, i32 0, i32 2
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 268435456
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load volatile i32, ptr %154, align 4
  %257 = and i32 %256, 64
  %258 = icmp eq i32 %257, 0
  %259 = or i1 %197, %258
  br i1 %259, label %270, label %261

260:                                              ; preds = %250
  br i1 %197, label %271, label %261

261:                                              ; preds = %260, %255
  %262 = call fastcc ptr @dst_clone(ptr noundef %225)
  %263 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %263, align 4
  %264 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %264, align 4
  %265 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %266 = ptrtoint ptr %225 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %265) #18, !srcloc !10
  %267 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %266, ptr %265) #18, !srcloc !36
  %268 = extractvalue { i32, i32 } %267, 0
  %269 = inttoptr i32 %268 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  call void @dst_release(ptr noundef %269) #18
  br label %271

270:                                              ; preds = %255
  br i1 %258, label %354, label %271

271:                                              ; preds = %270, %261, %260, %192
  %272 = phi ptr [ %193, %192 ], [ %225, %270 ], [ %225, %261 ], [ %225, %260 ]
  %273 = phi ptr [ %31, %192 ], [ %4, %270 ], [ %4, %261 ], [ %4, %260 ]
  %274 = load i32, ptr %25, align 4
  %275 = and i32 %274, 2064
  %276 = icmp eq i32 %275, 2064
  br i1 %276, label %397, label %277

277:                                              ; preds = %408, %271
  %278 = phi i32 [ %410, %408 ], [ %274, %271 ]
  %279 = getelementptr inbounds %struct.flowi4, ptr %273, i32 0, i32 1
  %280 = load i32, ptr %279, align 8
  %281 = load i32, ptr %78, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.flowi4, ptr %273, i32 0, i32 2
  %285 = load i32, ptr %284, align 4
  store i32 %285, ptr %78, align 8
  br label %286

286:                                              ; preds = %283, %277
  %287 = phi i32 [ %64, %277 ], [ %285, %283 ]
  br i1 %22, label %298, label %288

288:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i32 48, i1 false), !annotation !9
  %289 = call ptr @ip_make_skb(ptr noundef %0, ptr noundef %273, ptr noundef nonnull %30, ptr noundef %1, i32 noundef %40, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %278) #18
  %290 = ptrtoint ptr %289 to i32
  %291 = icmp eq ptr %289, null
  %292 = icmp ugt ptr %289, inttoptr (i32 -4096 to ptr)
  %293 = or i1 %291, %292
  br i1 %293, label %296, label %294

294:                                              ; preds = %288
  %295 = call fastcc i32 @udp_send_skb(ptr noundef nonnull %289, ptr noundef %273, ptr noundef nonnull %8)
  br label %296

296:                                              ; preds = %294, %288
  %297 = phi i32 [ %290, %288 ], [ %295, %294 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  br label %354

298:                                              ; preds = %286
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %299 = load i32, ptr %32, align 64
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %302, label %301, !prof !13

301:                                              ; preds = %298
  call void @release_sock(ptr noundef %0) #18
  br label %354

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %287, ptr %303, align 4
  %304 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  store i32 %280, ptr %304, align 8
  %305 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i16 %61, ptr %305, align 8
  %306 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %307 = load i16, ptr %306, align 8
  %308 = getelementptr inbounds %struct.anon.123, ptr %305, i32 0, i32 1
  store i16 %307, ptr %308, align 2
  store i32 2, ptr %32, align 64
  %309 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  %310 = load i16, ptr %309, align 2
  %311 = trunc i32 %40 to i16
  %312 = add i16 %310, %311
  store i16 %312, ptr %309, align 2
  br label %318

313:                                              ; preds = %35
  %314 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  %315 = load i16, ptr %314, align 2
  %316 = trunc i32 %2 to i16
  %317 = add i16 %315, %316
  store i16 %317, ptr %314, align 2
  br i1 %22, label %318, label %326

318:                                              ; preds = %313, %302
  %319 = phi ptr [ %309, %302 ], [ %314, %313 ]
  %320 = phi i32 [ %40, %302 ], [ %2, %313 ]
  %321 = phi i32 [ %138, %302 ], [ 0, %313 ]
  %322 = load i32, ptr %25, align 4
  %323 = or i32 %322, 32768
  %324 = call i32 @ip_append_data(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %30, ptr noundef %1, i32 noundef %320, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %323) #18
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %346, label %330

326:                                              ; preds = %313
  %327 = load i32, ptr %25, align 4
  %328 = call i32 @ip_append_data(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %30, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %327) #18
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %326, %318
  %331 = phi i32 [ %328, %326 ], [ %324, %318 ]
  %332 = phi i32 [ 0, %326 ], [ %321, %318 ]
  %333 = phi ptr [ %314, %326 ], [ %319, %318 ]
  %334 = load i32, ptr %32, align 64
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %351, label %336

336:                                              ; preds = %330
  store i16 0, ptr %333, align 2
  store i32 0, ptr %32, align 64
  call void @ip_flush_pending_frames(ptr noundef %0) #18
  br label %351

337:                                              ; preds = %326
  %338 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %339 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %340 = call ptr @__ip_make_skb(ptr noundef %0, ptr noundef %31, ptr noundef %338, ptr noundef %339) #18
  %341 = icmp eq ptr %340, null
  br i1 %341, label %344, label %342

342:                                              ; preds = %337
  %343 = call fastcc i32 @udp_send_skb(ptr noundef nonnull %340, ptr noundef %31, ptr noundef %339) #18
  br label %344

344:                                              ; preds = %342, %337
  %345 = phi i32 [ %343, %342 ], [ 0, %337 ]
  store i16 0, ptr %314, align 2
  store i32 0, ptr %32, align 64
  br label %351

346:                                              ; preds = %318
  %347 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, %347
  br i1 %349, label %350, label %351, !prof !12

350:                                              ; preds = %346
  store i32 0, ptr %32, align 64
  br label %351

351:                                              ; preds = %350, %346, %344, %336, %330
  %352 = phi i32 [ %321, %350 ], [ %321, %346 ], [ 0, %344 ], [ %332, %330 ], [ %332, %336 ]
  %353 = phi i32 [ 0, %350 ], [ 0, %346 ], [ %345, %344 ], [ %331, %330 ], [ %331, %336 ]
  call void @release_sock(ptr noundef %0) #18
  br label %354

354:                                              ; preds = %408, %351, %301, %296, %270, %230, %227
  %355 = phi i32 [ %353, %351 ], [ -22, %301 ], [ %297, %296 ], [ -13, %270 ], [ 0, %408 ], [ -101, %230 ], [ %228, %227 ]
  %356 = phi i32 [ %352, %351 ], [ %138, %301 ], [ %138, %296 ], [ %138, %270 ], [ %138, %408 ], [ %138, %230 ], [ %138, %227 ]
  %357 = load ptr, ptr %6, align 4
  call void @dst_release(ptr noundef %357) #18
  br label %358

358:                                              ; preds = %354, %133
  %359 = phi i32 [ %355, %354 ], [ -22, %133 ]
  %360 = phi i32 [ %356, %354 ], [ %125, %133 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.ipcm_cookie, ptr %5, i32 0, i32 3
  %364 = load ptr, ptr %363, align 8
  call void @kfree(ptr noundef %364) #18
  br label %365

365:                                              ; preds = %362, %358
  switch i32 %359, label %366 [
    i32 0, label %413
    i32 -105, label %373
  ]

366:                                              ; preds = %365
  %367 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %368 = load ptr, ptr %367, align 8
  %369 = getelementptr inbounds %struct.socket, ptr %368, i32 0, i32 2
  %370 = load volatile i32, ptr %369, align 4
  %371 = and i32 %370, 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %413, label %373

373:                                              ; preds = %366, %365
  %374 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %12, label %375, label %386

375:                                              ; preds = %373
  %376 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %377 = getelementptr [10 x i32], ptr %376, i32 0, i32 6
  %378 = ptrtoint ptr %377 to i32
  %379 = call i32 @llvm.read_register.i32(metadata !0) #18
  %380 = inttoptr i32 %379 to ptr
  %381 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %380) #14, !srcloc !17
  %382 = add i32 %381, %378
  %383 = inttoptr i32 %382 to ptr
  %384 = load i32, ptr %383, align 4
  %385 = add i32 %384, 1
  store i32 %385, ptr %383, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %374) #18, !srcloc !18
  br label %413

386:                                              ; preds = %373
  %387 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %388 = getelementptr [10 x i32], ptr %387, i32 0, i32 6
  %389 = ptrtoint ptr %388 to i32
  %390 = call i32 @llvm.read_register.i32(metadata !0) #18
  %391 = inttoptr i32 %390 to ptr
  %392 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %391) #14, !srcloc !17
  %393 = add i32 %392, %389
  %394 = inttoptr i32 %393 to ptr
  %395 = load i32, ptr %394, align 4
  %396 = add i32 %395, 1
  store i32 %396, ptr %394, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %374) #18, !srcloc !18
  br label %413

397:                                              ; preds = %271
  %398 = getelementptr inbounds %struct.dst_entry, ptr %272, i32 0, i32 1
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr inbounds %struct.dst_ops, ptr %399, i32 0, i32 15
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %408, label %403

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.flowi4, ptr %273, i32 0, i32 2
  call void %401(ptr noundef %272, ptr noundef %404) #18
  %405 = load i32, ptr %25, align 4
  %406 = and i32 %405, 16
  %407 = icmp eq i32 %406, 0
  br label %408

408:                                              ; preds = %403, %397
  %409 = phi i1 [ %407, %403 ], [ false, %397 ]
  %410 = phi i32 [ %405, %403 ], [ %274, %397 ]
  %411 = icmp ne i32 %2, 0
  %412 = or i1 %411, %409
  br i1 %412, label %277, label %354

413:                                              ; preds = %386, %375, %366, %365, %100, %53, %48, %46, %42, %37, %24, %21
  %414 = phi i32 [ -22, %37 ], [ %96, %100 ], [ -90, %21 ], [ -95, %24 ], [ -22, %42 ], [ -97, %46 ], [ -22, %48 ], [ -89, %53 ], [ %2, %365 ], [ %359, %375 ], [ %359, %386 ], [ %359, %366 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  ret i32 %414
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udplite_getfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #5 {
  %7 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %8 = icmp slt i32 %3, 0
  %9 = load i1, ptr @check_copy_size.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %6
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %13

13:                                               ; preds = %12, %6
  br i1 %8, label %16, label %14, !prof !12

14:                                               ; preds = %13
  %15 = tail call i32 @_copy_from_iter(ptr noundef %1, i32 noundef %3, ptr noundef %7) #18
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %15, %14 ], [ 0, %13 ]
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %20, label %19, !prof !13

19:                                               ; preds = %16
  tail call void @iov_iter_revert(ptr noundef %7, i32 noundef %17) #18
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ 0, %16 ], [ -14, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_cmsg_send(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dst_clone(ptr noundef returned %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !39
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !40
  br label %10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 231, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %8, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_make_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.msghdr, align 8
  %7 = lshr i32 %4, 2
  %8 = and i32 %7, 32768
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = or i32 %4, 32768
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  %15 = getelementptr inbounds %struct.msghdr, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store i32 %14, ptr %15, align 4
  %16 = call i32 @udp_sendmsg(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0)
  %17 = icmp slt i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  br i1 %17, label %62, label %18

18:                                               ; preds = %13, %5
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %19 = load i32, ptr %10, align 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %18
  call void @release_sock(ptr noundef %0) #18
  br label %62

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %24 = call i32 @ip_append_page(ptr noundef %0, ptr noundef %23, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %9) #18
  %25 = icmp eq i32 %24, -95
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  call void @release_sock(ptr noundef %0) #18
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @sock_no_sendpage(ptr noundef %28, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %9) #18
  br label %62

30:                                               ; preds = %22
  %31 = icmp slt i32 %24, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = load i32, ptr %10, align 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  store i16 0, ptr %36, align 2
  store i32 0, ptr %10, align 64
  call void @ip_flush_pending_frames(ptr noundef %0) #18
  br label %60

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  %39 = load i16, ptr %38, align 2
  %40 = trunc i32 %3 to i16
  %41 = add i16 %39, %40
  store i16 %41, ptr %38, align 2
  %42 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 2
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %9, 32768
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %49 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %50 = call ptr @__ip_make_skb(ptr noundef %0, ptr noundef %23, ptr noundef %48, ptr noundef %49) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call fastcc i32 @udp_send_skb(ptr noundef nonnull %50, ptr noundef %23, ptr noundef %49) #18
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %53, %52 ], [ 0, %47 ]
  store i16 0, ptr %38, align 2
  store i32 0, ptr %10, align 64
  br label %56

56:                                               ; preds = %54, %37
  %57 = phi i32 [ %24, %37 ], [ %55, %54 ]
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 %3, i32 %57
  br label %60

60:                                               ; preds = %56, %35, %32
  %61 = phi i32 [ %59, %56 ], [ %24, %32 ], [ %24, %35 ]
  call void @release_sock(ptr noundef %0) #18
  br label %62

62:                                               ; preds = %60, %26, %21, %13
  %63 = phi i32 [ -22, %21 ], [ %29, %26 ], [ %61, %60 ], [ %16, %13 ]
  ret i32 %63
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_skb_destructor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %3) #18, !srcloc !41
  %4 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2147483647
  tail call fastcc void @udp_rmem_release(ptr noundef %0, i32 noundef %6, i32 noundef 1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udp_rmem_release(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 16
  %8 = add i32 %7, %1
  br i1 %5, label %18, label %9, !prof !12

9:                                                ; preds = %4
  store i32 %8, ptr %6, align 16
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = ashr i32 %11, 2
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %55

18:                                               ; preds = %14, %9, %4
  %19 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 18
  store i32 0, ptr %19, align 16
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  br i1 %3, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %22) #18
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %8
  %27 = sub i32 %26, %2
  %28 = and i32 %27, -4096
  %29 = sub i32 %26, %28
  store i32 %29, ptr %24, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = ashr i32 %27, 12
  tail call void @__sk_mem_reduce_allocated(ptr noundef %0, i32 noundef %32) #18
  br label %33

33:                                               ; preds = %31, %23
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #18, !srcloc !10
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 %8, ptr elementtype(i32) %34) #18, !srcloc !29
  %36 = load ptr, ptr %20, align 4
  %37 = icmp eq ptr %36, %20
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  %40 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.anon.43, ptr %36, i32 0, i32 1
  store volatile ptr %41, ptr %44, align 4
  store volatile ptr %36, ptr %41, align 8
  store volatile ptr %39, ptr %43, align 8
  store volatile ptr %43, ptr %40, align 4
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %46
  store i32 %49, ptr %47, align 4
  store ptr %20, ptr %20, align 4
  store ptr %20, ptr %42, align 4
  store i32 0, ptr %45, align 4
  br label %50

50:                                               ; preds = %38, %33
  br i1 %3, label %55, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %55

55:                                               ; preds = %51, %50, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__udp_enqueue_schedule_skb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %97, label %9

9:                                                ; preds = %2
  %10 = ashr i32 %7, 1
  %11 = icmp sgt i32 %5, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  tail call void @skb_condense(ptr noundef %1) #18
  %13 = load ptr, ptr @udp_busylocks, align 4
  %14 = load i32, ptr @udp_busylocks_log, align 4
  %15 = ptrtoint ptr %0 to i32
  %16 = mul i32 %15, 1640531527
  %17 = sub i32 32, %14
  %18 = lshr i32 %16, %17
  %19 = getelementptr %struct.spinlock, ptr %13, i32 %18
  tail call void @_raw_spin_lock(ptr noundef %19) #18
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi ptr [ %19, %12 ], [ null, %9 ]
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = and i8 %26, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %33 = load ptr, ptr %32, align 8
  tail call void @__skb_ext_put(ptr noundef %33) #18
  store i8 0, ptr %25, align 1
  %34 = load i32, ptr %24, align 4
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi i32 [ %34, %31 ], [ %23, %20 ]
  %37 = or i32 %36, -2147483648
  store i32 %37, ptr %24, align 4
  br label %38

38:                                               ; preds = %35, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !10
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %23, ptr elementtype(i32) %4) #18, !srcloc !43
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !44
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, %23
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %93, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %45) #18
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %23, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = add i32 %23, 4095
  %51 = ashr i32 %50, 12
  %52 = and i32 %50, -4096
  %53 = tail call i32 @__sk_mem_raise_allocated(ptr noundef %0, i32 noundef %52, i32 noundef %51, i32 noundef 1) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %56 = load i16, ptr %45, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %93

58:                                               ; preds = %49
  %59 = load i32, ptr %46, align 4
  %60 = add i32 %59, %52
  br label %61

61:                                               ; preds = %58, %44
  %62 = phi i32 [ %60, %58 ], [ %47, %44 ]
  %63 = sub i32 %62, %23
  store i32 %63, ptr %46, align 4
  %64 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 131072
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  %70 = load volatile i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i32 [ %70, %68 ], [ 0, %61 ]
  %73 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 44
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  store volatile ptr %3, ptr %1, align 8
  %76 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 1
  store volatile ptr %75, ptr %76, align 4
  store volatile ptr %1, ptr %74, align 4
  store volatile ptr %1, ptr %75, align 4
  %77 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store volatile i32 %79, ptr %77, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %80 = load i16, ptr %45, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %82 = load volatile i32, ptr %64, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef %0) #18
  br label %88

88:                                               ; preds = %85, %71
  %89 = icmp eq ptr %21, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %91 = load i16, ptr %21, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %106

93:                                               ; preds = %55, %38
  %94 = phi i32 [ -12, %38 ], [ -105, %55 ]
  %95 = load i32, ptr %22, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !10
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %95, ptr elementtype(i32) %4) #18, !srcloc !29
  br label %97

97:                                               ; preds = %93, %2
  %98 = phi i32 [ -12, %2 ], [ %94, %93 ]
  %99 = phi ptr [ null, %2 ], [ %21, %93 ]
  %100 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #18, !srcloc !10
  %101 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #18, !srcloc !28
  %102 = icmp eq ptr %99, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %104 = load i16, ptr %99, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %106

106:                                              ; preds = %103, %97, %90, %88
  %107 = phi i32 [ 0, %88 ], [ 0, %90 ], [ %98, %97 ], [ %98, %103 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_condense(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_raise_allocated(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_destruct_sock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.43, ptr %4, i32 0, i32 1
  store volatile ptr %8, ptr %11, align 4
  store volatile ptr %4, ptr %8, align 8
  store volatile ptr %3, ptr %10, align 8
  store volatile ptr %10, ptr %7, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4
  store ptr %2, ptr %2, align 4
  store ptr %2, ptr %9, align 4
  store i32 0, ptr %12, align 4
  br label %17

17:                                               ; preds = %6, %1
  %18 = load ptr, ptr %3, align 4
  %19 = icmp eq ptr %18, %3
  %20 = icmp eq ptr %18, null
  %21 = or i1 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi ptr [ %18, %22 ], [ %36, %24 ]
  %26 = phi i32 [ 0, %22 ], [ %35, %24 ]
  %27 = load i32, ptr %23, align 4
  %28 = add i32 %27, -1
  store volatile i32 %28, ptr %23, align 4
  %29 = load ptr, ptr %25, align 8
  %30 = getelementptr inbounds %struct.anon.43, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr null, ptr %30, align 4
  store ptr null, ptr %25, align 8
  %32 = getelementptr inbounds %struct.anon.43, ptr %29, i32 0, i32 1
  store volatile ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 18
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %26
  tail call void @kfree_skb_reason(ptr noundef nonnull %25, i32 noundef 0) #18
  %36 = load ptr, ptr %3, align 4
  %37 = icmp eq ptr %36, %3
  %38 = icmp eq ptr %36, null
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %24

40:                                               ; preds = %24, %17
  %41 = phi i32 [ 0, %17 ], [ %35, %24 ]
  %42 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 18
  %43 = load i32, ptr %42, align 16
  %44 = add i32 %43, %41
  store i32 0, ptr %42, align 16
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = and i32 %47, 4095
  store i32 %48, ptr %45, align 4
  %49 = icmp ult i32 %47, 4096
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = ashr i32 %47, 12
  tail call void @__sk_mem_reduce_allocated(ptr noundef %0, i32 noundef %51) #18
  br label %52

52:                                               ; preds = %50, %40
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #18, !srcloc !10
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 %44, ptr elementtype(i32) %53) #18, !srcloc !29
  %55 = load ptr, ptr %2, align 4
  %56 = icmp eq ptr %55, %2
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.anon.43, ptr %55, i32 0, i32 1
  store volatile ptr %59, ptr %62, align 4
  store volatile ptr %55, ptr %59, align 8
  store volatile ptr %3, ptr %61, align 8
  store volatile ptr %61, ptr %58, align 4
  %63 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %64
  store i32 %67, ptr %65, align 4
  store ptr %2, ptr %2, align 4
  store ptr %2, ptr %60, align 4
  store i32 0, ptr %63, align 4
  br label %68

68:                                               ; preds = %57, %52
  tail call void @inet_sock_destruct(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sock_destruct(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @udp_init_sock(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 2
  store i32 0, ptr %3, align 4
  store ptr %2, ptr %2, align 4
  %4 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 0, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 80
  store ptr @udp_destruct_sock, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_consume_udp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %18, !prof !12

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @__lock_sock_fast(ptr noundef %0) #18
  %9 = load volatile i32, ptr %4, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %14, !prof !12

11:                                               ; preds = %7
  %12 = sub i32 %9, %2
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0) #18
  store volatile i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %11, %7
  br i1 %8, label %15, label %16

15:                                               ; preds = %14
  tail call void @release_sock(ptr noundef %0) #18
  br label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #18
  br label %18

18:                                               ; preds = %16, %15, %3
  %19 = icmp eq ptr %1, null
  br i1 %19, label %33, label %20, !prof !12

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25, !prof !13

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !45
  br label %27

25:                                               ; preds = %20
  %26 = tail call fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %21) #18
  br i1 %26, label %27, label %33, !prof !12

27:                                               ; preds = %25, %24
  %28 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %32, !prof !12

31:                                               ; preds = %27
  tail call void @skb_release_head_state(ptr noundef nonnull %1) #18
  br label %32

32:                                               ; preds = %31, %27
  tail call void @__consume_stateless_skb(ptr noundef nonnull %1) #18
  br label %33

33:                                               ; preds = %32, %25, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_release_head_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__consume_stateless_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %25 [
    i32 21521, label %4
    i32 21531, label %15
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %6 = load volatile i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = inttoptr i32 %2 to ptr
  %9 = tail call ptr @llvm.thread.pointer() #18
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #14, !srcloc !46
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %7, i32 -1090519041) #18, !srcloc !49
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  br label %25

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @first_packet_length(ptr noundef %0)
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = inttoptr i32 %2 to ptr
  %19 = tail call ptr @llvm.thread.pointer() #18
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #14, !srcloc !46
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %18, i32 %17, i32 -1090519041) #18, !srcloc !50
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  br label %25

25:                                               ; preds = %15, %4, %3
  %26 = phi i32 [ %24, %15 ], [ %14, %4 ], [ -515, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @first_packet_length(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #18
  %6 = call fastcc ptr @__first_packet_length(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load volatile ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %12) #18
  %13 = load ptr, ptr %4, align 4
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.anon.43, ptr %13, i32 0, i32 1
  store volatile ptr %17, ptr %20, align 4
  store volatile ptr %13, ptr %17, align 8
  store volatile ptr %3, ptr %19, align 8
  store volatile ptr %19, ptr %16, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 4
  store ptr %4, ptr %4, align 4
  store ptr %4, ptr %18, align 4
  store i32 0, ptr %21, align 4
  br label %26

26:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %27 = load i16, ptr %12, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %29 = call fastcc ptr @__first_packet_length(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %1
  %32 = phi ptr [ %29, %26 ], [ %6, %1 ]
  %33 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  br label %35

35:                                               ; preds = %31, %26, %8
  %36 = phi i32 [ %34, %31 ], [ -1, %26 ], [ -1, %8 ]
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @udp_rmem_release(ptr noundef %0, i32 noundef %37, i32 noundef 1, i1 noundef zeroext false)
  br label %40

40:                                               ; preds = %39, %35
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__skb_recv_udp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 0, i32 64
  %13 = or i32 %12, %1
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 62
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi ptr [ null, %5 ], [ @sk_busy_loop_end, %16 ]
  %21 = phi i32 [ 0, %5 ], [ %18, %16 ]
  store i32 %21, ptr %7, align 4
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %23 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 2
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  %25 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %28 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17, i32 1
  %29 = and i32 %1, 2
  %30 = icmp ne i32 %29, 0
  %31 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 18
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %35 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 13
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 56
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 57
  br label %39

39:                                               ; preds = %140, %19
  %40 = load i32, ptr %22, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42, !prof !13

42:                                               ; preds = %39
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !51
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #18, !srcloc !10
  %43 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %22) #18, !srcloc !36
  %44 = extractvalue { i32, i32 } %43, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !52
  %45 = sub i32 0, %44
  store i32 %45, ptr %8, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %143

47:                                               ; preds = %42, %39
  store i32 -11, ptr %8, align 4
  br label %48

48:                                               ; preds = %134, %47
  call void @_raw_spin_lock_bh(ptr noundef %23) #18
  %49 = call ptr @__skb_try_recv_from_queue(ptr noundef %0, ptr noundef %10, i32 noundef %13, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = icmp eq i32 %29, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %54) #18, !srcloc !41
  %55 = getelementptr inbounds %struct.anon.43, ptr %49, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 2147483647
  call fastcc void @udp_rmem_release(ptr noundef %0, i32 noundef %57, i32 noundef 1, i1 noundef zeroext false) #18
  br label %58

58:                                               ; preds = %53, %51
  call void @_raw_spin_unlock_bh(ptr noundef %23) #18
  br label %145

59:                                               ; preds = %48
  %60 = load volatile ptr, ptr %9, align 4
  %61 = icmp eq ptr %60, %9
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @_raw_spin_unlock_bh(ptr noundef %23) #18
  br label %113

63:                                               ; preds = %59
  call void @_raw_spin_lock(ptr noundef %24) #18
  %64 = load ptr, ptr %9, align 4
  %65 = icmp eq ptr %64, %9
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %25, align 4
  %68 = load ptr, ptr %26, align 4
  %69 = getelementptr inbounds %struct.anon.43, ptr %64, i32 0, i32 1
  store volatile ptr %67, ptr %69, align 4
  store volatile ptr %64, ptr %67, align 8
  store volatile ptr %10, ptr %68, align 8
  store volatile ptr %68, ptr %25, align 4
  %70 = load i32, ptr %27, align 4
  %71 = load i32, ptr %28, align 4
  %72 = add i32 %71, %70
  store i32 %72, ptr %28, align 4
  store ptr %9, ptr %9, align 4
  store ptr %9, ptr %26, align 4
  store i32 0, ptr %27, align 4
  br label %73

73:                                               ; preds = %66, %63
  %74 = call ptr @__skb_try_recv_from_queue(ptr noundef %0, ptr noundef %10, i32 noundef %13, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #18
  %75 = icmp eq ptr %74, null
  %76 = or i1 %30, %75
  br i1 %76, label %110, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 17
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %78) #18, !srcloc !41
  %79 = getelementptr inbounds %struct.anon.43, ptr %74, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 2147483647
  %82 = load i32, ptr %31, align 16
  %83 = add i32 %82, %81
  store i32 %83, ptr %31, align 16
  %84 = load i32, ptr %32, align 4
  %85 = ashr i32 %84, 2
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load ptr, ptr %10, align 4
  %89 = icmp eq ptr %88, %10
  br i1 %89, label %90, label %110

90:                                               ; preds = %87, %77
  store i32 0, ptr %31, align 16
  %91 = load i32, ptr %33, align 4
  %92 = add i32 %91, %83
  %93 = add i32 %92, -1
  %94 = and i32 %93, -4096
  %95 = sub i32 %92, %94
  store i32 %95, ptr %33, align 4
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = ashr i32 %93, 12
  call void @__sk_mem_reduce_allocated(ptr noundef %0, i32 noundef %98) #18
  br label %99

99:                                               ; preds = %97, %90
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #18, !srcloc !10
  %100 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 %83, ptr elementtype(i32) %34) #18, !srcloc !29
  %101 = load ptr, ptr %9, align 4
  %102 = icmp eq ptr %101, %9
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %25, align 4
  %105 = load ptr, ptr %26, align 4
  %106 = getelementptr inbounds %struct.anon.43, ptr %101, i32 0, i32 1
  store volatile ptr %104, ptr %106, align 4
  store volatile ptr %101, ptr %104, align 8
  store volatile ptr %10, ptr %105, align 8
  store volatile ptr %105, ptr %25, align 4
  %107 = load i32, ptr %27, align 4
  %108 = load i32, ptr %28, align 4
  %109 = add i32 %108, %107
  store i32 %109, ptr %28, align 4
  store ptr %9, ptr %9, align 4
  store ptr %9, ptr %26, align 4
  store i32 0, ptr %27, align 4
  br label %110

110:                                              ; preds = %103, %99, %87, %73
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %111 = load i16, ptr %24, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %24, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  call void @_raw_spin_unlock_bh(ptr noundef %23) #18
  br i1 %75, label %113, label %145

113:                                              ; preds = %110, %62
  %114 = load volatile i32, ptr %35, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %113
  %117 = tail call ptr @llvm.thread.pointer() #18
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 256
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137, !prof !13

121:                                              ; preds = %116
  %122 = load volatile i32, ptr %117, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load volatile i32, ptr %36, align 8
  %127 = icmp ugt i32 %126, 16
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load volatile i8, ptr %37, align 8
  %130 = icmp ne i8 %129, 0
  %131 = load volatile i16, ptr %38, align 2
  %132 = icmp eq i16 %131, 0
  %133 = select i1 %132, i16 8, i16 %131
  call void @napi_busy_loop(i32 noundef %126, ptr noundef %20, ptr noundef %0, i1 noundef zeroext %130, i16 noundef zeroext %133) #18
  br label %134

134:                                              ; preds = %128, %125
  %135 = load volatile ptr, ptr %9, align 4
  %136 = icmp eq ptr %135, %9
  br i1 %136, label %137, label %48

137:                                              ; preds = %134, %121, %116, %113
  %138 = load i32, ptr %7, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = call i32 @__skb_wait_for_more_packets(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %9) #18
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %39, label %143

143:                                              ; preds = %140, %137, %42
  %144 = load i32, ptr %8, align 4
  store i32 %144, ptr %4, align 4
  br label %145

145:                                              ; preds = %143, %110, %58
  %146 = phi ptr [ null, %143 ], [ %49, %58 ], [ %74, %110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret ptr %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_try_recv_from_queue(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_wait_for_more_packets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_read_sock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4
  %6 = call ptr @__skb_recv_udp(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.read_descriptor_t, ptr %1, i32 0, i32 1
  br label %14

12:                                               ; preds = %116, %3
  %13 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %122

14:                                               ; preds = %116, %8
  %15 = phi ptr [ %6, %8 ], [ %118, %116 ]
  %16 = phi i32 [ 0, %8 ], [ %117, %116 ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13
  %18 = load i16, ptr %17, align 8
  %19 = lshr i16 %18, 5
  %20 = and i16 %19, 3
  %21 = icmp ne i16 %20, 1
  %22 = icmp sgt i16 %18, -1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %101

24:                                               ; preds = %14
  %25 = icmp eq i16 %20, 3
  br i1 %25, label %26, label %39

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 4
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %31 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %29, %34
  %37 = add i32 %36, %35
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %101

39:                                               ; preds = %26, %24
  %40 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 24
  %41 = load i16, ptr %40, align 8
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %15) #18
  br label %50

48:                                               ; preds = %39
  %49 = call zeroext i16 @__skb_checksum_complete_head(ptr noundef nonnull %15, i32 noundef %42) #18
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i16 [ %47, %46 ], [ %49, %48 ]
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %50
  %54 = load i16, ptr %9, align 4
  %55 = icmp eq i16 %54, 136
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %58 = getelementptr [10 x i32], ptr %57, i32 0, i32 7
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !0) #18
  %61 = inttoptr i32 %60 to ptr
  %62 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #14, !srcloc !17
  %63 = add i32 %62, %59
  br label %72

64:                                               ; preds = %53
  %65 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %66 = getelementptr [10 x i32], ptr %65, i32 0, i32 7
  %67 = ptrtoint ptr %66 to i32
  %68 = call i32 @llvm.read_register.i32(metadata !0) #18
  %69 = inttoptr i32 %68 to ptr
  %70 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #14, !srcloc !17
  %71 = add i32 %70, %67
  br label %72

72:                                               ; preds = %64, %56
  %73 = phi i32 [ %63, %56 ], [ %71, %64 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = load i16, ptr %9, align 4
  %78 = icmp eq i16 %77, 136
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %81 = getelementptr [10 x i32], ptr %80, i32 0, i32 3
  %82 = ptrtoint ptr %81 to i32
  %83 = call i32 @llvm.read_register.i32(metadata !0) #18
  %84 = inttoptr i32 %83 to ptr
  %85 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #14, !srcloc !17
  %86 = add i32 %85, %82
  br label %95

87:                                               ; preds = %72
  %88 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %89 = getelementptr [10 x i32], ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %89 to i32
  %91 = call i32 @llvm.read_register.i32(metadata !0) #18
  %92 = inttoptr i32 %91 to ptr
  %93 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %92) #14, !srcloc !17
  %94 = add i32 %93, %90
  br label %95

95:                                               ; preds = %87, %79
  %96 = phi i32 [ %94, %87 ], [ %86, %79 ]
  %97 = inttoptr i32 %96 to ptr
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #18, !srcloc !10
  %100 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #18, !srcloc !28
  call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #18
  br label %116

101:                                              ; preds = %50, %26, %14
  %102 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 5
  %103 = load i32, ptr %102, align 8
  %104 = call i32 %2(ptr noundef %1, ptr noundef nonnull %15, i32 noundef 0, i32 noundef %103) #18
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = icmp eq i32 %16, 0
  %108 = select i1 %107, i32 %104, i32 %16
  call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #18
  br label %120

109:                                              ; preds = %101
  %110 = load i32, ptr %102, align 8
  %111 = icmp ugt i32 %104, %110
  %112 = select i1 %111, i32 0, i32 %104
  %113 = add i32 %112, %16
  call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #18
  %114 = load i32, ptr %11, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %109, %95
  %117 = phi i32 [ %16, %95 ], [ %113, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4
  %118 = call ptr @__skb_recv_udp(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %119 = icmp eq ptr %118, null
  br i1 %119, label %12, label %14

120:                                              ; preds = %109, %106
  %121 = phi i32 [ %108, %106 ], [ %113, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %122

122:                                              ; preds = %120, %12
  %123 = phi i32 [ %121, %120 ], [ %13, %12 ]
  ret i32 %123
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_lib_checksum_complete(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = lshr i16 %3, 5
  %5 = and i16 %4, 3
  %6 = icmp ne i16 %5, 1
  %7 = icmp sgt i16 %3, -1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = icmp eq i16 %5, 3
  br i1 %10, label %11, label %24

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %14, %19
  %22 = add i32 %21, %20
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %11, %9
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #18
  br label %35

33:                                               ; preds = %24
  %34 = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %0, i32 noundef %27) #18
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i16 [ %32, %31 ], [ %34, %33 ]
  %37 = icmp ne i16 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %35, %11, %1
  %40 = phi i32 [ 0, %11 ], [ %38, %35 ], [ 0, %1 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store i32 0, ptr %9, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 136
  %14 = and i32 %4, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = and i32 %4, 2
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  %20 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %21 = icmp ne i32 %17, 0
  %22 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 17
  br label %25

23:                                               ; preds = %6
  %24 = tail call i32 @ip_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #18
  br label %326

25:                                               ; preds = %322, %16
  br i1 %18, label %28, label %26, !prof !13

26:                                               ; preds = %25
  %27 = load volatile i32, ptr %19, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %27, %26 ], [ 0, %25 ]
  store i32 %29, ptr %8, align 4
  %30 = call ptr @__skb_recv_udp(ptr noundef %0, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, ptr %9, align 4
  br label %326

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = load i32, ptr %8, align 4
  %38 = sub i32 %36, %37
  %39 = icmp ult i32 %38, %2
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = icmp ugt i32 %36, %2
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, ptr %20, align 4
  %44 = or i32 %43, 32
  store i32 %44, ptr %20, align 4
  br label %45

45:                                               ; preds = %42, %40, %34
  %46 = phi i32 [ %2, %42 ], [ %2, %40 ], [ %38, %34 ]
  %47 = icmp ult i32 %46, %36
  %48 = or i1 %21, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  br i1 %13, label %50, label %90

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3, i32 26
  %52 = load i8, ptr %51, align 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %90, label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13
  %56 = load i16, ptr %55, align 8
  %57 = lshr i16 %56, 5
  %58 = and i16 %57, 3
  %59 = icmp ne i16 %58, 1
  %60 = icmp sgt i16 %56, -1
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %113

62:                                               ; preds = %54
  %63 = icmp eq i16 %58, 3
  br i1 %63, label %64, label %77

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 4
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %71 = load ptr, ptr %70, align 8
  %72 = ptrtoint ptr %69 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %67, %72
  %75 = add i32 %74, %73
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %113, label %77

77:                                               ; preds = %64, %62
  %78 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3, i32 24
  %79 = load i16, ptr %78, align 8
  %80 = zext i16 %79 to i32
  %81 = load i32, ptr %35, align 8
  %82 = icmp eq i32 %81, %80
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %30) #18
  br label %87

85:                                               ; preds = %77
  %86 = call zeroext i16 @__skb_checksum_complete_head(ptr noundef nonnull %30, i32 noundef %80) #18
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i16 [ %84, %83 ], [ %86, %85 ]
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %113, label %273

90:                                               ; preds = %50, %49
  %91 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13
  %92 = load i16, ptr %91, align 8
  %93 = lshr i16 %92, 5
  %94 = and i16 %93, 3
  %95 = icmp ne i16 %94, 1
  %96 = icmp sgt i16 %92, -1
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %113

98:                                               ; preds = %90
  %99 = icmp eq i16 %94, 3
  br i1 %99, label %100, label %139

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 4
  %102 = load i16, ptr %101, align 4
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %107 = load ptr, ptr %106, align 8
  %108 = ptrtoint ptr %105 to i32
  %109 = ptrtoint ptr %107 to i32
  %110 = sub i32 %103, %108
  %111 = add i32 %110, %109
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %139

113:                                              ; preds = %100, %90, %87, %64, %54
  %114 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  %117 = load i32, ptr %8, align 4
  %118 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  br i1 %116, label %119, label %137

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 %117
  %123 = icmp slt i32 %46, 0
  %124 = load i1, ptr @check_copy_size.__already_done, align 1
  %125 = xor i1 %124, true
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %128, !prof !12

127:                                              ; preds = %119
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %128

128:                                              ; preds = %127, %119
  br i1 %123, label %131, label %129, !prof !12

129:                                              ; preds = %128
  %130 = call i32 @_copy_to_iter(ptr noundef %122, i32 noundef %46, ptr noundef %118) #18
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i32 [ %130, %129 ], [ 0, %128 ]
  %133 = icmp eq i32 %132, %46
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @iov_iter_revert(ptr noundef %118, i32 noundef %132) #18
  br label %135

135:                                              ; preds = %134, %131
  %136 = phi i32 [ -14, %134 ], [ 0, %131 ]
  store i32 %136, ptr %9, align 4
  br label %142

137:                                              ; preds = %113
  %138 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %30, i32 noundef %117, ptr noundef %118, i32 noundef %46) #18
  store i32 %138, ptr %9, align 4
  br label %142

139:                                              ; preds = %100, %98
  %140 = call i32 @skb_copy_and_csum_datagram_msg(ptr noundef nonnull %30, i32 noundef %37, ptr noundef %1) #18
  store i32 %140, ptr %9, align 4
  %141 = icmp eq i32 %140, -22
  br i1 %141, label %273, label %142

142:                                              ; preds = %139, %137, %135
  %143 = phi i32 [ %136, %135 ], [ %138, %137 ], [ %140, %139 ]
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %174, label %145, !prof !13

145:                                              ; preds = %142
  br i1 %21, label %172, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #18, !srcloc !10
  %148 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #18, !srcloc !28
  %149 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %13, label %150, label %161

150:                                              ; preds = %146
  %151 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %152 = getelementptr [10 x i32], ptr %151, i32 0, i32 3
  %153 = ptrtoint ptr %152 to i32
  %154 = call i32 @llvm.read_register.i32(metadata !0) #18
  %155 = inttoptr i32 %154 to ptr
  %156 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %155) #14, !srcloc !17
  %157 = add i32 %156, %153
  %158 = inttoptr i32 %157 to ptr
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %149) #18, !srcloc !18
  br label %172

161:                                              ; preds = %146
  %162 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %163 = getelementptr [10 x i32], ptr %162, i32 0, i32 3
  %164 = ptrtoint ptr %163 to i32
  %165 = call i32 @llvm.read_register.i32(metadata !0) #18
  %166 = inttoptr i32 %165 to ptr
  %167 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %166) #14, !srcloc !17
  %168 = add i32 %167, %164
  %169 = inttoptr i32 %168 to ptr
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %169, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %149) #18, !srcloc !18
  br label %172

172:                                              ; preds = %161, %150, %145
  call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #18
  %173 = load i32, ptr %9, align 4
  br label %326

174:                                              ; preds = %142
  br i1 %21, label %199, label %175

175:                                              ; preds = %174
  %176 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %13, label %177, label %188

177:                                              ; preds = %175
  %178 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %179 = getelementptr [10 x i32], ptr %178, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i32
  %181 = call i32 @llvm.read_register.i32(metadata !0) #18
  %182 = inttoptr i32 %181 to ptr
  %183 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %182) #14, !srcloc !17
  %184 = add i32 %183, %180
  %185 = inttoptr i32 %184 to ptr
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %176) #18, !srcloc !18
  br label %199

188:                                              ; preds = %175
  %189 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %190 = getelementptr [10 x i32], ptr %189, i32 0, i32 1
  %191 = ptrtoint ptr %190 to i32
  %192 = call i32 @llvm.read_register.i32(metadata !0) #18
  %193 = inttoptr i32 %192 to ptr
  %194 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %193) #14, !srcloc !17
  %195 = add i32 %194, %191
  %196 = inttoptr i32 %195 to ptr
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %176) #18, !srcloc !18
  br label %199

199:                                              ; preds = %188, %177, %174
  %200 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 133120
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %206 = load i16, ptr %205, align 8
  %207 = and i16 %206, 80
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204, %199
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %30) #18
  br label %222

210:                                              ; preds = %204
  %211 = load volatile i32, ptr %200, align 4
  %212 = and i32 %211, 128
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214, !prof !13

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 2
  %216 = load i64, ptr %215, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %216) #18
  br label %222

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  %219 = load i64, ptr %218, align 8
  %220 = icmp eq i64 %219, -1000000000
  br i1 %220, label %221, label %222, !prof !12

221:                                              ; preds = %217
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef 0) #18
  br label %222

222:                                              ; preds = %221, %217, %214, %209
  %223 = icmp eq ptr %10, null
  br i1 %223, label %242, label %224

224:                                              ; preds = %222
  store i16 2, ptr %10, align 4
  %225 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 17
  %228 = load i16, ptr %227, align 2
  %229 = zext i16 %228 to i32
  %230 = getelementptr i8, ptr %226, i32 %229
  %231 = load i16, ptr %230, align 2
  %232 = getelementptr inbounds %struct.sockaddr_in, ptr %10, i32 0, i32 1
  store i16 %231, ptr %232, align 2
  %233 = load ptr, ptr %225, align 8
  %234 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 18
  %235 = load i16, ptr %234, align 4
  %236 = zext i16 %235 to i32
  %237 = getelementptr i8, ptr %233, i32 %236
  %238 = getelementptr inbounds %struct.iphdr, ptr %237, i32 0, i32 8
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.sockaddr_in, ptr %10, i32 0, i32 2
  store i32 %239, ptr %240, align 4
  %241 = getelementptr inbounds %struct.sockaddr_in, ptr %10, i32 0, i32 3
  store i64 0, ptr %241, align 4
  store i32 16, ptr %5, align 4
  br label %242

242:                                              ; preds = %224, %222
  %243 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %244 = load i8, ptr %243, align 1
  %245 = and i8 %244, 8
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %248 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.skb_shared_info, ptr %249, i32 0, i32 8
  %251 = load i32, ptr %250, align 8
  %252 = and i32 %251, 131072
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.skb_shared_info, ptr %249, i32 0, i32 4
  %256 = load i16, ptr %255, align 4
  %257 = zext i16 %256 to i32
  store i32 %257, ptr %7, align 4
  %258 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 17, i32 noundef 104, i32 noundef 4, ptr noundef nonnull %7) #18
  br label %259

259:                                              ; preds = %254, %247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %260

260:                                              ; preds = %259, %242
  %261 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %262 = load i16, ptr %261, align 2
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = load i32, ptr %8, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %30, i32 noundef 8, i32 noundef %265) #18
  br label %266

266:                                              ; preds = %264, %260
  %267 = and i32 %4, 32
  %268 = icmp eq i32 %267, 0
  %269 = select i1 %268, i32 %46, i32 %36
  store i32 %269, ptr %9, align 4
  %270 = sub i32 0, %269
  %271 = select i1 %21, i32 %270, i32 %269
  call void @skb_consume_udp(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %271)
  %272 = load i32, ptr %9, align 4
  br label %326

273:                                              ; preds = %139, %87
  %274 = call i32 @__sk_queue_drop_skb(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %30, i32 noundef %4, ptr noundef nonnull @udp_skb_destructor) #18
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %322

276:                                              ; preds = %273
  %277 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %13, label %278, label %300

278:                                              ; preds = %276
  %279 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %280 = getelementptr [10 x i32], ptr %279, i32 0, i32 7
  %281 = ptrtoint ptr %280 to i32
  %282 = call i32 @llvm.read_register.i32(metadata !0) #18
  %283 = inttoptr i32 %282 to ptr
  %284 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %283) #14, !srcloc !17
  %285 = add i32 %284, %281
  %286 = inttoptr i32 %285 to ptr
  %287 = load i32, ptr %286, align 4
  %288 = add i32 %287, 1
  store i32 %288, ptr %286, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %277) #18, !srcloc !18
  %289 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %290 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %291 = getelementptr [10 x i32], ptr %290, i32 0, i32 3
  %292 = ptrtoint ptr %291 to i32
  %293 = call i32 @llvm.read_register.i32(metadata !0) #18
  %294 = inttoptr i32 %293 to ptr
  %295 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %294) #14, !srcloc !17
  %296 = add i32 %295, %292
  %297 = inttoptr i32 %296 to ptr
  %298 = load i32, ptr %297, align 4
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %289) #18, !srcloc !18
  br label %322

300:                                              ; preds = %276
  %301 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %302 = getelementptr [10 x i32], ptr %301, i32 0, i32 7
  %303 = ptrtoint ptr %302 to i32
  %304 = call i32 @llvm.read_register.i32(metadata !0) #18
  %305 = inttoptr i32 %304 to ptr
  %306 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %305) #14, !srcloc !17
  %307 = add i32 %306, %303
  %308 = inttoptr i32 %307 to ptr
  %309 = load i32, ptr %308, align 4
  %310 = add i32 %309, 1
  store i32 %310, ptr %308, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %277) #18, !srcloc !18
  %311 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %312 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %313 = getelementptr [10 x i32], ptr %312, i32 0, i32 3
  %314 = ptrtoint ptr %313 to i32
  %315 = call i32 @llvm.read_register.i32(metadata !0) #18
  %316 = inttoptr i32 %315 to ptr
  %317 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %316) #14, !srcloc !17
  %318 = add i32 %317, %314
  %319 = inttoptr i32 %318 to ptr
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %320, 1
  store i32 %321, ptr %319, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %311) #18, !srcloc !18
  br label %322

322:                                              ; preds = %300, %278, %273
  call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #18
  %323 = call i32 @__cond_resched() #18
  %324 = load i32, ptr %20, align 4
  %325 = and i32 %324, -33
  store i32 %325, ptr %20, align 4
  br label %25

326:                                              ; preds = %266, %172, %32, %23
  %327 = phi i32 [ %24, %23 ], [ %173, %172 ], [ %272, %266 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  ret i32 %327
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_datagram_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_queue_drop_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @udp_pre_connect(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 {
  %4 = icmp ult i32 %2, 16
  %5 = select i1 %4, i32 -22, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__udp_disconnect(ptr noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  store volatile i8 7, ptr %3, align 2
  store i32 0, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %15 = load i16, ptr %14, align 8
  %16 = icmp eq i16 %15, 10
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load volatile i8, ptr %3, align 2
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, -4161
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ %25, %23 ], [ null, %17 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %27, i8 0, i32 16, i1 false) #18
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %28, i8 0, i32 16, i1 false) #18
  br label %29

29:                                               ; preds = %26, %11
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 22
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i8, ptr %7, align 8
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  tail call void %33(ptr noundef %0) #18
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i8, ptr %7, align 8
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i8 [ %40, %39 ], [ %8, %2 ]
  %43 = icmp sgt i8 %42, -1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 8
  br label %47

47:                                               ; preds = %44, %35
  %48 = phi ptr [ %46, %44 ], [ %31, %35 ]
  %49 = getelementptr inbounds %struct.proto, ptr %48, i32 0, i32 21
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %0) #18
  %51 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 0, ptr %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #18, !srcloc !10
  %56 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %55) #18, !srcloc !36
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = inttoptr i32 %57 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  tail call void @dst_release(ptr noundef %58) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_disconnect(ptr noundef %0, i32 %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %3 = tail call i32 @__udp_disconnect(ptr noundef %0, i32 undef)
  tail call void @release_sock(ptr noundef %0) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_lib_unhash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 48
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.udp_table, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %17 = add i32 %16, %12
  %18 = and i32 %17, %15
  %19 = getelementptr [2 x i16], ptr %10, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.udp_table, ptr %9, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = and i32 %15, %21
  %25 = getelementptr %struct.udp_hslot, ptr %13, i32 %18, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #18
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  tail call void @reuseport_detach_sock(ptr noundef %0) #18
  br label %30

30:                                               ; preds = %29, %5
  %31 = load ptr, ptr %2, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %86, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  store volatile ptr %35, ptr %31, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  store volatile ptr %31, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %33
  store ptr null, ptr %2, align 4
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44, !prof !12

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 729, i32 noundef 9, ptr noundef null) #18
  br label %44

44:                                               ; preds = %43, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #18, !srcloc !10
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #18, !srcloc !54
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49, !prof !12

48:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 4) #18
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr %struct.udp_hslot, ptr %13, i32 %18, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %54 = getelementptr inbounds %struct.anon.4, ptr %53, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = load ptr, ptr %6, align 8
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %57 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %58 = getelementptr inbounds %struct.proto, ptr %55, i32 0, i32 25
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.prot_inuse, ptr %57, i32 0, i32 1, i32 %59
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #14, !srcloc !17
  %65 = add i32 %64, %61
  %66 = inttoptr i32 %65 to ptr
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  store i32 %68, ptr %66, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #18, !srcloc !18
  %69 = getelementptr %struct.udp_hslot, ptr %23, i32 %24, i32 2
  tail call void @_raw_spin_lock(ptr noundef %69) #18
  %70 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  store volatile ptr %75, ptr %71, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  store volatile ptr %71, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %73
  store volatile ptr null, ptr %70, align 4
  br label %80

80:                                               ; preds = %79, %49
  %81 = getelementptr %struct.udp_hslot, ptr %23, i32 %24, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %81, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %84 = load i16, ptr %69, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %86

86:                                               ; preds = %80, %30
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #18
  br label %87

87:                                               ; preds = %86, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reuseport_detach_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_lib_rehash(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 48
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %12 = getelementptr [2 x i16], ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.udp_table, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %14
  %20 = getelementptr %struct.udp_hslot, ptr %16, i32 %19
  %21 = zext i16 %1 to i32
  %22 = and i32 %18, %21
  %23 = getelementptr %struct.udp_hslot, ptr %16, i32 %22
  store i16 %1, ptr %12, align 2
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %73, label %29

29:                                               ; preds = %25, %6
  %30 = load i16, ptr %11, align 8
  %31 = zext i16 %30 to i32
  %32 = load ptr, ptr %10, align 4
  %33 = load i32, ptr %17, align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %35 = add i32 %34, %31
  %36 = and i32 %35, %33
  %37 = getelementptr %struct.udp_hslot, ptr %32, i32 %36, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %37) #18
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  tail call void @reuseport_detach_sock(ptr noundef %0) #18
  br label %42

42:                                               ; preds = %41, %29
  br i1 %24, label %72, label %43

43:                                               ; preds = %42
  %44 = getelementptr %struct.udp_hslot, ptr %16, i32 %19, i32 2
  tail call void @_raw_spin_lock(ptr noundef %44) #18
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %46 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %45, align 4
  store volatile ptr %50, ptr %47, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  store volatile ptr %47, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %49
  store volatile ptr null, ptr %46, align 4
  br label %55

55:                                               ; preds = %54, %43
  %56 = getelementptr %struct.udp_hslot, ptr %16, i32 %19, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %59 = load i16, ptr %44, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %61 = getelementptr %struct.udp_hslot, ptr %16, i32 %22, i32 2
  tail call void @_raw_spin_lock(ptr noundef %61) #18
  %62 = load ptr, ptr %23, align 4
  store ptr %62, ptr %45, align 4
  store volatile ptr %23, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  store volatile ptr %45, ptr %23, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  store volatile ptr %45, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %55
  %67 = getelementptr %struct.udp_hslot, ptr %16, i32 %22, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %70 = load i16, ptr %61, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %72

72:                                               ; preds = %66, %42
  tail call void @_raw_spin_unlock_bh(ptr noundef %37) #18
  br label %73

73:                                               ; preds = %72, %25, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_v4_rehash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.anon.4, ptr %4, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %8 = add i32 %7, -559038733
  %9 = add i32 %8, %3
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 14) #18
  %11 = sub i32 0, %10
  %12 = xor i32 %9, %11
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 11) #18
  %14 = sub i32 %12, %13
  %15 = xor i32 %14, %8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 25) #18
  %17 = sub i32 %15, %16
  %18 = xor i32 %17, %11
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 16) #18
  %20 = sub i32 %18, %19
  %21 = xor i32 %20, %14
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 4) #18
  %23 = sub i32 %21, %22
  %24 = xor i32 %23, %17
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 14) #18
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %20
  %28 = lshr i32 %26, 8
  %29 = sub i32 %27, %28
  %30 = trunc i32 %29 to i16
  %31 = xor i16 %6, %30
  tail call void @udp_lib_rehash(ptr noundef %0, i16 noundef zeroext %31)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @udp_sk_rx_dst_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #18, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 0, i32 1, ptr elementtype(i32) %3) #18, !srcloc !39
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !40
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !55
  %9 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #18, !srcloc !10
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %9, ptr %8) #18, !srcloc !36
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !56
  tail call void @dst_release(ptr noundef %12) #18
  %13 = icmp ne ptr %12, %1
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi i1 [ %13, %7 ], [ false, %2 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__udp4_lib_rcv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %14, label %22, !prof !12

14:                                               ; preds = %3
  %15 = icmp ult i32 %9, 8
  br i1 %15, label %338, label %16, !prof !12

16:                                               ; preds = %14
  %17 = sub nuw nsw i32 8, %12
  %18 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %17) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %338, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 8
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %21, %20 ], [ %9, %3 ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.udphdr, ptr %29, i32 0, i32 2
  %31 = load i16, ptr %30, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %25, i32 %35
  %37 = getelementptr inbounds %struct.iphdr, ptr %36, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.iphdr, ptr %36, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = zext i16 %32 to i32
  %42 = icmp ult i32 %23, %41
  br i1 %42, label %338, label %43

43:                                               ; preds = %22
  %44 = icmp eq i32 %2, 17
  br i1 %44, label %45, label %65

45:                                               ; preds = %43
  %46 = icmp ult i16 %32, 8
  br i1 %46, label %349, label %47

47:                                               ; preds = %45
  %48 = icmp ugt i32 %23, %41
  br i1 %48, label %49, label %57, !prof !12

49:                                               ; preds = %47
  %50 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %0, i32 noundef %41) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %349

52:                                               ; preds = %49
  %53 = load ptr, ptr %24, align 8
  %54 = load i16, ptr %26, align 2
  %55 = load i32, ptr %8, align 8
  %56 = zext i16 %54 to i32
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i32 [ %56, %52 ], [ %28, %47 ]
  %59 = phi i32 [ %55, %52 ], [ %23, %47 ]
  %60 = phi ptr [ %53, %52 ], [ %25, %47 ]
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  store i8 0, ptr %62, align 2
  %63 = trunc i32 %59 to i16
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i16 %63, ptr %64, align 8
  br label %98

65:                                               ; preds = %43
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  store i8 0, ptr %66, align 2
  %67 = trunc i32 %23 to i16
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i16 %67, ptr %68, align 8
  %69 = icmp eq i32 %2, 136
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.udphdr, ptr %29, i32 0, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %317, label %74

74:                                               ; preds = %70
  %75 = load i16, ptr %30, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #18
  %77 = zext i16 %76 to i32
  %78 = icmp eq i16 %75, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %74
  %80 = icmp ult i16 %76, 8
  %81 = icmp ult i32 %23, %77
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %317, label %83

83:                                               ; preds = %79
  %84 = icmp ugt i32 %23, %77
  br i1 %84, label %85, label %98

85:                                               ; preds = %83
  store i8 1, ptr %66, align 2
  store i16 %76, ptr %68, align 8
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %87 = load i16, ptr %86, align 8
  %88 = and i16 %87, 96
  %89 = icmp eq i16 %88, 64
  %90 = and i16 %87, 32671
  %91 = select i1 %89, i16 %90, i16 %87
  %92 = and i16 %91, 32767
  store i16 %92, ptr %86, align 8
  %93 = load i32, ptr %37, align 4
  %94 = load i32, ptr %39, align 4
  %95 = add i32 %23, 136
  %96 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %94, i32 %93, i32 %95) #19, !srcloc !30
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %96, ptr %97, align 4
  br label %189

98:                                               ; preds = %83, %74, %65, %57
  %99 = phi ptr [ %60, %57 ], [ %25, %83 ], [ %25, %74 ], [ %25, %65 ]
  %100 = phi i1 [ false, %57 ], [ true, %83 ], [ true, %74 ], [ false, %65 ]
  %101 = phi i32 [ %59, %57 ], [ %23, %83 ], [ %23, %74 ], [ %23, %65 ]
  %102 = phi ptr [ %61, %57 ], [ %29, %83 ], [ %29, %74 ], [ %29, %65 ]
  %103 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %104 = load i16, ptr %103, align 8
  %105 = and i16 %104, 32767
  store i16 %105, ptr %103, align 8
  %106 = getelementptr inbounds %struct.udphdr, ptr %102, i32 0, i32 3
  %107 = load i16, ptr %106, align 2
  %108 = lshr i16 %104, 5
  %109 = trunc i16 %108 to i2
  switch i2 %109, label %121 [
    i2 1, label %125
    i2 -1, label %110
  ]

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %112 = load i16, ptr %111, align 4
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %115 = load ptr, ptr %114, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = ptrtoint ptr %99 to i32
  %118 = sub i32 %113, %116
  %119 = add i32 %118, %117
  %120 = icmp sgt i32 %119, -1
  br label %121

121:                                              ; preds = %110, %98
  %122 = phi i1 [ %120, %110 ], [ false, %98 ]
  %123 = icmp eq i16 %107, 0
  %124 = or i1 %123, %122
  br i1 %124, label %125, label %143

125:                                              ; preds = %121, %98
  %126 = or i16 %104, -32768
  store i16 %126, ptr %103, align 8
  %127 = and i16 %104, 96
  %128 = icmp eq i16 %127, 32
  br i1 %128, label %129, label %177

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %131 = load i16, ptr %130, align 2
  %132 = trunc i16 %131 to i8
  %133 = and i8 %132, 12
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = and i16 %126, -97
  store i16 %136, ptr %103, align 8
  br label %177

137:                                              ; preds = %129
  %138 = add i8 %132, 12
  %139 = and i8 %138, 12
  %140 = zext i8 %139 to i16
  %141 = and i16 %131, -13
  %142 = or i16 %141, %140
  store i16 %142, ptr %130, align 2
  br label %177

143:                                              ; preds = %121
  %144 = load i16, ptr %33, align 4
  %145 = zext i16 %144 to i32
  %146 = getelementptr i8, ptr %99, i32 %145
  %147 = getelementptr inbounds %struct.iphdr, ptr %146, i32 0, i32 8
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.iphdr, ptr %146, i32 0, i32 9
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %2, 255
  %152 = add i32 %101, %151
  %153 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %150, i32 %148, i32 %152) #19, !srcloc !30
  %154 = and i16 %104, 96
  %155 = icmp eq i16 %154, 64
  br i1 %155, label %156, label %167

156:                                              ; preds = %143
  %157 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, %153
  %160 = icmp ult i32 %159, %158
  %161 = zext i1 %160 to i32
  %162 = add i32 %159, %161
  %163 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %162) #19, !srcloc !31
  %164 = icmp ugt i32 %163, -65537
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = or i16 %104, -32768
  store i16 %166, ptr %103, align 8
  br label %177

167:                                              ; preds = %156, %143
  %168 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %153, ptr %168, align 4
  %169 = icmp ult i32 %101, 77
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #18
  %172 = icmp eq i16 %171, 0
  %173 = load i16, ptr %103, align 8
  %174 = select i1 %172, i16 -32768, i16 0
  %175 = and i16 %173, 32767
  %176 = or i16 %175, %174
  store i16 %176, ptr %103, align 8
  br i1 %172, label %177, label %315

177:                                              ; preds = %170, %167, %165, %137, %135, %125
  %178 = phi i16 [ %105, %167 ], [ %126, %125 ], [ %136, %135 ], [ %126, %137 ], [ %166, %165 ], [ %176, %170 ]
  %179 = and i16 %178, -32672
  %180 = icmp eq i16 %179, 64
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %183 = load i16, ptr %182, align 2
  %184 = and i16 %183, 2
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = and i16 %178, -97
  store i16 %187, ptr %103, align 8
  br label %189

188:                                              ; preds = %181
  br i1 %100, label %317, label %325

189:                                              ; preds = %186, %177, %85
  %190 = phi ptr [ %102, %177 ], [ %102, %186 ], [ %29, %85 ]
  %191 = phi i1 [ %100, %177 ], [ %100, %186 ], [ true, %85 ]
  %192 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %272, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, @sock_pfree
  br i1 %198, label %199, label %214

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.sock_common, ptr %193, i32 0, i32 4
  %201 = load volatile i8, ptr %200, align 2
  %202 = zext i8 %201 to i32
  %203 = shl nuw i32 1, %202
  %204 = and i32 %203, -4161
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.sock_common, ptr %193, i32 0, i32 13
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %208, 8388608
  %210 = icmp eq i32 %209, 0
  br label %211

211:                                              ; preds = %206, %199
  %212 = phi i1 [ true, %199 ], [ %210, %206 ]
  %213 = zext i1 %212 to i8
  br label %214

214:                                              ; preds = %211, %195
  %215 = phi i8 [ %213, %211 ], [ 1, %195 ]
  store ptr null, ptr %196, align 4
  store ptr null, ptr %192, align 4
  %216 = load i32, ptr %4, align 8
  %217 = and i32 %216, -2
  %218 = inttoptr i32 %217 to ptr
  %219 = getelementptr inbounds %struct.sock, ptr %193, i32 0, i32 1
  %220 = load volatile ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, %218
  br i1 %221, label %224, label %222, !prof !13

222:                                              ; preds = %214
  %223 = tail call zeroext i1 @udp_sk_rx_dst_set(ptr noundef nonnull %193, ptr noundef %218)
  br label %224

224:                                              ; preds = %222, %214
  %225 = getelementptr inbounds %struct.inet_sock, ptr %193, i32 0, i32 14
  %226 = load i8, ptr %225, align 1
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %257, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.udphdr, ptr %190, i32 0, i32 3
  %230 = load i16, ptr %229, align 2
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %257, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.sock, ptr %193, i32 0, i32 46
  %234 = load i16, ptr %233, align 4
  %235 = icmp eq i16 %234, 136
  br i1 %235, label %257, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %238 = load i16, ptr %237, align 8
  %239 = and i16 %238, -32672
  %240 = icmp eq i16 %239, -32768
  br i1 %240, label %241, label %257

241:                                              ; preds = %236
  %242 = load ptr, ptr %24, align 8
  %243 = load i16, ptr %33, align 4
  %244 = zext i16 %243 to i32
  %245 = getelementptr i8, ptr %242, i32 %244
  %246 = getelementptr inbounds %struct.iphdr, ptr %245, i32 0, i32 8
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.iphdr, ptr %245, i32 0, i32 9
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %8, align 8
  %251 = add i32 %250, 17
  %252 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %249, i32 %247, i32 %251) #19, !srcloc !30
  %253 = xor i32 %252, -1
  %254 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %253, ptr %254, align 4
  %255 = and i16 %238, -97
  %256 = or i16 %255, 64
  store i16 %256, ptr %237, align 8
  br label %257

257:                                              ; preds = %241, %236, %232, %228, %224
  %258 = tail call fastcc i32 @udp_queue_rcv_skb(ptr noundef nonnull %193, ptr noundef %0) #18
  %259 = icmp sgt i32 %258, 0
  %260 = sub i32 0, %258
  %261 = select i1 %259, i32 %260, i32 0
  %262 = icmp eq i8 %215, 0
  br i1 %262, label %364, label %263

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.sock_common, ptr %193, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %264) #18, !srcloc !10
  %265 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %264, ptr %264, i32 1, ptr elementtype(i32) %264) #18, !srcloc !54
  %266 = extractvalue { i32, i32, i32 } %265, 0
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %271, label %268

268:                                              ; preds = %263
  %269 = icmp sgt i32 %266, 0
  br i1 %269, label %364, label %270, !prof !13

270:                                              ; preds = %268
  tail call void @refcount_warn_saturate(ptr noundef %264, i32 noundef 3) #18
  br label %364

271:                                              ; preds = %263
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !57
  tail call void @sk_free(ptr noundef nonnull %193) #18
  br label %364

272:                                              ; preds = %189
  %273 = getelementptr inbounds %struct.rtable, ptr %7, i32 0, i32 2
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, 805306368
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  tail call fastcc void @__udp4_lib_mcast_deliver(ptr noundef %0, ptr noundef %190, i32 noundef %38, i32 noundef %40, ptr noundef %1, i32 noundef %2)
  br label %364

278:                                              ; preds = %272
  %279 = load i16, ptr %190, align 2
  %280 = getelementptr inbounds %struct.udphdr, ptr %190, i32 0, i32 1
  %281 = load i16, ptr %280, align 2
  %282 = tail call fastcc ptr @__udp4_lib_lookup_skb(ptr noundef %0, i16 noundef zeroext %279, i16 noundef zeroext %281, ptr noundef %1)
  %283 = icmp eq ptr %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %278
  %285 = tail call fastcc i32 @udp_unicast_rcv_skb(ptr noundef nonnull %282, ptr noundef %0, ptr noundef %190)
  br label %364

286:                                              ; preds = %278
  %287 = tail call fastcc i32 @xfrm4_policy_check(ptr noundef null, ptr noundef %0)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %338, label %289

289:                                              ; preds = %286
  %290 = tail call fastcc i32 @udp_lib_checksum_complete(ptr noundef %0)
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %315

292:                                              ; preds = %289
  br i1 %191, label %293, label %301

293:                                              ; preds = %292
  %294 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %295 = getelementptr [10 x i32], ptr %294, i32 0, i32 2
  %296 = ptrtoint ptr %295 to i32
  %297 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %298 = inttoptr i32 %297 to ptr
  %299 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %298) #14, !srcloc !17
  %300 = add i32 %299, %296
  br label %309

301:                                              ; preds = %292
  %302 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %303 = getelementptr [10 x i32], ptr %302, i32 0, i32 2
  %304 = ptrtoint ptr %303 to i32
  %305 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %306 = inttoptr i32 %305 to ptr
  %307 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %306) #14, !srcloc !17
  %308 = add i32 %307, %304
  br label %309

309:                                              ; preds = %301, %293
  %310 = phi i32 [ %308, %301 ], [ %300, %293 ]
  %311 = inttoptr i32 %310 to ptr
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %312, 1
  store i32 %313, ptr %311, align 4
  %314 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %314) #18
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 1) #18
  br label %364

315:                                              ; preds = %289, %170
  %316 = phi i1 [ %191, %289 ], [ %100, %170 ]
  br i1 %316, label %317, label %325

317:                                              ; preds = %315, %188, %79, %70
  %318 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %319 = getelementptr [10 x i32], ptr %318, i32 0, i32 7
  %320 = ptrtoint ptr %319 to i32
  %321 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %322 = inttoptr i32 %321 to ptr
  %323 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %322) #14, !srcloc !17
  %324 = add i32 %323, %320
  br label %333

325:                                              ; preds = %315, %188
  %326 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %327 = getelementptr [10 x i32], ptr %326, i32 0, i32 7
  %328 = ptrtoint ptr %327 to i32
  %329 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %330 = inttoptr i32 %329 to ptr
  %331 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %330) #14, !srcloc !17
  %332 = add i32 %331, %328
  br label %333

333:                                              ; preds = %325, %317
  %334 = phi i32 [ %324, %317 ], [ %332, %325 ]
  %335 = inttoptr i32 %334 to ptr
  %336 = load i32, ptr %335, align 4
  %337 = add i32 %336, 1
  store i32 %337, ptr %335, align 4
  br label %338

338:                                              ; preds = %333, %286, %22, %16, %14
  %339 = phi i32 [ 0, %286 ], [ 0, %16 ], [ 2, %22 ], [ 0, %14 ], [ 5, %333 ]
  %340 = icmp eq i32 %2, 136
  br i1 %340, label %341, label %349

341:                                              ; preds = %338
  %342 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %343 = getelementptr [10 x i32], ptr %342, i32 0, i32 3
  %344 = ptrtoint ptr %343 to i32
  %345 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %346 = inttoptr i32 %345 to ptr
  %347 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %346) #14, !srcloc !17
  %348 = add i32 %347, %344
  br label %358

349:                                              ; preds = %338, %49, %45
  %350 = phi i32 [ %339, %338 ], [ 2, %49 ], [ 2, %45 ]
  %351 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %352 = getelementptr [10 x i32], ptr %351, i32 0, i32 3
  %353 = ptrtoint ptr %352 to i32
  %354 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %355 = inttoptr i32 %354 to ptr
  %356 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %355) #14, !srcloc !17
  %357 = add i32 %356, %353
  br label %358

358:                                              ; preds = %349, %341
  %359 = phi i32 [ %357, %349 ], [ %348, %341 ]
  %360 = phi i32 [ %350, %349 ], [ %339, %341 ]
  %361 = inttoptr i32 %359 to ptr
  %362 = load i32, ptr %361, align 4
  %363 = add i32 %362, 1
  store i32 %363, ptr %361, align 4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef %360) #18
  br label %364

364:                                              ; preds = %358, %309, %284, %277, %271, %270, %268, %257
  %365 = phi i32 [ 0, %358 ], [ 0, %277 ], [ %285, %284 ], [ 0, %309 ], [ %261, %257 ], [ %261, %268 ], [ %261, %270 ], [ %261, %271 ]
  ret i32 %365
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_unicast_rcv_skb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 14
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.udphdr, ptr %2, i32 0, i32 3
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 136
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, -32672
  %19 = icmp eq i16 %18, -32768
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 17
  %34 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %30, i32 %28, i32 %33) #19, !srcloc !30
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = and i16 %17, -97
  %38 = or i16 %37, 64
  store i16 %38, ptr %16, align 8
  br label %39

39:                                               ; preds = %20, %15, %11, %7, %3
  %40 = tail call fastcc i32 @udp_queue_rcv_skb(ptr noundef %0, ptr noundef %1)
  %41 = icmp sgt i32 %40, 0
  %42 = sub i32 0, %40
  %43 = select i1 %41, i32 %42, i32 0
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__udp4_lib_mcast_deliver(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.udphdr, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = zext i16 %9 to i32
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.udp_table, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %15 = add i32 %14, %10
  %16 = and i32 %15, %13
  %17 = getelementptr %struct.udp_hslot, ptr %11, i32 %16
  %18 = getelementptr %struct.udp_hslot, ptr %11, i32 %16, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 10
  %21 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  br i1 %20, label %25, label %76

25:                                               ; preds = %6
  %26 = add i32 %14, -559038733
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 14) #18
  %28 = sub i32 0, %27
  %29 = xor i32 %26, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11) #18
  %31 = sub i32 %29, %30
  %32 = xor i32 %31, %26
  %33 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 25) #18
  %34 = sub i32 %32, %33
  %35 = xor i32 %34, %28
  %36 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16) #18
  %37 = sub i32 %35, %36
  %38 = xor i32 %37, %31
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 4) #18
  %40 = sub i32 %38, %39
  %41 = xor i32 %40, %34
  %42 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 14) #18
  %43 = sub i32 %41, %42
  %44 = xor i32 %43, %37
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 24) #18
  %46 = sub i32 %44, %45
  %47 = xor i32 %46, %10
  %48 = and i32 %47, %13
  %49 = add i32 %26, %3
  %50 = xor i32 %49, %28
  %51 = sub i32 %50, %30
  %52 = xor i32 %51, %26
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 25) #18
  %54 = sub i32 %52, %53
  %55 = xor i32 %54, %28
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 16) #18
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %51
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 4) #18
  %60 = sub i32 %58, %59
  %61 = xor i32 %60, %54
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 14) #18
  %63 = sub i32 %61, %62
  %64 = xor i32 %63, %57
  %65 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 24) #18
  %66 = sub i32 %64, %65
  %67 = xor i32 %66, %10
  %68 = and i32 %67, %13
  br label %69

69:                                               ; preds = %187, %25
  %70 = phi i32 [ %48, %25 ], [ %78, %187 ]
  %71 = phi i32 [ %68, %25 ], [ %78, %187 ]
  %72 = phi ptr [ null, %25 ], [ %188, %187 ]
  %73 = getelementptr inbounds %struct.udp_table, ptr %4, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr %struct.udp_hslot, ptr %74, i32 %71
  br label %76

76:                                               ; preds = %69, %6
  %77 = phi i32 [ -24, %69 ], [ -84, %6 ]
  %78 = phi i32 [ %70, %69 ], [ 0, %6 ]
  %79 = phi i32 [ %71, %69 ], [ 0, %6 ]
  %80 = phi ptr [ %75, %69 ], [ %17, %6 ]
  %81 = phi ptr [ %72, %69 ], [ null, %6 ]
  %82 = load volatile ptr, ptr %80, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %187, label %84

84:                                               ; preds = %183, %76
  %85 = phi ptr [ %185, %183 ], [ %82, %76 ]
  %86 = phi ptr [ %184, %183 ], [ %81, %76 ]
  %87 = getelementptr i8, ptr %85, i32 %77
  %88 = load i16, ptr %1, align 2
  %89 = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 1
  %90 = load i16, ptr %89, align 8
  %91 = icmp eq i16 %90, %9
  br i1 %91, label %92, label %183

92:                                               ; preds = %84
  %93 = load i32, ptr %87, align 8
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i32 %93, %2
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %183

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 2
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, %88
  %101 = icmp eq i16 %99, 0
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %183

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.anon, ptr %87, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  %107 = icmp eq i32 %105, %3
  %108 = or i1 %106, %107
  br i1 %108, label %109, label %183

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 5
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 32
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %183

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  %118 = icmp eq i32 %116, %24
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %183

120:                                              ; preds = %114
  %121 = tail call i32 @ip_mc_sf_allow(ptr noundef %87, i32 noundef %3, i32 noundef %2, i32 noundef %24, i32 noundef 0) #18
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %183, label %123

123:                                              ; preds = %120
  %124 = icmp eq ptr %86, null
  br i1 %124, label %183, label %125

125:                                              ; preds = %123
  %126 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #18
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %179, !prof !12

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #18, !srcloc !10
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #18, !srcloc !28
  %131 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 46
  %132 = load i16, ptr %131, align 4
  %133 = icmp eq i16 %132, 136
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %136 = getelementptr [10 x i32], ptr %135, i32 0, i32 5
  %137 = ptrtoint ptr %136 to i32
  %138 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %139 = inttoptr i32 %138 to ptr
  %140 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %139) #14, !srcloc !17
  %141 = add i32 %140, %137
  br label %150

142:                                              ; preds = %128
  %143 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %144 = getelementptr [10 x i32], ptr %143, i32 0, i32 5
  %145 = ptrtoint ptr %144 to i32
  %146 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %147 = inttoptr i32 %146 to ptr
  %148 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %147) #14, !srcloc !17
  %149 = add i32 %148, %145
  br label %150

150:                                              ; preds = %142, %134
  %151 = phi i32 [ %141, %134 ], [ %149, %142 ]
  %152 = inttoptr i32 %151 to ptr
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 4
  %155 = load i16, ptr %131, align 4
  %156 = icmp eq i16 %155, 136
  br i1 %156, label %157, label %168

157:                                              ; preds = %150
  %158 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %159 = getelementptr [10 x i32], ptr %158, i32 0, i32 3
  %160 = ptrtoint ptr %159 to i32
  %161 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %162 = inttoptr i32 %161 to ptr
  %163 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %162) #14, !srcloc !17
  %164 = add i32 %163, %160
  %165 = inttoptr i32 %164 to ptr
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  br label %183

168:                                              ; preds = %150
  %169 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %170 = getelementptr [10 x i32], ptr %169, i32 0, i32 3
  %171 = ptrtoint ptr %170 to i32
  %172 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %173 = inttoptr i32 %172 to ptr
  %174 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %173) #14, !srcloc !17
  %175 = add i32 %174, %171
  %176 = inttoptr i32 %175 to ptr
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 4
  br label %183

179:                                              ; preds = %125
  %180 = tail call fastcc i32 @udp_queue_rcv_skb(ptr noundef %87, ptr noundef nonnull %126)
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  tail call void @consume_skb(ptr noundef nonnull %126) #18
  br label %183

183:                                              ; preds = %182, %179, %168, %157, %123, %120, %114, %109, %103, %97, %92, %84
  %184 = phi ptr [ %86, %157 ], [ %86, %168 ], [ %86, %182 ], [ %86, %179 ], [ %86, %120 ], [ %87, %123 ], [ %86, %103 ], [ %86, %97 ], [ %86, %92 ], [ %86, %109 ], [ %86, %84 ], [ %86, %114 ]
  %185 = load volatile ptr, ptr %85, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %84

187:                                              ; preds = %183, %76
  %188 = phi ptr [ %81, %76 ], [ %184, %183 ]
  %189 = xor i1 %20, true
  %190 = icmp eq i32 %79, %78
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %192, label %69

192:                                              ; preds = %187
  %193 = icmp eq ptr %188, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %192
  %195 = tail call fastcc i32 @udp_queue_rcv_skb(ptr noundef nonnull %188, ptr noundef %0)
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %194
  tail call void @consume_skb(ptr noundef %0) #18
  br label %222

198:                                              ; preds = %192
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #18
  %199 = icmp eq i32 %5, 136
  br i1 %199, label %200, label %211

200:                                              ; preds = %198
  %201 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %202 = getelementptr [10 x i32], ptr %201, i32 0, i32 8
  %203 = ptrtoint ptr %202 to i32
  %204 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %205 = inttoptr i32 %204 to ptr
  %206 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %205) #14, !srcloc !17
  %207 = add i32 %206, %203
  %208 = inttoptr i32 %207 to ptr
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %208, align 4
  br label %222

211:                                              ; preds = %198
  %212 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %213 = getelementptr [10 x i32], ptr %212, i32 0, i32 8
  %214 = ptrtoint ptr %213 to i32
  %215 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %216 = inttoptr i32 %215 to ptr
  %217 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %216) #14, !srcloc !17
  %218 = add i32 %217, %214
  %219 = inttoptr i32 %218 to ptr
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %219, align 4
  br label %222

222:                                              ; preds = %211, %200, %197, %194
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__udp4_lib_lookup_skb(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = inttoptr i32 %17 to ptr
  %21 = getelementptr inbounds %struct.rtable, ptr %20, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %26, %24 ], [ %22, %19 ]
  %29 = tail call ptr @__udp4_lib_lookup(ptr noundef nonnull @init_net, i32 noundef %12, i16 noundef zeroext %1, i32 noundef %14, i16 noundef zeroext %2, i32 noundef %28, i32 noundef 0, ptr noundef %3, ptr noundef %0)
  ret ptr %29
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm4_policy_check(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  br label %52

10:                                               ; preds = %4, %2
  %11 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %17, %14
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = inttoptr i32 %25 to ptr
  %29 = getelementptr inbounds %struct.dst_entry, ptr %28, i32 0, i32 7
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %22
  %34 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %52

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = inttoptr i32 %40 to ptr
  %44 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %37
  %49 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %42, %33, %27, %17, %8
  %53 = phi i32 [ %9, %8 ], [ 1, %27 ], [ 1, %17 ], [ %36, %33 ], [ 1, %42 ], [ %51, %48 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_v4_early_demux(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = add i32 %17, 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp ugt i32 %18, %23
  br i1 %24, label %25, label %35, !prof !12

25:                                               ; preds = %1
  %26 = icmp ult i32 %20, %18
  br i1 %26, label %261, label %27, !prof !12

27:                                               ; preds = %25
  %28 = sub i32 %18, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %28) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %261, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8
  %33 = load i16, ptr %9, align 2
  %34 = zext i16 %33 to i32
  br label %35

35:                                               ; preds = %31, %1
  %36 = phi i32 [ %34, %31 ], [ %11, %1 ]
  %37 = phi ptr [ %32, %31 ], [ %8, %1 ]
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = getelementptr i8, ptr %37, i32 %36
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %44 = load i16, ptr %43, align 8
  %45 = trunc i16 %44 to i3
  switch i3 %45, label %261 [
    i3 2, label %46
    i3 0, label %130
  ]

46:                                               ; preds = %35
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 68
  %49 = load volatile ptr, ptr %48, align 16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %261, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = tail call i32 @ip_check_mc_rcu(ptr noundef nonnull %49, i32 noundef %53, i32 noundef %55, i8 noundef zeroext %57) #18
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %261, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.udphdr, ptr %42, i32 0, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = load i32, ptr %52, align 4
  %64 = load i16, ptr %42, align 2
  %65 = load i32, ptr %54, align 4
  %66 = tail call i16 @llvm.bswap.i16(i16 %62) #18
  %67 = zext i16 %66 to i32
  %68 = load i32, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 2), align 4
  %69 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %70 = add i32 %69, %67
  %71 = and i32 %70, %68
  %72 = load ptr, ptr @udp_table, align 4
  %73 = getelementptr %struct.udp_hslot, ptr %72, i32 %71, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %74, 10
  br i1 %75, label %261, label %76

76:                                               ; preds = %60
  %77 = getelementptr %struct.udp_hslot, ptr %72, i32 %71
  %78 = load volatile ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  %80 = getelementptr i8, ptr %78, i32 -84
  %81 = icmp eq ptr %80, null
  %82 = or i1 %79, %81
  br i1 %82, label %261, label %83

83:                                               ; preds = %122, %76
  %84 = phi ptr [ %127, %122 ], [ %80, %76 ]
  %85 = phi ptr [ %123, %122 ], [ null, %76 ]
  %86 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 1
  %87 = load i16, ptr %86, align 8
  %88 = icmp eq i16 %87, %66
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load i32, ptr %84, align 8
  %91 = icmp eq i32 %90, 0
  %92 = icmp eq i32 %90, %65
  %93 = or i1 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 2
  %96 = load i16, ptr %95, align 4
  %97 = icmp eq i16 %96, %64
  %98 = icmp eq i16 %96, 0
  %99 = or i1 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.anon, ptr %84, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = icmp eq i32 %102, %63
  %105 = or i1 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 5
  %108 = load i8, ptr %107, align 1
  %109 = and i8 %108, 32
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  %115 = icmp eq i32 %113, %6
  %116 = or i1 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = tail call i32 @ip_mc_sf_allow(ptr noundef nonnull %84, i32 noundef %63, i32 noundef %65, i32 noundef %6, i32 noundef 0) #18
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = icmp eq ptr %85, null
  br i1 %121, label %122, label %261

122:                                              ; preds = %120, %117, %111, %106, %100, %94, %89, %83
  %123 = phi ptr [ %85, %117 ], [ %84, %120 ], [ %85, %100 ], [ %85, %94 ], [ %85, %89 ], [ %85, %106 ], [ %85, %83 ], [ %85, %111 ]
  %124 = getelementptr inbounds %struct.sock_common, ptr %84, i32 0, i32 15
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  %127 = getelementptr i8, ptr %125, i32 -84
  %128 = icmp eq ptr %127, null
  %129 = or i1 %126, %128
  br i1 %129, label %193, label %83

130:                                              ; preds = %35
  %131 = getelementptr inbounds %struct.udphdr, ptr %42, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 9
  %134 = load i32, ptr %133, align 4
  %135 = load i16, ptr %42, align 2
  %136 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 8
  %137 = load i32, ptr %136, align 4
  %138 = tail call i16 @llvm.bswap.i16(i16 %132) #18
  %139 = zext i16 %138 to i32
  %140 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %141 = add i32 %140, -559038733
  %142 = add i32 %141, %134
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 14) #18
  %144 = sub i32 0, %143
  %145 = xor i32 %142, %144
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11) #18
  %147 = sub i32 %145, %146
  %148 = xor i32 %147, %141
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 25) #18
  %150 = sub i32 %148, %149
  %151 = xor i32 %150, %144
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 16) #18
  %153 = sub i32 %151, %152
  %154 = xor i32 %153, %147
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 4) #18
  %156 = sub i32 %154, %155
  %157 = xor i32 %156, %150
  %158 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 14) #18
  %159 = sub i32 %157, %158
  %160 = xor i32 %159, %153
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 24) #18
  %162 = sub i32 %160, %161
  %163 = xor i32 %162, %139
  %164 = load i32, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 2), align 4
  %165 = and i32 %163, %164
  %166 = load ptr, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 1), align 4
  %167 = getelementptr %struct.udp_hslot, ptr %166, i32 %165
  %168 = load volatile ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  %170 = getelementptr i8, ptr %168, i32 -24
  %171 = icmp eq ptr %170, null
  %172 = or i1 %169, %171
  br i1 %172, label %261, label %173

173:                                              ; preds = %130
  %174 = shl nuw i32 %139, 16
  %175 = zext i16 %135 to i32
  %176 = or i32 %174, %175
  %177 = getelementptr i8, ptr %168, i32 -12
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, %176
  br i1 %179, label %180, label %261

180:                                              ; preds = %173
  %181 = load i32, ptr %170, align 8
  %182 = icmp eq i32 %181, %137
  br i1 %182, label %183, label %261

183:                                              ; preds = %180
  %184 = getelementptr i8, ptr %168, i32 -20
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, %134
  br i1 %186, label %187, label %261

187:                                              ; preds = %183
  %188 = getelementptr i8, ptr %168, i32 -4
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %6
  %191 = icmp eq i32 %189, 0
  %192 = or i1 %190, %191
  br i1 %192, label %195, label %261

193:                                              ; preds = %122
  %194 = icmp eq ptr %123, null
  br i1 %194, label %261, label %195

195:                                              ; preds = %193, %187
  %196 = phi ptr [ %49, %193 ], [ null, %187 ]
  %197 = phi ptr [ %123, %193 ], [ %170, %187 ]
  %198 = getelementptr inbounds %struct.sock_common, ptr %197, i32 0, i32 19
  %199 = load volatile i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %211, %195
  %202 = phi i32 [ %209, %211 ], [ %199, %195 ]
  %203 = add i32 %202, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %198) #18, !srcloc !10
  br label %204

204:                                              ; preds = %204, %201
  %205 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %198, ptr %198, i32 %202, i32 %203, ptr elementtype(i32) %198) #18, !srcloc !58
  %206 = extractvalue { i32, i32 } %205, 0
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %204

208:                                              ; preds = %204
  %209 = extractvalue { i32, i32 } %205, 1
  %210 = icmp eq i32 %209, %202
  br i1 %210, label %213, label %211, !prof !13

211:                                              ; preds = %208
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %213, label %201

213:                                              ; preds = %211, %208, %195
  %214 = phi i32 [ 0, %195 ], [ 0, %211 ], [ %202, %208 ]
  %215 = add i32 %214, 1
  %216 = or i32 %215, %214
  %217 = icmp sgt i32 %216, -1
  br i1 %217, label %219, label %218, !prof !13

218:                                              ; preds = %213
  tail call void @refcount_warn_saturate(ptr noundef %198, i32 noundef 0) #18
  br label %219

219:                                              ; preds = %218, %213
  %220 = icmp eq i32 %214, 0
  br i1 %220, label %261, label %221

221:                                              ; preds = %219
  %222 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %197, ptr %222, align 4
  %223 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %223, align 4
  %224 = getelementptr inbounds %struct.sock, ptr %197, i32 0, i32 1
  %225 = load volatile ptr, ptr %224, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %261, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.dst_entry, ptr %225, i32 0, i32 8
  %229 = load i16, ptr %228, align 2
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.dst_entry, ptr %225, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.dst_ops, ptr %233, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = tail call ptr %235(ptr noundef nonnull %225, i32 noundef 0) #18
  %237 = icmp eq ptr %236, null
  br i1 %237, label %261, label %238

238:                                              ; preds = %231, %227
  %239 = phi ptr [ %236, %231 ], [ %225, %227 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4
  %240 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %241 = load i16, ptr %240, align 2
  %242 = or i16 %241, 16384
  store i16 %242, ptr %240, align 2
  %243 = ptrtoint ptr %239 to i32
  %244 = or i32 %243, 1
  %245 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %244, ptr %245, align 8
  %246 = load i32, ptr %197, align 8
  %247 = icmp eq i32 %246, 0
  %248 = icmp ne ptr %196, null
  %249 = select i1 %247, i1 %248, i1 false
  br i1 %249, label %250, label %260

250:                                              ; preds = %238
  %251 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 9
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 8
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 1
  %256 = load i8, ptr %255, align 1
  %257 = and i8 %256, 28
  %258 = load ptr, ptr %3, align 8
  %259 = call i32 @ip_mc_validate_source(ptr noundef %0, i32 noundef %252, i32 noundef %254, i8 noundef zeroext %257, ptr noundef %258, ptr noundef nonnull %196, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %261

260:                                              ; preds = %238
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %261

261:                                              ; preds = %260, %250, %231, %221, %219, %193, %187, %183, %180, %173, %130, %120, %76, %60, %51, %46, %35, %27, %25
  %262 = phi i32 [ 0, %27 ], [ 0, %46 ], [ 0, %51 ], [ 0, %219 ], [ 0, %193 ], [ %259, %250 ], [ 0, %260 ], [ 0, %231 ], [ 0, %25 ], [ 0, %35 ], [ 0, %60 ], [ 0, %76 ], [ 0, %173 ], [ 0, %180 ], [ 0, %183 ], [ 0, %130 ], [ 0, %187 ], [ 0, %221 ], [ 0, %120 ]
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_check_mc_rcu(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_validate_source(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_rcv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @__udp4_lib_rcv(ptr noundef %0, ptr noundef nonnull @udp_table, i32 noundef 17)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_destroy_sock(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @__lock_sock_fast(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 5
  store i16 0, ptr %10, align 2
  store i32 0, ptr %6, align 64
  tail call void @ip_flush_pending_frames(ptr noundef %0) #18
  br label %11

11:                                               ; preds = %9, %1
  br i1 %2, label %12, label %13

12:                                               ; preds = %11
  tail call void @release_sock(ptr noundef %0) #18
  br label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #18
  br label %15

15:                                               ; preds = %13, %12
  %16 = load volatile i32, ptr @udp_encap_needed_key, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33, !prof !12

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 13
  %24 = load volatile ptr, ptr %23, align 32
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef %0) #18
  br label %27

27:                                               ; preds = %26, %22, %18
  %28 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call fastcc void @static_key_slow_dec()
  br label %33

33:                                               ; preds = %32, %27, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_lib_setsockopt(ptr noundef %0, i32 %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 136
  %11 = icmp ult i32 %4, 4
  br i1 %11, label %122, label %12

12:                                               ; preds = %6
  %13 = extractvalue [2 x i32] %3, 0
  %14 = inttoptr i32 %13 to ptr
  %15 = extractvalue [2 x i32] %3, 1
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 4, i32 -1090519040) #19, !srcloc !59
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !13

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #18
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #14, !srcloc !46
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %14, i32 noundef 4) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #18, !srcloc !47
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30, !prof !13

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 4, %18 ]
  %32 = sub i32 4, %31
  %33 = getelementptr i8, ptr %7, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #18
  br label %122

34:                                               ; preds = %12
  %35 = load i32, ptr %14, align 1
  store i32 %35, ptr %7, align 4
  br label %38

36:                                               ; preds = %22
  %37 = load i32, ptr %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %37, %36 ], [ %35, %34 ]
  %40 = icmp ne i32 %39, 0
  switch i32 %2, label %122 [
    i32 1, label %41
    i32 100, label %46
    i32 101, label %63
    i32 102, label %69
    i32 103, label %75
    i32 104, label %80
    i32 10, label %92
    i32 11, label %107
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 2
  br i1 %40, label %43, label %44

43:                                               ; preds = %41
  store volatile i32 1, ptr %42, align 4
  br label %122

44:                                               ; preds = %41
  store volatile i32 0, ptr %42, align 4
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %45 = call i32 %5(ptr noundef %0) #18
  call void @release_sock(ptr noundef %0) #18
  br label %122

46:                                               ; preds = %38
  switch i32 %39, label %122 [
    i32 0, label %47
    i32 2, label %47
    i32 1, label %47
    i32 3, label %58
  ]

47:                                               ; preds = %46, %46, %46
  %48 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %49 = load i16, ptr %48, align 8
  %50 = icmp eq i16 %49, 10
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load ptr, ptr @ipv6_stub, align 4
  %53 = getelementptr inbounds %struct.ipv6_stub, ptr %52, i32 0, i32 18
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi ptr [ %54, %51 ], [ @xfrm4_udp_encap_rcv, %47 ]
  %57 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 11
  store ptr %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %55, %46
  %59 = trunc i32 %39 to i8
  %60 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  store i8 %59, ptr %60, align 8
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %61 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %62 = load ptr, ptr %61, align 8
  call fastcc void @udp_tunnel_encap_enable(ptr noundef %62)
  call void @release_sock(ptr noundef %0) #18
  br label %122

63:                                               ; preds = %38
  %64 = zext i1 %40 to i8
  %65 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, -2
  %68 = or i8 %67, %64
  store i8 %68, ptr %65, align 1
  br label %122

69:                                               ; preds = %38
  %70 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %71 = load i8, ptr %70, align 1
  %72 = select i1 %40, i8 2, i8 0
  %73 = and i8 %71, -3
  %74 = or i8 %73, %72
  store i8 %74, ptr %70, align 1
  br label %122

75:                                               ; preds = %38
  %76 = icmp ugt i32 %39, 65535
  br i1 %76, label %122, label %77

77:                                               ; preds = %75
  %78 = trunc i32 %39 to i16
  %79 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 6
  store volatile i16 %78, ptr %79, align 4
  br label %122

80:                                               ; preds = %38
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  br i1 %40, label %81, label %84

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %83 = load ptr, ptr %82, align 8
  call fastcc void @udp_tunnel_encap_enable(ptr noundef %83)
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i8 [ 16, %81 ], [ 0, %80 ]
  %86 = phi i8 [ 8, %81 ], [ 0, %80 ]
  %87 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, -25
  %90 = or i8 %86, %85
  %91 = or i8 %90, %89
  store i8 %91, ptr %87, align 1
  call void @release_sock(ptr noundef %0) #18
  br label %122

92:                                               ; preds = %38
  br i1 %10, label %93, label %122

93:                                               ; preds = %92
  %94 = icmp slt i32 %39, 8
  %95 = and i1 %40, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 8, ptr %7, align 4
  br label %100

97:                                               ; preds = %93
  %98 = icmp ugt i32 %39, 65535
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  store i32 65535, ptr %7, align 4
  br label %100

100:                                              ; preds = %99, %97, %96
  %101 = phi i32 [ %39, %97 ], [ 65535, %99 ], [ 8, %96 ]
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 7
  store i16 %102, ptr %103, align 2
  %104 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 9
  %105 = load i8, ptr %104, align 2
  %106 = or i8 %105, 2
  store i8 %106, ptr %104, align 2
  br label %122

107:                                              ; preds = %38
  br i1 %10, label %108, label %122

108:                                              ; preds = %107
  %109 = icmp slt i32 %39, 8
  %110 = and i1 %40, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 8, ptr %7, align 4
  br label %115

112:                                              ; preds = %108
  %113 = icmp ugt i32 %39, 65535
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  store i32 65535, ptr %7, align 4
  br label %115

115:                                              ; preds = %114, %112, %111
  %116 = phi i32 [ %39, %112 ], [ 65535, %114 ], [ 8, %111 ]
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 8
  store i16 %117, ptr %118, align 16
  %119 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 9
  %120 = load i8, ptr %119, align 2
  %121 = or i8 %120, 4
  store i8 %121, ptr %119, align 2
  br label %122

122:                                              ; preds = %115, %107, %100, %92, %84, %77, %75, %69, %63, %58, %46, %44, %43, %38, %30, %6
  %123 = phi i32 [ -22, %6 ], [ -22, %75 ], [ -92, %92 ], [ -92, %107 ], [ 0, %115 ], [ 0, %100 ], [ 0, %84 ], [ 0, %77 ], [ 0, %69 ], [ 0, %63 ], [ 0, %58 ], [ 0, %43 ], [ 0, %44 ], [ -92, %46 ], [ -92, %38 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_udp_encap_rcv(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udp_tunnel_encap_enable(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.udp_sock, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = or i8 %5, 4
  store i8 %9, ptr %4, align 1
  %10 = load ptr, ptr %2, align 16
  %11 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 3
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 10
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load ptr, ptr @ipv6_stub, align 4
  %16 = getelementptr inbounds %struct.ipv6_stub, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  tail call void %17() #18
  br label %18

18:                                               ; preds = %14, %8
  %19 = load i8, ptr @static_key_initialized, align 1, !range !27
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @udp_encap_needed_key) #18
  br label %22

22:                                               ; preds = %21, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @udp_encap_needed_key) #18, !srcloc !10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @udp_encap_needed_key, ptr nonnull @udp_encap_needed_key, i32 1, ptr nonnull elementtype(i32) @udp_encap_needed_key) #18, !srcloc !28
  br label %24

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  switch i32 %1, label %8 [
    i32 136, label %6
    i32 17, label %6
  ]

6:                                                ; preds = %5, %5
  %7 = tail call i32 @udp_lib_setsockopt(ptr noundef %0, i32 undef, i32 noundef %2, [2 x i32] %3, i32 noundef %4, ptr noundef nonnull @udp_push_pending_frames)
  br label %10

8:                                                ; preds = %5
  %9 = tail call i32 @ip_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #18
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_lib_getsockopt(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %7 = tail call ptr @llvm.thread.pointer() #18
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #14, !srcloc !46
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #18, !srcloc !60
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %5
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 4)
  switch i32 %2, label %73 [
    i32 1, label %18
    i32 100, label %21
    i32 101, label %25
    i32 102, label %30
    i32 103, label %36
    i32 104, label %40
    i32 10, label %46
    i32 11, label %50
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 2
  %20 = load volatile i32, ptr %19, align 4
  store i32 %20, ptr %6, align 4
  br label %54

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %23 = load i8, ptr %22, align 8
  %24 = zext i8 %23 to i32
  store i32 %24, ptr %6, align 4
  br label %54

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 1
  %29 = zext i8 %28 to i32
  store i32 %29, ptr %6, align 4
  br label %54

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = lshr i8 %32, 1
  %34 = and i8 %33, 1
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %6, align 4
  br label %54

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 6
  %38 = load volatile i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  store i32 %39, ptr %6, align 4
  br label %54

40:                                               ; preds = %15
  %41 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = lshr i8 %42, 3
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  store i32 %45, ptr %6, align 4
  br label %54

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 7
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  store i32 %49, ptr %6, align 4
  br label %54

50:                                               ; preds = %15
  %51 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 8
  %52 = load i16, ptr %51, align 16
  %53 = zext i16 %52 to i32
  store i32 %53, ptr %6, align 4
  br label %54

54:                                               ; preds = %50, %46, %40, %36, %30, %25, %21, %18
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #14, !srcloc !46
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %17, i32 -1090519041) #18, !srcloc !61
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %17, i32 -1090519040) #19, !srcloc !62
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #14, !srcloc !46
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #18, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  %68 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %17) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #18, !srcloc !47
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !48
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ %68, %64 ], [ %17, %60 ]
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 -14
  br label %73

73:                                               ; preds = %69, %54, %15, %5
  %74 = phi i32 [ -14, %5 ], [ -92, %15 ], [ -14, %54 ], [ %72, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  switch i32 %1, label %8 [
    i32 136, label %6
    i32 17, label %6
  ]

6:                                                ; preds = %5, %5
  %7 = tail call i32 @udp_lib_getsockopt(ptr noundef %0, i32 undef, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %10

8:                                                ; preds = %5
  %9 = tail call i32 @ip_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #18
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @datagram_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.udp_sock, ptr %6, i32 0, i32 17
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = or i32 %4, 65
  %11 = select i1 %9, i32 %4, i32 %10
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 66
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @first_packet_length(ptr noundef %6)
  %26 = icmp eq i32 %25, -1
  %27 = and i32 %11, -66
  %28 = select i1 %26, i32 %27, i32 %11
  br label %29

29:                                               ; preds = %24, %19, %14, %3
  %30 = phi i32 [ %11, %14 ], [ %11, %19 ], [ %11, %3 ], [ %28, %24 ]
  %31 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.proto, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = tail call zeroext i1 %34(ptr noundef %6) #18
  %38 = or i32 %30, 65
  %39 = select i1 %37, i32 %38, i32 %30
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i32 [ %30, %29 ], [ %39, %36 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_abort(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #18
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %1, ptr %8, align 4
  tail call void @sk_error_report(ptr noundef %0) #18
  %9 = tail call i32 @__udp_disconnect(ptr noundef %0, i32 undef)
  br label %10

10:                                               ; preds = %7, %2
  tail call void @release_sock(ptr noundef %0) #18
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udp_lib_close(ptr noundef %0, i32 noundef %1) #5 {
  tail call void @sk_common_release(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip4_datagram_release_cb(ptr noundef) #3

; Function Attrs: inlinehint noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udp_lib_hash(ptr nocapture noundef readnone %0) #10 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/udp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #18, !srcloc !63
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @udp_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.udp_iter_state, ptr %4, i32 0, i32 1
  store i32 65536, ptr %5, align 4
  %6 = load i64, ptr %1, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = add i64 %6, -1
  %10 = tail call fastcc ptr @udp_get_idx(ptr noundef %0, i64 noundef %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ inttoptr (i32 1 to ptr), %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp_get_idx(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @udp_get_first(ptr noundef %0, i32 noundef 0)
  %4 = icmp ne ptr %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %61

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  br label %10

10:                                               ; preds = %57, %7
  %11 = phi i64 [ %59, %57 ], [ %1, %7 ]
  %12 = phi ptr [ %58, %57 ], [ %3, %7 ]
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.udp_iter_state, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 47
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi ptr [ %22, %17 ], [ %15, %10 ]
  br label %25

25:                                               ; preds = %36, %23
  %26 = phi ptr [ %12, %23 ], [ %30, %36 ]
  %27 = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -84
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load i16, ptr %24, align 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %28, i32 -68
  %38 = load i16, ptr %37, align 8
  %39 = icmp eq i16 %38, %34
  br i1 %39, label %57, label %25

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.udp_iter_state, ptr %13, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.udp_seq_afinfo, ptr %24, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.udp_table, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %42, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr %struct.udp_hslot, ptr %49, i32 %42, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %50) #18
  %51 = load i32, ptr %41, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i32 [ %51, %48 ], [ %42, %40 ]
  %54 = add i32 %53, 1
  %55 = tail call fastcc ptr @udp_get_first(ptr noundef %0, i32 noundef %54) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52, %36, %33
  %58 = phi ptr [ %55, %52 ], [ %30, %36 ], [ %30, %33 ]
  %59 = add i64 %11, -1
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %65, label %10

61:                                               ; preds = %52, %2
  %62 = phi i64 [ %1, %2 ], [ %11, %52 ]
  %63 = phi ptr [ %3, %2 ], [ null, %52 ]
  %64 = icmp eq i64 %62, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57
  %66 = phi ptr [ %63, %61 ], [ %58, %57 ]
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi ptr [ %66, %65 ], [ null, %61 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @udp_seq_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.udp_iter_state, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 47
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi ptr [ %17, %11 ], [ %9, %5 ]
  br label %20

20:                                               ; preds = %31, %18
  %21 = phi ptr [ %1, %18 ], [ %25, %31 ]
  %22 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %23, i32 -84
  %26 = icmp eq ptr %25, null
  %27 = or i1 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load i16, ptr %19, align 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %23, i32 -68
  %33 = load i16, ptr %32, align 8
  %34 = icmp eq i16 %33, %29
  br i1 %34, label %53, label %20

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.udp_iter_state, ptr %7, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.udp_seq_afinfo, ptr %19, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.udp_table, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %37, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %39, align 4
  %45 = getelementptr %struct.udp_hslot, ptr %44, i32 %37, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %45) #18
  %46 = load i32, ptr %36, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = phi i32 [ %46, %43 ], [ %37, %35 ]
  %49 = add i32 %48, 1
  br label %50

50:                                               ; preds = %47, %3
  %51 = phi i32 [ %49, %47 ], [ 0, %3 ]
  %52 = tail call fastcc ptr @udp_get_first(ptr noundef %0, i32 noundef %51) #18
  br label %53

53:                                               ; preds = %50, %31, %28
  %54 = phi ptr [ %52, %50 ], [ %25, %28 ], [ %25, %31 ]
  %55 = load i64, ptr %2, align 8
  %56 = add i64 %55, 1
  store i64 %56, ptr %2, align 8
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.udp_iter_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %17 = getelementptr inbounds %struct.udp_iter_state, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.udp_seq_afinfo, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.udp_table, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %18, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr %struct.udp_hslot, ptr %25, i32 %18, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %26) #18
  br label %27

27:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp4_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 127
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  store i32 %5, ptr %6, align 8
  %7 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #18
  br label %45

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.udp_iter_state, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %1, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #18
  %20 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %21 = load i16, ptr %20, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #18
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
  %33 = getelementptr inbounds %struct.udp_sock, ptr %1, i32 0, i32 18
  %34 = load volatile i32, ptr %33, align 16
  %35 = sub i32 %32, %34
  %36 = tail call i32 @sock_i_uid(ptr noundef %1) #18
  %37 = icmp eq i32 %36, -1
  %38 = load i32, ptr @overflowuid, align 4
  %39 = select i1 %37, i32 %38, i32 %36
  %40 = tail call i32 @sock_i_ino(ptr noundef %1) #18
  %41 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %42 = load volatile i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 5
  %44 = load volatile i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %13, i32 noundef %16, i32 noundef %23, i32 noundef %14, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %39, i32 noundef 0, i32 noundef %40, i32 noundef %42, ptr noundef %1, i32 noundef %44) #18
  br label %45

45:                                               ; preds = %9, %8
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 10) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @udp4_proc_init() local_unnamed_addr #11 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @udp4_net_ops) #18
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udp4_proc_exit() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @udp4_net_ops) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_uhash_entries(ptr noundef %0) #11 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_kstrtoul(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @uhash_entries) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i32, ptr @uhash_entries, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 255
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 256, ptr @uhash_entries, align 4
  br label %11

11:                                               ; preds = %10, %6, %3, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %3 ], [ 1, %10 ], [ 1, %6 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @udp_table_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 section ".init.text" {
  %3 = load i32, ptr @uhash_entries, align 4
  %4 = getelementptr inbounds %struct.udp_table, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.udp_table, ptr %0, i32 0, i32 2
  %6 = tail call ptr @alloc_large_system_hash(ptr noundef %1, i32 noundef 32, i32 noundef %3, i32 noundef 21, i32 noundef 0, ptr noundef %4, ptr noundef %5, i32 noundef 256, i32 noundef 65536) #18
  store ptr %6, ptr %0, align 4
  %7 = load i32, ptr %5, align 4
  %8 = add i32 %7, 1
  %9 = getelementptr %struct.udp_hslot, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.udp_table, ptr %0, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store ptr null, ptr %6, align 8
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr %struct.udp_hslot, ptr %11, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr %struct.udp_hslot, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %17, %2
  %18 = phi i32 [ %25, %17 ], [ 1, %2 ]
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr %struct.udp_hslot, ptr %19, i32 %18
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr %struct.udp_hslot, ptr %21, i32 %18, i32 1
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr %struct.udp_hslot, ptr %23, i32 %18, i32 2
  store i32 0, ptr %24, align 8
  %25 = add i32 %18, 1
  %26 = load i32, ptr %5, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %17

28:                                               ; preds = %17, %2
  br label %29

29:                                               ; preds = %29, %28
  %30 = phi i32 [ %37, %29 ], [ 0, %28 ]
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr %struct.udp_hslot, ptr %31, i32 %30
  store ptr null, ptr %32, align 8
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr %struct.udp_hslot, ptr %33, i32 %30, i32 1
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr %struct.udp_hslot, ptr %35, i32 %30, i32 2
  store i32 0, ptr %36, align 8
  %37 = add i32 %30, 1
  %38 = load i32, ptr %5, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %29

40:                                               ; preds = %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_flow_hashrnd() #0 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, ptr @udp_flow_hashrnd.___once_key, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %8, !prof !12

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  store i32 0, ptr %1, align 4, !annotation !9
  %5 = call zeroext i1 @__do_once_start(ptr noundef nonnull @udp_flow_hashrnd.___done, ptr noundef nonnull %1) #18
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %4
  call void @get_random_bytes(ptr noundef nonnull @udp_flow_hashrnd.hashrnd, i32 noundef 4) #18
  call void @__do_once_done(ptr noundef nonnull @udp_flow_hashrnd.___done, ptr noundef nonnull @udp_flow_hashrnd.___once_key, ptr noundef nonnull %1, ptr noundef null) #18
  br label %7

7:                                                ; preds = %6, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, ptr @udp_flow_hashrnd.hashrnd, align 4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @udp_init() local_unnamed_addr #11 section ".init.text" {
  tail call void @udp_table_init(ptr noundef nonnull @udp_table, ptr noundef nonnull @.str.3) #20
  %1 = tail call i32 @nr_free_buffer_pages() #18
  %2 = lshr i32 %1, 3
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 128)
  %4 = lshr i32 %3, 2
  %5 = mul nuw nsw i32 %4, 3
  store i32 %5, ptr @sysctl_udp_mem, align 4
  store i32 %3, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_udp_mem, i32 0, i32 1), align 4
  %6 = mul nuw nsw i32 %4, 6
  store i32 %6, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_udp_mem, i32 0, i32 2), align 4
  store i32 4096, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 108), align 4
  store i32 4096, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 107), align 64
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #18, !range !64
  %10 = sub nuw nsw i32 35, %9
  %11 = select i1 %8, i32 3, i32 %10
  store i32 %11, ptr @udp_busylocks_log, align 4
  %12 = shl i32 4, %11
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #21
  store ptr %13, ptr @udp_busylocks, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = load i32, ptr @udp_busylocks_log, align 4
  br label %18

17:                                               ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #22
  unreachable

18:                                               ; preds = %18, %15
  %19 = phi i32 [ %21, %18 ], [ 0, %15 ]
  %20 = getelementptr %struct.spinlock, ptr %13, i32 %19
  store i32 0, ptr %20, align 4
  %21 = add i32 %19, 1
  %22 = lshr i32 %21, %16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %18, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @udp_sysctl_ops) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #22
  unreachable

28:                                               ; preds = %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_rcv_saddr_equal(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_add_sock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_rcv_saddr_any(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reuseport_alloc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_reuseport(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i16 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = load volatile i32, ptr @udp_ehashfn.___once_key, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24, !prof !12

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !annotation !9
  %21 = call zeroext i1 @__do_once_start(ptr noundef nonnull @udp_ehashfn.___done, ptr noundef nonnull %8) #18
  br i1 %21, label %22, label %23, !prof !12

22:                                               ; preds = %20
  call void @get_random_bytes(ptr noundef nonnull @udp_ehashfn.udp_ehash_secret, i32 noundef 4) #18
  call void @__do_once_done(ptr noundef nonnull @udp_ehashfn.___done, ptr noundef nonnull @udp_ehashfn.___once_key, ptr noundef nonnull %8, ptr noundef null) #18
  br label %23

23:                                               ; preds = %22, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, ptr @udp_ehashfn.udp_ehash_secret, align 4
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %27 = load i32, ptr %26, align 4
  %28 = zext i16 %6 to i32
  %29 = shl nuw i32 %28, 16
  %30 = zext i16 %4 to i32
  %31 = or i32 %29, %30
  %32 = add i32 %25, -559038725
  %33 = add i32 %32, %27
  %34 = add i32 %33, %5
  %35 = add i32 %33, %3
  %36 = add i32 %31, %33
  %37 = xor i32 %36, %35
  %38 = call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 14) #18
  %39 = sub i32 %37, %38
  %40 = xor i32 %39, %34
  %41 = call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11) #18
  %42 = sub i32 %40, %41
  %43 = xor i32 %42, %35
  %44 = call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 25) #18
  %45 = sub i32 %43, %44
  %46 = xor i32 %45, %39
  %47 = call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 16) #18
  %48 = sub i32 %46, %47
  %49 = xor i32 %48, %42
  %50 = call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 4) #18
  %51 = sub i32 %49, %50
  %52 = xor i32 %51, %45
  %53 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 14) #18
  %54 = sub i32 %52, %53
  %55 = xor i32 %54, %48
  %56 = call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 24) #18
  %57 = sub i32 %55, %56
  %58 = call ptr @reuseport_select_sock(ptr noundef %1, i32 noundef %57, ptr noundef %2, i32 noundef 8) #18
  br label %59

59:                                               ; preds = %24, %13, %7
  %60 = phi ptr [ %58, %24 ], [ null, %13 ], [ null, %7 ]
  ret ptr %60
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_make_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reduce_allocated(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__lock_sock_fast(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #18, !srcloc !10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #18, !srcloc !54
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !57
  br label %9

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %9, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #18
  br label %9

9:                                                ; preds = %8, %6, %5
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__first_packet_length(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %1
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %112, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  br label %12

12:                                               ; preds = %92, %8
  %13 = phi ptr [ %4, %8 ], [ %108, %92 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = lshr i16 %15, 5
  %17 = and i16 %16, 3
  %18 = icmp ne i16 %17, 1
  %19 = icmp sgt i16 %15, -1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %112

21:                                               ; preds = %12
  %22 = icmp eq i16 %17, 3
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13, i32 0, i32 4
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %26, %31
  %34 = add i32 %33, %32
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %112

36:                                               ; preds = %23, %21
  %37 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 24
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, %39
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %13) #18
  br label %47

45:                                               ; preds = %36
  %46 = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef nonnull %13, i32 noundef %39) #18
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i16 [ %44, %43 ], [ %46, %45 ]
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %112, label %50

50:                                               ; preds = %47
  %51 = load i16, ptr %9, align 4
  %52 = icmp eq i16 %51, 136
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %55 = getelementptr [10 x i32], ptr %54, i32 0, i32 7
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #14, !srcloc !17
  %60 = add i32 %59, %56
  br label %69

61:                                               ; preds = %50
  %62 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %63 = getelementptr [10 x i32], ptr %62, i32 0, i32 7
  %64 = ptrtoint ptr %63 to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #14, !srcloc !17
  %68 = add i32 %67, %64
  br label %69

69:                                               ; preds = %61, %53
  %70 = phi i32 [ %60, %53 ], [ %68, %61 ]
  %71 = inttoptr i32 %70 to ptr
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  %74 = load i16, ptr %9, align 4
  %75 = icmp eq i16 %74, 136
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %78 = getelementptr [10 x i32], ptr %77, i32 0, i32 3
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #14, !srcloc !17
  %83 = add i32 %82, %79
  br label %92

84:                                               ; preds = %69
  %85 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %86 = getelementptr [10 x i32], ptr %85, i32 0, i32 3
  %87 = ptrtoint ptr %86 to i32
  %88 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %89 = inttoptr i32 %88 to ptr
  %90 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %89) #14, !srcloc !17
  %91 = add i32 %90, %87
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi i32 [ %91, %84 ], [ %83, %76 ]
  %94 = inttoptr i32 %93 to ptr
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #18, !srcloc !10
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #18, !srcloc !28
  %98 = load i32, ptr %11, align 4
  %99 = add i32 %98, -1
  store volatile i32 %99, ptr %11, align 4
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds %struct.anon.43, ptr %13, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  store ptr null, ptr %101, align 4
  store ptr null, ptr %13, align 8
  %103 = getelementptr inbounds %struct.anon.43, ptr %100, i32 0, i32 1
  store volatile ptr %102, ptr %103, align 4
  store volatile ptr %100, ptr %102, align 8
  %104 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 18
  %105 = load i32, ptr %104, align 8
  %106 = load i32, ptr %2, align 4
  %107 = add i32 %106, %105
  store i32 %107, ptr %2, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #18
  %108 = load ptr, ptr %1, align 4
  %109 = icmp eq ptr %108, %1
  %110 = icmp eq ptr %108, null
  %111 = or i1 %109, %110
  br i1 %111, label %112, label %12

112:                                              ; preds = %92, %47, %23, %12, %3
  %113 = phi ptr [ null, %3 ], [ %13, %12 ], [ %13, %23 ], [ %13, %47 ], [ null, %92 ]
  ret ptr %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_busy_loop_end(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete_head(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #18
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !25
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !26
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_queue_rcv_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13, %8
  %19 = and i32 %10, 262144
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %18, %2
  %27 = tail call fastcc i32 @udp_queue_rcv_one_skb(ptr noundef %0, ptr noundef %1)
  br label %74

28:                                               ; preds = %21, %13
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %34 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = getelementptr i8, ptr %36, i32 %39
  store ptr %40, ptr %35, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 %42, %39
  store i32 %43, ptr %41, align 8
  %44 = tail call fastcc ptr @udp_rcv_segment(ptr noundef %0, ptr noundef %1)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %74, label %46

46:                                               ; preds = %72, %28
  %47 = phi ptr [ %48, %72 ], [ %44, %28 ]
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 13, i32 0, i32 17
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %50, i32 %53
  %55 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %54 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = sub i32 %57, %58
  %60 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 5
  %61 = load i32, ptr %60, align 8
  %62 = sub i32 %61, %59
  store i32 %62, ptr %60, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %67, !prof !12

66:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #18, !srcloc !65
  unreachable

67:                                               ; preds = %46
  %68 = getelementptr i8, ptr %56, i32 %59
  store ptr %68, ptr %55, align 4
  tail call fastcc void @udp_post_segment_fix_csum(ptr noundef nonnull %47)
  %69 = tail call fastcc i32 @udp_queue_rcv_one_skb(ptr noundef %0, ptr noundef nonnull %47)
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @ip_protocol_deliver_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %47, i32 noundef %69) #18
  br label %72

72:                                               ; preds = %71, %67
  %73 = icmp eq ptr %48, null
  br i1 %73, label %74, label %46

74:                                               ; preds = %72, %28, %26
  %75 = phi i32 [ %27, %26 ], [ 0, %28 ], [ 0, %72 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udp_queue_rcv_one_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 136
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  br label %55

13:                                               ; preds = %7, %2
  %14 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = inttoptr i32 %28 to ptr
  %32 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %30, %25
  %37 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %55

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, -2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = inttoptr i32 %43 to ptr
  %47 = getelementptr inbounds %struct.dst_entry, ptr %46, i32 0, i32 7
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45, %40
  %52 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %51, %36, %11
  %56 = phi i32 [ %12, %11 ], [ %39, %36 ], [ %54, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %334, label %58

58:                                               ; preds = %55, %45, %30, %20
  %59 = load volatile i32, ptr @udp_encap_needed_key, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %98, !prof !12

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %63 = load i8, ptr %62, align 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 11
  %67 = load volatile ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %98, label %69

69:                                               ; preds = %65
  %70 = tail call fastcc i32 @udp_lib_checksum_complete(ptr noundef %1)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %311

72:                                               ; preds = %69
  %73 = tail call i32 %67(ptr noundef %0, ptr noundef %1) #18
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  br i1 %5, label %76, label %84

76:                                               ; preds = %75
  %77 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %78 = getelementptr [10 x i32], ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #14, !srcloc !17
  %83 = add i32 %82, %79
  br label %92

84:                                               ; preds = %75
  %85 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %86 = getelementptr [10 x i32], ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  %88 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %89 = inttoptr i32 %88 to ptr
  %90 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %89) #14, !srcloc !17
  %91 = add i32 %90, %87
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi i32 [ %83, %76 ], [ %91, %84 ]
  %94 = inttoptr i32 %93 to ptr
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  %97 = sub i32 0, %73
  br label %358

98:                                               ; preds = %72, %65, %61, %58
  %99 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 9
  %100 = load i8, ptr %99, align 2
  %101 = and i8 %100, 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %105 = load i8, ptr %104, align 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 8
  %109 = load i16, ptr %108, align 16
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %334, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %113 = load i16, ptr %112, align 8
  %114 = icmp ult i16 %113, %109
  br i1 %114, label %334, label %115

115:                                              ; preds = %111, %103, %98
  %116 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %116) #18, !srcloc !41
  %117 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 16
  %118 = load volatile ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %157, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %122 = load i16, ptr %121, align 8
  %123 = lshr i16 %122, 5
  %124 = and i16 %123, 3
  %125 = icmp ne i16 %124, 1
  %126 = icmp sgt i16 %122, -1
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %157

128:                                              ; preds = %120
  %129 = icmp eq i16 %124, 3
  br i1 %129, label %130, label %143

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %132 = load i16, ptr %131, align 4
  %133 = zext i16 %132 to i32
  %134 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %137 = load ptr, ptr %136, align 8
  %138 = ptrtoint ptr %135 to i32
  %139 = ptrtoint ptr %137 to i32
  %140 = sub i32 %133, %138
  %141 = add i32 %140, %139
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %130, %128
  %144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %145 = load i16, ptr %144, align 8
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %148 = load i32, ptr %147, align 8
  %149 = icmp eq i32 %148, %146
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #18
  br label %154

152:                                              ; preds = %143
  %153 = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %1, i32 noundef %146) #18
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i16 [ %151, %150 ], [ %153, %152 ]
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %311

157:                                              ; preds = %154, %130, %120, %115
  %158 = tail call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef %1, i32 noundef 8) #18
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %334

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %162 = load i16, ptr %161, align 8
  %163 = and i16 %162, -32672
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = tail call i32 @csum_partial(ptr noundef %167, i32 noundef 8, i32 noundef %169) #18
  store i32 %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %165, %160
  %172 = tail call ptr @skb_pull_rcsum(ptr noundef %1, i32 noundef 8) #18
  %173 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %174 = load i16, ptr %173, align 8
  %175 = add i16 %174, -8
  store i16 %175, ptr %173, align 8
  tail call void @ipv4_pktinfo_prepare(ptr noundef %0, ptr noundef %1) #18
  %176 = load i32, ptr %0, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %210, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %180 = load i32, ptr %179, align 8
  %181 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %185, label %184, !prof !13

184:                                              ; preds = %178
  store i32 %182, ptr %179, align 8
  br label %185

185:                                              ; preds = %184, %178
  %186 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %187 = load volatile i32, ptr %186, align 8
  %188 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %189 = load i32, ptr %188, align 8
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %192, label %191, !prof !13

191:                                              ; preds = %185
  store volatile i32 %189, ptr %186, align 8
  br label %192

192:                                              ; preds = %191, %185
  %193 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %194 = load i16, ptr %193, align 4
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %192
  %197 = add i16 %194, -1
  %198 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 17
  %199 = load volatile i16, ptr %198, align 2
  %200 = icmp eq i16 %199, %197
  br i1 %200, label %202, label %201, !prof !13

201:                                              ; preds = %196
  store volatile i16 %197, ptr %198, align 2
  br label %202

202:                                              ; preds = %201, %196, %192
  %203 = tail call ptr @llvm.thread.pointer() #18
  %204 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %207 = load volatile i32, ptr %206, align 8
  %208 = icmp eq i32 %207, %205
  br i1 %208, label %217, label %209, !prof !13

209:                                              ; preds = %202
  store volatile i32 %205, ptr %206, align 8
  br label %217

210:                                              ; preds = %171
  %211 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %212 = load i32, ptr %211, align 8
  %213 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %214 = load volatile i32, ptr %213, align 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store volatile i32 %212, ptr %213, align 8
  br label %217

217:                                              ; preds = %216, %210, %209, %202
  %218 = tail call i32 @__udp_enqueue_schedule_skb(ptr noundef %0, ptr noundef %1) #18
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %358

220:                                              ; preds = %217
  %221 = load i16, ptr %3, align 4
  %222 = icmp eq i16 %221, 136
  %223 = icmp eq i32 %218, -12
  %224 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18
  br i1 %223, label %225, label %248

225:                                              ; preds = %220
  br i1 %222, label %226, label %237

226:                                              ; preds = %225
  %227 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %228 = getelementptr [10 x i32], ptr %227, i32 0, i32 5
  %229 = ptrtoint ptr %228 to i32
  %230 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %231 = inttoptr i32 %230 to ptr
  %232 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %231) #14, !srcloc !17
  %233 = add i32 %232, %229
  %234 = inttoptr i32 %233 to ptr
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %224) #18, !srcloc !18
  br label %271

237:                                              ; preds = %225
  %238 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %239 = getelementptr [10 x i32], ptr %238, i32 0, i32 5
  %240 = ptrtoint ptr %239 to i32
  %241 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %242 = inttoptr i32 %241 to ptr
  %243 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %242) #14, !srcloc !17
  %244 = add i32 %243, %240
  %245 = inttoptr i32 %244 to ptr
  %246 = load i32, ptr %245, align 4
  %247 = add i32 %246, 1
  store i32 %247, ptr %245, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %224) #18, !srcloc !18
  br label %283

248:                                              ; preds = %220
  br i1 %222, label %249, label %260

249:                                              ; preds = %248
  %250 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %251 = getelementptr [10 x i32], ptr %250, i32 0, i32 9
  %252 = ptrtoint ptr %251 to i32
  %253 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %254 = inttoptr i32 %253 to ptr
  %255 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %254) #14, !srcloc !17
  %256 = add i32 %255, %252
  %257 = inttoptr i32 %256 to ptr
  %258 = load i32, ptr %257, align 4
  %259 = add i32 %258, 1
  store i32 %259, ptr %257, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %224) #18, !srcloc !18
  br label %271

260:                                              ; preds = %248
  %261 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %262 = getelementptr [10 x i32], ptr %261, i32 0, i32 9
  %263 = ptrtoint ptr %262 to i32
  %264 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %265 = inttoptr i32 %264 to ptr
  %266 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %265) #14, !srcloc !17
  %267 = add i32 %266, %263
  %268 = inttoptr i32 %267 to ptr
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, 1
  store i32 %270, ptr %268, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %224) #18, !srcloc !18
  br label %283

271:                                              ; preds = %249, %226
  %272 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %273 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %274 = getelementptr [10 x i32], ptr %273, i32 0, i32 3
  %275 = ptrtoint ptr %274 to i32
  %276 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %277 = inttoptr i32 %276 to ptr
  %278 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %277) #14, !srcloc !17
  %279 = add i32 %278, %275
  %280 = inttoptr i32 %279 to ptr
  %281 = load i32, ptr %280, align 4
  %282 = add i32 %281, 1
  store i32 %282, ptr %280, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %272) #18, !srcloc !18
  br label %295

283:                                              ; preds = %260, %237
  %284 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %285 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %286 = getelementptr [10 x i32], ptr %285, i32 0, i32 3
  %287 = ptrtoint ptr %286 to i32
  %288 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %289 = inttoptr i32 %288 to ptr
  %290 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %289) #14, !srcloc !17
  %291 = add i32 %290, %287
  %292 = inttoptr i32 %291 to ptr
  %293 = load i32, ptr %292, align 4
  %294 = add i32 %293, 1
  store i32 %294, ptr %292, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %284) #18, !srcloc !18
  br label %295

295:                                              ; preds = %283, %271
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #18
  %296 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_udp_fail_queue_rcv_skb, i32 0, i32 1), align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %358

298:                                              ; preds = %295
  %299 = tail call ptr @llvm.thread.pointer() #18
  %300 = getelementptr inbounds %struct.thread_info, ptr %299, i32 0, i32 2
  %301 = load i32, ptr %300, align 8
  %302 = lshr i32 %301, 5
  %303 = getelementptr i32, ptr @__cpu_online_mask, i32 %302
  %304 = load volatile i32, ptr %303, align 4
  %305 = and i32 %301, 31
  %306 = shl nuw i32 1, %305
  %307 = and i32 %306, %304
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %358, label %309

309:                                              ; preds = %298
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !66
  %310 = tail call i32 @__traceiter_udp_fail_queue_rcv_skb(ptr noundef null, i32 noundef %218, ptr noundef %0) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !67
  br label %358

311:                                              ; preds = %154, %69
  br i1 %5, label %312, label %323

312:                                              ; preds = %311
  %313 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %314 = getelementptr [10 x i32], ptr %313, i32 0, i32 7
  %315 = ptrtoint ptr %314 to i32
  %316 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %317 = inttoptr i32 %316 to ptr
  %318 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %317) #14, !srcloc !17
  %319 = add i32 %318, %315
  %320 = inttoptr i32 %319 to ptr
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %321, 1
  store i32 %322, ptr %320, align 4
  br label %335

323:                                              ; preds = %311
  %324 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %325 = getelementptr [10 x i32], ptr %324, i32 0, i32 7
  %326 = ptrtoint ptr %325 to i32
  %327 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %328 = inttoptr i32 %327 to ptr
  %329 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %328) #14, !srcloc !17
  %330 = add i32 %329, %326
  %331 = inttoptr i32 %330 to ptr
  %332 = load i32, ptr %331, align 4
  %333 = add i32 %332, 1
  store i32 %333, ptr %331, align 4
  br label %343

334:                                              ; preds = %157, %111, %107, %55
  br i1 %5, label %335, label %343

335:                                              ; preds = %334, %312
  %336 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %337 = getelementptr [10 x i32], ptr %336, i32 0, i32 3
  %338 = ptrtoint ptr %337 to i32
  %339 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %340 = inttoptr i32 %339 to ptr
  %341 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %340) #14, !srcloc !17
  %342 = add i32 %341, %338
  br label %351

343:                                              ; preds = %334, %323
  %344 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %345 = getelementptr [10 x i32], ptr %344, i32 0, i32 3
  %346 = ptrtoint ptr %345 to i32
  %347 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %348 = inttoptr i32 %347 to ptr
  %349 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %348) #14, !srcloc !17
  %350 = add i32 %349, %346
  br label %351

351:                                              ; preds = %343, %335
  %352 = phi i32 [ %350, %343 ], [ %342, %335 ]
  %353 = inttoptr i32 %352 to ptr
  %354 = load i32, ptr %353, align 4
  %355 = add i32 %354, 1
  store i32 %355, ptr %353, align 4
  %356 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %356) #18, !srcloc !10
  %357 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %356, ptr %356, i32 1, ptr elementtype(i32) %356) #18, !srcloc !28
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #18
  br label %358

358:                                              ; preds = %351, %309, %298, %295, %217, %92
  %359 = phi i32 [ -1, %351 ], [ %97, %92 ], [ 0, %217 ], [ -1, %295 ], [ -1, %298 ], [ -1, %309 ]
  ret i32 %359
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp_rcv_segment(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 19, i64 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 5
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = or i16 %8, 96
  store i16 %12, ptr %7, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = tail call ptr @__skb_gso_segment(ptr noundef %1, i64 noundef %6, i1 noundef zeroext false) #18
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #18, !srcloc !10
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %23, ptr elementtype(i32) %24) #18, !srcloc !28
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 136
  %30 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), align 16
  %31 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4), align 8
  %32 = select i1 %29, ptr %30, ptr %31
  %33 = getelementptr [10 x i32], ptr %32, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #14, !srcloc !17
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %23
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #18, !srcloc !18
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #18
  br label %43

42:                                               ; preds = %13
  tail call void @consume_skb(ptr noundef %1) #18
  br label %43

43:                                               ; preds = %42, %18
  %44 = phi ptr [ null, %18 ], [ %14, %42 ]
  ret ptr %44
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udp_post_segment_fix_csum(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %3 = load i8, ptr %2, align 2
  %4 = icmp ne i8 %3, 0
  %5 = load i1, ptr @udp_post_segment_fix_csum.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %1
  store i1 true, ptr @udp_post_segment_fix_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 500, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store i16 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, -32672
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = or i16 %15, -32768
  store i16 %19, ptr %14, align 8
  br label %20

20:                                               ; preds = %18, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_protocol_deliver_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_pktinfo_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_udp_fail_queue_rcv_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_sf_allow(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp_get_first(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.udp_iter_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %17 = getelementptr inbounds %struct.udp_iter_state, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.udp_seq_afinfo, ptr %16, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.udp_table, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %1
  br i1 %22, label %62, label %23

23:                                               ; preds = %55, %15
  %24 = phi ptr [ %58, %55 ], [ %19, %15 ]
  %25 = phi i32 [ %57, %55 ], [ %1, %15 ]
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr %struct.udp_hslot, ptr %26, i32 %25
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %23
  %31 = getelementptr %struct.udp_hslot, ptr %26, i32 %25, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %31) #18
  %32 = load ptr, ptr %27, align 8
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -84
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %30
  %38 = load i16, ptr %16, align 4
  %39 = icmp eq i16 %38, 0
  br label %40

40:                                               ; preds = %46, %37
  %41 = phi ptr [ %34, %37 ], [ %50, %46 ]
  br i1 %39, label %62, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.sock_common, ptr %41, i32 0, i32 3
  %44 = load i16, ptr %43, align 8
  %45 = icmp eq i16 %44, %38
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sock_common, ptr %41, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = getelementptr i8, ptr %48, i32 -84
  %51 = icmp eq ptr %50, null
  %52 = or i1 %49, %51
  br i1 %52, label %53, label %40

53:                                               ; preds = %46, %30
  tail call void @_raw_spin_unlock_bh(ptr noundef %31) #18
  %54 = load i32, ptr %17, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = phi i32 [ %54, %53 ], [ %25, %23 ]
  %57 = add i32 %56, 1
  store i32 %57, ptr %17, align 4
  %58 = load ptr, ptr %18, align 4
  %59 = getelementptr inbounds %struct.udp_table, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %23

62:                                               ; preds = %55, %42, %40, %15
  %63 = phi ptr [ null, %15 ], [ %34, %40 ], [ %41, %42 ], [ null, %55 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @udp4_proc_init_net(ptr nocapture noundef readonly %0) #11 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @udp_seq_ops, i32 noundef 8, ptr noundef nonnull @udp4_seq_afinfo) #18
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udp4_proc_exit_net(ptr nocapture noundef readonly %0) #15 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.16, ptr noundef %3) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @udp_sysctl_init(ptr nocapture noundef writeonly %0) #17 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 108
  store i32 4096, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 107
  store i32 4096, ptr %3, align 64
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { cold }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold noreturn nounwind }

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
!10 = !{i64 986734, i64 2148476705, i64 2148476731, i64 2148476778, i64 2148476800, i64 2148476828, i64 2148476848}
!11 = !{i64 2148489578, i64 2148489610, i64 2148489639, i64 2148489673, i64 2148489704, i64 2148489727}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2151261047}
!15 = !{i64 2151246006}
!16 = !{i64 892412, i64 892473}
!17 = !{i64 911112}
!18 = !{i64 895429}
!19 = !{i64 2149371955}
!20 = !{i64 2149367779}
!21 = !{i64 2149367854, i64 2149367881, i64 2149367928, i64 2149367950, i64 2149367978, i64 2149367998}
!22 = !{i64 2149394958}
!23 = !{i64 2149465207}
!24 = !{i64 2149465424}
!25 = !{i64 2149661534}
!26 = !{i64 2149661835}
!27 = !{i8 0, i8 2}
!28 = !{i64 2148488120, i64 2148488146, i64 2148488175, i64 2148488209, i64 2148488240, i64 2148488263}
!29 = !{i64 2148490477, i64 2148490503, i64 2148490532, i64 2148490566, i64 2148490597, i64 2148490620}
!30 = !{i64 5875635, i64 5875676, i64 5875762}
!31 = !{i64 5874533}
!32 = !{i64 5875886, i64 5875926, i64 5875954, i64 5876040}
!33 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!34 = !{i64 2149170294}
!35 = !{i64 2155875340}
!36 = !{i64 995384, i64 995401, i64 995425, i64 995451, i64 995469}
!37 = !{i64 2155875659}
!38 = !{i64 2148487627}
!39 = !{i64 973303, i64 973328, i64 973350, i64 973366, i64 973378, i64 973398, i64 973422, i64 973438, i64 973450}
!40 = !{i64 2148487753}
!41 = !{i64 986552}
!42 = !{i64 2148585966}
!43 = !{i64 2148488804, i64 2148488836, i64 2148488865, i64 2148488899, i64 2148488930, i64 2148488953}
!44 = !{i64 2148586169}
!45 = !{i64 2153785051}
!46 = !{i64 4692767}
!47 = !{i64 4692964}
!48 = !{i64 2152178243}
!49 = !{i64 2157877864, i64 2157878144, i64 2157878478, i64 2157878812}
!50 = !{i64 2157887847, i64 2157888127, i64 2157888461, i64 2157888795}
!51 = !{i64 2155900104}
!52 = !{i64 2155900421}
!53 = !{i64 2148593861}
!54 = !{i64 2148491935, i64 2148491967, i64 2148491996, i64 2148492030, i64 2148492061, i64 2148492084}
!55 = !{i64 2158159447}
!56 = !{i64 2158159766}
!57 = !{i64 2149745559}
!58 = !{i64 972797, i64 972821, i64 972842, i64 972859, i64 972876}
!59 = !{i64 2152196655, i64 2152196680}
!60 = !{i64 2158337433, i64 2158337713, i64 2158338047, i64 2158338381}
!61 = !{i64 2158353898, i64 2158354178, i64 2158354512, i64 2158354846}
!62 = !{i64 2152197233, i64 2152197258}
!63 = !{i64 2157230995, i64 2157231477, i64 2157231032, i64 2157231088, i64 2157231122, i64 2157231146, i64 2157231187, i64 2157231208, i64 2157231236, i64 2157231270}
!64 = !{i32 0, i32 33}
!65 = !{i64 2153849520, i64 2153850008, i64 2153849557, i64 2153849613, i64 2153849647, i64 2153849671, i64 2153849712, i64 2153849733, i64 2153849761, i64 2153849795}
!66 = !{i64 2157073783}
!67 = !{i64 2157073951}
