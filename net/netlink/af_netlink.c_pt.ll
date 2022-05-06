; ModuleID = '/llk/IR/net/netlink/af_netlink.c_pt.bc'
source_filename = "../net/netlink/af_netlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22nl_table\22\09\09\09\09\09"
module asm "__kstrtabns_nl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nl_table_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22nl_table_lock\22\09\09\09\09\09"
module asm "__kstrtabns_nl_table_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_trace_netlink_extack:\09\09\09\09\09"
module asm "\09.asciz \09\22do_trace_netlink_extack\22\09\09\09\09\09"
module asm "__kstrtabns_do_trace_netlink_extack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_add_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_add_tap\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_add_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_remove_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_remove_tap\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_remove_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22__netlink_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns___netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_capable\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_net_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_net_capable\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_net_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_unicast:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_unicast\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_unicast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_has_listeners:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_has_listeners\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_has_listeners:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_strict_get_check:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_strict_get_check\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_strict_get_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_broadcast:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_broadcast\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_broadcast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_set_err:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_set_err\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_set_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netlink_kernel_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__netlink_kernel_create\22\09\09\09\09\09"
module asm "__kstrtabns___netlink_kernel_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_kernel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_kernel_release\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_kernel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22__nlmsg_put\22\09\09\09\09\09"
module asm "__kstrtabns___nlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netlink_dump_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__netlink_dump_start\22\09\09\09\09\09"
module asm "__kstrtabns___netlink_dump_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_ack\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsg_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsg_notify\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsg_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.31 }
%union.anon.31 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.41, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type {}
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.94, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.anon.94 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.74, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.74 = type { ptr }
%struct.lock_class_key = type {}
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_netlink_extack = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.153, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.171, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.153 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.171 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.netlink_tap_net = type { %struct.list_head, %struct.mutex }
%struct.netlink_tap = type { ptr, ptr, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.113, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.113 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.netlink_skb_parms = type { %struct.scm_creds, i32, i32, i32, ptr, i8, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.84, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.85, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.86, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.44, %union.anon.46, %union.anon.47, i16, i8, i8, i32, %union.anon.49, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.76, [0 x i32], %union.anon.77, i16, i16, %union.anon.78, %struct.refcount_struct, [0 x i32], %union.anon.79 }
%union.anon.44 = type { i64 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.49 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.75 }
%union.anon.75 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.84 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.85 = type { ptr }
%union.anon.86 = type { ptr }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.sk_buff = type { %union.anon.54, %union.anon.57, %union.anon.58, [48 x i8], %union.anon.59, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.61, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr, %union.anon.56 }
%union.anon.56 = type { ptr }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i32, ptr }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.63, i32, i32, i32, i16, i16, %union.anon.65, %union.anon.66, %union.anon.67, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.63 = type { i32 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i16 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.netlink_sock = type { %struct.sock, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.wait_queue_head, i8, i8, i32, %struct.netlink_callback, ptr, %struct.mutex, ptr, ptr, ptr, ptr, %struct.rhash_head, %struct.callback_head, %struct.work_struct }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.157 }
%union.anon.157 = type { [6 x i32], [24 x i8] }
%struct.rhash_head = type { ptr }
%struct.netlink_table = type { %struct.rhashtable, %struct.hlist_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.listeners = type { %struct.callback_head, [0 x i32] }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.netlink_compare_arg = type { %struct.possible_net_t, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.lockdep_map = type {}
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netlink_notify = type { ptr, i32, i32 }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.sockaddr_nl = type { i16, i16, i32, i32 }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.53, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.50, %union.anon.51 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { i64 }
%union.anon.53 = type { ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.ucred = type { i32, i32, i32 }
%struct.nl_pktinfo = type { i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.nl_seq_iter = type { %struct.seq_net_private, %struct.rhashtable_iter, i32 }
%struct.seq_net_private = type {}
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }

@__tpstrtab_netlink_extack = internal constant [15 x i8] c"netlink_extack\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_netlink_extack = dso_local global %struct.static_call_key { ptr @__traceiter_netlink_extack }, align 4
@__tracepoint_netlink_extack = dso_local global %struct.tracepoint { ptr @__tpstrtab_netlink_extack, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_netlink_extack, ptr null, ptr @__traceiter_netlink_extack, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_netlink_extack = internal constant ptr @__tracepoint_netlink_extack, section "__tracepoints_ptrs", align 4
@trace_event_fields_netlink_extack = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_netlink_extack = internal global %struct.trace_event_class { ptr @.str.50, ptr @trace_event_raw_event_netlink_extack, ptr @perf_trace_netlink_extack, ptr @trace_event_reg, ptr @trace_event_fields_netlink_extack, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_netlink_extack, i64 24), ptr getelementptr (i8, ptr @event_class_netlink_extack, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_netlink_extack = internal global %struct.trace_event_functions { ptr @trace_raw_output_netlink_extack, ptr null, ptr null, ptr null }, align 4
@print_fmt_netlink_extack = internal global [25 x i8] c"\22msg=%s\22, __get_str(msg)\00", align 1
@event_netlink_extack = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_netlink_extack, %union.anon.0 { ptr @__tracepoint_netlink_extack }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_netlink_extack }, ptr @print_fmt_netlink_extack, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_netlink_extack = internal global ptr @event_netlink_extack, section "_ftrace_events", align 4
@nl_table = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nl_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_nl_table = external dso_local constant [0 x i8], align 1
@__ksymtab_nl_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nl_table to i32), ptr @__kstrtab_nl_table, ptr @__kstrtabns_nl_table }, section "___ksymtab_gpl+nl_table", align 4
@nl_table_lock = dso_local global %struct.rwlock_t zeroinitializer, align 4
@__kstrtab_nl_table_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_nl_table_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_nl_table_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nl_table_lock to i32), ptr @__kstrtab_nl_table_lock, ptr @__kstrtabns_nl_table_lock }, section "___ksymtab_gpl+nl_table_lock", align 4
@__kstrtab_do_trace_netlink_extack = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_trace_netlink_extack = external dso_local constant [0 x i8], align 1
@__ksymtab_do_trace_netlink_extack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_trace_netlink_extack to i32), ptr @__kstrtab_do_trace_netlink_extack, ptr @__kstrtabns_do_trace_netlink_extack }, section "___ksymtab+do_trace_netlink_extack", align 4
@netlink_tap_net_id = internal global i32 0, align 4
@__kstrtab_netlink_add_tap = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_add_tap = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_add_tap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_add_tap to i32), ptr @__kstrtab_netlink_add_tap, ptr @__kstrtabns_netlink_add_tap }, section "___ksymtab_gpl+netlink_add_tap", align 4
@__kstrtab_netlink_remove_tap = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_remove_tap = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_remove_tap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_remove_tap to i32), ptr @__kstrtab_netlink_remove_tap, ptr @__kstrtabns_netlink_remove_tap }, section "___ksymtab_gpl+netlink_remove_tap", align 4
@nl_table_users = internal global %struct.atomic_t zeroinitializer, align 4
@nl_table_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nl_table_wait, i64 4), ptr getelementptr (i8, ptr @nl_table_wait, i64 4) } }, align 4
@__kstrtab___netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns___netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab___netlink_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netlink_ns_capable to i32), ptr @__kstrtab___netlink_ns_capable, ptr @__kstrtabns___netlink_ns_capable }, section "___ksymtab+__netlink_ns_capable", align 4
@__kstrtab_netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_ns_capable to i32), ptr @__kstrtab_netlink_ns_capable, ptr @__kstrtabns_netlink_ns_capable }, section "___ksymtab+netlink_ns_capable", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_netlink_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_capable to i32), ptr @__kstrtab_netlink_capable, ptr @__kstrtabns_netlink_capable }, section "___ksymtab+netlink_capable", align 4
@__kstrtab_netlink_net_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_net_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_net_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_net_capable to i32), ptr @__kstrtab_netlink_net_capable, ptr @__kstrtabns_netlink_net_capable }, section "___ksymtab+netlink_net_capable", align 4
@__kstrtab_netlink_unicast = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_unicast = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_unicast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_unicast to i32), ptr @__kstrtab_netlink_unicast, ptr @__kstrtabns_netlink_unicast }, section "___ksymtab+netlink_unicast", align 4
@__kstrtab_netlink_has_listeners = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_has_listeners = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_has_listeners = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_has_listeners to i32), ptr @__kstrtab_netlink_has_listeners, ptr @__kstrtabns_netlink_has_listeners }, section "___ksymtab_gpl+netlink_has_listeners", align 4
@__kstrtab_netlink_strict_get_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_strict_get_check = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_strict_get_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_strict_get_check to i32), ptr @__kstrtab_netlink_strict_get_check, ptr @__kstrtabns_netlink_strict_get_check }, section "___ksymtab_gpl+netlink_strict_get_check", align 4
@__kstrtab_netlink_broadcast = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_broadcast = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_broadcast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_broadcast to i32), ptr @__kstrtab_netlink_broadcast, ptr @__kstrtabns_netlink_broadcast }, section "___ksymtab+netlink_broadcast", align 4
@__kstrtab_netlink_set_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_set_err = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_set_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_set_err to i32), ptr @__kstrtab_netlink_set_err, ptr @__kstrtabns_netlink_set_err }, section "___ksymtab+netlink_set_err", align 4
@__kstrtab___netlink_kernel_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___netlink_kernel_create = external dso_local constant [0 x i8], align 1
@__ksymtab___netlink_kernel_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netlink_kernel_create to i32), ptr @__kstrtab___netlink_kernel_create, ptr @__kstrtabns___netlink_kernel_create }, section "___ksymtab+__netlink_kernel_create", align 4
@__kstrtab_netlink_kernel_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_kernel_release = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_kernel_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_kernel_release to i32), ptr @__kstrtab_netlink_kernel_release, ptr @__kstrtabns_netlink_kernel_release }, section "___ksymtab+netlink_kernel_release", align 4
@__kstrtab___nlmsg_put = external dso_local constant [0 x i8], align 1
@__kstrtabns___nlmsg_put = external dso_local constant [0 x i8], align 1
@__ksymtab___nlmsg_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nlmsg_put to i32), ptr @__kstrtab___nlmsg_put, ptr @__kstrtabns___nlmsg_put }, section "___ksymtab+__nlmsg_put", align 4
@__kstrtab___netlink_dump_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___netlink_dump_start = external dso_local constant [0 x i8], align 1
@__ksymtab___netlink_dump_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netlink_dump_start to i32), ptr @__kstrtab___netlink_dump_start, ptr @__kstrtabns___netlink_dump_start }, section "___ksymtab+__netlink_dump_start", align 4
@.str = private unnamed_addr constant [25 x i8] c"net/netlink/af_netlink.c\00", align 1
@__kstrtab_netlink_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_ack to i32), ptr @__kstrtab_netlink_ack, ptr @__kstrtabns_netlink_ack }, section "___ksymtab+netlink_ack", align 4
@__kstrtab_netlink_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_rcv_skb to i32), ptr @__kstrtab_netlink_rcv_skb, ptr @__kstrtabns_netlink_rcv_skb }, section "___ksymtab+netlink_rcv_skb", align 4
@__kstrtab_nlmsg_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsg_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsg_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsg_notify to i32), ptr @__kstrtab_nlmsg_notify, ptr @__kstrtabns_nlmsg_notify }, section "___ksymtab+nlmsg_notify", align 4
@netlink_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @netlink_chain, i64 16), ptr getelementptr (i8, ptr @netlink_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_netlink_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_register_notifier to i32), ptr @__kstrtab_netlink_register_notifier, ptr @__kstrtabns_netlink_register_notifier }, section "___ksymtab+netlink_register_notifier", align 4
@__kstrtab_netlink_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_unregister_notifier to i32), ptr @__kstrtab_netlink_unregister_notifier, ptr @__kstrtabns_netlink_unregister_notifier }, section "___ksymtab+netlink_unregister_notifier", align 4
@__initcall__kmod_af_netlink__560_2903_netlink_proto_init1 = internal global ptr @netlink_proto_init, section ".initcall1.init", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"msg=%s\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@init_net = external dso_local global %struct.net, align 64
@.str.6 = private unnamed_addr constant [38 x i8] c"\014__netlink_remove_tap: %p not found\0A\00", align 1
@netlink_ops = internal constant %struct.proto_ops { i32 16, ptr null, ptr @netlink_release, ptr @netlink_bind, ptr @netlink_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @netlink_getname, ptr @datagram_poll, ptr @netlink_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @netlink_setsockopt, ptr @netlink_getsockopt, ptr null, ptr @netlink_sendmsg, ptr @netlink_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@netlink_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 744, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.74 zeroinitializer, ptr null, [32 x i8] c"NETLINK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__netlink_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"nlk->cb_mutex\00", align 1
@__netlink_create.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"&nlk->wait\00", align 1
@genl_sk_destructing_cnt = external dso_local global %struct.atomic_t, align 4
@genl_sk_destructing_waitq = external dso_local global %struct.wait_queue_head, align 4
@netlink_rhashtable_params = internal constant %struct.rhashtable_params { i16 0, i16 4, i16 0, i16 712, i32 0, i16 0, i8 1, ptr null, ptr @netlink_hash, ptr @netlink_compare }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@netlink_sendmsg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\014Zero length message leads to an empty skb\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.46 = private unnamed_addr constant [35 x i8] c"\013Freeing alive netlink socket %p\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@netlink_family_ops = internal constant %struct.net_proto_family { i32 16, ptr @netlink_create, ptr null }, align 4
@netlink_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @netlink_net_init, ptr null, ptr @netlink_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@netlink_tap_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @netlink_tap_init_net, ptr null, ptr null, ptr null, ptr @netlink_tap_net_id, i32 28 }, align 4
@.str.47 = private unnamed_addr constant [40 x i8] c"netlink_init: Cannot allocate nl_table\0A\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"netlink_add_usersock_entry: Cannot allocate listeners\0A\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"net-pf-%d-proto-%d\00", align 1
@.str.50 = private constant [8 x i8] c"netlink\00", align 1
@netlink_seq_ops = internal constant %struct.seq_operations { ptr @netlink_seq_start, ptr @netlink_seq_stop, ptr @netlink_seq_next, ptr @netlink_seq_show }, align 4
@.str.51 = private unnamed_addr constant [90 x i8] c"sk               Eth Pid        Groups   Rmem     Wmem     Dump  Locks    Drops    Inode\0A\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"%pK %-3d %-10u %08x %-8d %-8d %-5d %-8d %-8u %-8lu\0A\00", align 1
@netlink_tap_init_net.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"&nn->netlink_tap_lock\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__event_netlink_extack, ptr @__initcall__kmod_af_netlink__560_2903_netlink_proto_init1, ptr @__ksymtab___netlink_dump_start, ptr @__ksymtab___netlink_kernel_create, ptr @__ksymtab___netlink_ns_capable, ptr @__ksymtab___nlmsg_put, ptr @__ksymtab_do_trace_netlink_extack, ptr @__ksymtab_netlink_ack, ptr @__ksymtab_netlink_add_tap, ptr @__ksymtab_netlink_broadcast, ptr @__ksymtab_netlink_capable, ptr @__ksymtab_netlink_has_listeners, ptr @__ksymtab_netlink_kernel_release, ptr @__ksymtab_netlink_net_capable, ptr @__ksymtab_netlink_ns_capable, ptr @__ksymtab_netlink_rcv_skb, ptr @__ksymtab_netlink_register_notifier, ptr @__ksymtab_netlink_remove_tap, ptr @__ksymtab_netlink_set_err, ptr @__ksymtab_netlink_strict_get_check, ptr @__ksymtab_netlink_unicast, ptr @__ksymtab_netlink_unregister_notifier, ptr @__ksymtab_nl_table, ptr @__ksymtab_nl_table_lock, ptr @__ksymtab_nlmsg_notify, ptr @__tracepoint_netlink_extack, ptr @__tracepoint_ptr_netlink_extack, ptr @event_class_netlink_extack, ptr @event_netlink_extack], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_netlink_extack(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netlink_extack, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #24
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_netlink_extack(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #24
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @.str.1, ptr %1
  %16 = tail call i32 @strlen(ptr noundef %15) #24
  %17 = add i32 %16, 13
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65548
  %23 = getelementptr inbounds %struct.trace_event_raw_netlink_extack, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %18, i32 12
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #24
  br label %26

26:                                               ; preds = %20, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_netlink_extack(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @.str.1, ptr %1
  %7 = tail call i32 @strlen(ptr noundef %6) #24
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65548
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #12, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %2
  %25 = add i32 %7, 24
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #24
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #24
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #24
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_netlink_extack, ptr %28, i32 0, i32 1
  store i32 %9, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 12
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef %6)
  %44 = load i32, ptr %4, align 4
  %45 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #24
  br label %46

46:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_trace_netlink_extack(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netlink_extack, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #24
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netlink_extack, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #24
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !14
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_add_tap(ptr noundef %0) #0 {
  %2 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %4 = getelementptr [0 x ptr], ptr %3, i32 0, i32 %2
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 32
  %8 = load i16, ptr %7, align 16
  %9 = icmp eq i16 %8, 824
  br i1 %9, label %10, label %18, !prof !10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.netlink_tap_net, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.netlink_tap, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %5, align 4
  store ptr %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.netlink_tap, ptr %0, i32 0, i32 2, i32 1
  store ptr %5, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !17
  store volatile ptr %12, ptr %5, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %11) #24
  %16 = getelementptr inbounds %struct.netlink_tap, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @__module_get(ptr noundef %17) #24
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i32 [ 0, %10 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_remove_tap(ptr noundef %0) #0 {
  %2 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %4 = getelementptr [0 x ptr], ptr %3, i32 0, i32 %2
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %6 = getelementptr inbounds %struct.netlink_tap_net, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #24
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %5, %1 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -8
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %7

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.netlink_tap, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.netlink_tap, ptr %0, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef %6) #24
  %20 = getelementptr inbounds %struct.netlink_tap, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @module_put(ptr noundef %21) #24
  br label %24

22:                                               ; preds = %7
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0) #25
  tail call void @mutex_unlock(ptr noundef %6) #24
  br label %24

24:                                               ; preds = %22, %14
  %25 = phi i32 [ 0, %14 ], [ -19, %22 ]
  tail call void @synchronize_net() #24
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netlink_table_grab() local_unnamed_addr #0 {
  %1 = alloca %struct.wait_queue_entry, align 4
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @nl_table_lock) #24
  %2 = load volatile i32, ptr @nl_table_users, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #24
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #24
  store i32 0, ptr %1, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 2
  store ptr @default_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr null, ptr %9, align 4
  call void @add_wait_queue_exclusive(ptr noundef nonnull @nl_table_wait, ptr noundef nonnull %1) #24
  %10 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  store volatile i32 2, ptr %10, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !18
  %11 = load volatile i32, ptr @nl_table_users, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %13, %4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  call void @schedule() #24
  call void @_raw_write_lock_irq(ptr noundef nonnull @nl_table_lock) #24
  store volatile i32 2, ptr %10, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !18
  %14 = load volatile i32, ptr @nl_table_users, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %13

16:                                               ; preds = %13, %4
  store volatile i32 0, ptr %10, align 8
  call void @remove_wait_queue(ptr noundef nonnull @nl_table_wait, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #24
  br label %17

17:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netlink_table_ungrab() local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__netlink_ns_capable(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.netlink_skb_parms, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.netlink_skb_parms, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @file_ns_capable(ptr noundef %14, ptr noundef %1, i32 noundef %2) #24
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %3
  %17 = tail call zeroext i1 @ns_capable(ptr noundef %1, i32 noundef %2) #24
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i1 [ false, %8 ], [ %17, %16 ]
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @netlink_ns_capable(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @file_ns_capable(ptr noundef %14, ptr noundef %1, i32 noundef %2) #24
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %3
  %17 = tail call zeroext i1 @ns_capable(ptr noundef %1, i32 noundef %2) #24
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i1 [ false, %8 ], [ %17, %16 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @netlink_capable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 71
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @file_ns_capable(ptr noundef %13, ptr noundef nonnull @init_user_ns, i32 noundef %1) #24
  br i1 %14, label %15, label %17

15:                                               ; preds = %7, %2
  %16 = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef %1) #24
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i1 [ false, %7 ], [ %16, %15 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @netlink_net_capable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @file_ns_capable(ptr noundef %14, ptr noundef %3, i32 noundef %1) #24
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %2
  %17 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef %1) #24
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i1 [ false, %8 ], [ %17, %16 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @netlink_getsockbyfilp(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -16384
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 -112
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 3
  %11 = load i16, ptr %10, align 8
  %12 = icmp eq i16 %11, 16
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #24, !srcloc !25
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #24, !srcloc !26
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !11

18:                                               ; preds = %13
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %18, %13
  %23 = phi i32 [ 2, %13 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #24
  br label %24

24:                                               ; preds = %22, %18, %7, %1
  %25 = phi ptr [ inttoptr (i32 -88 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %7 ], [ %9, %18 ], [ %9, %22 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_attachskb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 8
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11, %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #24
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %18 = tail call ptr @llvm.thread.pointer() #24
  store i32 0, ptr %5, align 4
  store ptr %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %19, align 4
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %21, align 4
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %16
  %25 = icmp eq ptr %3, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.netlink_sock, ptr %3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26, %24
  %32 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 8
  %38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 105, ptr %41, align 4
  tail call void @sk_error_report(ptr noundef %0) #24
  br label %42

42:                                               ; preds = %40, %36, %31
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #24, !srcloc !25
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #24, !srcloc !27
  br label %45

45:                                               ; preds = %42, %26
  %46 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #24, !srcloc !25
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #24, !srcloc !29
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %54, label %52, !prof !10

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #24
  br label %54

53:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef %0) #24
  br label %54

54:                                               ; preds = %53, %52, %50
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  br label %95

55:                                               ; preds = %16
  %56 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  store volatile i32 1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 10
  call void @add_wait_queue(ptr noundef %57, ptr noundef nonnull %5) #24
  %58 = load volatile i32, ptr %6, align 4
  %59 = load i32, ptr %8, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 8
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61, %55
  %67 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, ptr %2, align 4
  %73 = call i32 @schedule_timeout(i32 noundef %72) #24
  store i32 %73, ptr %2, align 4
  br label %74

74:                                               ; preds = %71, %66, %61
  store volatile i32 0, ptr %56, align 8
  call void @remove_wait_queue(ptr noundef %57, ptr noundef nonnull %5) #24
  %75 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #24, !srcloc !25
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #24, !srcloc !29
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %83, label %81, !prof !10

81:                                               ; preds = %79
  call void @refcount_warn_saturate(ptr noundef %75, i32 noundef 3) #24
  br label %83

82:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  call void @sk_free(ptr noundef %0) #24
  br label %83

83:                                               ; preds = %82, %81, %79
  %84 = load volatile i32, ptr %18, align 4
  %85 = and i32 %84, 256
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91, !prof !10

87:                                               ; preds = %83
  %88 = load volatile i32, ptr %18, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87, %83
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  %92 = load i32, ptr %2, align 4
  %93 = icmp eq i32 %92, 2147483647
  %94 = select i1 %93, i32 -512, i32 -4
  br label %95

95:                                               ; preds = %91, %87, %54
  %96 = phi i32 [ %94, %91 ], [ -11, %54 ], [ 1, %87 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #24
  br label %117

97:                                               ; preds = %11
  %98 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !10

101:                                              ; preds = %97
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #24
  br label %102

102:                                              ; preds = %101, %97
  store ptr %0, ptr %98, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr @netlink_skb_destructor, ptr %103, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %105 = load i32, ptr %104, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #24, !srcloc !25
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %105, ptr elementtype(i32) %6) #24, !srcloc !27
  %107 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.proto, ptr %108, i32 0, i32 30
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %102
  %113 = load i32, ptr %104, align 8
  %114 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 %115, %113
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %112, %102, %95
  %118 = phi i32 [ %96, %95 ], [ 0, %102 ], [ 0, %112 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_sendskb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %5
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %2
  tail call fastcc void @__netlink_deliver_tap(ptr noundef %1, ptr noundef %8) #24
  br label %12

12:                                               ; preds = %11, %2
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %13, ptr noundef %1) #24
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef %0) #24
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #24, !srcloc !25
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #24, !srcloc !29
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #24
  br label %24

23:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef %0) #24
  br label %24

24:                                               ; preds = %23, %22, %20
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__netlink_sendskb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %5
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %2
  tail call fastcc void @__netlink_deliver_tap(ptr noundef %1, ptr noundef %8) #24
  br label %12

12:                                               ; preds = %11, %2
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %13, ptr noundef %1) #24
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef %0) #24
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netlink_detachskb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #24, !srcloc !25
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #24, !srcloc !29
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #24
  br label %11

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef %0) #24
  br label %11

11:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_unicast(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = tail call ptr @llvm.thread.pointer() #24
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 3264, i32 2592
  %12 = tail call fastcc ptr @netlink_trim(ptr noundef %1, i32 noundef %11)
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 31
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  store i32 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %20 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 1
  br label %21

21:                                               ; preds = %139, %17
  %22 = load i16, ptr %19, align 4
  %23 = zext i16 %22 to i32
  %24 = load ptr, ptr @nl_table, align 4
  %25 = getelementptr %struct.netlink_table, ptr %24, i32 %23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %26 = tail call fastcc ptr @__netlink_lookup(ptr noundef %25, i32 noundef %2) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #24, !srcloc !25
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #24, !srcloc !26
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !11

33:                                               ; preds = %28
  %34 = add i32 %31, 1
  %35 = or i32 %34, %31
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %40, label %37, !prof !10

37:                                               ; preds = %33, %28
  %38 = phi i32 [ 2, %28 ], [ 1, %33 ]
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef %38) #24
  br label %40

39:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  br label %59

40:                                               ; preds = %37, %33
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %41 = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 4
  %42 = load volatile i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.netlink_sock, ptr %26, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %20, align 8
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #24, !srcloc !25
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #24, !srcloc !29
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %59, label %55, !prof !10

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #24
  br label %59

56:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef nonnull %26) #24
  br label %59

57:                                               ; preds = %44, %40
  %58 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %57, %56, %55, %53, %39
  %60 = phi ptr [ inttoptr (i32 -111 to ptr), %39 ], [ inttoptr (i32 -111 to ptr), %53 ], [ inttoptr (i32 -111 to ptr), %55 ], [ inttoptr (i32 -111 to ptr), %56 ], [ %26, %57 ]
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #24
  %61 = ptrtoint ptr %60 to i32
  br label %143

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.netlink_sock, ptr %26, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %126, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.netlink_sock, ptr %26, i32 0, i32 4
  %69 = getelementptr inbounds %struct.netlink_sock, ptr %26, i32 0, i32 17
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %116, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 5
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !10

78:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #24
  br label %79

79:                                               ; preds = %78, %72
  store ptr %26, ptr %75, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 4, i32 0, i32 1
  store ptr @netlink_skb_destructor, ptr %80, align 4
  %81 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #24, !srcloc !25
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 %82, ptr elementtype(i32) %83) #24, !srcloc !27
  %85 = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 8
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.proto, ptr %86, i32 0, i32 30
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %79
  %91 = load i32, ptr %81, align 8
  %92 = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 11
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 %93, %91
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %90, %79
  %96 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 24
  store ptr %0, ptr %96, align 8
  %97 = load i32, ptr %68, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100, %95
  %106 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %107 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %108 = getelementptr [0 x ptr], ptr %107, i32 0, i32 %106
  %109 = load ptr, ptr %108, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %110 = load volatile ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %109
  br i1 %111, label %113, label %112, !prof !10

112:                                              ; preds = %105
  tail call fastcc void @__netlink_deliver_tap(ptr noundef %12, ptr noundef %109) #24
  br label %113

113:                                              ; preds = %112, %105
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  br label %114

114:                                              ; preds = %113, %100
  %115 = load ptr, ptr %69, align 8
  tail call void %115(ptr noundef %12) #24
  tail call void @consume_skb(ptr noundef %12) #24
  br label %117

116:                                              ; preds = %67
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #24
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %74, %114 ], [ -111, %116 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #24, !srcloc !25
  %119 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #24, !srcloc !29
  %120 = extractvalue { i32, i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = icmp sgt i32 %120, 0
  br i1 %123, label %143, label %124, !prof !10

124:                                              ; preds = %122
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #24
  br label %143

125:                                              ; preds = %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef nonnull %26) #24
  br label %143

126:                                              ; preds = %62
  %127 = tail call i32 @sk_filter_trim_cap(ptr noundef nonnull %26, ptr noundef %12, i32 noundef 1) #24
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 5
  %131 = load i32, ptr %130, align 8
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #24, !srcloc !25
  %132 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #24, !srcloc !29
  %133 = extractvalue { i32, i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = icmp sgt i32 %133, 0
  br i1 %136, label %143, label %137, !prof !10

137:                                              ; preds = %135
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #24
  br label %143

138:                                              ; preds = %129
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef nonnull %26) #24
  br label %143

139:                                              ; preds = %126
  %140 = call i32 @netlink_attachskb(ptr noundef nonnull %26, ptr noundef %12, ptr noundef nonnull %5, ptr noundef %0)
  switch i32 %140, label %143 [
    i32 1, label %21
    i32 0, label %141
  ]

141:                                              ; preds = %139
  %142 = tail call i32 @netlink_sendskb(ptr noundef nonnull %26, ptr noundef %12)
  br label %143

143:                                              ; preds = %141, %139, %138, %137, %135, %125, %124, %122, %59
  %144 = phi i32 [ %61, %59 ], [ %142, %141 ], [ %118, %122 ], [ %118, %124 ], [ %118, %125 ], [ %131, %135 ], [ %131, %137 ], [ %131, %138 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @netlink_trim(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1286, i32 noundef 9, ptr noundef null) #24
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #24
  br i1 %17, label %37, label %18

18:                                               ; preds = %7
  %19 = shl i32 %14, 1
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef %1) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  tail call void @consume_skb(ptr noundef %0) #24
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi ptr [ %28, %30 ], [ %0, %23 ]
  %33 = sub i32 0, %14
  %34 = and i32 %1, -74753
  %35 = or i32 %34, 73728
  %36 = tail call i32 @pskb_expand_head(ptr noundef %32, i32 noundef 0, i32 noundef %33, i32 noundef %35) #24
  br label %37

37:                                               ; preds = %31, %27, %18, %7
  %38 = phi ptr [ %32, %31 ], [ %0, %18 ], [ %0, %7 ], [ %0, %27 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_has_listeners(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1367, 0\0A.popsection", ""() #24, !srcloc !31
  unreachable

8:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %9 = load ptr, ptr @nl_table, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.netlink_table, ptr %9, i32 %12, i32 2
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %8
  %17 = add i32 %1, -1
  %18 = getelementptr %struct.netlink_table, ptr %9, i32 %12, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.listeners, ptr %14, i32 0, i32 1
  %23 = lshr i32 %17, 5
  %24 = getelementptr i32, ptr %22, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %17, 31
  %27 = lshr i32 %25, %26
  %28 = and i32 %27, 1
  br label %29

29:                                               ; preds = %21, %16, %8
  %30 = phi i32 [ %28, %21 ], [ 0, %16 ], [ 0, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @netlink_strict_get_check(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.netlink_sock, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_broadcast(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc ptr @netlink_trim(ptr noundef %1, i32 noundef %4)
  %7 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !27
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %7) #24
  %9 = load ptr, ptr @nl_table, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.netlink_table, ptr %9, i32 %12, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -24
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %226, label %19

19:                                               ; preds = %5
  %20 = add i32 %3, -1
  %21 = lshr i32 %20, 5
  %22 = and i32 %20, 31
  %23 = shl nuw i32 1, %22
  %24 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %25 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 1
  br label %27

27:                                               ; preds = %214, %19
  %28 = phi ptr [ %16, %19 ], [ %223, %214 ]
  %29 = phi ptr [ null, %19 ], [ %219, %214 ]
  %30 = phi i32 [ 0, %19 ], [ %218, %214 ]
  %31 = phi i32 [ 0, %19 ], [ %217, %214 ]
  %32 = phi i32 [ 0, %19 ], [ %216, %214 ]
  %33 = phi i32 [ 0, %19 ], [ %215, %214 ]
  %34 = icmp eq ptr %28, %0
  br i1 %34, label %214, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %214, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %20, %41
  br i1 %42, label %43, label %214

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 7
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i32, ptr %45, i32 %21
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, %23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %214, label %50

50:                                               ; preds = %43
  %51 = icmp eq i32 %33, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 8
  %59 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %58) #24
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 51
  store i32 105, ptr %62, align 4
  tail call void @sk_error_report(ptr noundef nonnull %28) #24
  br label %63

63:                                               ; preds = %61, %57, %52
  %64 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #24, !srcloc !25
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #24, !srcloc !27
  br label %214

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #24, !srcloc !25
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #24, !srcloc !26
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71, !prof !11

71:                                               ; preds = %66
  %72 = add i32 %69, 1
  %73 = or i32 %72, %69
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %77, label %75, !prof !10

75:                                               ; preds = %71, %66
  %76 = phi i32 [ 2, %66 ], [ 1, %71 ]
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef %76) #24
  br label %77

77:                                               ; preds = %75, %71
  %78 = icmp eq ptr %29, null
  br i1 %78, label %79, label %123

79:                                               ; preds = %77
  %80 = load volatile i32, ptr %24, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = tail call ptr @skb_clone(ptr noundef %6, i32 noundef %4) #24
  br label %102

84:                                               ; preds = %79
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #24, !srcloc !25
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #24, !srcloc !26
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88, !prof !11

88:                                               ; preds = %84
  %89 = add i32 %86, 1
  %90 = or i32 %89, %86
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %94, label %92, !prof !10

92:                                               ; preds = %88, %84
  %93 = phi i32 [ 2, %84 ], [ 1, %88 ]
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %93) #24
  br label %94

94:                                               ; preds = %92, %88
  %95 = load ptr, ptr %25, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  tail call void %95(ptr noundef %6) #24
  store ptr null, ptr %25, align 4
  store ptr null, ptr %26, align 4
  br label %102

98:                                               ; preds = %94
  %99 = load ptr, ptr %26, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !10

101:                                              ; preds = %98
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #24, !srcloc !32
  unreachable

102:                                              ; preds = %98, %97, %82
  %103 = phi ptr [ %6, %98 ], [ %6, %97 ], [ %83, %82 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 8
  %112 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %111) #24
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 51
  store i32 105, ptr %115, align 4
  tail call void @sk_error_report(ptr noundef nonnull %28) #24
  br label %116

116:                                              ; preds = %114, %110, %105
  %117 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #24, !srcloc !25
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 1, ptr elementtype(i32) %117) #24, !srcloc !27
  %119 = load i32, ptr %106, align 4
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 %32, i32 1
  br label %201

123:                                              ; preds = %102, %77
  %124 = phi ptr [ %103, %102 ], [ %29, %77 ]
  %125 = tail call i32 @sk_filter_trim_cap(ptr noundef nonnull %28, ptr noundef nonnull %124, i32 noundef 1) #24
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  tail call void @kfree_skb_reason(ptr noundef nonnull %124, i32 noundef 0) #24
  br label %201

128:                                              ; preds = %123
  %129 = tail call i32 @peernet2id(ptr noundef nonnull @init_net, ptr noundef nonnull @init_net) #24
  %130 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3, i32 32
  store i32 %129, ptr %130, align 8
  %131 = icmp eq i32 %129, -1
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3, i32 28
  store i8 1, ptr %133, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 9
  %136 = load volatile i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 15
  %138 = load i32, ptr %137, align 4
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %183, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 8
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %183

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149, !prof !10

149:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #24
  br label %150

150:                                              ; preds = %149, %145
  store ptr %28, ptr %146, align 4
  %151 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 4, i32 0, i32 1
  store ptr @netlink_skb_destructor, ptr %151, align 4
  %152 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 18
  %153 = load i32, ptr %152, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #24, !srcloc !25
  %154 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 %153, ptr elementtype(i32) %135) #24, !srcloc !27
  %155 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 8
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.proto, ptr %156, i32 0, i32 30
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %150
  %161 = load i32, ptr %152, align 8
  %162 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 11
  %163 = load i32, ptr %162, align 4
  %164 = sub i32 %163, %161
  store i32 %164, ptr %162, align 4
  br label %165

165:                                              ; preds = %160, %150
  %166 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %167 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %168 = getelementptr [0 x ptr], ptr %167, i32 0, i32 %166
  %169 = load ptr, ptr %168, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %170 = load volatile ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, %169
  br i1 %171, label %173, label %172, !prof !10

172:                                              ; preds = %165
  tail call fastcc void @__netlink_deliver_tap(ptr noundef nonnull %124, ptr noundef %169) #24
  br label %173

173:                                              ; preds = %172, %165
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %174 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %174, ptr noundef nonnull %124) #24
  %175 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 76
  %176 = load ptr, ptr %175, align 8
  tail call void %176(ptr noundef nonnull %28) #24
  %177 = load volatile i32, ptr %135, align 4
  %178 = load i32, ptr %137, align 4
  %179 = ashr i32 %178, 1
  %180 = icmp sgt i32 %177, %179
  %181 = zext i1 %180 to i32
  %182 = or i32 %31, %181
  br label %201

183:                                              ; preds = %140, %134
  %184 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.netlink_sock, ptr %28, i32 0, i32 8
  %190 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %189) #24
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 51
  store i32 105, ptr %193, align 4
  tail call void @sk_error_report(ptr noundef nonnull %28) #24
  br label %194

194:                                              ; preds = %192, %188, %183
  %195 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #24, !srcloc !25
  %196 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 1, ptr elementtype(i32) %195) #24, !srcloc !27
  %197 = load i32, ptr %184, align 4
  %198 = and i32 %197, 4
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 %32, i32 1
  br label %201

201:                                              ; preds = %194, %173, %127, %116
  %202 = phi i32 [ 0, %173 ], [ 0, %127 ], [ 1, %116 ], [ 0, %194 ]
  %203 = phi i32 [ %32, %173 ], [ %32, %127 ], [ %122, %116 ], [ %200, %194 ]
  %204 = phi i32 [ %182, %173 ], [ %31, %127 ], [ %31, %116 ], [ %31, %194 ]
  %205 = phi i32 [ 1, %173 ], [ %30, %127 ], [ %30, %116 ], [ %30, %194 ]
  %206 = phi ptr [ null, %173 ], [ null, %127 ], [ null, %116 ], [ %124, %194 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #24, !srcloc !25
  %207 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #24, !srcloc !29
  %208 = extractvalue { i32, i32, i32 } %207, 0
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %213, label %210

210:                                              ; preds = %201
  %211 = icmp sgt i32 %208, 0
  br i1 %211, label %214, label %212, !prof !10

212:                                              ; preds = %210
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #24
  br label %214

213:                                              ; preds = %201
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef nonnull %28) #24
  br label %214

214:                                              ; preds = %213, %212, %210, %63, %43, %39, %35, %27
  %215 = phi i32 [ %33, %27 ], [ %33, %35 ], [ %33, %43 ], [ %202, %213 ], [ %202, %210 ], [ %202, %212 ], [ %33, %63 ], [ %33, %39 ]
  %216 = phi i32 [ %32, %27 ], [ %32, %35 ], [ %32, %43 ], [ %203, %213 ], [ %203, %210 ], [ %203, %212 ], [ %32, %63 ], [ %32, %39 ]
  %217 = phi i32 [ %31, %27 ], [ %31, %35 ], [ %31, %43 ], [ %204, %213 ], [ %204, %210 ], [ %204, %212 ], [ %31, %63 ], [ %31, %39 ]
  %218 = phi i32 [ %30, %27 ], [ %30, %35 ], [ %30, %43 ], [ %205, %213 ], [ %205, %210 ], [ %205, %212 ], [ %30, %63 ], [ %30, %39 ]
  %219 = phi ptr [ %29, %27 ], [ %29, %35 ], [ %29, %43 ], [ %206, %213 ], [ %206, %210 ], [ %206, %212 ], [ %29, %63 ], [ %29, %39 ]
  %220 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 7
  %221 = load ptr, ptr %220, align 8
  %222 = icmp eq ptr %221, null
  %223 = getelementptr i8, ptr %221, i32 -24
  %224 = icmp eq ptr %223, null
  %225 = or i1 %222, %224
  br i1 %225, label %226, label %27

226:                                              ; preds = %214, %5
  %227 = phi i32 [ 0, %5 ], [ %216, %214 ]
  %228 = phi i32 [ 0, %5 ], [ %217, %214 ]
  %229 = phi i32 [ 0, %5 ], [ %218, %214 ]
  %230 = phi ptr [ null, %5 ], [ %219, %214 ]
  tail call void @consume_skb(ptr noundef %6) #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %231 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %232 = extractvalue { i32, i32 } %231, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %235

235:                                              ; preds = %234, %226
  %236 = icmp eq i32 %227, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %235
  tail call void @kfree_skb_reason(ptr noundef %230, i32 noundef 0) #24
  br label %246

238:                                              ; preds = %235
  tail call void @consume_skb(ptr noundef %230) #24
  %239 = icmp eq i32 %229, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %238
  %241 = icmp ne i32 %228, 0
  %242 = and i32 %4, 1024
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %243, %241
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  tail call void @yield() #24
  br label %246

246:                                              ; preds = %245, %240, %238, %237
  %247 = phi i32 [ -105, %237 ], [ 0, %245 ], [ 0, %240 ], [ -3, %238 ]
  ret i32 %247
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netlink_lock_table() unnamed_addr #5 {
  %1 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !27
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %1) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netlink_unlock_table() unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %2 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_set_err(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub i32 0, %3
  tail call void @_raw_read_lock(ptr noundef nonnull @nl_table_lock) #24
  %6 = load ptr, ptr @nl_table, align 4
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr %struct.netlink_table, ptr %6, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -24
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %58, label %16

16:                                               ; preds = %4
  %17 = add i32 %2, -1
  %18 = lshr i32 %17, 5
  %19 = and i32 %17, 31
  %20 = shl nuw i32 1, %19
  %21 = icmp eq i32 %3, -105
  br label %22

22:                                               ; preds = %49, %16
  %23 = phi ptr [ %13, %16 ], [ %55, %49 ]
  %24 = phi i32 [ 0, %16 ], [ %51, %49 ]
  %25 = icmp eq ptr %23, %0
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %17, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i32, ptr %36, i32 %18
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, %20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  br i1 %21, label %42, label %47

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %41
  %48 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 51
  store i32 %5, ptr %48, align 4
  tail call void @sk_error_report(ptr noundef nonnull %23) #24
  br label %49

49:                                               ; preds = %47, %42, %34, %30, %26, %22
  %50 = phi i32 [ 0, %22 ], [ 0, %26 ], [ 0, %30 ], [ 0, %47 ], [ 0, %34 ], [ 1, %42 ]
  %51 = add i32 %50, %24
  %52 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 7
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr i8, ptr %53, i32 -24
  %56 = icmp eq ptr %55, null
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %22

58:                                               ; preds = %49, %4
  %59 = phi i32 [ 0, %4 ], [ %51, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_lock) #24, !srcloc !25
  %60 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @nl_table_lock) #24, !srcloc !37
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  br label %64

64:                                               ; preds = %63, %58
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !38
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  store ptr null, ptr %5, align 4, !annotation !9
  %6 = icmp eq ptr %3, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ null, %4 ]
  %12 = load ptr, ptr @nl_table, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2037, 0\0A.popsection", ""() #24, !srcloc !39
  unreachable

15:                                               ; preds = %10
  %16 = icmp ugt i32 %1, 31
  br i1 %16, label %115, label %17

17:                                               ; preds = %15
  %18 = call i32 @sock_create_lite(i32 noundef 16, i32 noundef 2, i32 noundef %1, ptr noundef nonnull %5) #24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %115

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 5
  store ptr @netlink_ops, ptr %22, align 4
  %23 = call ptr @sk_alloc(ptr noundef %0, i32 noundef 16, i32 noundef 3264, ptr noundef nonnull @netlink_proto, i32 noundef 1) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %113, label %25

25:                                               ; preds = %20
  call void @sock_init_data(ptr noundef %21, ptr noundef nonnull %23) #24
  %26 = icmp eq ptr %11, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 15
  store ptr %11, ptr %28, align 8
  br label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 16
  %31 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 15
  store ptr %30, ptr %31, align 8
  call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.7, ptr noundef nonnull @__netlink_create.__key) #24
  br label %32

32:                                               ; preds = %29, %27
  %33 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %33, ptr noundef nonnull @.str.9, ptr noundef nonnull @__netlink_create.__key.8) #24
  %34 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 80
  store ptr @netlink_sock_destruct, ptr %34, align 8
  %35 = trunc i32 %1 to i16
  %36 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 46
  store i16 %35, ptr %36, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.socket, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 16
  br i1 %6, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, ptr %3, align 4
  %42 = call i32 @llvm.umax.i32(i32 %41, i32 32)
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi i32 [ 32, %32 ], [ %42, %40 ]
  %45 = add i32 %44, 31
  %46 = lshr i32 %45, 3
  %47 = and i32 %46, 536870908
  %48 = add nuw nsw i32 %47, 8
  %49 = call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #26
  %50 = icmp eq ptr %49, null
  br i1 %50, label %106, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 76
  store ptr @netlink_data_ready, ptr %52, align 8
  br i1 %6, label %59, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %3, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.netlink_sock, ptr %39, i32 0, i32 17
  store ptr %55, ptr %58, align 8
  br label %59

59:                                               ; preds = %57, %53, %51
  %60 = call fastcc i32 @netlink_insert(ptr noundef %39, i32 noundef 0)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.netlink_sock, ptr %39, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 1
  store i32 %65, ptr %63, align 4
  call void @netlink_table_grab()
  %66 = load ptr, ptr @nl_table, align 4
  %67 = getelementptr %struct.netlink_table, ptr %66, i32 %1, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %62
  %71 = getelementptr %struct.netlink_table, ptr %66, i32 %1, i32 4
  store i32 %44, ptr %71, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !40
  %72 = load ptr, ptr @nl_table, align 4
  %73 = getelementptr %struct.netlink_table, ptr %72, i32 %1, i32 2
  store volatile ptr %49, ptr %73, align 4
  %74 = load ptr, ptr @nl_table, align 4
  %75 = getelementptr %struct.netlink_table, ptr %74, i32 %1, i32 5
  store ptr %11, ptr %75, align 4
  %76 = load ptr, ptr @nl_table, align 4
  %77 = getelementptr %struct.netlink_table, ptr %76, i32 %1, i32 6
  store ptr %2, ptr %77, align 4
  br i1 %6, label %97, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %3, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr @nl_table, align 4
  %82 = getelementptr %struct.netlink_table, ptr %81, i32 %1, i32 7
  store ptr %80, ptr %82, align 4
  %83 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %3, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr @nl_table, align 4
  %86 = getelementptr %struct.netlink_table, ptr %85, i32 %1, i32 8
  store ptr %84, ptr %86, align 4
  %87 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %3, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr @nl_table, align 4
  %90 = getelementptr %struct.netlink_table, ptr %89, i32 %1, i32 3
  store i32 %88, ptr %90, align 4
  %91 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %3, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %78
  %95 = load ptr, ptr @nl_table, align 4
  %96 = getelementptr %struct.netlink_table, ptr %95, i32 %1, i32 9
  store ptr %92, ptr %96, align 4
  br label %97

97:                                               ; preds = %94, %78, %70
  %98 = load ptr, ptr @nl_table, align 4
  %99 = getelementptr %struct.netlink_table, ptr %98, i32 %1, i32 10
  store i32 1, ptr %99, align 4
  br label %105

100:                                              ; preds = %62
  call void @kfree(ptr noundef nonnull %49) #24
  %101 = load ptr, ptr @nl_table, align 4
  %102 = getelementptr %struct.netlink_table, ptr %101, i32 %1, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %100, %97
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %115

106:                                              ; preds = %59, %43
  call void @kfree(ptr noundef %49) #24
  %107 = icmp eq ptr %39, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 71
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  call void @sock_release(ptr noundef nonnull %110) #24
  br label %115

113:                                              ; preds = %20
  %114 = load ptr, ptr %5, align 4
  call void @sock_release(ptr noundef %114) #24
  br label %115

115:                                              ; preds = %113, %112, %108, %106, %105, %17, %15
  %116 = phi ptr [ null, %113 ], [ %39, %105 ], [ null, %15 ], [ null, %17 ], [ null, %106 ], [ null, %108 ], [ null, %112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  ret ptr %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_lite(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netlink_data_ready(ptr nocapture noundef readnone %0) #6 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2017, 0\0A.popsection", ""() #24, !srcloc !41
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @netlink_insert(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.netlink_compare_arg, align 4
  %4 = load ptr, ptr @nl_table, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %6 = load i16, ptr %5, align 4
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #24
  %7 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, %1
  %10 = select i1 %9, i32 0, i32 -16
  %11 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 8, !range !42
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %202

14:                                               ; preds = %2
  %15 = zext i16 %6 to i32
  %16 = getelementptr %struct.netlink_table, ptr %4, i32 %15
  store i32 %1, ptr %7, align 8
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #24, !srcloc !25
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #24, !srcloc !26
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !11

21:                                               ; preds = %14
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !10

25:                                               ; preds = %21, %14
  %26 = phi i32 [ 2, %14 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef %26) #24
  br label %27

27:                                               ; preds = %25, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %28 = load i32, ptr %7, align 8
  %29 = getelementptr inbounds %struct.netlink_compare_arg, ptr %3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 21
  %31 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 3, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 956, 0\0A.popsection", ""() #24, !srcloc !43
  unreachable

35:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %36 = load volatile ptr, ptr %16, align 4
  %37 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 3, i32 3
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = getelementptr i8, ptr %30, i32 %40
  %42 = getelementptr inbounds %struct.bucket_table, ptr %36, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.netlink_sock, ptr %41, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %43, -559038733
  %47 = add i32 %45, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 14) #24
  %49 = sub i32 0, %48
  %50 = xor i32 %47, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 11) #24
  %52 = sub i32 %50, %51
  %53 = xor i32 %52, %46
  %54 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 25) #24
  %55 = sub i32 %53, %54
  %56 = xor i32 %55, %49
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 16) #24
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 4) #24
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 14) #24
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %58
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 24) #24
  %67 = sub i32 %65, %66
  %68 = load i32, ptr %36, align 64
  %69 = add i32 %68, -1
  %70 = and i32 %67, %69
  %71 = getelementptr inbounds %struct.bucket_table, ptr %36, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !10

74:                                               ; preds = %35
  %75 = tail call ptr @rht_bucket_nested_insert(ptr noundef %16, ptr noundef %36, i32 noundef %70) #24
  br label %78

76:                                               ; preds = %35
  %77 = getelementptr %struct.bucket_table, ptr %36, i32 0, i32 8, i32 %70
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi ptr [ %75, %74 ], [ %77, %76 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %176, label %81

81:                                               ; preds = %78
  %82 = tail call ptr @llvm.thread.pointer() #24
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %84 = load volatile i32, ptr %83, align 4
  %85 = add i32 %84, 512
  store volatile i32 %85, ptr %83, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !45
  br label %86

86:                                               ; preds = %100, %81
  %87 = load volatile i32, ptr %79, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95, !prof !46

90:                                               ; preds = %86
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %79) #24, !srcloc !25
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %79, ptr nonnull %79, i32 1, ptr nonnull elementtype(i32) %79) #24, !srcloc !47
  %92 = extractvalue { i32, i32, i32 } %91, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95, !prof !10

95:                                               ; preds = %90, %86
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !49
  br label %96

96:                                               ; preds = %96, %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !51
  %97 = load volatile i32, ptr %79, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %96

100:                                              ; preds = %96
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !52
  br label %86

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.bucket_table, ptr %36, i32 0, i32 5
  %103 = load volatile ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105, !prof !10

105:                                              ; preds = %148, %136, %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %79) #24, !srcloc !25
  %106 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %79, ptr nonnull %79, i32 1, ptr nonnull elementtype(i32) %79) #24, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !55
  tail call fastcc void @local_bh_enable() #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %107 = call ptr @rhashtable_insert_slow(ptr noundef %16, ptr noundef nonnull %3, ptr noundef %30) #24
  br label %181

108:                                              ; preds = %101
  %109 = load ptr, ptr %79, align 4
  %110 = ptrtoint ptr %109 to i32
  %111 = and i32 %110, -2
  %112 = icmp eq i32 %111, 0
  %113 = ptrtoint ptr %79 to i32
  %114 = or i32 %113, 1
  %115 = select i1 %112, i32 %114, i32 %111
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %108
  %119 = inttoptr i32 %115 to ptr
  %120 = load i16, ptr %37, align 2
  %121 = zext i16 %120 to i32
  %122 = sub nsw i32 0, %121
  br label %123

123:                                              ; preds = %130, %118
  %124 = phi ptr [ %119, %118 ], [ %132, %130 ]
  %125 = phi i32 [ 16, %118 ], [ %131, %130 ]
  %126 = getelementptr i8, ptr %124, i32 %122
  %127 = getelementptr inbounds %struct.netlink_sock, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %128, %28
  br i1 %129, label %178, label %130

130:                                              ; preds = %123
  %131 = add i32 %125, -1
  %132 = load ptr, ptr %124, align 4
  %133 = ptrtoint ptr %132 to i32
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %123, label %136

136:                                              ; preds = %130
  %137 = icmp slt i32 %131, 1
  br i1 %137, label %105, label %138

138:                                              ; preds = %136, %108
  %139 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 8
  %140 = load volatile i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = icmp ult i32 %140, %142
  br i1 %143, label %144, label %178, !prof !10

144:                                              ; preds = %138
  %145 = load volatile i32, ptr %139, align 4
  %146 = load i32, ptr %36, align 64
  %147 = icmp ugt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 3, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  %152 = icmp ult i32 %146, %150
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %105, label %154, !prof !11

154:                                              ; preds = %148, %144
  %155 = inttoptr i32 %115 to ptr
  store volatile ptr %155, ptr %30, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #24, !srcloc !25
  %156 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #24, !srcloc !27
  %157 = ptrtoint ptr %30 to i32
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, ptr %30, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !56
  store volatile ptr %160, ptr %79, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  tail call fastcc void @local_bh_enable() #24
  %161 = load volatile i32, ptr %139, align 4
  %162 = load i32, ptr %36, align 64
  %163 = lshr i32 %162, 2
  %164 = mul nuw i32 %163, 3
  %165 = icmp ugt i32 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 3, i32 4
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  %170 = icmp ult i32 %162, %168
  %171 = select i1 %169, i1 true, i1 %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.rhashtable, ptr %16, i32 0, i32 5
  %174 = load ptr, ptr @system_wq, align 4
  %175 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %174, ptr noundef %173) #24
  br label %176

176:                                              ; preds = %178, %172, %166, %154, %78
  %177 = phi ptr [ %179, %178 ], [ inttoptr (i32 -12 to ptr), %78 ], [ null, %172 ], [ null, %166 ], [ null, %154 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  br label %181

178:                                              ; preds = %138, %123
  %179 = phi ptr [ inttoptr (i32 -7 to ptr), %138 ], [ %126, %123 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %79) #24, !srcloc !25
  %180 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %79, ptr nonnull %79, i32 1, ptr nonnull elementtype(i32) %79) #24, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !55
  tail call fastcc void @local_bh_enable() #24
  br label %176

181:                                              ; preds = %176, %105
  %182 = phi ptr [ %107, %105 ], [ %177, %176 ]
  %183 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  %184 = ptrtoint ptr %182 to i32
  %185 = icmp eq ptr %182, null
  %186 = select i1 %185, i32 0, i32 -17
  %187 = select i1 %183, i32 %184, i32 %186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  switch i32 %187, label %189 [
    i32 0, label %199
    i32 -16, label %190
    i32 -17, label %188
  ], !prof !58

188:                                              ; preds = %181
  br label %190

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %188, %181
  %191 = phi i32 [ -98, %188 ], [ -75, %181 ], [ %187, %189 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #24, !srcloc !25
  %192 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #24, !srcloc !29
  %193 = extractvalue { i32, i32, i32 } %192, 0
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = icmp sgt i32 %193, 0
  br i1 %196, label %202, label %197, !prof !10

197:                                              ; preds = %195
  call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #24
  br label %202

198:                                              ; preds = %190
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  call void @sk_free(ptr noundef %0) #24
  br label %202

199:                                              ; preds = %181
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !59
  %200 = icmp ne i32 %1, 0
  %201 = zext i1 %200 to i8
  store volatile i8 %201, ptr %11, align 8
  br label %202

202:                                              ; preds = %199, %198, %197, %195, %2
  %203 = phi i32 [ %10, %2 ], [ 0, %199 ], [ %191, %195 ], [ %191, %197 ], [ %191, %198 ]
  call void @release_sock(ptr noundef %0) #24
  ret i32 %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netlink_kernel_release(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @sock_release(ptr noundef nonnull %5) #24
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__netlink_change_ngroups(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @nl_table, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %8 = getelementptr %struct.netlink_table, ptr %3, i32 %6, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 31
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 536870908
  %13 = add i32 %7, 31
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 536870908
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = add nuw nsw i32 %15, 8
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 2848) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.netlink_table, ptr %3, i32 %6, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.listeners, ptr %19, i32 0, i32 1
  %25 = getelementptr inbounds %struct.listeners, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %8, align 4
  %27 = add i32 %26, 31
  %28 = lshr i32 %27, 3
  %29 = and i32 %28, 536870908
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %24, ptr align 4 %25, i32 %29, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !60
  store volatile ptr %19, ptr %22, align 4
  %30 = icmp eq ptr %23, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  tail call void @kvfree_call_rcu(ptr noundef nonnull %23, ptr noundef null) #24
  br label %32

32:                                               ; preds = %31, %21, %2
  store i32 %7, ptr %8, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = phi i32 [ 0, %32 ], [ -12, %17 ]
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_change_ngroups(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @netlink_table_grab()
  %3 = load ptr, ptr @nl_table, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 @llvm.umax.i32(i32 %1, i32 32) #24
  %8 = getelementptr %struct.netlink_table, ptr %3, i32 %6, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 31
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 536870908
  %13 = add i32 %7, 31
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 536870908
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = add nuw nsw i32 %15, 8
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 2848) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.netlink_table, ptr %3, i32 %6, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.listeners, ptr %19, i32 0, i32 1
  %25 = getelementptr inbounds %struct.listeners, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %8, align 4
  %27 = add i32 %26, 31
  %28 = lshr i32 %27, 3
  %29 = and i32 %28, 536870908
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %24, ptr align 4 %25, i32 %29, i1 false) #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !60
  store volatile ptr %19, ptr %22, align 4
  %30 = icmp eq ptr %23, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  tail call void @kvfree_call_rcu(ptr noundef nonnull %23, ptr noundef null) #24
  br label %32

32:                                               ; preds = %31, %21, %2
  store i32 %7, ptr %8, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = phi i32 [ 0, %32 ], [ -12, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  ret i32 %34
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__netlink_clear_multicast_users(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr @nl_table, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.netlink_table, ptr %3, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -24
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %13, %2
  %14 = phi ptr [ %18, %13 ], [ %10, %2 ]
  tail call fastcc void @netlink_update_socket_mc(ptr noundef nonnull %14, i32 noundef %1, i32 noundef 0)
  %15 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -24
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %13

21:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netlink_update_socket_mc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = icmp ne i32 %2, 0
  %5 = add i32 %1, -1
  %6 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = lshr i32 %5, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %5, 31
  %12 = lshr i32 %10, %11
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = shl nuw i32 1, %11
  %17 = xor i32 %16, -1
  %18 = and i32 %10, %17
  %19 = or i32 %10, %16
  %20 = select i1 %4, i32 %19, i32 %18
  store i32 %20, ptr %9, align 4
  %21 = sub i32 %15, %13
  %22 = zext i1 %4 to i32
  %23 = add i32 %21, %22
  %24 = load i32, ptr %14, align 8
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne i32 %23, 0
  %27 = or i1 %26, %25
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  store volatile ptr %30, ptr %32, align 4
  %33 = icmp eq ptr %30, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  store volatile ptr %32, ptr %35, align 4
  br label %51

36:                                               ; preds = %3
  %37 = and i1 %26, %25
  br i1 %37, label %38, label %51

38:                                               ; preds = %36
  %39 = load ptr, ptr @nl_table, align 4
  %40 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr %struct.netlink_table, ptr %39, i32 %42, i32 1
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %45 = load ptr, ptr %43, align 4
  store volatile ptr %45, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  store volatile ptr %44, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %38
  store volatile ptr %44, ptr %43, align 4
  %50 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %43, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %36, %34, %28
  store i32 %23, ptr %14, align 8
  %52 = load ptr, ptr @nl_table, align 4
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr %struct.netlink_table, ptr %52, i32 %55, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %103, label %59

59:                                               ; preds = %51
  %60 = getelementptr %struct.netlink_table, ptr %52, i32 %55, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 31
  %63 = icmp ult i32 %62, 32
  br i1 %63, label %103, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.netlink_table, ptr %52, i32 %55, i32 1
  br label %66

66:                                               ; preds = %95, %64
  %67 = phi i32 [ 0, %64 ], [ %98, %95 ]
  %68 = load ptr, ptr %65, align 4
  %69 = icmp eq ptr %68, null
  %70 = getelementptr i8, ptr %68, i32 -24
  %71 = icmp eq ptr %70, null
  %72 = or i1 %69, %71
  br i1 %72, label %95, label %73

73:                                               ; preds = %87, %66
  %74 = phi ptr [ %92, %87 ], [ %70, %66 ]
  %75 = phi i32 [ %88, %87 ], [ 0, %66 ]
  %76 = getelementptr inbounds %struct.netlink_sock, ptr %74, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 31
  %79 = lshr i32 %78, 5
  %80 = icmp ult i32 %67, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.netlink_sock, ptr %74, i32 0, i32 7
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr i32, ptr %83, i32 %67
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, %75
  br label %87

87:                                               ; preds = %81, %73
  %88 = phi i32 [ %86, %81 ], [ %75, %73 ]
  %89 = getelementptr inbounds %struct.sock_common, ptr %74, i32 0, i32 7
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  %92 = getelementptr i8, ptr %90, i32 -24
  %93 = icmp eq ptr %92, null
  %94 = or i1 %91, %93
  br i1 %94, label %95, label %73

95:                                               ; preds = %87, %66
  %96 = phi i32 [ 0, %66 ], [ %88, %87 ]
  %97 = getelementptr %struct.listeners, ptr %57, i32 0, i32 1, i32 %67
  store i32 %96, ptr %97, align 4
  %98 = add nuw nsw i32 %67, 1
  %99 = load i32, ptr %60, align 4
  %100 = add i32 %99, 31
  %101 = lshr i32 %100, 5
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %66, label %103

103:                                              ; preds = %95, %59, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__nlmsg_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = add i32 %4, 16
  %8 = add i32 %4, 19
  %9 = and i32 %8, -4
  %10 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %9) #24
  %11 = trunc i32 %3 to i16
  %12 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 1
  store i16 %11, ptr %12, align 4
  store i32 %7, ptr %10, align 4
  %13 = trunc i32 %5 to i16
  %14 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 2
  store i16 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 4
  store i32 %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  store i32 %2, ptr %16, align 4
  %17 = getelementptr i8, ptr %10, i32 16
  %18 = getelementptr i8, ptr %17, i32 %4
  %19 = sub i32 %9, %7
  tail call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %19, i1 false)
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__netlink_dump_start(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #24, !srcloc !25
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #24, !srcloc !26
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !11

9:                                                ; preds = %4
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !10

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 2, %4 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %14) #24
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr @nl_table, align 4
  %22 = getelementptr %struct.netlink_table, ptr %21, i32 %18
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %23 = tail call fastcc ptr @__netlink_lookup(ptr noundef %22, i32 noundef %20) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #24, !srcloc !25
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #24, !srcloc !26
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !11

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %37, label %34, !prof !10

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #24
  br label %37

36:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  br label %103

37:                                               ; preds = %34, %30
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %38 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 15
  %39 = load ptr, ptr %38, align 8
  tail call void @mutex_lock(ptr noundef %39) #24
  %40 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 12
  %41 = load i8, ptr %40, align 1, !range !42
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.netlink_dump_control, ptr %3, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call zeroext i1 @try_module_get(ptr noundef %45) #24
  br i1 %46, label %47, label %92

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(96) %48, i8 0, i32 96, i1 false)
  %49 = getelementptr inbounds %struct.netlink_dump_control, ptr %3, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 2
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.netlink_dump_control, ptr %3, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 3
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 1
  store ptr %2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.netlink_dump_control, ptr %3, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 4
  store ptr %57, ptr %58, align 4
  %59 = load ptr, ptr %44, align 4
  %60 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 5
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.netlink_dump_control, ptr %3, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 9
  store i32 %62, ptr %63, align 4
  store ptr %1, ptr %48, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.netlink_sock, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 14, i32 12
  %69 = trunc i32 %67 to i8
  %70 = lshr i8 %69, 7
  store i8 %70, ptr %68, align 4
  %71 = load ptr, ptr %3, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %47
  %74 = tail call i32 %71(ptr noundef %48) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73, %47
  store i8 1, ptr %40, align 1
  %77 = getelementptr inbounds %struct.netlink_sock, ptr %23, i32 0, i32 13
  store i32 2147483647, ptr %77, align 4
  %78 = load ptr, ptr %38, align 8
  tail call void @mutex_unlock(ptr noundef %78) #24
  %79 = tail call fastcc i32 @netlink_dump(ptr noundef nonnull %23)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #24, !srcloc !25
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #24, !srcloc !29
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = icmp sgt i32 %81, 0
  br i1 %84, label %87, label %85, !prof !10

85:                                               ; preds = %83
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #24
  br label %87

86:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef nonnull %23) #24
  br label %87

87:                                               ; preds = %86, %85, %83
  %88 = icmp eq i32 %79, 0
  %89 = select i1 %88, i32 -4, i32 %79
  br label %105

90:                                               ; preds = %73
  %91 = load ptr, ptr %44, align 4
  tail call void @module_put(ptr noundef %91) #24
  br label %92

92:                                               ; preds = %90, %43, %37
  %93 = phi i32 [ %74, %90 ], [ -16, %37 ], [ -93, %43 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #24, !srcloc !25
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #24, !srcloc !29
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = icmp sgt i32 %95, 0
  br i1 %98, label %101, label %99, !prof !10

99:                                               ; preds = %97
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #24
  br label %101

100:                                              ; preds = %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  tail call void @sk_free(ptr noundef nonnull %23) #24
  br label %101

101:                                              ; preds = %100, %99, %97
  %102 = load ptr, ptr %38, align 8
  tail call void @mutex_unlock(ptr noundef %102) #24
  br label %103

103:                                              ; preds = %101, %36
  %104 = phi i32 [ %93, %101 ], [ -111, %36 ]
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  br label %105

105:                                              ; preds = %103, %87
  %106 = phi i32 [ %104, %103 ], [ %89, %87 ]
  ret i32 %106
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #24, !srcloc !25
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #24, !srcloc !26
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !11

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #24
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @netlink_dump(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.netlink_ext_ack, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false)
  %3 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #24
  %5 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 1, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %180, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %10 = load volatile i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %180

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14
  %16 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 3840)
  %19 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 8
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = tail call ptr @__alloc_skb(i32 noundef %20, i32 noundef 75968, i32 noundef 0, i32 noundef -1) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %14
  %26 = tail call ptr @__alloc_skb(i32 noundef %18, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %180, label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %18, %25 ], [ %20, %22 ]
  %30 = phi ptr [ %26, %25 ], [ %23, %22 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  br label %45

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %39 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  br label %45

45:                                               ; preds = %37, %34
  %46 = phi ptr [ %41, %37 ], [ %36, %34 ]
  %47 = phi i32 [ %44, %37 ], [ 0, %34 ]
  %48 = sub i32 %47, %29
  %49 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %48
  store ptr %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 14
  %53 = getelementptr i8, ptr %46, i32 %48
  store ptr %53, ptr %52, align 8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !10

57:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #24
  br label %58

58:                                               ; preds = %57, %45
  store ptr %0, ptr %54, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 4, i32 0, i32 1
  store ptr @netlink_skb_destructor, ptr %59, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #24, !srcloc !25
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %61, ptr elementtype(i32) %9) #24, !srcloc !27
  %63 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.proto, ptr %64, i32 0, i32 30
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = load i32, ptr %60, align 8
  %70 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %71, %69
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %68, %58
  %74 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 6
  store ptr %2, ptr %78, align 4
  %79 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef nonnull %30, ptr noundef %15) #24
  store i32 %81, ptr %74, align 4
  store ptr null, ptr %78, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %77, %73
  %84 = load i32, ptr %31, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %52, align 8
  %90 = ptrtoint ptr %88 to i32
  %91 = ptrtoint ptr %89 to i32
  %92 = sub i32 %90, %91
  %93 = icmp slt i32 %92, 20
  br i1 %93, label %94, label %111

94:                                               ; preds = %86, %83, %77
  %95 = load ptr, ptr %3, align 8
  call void @mutex_unlock(ptr noundef %95) #24
  %96 = call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef nonnull %30, i32 noundef 1) #24
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #24
  br label %184

99:                                               ; preds = %94
  %100 = load i32, ptr @netlink_tap_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %101 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %102 = getelementptr [0 x ptr], ptr %101, i32 0, i32 %100
  %103 = load ptr, ptr %102, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %107, label %106, !prof !10

106:                                              ; preds = %99
  call fastcc void @__netlink_deliver_tap(ptr noundef nonnull %30, ptr noundef %103) #24
  br label %107

107:                                              ; preds = %106, %99
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %108 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %108, ptr noundef nonnull %30) #24
  %109 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %110 = load ptr, ptr %109, align 8
  call void %110(ptr noundef %0) #24
  br label %184

111:                                              ; preds = %86
  %112 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 8
  %113 = load i16, ptr %112, align 2
  %114 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nlmsghdr, ptr %115, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %15, align 4
  %119 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 12
  %120 = load i32, ptr %119, align 4
  %121 = or i16 %113, 2
  %122 = call ptr @skb_put(ptr noundef nonnull %30, i32 noundef 20) #24
  %123 = getelementptr inbounds %struct.nlmsghdr, ptr %122, i32 0, i32 1
  store i16 3, ptr %123, align 4
  store i32 20, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nlmsghdr, ptr %122, i32 0, i32 2
  store i16 %121, ptr %124, align 2
  %125 = getelementptr inbounds %struct.nlmsghdr, ptr %122, i32 0, i32 4
  store i32 %120, ptr %125, align 4
  %126 = getelementptr inbounds %struct.nlmsghdr, ptr %122, i32 0, i32 3
  store i32 %117, ptr %126, align 4
  %127 = icmp eq ptr %122, null
  br i1 %127, label %162, label %128, !prof !11

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 10
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 11
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, %130
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = or i16 %113, 18
  store i16 %137, ptr %124, align 2
  br label %138

138:                                              ; preds = %136, %132, %128
  %139 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 11
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %129, align 4
  %141 = getelementptr i8, ptr %122, i32 16
  %142 = load i32, ptr %74, align 4
  store i32 %142, ptr %141, align 1
  %143 = load ptr, ptr %2, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 64
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %145
  %151 = load i16, ptr %124, align 2
  %152 = or i16 %151, 512
  store i16 %152, ptr %124, align 2
  %153 = call i32 @strlen(ptr noundef nonnull %143) #24
  %154 = add i32 %153, 1
  %155 = call i32 @nla_put(ptr noundef nonnull %30, i32 noundef 1, i32 noundef %154, ptr noundef nonnull %143) #24
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load ptr, ptr %52, align 8
  %159 = ptrtoint ptr %158 to i32
  %160 = ptrtoint ptr %122 to i32
  %161 = sub i32 %159, %160
  store i32 %161, ptr %122, align 4
  br label %163

162:                                              ; preds = %111
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2197, i32 noundef 9, ptr noundef null) #24
  br label %180

163:                                              ; preds = %157, %150, %145, %138
  %164 = call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef nonnull %30, i32 noundef 1) #24
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #24
  br label %169

167:                                              ; preds = %163
  %168 = call fastcc i32 @__netlink_sendskb(ptr noundef %0, ptr noundef nonnull %30)
  br label %169

169:                                              ; preds = %167, %166
  %170 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = call i32 %171(ptr noundef %15) #24
  br label %175

175:                                              ; preds = %173, %169
  store i8 0, ptr %5, align 1
  %176 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %15, align 4
  %179 = load ptr, ptr %3, align 8
  call void @mutex_unlock(ptr noundef %179) #24
  call void @module_put(ptr noundef %177) #24
  call void @consume_skb(ptr noundef %178) #24
  br label %184

180:                                              ; preds = %162, %25, %8, %1
  %181 = phi ptr [ null, %8 ], [ %30, %162 ], [ null, %25 ], [ null, %1 ]
  %182 = phi i32 [ -105, %8 ], [ -105, %162 ], [ -105, %25 ], [ -22, %1 ]
  %183 = load ptr, ptr %3, align 8
  call void @mutex_unlock(ptr noundef %183) #24
  call void @kfree_skb_reason(ptr noundef %181, i32 noundef 0) #24
  br label %184

184:                                              ; preds = %180, %175, %107, %98
  %185 = phi i32 [ %182, %180 ], [ 0, %175 ], [ 0, %107 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #24
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netlink_ack(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %3, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load ptr, ptr %3, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strlen(ptr noundef nonnull %15)
  %19 = add i32 %18, 8
  %20 = and i32 %19, -4
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %36, label %26

24:                                               ; preds = %4
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ 0, %24 ], [ %22, %21 ]
  %28 = and i32 %9, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, ptr %1, align 4
  %32 = add i32 %31, 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ 0, %30 ], [ 256, %26 ]
  %35 = phi i32 [ %32, %30 ], [ 20, %26 ]
  br i1 %13, label %40, label %65

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 4
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %65, label %57

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = add i32 %27, 8
  %45 = select i1 %43, i32 %27, i32 %44
  %46 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 4
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 0
  %49 = zext i8 %47 to i32
  %50 = add nuw nsw i32 %49, 7
  %51 = and i32 %50, 508
  %52 = select i1 %48, i32 0, i32 %51
  %53 = add i32 %45, %52
  %54 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %62

57:                                               ; preds = %36
  %58 = zext i8 %38 to i32
  %59 = add nuw nsw i32 %58, 7
  %60 = and i32 %59, 508
  %61 = add i32 %60, %22
  br label %65

62:                                               ; preds = %40
  %63 = tail call i32 @netlink_policy_dump_attr_size_estimate(ptr noundef nonnull %55) #24
  %64 = add i32 %63, %53
  br label %65

65:                                               ; preds = %62, %57, %40, %36, %33, %24
  %66 = phi i32 [ %35, %62 ], [ %35, %40 ], [ 20, %57 ], [ 20, %24 ], [ %35, %33 ], [ 20, %36 ]
  %67 = phi i32 [ %34, %62 ], [ %34, %40 ], [ 256, %57 ], [ 256, %24 ], [ %34, %33 ], [ 256, %36 ]
  %68 = phi i1 [ false, %62 ], [ false, %40 ], [ true, %57 ], [ true, %24 ], [ false, %33 ], [ true, %36 ]
  %69 = phi i32 [ %64, %62 ], [ %53, %40 ], [ %61, %57 ], [ 0, %24 ], [ %27, %33 ], [ %22, %36 ]
  %70 = add i32 %66, 19
  %71 = add i32 %70, %69
  %72 = and i32 %71, -4
  %73 = tail call ptr @__alloc_skb(i32 noundef %72, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #24
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 51
  store i32 105, ptr %77, align 4
  %78 = load ptr, ptr %6, align 8
  tail call void @sk_error_report(ptr noundef %78) #24
  br label %162

79:                                               ; preds = %65
  %80 = icmp eq i32 %69, 0
  %81 = or i32 %67, 512
  %82 = select i1 %80, i32 %67, i32 %81
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %66, 16
  %88 = and i32 %70, -4
  %89 = tail call ptr @skb_put(ptr noundef nonnull %73, i32 noundef %88) #24
  %90 = getelementptr inbounds %struct.nlmsghdr, ptr %89, i32 0, i32 1
  store i16 2, ptr %90, align 4
  store i32 %87, ptr %89, align 4
  %91 = trunc i32 %82 to i16
  %92 = getelementptr inbounds %struct.nlmsghdr, ptr %89, i32 0, i32 2
  store i16 %91, ptr %92, align 2
  %93 = getelementptr inbounds %struct.nlmsghdr, ptr %89, i32 0, i32 4
  store i32 %84, ptr %93, align 4
  %94 = getelementptr inbounds %struct.nlmsghdr, ptr %89, i32 0, i32 3
  store i32 %86, ptr %94, align 4
  %95 = getelementptr i8, ptr %89, i32 16
  %96 = getelementptr i8, ptr %95, i32 %66
  %97 = sub i32 %88, %87
  tail call void @llvm.memset.p0.i32(ptr align 1 %96, i8 0, i32 %97, i1 false) #24
  %98 = getelementptr i8, ptr %89, i32 16
  store i32 %2, ptr %98, align 4
  %99 = getelementptr i8, ptr %89, i32 20
  %100 = icmp ugt i32 %66, 20
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i32, ptr %1, align 4
  br label %103

103:                                              ; preds = %101, %79
  %104 = phi i32 [ %102, %101 ], [ 16, %79 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %99, ptr align 4 %1, i32 %104, i1 false)
  br i1 %13, label %105, label %152

105:                                              ; preds = %103
  %106 = load ptr, ptr %3, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @strlen(ptr noundef nonnull %106) #24
  %110 = add i32 %109, 1
  %111 = tail call i32 @nla_put(ptr noundef nonnull %73, i32 noundef 1, i32 noundef %110, ptr noundef nonnull %106) #24
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113, !prof !10

113:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2445, i32 noundef 9, ptr noundef null) #24
  br label %114

114:                                              ; preds = %113, %108, %105
  br i1 %68, label %136, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %136, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %121 = load ptr, ptr %120, align 4
  %122 = icmp ult ptr %117, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %125 = load i32, ptr %124, align 8
  %126 = getelementptr i8, ptr %121, i32 %125
  %127 = icmp ult ptr %117, %126
  br i1 %127, label %129, label %128, !prof !10

128:                                              ; preds = %123, %119
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2450, i32 noundef 9, ptr noundef null) #24
  br label %136

129:                                              ; preds = %123
  %130 = ptrtoint ptr %117 to i32
  %131 = ptrtoint ptr %1 to i32
  %132 = sub i32 %130, %131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  store i32 %132, ptr %5, align 4
  %133 = call i32 @nla_put(ptr noundef nonnull %73, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135, !prof !10

135:                                              ; preds = %129
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2453, i32 noundef 9, ptr noundef null) #24
  br label %136

136:                                              ; preds = %135, %129, %128, %115, %114
  %137 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 4
  %138 = load i8, ptr %137, align 4
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = zext i8 %138 to i32
  %142 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 3
  %143 = call i32 @nla_put(ptr noundef nonnull %73, i32 noundef 3, i32 noundef %141, ptr noundef %142) #24
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145, !prof !10

145:                                              ; preds = %140
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2456, i32 noundef 9, ptr noundef null) #24
  br label %146

146:                                              ; preds = %145, %140, %136
  %147 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 @netlink_policy_dump_write_attr(ptr noundef nonnull %73, ptr noundef nonnull %148, i32 noundef 4) #24
  br label %152

152:                                              ; preds = %150, %146, %103
  %153 = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 14
  %154 = load ptr, ptr %153, align 8
  %155 = ptrtoint ptr %154 to i32
  %156 = ptrtoint ptr %89 to i32
  %157 = sub i32 %155, %156
  store i32 %157, ptr %89, align 4
  %158 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %83, align 4
  %161 = call i32 @netlink_unicast(ptr noundef %159, ptr noundef nonnull %73, i32 noundef %160, i32 noundef 64) #24
  br label %162

162:                                              ; preds = %152, %75
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_attr_size_estimate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_write_attr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_rcv_skb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.netlink_ext_ack, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %9

9:                                                ; preds = %38, %7
  %10 = phi i32 [ %5, %7 ], [ %45, %38 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false)
  %11 = load ptr, ptr %8, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 16
  %14 = icmp ult i32 %10, %12
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %47, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.nlmsghdr, ptr %11, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nlmsghdr, ptr %11, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = icmp ult i16 %23, 16
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = call i32 %1(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %3) #24
  %27 = icmp eq i32 %26, -4
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %17, align 2
  br label %30

30:                                               ; preds = %28, %21, %16
  %31 = phi i16 [ %18, %21 ], [ %29, %28 ], [ %18, %16 ]
  %32 = phi i32 [ 0, %21 ], [ %26, %28 ], [ 0, %16 ]
  %33 = and i16 %31, 4
  %34 = icmp ne i16 %33, 0
  %35 = icmp ne i32 %32, 0
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  call void @netlink_ack(ptr noundef %0, ptr noundef %11, i32 noundef %32, ptr noundef nonnull %3)
  br label %38

38:                                               ; preds = %37, %30, %25
  %39 = load i32, ptr %11, align 4
  %40 = add i32 %39, 3
  %41 = and i32 %40, -4
  %42 = load i32, ptr %4, align 8
  %43 = call i32 @llvm.umin.i32(i32 %41, i32 %42)
  %44 = call ptr @skb_pull(ptr noundef %0, i32 noundef %43) #24
  %45 = load i32, ptr %4, align 8
  %46 = icmp ult i32 %45, 16
  br i1 %46, label %47, label %9

47:                                               ; preds = %38, %9, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsg_notify(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #24, !srcloc !25
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #24, !srcloc !26
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !11

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #24
  br label %21

21:                                               ; preds = %19, %15, %8
  %22 = phi i32 [ 0, %8 ], [ %2, %15 ], [ %2, %19 ]
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store i32 %3, ptr %23, align 8
  %24 = tail call i32 @netlink_broadcast(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %3, i32 noundef %5) #24
  %25 = icmp eq i32 %24, -3
  %26 = select i1 %25, i32 0, i32 %24
  br label %27

27:                                               ; preds = %21, %6
  %28 = phi i32 [ %26, %21 ], [ 0, %6 ]
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @netlink_unicast(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 64) #24
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 0) #24
  %33 = icmp eq i32 %28, 0
  %34 = select i1 %33, i32 %32, i32 %28
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ %34, %30 ], [ %28, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @netlink_chain, ptr noundef %0) #24
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @netlink_chain, ptr noundef %0) #24
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @netlink_proto_init() #10 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @netlink_proto, i32 noundef 0) #24
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4096) #27
  store ptr %5, ptr @nl_table, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @rhashtable_init(ptr noundef nonnull %5, ptr noundef nonnull @netlink_rhashtable_params) #24
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %25, %7
  %11 = phi i32 [ 0, %7 ], [ %23, %25 ]
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %15, %13 ], [ %11, %10 ]
  %15 = add nsw i32 %14, -1
  %16 = load ptr, ptr @nl_table, align 4
  %17 = getelementptr %struct.netlink_table, ptr %16, i32 %15
  tail call void @rhashtable_destroy(ptr noundef %17) #24
  %18 = icmp sgt i32 %14, 2
  br i1 %18, label %13, label %19

19:                                               ; preds = %13, %10
  %20 = load ptr, ptr @nl_table, align 4
  tail call void @kfree(ptr noundef %20) #24
  br label %35

21:                                               ; preds = %25, %7
  %22 = phi i32 [ %23, %25 ], [ 0, %7 ]
  %23 = add nuw nsw i32 %22, 1
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @nl_table, align 4
  %27 = getelementptr %struct.netlink_table, ptr %26, i32 %23
  %28 = tail call i32 @rhashtable_init(ptr noundef %27, ptr noundef nonnull @netlink_rhashtable_params) #24
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %10, label %21

30:                                               ; preds = %21
  tail call fastcc void @netlink_add_usersock_entry() #28
  %31 = tail call i32 @sock_register(ptr noundef nonnull @netlink_family_ops) #24
  %32 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @netlink_net_ops) #24
  %33 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @netlink_tap_net_ops) #24
  tail call void @rtnetlink_init() #24
  br label %34

34:                                               ; preds = %30, %0
  ret i32 %1

35:                                               ; preds = %19, %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.47) #29
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_netlink_extack(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #24
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_netlink_extack, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %13) #24
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #24
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #13

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netlink_skb_destructor(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #24
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #24, !srcloc !25
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #24, !srcloc !34
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %5
  %18 = load ptr, ptr %2, align 8
  tail call void @vfree(ptr noundef %18) #24
  br label %19

19:                                               ; preds = %17, %10
  store ptr null, ptr %2, align 8
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @sock_rfree(ptr noundef %0) #24
  br label %25

25:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__netlink_deliver_tap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 46
  %6 = load i16, ptr %5, align 4
  switch i16 %6, label %103 [
    i16 0, label %7
    i16 2, label %7
    i16 4, label %7
    i16 5, label %7
    i16 6, label %7
    i16 10, label %7
    i16 12, label %7
    i16 16, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %14

14:                                               ; preds = %101, %7
  %15 = phi ptr [ %1, %7 ], [ %16, %101 ]
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %103, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -8
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !61
  %25 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 99
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #12, !srcloc !12
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #24, !srcloc !62
  br label %35

35:                                               ; preds = %23, %18
  %36 = load ptr, ptr %8, align 8
  %37 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %36) #24
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load ptr, ptr %9, align 4
  %40 = load ptr, ptr %8, align 8
  %41 = ptrtoint ptr %39 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = tail call ptr @__alloc_skb(i32 noundef %43, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #24
  %45 = icmp eq ptr %44, null
  br i1 %45, label %87, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %11, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3
  %49 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 12
  store i32 %47, ptr %49, align 4
  %50 = load i32, ptr %12, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 16
  store i32 %50, ptr %51, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %48, ptr noundef align 8 dereferenceable(12) %10, i32 12, i1 false) #24
  %52 = load ptr, ptr %13, align 4
  %53 = tail call ptr @skb_put(ptr noundef nonnull %44, i32 noundef %43) #24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr align 1 %52, i32 %43, i1 false) #24
  br label %57

54:                                               ; preds = %35
  %55 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57

57:                                               ; preds = %54, %46
  %58 = phi ptr [ %44, %46 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.anon.55, ptr %58, i32 0, i32 2
  store ptr %20, ptr %59, align 8
  %60 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 46
  %61 = load i16, ptr %60, align 4
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #24
  %63 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 13, i32 0, i32 16
  store i16 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.netlink_sock, ptr %21, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 13
  %69 = select i1 %67, i16 6, i16 7
  %70 = load i16, ptr %68, align 8
  %71 = and i16 %70, -8
  %72 = or i16 %69, %71
  store i16 %72, ptr %68, align 8
  %73 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 16
  %76 = load ptr, ptr %75, align 8
  %77 = ptrtoint ptr %74 to i32
  %78 = ptrtoint ptr %76 to i32
  %79 = sub i32 %77, %78
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 13, i32 0, i32 18
  store i16 %80, ptr %81, align 4
  %82 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %58) #24
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %87, !prof !11

84:                                               ; preds = %57
  %85 = icmp eq i32 %82, 2
  %86 = select i1 %85, i32 0, i32 -105
  br label %87

87:                                               ; preds = %84, %57, %54, %38
  %88 = phi i32 [ %86, %84 ], [ %82, %57 ], [ -12, %54 ], [ -12, %38 ]
  br i1 %22, label %101, label %89

89:                                               ; preds = %87
  %90 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !61
  %91 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 99
  %92 = load ptr, ptr %91, align 8
  %93 = ptrtoint ptr %92 to i32
  %94 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %95 = inttoptr i32 %94 to ptr
  %96 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %95) #12, !srcloc !12
  %97 = add i32 %96, %93
  %98 = inttoptr i32 %97 to ptr
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, -1
  store i32 %100, ptr %98, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %90) #24, !srcloc !62
  br label %101

101:                                              ; preds = %89, %87
  %102 = icmp eq i32 %88, 0
  br i1 %102, label %14, label %103, !prof !10

103:                                              ; preds = %101, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @peernet2id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netlink_sock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 1, !range !42
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef %6) #24
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 14, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %14) #24
  %15 = load ptr, ptr %6, align 8
  tail call void @kfree_skb_reason(ptr noundef %15, i32 noundef 0) #24
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %17) #24
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %0) #25
  br label %39

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #24
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !10

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 413, i32 noundef 9, ptr noundef null) #24
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !10

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef null) #24
  br label %39

39:                                               ; preds = %38, %34, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.netlink_notify, align 4
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %345, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @nl_table, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 46
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr %struct.netlink_table, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 21
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %13 = load volatile ptr, ptr %11, align 4
  %14 = getelementptr inbounds %struct.rhashtable, ptr %11, i32 0, i32 3, i32 3
  br label %15

15:                                               ; preds = %137, %6
  %16 = phi ptr [ %13, %6 ], [ %139, %137 ]
  %17 = load i16, ptr %14, align 2
  %18 = zext i16 %17 to i32
  %19 = sub nsw i32 0, %18
  %20 = getelementptr i8, ptr %12, i32 %19
  %21 = getelementptr inbounds %struct.bucket_table, ptr %16, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.netlink_sock, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %22, -559038733
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 14) #24
  %28 = sub i32 0, %27
  %29 = xor i32 %26, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11) #24
  %31 = sub i32 %29, %30
  %32 = xor i32 %31, %25
  %33 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 25) #24
  %34 = sub i32 %32, %33
  %35 = xor i32 %34, %28
  %36 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16) #24
  %37 = sub i32 %35, %36
  %38 = xor i32 %37, %31
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 4) #24
  %40 = sub i32 %38, %39
  %41 = xor i32 %40, %34
  %42 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 14) #24
  %43 = sub i32 %41, %42
  %44 = xor i32 %43, %37
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 24) #24
  %46 = sub i32 %44, %45
  %47 = load i32, ptr %16, align 64
  %48 = add i32 %47, -1
  %49 = and i32 %46, %48
  %50 = getelementptr inbounds %struct.bucket_table, ptr %16, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !10

53:                                               ; preds = %15
  %54 = tail call ptr @__rht_bucket_nested(ptr noundef %16, i32 noundef %49) #24
  br label %57

55:                                               ; preds = %15
  %56 = getelementptr %struct.bucket_table, ptr %16, i32 0, i32 8, i32 %49
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %54, %53 ], [ %56, %55 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %137, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @llvm.thread.pointer() #24
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %63 = load volatile i32, ptr %62, align 4
  %64 = add i32 %63, 512
  store volatile i32 %64, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !45
  br label %65

65:                                               ; preds = %79, %60
  %66 = load volatile i32, ptr %58, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74, !prof !46

69:                                               ; preds = %65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %58) #24, !srcloc !25
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #24, !srcloc !47
  %71 = extractvalue { i32, i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74, !prof !10

74:                                               ; preds = %69, %65
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !49
  br label %75

75:                                               ; preds = %75, %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !51
  %76 = load volatile i32, ptr %58, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %75

79:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !52
  br label %65

80:                                               ; preds = %69
  %81 = load ptr, ptr %58, align 4
  %82 = ptrtoint ptr %81 to i32
  %83 = and i32 %82, -2
  %84 = icmp eq i32 %83, 0
  %85 = ptrtoint ptr %58 to i32
  %86 = or i32 %85, 1
  %87 = select i1 %84, i32 %86, i32 %83
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %80
  %91 = inttoptr i32 %87 to ptr
  %92 = icmp eq ptr %12, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load ptr, ptr %12, align 4
  br label %102

95:                                               ; preds = %108
  %96 = icmp eq ptr %110, %12
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = load ptr, ptr %12, align 4
  %99 = icmp eq ptr %109, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  store volatile ptr %98, ptr %109, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %58) #24, !srcloc !25
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #24, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !55
  br label %116

102:                                              ; preds = %97, %93
  %103 = phi ptr [ %94, %93 ], [ %98, %97 ]
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, ptr %103, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !56
  store volatile ptr %107, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  br label %116

108:                                              ; preds = %95, %90
  %109 = phi ptr [ %110, %95 ], [ %91, %90 ]
  %110 = load ptr, ptr %109, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %95, label %114

114:                                              ; preds = %108, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %58) #24, !srcloc !25
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #24, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !55
  tail call fastcc void @local_bh_enable() #24
  br label %137

116:                                              ; preds = %102, %100
  tail call fastcc void @local_bh_enable() #24
  %117 = getelementptr inbounds %struct.rhashtable, ptr %11, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #24, !srcloc !25
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 1, ptr elementtype(i32) %117) #24, !srcloc !64
  %119 = getelementptr inbounds %struct.rhashtable, ptr %11, i32 0, i32 3, i32 6
  %120 = load i8, ptr %119, align 2, !range !42
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %116
  %123 = load volatile i32, ptr %117, align 4
  %124 = load i32, ptr %16, align 64
  %125 = mul i32 %124, 3
  %126 = udiv i32 %125, 10
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.rhashtable, ptr %11, i32 0, i32 3, i32 5
  %130 = load i16, ptr %129, align 4
  %131 = zext i16 %130 to i32
  %132 = icmp ugt i32 %124, %131
  br i1 %132, label %133, label %142, !prof !11

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.rhashtable, ptr %11, i32 0, i32 5
  %135 = load ptr, ptr @system_wq, align 4
  %136 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %135, ptr noundef %134) #24
  br label %142

137:                                              ; preds = %114, %57
  %138 = getelementptr inbounds %struct.bucket_table, ptr %16, i32 0, i32 5
  %139 = load volatile ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %15

141:                                              ; preds = %137
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  br label %152

142:                                              ; preds = %133, %128, %122, %116
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %143 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  %144 = load volatile i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %147, !prof !11

146:                                              ; preds = %142
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 616, i32 noundef 9, ptr noundef null) #24
  br label %147

147:                                              ; preds = %146, %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %143) #24, !srcloc !25
  %148 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %143, ptr %143, i32 1, ptr elementtype(i32) %143) #24, !srcloc !29
  %149 = extractvalue { i32, i32, i32 } %148, 0
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %152, !prof !11

151:                                              ; preds = %147
  tail call void @refcount_warn_saturate(ptr noundef %143, i32 noundef 4) #24
  br label %152

152:                                              ; preds = %151, %147, %141
  tail call void @netlink_table_grab() #24
  %153 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 5
  %154 = load i32, ptr %153, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %215, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 7
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 7, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  store volatile ptr %158, ptr %160, align 4
  %161 = icmp eq ptr %158, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.hlist_node, ptr %158, i32 0, i32 1
  store volatile ptr %160, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %156
  %165 = load ptr, ptr @nl_table, align 4
  %166 = load i16, ptr %8, align 4
  %167 = zext i16 %166 to i32
  %168 = getelementptr %struct.netlink_table, ptr %165, i32 %167, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %217, label %171

171:                                              ; preds = %164
  %172 = getelementptr %struct.netlink_table, ptr %165, i32 %167, i32 4
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 31
  %175 = icmp ult i32 %174, 32
  br i1 %175, label %215, label %176

176:                                              ; preds = %171
  %177 = getelementptr %struct.netlink_table, ptr %165, i32 %167, i32 1
  br label %178

178:                                              ; preds = %207, %176
  %179 = phi i32 [ 0, %176 ], [ %210, %207 ]
  %180 = load ptr, ptr %177, align 4
  %181 = icmp eq ptr %180, null
  %182 = getelementptr i8, ptr %180, i32 -24
  %183 = icmp eq ptr %182, null
  %184 = or i1 %181, %183
  br i1 %184, label %207, label %185

185:                                              ; preds = %199, %178
  %186 = phi ptr [ %204, %199 ], [ %182, %178 ]
  %187 = phi i32 [ %200, %199 ], [ 0, %178 ]
  %188 = getelementptr inbounds %struct.netlink_sock, ptr %186, i32 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, 31
  %191 = lshr i32 %190, 5
  %192 = icmp ult i32 %179, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.netlink_sock, ptr %186, i32 0, i32 7
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr i32, ptr %195, i32 %179
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %197, %187
  br label %199

199:                                              ; preds = %193, %185
  %200 = phi i32 [ %198, %193 ], [ %187, %185 ]
  %201 = getelementptr inbounds %struct.sock_common, ptr %186, i32 0, i32 7
  %202 = load ptr, ptr %201, align 8
  %203 = icmp eq ptr %202, null
  %204 = getelementptr i8, ptr %202, i32 -24
  %205 = icmp eq ptr %204, null
  %206 = or i1 %203, %205
  br i1 %206, label %207, label %185

207:                                              ; preds = %199, %178
  %208 = phi i32 [ 0, %178 ], [ %200, %199 ]
  %209 = getelementptr %struct.listeners, ptr %169, i32 0, i32 1, i32 %179
  store i32 %208, ptr %209, align 4
  %210 = add nuw nsw i32 %179, 1
  %211 = load i32, ptr %172, align 4
  %212 = add i32 %211, 31
  %213 = lshr i32 %212, 5
  %214 = icmp ult i32 %210, %213
  br i1 %214, label %178, label %215

215:                                              ; preds = %207, %171, %152
  %216 = load i16, ptr %8, align 4
  br label %217

217:                                              ; preds = %215, %164
  %218 = phi i16 [ %216, %215 ], [ %166, %164 ]
  %219 = icmp eq i16 %218, 16
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @genl_sk_destructing_cnt) #24, !srcloc !25
  %221 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @genl_sk_destructing_cnt, ptr nonnull @genl_sk_destructing_cnt, i32 1, ptr nonnull elementtype(i32) @genl_sk_destructing_cnt) #24, !srcloc !27
  br label %222

222:                                              ; preds = %220, %217
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  %223 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %223) #24
  %224 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %225 = load i32, ptr %224, align 4
  %226 = or i32 %225, 1
  store i32 %226, ptr %224, align 4
  %227 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 71
  store ptr null, ptr %227, align 8
  %228 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 17
  store ptr null, ptr %228, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %223) #24
  %229 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 19
  %230 = load ptr, ptr %229, align 8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %259, label %232

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %259, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 7
  br label %238

238:                                              ; preds = %255, %236
  %239 = phi i32 [ %234, %236 ], [ %257, %255 ]
  %240 = phi i32 [ 0, %236 ], [ %256, %255 ]
  %241 = load ptr, ptr %237, align 8
  %242 = lshr i32 %240, 5
  %243 = getelementptr i32, ptr %241, i32 %242
  %244 = load volatile i32, ptr %243, align 4
  %245 = and i32 %240, 31
  %246 = shl nuw i32 1, %245
  %247 = and i32 %244, %246
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %238
  %250 = add nuw i32 %240, 1
  br label %255

251:                                              ; preds = %238
  %252 = load ptr, ptr %229, align 8
  %253 = add nuw i32 %240, 1
  tail call void %252(ptr noundef nonnull @init_net, i32 noundef %253) #24
  %254 = load i32, ptr %233, align 4
  br label %255

255:                                              ; preds = %251, %249
  %256 = phi i32 [ %250, %249 ], [ %253, %251 ]
  %257 = phi i32 [ %239, %249 ], [ %254, %251 ]
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %238, label %259

259:                                              ; preds = %255, %232, %222
  %260 = load i16, ptr %8, align 4
  %261 = icmp eq i16 %260, 16
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @genl_sk_destructing_cnt) #24, !srcloc !25
  %263 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @genl_sk_destructing_cnt, ptr nonnull @genl_sk_destructing_cnt, i32 1, ptr nonnull elementtype(i32) @genl_sk_destructing_cnt) #24, !srcloc !34
  %264 = extractvalue { i32, i32 } %263, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  tail call void @__wake_up(ptr noundef nonnull @genl_sk_destructing_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %267

267:                                              ; preds = %266, %262, %259
  store ptr null, ptr %3, align 16
  %268 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %268, i32 noundef 1, i32 noundef 0, ptr noundef null) #24
  %269 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %269) #24
  %270 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 1
  %271 = load i32, ptr %270, align 8
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 11
  %275 = load i8, ptr %274, align 8, !range !42
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #24
  store ptr @init_net, ptr %2, align 4
  %278 = getelementptr inbounds %struct.netlink_notify, ptr %2, i32 0, i32 1
  store i32 %271, ptr %278, align 4
  %279 = getelementptr inbounds %struct.netlink_notify, ptr %2, i32 0, i32 2
  %280 = load i16, ptr %8, align 4
  %281 = zext i16 %280 to i32
  store i32 %281, ptr %279, align 4
  %282 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @netlink_chain, i32 noundef 1, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #24
  br label %283

283:                                              ; preds = %277, %273, %267
  %284 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 20
  %285 = load ptr, ptr %284, align 4
  call void @module_put(ptr noundef %285) #24
  %286 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 4
  %287 = load i32, ptr %286, align 4
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %331, label %290

290:                                              ; preds = %283
  call void @netlink_table_grab()
  %291 = load ptr, ptr @nl_table, align 4
  %292 = load i16, ptr %8, align 4
  %293 = zext i16 %292 to i32
  %294 = getelementptr %struct.netlink_table, ptr %291, i32 %293, i32 10
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298, !prof !11

297:                                              ; preds = %290
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #24, !srcloc !65
  unreachable

298:                                              ; preds = %290
  %299 = add i32 %295, -1
  store i32 %299, ptr %294, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %330

301:                                              ; preds = %298
  %302 = load ptr, ptr @nl_table, align 4
  %303 = load i16, ptr %8, align 4
  %304 = zext i16 %303 to i32
  %305 = getelementptr %struct.netlink_table, ptr %302, i32 %304, i32 2
  %306 = load ptr, ptr %305, align 4
  store volatile ptr null, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %301
  call void @kvfree_call_rcu(ptr noundef nonnull %306, ptr noundef null) #24
  br label %309

309:                                              ; preds = %308, %301
  %310 = load ptr, ptr @nl_table, align 4
  %311 = load i16, ptr %8, align 4
  %312 = zext i16 %311 to i32
  %313 = getelementptr %struct.netlink_table, ptr %310, i32 %312, i32 6
  store ptr null, ptr %313, align 4
  %314 = load ptr, ptr @nl_table, align 4
  %315 = load i16, ptr %8, align 4
  %316 = zext i16 %315 to i32
  %317 = getelementptr %struct.netlink_table, ptr %314, i32 %316, i32 7
  store ptr null, ptr %317, align 4
  %318 = load ptr, ptr @nl_table, align 4
  %319 = load i16, ptr %8, align 4
  %320 = zext i16 %319 to i32
  %321 = getelementptr %struct.netlink_table, ptr %318, i32 %320, i32 8
  store ptr null, ptr %321, align 4
  %322 = load ptr, ptr @nl_table, align 4
  %323 = load i16, ptr %8, align 4
  %324 = zext i16 %323 to i32
  %325 = getelementptr %struct.netlink_table, ptr %322, i32 %324, i32 3
  store i32 0, ptr %325, align 4
  %326 = load ptr, ptr @nl_table, align 4
  %327 = load i16, ptr %8, align 4
  %328 = zext i16 %327 to i32
  %329 = getelementptr %struct.netlink_table, ptr %326, i32 %328, i32 10
  store i32 0, ptr %329, align 4
  br label %330

330:                                              ; preds = %309, %298
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %331

331:                                              ; preds = %330, %283
  %332 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !61
  %333 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %334 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @netlink_proto, i32 0, i32 25), align 4
  %335 = getelementptr %struct.prot_inuse, ptr %333, i32 0, i32 1, i32 %334
  %336 = ptrtoint ptr %335 to i32
  %337 = call i32 @llvm.read_register.i32(metadata !0) #24
  %338 = inttoptr i32 %337 to ptr
  %339 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %338) #12, !srcloc !12
  %340 = add i32 %339, %336
  %341 = inttoptr i32 %340 to ptr
  %342 = load i32, ptr %341, align 4
  %343 = add i32 %342, -1
  store i32 %343, ptr %341, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %332) #24, !srcloc !62
  %344 = getelementptr inbounds %struct.netlink_sock, ptr %4, i32 0, i32 22
  call void @call_rcu(ptr noundef %344, ptr noundef nonnull @deferred_put_nlk_sk) #24
  br label %345

345:                                              ; preds = %331, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %7 = icmp ult i32 %2, 12
  br i1 %7, label %200, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %1, align 4
  %10 = icmp eq i16 %9, 16
  br i1 %10, label %11, label %200

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @nl_table, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 46
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr %struct.netlink_table, ptr %16, i32 %19, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %26 = tail call zeroext i1 @ns_capable(ptr noundef %25, i32 noundef 12) #24
  br i1 %26, label %27, label %200

27:                                               ; preds = %24, %15
  %28 = tail call fastcc i32 @netlink_realloc_groups(ptr noundef %6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %200

30:                                               ; preds = %27, %11
  %31 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, 32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = shl nsw i32 -1, %32
  %36 = xor i32 %35, -1
  %37 = and i32 %13, %36
  store i32 %37, ptr %4, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %13, %30 ], [ %37, %34 ]
  %40 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 11
  %41 = load volatile i8, ptr %40, align 8, !range !42
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  %44 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %200

49:                                               ; preds = %43, %38
  %50 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 18
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ne ptr %51, null
  %53 = icmp ne i32 %39, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %72

55:                                               ; preds = %69, %49
  %56 = phi i32 [ %70, %69 ], [ 0, %49 ]
  %57 = load volatile i32, ptr %4, align 4
  %58 = shl nuw i32 1, %56
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = add nuw nsw i32 %56, 1
  br label %69

63:                                               ; preds = %55
  %64 = load ptr, ptr %50, align 4
  %65 = add nuw nsw i32 %56, 1
  %66 = tail call i32 %64(ptr noundef nonnull @init_net, i32 noundef %65) #24
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call fastcc void @netlink_undo_bind(i32 noundef %56, i32 noundef %57, ptr noundef %6)
  br label %200

69:                                               ; preds = %63, %61
  %70 = phi i32 [ %62, %61 ], [ %65, %63 ]
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %55

72:                                               ; preds = %69, %49
  %73 = phi i32 [ %39, %49 ], [ %57, %69 ]
  %74 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !27
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %74) #24
  br i1 %42, label %76, label %88

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call fastcc i32 @netlink_insert(ptr noundef %6, i32 noundef %78)
  br label %84

82:                                               ; preds = %76
  %83 = tail call fastcc i32 @netlink_autobind(ptr noundef %0)
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call fastcc void @netlink_undo_bind(i32 noundef 32, i32 noundef %73, ptr noundef %6)
  br label %194

88:                                               ; preds = %84, %72
  %89 = icmp eq i32 %73, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 7
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %194, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %92, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %194, label %97

97:                                               ; preds = %94, %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %99 = extractvalue { i32, i32 } %98, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %102

102:                                              ; preds = %101, %97
  tail call void @netlink_table_grab()
  %103 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = tail call i32 @__sw_hweight32(i32 noundef %73) #24
  %106 = add i32 %105, %104
  %107 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 7
  %108 = load ptr, ptr %107, align 8
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 @__sw_hweight32(i32 noundef %109) #24
  %111 = sub i32 %106, %110
  %112 = load i32, ptr %103, align 8
  %113 = icmp eq i32 %112, 0
  %114 = icmp ne i32 %106, %110
  %115 = or i1 %114, %113
  br i1 %115, label %124, label %116

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 7
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 7, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  store volatile ptr %118, ptr %120, align 4
  %121 = icmp eq ptr %118, null
  br i1 %121, label %139, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.hlist_node, ptr %118, i32 0, i32 1
  store volatile ptr %120, ptr %123, align 4
  br label %139

124:                                              ; preds = %102
  %125 = and i1 %114, %113
  br i1 %125, label %126, label %139

126:                                              ; preds = %124
  %127 = load ptr, ptr @nl_table, align 4
  %128 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 46
  %129 = load i16, ptr %128, align 4
  %130 = zext i16 %129 to i32
  %131 = getelementptr %struct.netlink_table, ptr %127, i32 %130, i32 1
  %132 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 7
  %133 = load ptr, ptr %131, align 4
  store volatile ptr %133, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.hlist_node, ptr %133, i32 0, i32 1
  store volatile ptr %132, ptr %136, align 4
  br label %137

137:                                              ; preds = %135, %126
  store volatile ptr %132, ptr %131, align 4
  %138 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %131, ptr %138, align 4
  br label %139

139:                                              ; preds = %137, %124, %122, %116
  store i32 %111, ptr %103, align 8
  %140 = load ptr, ptr %107, align 8
  %141 = load i32, ptr %4, align 4
  store i32 %141, ptr %140, align 4
  %142 = load ptr, ptr @nl_table, align 4
  %143 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 46
  %144 = load i16, ptr %143, align 4
  %145 = zext i16 %144 to i32
  %146 = getelementptr %struct.netlink_table, ptr %142, i32 %145, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %193, label %149

149:                                              ; preds = %139
  %150 = getelementptr %struct.netlink_table, ptr %142, i32 %145, i32 4
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, 31
  %153 = icmp ult i32 %152, 32
  br i1 %153, label %193, label %154

154:                                              ; preds = %149
  %155 = getelementptr %struct.netlink_table, ptr %142, i32 %145, i32 1
  br label %156

156:                                              ; preds = %185, %154
  %157 = phi i32 [ 0, %154 ], [ %188, %185 ]
  %158 = load ptr, ptr %155, align 4
  %159 = icmp eq ptr %158, null
  %160 = getelementptr i8, ptr %158, i32 -24
  %161 = icmp eq ptr %160, null
  %162 = or i1 %159, %161
  br i1 %162, label %185, label %163

163:                                              ; preds = %177, %156
  %164 = phi ptr [ %182, %177 ], [ %160, %156 ]
  %165 = phi i32 [ %178, %177 ], [ 0, %156 ]
  %166 = getelementptr inbounds %struct.netlink_sock, ptr %164, i32 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 31
  %169 = lshr i32 %168, 5
  %170 = icmp ult i32 %157, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.netlink_sock, ptr %164, i32 0, i32 7
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr i32, ptr %173, i32 %157
  %175 = load i32, ptr %174, align 4
  %176 = or i32 %175, %165
  br label %177

177:                                              ; preds = %171, %163
  %178 = phi i32 [ %176, %171 ], [ %165, %163 ]
  %179 = getelementptr inbounds %struct.sock_common, ptr %164, i32 0, i32 7
  %180 = load ptr, ptr %179, align 8
  %181 = icmp eq ptr %180, null
  %182 = getelementptr i8, ptr %180, i32 -24
  %183 = icmp eq ptr %182, null
  %184 = or i1 %181, %183
  br i1 %184, label %185, label %163

185:                                              ; preds = %177, %156
  %186 = phi i32 [ 0, %156 ], [ %178, %177 ]
  %187 = getelementptr %struct.listeners, ptr %147, i32 0, i32 1, i32 %157
  store i32 %186, ptr %187, align 4
  %188 = add nuw nsw i32 %157, 1
  %189 = load i32, ptr %150, align 4
  %190 = add i32 %189, 31
  %191 = lshr i32 %190, 5
  %192 = icmp ult i32 %188, %191
  br i1 %192, label %156, label %193

193:                                              ; preds = %185, %149, %139
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %200

194:                                              ; preds = %94, %90, %87
  %195 = phi i32 [ 0, %90 ], [ 0, %94 ], [ %85, %87 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %196 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %197 = extractvalue { i32, i32 } %196, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %200

200:                                              ; preds = %199, %194, %193, %68, %43, %27, %24, %8, %3
  %201 = phi i32 [ 0, %193 ], [ -22, %3 ], [ -22, %8 ], [ -1, %24 ], [ %28, %27 ], [ -22, %43 ], [ %66, %68 ], [ %195, %194 ], [ %195, %199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_connect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp ult i32 %2, 2
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %1, align 2
  switch i16 %9, label %55 [
    i16 0, label %10
    i16 16, label %13
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 2
  store i32 0, ptr %12, align 4
  br label %52

13:                                               ; preds = %8
  %14 = icmp ult i32 %2, 12
  br i1 %14, label %55, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19, %15
  %24 = load ptr, ptr @nl_table, align 4
  %25 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 46
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr %struct.netlink_table, ptr %24, i32 %27, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %34 = tail call zeroext i1 @ns_capable(ptr noundef %33, i32 noundef 12) #24
  br i1 %34, label %35, label %55

35:                                               ; preds = %32, %23, %19
  %36 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 11
  %37 = load volatile i8, ptr %36, align 8, !range !42
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = tail call fastcc i32 @netlink_autobind(ptr noundef %0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %16, align 4
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 true), !range !67
  %49 = add nuw nsw i32 %48, 1
  %50 = icmp eq i32 %47, 0
  %51 = select i1 %50, i32 0, i32 %49
  br label %52

52:                                               ; preds = %42, %10
  %53 = phi i32 [ %51, %42 ], [ 0, %10 ]
  %54 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 3
  store i32 %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %52, %39, %32, %13, %8, %4
  %56 = phi i32 [ -22, %4 ], [ -22, %8 ], [ -22, %13 ], [ -1, %32 ], [ %40, %39 ], [ 0, %52 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  store i16 16, ptr %1, align 4
  %6 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 1
  store i16 0, ptr %6, align 2
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.netlink_sock, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.netlink_sock, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  %15 = add i32 %13, -1
  %16 = shl nuw i32 1, %15
  %17 = select i1 %14, i32 0, i32 %16
  %18 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  br label %37

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.netlink_sock, ptr %5, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !27
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %23) #24
  %25 = getelementptr inbounds %struct.netlink_sock, ptr %5, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, ptr %26, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi i32 [ %29, %28 ], [ 0, %19 ]
  %32 = getelementptr inbounds %struct.sockaddr_nl, ptr %1, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %37

37:                                               ; preds = %36, %30, %8
  ret i32 12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @netlink_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #16 {
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  store i32 0, ptr %6, align 4
  %9 = icmp eq i32 %1, 270
  br i1 %9, label %10, label %148

10:                                               ; preds = %5
  %11 = icmp ugt i32 %4, 3
  br i1 %11, label %12, label %36

12:                                               ; preds = %10
  %13 = extractvalue [2 x i32] %3, 0
  %14 = inttoptr i32 %13 to ptr
  %15 = extractvalue [2 x i32] %3, 1
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 4, i32 -1090519040) #30, !srcloc !68
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !10

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #24
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #12, !srcloc !69
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %14, i32 noundef 4) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #24, !srcloc !70
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30, !prof !10

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 4, %18 ]
  %32 = sub i32 4, %31
  %33 = getelementptr i8, ptr %6, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #24
  br label %148

34:                                               ; preds = %12
  %35 = load i32, ptr %14, align 1
  store i32 %35, ptr %6, align 4
  br label %36

36:                                               ; preds = %34, %22, %10
  switch i32 %2, label %148 [
    i32 3, label %37
    i32 1, label %46
    i32 2, label %46
    i32 4, label %89
    i32 5, label %98
    i32 8, label %109
    i32 10, label %121
    i32 11, label %130
    i32 12, label %139
  ]

37:                                               ; preds = %36
  %38 = load i32, ptr %6, align 4
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  br i1 %39, label %44, label %42

42:                                               ; preds = %37
  %43 = or i32 %41, 2
  store i32 %43, ptr %40, align 4
  br label %148

44:                                               ; preds = %37
  %45 = and i32 %41, -3
  store i32 %45, ptr %40, align 4
  br label %148

46:                                               ; preds = %36, %36
  %47 = load ptr, ptr @nl_table, align 4
  %48 = load ptr, ptr %7, align 16
  %49 = getelementptr inbounds %struct.sock, ptr %48, i32 0, i32 46
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr %struct.netlink_table, ptr %47, i32 %51, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %58 = call zeroext i1 @ns_capable(ptr noundef %57, i32 noundef 12) #24
  br i1 %58, label %59, label %148

59:                                               ; preds = %56, %46
  %60 = call fastcc i32 @netlink_realloc_groups(ptr noundef %8)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %148

62:                                               ; preds = %59
  %63 = load i32, ptr %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %148, label %65

65:                                               ; preds = %62
  %66 = add i32 %63, -1
  %67 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %148

70:                                               ; preds = %65
  %71 = icmp eq i32 %2, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 18
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = call i32 %74(ptr noundef nonnull @init_net, i32 noundef %63) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %148

79:                                               ; preds = %76, %72, %70
  call void @netlink_table_grab()
  %80 = load i32, ptr %6, align 4
  %81 = zext i1 %71 to i32
  call fastcc void @netlink_update_socket_mc(ptr noundef %8, i32 noundef %80, i32 noundef %81)
  call void @netlink_table_ungrab()
  %82 = icmp eq i32 %2, 2
  br i1 %82, label %83, label %148

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 19
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %148, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %6, align 4
  call void %85(ptr noundef nonnull @init_net, i32 noundef %88) #24
  br label %148

89:                                               ; preds = %36
  %90 = load i32, ptr %6, align 4
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  br i1 %91, label %96, label %94

94:                                               ; preds = %89
  %95 = or i32 %93, 4
  store i32 %95, ptr %92, align 4
  br label %148

96:                                               ; preds = %89
  %97 = and i32 %93, -5
  store i32 %97, ptr %92, align 4
  br label %148

98:                                               ; preds = %36
  %99 = load i32, ptr %6, align 4
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  br i1 %100, label %107, label %103

103:                                              ; preds = %98
  %104 = or i32 %102, 8
  store i32 %104, ptr %101, align 4
  %105 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 8
  call void @_clear_bit(i32 noundef 0, ptr noundef %105) #24
  %106 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 10
  call void @__wake_up(ptr noundef %106, i32 noundef 1, i32 noundef 1, ptr noundef null) #24
  br label %148

107:                                              ; preds = %98
  %108 = and i32 %102, -9
  store i32 %108, ptr %101, align 4
  br label %148

109:                                              ; preds = %36
  %110 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %111 = call zeroext i1 @ns_capable(ptr noundef %110, i32 noundef 11) #24
  br i1 %111, label %112, label %148

112:                                              ; preds = %109
  %113 = load i32, ptr %6, align 4
  %114 = icmp eq i32 %113, 0
  %115 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  br i1 %114, label %119, label %117

117:                                              ; preds = %112
  %118 = or i32 %116, 16
  store i32 %118, ptr %115, align 4
  br label %148

119:                                              ; preds = %112
  %120 = and i32 %116, -17
  store i32 %120, ptr %115, align 4
  br label %148

121:                                              ; preds = %36
  %122 = load i32, ptr %6, align 4
  %123 = icmp eq i32 %122, 0
  %124 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  br i1 %123, label %128, label %126

126:                                              ; preds = %121
  %127 = or i32 %125, 32
  store i32 %127, ptr %124, align 4
  br label %148

128:                                              ; preds = %121
  %129 = and i32 %125, -33
  store i32 %129, ptr %124, align 4
  br label %148

130:                                              ; preds = %36
  %131 = load i32, ptr %6, align 4
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  br i1 %132, label %137, label %135

135:                                              ; preds = %130
  %136 = or i32 %134, 64
  store i32 %136, ptr %133, align 4
  br label %148

137:                                              ; preds = %130
  %138 = and i32 %134, -65
  store i32 %138, ptr %133, align 4
  br label %148

139:                                              ; preds = %36
  %140 = load i32, ptr %6, align 4
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct.netlink_sock, ptr %8, i32 0, i32 4
  %143 = load i32, ptr %142, align 4
  br i1 %141, label %146, label %144

144:                                              ; preds = %139
  %145 = or i32 %143, 128
  store i32 %145, ptr %142, align 4
  br label %148

146:                                              ; preds = %139
  %147 = and i32 %143, -129
  store i32 %147, ptr %142, align 4
  br label %148

148:                                              ; preds = %146, %144, %137, %135, %128, %126, %119, %117, %109, %107, %103, %96, %94, %87, %83, %79, %76, %65, %62, %59, %56, %44, %42, %36, %30, %5
  %149 = phi i32 [ -92, %5 ], [ -1, %56 ], [ %60, %59 ], [ -22, %65 ], [ -22, %62 ], [ %77, %76 ], [ -1, %109 ], [ 0, %44 ], [ 0, %42 ], [ 0, %87 ], [ 0, %83 ], [ 0, %79 ], [ 0, %96 ], [ 0, %94 ], [ 0, %107 ], [ 0, %103 ], [ 0, %119 ], [ 0, %117 ], [ 0, %128 ], [ 0, %126 ], [ 0, %137 ], [ 0, %135 ], [ 0, %146 ], [ 0, %144 ], [ -92, %36 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq i32 %1, 270
  br i1 %8, label %9, label %179

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #24
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #24, !srcloc !72
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %179

19:                                               ; preds = %9
  %20 = icmp slt i32 %17, 0
  br i1 %20, label %179, label %21

21:                                               ; preds = %19
  switch i32 %2, label %177 [
    i32 3, label %22
    i32 4, label %41
    i32 5, label %60
    i32 9, label %79
    i32 10, label %121
    i32 11, label %140
    i32 12, label %159
  ]

22:                                               ; preds = %21
  %23 = icmp ult i32 %17, 4
  br i1 %23, label %179, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 4, i32 -1090519041) #24, !srcloc !73
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %179

32:                                               ; preds = %24
  %33 = trunc i32 %26 to i8
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 1
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %35, i32 -1090519041) #24, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %177, label %179

41:                                               ; preds = %21
  %42 = icmp ult i32 %17, 4
  br i1 %42, label %179, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %47 = and i32 %46, -13
  %48 = or i32 %47, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %49 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 4, i32 -1090519041) #24, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %179

51:                                               ; preds = %43
  %52 = trunc i32 %45 to i8
  %53 = lshr i8 %52, 2
  %54 = and i8 %53, 1
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %54, i32 -1090519041) #24, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %177, label %179

60:                                               ; preds = %21
  %61 = icmp ult i32 %17, 4
  br i1 %61, label %179, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %68 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 4, i32 -1090519041) #24, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %179

70:                                               ; preds = %62
  %71 = trunc i32 %64 to i8
  %72 = lshr i8 %71, 3
  %73 = and i8 %72, 1
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %77 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %73, i32 -1090519041) #24, !srcloc !78
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %177, label %179

79:                                               ; preds = %21
  tail call fastcc void @netlink_lock_table()
  %80 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = icmp ult i32 %17, 4
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %109, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 7
  br label %95

87:                                               ; preds = %95
  %88 = add i32 %96, 4
  %89 = shl i32 %88, 3
  %90 = load i32, ptr %80, align 4
  %91 = icmp uge i32 %89, %90
  %92 = sub i32 %17, %88
  %93 = icmp ult i32 %92, 4
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %109, label %95

95:                                               ; preds = %87, %85
  %96 = phi i32 [ 0, %85 ], [ %88, %87 ]
  %97 = lshr exact i32 %96, 2
  %98 = getelementptr i8, ptr %3, i32 %96
  %99 = load ptr, ptr %86, align 8
  %100 = getelementptr i32, ptr %99, i32 %97
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %103 = and i32 %102, -13
  %104 = or i32 %103, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %105 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %98, i32 %101, i32 -1090519041) #24, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %87, label %107

107:                                              ; preds = %95
  %108 = load i32, ptr %80, align 4
  br label %109

109:                                              ; preds = %107, %87, %79
  %110 = phi i32 [ %81, %79 ], [ %108, %107 ], [ %90, %87 ]
  %111 = phi i32 [ 0, %79 ], [ -14, %107 ], [ 0, %87 ]
  %112 = lshr i32 %110, 3
  %113 = add nuw nsw i32 %112, 3
  %114 = and i32 %113, 1073741820
  %115 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %118 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %114, i32 -1090519041) #24, !srcloc !80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 %111, i32 -14
  tail call fastcc void @netlink_unlock_table()
  br label %177

121:                                              ; preds = %21
  %122 = icmp ult i32 %17, 4
  br i1 %122, label %179, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %127 = and i32 %126, -13
  %128 = or i32 %127, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %129 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 4, i32 -1090519041) #24, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %126) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %179

131:                                              ; preds = %123
  %132 = trunc i32 %125 to i8
  %133 = lshr i8 %132, 5
  %134 = and i8 %133, 1
  %135 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %136 = and i32 %135, -13
  %137 = or i32 %136, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %138 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %134, i32 -1090519041) #24, !srcloc !82
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %177, label %179

140:                                              ; preds = %21
  %141 = icmp ult i32 %17, 4
  br i1 %141, label %179, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %144 = load i32, ptr %143, align 4
  %145 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %146 = and i32 %145, -13
  %147 = or i32 %146, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %148 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 4, i32 -1090519041) #24, !srcloc !83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %142
  %151 = trunc i32 %144 to i8
  %152 = lshr i8 %151, 6
  %153 = and i8 %152, 1
  %154 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %155 = and i32 %154, -13
  %156 = or i32 %155, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %157 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %153, i32 -1090519041) #24, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %177, label %179

159:                                              ; preds = %21
  %160 = icmp ult i32 %17, 4
  br i1 %160, label %179, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %165 = and i32 %164, -13
  %166 = or i32 %165, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %167 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 4, i32 -1090519041) #24, !srcloc !85
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %161
  %170 = trunc i32 %163 to i8
  %171 = lshr i8 %170, 7
  %172 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !69
  %173 = and i32 %172, -13
  %174 = or i32 %173, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %174) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %175 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %171, i32 -1090519041) #24, !srcloc !86
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #24, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !71
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169, %150, %131, %109, %70, %51, %32, %21
  %178 = phi i32 [ %120, %109 ], [ 0, %32 ], [ 0, %51 ], [ 0, %70 ], [ 0, %131 ], [ 0, %150 ], [ 0, %169 ], [ -92, %21 ]
  br label %179

179:                                              ; preds = %177, %169, %161, %159, %150, %142, %140, %131, %123, %121, %70, %62, %60, %51, %43, %41, %32, %24, %22, %19, %9, %5
  %180 = phi i32 [ %178, %177 ], [ -92, %5 ], [ -14, %9 ], [ -22, %19 ], [ -22, %22 ], [ -14, %32 ], [ -14, %24 ], [ -22, %41 ], [ -14, %51 ], [ -14, %43 ], [ -22, %60 ], [ -14, %70 ], [ -14, %62 ], [ -22, %121 ], [ -14, %131 ], [ -14, %123 ], [ -22, %140 ], [ -14, %150 ], [ -14, %142 ], [ -22, %159 ], [ -14, %169 ], [ -14, %161 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.scm_cookie, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #24
  %8 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %153

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = load i1, ptr @netlink_sendmsg.__already_done, align 1
  br i1 %15, label %153, label %16, !prof !10

16:                                               ; preds = %14
  store i1 true, ptr @netlink_sendmsg.__already_done, align 1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #25
  br label %153

18:                                               ; preds = %12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 12, i1 false) #24
  %19 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 2, i32 1
  store i32 -1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 2, i32 2
  store i32 -1, ptr %20, align 4
  %21 = tail call ptr @llvm.thread.pointer() #24
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 93
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr %struct.signal_struct, ptr %23, i32 0, i32 22, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 83
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq ptr %25, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #24, !srcloc !25
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #24, !srcloc !26
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !11

37:                                               ; preds = %33
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !10

41:                                               ; preds = %37, %33
  %42 = phi i32 [ 2, %33 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef %42) #24
  br label %43

43:                                               ; preds = %41, %37, %18
  store ptr %25, ptr %4, align 4
  %44 = tail call i32 @pid_vnr(ptr noundef %25) #24
  %45 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  store i32 %29, ptr %19, align 4
  store i32 %31, ptr %20, align 4
  %46 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = call i32 @__scm_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #24
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %153, label %52

52:                                               ; preds = %49, %43
  %53 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = icmp ult i32 %54, 12
  br i1 %57, label %146, label %58

58:                                               ; preds = %56
  %59 = load i16, ptr %7, align 4
  %60 = icmp eq i16 %59, 16
  br i1 %60, label %61, label %146

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.sockaddr_nl, ptr %7, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.sockaddr_nl, ptr %7, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = call i32 @llvm.cttz.i32(i32 %65, i1 true), !range !67
  %67 = add nuw nsw i32 %66, 1
  %68 = icmp eq i32 %65, 0
  %69 = select i1 %68, i32 0, i32 %67
  %70 = xor i1 %68, true
  %71 = icmp ne i32 %63, 0
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %61
  %74 = call fastcc i32 @netlink_allowed(ptr noundef %0, i32 noundef 2)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %146, label %81

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 3
  %80 = load i32, ptr %79, align 8
  br label %81

81:                                               ; preds = %76, %73, %61
  %82 = phi i32 [ %78, %76 ], [ 0, %61 ], [ %63, %73 ]
  %83 = phi i32 [ %80, %76 ], [ %69, %61 ], [ %69, %73 ]
  %84 = phi i32 [ 0, %76 ], [ 8, %61 ], [ 8, %73 ]
  %85 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 11
  %86 = load volatile i8, ptr %85, align 8, !range !42
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = call fastcc i32 @netlink_autobind(ptr noundef %0)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %146

91:                                               ; preds = %81
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !87
  br label %92

92:                                               ; preds = %91, %88
  %93 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 21
  %94 = load i32, ptr %93, align 8
  %95 = add i32 %94, -32
  %96 = icmp ult i32 %95, %2
  br i1 %96, label %146, label %97

97:                                               ; preds = %92
  %98 = icmp ult i32 %2, 3841
  %99 = icmp ne i32 %83, 0
  %100 = or i1 %98, %99
  br i1 %100, label %112, label %101

101:                                              ; preds = %97
  %102 = add i32 %2, 319
  %103 = and i32 %102, -64
  %104 = call noalias ptr @vmalloc(i32 noundef %103) #26
  %105 = icmp eq ptr %104, null
  br i1 %105, label %146, label %106

106:                                              ; preds = %101
  %107 = call ptr @__build_skb(ptr noundef nonnull %104, i32 noundef %103) #24
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  call void @vfree(ptr noundef nonnull %104) #24
  br label %146

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.sk_buff, ptr %107, i32 0, i32 4, i32 0, i32 1
  store ptr @netlink_skb_destructor, ptr %111, align 4
  br label %115

112:                                              ; preds = %97
  %113 = call ptr @__alloc_skb(i32 noundef %2, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #24
  %114 = icmp eq ptr %113, null
  br i1 %114, label %146, label %115

115:                                              ; preds = %112, %110
  %116 = phi ptr [ %107, %110 ], [ %113, %112 ]
  %117 = getelementptr inbounds %struct.netlink_sock, ptr %6, i32 0, i32 1
  %118 = load i32, ptr %117, align 8
  %119 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 3
  %120 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 3, i32 12
  store i32 %118, ptr %120, align 4
  %121 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 3, i32 16
  store i32 %83, ptr %121, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %119, ptr noundef align 4 dereferenceable(12) %45, i32 12, i1 false)
  %122 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 3, i32 20
  store i32 %84, ptr %122, align 4
  %123 = call ptr @skb_put(ptr noundef nonnull %116, i32 noundef %2) #24
  %124 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %125 = icmp slt i32 %2, 0
  %126 = load i1, ptr @check_copy_size.__already_done, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %130, !prof !11

129:                                              ; preds = %115
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #24
  br label %130

130:                                              ; preds = %129, %115
  br i1 %125, label %133, label %131, !prof !11

131:                                              ; preds = %130
  %132 = call i32 @_copy_from_iter(ptr noundef %123, i32 noundef %2, ptr noundef %124) #24
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ %132, %131 ], [ 0, %130 ]
  %135 = icmp eq i32 %134, %2
  br i1 %135, label %137, label %136, !prof !10

136:                                              ; preds = %133
  call void @iov_iter_revert(ptr noundef %124, i32 noundef %134) #24
  call void @kfree_skb_reason(ptr noundef nonnull %116, i32 noundef 0) #24
  br label %146

137:                                              ; preds = %133
  %138 = icmp eq i32 %83, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 19
  call fastcc void @refcount_inc(ptr noundef %140)
  %141 = call i32 @netlink_broadcast(ptr noundef %6, ptr noundef nonnull %116, i32 noundef %82, i32 noundef %83, i32 noundef 3264)
  br label %142

142:                                              ; preds = %139, %137
  %143 = load i32, ptr %8, align 4
  %144 = and i32 %143, 64
  %145 = call i32 @netlink_unicast(ptr noundef %6, ptr noundef nonnull %116, i32 noundef %82, i32 noundef %144)
  br label %146

146:                                              ; preds = %142, %136, %112, %109, %101, %92, %88, %73, %58, %56
  %147 = phi i32 [ -22, %56 ], [ -22, %58 ], [ -90, %92 ], [ -105, %112 ], [ -14, %136 ], [ %145, %142 ], [ %89, %88 ], [ -1, %73 ], [ -105, %101 ], [ -105, %109 ]
  %148 = load ptr, ptr %4, align 4
  call void @put_pid(ptr noundef %148) #24
  store ptr null, ptr %4, align 4
  %149 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  call void @__scm_destroy(ptr noundef nonnull %4) #24
  br label %153

153:                                              ; preds = %152, %146, %49, %16, %14, %3
  %154 = phi i32 [ -95, %3 ], [ -61, %16 ], [ -61, %14 ], [ %50, %49 ], [ %147, %146 ], [ %147, %152 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #24
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ucred, align 4
  %6 = alloca %struct.nl_pktinfo, align 4
  %7 = alloca %struct.scm_cookie, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #24
  %9 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  store i32 0, ptr %8, align 4, !annotation !9
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %152

13:                                               ; preds = %4
  %14 = and i32 %3, 64
  %15 = call ptr @skb_recv_datagram(ptr noundef %10, i32 noundef %3, i32 noundef %14, ptr noundef nonnull %8) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %134, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 9
  %19 = load i32, ptr %18, align 8
  %20 = call i32 @llvm.umax.i32(i32 %19, i32 %2)
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 32512)
  store i32 %21, ptr %18, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 32
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i32 [ %2, %25 ], [ %23, %17 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = ptrtoint ptr %32 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 17
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %41 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %15, i32 noundef 0, ptr noundef %40, i32 noundef %30) #24
  store i32 %41, ptr %8, align 4
  %42 = load ptr, ptr %1, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %29
  store i16 16, ptr %42, align 4
  %45 = getelementptr inbounds %struct.sockaddr_nl, ptr %42, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sockaddr_nl, ptr %42, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 16
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  %52 = add i32 %50, -1
  %53 = shl nuw i32 1, %52
  %54 = select i1 %51, i32 0, i32 %53
  %55 = getelementptr inbounds %struct.sockaddr_nl, ptr %42, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 12, ptr %56, align 4
  br label %57

57:                                               ; preds = %44, %29
  %58 = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %63 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 16
  %64 = load i32, ptr %63, align 8
  store i32 %64, ptr %6, align 4
  %65 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 270, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  %66 = load i32, ptr %58, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i32 [ %66, %62 ], [ %59, %57 ]
  %69 = and i32 %68, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 28
  %73 = load i8, ptr %72, align 4, !range !42
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 32
  %77 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 270, i32 noundef 8, i32 noundef 4, ptr noundef %76) #24
  br label %78

78:                                               ; preds = %75, %71, %67
  store i64 0, ptr %7, align 8
  %79 = getelementptr inbounds %struct.scm_cookie, ptr %7, i32 0, i32 2
  %80 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %79, ptr noundef align 8 dereferenceable(12) %80, i32 12, i1 false)
  %81 = and i32 %3, 32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %22, align 8
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi i32 [ %84, %83 ], [ %30, %78 ]
  call void @skb_free_datagram(ptr noundef %10, ptr noundef nonnull %15) #24
  %87 = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 12
  %88 = load i8, ptr %87, align 1, !range !42
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 9
  %92 = load volatile i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = sdiv i32 %94, 2
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = call fastcc i32 @netlink_dump(ptr noundef %10)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = sub i32 0, %98
  %102 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 51
  store i32 %101, ptr %102, align 4
  call void @sk_error_report(ptr noundef %10) #24
  br label %103

103:                                              ; preds = %100, %97, %90, %85
  %104 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  %107 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %106, label %111, label %117

111:                                              ; preds = %103
  br i1 %110, label %116, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = or i32 %114, 8
  store i32 %115, ptr %113, align 4
  br label %116

116:                                              ; preds = %112, %111
  call void @put_pid(ptr noundef null) #24
  store ptr null, ptr %7, align 8
  br label %134

117:                                              ; preds = %103
  br i1 %110, label %133, label %118

118:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  %119 = load i32, ptr %79, align 8
  store i32 %119, ptr %5, align 4
  %120 = getelementptr inbounds %struct.ucred, ptr %5, i32 0, i32 1
  %121 = getelementptr inbounds %struct.scm_cookie, ptr %7, i32 0, i32 2, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, -1
  %124 = load i32, ptr @overflowuid, align 4
  %125 = select i1 %123, i32 %124, i32 %122
  store i32 %125, ptr %120, align 4
  %126 = getelementptr inbounds %struct.ucred, ptr %5, i32 0, i32 2
  %127 = getelementptr inbounds %struct.scm_cookie, ptr %7, i32 0, i32 2, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %128, -1
  %130 = load i32, ptr @overflowgid, align 4
  %131 = select i1 %129, i32 %130, i32 %128
  store i32 %131, ptr %126, align 4
  %132 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  br label %133

133:                                              ; preds = %118, %117
  call void @put_pid(ptr noundef null) #24
  store ptr null, ptr %7, align 8
  br label %134

134:                                              ; preds = %133, %116, %13
  %135 = phi i32 [ 0, %13 ], [ %86, %116 ], [ %86, %133 ]
  %136 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 8
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %136
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 8
  call void @_clear_bit(i32 noundef 0, ptr noundef %140) #24
  br label %141

141:                                              ; preds = %139, %134
  %142 = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 8
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 10
  call void @__wake_up(ptr noundef %147, i32 noundef 1, i32 noundef 1, ptr noundef null) #24
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i32, ptr %8, align 4
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i32 %135, i32 %149
  br label %152

152:                                              ; preds = %148, %4
  %153 = phi i32 [ %151, %148 ], [ -95, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #24
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deferred_put_nlk_sk(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -716
  %3 = getelementptr i8, ptr %0, i32 -172
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #24
  store ptr null, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -616
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #24, !srcloc !25
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #24, !srcloc !29
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %28, label %11, !prof !10

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #24
  br label %28

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !30
  %13 = getelementptr i8, ptr %0, i32 -147
  %14 = load i8, ptr %13, align 1, !range !42
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -128
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 8
  store i32 -32, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 12
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 16
  store ptr %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 20
  store ptr @netlink_sock_destruct_work, ptr %24, align 4
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %21) #24
  br label %28

27:                                               ; preds = %16, %12
  tail call void @sk_free(ptr noundef %2) #24
  br label %28

28:                                               ; preds = %27, %20, %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @netlink_hash(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #17 {
  %4 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %2, -559038733
  %7 = add i32 %5, %6
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 14) #24
  %9 = sub i32 0, %8
  %10 = xor i32 %7, %9
  %11 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 11) #24
  %12 = sub i32 %10, %11
  %13 = xor i32 %12, %6
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 25) #24
  %15 = sub i32 %13, %14
  %16 = xor i32 %15, %9
  %17 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 16) #24
  %18 = sub i32 %16, %17
  %19 = xor i32 %18, %12
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 4) #24
  %21 = sub i32 %19, %20
  %22 = xor i32 %21, %15
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 14) #24
  %24 = sub i32 %22, %23
  %25 = xor i32 %24, %18
  %26 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 24) #24
  %27 = sub i32 %25, %26
  ret i32 %27
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @netlink_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.netlink_compare_arg, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %6, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netlink_sock_destruct_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -724
  tail call void @sk_free(ptr noundef %2) #24
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @netlink_allowed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr @nl_table, align 4
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 46
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.netlink_table, ptr %3, i32 %8, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %15 = tail call zeroext i1 @ns_capable(ptr noundef %14, i32 noundef 12) #24
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ 1, %2 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @netlink_realloc_groups(ptr nocapture noundef %0) unnamed_addr #0 {
  tail call void @netlink_table_grab()
  %2 = load ptr, ptr @nl_table, align 4
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr %struct.netlink_table, ptr %2, i32 %5, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.netlink_table, ptr %2, i32 %5, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %7
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.netlink_sock, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  %18 = add i32 %7, 31
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 536870908
  %21 = tail call noalias ptr @krealloc(ptr noundef %17, i32 noundef %20, i32 noundef 2592) #31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %12, align 4
  %25 = add i32 %24, 31
  %26 = lshr i32 %25, 3
  %27 = and i32 %26, 536870908
  %28 = getelementptr i8, ptr %21, i32 %27
  %29 = sub nsw i32 %20, %27
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %29, i1 false)
  store ptr %21, ptr %16, align 8
  store i32 %7, ptr %12, align 4
  br label %30

30:                                               ; preds = %23, %15, %11, %1
  %31 = phi i32 [ 0, %11 ], [ 0, %23 ], [ -2, %1 ], [ -12, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netlink_undo_bind(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.netlink_sock, ptr %2, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp sgt i32 %0, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %22, %3
  %11 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %12 = load volatile i32, ptr %4, align 4
  %13 = and i32 %11, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = add nuw nsw i32 %11, 1
  br label %22

19:                                               ; preds = %10
  %20 = load ptr, ptr %5, align 8
  %21 = add nuw nsw i32 %11, 1
  tail call void %20(ptr noundef nonnull @init_net, i32 noundef %21) #24
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %25, label %10

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @netlink_autobind(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = load ptr, ptr @nl_table, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 46
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr %struct.netlink_table, ptr %4, i32 %7
  %9 = tail call ptr @llvm.thread.pointer() #24
  %10 = tail call i32 @__task_pid_nr_ns(ptr noundef %9, i32 noundef 1, ptr noundef null) #24
  br label %11

11:                                               ; preds = %29, %1
  %12 = phi i32 [ %30, %29 ], [ %10, %1 ]
  %13 = phi i32 [ %31, %29 ], [ -4096, %1 ]
  br label %14

14:                                               ; preds = %32, %11
  %15 = tail call i32 @__cond_resched() #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %16 = tail call fastcc ptr @__netlink_lookup(ptr noundef %8, i32 noundef %12)
  %17 = icmp eq ptr %16, null
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %13, -4096
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = tail call i32 @prandom_u32() #24
  %22 = zext i32 %21 to i64
  %23 = mul nuw nsw i64 %22, 2147479552
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = or i32 %25, -2147483648
  br label %29

27:                                               ; preds = %18
  %28 = tail call i32 @llvm.smin.i32(i32 %13, i32 -4097)
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %26, %20 ], [ %28, %27 ]
  %31 = add i32 %30, -1
  br label %11

32:                                               ; preds = %14
  %33 = tail call fastcc i32 @netlink_insert(ptr noundef %3, i32 noundef %12)
  %34 = icmp eq i32 %33, -98
  br i1 %34, label %14, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %33, -16
  %37 = select i1 %36, i32 0, i32 %33
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__netlink_lookup(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %3 = load volatile ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  br label %5

5:                                                ; preds = %73, %2
  %6 = phi ptr [ %3, %2 ], [ %75, %73 ]
  %7 = getelementptr inbounds %struct.bucket_table, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -559038733
  %10 = add i32 %9, %1
  %11 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 14) #24
  %12 = sub i32 0, %11
  %13 = xor i32 %10, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 11) #24
  %15 = sub i32 %13, %14
  %16 = xor i32 %15, %9
  %17 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 25) #24
  %18 = sub i32 %16, %17
  %19 = xor i32 %18, %12
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 16) #24
  %21 = sub i32 %19, %20
  %22 = xor i32 %21, %15
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 4) #24
  %24 = sub i32 %22, %23
  %25 = xor i32 %24, %18
  %26 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 14) #24
  %27 = sub i32 %25, %26
  %28 = xor i32 %27, %21
  %29 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 24) #24
  %30 = sub i32 %28, %29
  %31 = load i32, ptr %6, align 64
  %32 = add i32 %31, -1
  %33 = and i32 %30, %32
  %34 = getelementptr inbounds %struct.bucket_table, ptr %6, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !10

37:                                               ; preds = %5
  %38 = tail call ptr @rht_bucket_nested(ptr noundef %6, i32 noundef %33) #24
  br label %41

39:                                               ; preds = %5
  %40 = getelementptr %struct.bucket_table, ptr %6, i32 0, i32 8, i32 %33
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %38, %37 ], [ %40, %39 ]
  %43 = ptrtoint ptr %42 to i32
  %44 = or i32 %43, 1
  %45 = inttoptr i32 %44 to ptr
  br label %46

46:                                               ; preds = %70, %41
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !88
  %47 = load volatile ptr, ptr %42, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = and i32 %48, -2
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %44, i32 %49
  %52 = inttoptr i32 %51 to ptr
  %53 = and i32 %51, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i16, ptr %4, align 2
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %65, %55
  %60 = phi ptr [ %66, %65 ], [ %52, %55 ]
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = getelementptr inbounds %struct.netlink_sock, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load volatile ptr, ptr %60, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %59, label %70

70:                                               ; preds = %65, %46
  %71 = phi ptr [ %52, %46 ], [ %66, %65 ]
  %72 = icmp eq ptr %71, %45
  br i1 %72, label %73, label %46

73:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !89
  %74 = getelementptr inbounds %struct.bucket_table, ptr %6, i32 0, i32 5
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %5, !prof !10

77:                                               ; preds = %59
  %78 = icmp eq ptr %60, null
  %79 = select i1 %78, ptr null, ptr %61
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi ptr [ %79, %77 ], [ null, %73 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scm_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @netlink_add_usersock_entry() unnamed_addr #10 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.48) #29
  unreachable

5:                                                ; preds = %0
  tail call void @netlink_table_grab()
  %6 = load ptr, ptr @nl_table, align 4
  %7 = getelementptr %struct.netlink_table, ptr %6, i32 2, i32 4
  store i32 32, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !90
  %8 = load ptr, ptr @nl_table, align 4
  %9 = getelementptr %struct.netlink_table, ptr %8, i32 2, i32 2
  store volatile ptr %2, ptr %9, align 4
  %10 = load ptr, ptr @nl_table, align 4
  %11 = getelementptr %struct.netlink_table, ptr %10, i32 2, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr @nl_table, align 4
  %13 = getelementptr %struct.netlink_table, ptr %12, i32 2, i32 10
  store i32 1, ptr %13, align 4
  %14 = load ptr, ptr @nl_table, align 4
  %15 = getelementptr %struct.netlink_table, ptr %14, i32 2, i32 3
  store i32 2, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !19
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @nl_table_lock, i32 0) #24, !srcloc !20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnetlink_init() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #22

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  store i32 1, ptr %1, align 64
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %93

9:                                                ; preds = %4
  %10 = icmp ugt i32 %2, 31
  br i1 %10, label %93, label %11

11:                                               ; preds = %9
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %2, i32 32) #24, !srcloc !91
  %13 = and i32 %12, %2
  %14 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !27
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %14) #24
  %16 = load ptr, ptr @nl_table, align 4
  %17 = getelementptr %struct.netlink_table, ptr %16, i32 %13, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %25

25:                                               ; preds = %24, %20
  %26 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49, i32 noundef 16, i32 noundef %13) #24
  %27 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !27
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %27) #24
  %29 = load ptr, ptr @nl_table, align 4
  %30 = getelementptr %struct.netlink_table, ptr %29, i32 %13, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25, %11
  %34 = phi ptr [ %29, %25 ], [ %16, %11 ]
  %35 = getelementptr %struct.netlink_table, ptr %34, i32 %13, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = tail call zeroext i1 @try_module_get(ptr noundef %36) #24
  %38 = load ptr, ptr @nl_table, align 4
  br i1 %37, label %39, label %42

39:                                               ; preds = %33
  %40 = getelementptr %struct.netlink_table, ptr %38, i32 %13, i32 6
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %33, %25
  %43 = phi ptr [ %38, %39 ], [ %29, %25 ], [ %38, %33 ]
  %44 = phi i1 [ false, %39 ], [ true, %25 ], [ true, %33 ]
  %45 = phi i32 [ 0, %39 ], [ -93, %25 ], [ -93, %33 ]
  %46 = phi ptr [ %41, %39 ], [ null, %25 ], [ null, %33 ]
  %47 = getelementptr %struct.netlink_table, ptr %43, i32 %13, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr %struct.netlink_table, ptr %43, i32 %13, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.netlink_table, ptr %43, i32 %13, i32 8
  %52 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nl_table_users) #24, !srcloc !25
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #24, !srcloc !34
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %57

57:                                               ; preds = %56, %42
  br i1 %44, label %93, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @netlink_ops, ptr %59, align 4
  %60 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 16, i32 noundef 3264, ptr noundef nonnull @netlink_proto, i32 noundef %3) #24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %92, label %62

62:                                               ; preds = %58
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %60) #24
  %63 = icmp eq ptr %48, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.netlink_sock, ptr %60, i32 0, i32 15
  store ptr %48, ptr %65, align 8
  br label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.netlink_sock, ptr %60, i32 0, i32 16
  %68 = getelementptr inbounds %struct.netlink_sock, ptr %60, i32 0, i32 15
  store ptr %67, ptr %68, align 8
  tail call void @__mutex_init(ptr noundef %67, ptr noundef nonnull @.str.7, ptr noundef nonnull @__netlink_create.__key) #24
  br label %69

69:                                               ; preds = %66, %64
  %70 = getelementptr inbounds %struct.netlink_sock, ptr %60, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %70, ptr noundef nonnull @.str.9, ptr noundef nonnull @__netlink_create.__key.8) #24
  %71 = getelementptr inbounds %struct.sock, ptr %60, i32 0, i32 80
  store ptr @netlink_sock_destruct, ptr %71, align 8
  %72 = trunc i32 %13 to i16
  %73 = getelementptr inbounds %struct.sock, ptr %60, i32 0, i32 46
  store i16 %72, ptr %73, align 4
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !61
  %75 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @netlink_proto, i32 0, i32 25), align 4
  %78 = getelementptr %struct.prot_inuse, ptr %76, i32 0, i32 1, i32 %77
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #12, !srcloc !12
  %83 = add i32 %82, %79
  %84 = inttoptr i32 %83 to ptr
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #24, !srcloc !62
  %87 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %88 = load ptr, ptr %87, align 16
  %89 = getelementptr inbounds %struct.netlink_sock, ptr %88, i32 0, i32 20
  store ptr %46, ptr %89, align 4
  %90 = getelementptr inbounds %struct.netlink_sock, ptr %88, i32 0, i32 18
  store ptr %50, ptr %90, align 4
  %91 = getelementptr inbounds %struct.netlink_sock, ptr %88, i32 0, i32 19
  store ptr %52, ptr %91, align 8
  br label %93

92:                                               ; preds = %58
  tail call void @module_put(ptr noundef %46) #24
  br label %93

93:                                               ; preds = %92, %69, %57, %9, %4
  %94 = phi i32 [ -94, %4 ], [ -93, %9 ], [ %45, %57 ], [ -12, %92 ], [ 0, %69 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @netlink_net_init(ptr nocapture noundef readonly %0) #10 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.50, i16 noundef zeroext 0, ptr noundef %3, ptr noundef nonnull @netlink_seq_ops, i32 noundef 40, ptr noundef null) #24
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netlink_net_exit(ptr nocapture noundef readonly %0) #23 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.50, ptr noundef %3) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @netlink_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nl_seq_iter, ptr %4, i32 0, i32 2
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr @nl_table, align 4
  %7 = getelementptr inbounds %struct.nl_seq_iter, ptr %4, i32 0, i32 1
  tail call void @rhashtable_walk_enter(ptr noundef %6, ptr noundef %7) #24
  %8 = tail call i32 @rhashtable_walk_start_check(ptr noundef %7) #24
  %9 = load i64, ptr %1, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %32, %2
  %12 = phi i64 [ %33, %32 ], [ %9, %2 ]
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.nl_seq_iter, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nl_seq_iter, ptr %13, i32 0, i32 2
  br label %16

16:                                               ; preds = %31, %11
  %17 = tail call ptr @rhashtable_walk_next(ptr noundef %14) #24
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = icmp eq ptr %17, inttoptr (i32 -11 to ptr)
  br i1 %20, label %31, label %32

21:                                               ; preds = %16
  %22 = icmp eq ptr %17, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  tail call void @rhashtable_walk_stop(ptr noundef %14) #24
  tail call void @rhashtable_walk_exit(ptr noundef %14) #24
  %24 = load i32, ptr %15, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %15, align 4
  %26 = icmp sgt i32 %25, 31
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @nl_table, align 4
  %29 = getelementptr %struct.netlink_table, ptr %28, i32 %25
  tail call void @rhashtable_walk_enter(ptr noundef %29, ptr noundef %14) #24
  %30 = tail call i32 @rhashtable_walk_start_check(ptr noundef %14) #24
  br label %31

31:                                               ; preds = %27, %19
  br label %16

32:                                               ; preds = %21, %19
  %33 = add i64 %12, -1
  %34 = icmp eq i64 %33, 0
  %35 = icmp eq ptr %17, null
  %36 = select i1 %34, i1 true, i1 %35
  %37 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %11

39:                                               ; preds = %32, %23, %2
  %40 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ null, %23 ], [ %17, %32 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @netlink_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nl_seq_iter, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 31
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nl_seq_iter, ptr %4, i32 0, i32 1
  tail call void @rhashtable_walk_stop(ptr noundef %9) #24
  tail call void @rhashtable_walk_exit(ptr noundef %9) #24
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @netlink_seq_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nl_seq_iter, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nl_seq_iter, ptr %7, i32 0, i32 2
  br label %10

10:                                               ; preds = %25, %3
  %11 = tail call ptr @rhashtable_walk_next(ptr noundef %8) #24
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = icmp eq ptr %11, inttoptr (i32 -11 to ptr)
  br i1 %14, label %25, label %26

15:                                               ; preds = %10
  %16 = icmp eq ptr %11, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  tail call void @rhashtable_walk_stop(ptr noundef %8) #24
  tail call void @rhashtable_walk_exit(ptr noundef %8) #24
  %18 = load i32, ptr %9, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %9, align 4
  %20 = icmp sgt i32 %19, 31
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @nl_table, align 4
  %23 = getelementptr %struct.netlink_table, ptr %22, i32 %19
  tail call void @rhashtable_walk_enter(ptr noundef %23, ptr noundef %8) #24
  %24 = tail call i32 @rhashtable_walk_start_check(ptr noundef %8) #24
  br label %25

25:                                               ; preds = %21, %13
  br label %10

26:                                               ; preds = %17, %15, %13
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @netlink_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.51) #24
  br label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load i32, ptr %12, align 4
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ 0, %5 ]
  %18 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %19 = load volatile i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %21 = load volatile i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 12
  %24 = load i8, ptr %23, align 1, !range !42
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %27 = load volatile i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 5
  %29 = load volatile i32, ptr %28, align 4
  %30 = tail call i32 @sock_i_ino(ptr noundef %1) #24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef %17, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %30) #24
  br label %31

31:                                               ; preds = %16, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @netlink_tap_init_net(ptr noundef %0) #10 section ".init.text" {
  %2 = load i32, ptr @netlink_tap_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !15
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.netlink_tap_net, ptr %6, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.53, ptr noundef nonnull @netlink_tap_init_net.__key) #24
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #24 = { nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(2) }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind readnone }
attributes #31 = { nounwind allocsize(1) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 533757}
!13 = !{i64 2156797444}
!14 = !{i64 2156797590}
!15 = !{i64 2149112259}
!16 = !{i64 2149112476}
!17 = !{i64 2151136599}
!18 = !{i64 2157437553}
!19 = !{i64 2149000981}
!20 = !{i64 1504195}
!21 = !{i64 2148989728}
!22 = !{i64 2148989803, i64 2148989830, i64 2148989877, i64 2148989899, i64 2148989927, i64 2148989947}
!23 = !{i64 515302}
!24 = !{i64 2149042598}
!25 = !{i64 609379, i64 2148099350, i64 2148099376, i64 2148099423, i64 2148099445, i64 2148099473, i64 2148099493}
!26 = !{i64 2148112223, i64 2148112255, i64 2148112284, i64 2148112318, i64 2148112349, i64 2148112372}
!27 = !{i64 2148110765, i64 2148110791, i64 2148110820, i64 2148110854, i64 2148110885, i64 2148110908}
!28 = !{i64 2148212445}
!29 = !{i64 2148114580, i64 2148114612, i64 2148114641, i64 2148114675, i64 2148114706, i64 2148114729}
!30 = !{i64 2149061892}
!31 = !{i64 2157490870, i64 2157491360, i64 2157490907, i64 2157490963, i64 2157490997, i64 2157491021, i64 2157491062, i64 2157491083, i64 2157491111, i64 2157491145}
!32 = !{i64 2153885050, i64 2153885538, i64 2153885087, i64 2153885143, i64 2153885177, i64 2153885201, i64 2153885242, i64 2153885263, i64 2153885291, i64 2153885325}
!33 = !{i64 2148211444}
!34 = !{i64 2148113806, i64 2148113838, i64 2148113867, i64 2148113901, i64 2148113932, i64 2148113955}
!35 = !{i64 2148211647}
!36 = !{i64 2149001786}
!37 = !{i64 1505210, i64 1505233, i64 1505253, i64 1505277, i64 1505293}
!38 = !{i64 2149039389}
!39 = !{i64 2157656751, i64 2157657241, i64 2157656788, i64 2157656844, i64 2157656878, i64 2157656902, i64 2157656943, i64 2157656964, i64 2157656992, i64 2157657026}
!40 = !{i64 2157663821}
!41 = !{i64 2157655699, i64 2157656189, i64 2157655736, i64 2157655792, i64 2157655826, i64 2157655850, i64 2157655891, i64 2157655912, i64 2157655940, i64 2157655974}
!42 = !{i8 0, i8 2}
!43 = !{i64 2156017376, i64 2156017867, i64 2156017413, i64 2156017469, i64 2156017503, i64 2156017527, i64 2156017568, i64 2156017589, i64 2156017617, i64 2156017651}
!44 = !{i64 2148926029}
!45 = !{i64 2150941531}
!46 = !{!"branch_weights", i32 2146410443, i32 1073205}
!47 = !{i64 2148119227, i64 2148119259, i64 2148119288, i64 2148119322, i64 2148119353, i64 2148119376}
!48 = !{i64 2148220567}
!49 = !{i64 2150941642}
!50 = !{i64 2150941871}
!51 = !{i64 2150941713}
!52 = !{i64 2150941953}
!53 = !{i64 2148219532}
!54 = !{i64 2148117686, i64 2148117718, i64 2148117747, i64 2148117781, i64 2148117812, i64 2148117835}
!55 = !{i64 2150942514}
!56 = !{i64 2155968395}
!57 = !{i64 2155970619}
!58 = !{!"branch_weights", i32 2000, i32 4002, i32 2, i32 2000}
!59 = !{i64 2157446821}
!60 = !{i64 2157676699}
!61 = !{i64 515057, i64 515118}
!62 = !{i64 518074}
!63 = !{i64 2156032813}
!64 = !{i64 2148113122, i64 2148113148, i64 2148113177, i64 2148113211, i64 2148113242, i64 2148113265}
!65 = !{i64 2157455454, i64 2157455943, i64 2157455491, i64 2157455547, i64 2157455581, i64 2157455605, i64 2157455646, i64 2157455667, i64 2157455695, i64 2157455729}
!66 = !{i64 2157472301}
!67 = !{i32 0, i32 33}
!68 = !{i64 2152163467, i64 2152163492}
!69 = !{i64 4659579}
!70 = !{i64 4659776}
!71 = !{i64 2152145055}
!72 = !{i64 2157522073, i64 2157522353, i64 2157522687, i64 2157523021}
!73 = !{i64 2157530992, i64 2157531272, i64 2157531606, i64 2157531940}
!74 = !{i64 2157535494, i64 2157535774, i64 2157536108, i64 2157536442}
!75 = !{i64 2157547264, i64 2157547544, i64 2157547878, i64 2157548212}
!76 = !{i64 2157551766, i64 2157552046, i64 2157552380, i64 2157552714}
!77 = !{i64 2157563536, i64 2157563816, i64 2157564150, i64 2157564484}
!78 = !{i64 2157568038, i64 2157568318, i64 2157568652, i64 2157568986}
!79 = !{i64 2157579969, i64 2157580249, i64 2157580583, i64 2157580917}
!80 = !{i64 2157588717, i64 2157588997, i64 2157589331, i64 2157589665}
!81 = !{i64 2157596861, i64 2157597141, i64 2157597475, i64 2157597809}
!82 = !{i64 2157601363, i64 2157601643, i64 2157601977, i64 2157602311}
!83 = !{i64 2157613135, i64 2157613415, i64 2157613749, i64 2157614083}
!84 = !{i64 2157617637, i64 2157617917, i64 2157618251, i64 2157618585}
!85 = !{i64 2157629409, i64 2157629689, i64 2157630023, i64 2157630357}
!86 = !{i64 2157633911, i64 2157634191, i64 2157634525, i64 2157634859}
!87 = !{i64 2157646485}
!88 = !{i64 2155974863}
!89 = !{i64 2155978297}
!90 = !{i64 2157714509}
!91 = !{i64 371064, i64 371081, i64 2147855151}
