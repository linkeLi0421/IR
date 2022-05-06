; ModuleID = '/llk/IR/net/core/rtnetlink.c_pt.bc'
source_filename = "../net/core/rtnetlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_lock\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_lock_killable\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_kfree_skbs:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_kfree_skbs\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_kfree_skbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_is_locked\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_rtnl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_rtnl_lock\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_rtnl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_register_module:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_register_module\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_register_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_unregister_all:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_unregister_all\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_unregister_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rtnl_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__rtnl_link_register\22\09\09\09\09\09"
module asm "__kstrtabns___rtnl_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_link_register\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_link_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rtnl_link_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22__rtnl_link_unregister\22\09\09\09\09\09"
module asm "__kstrtabns___rtnl_link_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_link_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_link_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_link_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_af_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_af_register\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_af_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_af_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_af_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_af_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_unicast:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_unicast\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_unicast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_notify\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_set_sk_err:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_set_sk_err\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_set_sk_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnetlink_put_metrics:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnetlink_put_metrics\22\09\09\09\09\09"
module asm "__kstrtabns_rtnetlink_put_metrics:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_put_cacheinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_put_cacheinfo\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_put_cacheinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_get_net_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_get_net_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_get_net_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_nla_parse_ifla:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_nla_parse_ifla\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_nla_parse_ifla:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_link_get_net:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_link_get_net\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_link_get_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_delete_link:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_delete_link\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_delete_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_configure_link:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_configure_link\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_configure_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtnl_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22rtnl_create_link\22\09\09\09\09\09"
module asm "__kstrtabns_rtnl_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndo_dflt_fdb_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ndo_dflt_fdb_add\22\09\09\09\09\09"
module asm "__kstrtabns_ndo_dflt_fdb_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndo_dflt_fdb_del:\09\09\09\09\09"
module asm "\09.asciz \09\22ndo_dflt_fdb_del\22\09\09\09\09\09"
module asm "__kstrtabns_ndo_dflt_fdb_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndo_dflt_fdb_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ndo_dflt_fdb_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ndo_dflt_fdb_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndo_dflt_bridge_getlink:\09\09\09\09\09"
module asm "\09.asciz \09\22ndo_dflt_bridge_getlink\22\09\09\09\09\09"
module asm "__kstrtabns_ndo_dflt_bridge_getlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.61, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.61 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.anon.10 = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link = type { ptr, ptr, ptr, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.157, %union.anon.158, [48 x i8], %union.anon.159, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.161, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.157 = type { ptr }
%union.anon.158 = type { i64 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.163, i32, i32, i32, i16, i16, %union.anon.165, %union.anon.166, %union.anon.167, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.163 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i16 }
%struct.rta_cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.156 = type { ptr }
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
%struct.ifinfomsg = type { i8, i8, i16, i32, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_af_ops = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [16 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, %struct.netdevice_tracker, [48 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.6, i32, %struct.spinlock }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.142 }
%union.anon.142 = type { [6 x i32], [24 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.nlattr = type { i16, i16 }
%struct.rtnl_link_ifmap = type { i64, i64, i64, i16, i8, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.93 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.anon.95, [0 x %struct.sock_filter] }
%struct.anon.95 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.92 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.92 = type { %struct.work_struct }
%struct.ifla_vf_rss_query_en = type { i32, i32 }
%struct.ifla_vf_link_state = type { i32, i32 }
%struct.ifla_vf_vlan_info = type { i32, i32, i32, i16 }
%struct.ifla_vf_spoofchk = type { i32, i32 }
%struct.ifla_vf_tx_rate = type { i32, i32 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_trust = type { i32, i32 }
%struct.ifla_vf_vlan = type { i32, i32, i32 }
%struct.ifla_vf_rate = type { i32, i32, i32 }
%struct.ifla_vf_mac = type { i32, [32 x i8] }
%struct.ifla_vf_broadcast = type { [32 x i8] }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }

@rtnl_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rtnl_mutex, i64 12), ptr getelementptr (i8, ptr @rtnl_mutex, i64 12) } }, align 4
@__kstrtab_rtnl_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_lock to i32), ptr @__kstrtab_rtnl_lock, ptr @__kstrtabns_rtnl_lock }, section "___ksymtab+rtnl_lock", align 4
@__kstrtab_rtnl_lock_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_lock_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_lock_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_lock_killable to i32), ptr @__kstrtab_rtnl_lock_killable, ptr @__kstrtabns_rtnl_lock_killable }, section "___ksymtab+rtnl_lock_killable", align 4
@defer_kfree_skb_list = internal unnamed_addr global ptr null, align 4
@__kstrtab_rtnl_kfree_skbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_kfree_skbs = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_kfree_skbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_kfree_skbs to i32), ptr @__kstrtab_rtnl_kfree_skbs, ptr @__kstrtabns_rtnl_kfree_skbs }, section "___ksymtab+rtnl_kfree_skbs", align 4
@.str = private unnamed_addr constant [21 x i8] c"net/core/rtnetlink.c\00", align 1
@__kstrtab_rtnl_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_unlock to i32), ptr @__kstrtab_rtnl_unlock, ptr @__kstrtabns_rtnl_unlock }, section "___ksymtab+rtnl_unlock", align 4
@__kstrtab_rtnl_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_trylock to i32), ptr @__kstrtab_rtnl_trylock, ptr @__kstrtabns_rtnl_trylock }, section "___ksymtab+rtnl_trylock", align 4
@__kstrtab_rtnl_is_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_is_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_is_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_is_locked to i32), ptr @__kstrtab_rtnl_is_locked, ptr @__kstrtabns_rtnl_is_locked }, section "___ksymtab+rtnl_is_locked", align 4
@__kstrtab_refcount_dec_and_rtnl_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_rtnl_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_rtnl_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_rtnl_lock to i32), ptr @__kstrtab_refcount_dec_and_rtnl_lock, ptr @__kstrtabns_refcount_dec_and_rtnl_lock }, section "___ksymtab+refcount_dec_and_rtnl_lock", align 4
@__kstrtab_rtnl_register_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_register_module = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_register_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_register_module to i32), ptr @__kstrtab_rtnl_register_module, ptr @__kstrtabns_rtnl_register_module }, section "___ksymtab_gpl+rtnl_register_module", align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"\013Unable to register rtnetlink message handler, protocol = %d, message type = %d\0A\00", align 1
@rtnl_msg_handlers = internal global [130 x ptr] zeroinitializer, align 4
@__kstrtab_rtnl_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_unregister to i32), ptr @__kstrtab_rtnl_unregister, ptr @__kstrtabns_rtnl_unregister }, section "___ksymtab_gpl+rtnl_unregister", align 4
@__kstrtab_rtnl_unregister_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_unregister_all = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_unregister_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_unregister_all to i32), ptr @__kstrtab_rtnl_unregister_all, ptr @__kstrtabns_rtnl_unregister_all }, section "___ksymtab_gpl+rtnl_unregister_all", align 4
@link_ops = internal global %struct.list_head { ptr @link_ops, ptr @link_ops }, align 4
@__kstrtab___rtnl_link_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___rtnl_link_register = external dso_local constant [0 x i8], align 1
@__ksymtab___rtnl_link_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rtnl_link_register to i32), ptr @__kstrtab___rtnl_link_register, ptr @__kstrtabns___rtnl_link_register }, section "___ksymtab_gpl+__rtnl_link_register", align 4
@__kstrtab_rtnl_link_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_link_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_link_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_link_register to i32), ptr @__kstrtab_rtnl_link_register, ptr @__kstrtabns_rtnl_link_register }, section "___ksymtab_gpl+rtnl_link_register", align 4
@net_namespace_list = external dso_local global %struct.list_head, align 4
@__kstrtab___rtnl_link_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns___rtnl_link_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab___rtnl_link_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rtnl_link_unregister to i32), ptr @__kstrtab___rtnl_link_unregister, ptr @__kstrtabns___rtnl_link_unregister }, section "___ksymtab_gpl+__rtnl_link_unregister", align 4
@pernet_ops_rwsem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_rtnl_link_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_link_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_link_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_link_unregister to i32), ptr @__kstrtab_rtnl_link_unregister, ptr @__kstrtabns_rtnl_link_unregister }, section "___ksymtab_gpl+rtnl_link_unregister", align 4
@rtnl_af_ops = internal global %struct.list_head { ptr @rtnl_af_ops, ptr @rtnl_af_ops }, align 4
@__kstrtab_rtnl_af_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_af_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_af_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_af_register to i32), ptr @__kstrtab_rtnl_af_register, ptr @__kstrtabns_rtnl_af_register }, section "___ksymtab_gpl+rtnl_af_register", align 4
@__kstrtab_rtnl_af_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_af_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_af_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_af_unregister to i32), ptr @__kstrtab_rtnl_af_unregister, ptr @__kstrtabns_rtnl_af_unregister }, section "___ksymtab_gpl+rtnl_af_unregister", align 4
@__kstrtab_rtnl_unicast = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_unicast = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_unicast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_unicast to i32), ptr @__kstrtab_rtnl_unicast, ptr @__kstrtabns_rtnl_unicast }, section "___ksymtab+rtnl_unicast", align 4
@__kstrtab_rtnl_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_notify to i32), ptr @__kstrtab_rtnl_notify, ptr @__kstrtabns_rtnl_notify }, section "___ksymtab+rtnl_notify", align 4
@__kstrtab_rtnl_set_sk_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_set_sk_err = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_set_sk_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_set_sk_err to i32), ptr @__kstrtab_rtnl_set_sk_err, ptr @__kstrtabns_rtnl_set_sk_err }, section "___ksymtab+rtnl_set_sk_err", align 4
@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@__kstrtab_rtnetlink_put_metrics = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnetlink_put_metrics = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnetlink_put_metrics = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnetlink_put_metrics to i32), ptr @__kstrtab_rtnetlink_put_metrics, ptr @__kstrtabns_rtnetlink_put_metrics }, section "___ksymtab+rtnetlink_put_metrics", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_rtnl_put_cacheinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_put_cacheinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_put_cacheinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_put_cacheinfo to i32), ptr @__kstrtab_rtnl_put_cacheinfo, ptr @__kstrtabns_rtnl_put_cacheinfo }, section "___ksymtab_gpl+rtnl_put_cacheinfo", align 4
@__kstrtab_rtnl_get_net_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_get_net_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_get_net_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_get_net_ns_capable to i32), ptr @__kstrtab_rtnl_get_net_ns_capable, ptr @__kstrtabns_rtnl_get_net_ns_capable }, section "___ksymtab_gpl+rtnl_get_net_ns_capable", align 4
@__kstrtab_rtnl_nla_parse_ifla = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_nla_parse_ifla = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_nla_parse_ifla = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_nla_parse_ifla to i32), ptr @__kstrtab_rtnl_nla_parse_ifla, ptr @__kstrtabns_rtnl_nla_parse_ifla }, section "___ksymtab+rtnl_nla_parse_ifla", align 4
@__kstrtab_rtnl_link_get_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_link_get_net = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_link_get_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_link_get_net to i32), ptr @__kstrtab_rtnl_link_get_net, ptr @__kstrtabns_rtnl_link_get_net }, section "___ksymtab+rtnl_link_get_net", align 4
@__kstrtab_rtnl_delete_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_delete_link = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_delete_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_delete_link to i32), ptr @__kstrtab_rtnl_delete_link, ptr @__kstrtabns_rtnl_delete_link }, section "___ksymtab_gpl+rtnl_delete_link", align 4
@__kstrtab_rtnl_configure_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_configure_link = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_configure_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_configure_link to i32), ptr @__kstrtab_rtnl_configure_link, ptr @__kstrtabns_rtnl_configure_link }, section "___ksymtab+rtnl_configure_link", align 4
@rtnl_create_link.__msg = internal constant [34 x i8] c"Invalid number of transmit queues\00", align 1
@rtnl_create_link.__msg.2 = internal constant [33 x i8] c"Invalid number of receive queues\00", align 1
@__kstrtab_rtnl_create_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtnl_create_link = external dso_local constant [0 x i8], align 1
@__ksymtab_rtnl_create_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtnl_create_link to i32), ptr @__kstrtab_rtnl_create_link, ptr @__kstrtabns_rtnl_create_link }, section "___ksymtab+rtnl_create_link", align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"default FDB implementation only supports local addresses\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"vlans aren't supported yet for dev_uc|mc_add()\0A\00", align 1
@__kstrtab_ndo_dflt_fdb_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndo_dflt_fdb_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ndo_dflt_fdb_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndo_dflt_fdb_add to i32), ptr @__kstrtab_ndo_dflt_fdb_add, ptr @__kstrtabns_ndo_dflt_fdb_add }, section "___ksymtab+ndo_dflt_fdb_add", align 4
@__kstrtab_ndo_dflt_fdb_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndo_dflt_fdb_del = external dso_local constant [0 x i8], align 1
@__ksymtab_ndo_dflt_fdb_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndo_dflt_fdb_del to i32), ptr @__kstrtab_ndo_dflt_fdb_del, ptr @__kstrtabns_ndo_dflt_fdb_del }, section "___ksymtab+ndo_dflt_fdb_del", align 4
@__kstrtab_ndo_dflt_fdb_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndo_dflt_fdb_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ndo_dflt_fdb_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndo_dflt_fdb_dump to i32), ptr @__kstrtab_ndo_dflt_fdb_dump, ptr @__kstrtabns_ndo_dflt_fdb_dump }, section "___ksymtab+ndo_dflt_fdb_dump", align 4
@__kstrtab_ndo_dflt_bridge_getlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndo_dflt_bridge_getlink = external dso_local constant [0 x i8], align 1
@__ksymtab_ndo_dflt_bridge_getlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndo_dflt_bridge_getlink to i32), ptr @__kstrtab_ndo_dflt_bridge_getlink, ptr @__kstrtabns_ndo_dflt_bridge_getlink }, section "___ksymtab_gpl+ndo_dflt_bridge_getlink", align 4
@rtnetlink_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @rtnetlink_net_init, ptr null, ptr @rtnetlink_net_exit, ptr null, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"rtnetlink_init: cannot initialize rtnetlink\0A\00", align 1
@rtnetlink_dev_notifier = internal global %struct.notifier_block { ptr @rtnetlink_event, ptr null, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@netdev_unregistering_wq = external dso_local global %struct.wait_queue_head, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@ifla_policy = internal constant <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.10 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 255, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, { i8, i8, i16, { %struct.anon.10 } } { i8 14, i8 3, i16 0, { %struct.anon.10 } { %struct.anon.10 { i16 1, i16 0 } } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 127, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer } }>, align 4
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@rtnl_fill_ifinfo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@rtnl_xdp_prog_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.rtnetlink_net_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 34, i32 1, ptr @rtnetlink_rcv, ptr @rtnl_mutex, ptr @rtnetlink_bind, ptr null, ptr null }, align 4
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@rtnl_valid_getlink_req.__msg = internal constant [28 x i8] c"Invalid header for get link\00", align 1
@rtnl_valid_getlink_req.__msg.9 = internal constant [46 x i8] c"Invalid values in header for get link request\00", align 1
@rtnl_valid_getlink_req.__msg.10 = internal constant [42 x i8] c"Unsupported attribute in get link request\00", align 1
@rtnl_ensure_unique_netns.__msg = internal constant [40 x i8] c"specified netns attribute not supported\00", align 1
@rtnl_ensure_unique_netns.__msg.11 = internal constant [48 x i8] c"multiple netns identifying attributes specified\00", align 1
@rtnl_dump_ifinfo.__msg = internal constant [36 x i8] c"Invalid target network namespace id\00", align 1
@rtnl_dump_ifinfo.__msg.12 = internal constant [43 x i8] c"Unsupported attribute in link dump request\00", align 1
@rtnl_valid_dump_ifinfo_req.__msg = internal constant [29 x i8] c"Invalid header for link dump\00", align 1
@rtnl_valid_dump_ifinfo_req.__msg.13 = internal constant [47 x i8] c"Invalid values in header for link dump request\00", align 1
@rtnl_valid_dump_ifinfo_req.__msg.14 = internal constant [52 x i8] c"Filter by device index not supported for link dumps\00", align 1
@ifla_info_policy = internal constant [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }], align 4
@ifla_vf_policy = internal constant [14 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 36, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.9 zeroinitializer }], align 4
@ifla_port_policy = internal constant [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 40, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 8, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 16, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.9 zeroinitializer }], align 4
@.str.15 = private unnamed_addr constant [151 x i8] c"\014A link change request failed with some changes committed already. Interface %s may have been left with an inconsistent configuration, please check.\0A\00", align 1
@validate_linkmsg.__msg = internal constant [21 x i8] c"too big gro_max_size\00", align 1
@rtnl_af_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@do_set_proto_down.__msg = internal constant [34 x i8] c"Protodown not supported by device\00", align 1
@ifla_proto_down_reason_policy = internal constant [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }], align 4
@do_set_proto_down.__msg.16 = internal constant [31 x i8] c"Invalid protodown reason value\00", align 1
@do_set_proto_down.__msg.17 = internal constant [39 x i8] c"Cannot clear protodown, active reasons\00", align 1
@ifla_xdp_policy = internal constant <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 8, [2 x i8] undef } }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.9 zeroinitializer } }>, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"rtnl-link-%s\00", align 1
@__rtnl_newlink.__msg = internal constant [20 x i8] c"Unknown device type\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s%%d\00", align 1
@__rtnl_newlink.__msg.21 = internal constant [29 x i8] c"Unknown network namespace id\00", align 1
@rtnl_fdb_add.__msg = internal constant [16 x i8] c"invalid ifindex\00", align 1
@rtnl_fdb_add.__msg.22 = internal constant [16 x i8] c"unknown ifindex\00", align 1
@rtnl_fdb_add.__msg.23 = internal constant [16 x i8] c"invalid address\00", align 1
@rtnl_fdb_add.__msg.24 = internal constant [44 x i8] c"FDB add only supported for Ethernet devices\00", align 1
@fdb_vid_parse.__msg = internal constant [28 x i8] c"invalid vlan attribute size\00", align 1
@fdb_vid_parse.__msg.25 = internal constant [16 x i8] c"invalid vlan id\00", align 1
@rtnl_fdb_del.__msg = internal constant [16 x i8] c"invalid ifindex\00", align 1
@rtnl_fdb_del.__msg.26 = internal constant [16 x i8] c"unknown ifindex\00", align 1
@rtnl_fdb_del.__msg.27 = internal constant [16 x i8] c"invalid address\00", align 1
@rtnl_fdb_del.__msg.28 = internal constant [47 x i8] c"FDB delete only supported for Ethernet devices\00", align 1
@rtnl_fdb_get.__msg = internal constant [43 x i8] c"Missing lookup address for fdb get request\00", align 1
@rtnl_fdb_get.__msg.29 = internal constant [23 x i8] c"Unknown device ifindex\00", align 1
@rtnl_fdb_get.__msg.30 = internal constant [41 x i8] c"Master and device are mutually exclusive\00", align 1
@rtnl_fdb_get.__msg.31 = internal constant [23 x i8] c"Invalid master ifindex\00", align 1
@rtnl_fdb_get.__msg.32 = internal constant [28 x i8] c"Device is not a bridge port\00", align 1
@rtnl_fdb_get.__msg.33 = internal constant [27 x i8] c"Master of device not found\00", align 1
@rtnl_fdb_get.__msg.34 = internal constant [17 x i8] c"Missing NTF_SELF\00", align 1
@rtnl_fdb_get.__msg.35 = internal constant [20 x i8] c"No device specified\00", align 1
@rtnl_fdb_get.__msg.36 = internal constant [42 x i8] c"Fdb get operation not supported by device\00", align 1
@valid_fdb_get_strict.__msg = internal constant [35 x i8] c"Invalid header for fdb get request\00", align 1
@valid_fdb_get_strict.__msg.37 = internal constant [45 x i8] c"Invalid values in header for fdb get request\00", align 1
@valid_fdb_get_strict.__msg.38 = internal constant [44 x i8] c"Invalid flags in header for fdb get request\00", align 1
@nda_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@valid_fdb_get_strict.__msg.39 = internal constant [35 x i8] c"Invalid address in fdb get request\00", align 1
@valid_fdb_get_strict.__msg.40 = internal constant [41 x i8] c"Unsupported attribute in fdb get request\00", align 1
@valid_fdb_dump_strict.__msg = internal constant [36 x i8] c"Invalid header for fdb dump request\00", align 1
@valid_fdb_dump_strict.__msg.41 = internal constant [46 x i8] c"Invalid values in header for fdb dump request\00", align 1
@valid_fdb_dump_strict.__msg.42 = internal constant [46 x i8] c"Invalid IFINDEX attribute in fdb dump request\00", align 1
@valid_fdb_dump_strict.__msg.43 = internal constant [45 x i8] c"Invalid MASTER attribute in fdb dump request\00", align 1
@valid_fdb_dump_strict.__msg.44 = internal constant [42 x i8] c"Unsupported attribute in fdb dump request\00", align 1
@valid_bridge_getlink_req.__msg = internal constant [36 x i8] c"Invalid header for bridge link dump\00", align 1
@valid_bridge_getlink_req.__msg.45 = internal constant [54 x i8] c"Invalid values in header for bridge link dump request\00", align 1
@valid_bridge_getlink_req.__msg.46 = internal constant [50 x i8] c"Unsupported attribute in bridge link dump request\00", align 1
@rtnl_bridge_dellink.__msg = internal constant [16 x i8] c"unknown ifindex\00", align 1
@rtnl_bridge_setlink.__msg = internal constant [16 x i8] c"unknown ifindex\00", align 1
@rtnl_valid_stats_req.__msg = internal constant [30 x i8] c"Invalid header for stats dump\00", align 1
@rtnl_valid_stats_req.__msg.47 = internal constant [48 x i8] c"Invalid values in header for stats dump request\00", align 1
@rtnl_valid_stats_req.__msg.48 = internal constant [38 x i8] c"Invalid attributes after stats header\00", align 1
@rtnl_valid_stats_req.__msg.49 = internal constant [44 x i8] c"Invalid stats requested through filter mask\00", align 1
@rtnl_fill_statsinfo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtnl_stats_dump.__msg = internal constant [39 x i8] c"Filter mask must be set for stats dump\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab___rtnl_link_register, ptr @__ksymtab___rtnl_link_unregister, ptr @__ksymtab_ndo_dflt_bridge_getlink, ptr @__ksymtab_ndo_dflt_fdb_add, ptr @__ksymtab_ndo_dflt_fdb_del, ptr @__ksymtab_ndo_dflt_fdb_dump, ptr @__ksymtab_refcount_dec_and_rtnl_lock, ptr @__ksymtab_rtnetlink_put_metrics, ptr @__ksymtab_rtnl_af_register, ptr @__ksymtab_rtnl_af_unregister, ptr @__ksymtab_rtnl_configure_link, ptr @__ksymtab_rtnl_create_link, ptr @__ksymtab_rtnl_delete_link, ptr @__ksymtab_rtnl_get_net_ns_capable, ptr @__ksymtab_rtnl_is_locked, ptr @__ksymtab_rtnl_kfree_skbs, ptr @__ksymtab_rtnl_link_get_net, ptr @__ksymtab_rtnl_link_register, ptr @__ksymtab_rtnl_link_unregister, ptr @__ksymtab_rtnl_lock, ptr @__ksymtab_rtnl_lock_killable, ptr @__ksymtab_rtnl_nla_parse_ifla, ptr @__ksymtab_rtnl_notify, ptr @__ksymtab_rtnl_put_cacheinfo, ptr @__ksymtab_rtnl_register_module, ptr @__ksymtab_rtnl_set_sk_err, ptr @__ksymtab_rtnl_trylock, ptr @__ksymtab_rtnl_unicast, ptr @__ksymtab_rtnl_unlock, ptr @__ksymtab_rtnl_unregister, ptr @__ksymtab_rtnl_unregister_all], section "llvm.metadata"
@switch.table.rtnetlink_event = private unnamed_addr constant [28 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 2, i32 3, i32 1, i32 1, i32 0, i32 1, i32 1, i32 4, i32 1, i32 0, i32 5, i32 1, i32 6, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_lock() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_lock_killable() #0 {
  %1 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @rtnl_mutex) #18
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rtnl_kfree_skbs(ptr noundef %0, ptr noundef writeonly %1) #2 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr @defer_kfree_skb_list, align 4
  store ptr %7, ptr %1, align 8
  store ptr %0, ptr @defer_kfree_skb_list, align 4
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rtnl_unlock() local_unnamed_addr #0 {
  %1 = load ptr, ptr @defer_kfree_skb_list, align 4
  store ptr null, ptr @defer_kfree_skb_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rtnl_mutex) #18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #18
  %6 = tail call i32 @__cond_resched() #18
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_unlock() #0 {
  tail call void @netdev_run_todo() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_run_todo() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_trylock() #0 {
  %1 = tail call i32 @mutex_trylock(ptr noundef nonnull @rtnl_mutex) #18
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_is_locked() #0 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rtnl_mutex) #18
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_rtnl_lock(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %0, ptr noundef nonnull @rtnl_mutex) #18
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_register_module(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call fastcc i32 @rtnl_register_internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_register_internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp ugt i32 %1, 129
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/rtnetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #18, !srcloc !9
  unreachable

9:                                                ; preds = %6
  %10 = add i32 %2, -16
  %11 = icmp ugt i32 %10, 103
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/rtnetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #18, !srcloc !10
  unreachable

13:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %14 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 416) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  store volatile ptr %19, ptr %14, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi ptr [ %19, %21 ], [ %15, %13 ]
  %24 = getelementptr ptr, ptr %23, i32 %10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @kmemdup(ptr noundef nonnull %25, i32 noundef 24, i32 noundef 3264) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %34

30:                                               ; preds = %22
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 24) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %28, %27 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.rtnl_link, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ne ptr %37, null
  %39 = icmp ne ptr %37, %0
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #18
  br label %42

42:                                               ; preds = %41, %34
  store ptr %0, ptr %36, align 4
  %43 = icmp eq ptr %3, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %35, align 4
  %46 = icmp ne ptr %45, null
  %47 = icmp ne ptr %45, %3
  %48 = and i1 %46, %47
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #18
  br label %50

50:                                               ; preds = %49, %44
  store ptr %3, ptr %35, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = icmp eq ptr %4, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.rtnl_link, ptr %35, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ne ptr %55, null
  %57 = icmp ne ptr %55, %4
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #18
  br label %60

60:                                               ; preds = %59, %53
  store ptr %4, ptr %54, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = getelementptr inbounds %struct.rtnl_link, ptr %35, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, %5
  store i32 %64, ptr %62, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  store volatile ptr %35, ptr %24, align 4
  br i1 %26, label %67, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtnl_link, ptr %25, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %66, ptr noundef nonnull inttoptr (i32 16 to ptr)) #18
  br label %67

67:                                               ; preds = %65, %61, %30, %27, %17
  %68 = phi i32 [ 0, %65 ], [ 0, %61 ], [ -105, %27 ], [ -105, %30 ], [ -105, %17 ]
  tail call void @netdev_run_todo() #18
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_register(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @rtnl_register_internal(ptr noundef null, i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %1) #20
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_unregister(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %0, 129
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/rtnetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #18, !srcloc !13
  unreachable

5:                                                ; preds = %2
  %6 = add i32 %1, -16
  %7 = icmp ugt i32 %6, 103
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/rtnetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #18, !srcloc !10
  unreachable

9:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %10 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %0
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @netdev_run_todo() #18
  br label %20

14:                                               ; preds = %9
  %15 = getelementptr ptr, ptr %11, i32 %6
  %16 = load ptr, ptr %15, align 4
  store volatile ptr null, ptr %15, align 4
  tail call void @netdev_run_todo() #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtnl_link, ptr %16, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %19, ptr noundef nonnull inttoptr (i32 16 to ptr)) #18
  br label %20

20:                                               ; preds = %18, %14, %13
  %21 = phi i32 [ -2, %13 ], [ 0, %18 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_unregister_all(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 129
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/rtnetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #18, !srcloc !14
  unreachable

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %5 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @netdev_run_todo() #18
  br label %21

9:                                                ; preds = %4
  store volatile ptr null, ptr %5, align 4
  br label %10

10:                                               ; preds = %17, %9
  %11 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %12 = getelementptr ptr, ptr %6, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  store volatile ptr null, ptr %12, align 4
  %16 = getelementptr inbounds %struct.rtnl_link, ptr %13, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %16, ptr noundef nonnull inttoptr (i32 16 to ptr)) #18
  br label %17

17:                                               ; preds = %15, %10
  %18 = add nuw nsw i32 %11, 1
  %19 = icmp eq i32 %18, 104
  br i1 %19, label %20, label %10

20:                                               ; preds = %17
  tail call void @netdev_run_todo() #18
  tail call void @synchronize_net() #18
  tail call void @kfree(ptr noundef nonnull %6) #18
  br label %21

21:                                               ; preds = %20, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__rtnl_link_register(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ @link_ops, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @link_ops
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtnl_link_ops, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %3) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %13, %4
  %16 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr @unregister_netdevice_queue, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @link_ops, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @link_ops, i32 0, i32 1), align 4
  store ptr @link_ops, ptr %0, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %0, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %13
  %32 = phi i32 [ 0, %28 ], [ -17, %13 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_link_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 50
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 40
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 404, i32 noundef 9, ptr noundef null) #18
  br label %42

10:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %11 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ @link_ops, %10 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @link_ops
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtnl_link_ops, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %12) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %17
  %23 = icmp eq ptr %15, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %22, %13
  %25 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store ptr @unregister_netdevice_queue, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %32, %28
  %38 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @link_ops, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @link_ops, i32 0, i32 1), align 4
  store ptr @link_ops, ptr %0, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %0, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %22
  %41 = phi i32 [ 0, %37 ], [ -17, %22 ]
  tail call void @netdev_run_todo() #18
  br label %42

42:                                               ; preds = %40, %9
  %43 = phi i32 [ -22, %9 ], [ %41, %40 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rtnl_link_unregister(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr @net_namespace_list, align 4
  %4 = icmp eq ptr %3, @net_namespace_list
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %3, %5 ], [ %25, %24 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 68
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %24, label %13

13:                                               ; preds = %21, %8
  %14 = phi ptr [ %22, %21 ], [ %11, %8 ]
  %15 = getelementptr i8, ptr %14, i32 1140
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 -40
  %20 = load ptr, ptr %7, align 4
  call void %20(ptr noundef %19, ptr noundef nonnull %2) #18
  br label %21

21:                                               ; preds = %18, %13
  %22 = load ptr, ptr %14, align 8
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %24, label %13

24:                                               ; preds = %21, %8
  call void @unregister_netdevice_many(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %25 = load ptr, ptr %9, align 4
  %26 = icmp eq ptr %25, @net_namespace_list
  br i1 %26, label %27, label %8

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_link_unregister(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.wait_queue_entry, align 4
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #18
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @woken_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  call void @add_wait_queue(ptr noundef nonnull @netdev_unregistering_wq, ptr noundef nonnull %3) #18
  br label %9

9:                                                ; preds = %26, %1
  call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  br label %10

10:                                               ; preds = %14, %9
  %11 = phi ptr [ @net_namespace_list, %9 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @net_namespace_list
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -20
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %10, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @defer_kfree_skb_list, align 4
  store ptr null, ptr @defer_kfree_skb_list, align 4
  call void @mutex_unlock(ptr noundef nonnull @rtnl_mutex) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %23, %21 ], [ %19, %18 ]
  %23 = load ptr, ptr %22, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #18
  %24 = call i32 @__cond_resched() #18
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %18
  %27 = call i32 @wait_woken(ptr noundef nonnull %3, i32 noundef 2, i32 noundef 2147483647) #18
  br label %9

28:                                               ; preds = %10
  call void @remove_wait_queue(ptr noundef nonnull @netdev_unregistering_wq, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #18
  %29 = load ptr, ptr @net_namespace_list, align 4
  %30 = icmp eq ptr %29, @net_namespace_list
  br i1 %30, label %53, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %33 = getelementptr inbounds %struct.rtnl_link_ops, ptr %0, i32 0, i32 11
  br label %34

34:                                               ; preds = %50, %31
  %35 = phi ptr [ %29, %31 ], [ %51, %50 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %32, align 4
  %36 = getelementptr i8, ptr %35, i32 68
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %50, label %39

39:                                               ; preds = %47, %34
  %40 = phi ptr [ %48, %47 ], [ %37, %34 ]
  %41 = getelementptr i8, ptr %40, i32 1140
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %40, i32 -40
  %46 = load ptr, ptr %33, align 4
  call void %46(ptr noundef %45, ptr noundef nonnull %2) #18
  br label %47

47:                                               ; preds = %44, %39
  %48 = load ptr, ptr %40, align 8
  %49 = icmp eq ptr %48, %36
  br i1 %49, label %50, label %39

50:                                               ; preds = %47, %34
  call void @unregister_netdevice_many(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %51 = load ptr, ptr %35, align 4
  %52 = icmp eq ptr %51, @net_namespace_list
  br i1 %52, label %53, label %34

53:                                               ; preds = %50, %28
  %54 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  call void @netdev_run_todo() #18
  call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_af_register(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rtnl_af_ops, i32 0, i32 1), align 4
  store ptr @rtnl_af_ops, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  store volatile ptr %0, ptr %2, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @rtnl_af_ops, i32 0, i32 1), align 4
  tail call void @netdev_run_todo() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_af_unregister(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @netdev_run_todo() #18
  tail call void @synchronize_rcu() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnetlink_send(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nlmsg_notify(ptr noundef %7, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 3264) #18
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsg_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_unicast(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @netlink_unicast(ptr noundef %5, ptr noundef %0, i32 noundef %2, i32 noundef 64) #18
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #18
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_notify(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %4, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = lshr i16 %12, 3
  %14 = and i16 %13, 1
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi i32 [ %15, %10 ], [ 0, %6 ]
  %18 = tail call i32 @nlmsg_notify(ptr noundef %8, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %17, i32 noundef %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtnl_set_sk_err(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @netlink_set_err(ptr noundef %5, i32 noundef 0, i32 noundef %1, i32 noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_set_err(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnetlink_put_metrics(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 1
  %6 = icmp eq ptr %1, @dst_default_metrics
  br i1 %6, label %78, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 0, ptr noundef null) #18
  %11 = icmp slt i32 %10, 0
  %12 = icmp eq ptr %9, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %78, label %14

14:                                               ; preds = %42, %7
  %15 = phi i32 [ %43, %42 ], [ 0, %7 ]
  %16 = phi i32 [ %44, %42 ], [ 0, %7 ]
  %17 = getelementptr i32, ptr %1, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %14
  switch i32 %16, label %36 [
    i32 15, label %21
    i32 11, label %30
  ]

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !16
  %22 = call ptr @tcp_ca_get_name_by_key(i32 noundef %18, ptr noundef nonnull %5) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %42

25:                                               ; preds = %21
  %26 = call i32 @strlen(ptr noundef nonnull %22) #18
  %27 = add i32 %26, 1
  %28 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef %27, ptr noundef nonnull %22) #18
  %29 = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br i1 %29, label %40, label %67

30:                                               ; preds = %20
  %31 = and i32 %18, 15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 %31, ptr %4, align 4
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %67

36:                                               ; preds = %20
  %37 = add nuw nsw i32 %16, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 %18, ptr %3, align 4
  %38 = call i32 @nla_put(ptr noundef %0, i32 noundef %37, i32 noundef 4, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36, %33, %25
  %41 = add i32 %15, 1
  br label %42

42:                                               ; preds = %40, %30, %24, %14
  %43 = phi i32 [ %41, %40 ], [ %15, %14 ], [ %15, %24 ], [ %15, %30 ]
  %44 = add nuw nsw i32 %16, 1
  %45 = icmp eq i32 %44, 17
  br i1 %45, label %46, label %14

46:                                               ; preds = %42
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ugt ptr %50, %9
  br i1 %51, label %52, label %54, !prof !8

52:                                               ; preds = %48
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %53 = load ptr, ptr %49, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %50, %48 ]
  %56 = ptrtoint ptr %9 to i32
  %57 = ptrtoint ptr %55 to i32
  %58 = sub i32 %56, %57
  call void @skb_trim(ptr noundef %0, i32 noundef %58) #18
  br label %78

59:                                               ; preds = %46
  %60 = load ptr, ptr %8, align 8
  %61 = ptrtoint ptr %60 to i32
  %62 = ptrtoint ptr %9 to i32
  %63 = sub i32 %61, %62
  %64 = trunc i32 %63 to i16
  store i16 %64, ptr %9, align 2
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  br label %78

67:                                               ; preds = %36, %33, %25
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = icmp ugt ptr %69, %9
  br i1 %70, label %71, label %73, !prof !8

71:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %72 = load ptr, ptr %68, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %69, %67 ]
  %75 = ptrtoint ptr %9 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  call void @skb_trim(ptr noundef %0, i32 noundef %77) #18
  br label %78

78:                                               ; preds = %73, %59, %54, %7, %2
  %79 = phi i32 [ -90, %73 ], [ %66, %59 ], [ 0, %54 ], [ 0, %2 ], [ -105, %7 ]
  ret i32 %79
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_ca_get_name_by_key(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = tail call i32 @strlen(ptr noundef %2)
  %5 = add i32 %4, 1
  %6 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %2) #18
  ret i32 %6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, %1
  br i1 %7, label %8, label %10, !prof !8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %9 = load ptr, ptr %5, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %12 = ptrtoint ptr %1 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  tail call void @skb_trim(ptr noundef %0, i32 noundef %14) #18
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_put_cacheinfo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.rta_cacheinfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.rta_cacheinfo, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rta_cacheinfo, ptr %6, i32 0, i32 5
  store i32 %2, ptr %8, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0) #18
  %16 = tail call i32 @jiffies_to_clock_t(i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.rta_cacheinfo, ptr %6, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rta_cacheinfo, ptr %6, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  %22 = load volatile i32, ptr %21, align 4
  store i32 %22, ptr %6, align 4
  br label %23

23:                                               ; preds = %10, %5
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %27 = tail call i32 @jiffies_to_clock_t(i32 noundef %26) #18
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 2147483647)
  %29 = icmp sgt i32 %3, 0
  %30 = sub nsw i32 0, %28
  %31 = select i1 %29, i32 %28, i32 %30
  %32 = getelementptr inbounds %struct.rta_cacheinfo, ptr %6, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 32, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rtnl_get_net_ns_capable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @get_net_ns_by_id(ptr noundef nonnull @init_net, i32 noundef %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @sk_ns_capable(ptr noundef %0, ptr noundef %7, i32 noundef 12) #18
  %9 = select i1 %8, ptr %3, ptr inttoptr (i32 -13 to ptr)
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ inttoptr (i32 -22 to ptr), %2 ], [ %9, %5 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_nla_parse_ifla(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @__nla_parse(ptr noundef %0, i32 noundef 58, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %3) #18
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rtnl_link_get_net(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr ptr, ptr %1, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @get_net_ns_by_pid(i32 noundef %8) #18
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr ptr, ptr %1, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %0, ptr inttoptr (i32 -22 to ptr)
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi ptr [ %9, %6 ], [ %14, %10 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_pid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_delete_link(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtnl_link_ops, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  call void %9(ptr noundef %0, ptr noundef nonnull %2) #18
  call void @unregister_netdevice_many(ptr noundef nonnull %2) #18
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = phi i32 [ 0, %11 ], [ -95, %7 ], [ -95, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtnl_configure_link(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ifinfomsg, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.ifinfomsg, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %9, label %13, label %14

13:                                               ; preds = %6
  br i1 %12, label %30, label %15

14:                                               ; preds = %6
  br i1 %12, label %26, label %15

15:                                               ; preds = %14, %13
  %16 = and i32 %11, %8
  %17 = and i32 %4, -769
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 18
  %19 = load i16, ptr %18, align 64
  %20 = and i16 %19, 768
  %21 = zext i16 %20 to i32
  %22 = or i32 %17, %21
  %23 = xor i32 %11, -1
  %24 = and i32 %22, %23
  %25 = or i32 %24, %16
  br label %26

26:                                               ; preds = %15, %14
  %27 = phi i32 [ %25, %15 ], [ %8, %14 ]
  %28 = tail call i32 @__dev_change_flags(ptr noundef %0, i32 noundef %27, ptr noundef null) #18
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26, %13, %2
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 104
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, ptr %3, align 8
  %36 = xor i32 %35, %4
  br label %38

37:                                               ; preds = %30
  store i16 0, ptr %31, align 2
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ -1, %37 ]
  tail call void @__dev_notify_flags(ptr noundef %0, i32 noundef %4, i32 noundef %39) #18
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i32 [ %28, %26 ], [ 0, %38 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_notify_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rtnl_create_link(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr ptr, ptr %4, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = load i32, ptr %11, align 4
  br label %19

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtnl_link_ops, ptr %3, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15() #18
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = phi i32 [ %12, %10 ], [ %18, %17 ], [ 1, %13 ]
  %21 = getelementptr ptr, ptr %4, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %22, i32 4
  %26 = load i32, ptr %25, align 4
  br label %33

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.rtnl_link_ops, ptr %3, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29() #18
  br label %33

33:                                               ; preds = %31, %27, %24
  %34 = phi i32 [ %26, %24 ], [ %32, %31 ], [ 1, %27 ]
  %35 = add i32 %20, -4097
  %36 = icmp ult i32 %35, -4096
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_create_link.__msg) #18
  %38 = icmp eq ptr %5, null
  br i1 %38, label %179, label %39

39:                                               ; preds = %37
  store ptr @rtnl_create_link.__msg, ptr %5, align 4
  br label %179

40:                                               ; preds = %33
  %41 = add i32 %34, -4097
  %42 = icmp ult i32 %41, -4096
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_create_link.__msg.2) #18
  %44 = icmp eq ptr %5, null
  br i1 %44, label %179, label %45

45:                                               ; preds = %43
  store ptr @rtnl_create_link.__msg.2, ptr %5, align 4
  br label %179

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtnl_link_ops, ptr %3, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call ptr %48(ptr noundef %4, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %20, i32 noundef %34) #18
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %179, label %59

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtnl_link_ops, ptr %3, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rtnl_link_ops, ptr %3, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr @alloc_netdev_mqs(i32 noundef %55, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %57, i32 noundef %20, i32 noundef %34) #18
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi ptr [ %51, %50 ], [ %58, %53 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %179, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 114
  store ptr %3, ptr %63, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 104
  store i16 1, ptr %64, align 2
  %65 = getelementptr ptr, ptr %4, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %66, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @dev_validate_mtu(ptr noundef nonnull %60, i32 noundef %70, ptr noundef %5) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 20
  store i32 %70, ptr %74, align 4
  br label %77

75:                                               ; preds = %68
  tail call void @free_netdev(ptr noundef nonnull %60) #18
  %76 = inttoptr i32 %71 to ptr
  br label %179

77:                                               ; preds = %73, %62
  %78 = getelementptr ptr, ptr %4, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %79, i32 4
  %83 = load i16, ptr %79, align 2
  %84 = zext i16 %83 to i32
  %85 = add nsw i32 %84, -4
  tail call void @dev_addr_mod(ptr noundef nonnull %60, i32 noundef 0, ptr noundef %82, i32 noundef %85) #18
  %86 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 50
  store i8 3, ptr %86, align 8
  br label %87

87:                                               ; preds = %81, %77
  %88 = getelementptr ptr, ptr %4, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 83
  %93 = getelementptr i8, ptr %89, i32 4
  %94 = load i16, ptr %89, align 2
  %95 = zext i16 %94 to i32
  %96 = add nsw i32 %95, -4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %92, ptr align 1 %93, i32 %96, i1 false)
  br label %97

97:                                               ; preds = %91, %87
  %98 = getelementptr ptr, ptr %4, i32 13
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %99, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 91
  store i32 %103, ptr %104, align 16
  br label %105

105:                                              ; preds = %101, %97
  %106 = getelementptr ptr, ptr %4, i32 16
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %139, label %109

109:                                              ; preds = %105
  %110 = getelementptr i8, ptr %107, i32 4
  %111 = load i8, ptr %110, align 1
  %112 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 45
  %113 = load i8, ptr %112, align 4
  switch i8 %111, label %139 [
    i8 6, label %114
    i8 4, label %125
    i8 5, label %130
  ]

114:                                              ; preds = %109
  switch i8 %113, label %139 [
    i8 5, label %115
    i8 4, label %115
    i8 0, label %115
  ]

115:                                              ; preds = %114, %114, %114
  %116 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 6
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load volatile i32, ptr %116, align 4
  %122 = and i32 %121, 32
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i8 6, i8 %113
  br label %135

125:                                              ; preds = %109
  %126 = icmp eq i8 %113, 6
  %127 = icmp eq i8 %113, 0
  %128 = or i1 %126, %127
  %129 = select i1 %128, i8 4, i8 %113
  br label %135

130:                                              ; preds = %109
  %131 = icmp eq i8 %113, 6
  %132 = icmp eq i8 %113, 0
  %133 = or i1 %131, %132
  %134 = select i1 %133, i8 5, i8 %113
  br label %135

135:                                              ; preds = %130, %125, %120
  %136 = phi i8 [ %134, %130 ], [ %129, %125 ], [ %124, %120 ]
  %137 = icmp eq i8 %113, %136
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #18
  store i8 %136, ptr %112, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @dev_base_lock, i32 0) #18, !srcloc !18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  tail call void @netdev_state_change(ptr noundef nonnull %60) #18
  br label %139

139:                                              ; preds = %138, %135, %115, %114, %109, %105
  %140 = getelementptr ptr, ptr %4, i32 17
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr i8, ptr %141, i32 4
  %145 = load i8, ptr %144, align 1
  %146 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 46
  store i8 %145, ptr %146, align 1
  br label %147

147:                                              ; preds = %143, %139
  %148 = getelementptr ptr, ptr %4, i32 27
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = getelementptr i8, ptr %149, i32 4
  %153 = load i32, ptr %152, align 4
  tail call void @dev_set_group(ptr noundef nonnull %60, i32 noundef %153) #18
  br label %154

154:                                              ; preds = %151, %147
  %155 = getelementptr ptr, ptr %4, i32 41
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %156, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 115
  store volatile i32 %160, ptr %161, align 32
  br label %162

162:                                              ; preds = %158, %154
  %163 = getelementptr ptr, ptr %4, i32 40
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %164, i32 4
  %168 = load i32, ptr %167, align 4
  %169 = trunc i32 %168 to i16
  %170 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 116
  store volatile i16 %169, ptr %170, align 4
  br label %171

171:                                              ; preds = %166, %162
  %172 = getelementptr ptr, ptr %4, i32 58
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr i8, ptr %173, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 79
  store volatile i32 %177, ptr %178, align 4
  br label %179

179:                                              ; preds = %175, %171, %75, %59, %50, %45, %43, %39, %37
  %180 = phi ptr [ %76, %75 ], [ %51, %50 ], [ %60, %175 ], [ %60, %171 ], [ inttoptr (i32 -22 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %45 ], [ inttoptr (i32 -22 to ptr), %43 ], [ inttoptr (i32 -12 to ptr), %59 ]
  ret ptr %180
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_validate_mtu(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_operstate(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 45
  %4 = load i8, ptr %3, align 4
  switch i8 %1, label %30 [
    i8 6, label %5
    i8 4, label %16
    i8 5, label %21
  ]

5:                                                ; preds = %2
  switch i8 %4, label %30 [
    i8 5, label %6
    i8 4, label %6
    i8 0, label %6
  ]

6:                                                ; preds = %5, %5, %5
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i8 6, i8 %4
  br label %26

16:                                               ; preds = %2
  %17 = icmp eq i8 %4, 6
  %18 = icmp eq i8 %4, 0
  %19 = or i1 %17, %18
  %20 = select i1 %19, i8 4, i8 %4
  br label %26

21:                                               ; preds = %2
  %22 = icmp eq i8 %4, 6
  %23 = icmp eq i8 %4, 0
  %24 = or i1 %22, %23
  %25 = select i1 %24, i8 5, i8 %4
  br label %26

26:                                               ; preds = %21, %16, %11
  %27 = phi i8 [ %25, %21 ], [ %20, %16 ], [ %15, %11 ]
  %28 = icmp eq i8 %4, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #18
  store i8 %27, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @dev_base_lock, i32 0) #18, !srcloc !18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  tail call void @netdev_state_change(ptr noundef %0) #18
  br label %30

30:                                               ; preds = %29, %26, %6, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_set_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rtmsg_ifinfo_build_skb(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i32 @if_nlmsg_size(ptr noundef %1, i32 noundef 0)
  %9 = add i32 %8, 19
  %10 = and i32 %9, -4
  %11 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef %4, i32 noundef 0, i32 noundef -1) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rtnl_fill_ifinfo(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef -1)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, -90
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3842, i32 noundef 9, ptr noundef null) #18
  br label %19

19:                                               ; preds = %18, %16
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #18
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ -105, %7 ], [ %14, %19 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %23 = tail call i32 @netlink_set_err(ptr noundef %22, i32 noundef 0, i32 noundef 1, i32 noundef %21) #18
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi ptr [ null, %20 ], [ %11, %13 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @if_nlmsg_size(ptr noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %7, %5
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bus_type, ptr %11, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef nonnull %4) #18
  %19 = mul i32 %18, 296
  %20 = or i32 %19, 4
  br label %21

21:                                               ; preds = %17, %13, %9, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %17 ], [ 4, %13 ], [ 4, %9 ]
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.net_device_ops, ptr %24, i32 0, i32 35
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %3, align 4
  %30 = icmp eq ptr %29, null
  %31 = or i1 %7, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bus_type, ptr %34, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = tail call i32 %38(ptr noundef nonnull %29) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.bus_type, ptr %46, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef %44) #18
  %54 = mul i32 %53, 116
  %55 = add i32 %54, 124
  br label %56

56:                                               ; preds = %52, %48, %43, %40, %36, %32, %28, %21
  %57 = phi i32 [ 0, %28 ], [ 0, %21 ], [ 116, %40 ], [ 116, %36 ], [ 116, %32 ], [ %55, %52 ], [ 124, %48 ], [ 124, %43 ]
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %102, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtnl_link_ops, ptr %59, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @strlen(ptr noundef %63) #18
  %65 = add i32 %64, 16
  %66 = and i32 %65, -4
  %67 = getelementptr inbounds %struct.rtnl_link_ops, ptr %59, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %61
  %71 = tail call i32 %68(ptr noundef %0) #18
  %72 = add i32 %66, 8
  %73 = add i32 %72, %71
  br label %74

74:                                               ; preds = %70, %61
  %75 = phi i32 [ %73, %70 ], [ %66, %61 ]
  %76 = getelementptr inbounds %struct.rtnl_link_ops, ptr %59, i32 0, i32 14
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = tail call i32 %77(ptr noundef %0) #18
  %81 = add i32 %80, 7
  %82 = and i32 %81, -4
  %83 = add i32 %82, %75
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i32 [ %83, %79 ], [ %75, %74 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %86 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %0) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 114
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.rtnl_link_ops, ptr %90, i32 0, i32 21
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = tail call i32 %94(ptr noundef nonnull %86, ptr noundef %0) #18
  %98 = add i32 %97, 8
  br label %99

99:                                               ; preds = %96, %92, %88, %84
  %100 = phi i32 [ %98, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %101 = add i32 %100, %85
  br label %102

102:                                              ; preds = %99, %56
  %103 = phi i32 [ %101, %99 ], [ 0, %56 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %104 = load volatile ptr, ptr @rtnl_af_ops, align 4
  %105 = icmp eq ptr %104, @rtnl_af_ops
  br i1 %105, label %120, label %106

106:                                              ; preds = %116, %102
  %107 = phi ptr [ %118, %116 ], [ %104, %102 ]
  %108 = phi i32 [ %117, %116 ], [ 8, %102 ]
  %109 = getelementptr inbounds %struct.rtnl_af_ops, ptr %107, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = tail call i32 %110(ptr noundef %0, i32 noundef %1) #18
  %114 = add i32 %108, 8
  %115 = add i32 %114, %113
  br label %116

116:                                              ; preds = %112, %106
  %117 = phi i32 [ %115, %112 ], [ %108, %106 ]
  %118 = load volatile ptr, ptr %107, align 4
  %119 = icmp eq ptr %118, @rtnl_af_ops
  br i1 %119, label %120, label %106

120:                                              ; preds = %116, %102
  %121 = phi i32 [ 8, %102 ], [ %117, %116 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %122 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 97
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 1
  %125 = load ptr, ptr %124, align 16
  %126 = getelementptr inbounds %struct.netdev_name_node, ptr %125, i32 0, i32 1
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %135, label %129

129:                                              ; preds = %129, %120
  %130 = phi i32 [ %132, %129 ], [ 4, %120 ]
  %131 = phi ptr [ %133, %129 ], [ %127, %120 ]
  %132 = add i32 %130, 132
  %133 = load ptr, ptr %131, align 4
  %134 = icmp eq ptr %133, %126
  br i1 %134, label %135, label %129

135:                                              ; preds = %129, %120
  %136 = phi i32 [ 0, %120 ], [ %132, %129 ]
  %137 = shl i32 %1, 2
  %138 = and i32 %137, 4
  %139 = add nuw nsw i32 %138, 7
  %140 = and i32 %139, 12
  %141 = icmp eq i32 %123, 0
  %142 = select i1 %141, i32 8, i32 20
  %143 = add nuw nsw i32 %140, 1076
  %144 = add i32 %143, %22
  %145 = add i32 %144, %57
  %146 = add i32 %145, %103
  %147 = add i32 %146, %121
  %148 = add i32 %147, %142
  %149 = add i32 %148, %136
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_ifinfo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef readonly %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rtnl_mutex) #18
  %35 = load i1, ptr @rtnl_fill_ifinfo.__already_done, align 1
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %38, label %37, !prof !24

37:                                               ; preds = %12
  store i1 true, ptr @rtnl_fill_ifinfo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1704, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 1704) #18
  br label %38

38:                                               ; preds = %37, %12
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %323

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = ptrtoint ptr %44 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %323, label %51, !prof !8

51:                                               ; preds = %42
  %52 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %2, i32 noundef 16, i32 noundef %6) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %323, label %54

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %52, i32 16
  store i8 0, ptr %55, align 4
  %56 = getelementptr i8, ptr %52, i32 17
  store i8 0, ptr %56, align 1
  %57 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %58 = load i16, ptr %57, align 16
  %59 = getelementptr i8, ptr %52, i32 18
  store i16 %58, ptr %59, align 2
  %60 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %52, i32 20
  store i32 %61, ptr %62, align 4
  %63 = tail call i32 @dev_get_flags(ptr noundef %1) #18
  %64 = getelementptr i8, ptr %52, i32 24
  store i32 %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %52, i32 28
  store i32 %5, ptr %65, align 4
  %66 = icmp sgt i32 %11, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #18
  store i32 %11, ptr %33, align 4
  %68 = call i32 @nla_put(ptr noundef %0, i32 noundef 46, i32 noundef 4, ptr noundef nonnull %33) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #18
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %312

70:                                               ; preds = %67, %54
  %71 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 90
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 @strlen(ptr noundef %1) #18
  %74 = add i32 %73, 1
  %75 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef %74, ptr noundef %1) #18
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %312

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 91
  %79 = load i32, ptr %78, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #18
  store i32 %79, ptr %32, align 4
  %80 = call i32 @nla_put(ptr noundef %0, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %32) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #18
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %312

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 45
  %89 = load i8, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi i8 [ %89, %87 ], [ 2, %82 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #18
  store i8 %91, ptr %31, align 1
  %92 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %31) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %312

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 46
  %96 = load i8, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #18
  store i8 %96, ptr %30, align 1
  %97 = call i32 @nla_put(ptr noundef %0, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %30) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %312

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %101 = load i32, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #18
  store i32 %101, ptr %29, align 4
  %102 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %29) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #18
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %312

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 30
  %106 = load i32, ptr %105, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #18
  store i32 %106, ptr %28, align 4
  %107 = call i32 @nla_put(ptr noundef %0, i32 noundef 50, i32 noundef 4, ptr noundef nonnull %28) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #18
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %312

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 31
  %111 = load i32, ptr %110, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #18
  store i32 %111, ptr %27, align 4
  %112 = call i32 @nla_put(ptr noundef %0, i32 noundef 51, i32 noundef 4, ptr noundef nonnull %27) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %312

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 35
  %116 = load i32, ptr %115, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #18
  store i32 %116, ptr %26, align 4
  %117 = call i32 @nla_put(ptr noundef %0, i32 noundef 27, i32 noundef 4, ptr noundef nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #18
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %312

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %121 = load i32, ptr %120, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #18
  store i32 %121, ptr %25, align 4
  %122 = call i32 @nla_put(ptr noundef %0, i32 noundef 30, i32 noundef 4, ptr noundef nonnull %25) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #18
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %312

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 88
  %126 = load i32, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #18
  store i32 %126, ptr %24, align 4
  %127 = call i32 @nla_put(ptr noundef %0, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %312

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 116
  %131 = load i16, ptr %130, align 4
  %132 = zext i16 %131 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #18
  store i32 %132, ptr %23, align 4
  %133 = call i32 @nla_put(ptr noundef %0, i32 noundef 40, i32 noundef 4, ptr noundef nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %312

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 115
  %137 = load i32, ptr %136, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #18
  store i32 %137, ptr %22, align 4
  %138 = call i32 @nla_put(ptr noundef %0, i32 noundef 41, i32 noundef 4, ptr noundef nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #18
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %312

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 79
  %142 = load i32, ptr %141, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #18
  store i32 %142, ptr %21, align 4
  %143 = call i32 @nla_put(ptr noundef %0, i32 noundef 58, i32 noundef 4, ptr noundef nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #18
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %312

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 74
  %147 = load i32, ptr %146, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #18
  store i32 %147, ptr %20, align 4
  %148 = call i32 @nla_put(ptr noundef %0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %312

150:                                              ; preds = %145
  %151 = call fastcc i32 @put_master_ifindex(ptr noundef %0, ptr noundef %1)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %312

153:                                              ; preds = %150
  %154 = load volatile i32, ptr %83, align 4
  %155 = trunc i32 %154 to i8
  %156 = lshr i8 %155, 2
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #18
  store i8 %158, ptr %19, align 1
  %159 = call i32 @nla_put(ptr noundef %0, i32 noundef 33, i32 noundef 1, ptr noundef nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %312

161:                                              ; preds = %153
  %162 = icmp eq ptr %72, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.Qdisc, ptr %72, i32 0, i32 4
  %165 = load ptr, ptr %164, align 16
  %166 = getelementptr inbounds %struct.Qdisc_ops, ptr %165, i32 0, i32 2
  %167 = call fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef 6, ptr noundef %166)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %312

169:                                              ; preds = %163, %161
  %170 = call fastcc i32 @nla_put_ifalias(ptr noundef %0, ptr noundef %1)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %312

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 40
  %174 = load volatile i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 41
  %176 = load volatile i32, ptr %175, align 4
  %177 = add i32 %176, %174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #18
  store i32 %177, ptr %18, align 4
  %178 = call i32 @nla_put(ptr noundef %0, i32 noundef 35, i32 noundef 4, ptr noundef nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #18
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %312

180:                                              ; preds = %172
  %181 = load volatile i32, ptr %173, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #18
  store i32 %181, ptr %17, align 4
  %182 = call i32 @nla_put(ptr noundef %0, i32 noundef 47, i32 noundef 4, ptr noundef nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #18
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %312

184:                                              ; preds = %180
  %185 = load volatile i32, ptr %175, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #18
  store i32 %185, ptr %16, align 4
  %186 = call i32 @nla_put(ptr noundef %0, i32 noundef 48, i32 noundef 4, ptr noundef nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #18
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %312

188:                                              ; preds = %184
  %189 = call fastcc i32 @rtnl_fill_proto_down(ptr noundef %0, ptr noundef %1)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %312

191:                                              ; preds = %188
  %192 = icmp eq i32 %8, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #18
  store i32 %8, ptr %15, align 4
  %194 = call i32 @nla_put(ptr noundef %0, i32 noundef 44, i32 noundef 4, ptr noundef nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #18
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %312

196:                                              ; preds = %193, %191
  %197 = call fastcc i32 @rtnl_fill_link_ifmap(ptr noundef %0, ptr noundef %1)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %312

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %201 = load i8, ptr %200, align 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %199
  %204 = zext i8 %201 to i32
  %205 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %206 = load ptr, ptr %205, align 32
  %207 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %204, ptr noundef %206) #18
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %312

209:                                              ; preds = %203
  %210 = load i8, ptr %200, align 1
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %213 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef %211, ptr noundef %212) #18
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %312

215:                                              ; preds = %209, %199
  %216 = call fastcc i32 @rtnl_phys_port_id_fill(ptr noundef %0, ptr noundef %1)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %312

218:                                              ; preds = %215
  %219 = call fastcc i32 @rtnl_phys_port_name_fill(ptr noundef %0, ptr noundef %1)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %312

221:                                              ; preds = %218
  %222 = call fastcc i32 @rtnl_phys_switch_id_fill(ptr noundef %0, ptr noundef %1)
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %312

224:                                              ; preds = %221
  %225 = call fastcc i32 @rtnl_fill_stats(ptr noundef %0, ptr noundef %1)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %312

227:                                              ; preds = %224
  %228 = call fastcc i32 @rtnl_fill_vf(ptr noundef %0, ptr noundef %1, i32 noundef %7)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %312

230:                                              ; preds = %227
  %231 = call fastcc i32 @rtnl_port_fill(ptr noundef %0, ptr noundef %1, i32 noundef %7)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %312

233:                                              ; preds = %230
  %234 = call fastcc i32 @rtnl_xdp_fill(ptr noundef %0, ptr noundef %1)
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %312

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 114
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %241 = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %1) #18
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %251

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.net_device, ptr %241, i32 0, i32 114
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br i1 %247, label %251, label %248

248:                                              ; preds = %244, %236
  %249 = call fastcc i32 @rtnl_link_fill(ptr noundef %0, ptr noundef %1)
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %312, label %251

251:                                              ; preds = %248, %244, %243
  %252 = call fastcc i32 @rtnl_fill_link_netnsid(ptr noundef %0, ptr noundef %1)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %312

254:                                              ; preds = %251
  %255 = icmp eq ptr %9, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %254
  %257 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  store i32 %257, ptr %14, align 4
  %258 = call i32 @nla_put(ptr noundef %0, i32 noundef 45, i32 noundef 4, ptr noundef nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %312, label %260

260:                                              ; preds = %256, %254
  %261 = icmp eq i32 %10, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  store i32 %10, ptr %13, align 4
  %263 = call i32 @nla_put(ptr noundef %0, i32 noundef 49, i32 noundef 4, ptr noundef nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %312, label %265

265:                                              ; preds = %262, %260
  %266 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %267 = load i8, ptr %200, align 1
  %268 = zext i8 %267 to i32
  %269 = call ptr @memchr_inv(ptr noundef %266, i32 noundef 0, i32 noundef %268) #18
  %270 = icmp eq ptr %269, null
  br i1 %270, label %276, label %271

271:                                              ; preds = %265
  %272 = load i8, ptr %200, align 1
  %273 = zext i8 %272 to i32
  %274 = call i32 @nla_put(ptr noundef %0, i32 noundef 54, i32 noundef %273, ptr noundef %266) #18
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %312

276:                                              ; preds = %271, %265
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %277 = call fastcc i32 @rtnl_fill_link_af(ptr noundef %0, ptr noundef %1, i32 noundef %7)
  %278 = icmp eq i32 %277, 0
  call void asm sideeffect "", "~{memory}"() #18
  br i1 %278, label %279, label %312

279:                                              ; preds = %276
  %280 = call fastcc i32 @rtnl_fill_prop_list(ptr noundef %0, ptr noundef %1)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %312

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %307, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.device, ptr %284, i32 0, i32 3
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = load ptr, ptr %284, align 4
  br label %292

292:                                              ; preds = %290, %286
  %293 = phi ptr [ %291, %290 ], [ %288, %286 ]
  %294 = call fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef 56, ptr noundef %293)
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %292
  %297 = load ptr, ptr %283, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %307, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.device, ptr %297, i32 0, i32 5
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %307, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr %301, align 4
  %305 = call fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef 57, ptr noundef %304)
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %303, %299, %296, %282
  %308 = load ptr, ptr %45, align 8
  %309 = ptrtoint ptr %308 to i32
  %310 = ptrtoint ptr %52 to i32
  %311 = sub i32 %309, %310
  store i32 %311, ptr %52, align 4
  br label %323

312:                                              ; preds = %303, %292, %279, %276, %271, %262, %256, %251, %248, %233, %230, %227, %224, %221, %218, %215, %209, %203, %196, %193, %188, %184, %180, %172, %169, %163, %153, %150, %145, %140, %135, %129, %124, %119, %114, %109, %104, %99, %94, %90, %77, %70, %67
  %313 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %314 = load ptr, ptr %313, align 4
  %315 = icmp ugt ptr %314, %52
  br i1 %315, label %316, label %318, !prof !8

316:                                              ; preds = %312
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %317 = load ptr, ptr %313, align 4
  br label %318

318:                                              ; preds = %316, %312
  %319 = phi ptr [ %317, %316 ], [ %314, %312 ]
  %320 = ptrtoint ptr %52 to i32
  %321 = ptrtoint ptr %319 to i32
  %322 = sub i32 %320, %321
  call void @skb_trim(ptr noundef %0, i32 noundef %322) #18
  br label %323

323:                                              ; preds = %318, %307, %51, %42, %38
  %324 = phi i32 [ -90, %318 ], [ 0, %307 ], [ -90, %51 ], [ -90, %42 ], [ -90, %38 ]
  ret i32 %324
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtmsg_ifinfo_send(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %5 = tail call i32 @nlmsg_notify(ptr noundef %4, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtmsg_ifinfo(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 102
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call ptr @rtmsg_ifinfo_build_skb(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef null, i32 noundef 0) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %13 = tail call i32 @nlmsg_notify(ptr noundef %12, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %3) #18
  br label %14

14:                                               ; preds = %11, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtmsg_ifinfo_newnet(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 102
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = tail call ptr @rtmsg_ifinfo_build_skb(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef %4, i32 noundef %5) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %15 = tail call i32 @nlmsg_notify(ptr noundef %14, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %3) #18
  br label %16

16:                                               ; preds = %13, %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ndo_dflt_fdb_add(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.ndmsg, ptr %0, i32 0, i32 4
  %8 = load i16, ptr %7, align 4
  %9 = icmp ne i16 %8, 0
  %10 = and i16 %8, 128
  %11 = icmp eq i16 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.3) #20
  br label %40

14:                                               ; preds = %6
  %15 = icmp eq i16 %4, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #20
  br label %40

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = xor i32 %18, 12746753
  %23 = getelementptr i16, ptr %3, i32 2
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, -3841
  %26 = zext i16 %25 to i32
  %27 = or i32 %22, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %17
  %30 = tail call i32 @dev_uc_add_excl(ptr noundef %2, ptr noundef %3) #18
  br label %33

31:                                               ; preds = %21
  %32 = tail call i32 @dev_mc_add_excl(ptr noundef %2, ptr noundef %3) #18
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = icmp eq i32 %34, -17
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = and i16 %5, 512
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 0, i32 -17
  br label %40

40:                                               ; preds = %36, %33, %16, %13
  %41 = phi i32 [ -22, %16 ], [ -22, %13 ], [ %34, %33 ], [ %39, %36 ]
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add_excl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add_excl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ndo_dflt_fdb_del(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, i16 zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.ndmsg, ptr %0, i32 0, i32 4
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 128
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.3) #20
  br label %27

11:                                               ; preds = %5
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = xor i32 %12, 12746753
  %17 = getelementptr i16, ptr %3, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, -3841
  %20 = zext i16 %19 to i32
  %21 = or i32 %16, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %11
  %24 = tail call i32 @dev_uc_del(ptr noundef %2, ptr noundef %3) #18
  br label %27

25:                                               ; preds = %15
  %26 = tail call i32 @dev_mc_del(ptr noundef %2, ptr noundef %3) #18
  br label %27

27:                                               ; preds = %25, %23, %10
  %28 = phi i32 [ -22, %10 ], [ %24, %23 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ndo_dflt_fdb_dump(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %7 = load i16, ptr %6, align 16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %78

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #18
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = add i32 %12, 512
  store volatile i32 %13, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %14 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %14) #18
  %15 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 60
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nlmsghdr, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, %15
  br i1 %24, label %51, label %25

25:                                               ; preds = %9
  %26 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %27 = load i32, ptr %4, align 4
  br label %28

28:                                               ; preds = %39, %25
  %29 = phi i32 [ %27, %25 ], [ %41, %39 ]
  %30 = phi ptr [ %23, %25 ], [ %42, %39 ]
  %31 = load i32, ptr %26, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.netdev_hw_addr, ptr %30, i32 0, i32 2
  %35 = tail call fastcc i32 @nlmsg_populate_fdb_fill(ptr noundef %0, ptr noundef %2, ptr noundef %34, i16 noundef zeroext 0, i32 noundef %18, i32 noundef %22, i32 noundef 28, i32 noundef 2, i16 noundef zeroext 128) #18
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %76, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %4, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i32 [ %38, %37 ], [ %29, %28 ]
  %41 = add i32 %40, 1
  store i32 %41, ptr %4, align 4
  %42 = load ptr, ptr %30, align 4
  %43 = icmp eq ptr %42, %15
  br i1 %43, label %44, label %28

44:                                               ; preds = %39
  %45 = load ptr, ptr %1, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 3, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr inbounds %struct.nlmsghdr, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %44, %9
  %52 = phi i32 [ %50, %44 ], [ %22, %9 ]
  %53 = phi i32 [ %47, %44 ], [ %18, %9 ]
  %54 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 61
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %76, label %57

57:                                               ; preds = %51
  %58 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %59 = load i32, ptr %4, align 4
  br label %60

60:                                               ; preds = %71, %57
  %61 = phi i32 [ %59, %57 ], [ %73, %71 ]
  %62 = phi ptr [ %55, %57 ], [ %74, %71 ]
  %63 = load i32, ptr %58, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.netdev_hw_addr, ptr %62, i32 0, i32 2
  %67 = tail call fastcc i32 @nlmsg_populate_fdb_fill(ptr noundef %0, ptr noundef %2, ptr noundef %66, i16 noundef zeroext 0, i32 noundef %53, i32 noundef %52, i32 noundef 28, i32 noundef 2, i16 noundef zeroext 128) #18
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %4, align 4
  br label %71

71:                                               ; preds = %69, %60
  %72 = phi i32 [ %70, %69 ], [ %61, %60 ]
  %73 = add i32 %72, 1
  store i32 %73, ptr %4, align 4
  %74 = load ptr, ptr %62, align 4
  %75 = icmp eq ptr %74, %54
  br i1 %75, label %76, label %60

76:                                               ; preds = %71, %65, %51, %33
  %77 = phi i32 [ 0, %51 ], [ %67, %65 ], [ 0, %71 ], [ %35, %33 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #18
  br label %78

78:                                               ; preds = %76, %5
  %79 = phi i32 [ %77, %76 ], [ -22, %5 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ndo_dflt_bridge_getlink(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef readonly %9) #0 {
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 45
  %33 = load i8, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %10
  %35 = phi i8 [ %33, %31 ], [ 2, %10 ]
  %36 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %3) #18
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %247

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %44 = load ptr, ptr %43, align 8
  %45 = ptrtoint ptr %42 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = sub i32 %45, %46
  %48 = icmp slt i32 %47, 32
  br i1 %48, label %247, label %49, !prof !8

49:                                               ; preds = %40
  %50 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 16, i32 noundef 16, i32 noundef %7) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %247, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %50, i32 16
  store i8 7, ptr %53, align 4
  %54 = getelementptr i8, ptr %50, i32 17
  store i8 0, ptr %54, align 1
  %55 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %56 = load i16, ptr %55, align 16
  %57 = getelementptr i8, ptr %50, i32 18
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %50, i32 20
  store i32 %59, ptr %60, align 4
  %61 = tail call i32 @dev_get_flags(ptr noundef %3) #18
  %62 = getelementptr i8, ptr %50, i32 24
  store i32 %61, ptr %62, align 4
  %63 = getelementptr i8, ptr %50, i32 28
  store i32 0, ptr %63, align 4
  %64 = tail call i32 @strlen(ptr noundef %3) #18
  %65 = add i32 %64, 1
  %66 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef %65, ptr noundef %3) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %233

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %70 = load i32, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #18
  store i32 %70, ptr %26, align 4
  %71 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #18
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %233

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #18
  store i8 %35, ptr %25, align 1
  %74 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %25) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %233

76:                                               ; preds = %73
  %77 = icmp eq ptr %36, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %80 = load i32, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #18
  store i32 %80, ptr %24, align 4
  %81 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #18
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %233

83:                                               ; preds = %78, %76
  %84 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 51
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = zext i8 %85 to i32
  %89 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %90 = load ptr, ptr %89, align 32
  %91 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %88, ptr noundef %90) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %233

93:                                               ; preds = %87, %83
  %94 = load i32, ptr %58, align 4
  %95 = call i32 @dev_get_iflink(ptr noundef %3) #18
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = call i32 @dev_get_iflink(ptr noundef %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #18
  store i32 %98, ptr %23, align 4
  %99 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #18
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %233

101:                                              ; preds = %97, %93
  %102 = load ptr, ptr %43, align 8
  %103 = call i32 @nla_put(ptr noundef %0, i32 noundef 26, i32 noundef 0, ptr noundef null) #18
  %104 = icmp slt i32 %103, 0
  %105 = icmp eq ptr %102, null
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %233, label %107

107:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #18
  store i16 2, ptr %22, align 2
  %108 = call i32 @nla_put(ptr noundef %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #18
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %230

110:                                              ; preds = %107
  %111 = icmp eq i16 %4, -1
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #18
  store i16 %4, ptr %21, align 2
  %113 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %230

115:                                              ; preds = %112, %110
  %116 = icmp eq ptr %9, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %115
  %118 = call i32 %9(ptr noundef %0, ptr noundef %3, i32 noundef %8) #18
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %230

120:                                              ; preds = %117, %115
  %121 = load ptr, ptr %43, align 8
  %122 = ptrtoint ptr %121 to i32
  %123 = ptrtoint ptr %102 to i32
  %124 = sub i32 %122, %123
  %125 = trunc i32 %124 to i16
  store i16 %125, ptr %102, align 2
  %126 = load ptr, ptr %43, align 8
  %127 = call i32 @nla_put(ptr noundef %0, i32 noundef 32780, i32 noundef 0, ptr noundef null) #18
  %128 = icmp slt i32 %127, 0
  %129 = icmp eq ptr %126, null
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %233, label %131

131:                                              ; preds = %120
  %132 = and i32 %6, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = trunc i32 %5 to i8
  %136 = and i8 %135, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #18
  store i8 %136, ptr %20, align 1
  %137 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #18
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %230

139:                                              ; preds = %134, %131
  %140 = and i32 %6, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = trunc i32 %5 to i8
  %144 = lshr i8 %143, 1
  %145 = and i8 %144, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #18
  store i8 %145, ptr %19, align 1
  %146 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #18
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %230

148:                                              ; preds = %142, %139
  %149 = and i32 %6, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = trunc i32 %5 to i8
  %153 = lshr i8 %152, 3
  %154 = and i8 %153, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #18
  store i8 %154, ptr %18, align 1
  %155 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #18
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %230

157:                                              ; preds = %151, %148
  %158 = and i32 %6, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = trunc i32 %5 to i8
  %162 = lshr i8 %161, 2
  %163 = and i8 %162, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #18
  store i8 %163, ptr %17, align 1
  %164 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #18
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %230

166:                                              ; preds = %160, %157
  %167 = and i32 %6, 32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = trunc i32 %5 to i8
  %171 = lshr i8 %170, 5
  %172 = and i8 %171, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #18
  store i8 %172, ptr %16, align 1
  %173 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #18
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %230

175:                                              ; preds = %169, %166
  %176 = and i32 %6, 512
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = lshr i32 %5, 9
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #18
  store i8 %181, ptr %15, align 1
  %182 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #18
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %230

184:                                              ; preds = %178, %175
  %185 = and i32 %6, 64
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %184
  %188 = trunc i32 %5 to i8
  %189 = lshr i8 %188, 6
  %190 = and i8 %189, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #18
  store i8 %190, ptr %14, align 1
  %191 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #18
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %230

193:                                              ; preds = %187, %184
  %194 = and i32 %6, 256
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = lshr i32 %5, 8
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #18
  store i8 %199, ptr %13, align 1
  %200 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #18
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %230

202:                                              ; preds = %196, %193
  %203 = and i32 %6, 2048
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %202
  %206 = lshr i32 %5, 11
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  store i8 %208, ptr %12, align 1
  %209 = call i32 @nla_put(ptr noundef %0, i32 noundef 27, i32 noundef 1, ptr noundef nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %205, %202
  %212 = and i32 %6, 16384
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = lshr i32 %5, 14
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  store i8 %217, ptr %11, align 1
  %218 = call i32 @nla_put(ptr noundef %0, i32 noundef 30, i32 noundef 1, ptr noundef nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %214, %211
  %221 = load ptr, ptr %43, align 8
  %222 = ptrtoint ptr %221 to i32
  %223 = ptrtoint ptr %126 to i32
  %224 = sub i32 %222, %223
  %225 = trunc i32 %224 to i16
  store i16 %225, ptr %126, align 2
  %226 = load ptr, ptr %43, align 8
  %227 = ptrtoint ptr %226 to i32
  %228 = ptrtoint ptr %50 to i32
  %229 = sub i32 %227, %228
  store i32 %229, ptr %50, align 4
  br label %247

230:                                              ; preds = %214, %205, %196, %187, %178, %169, %160, %151, %142, %134, %117, %112, %107
  %231 = phi ptr [ %102, %107 ], [ %102, %112 ], [ %102, %117 ], [ %126, %214 ], [ %126, %205 ], [ %126, %196 ], [ %126, %187 ], [ %126, %178 ], [ %126, %169 ], [ %126, %160 ], [ %126, %151 ], [ %126, %142 ], [ %126, %134 ]
  %232 = phi i32 [ 0, %107 ], [ 0, %112 ], [ %118, %117 ], [ 0, %214 ], [ 0, %205 ], [ 0, %196 ], [ 0, %187 ], [ 0, %178 ], [ 0, %169 ], [ 0, %160 ], [ 0, %151 ], [ 0, %142 ], [ 0, %134 ]
  call fastcc void @nla_nest_cancel(ptr noundef %0, ptr noundef nonnull %231)
  br label %233

233:                                              ; preds = %230, %120, %101, %97, %87, %78, %73, %68, %52
  %234 = phi i32 [ 0, %52 ], [ 0, %68 ], [ 0, %73 ], [ 0, %78 ], [ 0, %87 ], [ 0, %97 ], [ 0, %120 ], [ 0, %101 ], [ %232, %230 ]
  %235 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %236 = load ptr, ptr %235, align 4
  %237 = icmp ugt ptr %236, %50
  br i1 %237, label %238, label %240, !prof !8

238:                                              ; preds = %233
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %239 = load ptr, ptr %235, align 4
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi ptr [ %239, %238 ], [ %236, %233 ]
  %242 = ptrtoint ptr %50 to i32
  %243 = ptrtoint ptr %241 to i32
  %244 = sub i32 %242, %243
  call void @skb_trim(ptr noundef %0, i32 noundef %244) #18
  %245 = icmp eq i32 %234, 0
  %246 = select i1 %245, i32 -90, i32 %234
  br label %247

247:                                              ; preds = %240, %220, %49, %40, %34
  %248 = phi i32 [ %246, %240 ], [ 0, %220 ], [ -90, %49 ], [ -90, %40 ], [ -90, %34 ]
  ret i32 %248
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rtnetlink_init() local_unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @rtnetlink_net_ops) #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #21
  unreachable

4:                                                ; preds = %0
  %5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @rtnetlink_dev_notifier) #18
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 18, ptr noundef nonnull @rtnl_getlink, ptr noundef nonnull @rtnl_dump_ifinfo, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 19, ptr noundef nonnull @rtnl_setlink, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 16, ptr noundef nonnull @rtnl_newlink, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 17, ptr noundef nonnull @rtnl_dellink, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 22, ptr noundef null, ptr noundef nonnull @rtnl_dump_all, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 26, ptr noundef null, ptr noundef nonnull @rtnl_dump_all, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 82, ptr noundef null, ptr noundef nonnull @rtnl_dump_all, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 108, ptr noundef nonnull @rtnl_newlinkprop, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 109, ptr noundef nonnull @rtnl_dellinkprop, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 7, i32 noundef 28, ptr noundef nonnull @rtnl_fdb_add, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 7, i32 noundef 29, ptr noundef nonnull @rtnl_fdb_del, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 7, i32 noundef 30, ptr noundef nonnull @rtnl_fdb_get, ptr noundef nonnull @rtnl_fdb_dump, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 7, i32 noundef 18, ptr noundef null, ptr noundef nonnull @rtnl_bridge_getlink, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 7, i32 noundef 17, ptr noundef nonnull @rtnl_bridge_dellink, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 7, i32 noundef 19, ptr noundef nonnull @rtnl_bridge_setlink, ptr noundef null, i32 noundef 0)
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 94, ptr noundef nonnull @rtnl_stats_get, ptr noundef nonnull @rtnl_stats_dump, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_getlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [128 x i8], align 1
  %5 = alloca [59 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %5, i8 0, i32 236, i1 false), !annotation !16
  %6 = load i32, ptr %1, align 4
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_getlink_req.__msg) #18
  %9 = icmp eq ptr %2, null
  br i1 %9, label %152, label %10

10:                                               ; preds = %8
  store ptr @rtnl_valid_getlink_req.__msg, ptr %2, align 4
  br label %152

11:                                               ; preds = %3
  %12 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #18
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 4
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %17 = icmp eq ptr %2, null
  br i1 %17, label %152, label %18

18:                                               ; preds = %16
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %152

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %1, i32 32
  %21 = add i32 %14, -32
  %22 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 58, ptr noundef %20, i32 noundef %21, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %2) #18
  br label %57

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %1, i32 17
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %1, i32 18
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %1, i32 24
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %1, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %31, %27, %23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_getlink_req.__msg.9) #18
  %40 = icmp eq ptr %2, null
  br i1 %40, label %152, label %41

41:                                               ; preds = %39
  store ptr @rtnl_valid_getlink_req.__msg.9, ptr %2, align 4
  br label %152

42:                                               ; preds = %35
  %43 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %5, i32 noundef 58, ptr noundef nonnull @ifla_policy, ptr noundef %2) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %54, %42
  %46 = phi i32 [ %55, %54 ], [ 0, %42 ]
  %47 = getelementptr ptr, ptr %5, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  switch i32 %46, label %51 [
    i32 3, label %54
    i32 53, label %54
    i32 29, label %54
    i32 46, label %54
  ]

51:                                               ; preds = %50
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_getlink_req.__msg.10) #18
  %52 = icmp eq ptr %2, null
  br i1 %52, label %152, label %53

53:                                               ; preds = %51
  store ptr @rtnl_valid_getlink_req.__msg.10, ptr %2, align 4
  br label %152

54:                                               ; preds = %50, %50, %50, %50, %45
  %55 = add nuw nsw i32 %46, 1
  %56 = icmp eq i32 %55, 59
  br i1 %56, label %60, label %45

57:                                               ; preds = %42, %19
  %58 = phi i32 [ %43, %42 ], [ %22, %19 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %152, label %60

60:                                               ; preds = %57, %54
  %61 = getelementptr inbounds ptr, ptr %5, i32 19
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds ptr, ptr %5, i32 28
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_ensure_unique_netns.__msg) #18
  %69 = icmp eq ptr %2, null
  br i1 %69, label %152, label %70

70:                                               ; preds = %68
  store ptr @rtnl_ensure_unique_netns.__msg, ptr %2, align 4
  br label %152

71:                                               ; preds = %60
  %72 = getelementptr inbounds [59 x ptr], ptr %5, i32 0, i32 46
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %73, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %79 = load ptr, ptr %78, align 8
  %80 = call ptr @get_net_ns_by_id(ptr noundef nonnull @init_net, i32 noundef %77) #18
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.net, ptr %80, i32 0, i32 11
  %84 = load ptr, ptr %83, align 4
  %85 = call zeroext i1 @sk_ns_capable(ptr noundef %79, ptr noundef %84, i32 noundef 12) #18
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %91

88:                                               ; preds = %86, %82, %75
  %89 = phi ptr [ %80, %86 ], [ inttoptr (i32 -13 to ptr), %82 ], [ inttoptr (i32 -22 to ptr), %75 ]
  %90 = ptrtoint ptr %89 to i32
  br label %152

91:                                               ; preds = %86, %71
  %92 = phi ptr [ %80, %86 ], [ @init_net, %71 ]
  %93 = phi i32 [ %77, %86 ], [ -1, %71 ]
  %94 = getelementptr inbounds [59 x ptr], ptr %5, i32 0, i32 29
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %95, i32 4
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i32 [ %99, %97 ], [ 0, %91 ]
  %102 = getelementptr i8, ptr %1, i32 20
  %103 = load i32, ptr %102, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call ptr @__dev_get_by_index(ptr noundef nonnull %92, i32 noundef %103) #18
  br label %127

107:                                              ; preds = %100
  %108 = getelementptr inbounds [59 x ptr], ptr %5, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp ne ptr %109, null
  %111 = getelementptr inbounds [59 x ptr], ptr %5, i32 0, i32 53
  %112 = load ptr, ptr %111, align 4
  %113 = icmp ne ptr %112, null
  %114 = select i1 %110, i1 true, i1 %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false) #18, !annotation !16
  %116 = icmp eq ptr %109, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = call i32 @nla_strscpy(ptr noundef nonnull %4, ptr noundef nonnull %109, i32 noundef 16) #18
  br label %123

119:                                              ; preds = %115
  %120 = icmp eq ptr %112, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %119
  %122 = call i32 @nla_strscpy(ptr noundef nonnull %4, ptr noundef nonnull %112, i32 noundef 128) #18
  br label %123

123:                                              ; preds = %121, %117
  %124 = call ptr @__dev_get_by_name(ptr noundef nonnull %92, ptr noundef nonnull %4) #18
  br label %125

125:                                              ; preds = %123, %119
  %126 = phi ptr [ %124, %123 ], [ null, %119 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  br label %127

127:                                              ; preds = %125, %105
  %128 = phi ptr [ %106, %105 ], [ %126, %125 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %152, label %130

130:                                              ; preds = %127
  %131 = call fastcc i32 @if_nlmsg_size(ptr noundef nonnull %128, i32 noundef %101)
  %132 = add i32 %131, 19
  %133 = and i32 %132, -4
  %134 = call ptr @__alloc_skb(i32 noundef %133, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %135 = icmp eq ptr %134, null
  br i1 %135, label %152, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = call fastcc i32 @rtnl_fill_ifinfo(ptr noundef nonnull %134, ptr noundef nonnull %128, i32 noundef 16, i32 noundef %138, i32 noundef %140, i32 noundef 0, i32 noundef 0, i32 noundef %101, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %93)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = icmp eq i32 %141, -90
  br i1 %144, label %145, label %146, !prof !8

145:                                              ; preds = %143
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3640, i32 noundef 9, ptr noundef null) #18
  br label %146

146:                                              ; preds = %145, %143
  call void @kfree_skb_reason(ptr noundef nonnull %134, i32 noundef 0) #18
  br label %152

147:                                              ; preds = %136
  %148 = load i32, ptr %137, align 4
  %149 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %150 = call i32 @netlink_unicast(ptr noundef %149, ptr noundef nonnull %134, i32 noundef %148, i32 noundef 64) #18
  %151 = call i32 @llvm.smin.i32(i32 %150, i32 0) #18
  br label %152

152:                                              ; preds = %147, %146, %130, %127, %107, %88, %70, %68, %57, %53, %51, %41, %39, %18, %16, %10, %8
  %153 = phi i32 [ %90, %88 ], [ %58, %57 ], [ -22, %10 ], [ -22, %8 ], [ -22, %41 ], [ -22, %39 ], [ -22, %53 ], [ -22, %51 ], [ -22, %18 ], [ -22, %16 ], [ -95, %68 ], [ -95, %70 ], [ -19, %127 ], [ -105, %130 ], [ %141, %146 ], [ %151, %147 ], [ -22, %107 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %5) #18
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_dump_ifinfo(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [6 x ptr], align 4
  %4 = alloca [60 x i8], align 1
  %5 = alloca [59 x ptr], align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %5, i8 0, i32 236, i1 false), !annotation !16
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %16 = load i8, ptr %15, align 4, !range !26
  %17 = icmp eq i8 %16, 0
  %18 = load i32, ptr %9, align 4
  br i1 %17, label %49, label %19

19:                                               ; preds = %2
  %20 = icmp ult i32 %18, 32
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_ifinfo_req.__msg) #18
  %22 = icmp eq ptr %7, null
  br i1 %22, label %72, label %70

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %9, i32 17
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %9, i32 18
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %9, i32 24
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %9, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31, %27, %23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_ifinfo_req.__msg.13) #18
  %40 = icmp eq ptr %7, null
  br i1 %40, label %72, label %70

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %9, i32 20
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_ifinfo_req.__msg.14) #18
  %46 = icmp eq ptr %7, null
  br i1 %46, label %72, label %70

47:                                               ; preds = %41
  %48 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %5, i32 noundef 58, ptr noundef nonnull @ifla_policy, ptr noundef %7) #18
  br label %65

49:                                               ; preds = %2
  %50 = and i32 %18, -16
  %51 = icmp eq i32 %50, 16
  %52 = select i1 %51, i32 1, i32 16
  %53 = add nuw nsw i32 %52, 16
  %54 = icmp ult i32 %18, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %56 = icmp eq ptr %7, null
  br i1 %56, label %72, label %70

57:                                               ; preds = %49
  %58 = getelementptr i8, ptr %9, i32 16
  %59 = add nuw nsw i32 %52, 3
  %60 = and i32 %59, 20
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = add i32 %18, -16
  %63 = sub i32 %62, %60
  %64 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 58, ptr noundef %61, i32 noundef %63, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %7) #18
  br label %65

65:                                               ; preds = %57, %47
  %66 = phi i32 [ %48, %47 ], [ %64, %57 ]
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 1
  br label %76

70:                                               ; preds = %55, %45, %39, %21
  %71 = phi ptr [ @rtnl_valid_dump_ifinfo_req.__msg, %21 ], [ @rtnl_valid_dump_ifinfo_req.__msg.13, %39 ], [ @rtnl_valid_dump_ifinfo_req.__msg.14, %45 ], [ @__nlmsg_parse.__msg, %55 ]
  store ptr %71, ptr %7, align 4
  br label %72

72:                                               ; preds = %70, %65, %55, %45, %39, %21
  %73 = phi i32 [ %66, %65 ], [ -22, %21 ], [ -22, %39 ], [ -22, %45 ], [ -22, %55 ], [ -22, %70 ]
  %74 = load i8, ptr %15, align 4, !range !26
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %155, label %249

76:                                               ; preds = %142, %68
  %77 = phi ptr [ @init_net, %68 ], [ %147, %142 ]
  %78 = phi i32 [ 0, %68 ], [ %148, %142 ]
  %79 = phi i32 [ -1, %68 ], [ %146, %142 ]
  %80 = phi i32 [ 0, %68 ], [ %145, %142 ]
  %81 = phi ptr [ null, %68 ], [ %144, %142 ]
  %82 = phi i32 [ 0, %68 ], [ %143, %142 ]
  %83 = getelementptr [59 x ptr], ptr %5, i32 0, i32 %78
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %142, label %86

86:                                               ; preds = %76
  switch i32 %78, label %136 [
    i32 46, label %87
    i32 29, label %105
    i32 10, label %108
    i32 18, label %111
  ]

87:                                               ; preds = %86
  %88 = getelementptr i8, ptr %84, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %10, align 4
  %91 = call ptr @get_net_ns_by_id(ptr noundef nonnull @init_net, i32 noundef %89) #18
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.net, ptr %91, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = call zeroext i1 @sk_ns_capable(ptr noundef %90, ptr noundef %95, i32 noundef 12) #18
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %142

99:                                               ; preds = %97, %93, %87
  %100 = phi ptr [ %91, %97 ], [ inttoptr (i32 -13 to ptr), %93 ], [ inttoptr (i32 -22 to ptr), %87 ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_dump_ifinfo.__msg) #18
  %101 = icmp eq ptr %7, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store ptr @rtnl_dump_ifinfo.__msg, ptr %7, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = ptrtoint ptr %100 to i32
  br label %249

105:                                              ; preds = %86
  %106 = getelementptr i8, ptr %84, i32 4
  %107 = load i32, ptr %106, align 4
  br label %142

108:                                              ; preds = %86
  %109 = getelementptr i8, ptr %84, i32 4
  %110 = load i32, ptr %109, align 4
  br label %142

111:                                              ; preds = %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #18, !annotation !16
  %112 = getelementptr i8, ptr %84, i32 4
  %113 = load i16, ptr %84, align 2
  %114 = zext i16 %113 to i32
  %115 = add nsw i32 %114, -4
  %116 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 5, ptr noundef %112, i32 noundef %115, ptr noundef nonnull @ifla_info_policy, i32 noundef 0, ptr noundef null) #18
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %111
  %119 = load ptr, ptr %69, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %4, i8 0, i32 60, i1 false) #18, !annotation !16
  %122 = call i32 @nla_strscpy(ptr noundef nonnull %4, ptr noundef nonnull %119, i32 noundef 60) #18
  br label %123

123:                                              ; preds = %127, %121
  %124 = phi ptr [ @link_ops, %121 ], [ %125, %127 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, @link_ops
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.rtnl_link_ops, ptr %125, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = call i32 @strcmp(ptr noundef %129, ptr noundef nonnull %4) #18
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %123

132:                                              ; preds = %127, %123
  %133 = phi ptr [ %125, %127 ], [ null, %123 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #18
  br label %134

134:                                              ; preds = %132, %118, %111
  %135 = phi ptr [ null, %111 ], [ %133, %132 ], [ null, %118 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %142

136:                                              ; preds = %86
  %137 = load i8, ptr %15, align 4, !range !26
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_dump_ifinfo.__msg.12) #18
  %140 = icmp eq ptr %7, null
  br i1 %140, label %249, label %141

141:                                              ; preds = %139
  store ptr @rtnl_dump_ifinfo.__msg.12, ptr %7, align 4
  br label %249

142:                                              ; preds = %136, %134, %108, %105, %97, %76
  %143 = phi i32 [ %82, %136 ], [ %82, %134 ], [ %82, %108 ], [ %107, %105 ], [ %82, %97 ], [ %82, %76 ]
  %144 = phi ptr [ %81, %136 ], [ %135, %134 ], [ %81, %108 ], [ %81, %105 ], [ %81, %97 ], [ %81, %76 ]
  %145 = phi i32 [ %80, %136 ], [ %80, %134 ], [ %110, %108 ], [ %80, %105 ], [ %80, %97 ], [ %80, %76 ]
  %146 = phi i32 [ %79, %136 ], [ %79, %134 ], [ %79, %108 ], [ %79, %105 ], [ %89, %97 ], [ %79, %76 ]
  %147 = phi ptr [ %77, %136 ], [ %77, %134 ], [ %77, %108 ], [ %77, %105 ], [ %91, %97 ], [ %77, %76 ]
  %148 = add nuw nsw i32 %78, 1
  %149 = icmp eq i32 %148, 59
  br i1 %149, label %150, label %76

150:                                              ; preds = %142
  %151 = icmp ne i32 %145, 0
  %152 = icmp ne ptr %144, null
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %154, %150, %72
  %156 = phi i32 [ 0, %72 ], [ %143, %154 ], [ %143, %150 ]
  %157 = phi ptr [ null, %72 ], [ %144, %154 ], [ null, %150 ]
  %158 = phi i32 [ 2, %72 ], [ 34, %154 ], [ 2, %150 ]
  %159 = phi i32 [ 0, %72 ], [ %145, %154 ], [ 0, %150 ]
  %160 = phi i32 [ -1, %72 ], [ %146, %154 ], [ %146, %150 ]
  %161 = phi ptr [ @init_net, %72 ], [ %147, %154 ], [ %147, %150 ]
  %162 = icmp slt i32 %12, 256
  br i1 %162, label %163, label %223

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.net, ptr %161, i32 0, i32 24
  %165 = icmp eq i32 %159, 0
  %166 = icmp eq i32 %159, -1
  %167 = icmp eq ptr %157, null
  %168 = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  br label %169

169:                                              ; preds = %219, %163
  %170 = phi i32 [ %12, %163 ], [ %221, %219 ]
  %171 = phi i32 [ %14, %163 ], [ 0, %219 ]
  %172 = load ptr, ptr %164, align 4
  %173 = getelementptr %struct.hlist_head, ptr %172, i32 %170
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  %176 = getelementptr i8, ptr %174, i32 -560
  %177 = icmp eq ptr %176, null
  %178 = or i1 %175, %177
  br i1 %178, label %219, label %179

179:                                              ; preds = %211, %169
  %180 = phi ptr [ %216, %211 ], [ %176, %169 ]
  %181 = phi i32 [ %212, %211 ], [ 0, %169 ]
  br i1 %165, label %191, label %182

182:                                              ; preds = %179
  %183 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %180) #18
  %184 = icmp eq ptr %183, null
  br i1 %166, label %185, label %186

185:                                              ; preds = %182
  br i1 %184, label %191, label %211

186:                                              ; preds = %182
  br i1 %184, label %211, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 17
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %159
  br i1 %190, label %191, label %211

191:                                              ; preds = %187, %185, %179
  br i1 %167, label %198, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.net_device, ptr %180, i32 0, i32 114
  %194 = load ptr, ptr %193, align 4
  %195 = icmp ne ptr %194, %157
  %196 = icmp slt i32 %181, %171
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %211, label %200

198:                                              ; preds = %191
  %199 = icmp slt i32 %181, %171
  br i1 %199, label %211, label %200

200:                                              ; preds = %198, %192
  %201 = load ptr, ptr %1, align 4
  %202 = getelementptr inbounds %struct.sk_buff, ptr %201, i32 0, i32 3, i32 12
  %203 = load i32, ptr %202, align 4
  %204 = load i32, ptr %168, align 4
  %205 = call fastcc i32 @rtnl_fill_ifinfo(ptr noundef %0, ptr noundef nonnull %180, i32 noundef 16, i32 noundef %203, i32 noundef %204, i32 noundef 0, i32 noundef %158, i32 noundef %156, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %160)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %209 = load i32, ptr %208, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %228, label %223, !prof !8

211:                                              ; preds = %200, %198, %192, %187, %186, %185
  %212 = add i32 %181, 1
  %213 = getelementptr inbounds %struct.net_device, ptr %180, i32 0, i32 85
  %214 = load ptr, ptr %213, align 16
  %215 = icmp eq ptr %214, null
  %216 = getelementptr i8, ptr %214, i32 -560
  %217 = icmp eq ptr %216, null
  %218 = or i1 %215, %217
  br i1 %218, label %219, label %179

219:                                              ; preds = %211, %169
  %220 = phi i32 [ 0, %169 ], [ %212, %211 ]
  %221 = add nsw i32 %170, 1
  %222 = icmp eq i32 %221, 256
  br i1 %222, label %223, label %169

223:                                              ; preds = %219, %207, %155
  %224 = phi i32 [ %170, %207 ], [ %12, %155 ], [ 256, %219 ]
  %225 = phi i32 [ %181, %207 ], [ 0, %155 ], [ %220, %219 ]
  %226 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %227 = load i32, ptr %226, align 8
  br label %228

228:                                              ; preds = %223, %207
  %229 = phi i32 [ %224, %223 ], [ %170, %207 ]
  %230 = phi i32 [ %225, %223 ], [ %181, %207 ]
  %231 = phi i32 [ %227, %223 ], [ %205, %207 ]
  store i32 %230, ptr %13, align 4
  store i32 %229, ptr %11, align 4
  %232 = getelementptr inbounds %struct.net, ptr %161, i32 0, i32 3
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %233, ptr %234, align 4
  %235 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  %238 = icmp eq i32 %233, %236
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %247, label %240

240:                                              ; preds = %228
  %241 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.nlmsghdr, ptr %242, i32 0, i32 2
  %244 = load i16, ptr %243, align 2
  %245 = or i16 %244, 16
  store i16 %245, ptr %243, align 2
  %246 = load i32, ptr %234, align 4
  br label %247

247:                                              ; preds = %240, %228
  %248 = phi i32 [ %233, %228 ], [ %246, %240 ]
  store i32 %248, ptr %235, align 4
  br label %249

249:                                              ; preds = %247, %141, %139, %103, %72
  %250 = phi i32 [ %104, %103 ], [ %73, %72 ], [ -22, %141 ], [ -22, %139 ], [ %231, %247 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %5) #18
  ret i32 %250
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_setlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [59 x ptr], align 4
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %4, i8 0, i32 236, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !16
  %6 = load i32, ptr %1, align 4
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %9 = icmp eq ptr %2, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %8
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %61

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %1, i32 32
  %13 = add i32 %6, -32
  %14 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 58, ptr noundef %12, i32 noundef %13, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %2) #18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %61, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds ptr, ptr %4, i32 46
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds ptr, ptr %4, i32 19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds ptr, ptr %4, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %19, label %28, label %26

26:                                               ; preds = %16
  %27 = select i1 %22, i1 %25, i1 false
  br i1 %27, label %33, label %30

28:                                               ; preds = %16
  %29 = select i1 %22, i1 true, i1 %25
  br i1 %29, label %33, label %30

30:                                               ; preds = %28, %26
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_ensure_unique_netns.__msg.11) #18
  %31 = icmp eq ptr %2, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %30
  store ptr @rtnl_ensure_unique_netns.__msg.11, ptr %2, align 4
  br label %61

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds [59 x ptr], ptr %4, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 @nla_strscpy(ptr noundef nonnull %5, ptr noundef nonnull %35, i32 noundef 16) #18
  br label %40

39:                                               ; preds = %33
  store i8 0, ptr %5, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %1, i32 16
  %42 = getelementptr i8, ptr %1, i32 20
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %43) #18
  br label %56

47:                                               ; preds = %40
  %48 = load ptr, ptr %34, align 4
  %49 = icmp ne ptr %48, null
  %50 = getelementptr inbounds [59 x ptr], ptr %4, i32 0, i32 53
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ne ptr %51, null
  %53 = select i1 %49, i1 true, i1 %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %5) #18
  br label %56

56:                                               ; preds = %54, %45
  %57 = phi ptr [ %46, %45 ], [ %55, %54 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call fastcc i32 @do_setlink(ptr noundef %0, ptr noundef nonnull %57, ptr noundef %41, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  br label %61

61:                                               ; preds = %59, %56, %47, %32, %30, %11, %10, %8
  %62 = phi i32 [ %14, %11 ], [ %60, %59 ], [ -22, %47 ], [ -19, %56 ], [ -22, %30 ], [ -22, %32 ], [ -22, %10 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %4) #18
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_newlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [41 x ptr], align 4
  %5 = alloca [6 x ptr], align 4
  %6 = alloca [59 x ptr], align 4
  %7 = alloca [60 x i8], align 1
  %8 = alloca [16 x i8], align 1
  %9 = alloca %struct.list_head, align 8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 204) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %440, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(164) %4, i8 0, i32 164, i1 false) #18, !annotation !16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #18, !annotation !16
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %6, i8 0, i32 236, i1 false) #18, !annotation !16
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %7, i8 0, i32 60, i1 false) #18, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #18, !annotation !16
  %14 = getelementptr i8, ptr %1, i32 32
  %15 = getelementptr inbounds ptr, ptr %6, i32 46
  %16 = getelementptr inbounds ptr, ptr %6, i32 19
  %17 = getelementptr inbounds ptr, ptr %6, i32 28
  %18 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 3
  %19 = getelementptr i8, ptr %1, i32 20
  %20 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 53
  %21 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 18
  %22 = getelementptr inbounds [6 x ptr], ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds [6 x ptr], ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds [6 x ptr], ptr %5, i32 0, i32 5
  %25 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %26 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 14
  %27 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 12
  br label %28

28:                                               ; preds = %263, %13
  %29 = load i32, ptr %1, align 4
  %30 = icmp ult i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %32 = icmp eq ptr %2, null
  br i1 %32, label %438, label %33

33:                                               ; preds = %31
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %438

34:                                               ; preds = %28
  %35 = add i32 %29, -32
  %36 = call i32 @__nla_parse(ptr noundef nonnull %6, i32 noundef 58, ptr noundef %14, i32 noundef %35, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %2) #18
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %438, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %15, align 4
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr %16, align 4
  %42 = icmp eq ptr %41, null
  %43 = load ptr, ptr %17, align 4
  %44 = icmp eq ptr %43, null
  br i1 %40, label %47, label %45

45:                                               ; preds = %38
  %46 = select i1 %42, i1 %44, i1 false
  br i1 %46, label %52, label %49

47:                                               ; preds = %38
  %48 = select i1 %42, i1 true, i1 %44
  br i1 %48, label %52, label %49

49:                                               ; preds = %47, %45
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_ensure_unique_netns.__msg.11) #18
  %50 = icmp eq ptr %2, null
  br i1 %50, label %438, label %51

51:                                               ; preds = %49
  store ptr @rtnl_ensure_unique_netns.__msg.11, ptr %2, align 4
  br label %438

52:                                               ; preds = %47, %45
  %53 = load ptr, ptr %18, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 @nla_strscpy(ptr noundef nonnull %8, ptr noundef nonnull %53, i32 noundef 16) #18
  br label %58

57:                                               ; preds = %52
  store i8 0, ptr %8, align 1
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, ptr %19, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %59) #18
  br label %71

63:                                               ; preds = %58
  %64 = load ptr, ptr %18, align 4
  %65 = icmp ne ptr %64, null
  %66 = load ptr, ptr %20, align 4
  %67 = icmp ne ptr %66, null
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %8) #18
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %62, %61 ], [ %70, %69 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %72) #18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 114
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %74, %71, %63
  %81 = phi i1 [ false, %77 ], [ false, %74 ], [ true, %71 ], [ true, %63 ]
  %82 = phi ptr [ %72, %77 ], [ %72, %74 ], [ null, %71 ], [ null, %63 ]
  %83 = phi ptr [ %79, %77 ], [ null, %74 ], [ null, %71 ], [ null, %63 ]
  %84 = phi ptr [ %75, %77 ], [ null, %74 ], [ null, %71 ], [ null, %63 ]
  %85 = call fastcc i32 @validate_linkmsg(ptr noundef %82, ptr noundef nonnull %6, ptr noundef %2) #18
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %438, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %21, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr i8, ptr %88, i32 4
  %92 = load i16, ptr %88, align 2
  %93 = zext i16 %92 to i32
  %94 = add nsw i32 %93, -4
  %95 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 5, ptr noundef %91, i32 noundef %94, ptr noundef nonnull @ifla_info_policy, i32 noundef 0, ptr noundef null) #18
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %438, label %98

97:                                               ; preds = %87
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #18
  br label %112

98:                                               ; preds = %90
  %99 = load ptr, ptr %22, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %98
  %102 = call i32 @nla_strscpy(ptr noundef nonnull %7, ptr noundef nonnull %99, i32 noundef 60) #18
  br label %103

103:                                              ; preds = %107, %101
  %104 = phi ptr [ @link_ops, %101 ], [ %105, %107 ]
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, @link_ops
  br i1 %106, label %141, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.rtnl_link_ops, ptr %105, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef nonnull %7) #18
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %103

112:                                              ; preds = %98, %97
  store i8 0, ptr %7, align 1
  br label %141

113:                                              ; preds = %107
  %114 = icmp eq ptr %105, null
  br i1 %114, label %141, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.rtnl_link_ops, ptr %105, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %117, 50
  br i1 %118, label %438, label %119

119:                                              ; preds = %115
  %120 = icmp ne i32 %117, 0
  %121 = load ptr, ptr %23, align 4
  %122 = icmp ne ptr %121, null
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.rtnl_link_ops, ptr %105, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %121, i32 4
  %128 = load i16, ptr %121, align 2
  %129 = zext i16 %128 to i32
  %130 = add nsw i32 %129, -4
  %131 = call i32 @__nla_parse(ptr noundef nonnull %11, i32 noundef %117, ptr noundef %127, i32 noundef %130, ptr noundef %126, i32 noundef 0, ptr noundef %2) #18
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %438, label %133

133:                                              ; preds = %124, %119
  %134 = phi ptr [ null, %119 ], [ %11, %124 ]
  %135 = getelementptr inbounds %struct.rtnl_link_ops, ptr %105, i32 0, i32 8
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = call i32 %136(ptr noundef nonnull %6, ptr noundef %134, ptr noundef %2) #18
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %438, label %141

141:                                              ; preds = %138, %133, %113, %112, %103
  %142 = phi i1 [ false, %138 ], [ false, %133 ], [ true, %113 ], [ true, %112 ], [ true, %103 ]
  %143 = phi ptr [ %105, %138 ], [ %105, %133 ], [ null, %113 ], [ null, %112 ], [ null, %103 ]
  %144 = phi ptr [ %134, %138 ], [ %134, %133 ], [ null, %113 ], [ null, %112 ], [ null, %103 ]
  %145 = icmp eq ptr %83, null
  br i1 %145, label %164, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.rtnl_link_ops, ptr %83, i32 0, i32 18
  %148 = load i32, ptr %147, align 4
  %149 = icmp ugt i32 %148, 40
  br i1 %149, label %438, label %150

150:                                              ; preds = %146
  %151 = icmp ne i32 %148, 0
  %152 = load ptr, ptr %24, align 4
  %153 = icmp ne ptr %152, null
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.rtnl_link_ops, ptr %83, i32 0, i32 19
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %152, i32 4
  %159 = load i16, ptr %152, align 2
  %160 = zext i16 %159 to i32
  %161 = add nsw i32 %160, -4
  %162 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef %148, ptr noundef %158, i32 noundef %161, ptr noundef %157, i32 noundef 0, ptr noundef %2) #18
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %438, label %164

164:                                              ; preds = %155, %150, %141
  %165 = phi ptr [ null, %150 ], [ null, %141 ], [ %4, %155 ]
  br i1 %81, label %205, label %166

166:                                              ; preds = %164
  %167 = getelementptr i8, ptr %1, i32 16
  %168 = load i16, ptr %25, align 2
  %169 = zext i16 %168 to i32
  %170 = and i32 %169, 512
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %438

172:                                              ; preds = %166
  %173 = and i32 %169, 256
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %438

175:                                              ; preds = %172
  %176 = load ptr, ptr %23, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %190, label %178

178:                                              ; preds = %175
  br i1 %142, label %438, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 114
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %143, %181
  br i1 %182, label %183, label %438

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.rtnl_link_ops, ptr %143, i32 0, i32 10
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %438, label %187

187:                                              ; preds = %183
  %188 = call i32 %185(ptr noundef nonnull %82, ptr noundef nonnull %6, ptr noundef %144, ptr noundef %2) #18
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %438, label %190

190:                                              ; preds = %187, %175
  %191 = phi i32 [ 0, %175 ], [ 3, %187 ]
  %192 = load ptr, ptr %24, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %202, label %194

194:                                              ; preds = %190
  br i1 %145, label %438, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.rtnl_link_ops, ptr %83, i32 0, i32 20
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %438, label %199

199:                                              ; preds = %195
  %200 = call i32 %197(ptr noundef %84, ptr noundef nonnull %82, ptr noundef nonnull %6, ptr noundef %165, ptr noundef %2) #18
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %438, label %202

202:                                              ; preds = %199, %190
  %203 = phi i32 [ %191, %190 ], [ 3, %199 ]
  %204 = call fastcc i32 @do_setlink(ptr noundef %0, ptr noundef nonnull %82, ptr noundef %167, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %203) #18
  br label %438

205:                                              ; preds = %164
  %206 = load i16, ptr %25, align 2
  %207 = and i16 %206, 1024
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %234

209:                                              ; preds = %205
  %210 = getelementptr i8, ptr %1, i32 16
  %211 = load i32, ptr %19, align 4
  %212 = icmp eq i32 %211, 0
  %213 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 27
  %214 = load ptr, ptr %213, align 4
  %215 = icmp ne ptr %214, null
  %216 = select i1 %212, i1 %215, i1 false
  br i1 %216, label %217, label %438

217:                                              ; preds = %209
  %218 = getelementptr i8, ptr %214, i32 4
  %219 = load i32, ptr %218, align 4
  %220 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %221 = icmp eq ptr %220, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %221, label %438, label %222

222:                                              ; preds = %232, %217
  %223 = phi ptr [ %224, %232 ], [ %220, %217 ]
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr i8, ptr %223, i32 172
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, %219
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = getelementptr i8, ptr %223, i32 -40
  %230 = call fastcc i32 @do_setlink(ptr noundef %0, ptr noundef %229, ptr noundef %210, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #18
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %438, label %232

232:                                              ; preds = %228, %222
  %233 = icmp eq ptr %224, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %233, label %438, label %222

234:                                              ; preds = %205
  %235 = load ptr, ptr %26, align 4
  %236 = icmp ne ptr %235, null
  %237 = load ptr, ptr %27, align 4
  %238 = icmp ne ptr %237, null
  %239 = select i1 %236, i1 true, i1 %238
  br i1 %239, label %438, label %240

240:                                              ; preds = %234
  br i1 %142, label %241, label %268

241:                                              ; preds = %240
  %242 = load i8, ptr %7, align 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %265, label %244

244:                                              ; preds = %241
  %245 = load ptr, ptr @defer_kfree_skb_list, align 4
  store ptr null, ptr @defer_kfree_skb_list, align 4
  call void @mutex_unlock(ptr noundef nonnull @rtnl_mutex) #18
  %246 = icmp eq ptr %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %247, %244
  %248 = phi ptr [ %249, %247 ], [ %245, %244 ]
  %249 = load ptr, ptr %248, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %248, i32 noundef 0) #18
  %250 = call i32 @__cond_resched() #18
  %251 = icmp eq ptr %249, null
  br i1 %251, label %252, label %247

252:                                              ; preds = %247, %244
  %253 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19, ptr noundef nonnull %7) #18
  call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  br label %254

254:                                              ; preds = %258, %252
  %255 = phi ptr [ @link_ops, %252 ], [ %256, %258 ]
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, @link_ops
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.rtnl_link_ops, ptr %256, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = call i32 @strcmp(ptr noundef %260, ptr noundef nonnull %7) #18
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %254

263:                                              ; preds = %258
  %264 = icmp eq ptr %256, null
  br i1 %264, label %265, label %28

265:                                              ; preds = %263, %254, %241
  call void @do_trace_netlink_extack(ptr noundef nonnull @__rtnl_newlink.__msg) #18
  %266 = icmp eq ptr %2, null
  br i1 %266, label %438, label %267

267:                                              ; preds = %265
  store ptr @__rtnl_newlink.__msg, ptr %2, align 4
  br label %438

268:                                              ; preds = %240
  %269 = getelementptr i8, ptr %1, i32 16
  %270 = getelementptr inbounds %struct.rtnl_link_ops, ptr %143, i32 0, i32 3
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.rtnl_link_ops, ptr %143, i32 0, i32 4
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %438, label %277

277:                                              ; preds = %273, %268
  %278 = load i8, ptr %8, align 1
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.rtnl_link_ops, ptr %143, i32 0, i32 1
  %282 = load ptr, ptr %281, align 4
  %283 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull @.str.20, ptr noundef %282) #18
  br label %284

284:                                              ; preds = %280, %277
  %285 = phi i8 [ 3, %277 ], [ 1, %280 ]
  %286 = load ptr, ptr %16, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load ptr, ptr %17, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %310

291:                                              ; preds = %284
  %292 = getelementptr i8, ptr %286, i32 4
  %293 = load i32, ptr %292, align 4
  %294 = call ptr @get_net_ns_by_pid(i32 noundef %293) #18
  br label %303

295:                                              ; preds = %288
  %296 = load ptr, ptr %15, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %303, label %298

298:                                              ; preds = %295
  %299 = getelementptr i8, ptr %296, i32 4
  %300 = load i32, ptr %299, align 4
  %301 = call ptr @get_net_ns_by_id(ptr noundef nonnull @init_net, i32 noundef %300) #18
  %302 = icmp eq ptr %301, null
  br i1 %302, label %310, label %303

303:                                              ; preds = %298, %295, %291
  %304 = phi ptr [ %294, %291 ], [ @init_net, %295 ], [ %301, %298 ]
  %305 = icmp ugt ptr %304, inttoptr (i32 -4096 to ptr)
  br i1 %305, label %310, label %306

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.net, ptr %304, i32 0, i32 11
  %308 = load ptr, ptr %307, align 4
  %309 = call zeroext i1 @netlink_ns_capable(ptr noundef %0, ptr noundef %308, i32 noundef 12) #18
  br i1 %309, label %313, label %310

310:                                              ; preds = %306, %303, %298, %288
  %311 = phi ptr [ inttoptr (i32 -1 to ptr), %306 ], [ inttoptr (i32 -22 to ptr), %298 ], [ inttoptr (i32 -22 to ptr), %288 ], [ %304, %303 ]
  %312 = ptrtoint ptr %311 to i32
  br label %438

313:                                              ; preds = %306
  %314 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 37
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %329, label %317

317:                                              ; preds = %313
  %318 = getelementptr i8, ptr %315, i32 4
  %319 = load i32, ptr %318, align 4
  %320 = call ptr @get_net_ns_by_id(ptr noundef %304, i32 noundef %319) #18
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  call void @do_trace_netlink_extack(ptr noundef nonnull @__rtnl_newlink.__msg.21) #18
  %323 = icmp eq ptr %2, null
  br i1 %323, label %438, label %324

324:                                              ; preds = %322
  store ptr @__rtnl_newlink.__msg.21, ptr %2, align 4
  br label %438

325:                                              ; preds = %317
  %326 = getelementptr inbounds %struct.net, ptr %320, i32 0, i32 11
  %327 = load ptr, ptr %326, align 4
  %328 = call zeroext i1 @netlink_ns_capable(ptr noundef %0, ptr noundef %327, i32 noundef 12) #18
  br i1 %328, label %329, label %438

329:                                              ; preds = %325, %313
  %330 = phi ptr [ null, %313 ], [ %320, %325 ]
  %331 = icmp eq ptr %330, null
  %332 = call ptr @rtnl_create_link(ptr undef, ptr noundef nonnull %8, i8 noundef zeroext %285, ptr noundef nonnull %143, ptr noundef nonnull %6, ptr noundef %2) #18
  %333 = icmp ugt ptr %332, inttoptr (i32 -4096 to ptr)
  br i1 %333, label %334, label %336

334:                                              ; preds = %329
  %335 = ptrtoint ptr %332 to i32
  br label %438

336:                                              ; preds = %329
  %337 = load i32, ptr %19, align 4
  %338 = getelementptr inbounds %struct.net_device, ptr %332, i32 0, i32 17
  store i32 %337, ptr %338, align 4
  %339 = getelementptr inbounds %struct.rtnl_link_ops, ptr %143, i32 0, i32 9
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %336
  %343 = select i1 %331, ptr @init_net, ptr %330
  %344 = call i32 %340(ptr noundef %343, ptr noundef %332, ptr noundef nonnull %6, ptr noundef %144, ptr noundef %2) #18
  br label %347

345:                                              ; preds = %336
  %346 = call i32 @register_netdevice(ptr noundef %332) #18
  br label %347

347:                                              ; preds = %345, %342
  %348 = phi i32 [ %344, %342 ], [ %346, %345 ]
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  call void @free_netdev(ptr noundef %332) #18
  br label %438

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.net_device, ptr %332, i32 0, i32 14
  %353 = load i32, ptr %352, align 8
  %354 = icmp eq ptr %269, null
  br i1 %354, label %379, label %355

355:                                              ; preds = %351
  %356 = getelementptr i8, ptr %1, i32 24
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 0
  %359 = getelementptr i8, ptr %1, i32 28
  %360 = load i32, ptr %359, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %358, label %362, label %363

362:                                              ; preds = %355
  br i1 %361, label %379, label %364

363:                                              ; preds = %355
  br i1 %361, label %375, label %364

364:                                              ; preds = %363, %362
  %365 = and i32 %360, %357
  %366 = and i32 %353, -769
  %367 = getelementptr inbounds %struct.net_device, ptr %332, i32 0, i32 18
  %368 = load i16, ptr %367, align 64
  %369 = and i16 %368, 768
  %370 = zext i16 %369 to i32
  %371 = or i32 %366, %370
  %372 = xor i32 %360, -1
  %373 = and i32 %371, %372
  %374 = or i32 %373, %365
  br label %375

375:                                              ; preds = %364, %363
  %376 = phi i32 [ %374, %364 ], [ %357, %363 ]
  %377 = call i32 @__dev_change_flags(ptr noundef %332, i32 noundef %376, ptr noundef null) #18
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %429, label %379

379:                                              ; preds = %375, %362, %351
  %380 = getelementptr inbounds %struct.net_device, ptr %332, i32 0, i32 104
  %381 = load i16, ptr %380, align 2
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = load i32, ptr %352, align 8
  %385 = xor i32 %384, %353
  br label %387

386:                                              ; preds = %379
  store i16 0, ptr %380, align 2
  br label %387

387:                                              ; preds = %386, %383
  %388 = phi i32 [ %385, %383 ], [ -1, %386 ]
  call void @__dev_notify_flags(ptr noundef %332, i32 noundef %353, i32 noundef %388) #18
  br i1 %331, label %392, label %389

389:                                              ; preds = %387
  %390 = call i32 @__dev_change_net_namespace(ptr noundef %332, ptr noundef %304, ptr noundef nonnull %8, i32 noundef 0) #18
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %429, label %392

392:                                              ; preds = %389, %387
  %393 = phi i32 [ %390, %389 ], [ 0, %387 ]
  %394 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 10
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %438, label %397

397:                                              ; preds = %392
  %398 = getelementptr i8, ptr %395, i32 4
  %399 = load i32, ptr %398, align 4
  %400 = call ptr @netdev_master_upper_dev_get(ptr noundef %332) #18
  %401 = icmp eq ptr %400, null
  br i1 %401, label %415, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.net_device, ptr %400, i32 0, i32 17
  %404 = load i32, ptr %403, align 4
  %405 = icmp eq i32 %404, %399
  br i1 %405, label %438, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.net_device, ptr %400, i32 0, i32 16
  %408 = load ptr, ptr %407, align 8
  %409 = getelementptr inbounds %struct.net_device_ops, ptr %408, i32 0, i32 42
  %410 = load ptr, ptr %409, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %429, label %412

412:                                              ; preds = %406
  %413 = call i32 %410(ptr noundef nonnull %400, ptr noundef %332) #18
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %429

415:                                              ; preds = %412, %397
  %416 = icmp eq i32 %399, 0
  br i1 %416, label %438, label %417

417:                                              ; preds = %415
  %418 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %399) #18
  %419 = icmp eq ptr %418, null
  br i1 %419, label %429, label %420

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct.net_device, ptr %418, i32 0, i32 16
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.net_device_ops, ptr %422, i32 0, i32 41
  %424 = load ptr, ptr %423, align 4
  %425 = icmp eq ptr %424, null
  br i1 %425, label %429, label %426

426:                                              ; preds = %420
  %427 = call i32 %424(ptr noundef nonnull %418, ptr noundef %332, ptr noundef %2) #18
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %438, label %429

429:                                              ; preds = %426, %420, %417, %412, %406, %389, %375
  %430 = phi i32 [ %390, %389 ], [ %377, %375 ], [ -95, %420 ], [ %427, %426 ], [ -22, %417 ], [ -95, %406 ], [ %413, %412 ]
  %431 = load ptr, ptr %339, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %437, label %433

433:                                              ; preds = %429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %9, ptr %9, align 8
  %434 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %434, align 4
  %435 = getelementptr inbounds %struct.rtnl_link_ops, ptr %143, i32 0, i32 11
  %436 = load ptr, ptr %435, align 4
  call void %436(ptr noundef %332, ptr noundef nonnull %9) #18
  call void @unregister_netdevice_many(ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %438

437:                                              ; preds = %429
  call void @unregister_netdevice_queue(ptr noundef %332, ptr noundef null) #18
  br label %438

438:                                              ; preds = %437, %433, %426, %415, %402, %392, %350, %334, %325, %324, %322, %310, %273, %267, %265, %234, %232, %228, %217, %209, %202, %199, %195, %194, %187, %183, %179, %178, %172, %166, %155, %146, %138, %124, %115, %90, %80, %51, %49, %34, %33, %31
  %439 = phi i32 [ %312, %310 ], [ %204, %202 ], [ -17, %166 ], [ -95, %172 ], [ -95, %183 ], [ -95, %179 ], [ -95, %178 ], [ %188, %187 ], [ -95, %195 ], [ -95, %194 ], [ %200, %199 ], [ -19, %209 ], [ -95, %267 ], [ -95, %265 ], [ -95, %273 ], [ -22, %49 ], [ -22, %51 ], [ 0, %217 ], [ -22, %33 ], [ -22, %31 ], [ -22, %324 ], [ -22, %322 ], [ -1, %325 ], [ %335, %334 ], [ %348, %350 ], [ %430, %433 ], [ %430, %437 ], [ %393, %392 ], [ 0, %402 ], [ 0, %426 ], [ 0, %415 ], [ 0, %232 ], [ %230, %228 ], [ %36, %34 ], [ %85, %80 ], [ %95, %90 ], [ -22, %115 ], [ %131, %124 ], [ %139, %138 ], [ -22, %146 ], [ %162, %155 ], [ -95, %234 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %4) #18
  call void @kfree(ptr noundef nonnull %11) #18
  br label %440

440:                                              ; preds = %438, %3
  %441 = phi i32 [ %439, %438 ], [ -12, %3 ]
  ret i32 %441
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_dellink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca [128 x i8], align 1
  %7 = alloca [59 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %7, i8 0, i32 236, i1 false), !annotation !16
  %8 = load i32, ptr %1, align 4
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %11 = icmp eq ptr %2, null
  br i1 %11, label %154, label %12

12:                                               ; preds = %10
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %154

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %1, i32 32
  %15 = add i32 %8, -32
  %16 = call i32 @__nla_parse(ptr noundef nonnull %7, i32 noundef 58, ptr noundef %14, i32 noundef %15, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %2) #18
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %154, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %7, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds ptr, ptr %7, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_ensure_unique_netns.__msg) #18
  %27 = icmp eq ptr %2, null
  br i1 %27, label %154, label %28

28:                                               ; preds = %26
  store ptr @rtnl_ensure_unique_netns.__msg, ptr %2, align 4
  br label %154

29:                                               ; preds = %18
  %30 = getelementptr inbounds [59 x ptr], ptr %7, i32 0, i32 46
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %37 = load ptr, ptr %36, align 8
  %38 = call ptr @get_net_ns_by_id(ptr noundef nonnull @init_net, i32 noundef %35) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = call zeroext i1 @sk_ns_capable(ptr noundef %37, ptr noundef %42, i32 noundef 12) #18
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %44, %40, %33
  %47 = phi ptr [ %38, %44 ], [ inttoptr (i32 -13 to ptr), %40 ], [ inttoptr (i32 -22 to ptr), %33 ]
  %48 = ptrtoint ptr %47 to i32
  br label %154

49:                                               ; preds = %44, %29
  %50 = phi ptr [ %38, %44 ], [ @init_net, %29 ]
  %51 = getelementptr i8, ptr %1, i32 20
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call ptr @__dev_get_by_index(ptr noundef nonnull %50, i32 noundef %52) #18
  br label %130

56:                                               ; preds = %49
  %57 = getelementptr inbounds [59 x ptr], ptr %7, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp ne ptr %58, null
  %60 = getelementptr inbounds [59 x ptr], ptr %7, i32 0, i32 53
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ne ptr %61, null
  %63 = select i1 %59, i1 true, i1 %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %6, i8 0, i32 128, i1 false) #18, !annotation !16
  %65 = icmp eq ptr %58, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = call i32 @nla_strscpy(ptr noundef nonnull %6, ptr noundef nonnull %58, i32 noundef 16) #18
  br label %72

68:                                               ; preds = %64
  %69 = icmp eq ptr %61, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = call i32 @nla_strscpy(ptr noundef nonnull %6, ptr noundef nonnull %61, i32 noundef 128) #18
  br label %72

72:                                               ; preds = %70, %66
  %73 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %6) #18
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi ptr [ %73, %72 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #18
  br label %130

76:                                               ; preds = %56
  %77 = getelementptr inbounds [59 x ptr], ptr %7, i32 0, i32 27
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %154, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %78, i32 4
  %82 = load i32, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr %5, ptr %5, align 8
  %83 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %83, align 4
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %128, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.net, ptr %50, i32 0, i32 16
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %128, label %89

89:                                               ; preds = %108, %85
  %90 = phi ptr [ %109, %108 ], [ %87, %85 ]
  %91 = phi i1 [ true, %108 ], [ false, %85 ]
  br label %92

92:                                               ; preds = %105, %89
  %93 = phi ptr [ %106, %105 ], [ %90, %89 ]
  %94 = getelementptr i8, ptr %93, i32 172
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, %82
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = getelementptr i8, ptr %93, i32 1140
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %128, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.rtnl_link_ops, ptr %99, i32 0, i32 11
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %128, label %108

105:                                              ; preds = %92
  %106 = load ptr, ptr %93, align 8
  %107 = icmp eq ptr %106, %86
  br i1 %107, label %111, label %92

108:                                              ; preds = %101
  %109 = load ptr, ptr %93, align 8
  %110 = icmp eq ptr %109, %86
  br i1 %110, label %112, label %89

111:                                              ; preds = %105
  br i1 %91, label %112, label %128

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %125, %112
  %114 = phi ptr [ %115, %125 ], [ %87, %112 ]
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr i8, ptr %114, i32 172
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %82
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = getelementptr i8, ptr %114, i32 -40
  %121 = getelementptr i8, ptr %114, i32 1140
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.rtnl_link_ops, ptr %122, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  call void %124(ptr noundef %120, ptr noundef nonnull %5) #18
  br label %125

125:                                              ; preds = %119, %113
  %126 = icmp eq ptr %115, %86
  br i1 %126, label %127, label %113

127:                                              ; preds = %125
  call void @unregister_netdevice_many(ptr noundef nonnull %5) #18
  br label %128

128:                                              ; preds = %127, %111, %101, %97, %85, %80
  %129 = phi i32 [ 0, %127 ], [ -1, %80 ], [ -19, %111 ], [ -19, %85 ], [ -95, %97 ], [ -95, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %133

130:                                              ; preds = %74, %54
  %131 = phi ptr [ %55, %54 ], [ %75, %74 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130, %128
  %134 = phi i32 [ %129, %128 ], [ -22, %130 ]
  %135 = getelementptr inbounds [59 x ptr], ptr %7, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, ptr %51, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138, %133
  br label %154

142:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr %4, ptr %4, align 8
  %143 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %143, align 4
  %144 = getelementptr inbounds %struct.net_device, ptr %131, i32 0, i32 114
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.rtnl_link_ops, ptr %145, i32 0, i32 11
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call void %149(ptr noundef nonnull %131, ptr noundef nonnull %4) #18
  call void @unregister_netdevice_many(ptr noundef nonnull %4) #18
  br label %152

152:                                              ; preds = %151, %147, %142
  %153 = phi i32 [ 0, %151 ], [ -95, %147 ], [ -95, %142 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %154

154:                                              ; preds = %152, %141, %138, %76, %46, %28, %26, %13, %12, %10
  %155 = phi i32 [ %48, %46 ], [ %16, %13 ], [ -22, %12 ], [ -22, %10 ], [ -95, %26 ], [ -95, %28 ], [ %153, %152 ], [ -19, %141 ], [ %134, %138 ], [ -22, %76 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %7) #18
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_dump_all(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 7
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %9, -16
  %11 = icmp eq i16 %4, 0
  %12 = select i1 %11, i16 1, i16 %4
  %13 = zext i16 %12 to i32
  %14 = add i16 %8, -120
  %15 = icmp ult i16 %14, -104
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %17 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %18 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  br label %19

19:                                               ; preds = %43, %2
  %20 = phi i32 [ 1, %2 ], [ %44, %43 ]
  %21 = icmp ult i32 %20, %13
  %22 = icmp eq i32 %20, 17
  %23 = or i1 %21, %22
  %24 = select i1 %23, i1 true, i1 %15
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %20
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr ptr, ptr %27, i32 %10
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtnl_link, ptr %31, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = icmp ugt i32 %20, %13
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %16, i8 0, i32 24, i1 false)
  store i32 0, ptr %17, align 4
  store i32 0, ptr %18, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = tail call i32 %35(ptr noundef %0, ptr noundef %1) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %33, %29, %25, %19
  %44 = add nuw nsw i32 %20, 1
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %46, label %19

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %20, %40 ], [ 130, %43 ]
  %48 = phi i32 [ %41, %40 ], [ 0, %43 ]
  %49 = trunc i32 %47 to i16
  store i16 %49, ptr %3, align 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 %48, i32 %51
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_newlinkprop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @rtnl_linkprop(i32 noundef 108, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_dellinkprop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @rtnl_linkprop(i32 noundef 109, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_fdb_add(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [16 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !16
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %8 = icmp eq ptr %2, null
  br i1 %8, label %116, label %9

9:                                                ; preds = %7
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %116

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 28
  %12 = add i32 %5, -28
  %13 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %11, i32 noundef %12, ptr noundef null, i32 noundef 0, ptr noundef %2) #18
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %116, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %1, i32 16
  %17 = getelementptr i8, ptr %1, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_add.__msg) #18
  %21 = icmp eq ptr %2, null
  br i1 %21, label %116, label %22

22:                                               ; preds = %20
  store ptr @rtnl_fdb_add.__msg, ptr %2, align 4
  br label %116

23:                                               ; preds = %15
  %24 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %18) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_add.__msg.22) #18
  %27 = icmp eq ptr %2, null
  br i1 %27, label %116, label %28

28:                                               ; preds = %26
  store ptr @rtnl_fdb_add.__msg.22, ptr %2, align 4
  br label %116

29:                                               ; preds = %23
  %30 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %31, align 2
  %35 = icmp eq i16 %34, 10
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %29
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_add.__msg.23) #18
  %37 = icmp eq ptr %2, null
  br i1 %37, label %116, label %38

38:                                               ; preds = %36
  store ptr @rtnl_fdb_add.__msg.23, ptr %2, align 4
  br label %116

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 32
  %41 = load i16, ptr %40, align 16
  %42 = icmp eq i16 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_add.__msg.24) #18
  %44 = icmp eq ptr %2, null
  br i1 %44, label %116, label %45

45:                                               ; preds = %43
  store ptr @rtnl_fdb_add.__msg.24, ptr %2, align 4
  br label %116

46:                                               ; preds = %39
  %47 = getelementptr i8, ptr %31, i32 4
  %48 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = load i16, ptr %49, align 2
  %53 = icmp eq i16 %52, 6
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  call void @do_trace_netlink_extack(ptr noundef nonnull @fdb_vid_parse.__msg) #18
  %55 = icmp eq ptr %2, null
  br i1 %55, label %116, label %56

56:                                               ; preds = %54
  store ptr @fdb_vid_parse.__msg, ptr %2, align 4
  br label %116

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %49, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = add i16 %59, -4095
  %61 = icmp ult i16 %60, -4094
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  call void @do_trace_netlink_extack(ptr noundef nonnull @fdb_vid_parse.__msg.25) #18
  %63 = icmp eq ptr %2, null
  br i1 %63, label %116, label %64

64:                                               ; preds = %62
  store ptr @fdb_vid_parse.__msg.25, ptr %2, align 4
  br label %116

65:                                               ; preds = %57, %46
  %66 = phi i16 [ %59, %57 ], [ 0, %46 ]
  %67 = getelementptr i8, ptr %1, i32 26
  %68 = load i8, ptr %67, align 2
  %69 = icmp ne i8 %68, 0
  %70 = and i8 %68, 4
  %71 = icmp eq i8 %70, 0
  %72 = and i1 %69, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 15
  %75 = load i64, ptr %74, align 16
  %76 = and i64 %75, 512
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %73
  %79 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %24) #18
  %80 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 16
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.net_device_ops, ptr %81, i32 0, i32 49
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %85 = load i16, ptr %84, align 2
  %86 = call i32 %83(ptr noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %24, ptr noundef %47, i16 noundef zeroext %66, i16 noundef zeroext %85, ptr noundef %2) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %78
  %89 = load i8, ptr %67, align 2
  %90 = and i8 %89, -5
  store i8 %90, ptr %67, align 2
  br label %91

91:                                               ; preds = %88, %73, %65
  %92 = phi i8 [ %68, %73 ], [ %68, %65 ], [ %90, %88 ]
  %93 = phi i32 [ -95, %73 ], [ -95, %65 ], [ 0, %88 ]
  %94 = and i8 %92, 2
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 16
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.net_device_ops, ptr %98, i32 0, i32 49
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  %102 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %103 = load i16, ptr %102, align 2
  br i1 %101, label %106, label %104

104:                                              ; preds = %96
  %105 = call i32 %100(ptr noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %24, ptr noundef %47, i16 noundef zeroext %66, i16 noundef zeroext %103, ptr noundef %2) #18
  br label %108

106:                                              ; preds = %96
  %107 = call i32 @ndo_dflt_fdb_add(ptr noundef %16, ptr undef, ptr noundef nonnull %24, ptr noundef %47, i16 noundef zeroext %66, i16 noundef zeroext %103)
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = getelementptr i8, ptr %1, i32 24
  %113 = load i16, ptr %112, align 4
  call fastcc void @rtnl_fdb_notify(ptr noundef nonnull %24, ptr noundef %47, i16 noundef zeroext %66, i32 noundef 28, i16 noundef zeroext %113)
  %114 = load i8, ptr %67, align 2
  %115 = and i8 %114, -3
  store i8 %115, ptr %67, align 2
  br label %116

116:                                              ; preds = %111, %108, %91, %78, %64, %62, %56, %54, %45, %43, %38, %36, %28, %26, %22, %20, %10, %9, %7
  %117 = phi i32 [ %13, %10 ], [ -22, %22 ], [ -22, %20 ], [ -19, %28 ], [ -19, %26 ], [ -22, %38 ], [ -22, %36 ], [ -22, %45 ], [ -22, %43 ], [ %109, %108 ], [ 0, %111 ], [ %93, %91 ], [ %86, %78 ], [ -22, %9 ], [ -22, %7 ], [ -22, %56 ], [ -22, %54 ], [ -22, %64 ], [ -22, %62 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_fdb_del(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [16 x ptr], align 4
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #18
  store i16 0, ptr %5, align 2, !annotation !16
  %6 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #18
  br i1 %6, label %7, label %106

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = icmp ult i32 %8, 28
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %11 = icmp eq ptr %2, null
  br i1 %11, label %106, label %12

12:                                               ; preds = %10
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %106

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %1, i32 28
  %15 = add i32 %8, -28
  %16 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %14, i32 noundef %15, ptr noundef null, i32 noundef 0, ptr noundef %2) #18
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %106, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %1, i32 16
  %20 = getelementptr i8, ptr %1, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_del.__msg) #18
  %24 = icmp eq ptr %2, null
  br i1 %24, label %106, label %25

25:                                               ; preds = %23
  store ptr @rtnl_fdb_del.__msg, ptr %2, align 4
  br label %106

26:                                               ; preds = %18
  %27 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %21) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_del.__msg.26) #18
  %30 = icmp eq ptr %2, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %29
  store ptr @rtnl_fdb_del.__msg.26, ptr %2, align 4
  br label %106

32:                                               ; preds = %26
  %33 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i16, ptr %34, align 2
  %38 = icmp eq i16 %37, 10
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %32
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_del.__msg.27) #18
  %40 = icmp eq ptr %2, null
  br i1 %40, label %106, label %41

41:                                               ; preds = %39
  store ptr @rtnl_fdb_del.__msg.27, ptr %2, align 4
  br label %106

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 32
  %44 = load i16, ptr %43, align 16
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_del.__msg.28) #18
  %47 = icmp eq ptr %2, null
  br i1 %47, label %106, label %48

48:                                               ; preds = %46
  store ptr @rtnl_fdb_del.__msg.28, ptr %2, align 4
  br label %106

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %34, i32 4
  %51 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = call fastcc i32 @fdb_vid_parse(ptr noundef %52, ptr noundef nonnull %5, ptr noundef %2)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %106

55:                                               ; preds = %49
  %56 = getelementptr i8, ptr %1, i32 26
  %57 = load i8, ptr %56, align 2
  %58 = icmp ne i8 %57, 0
  %59 = and i8 %57, 4
  %60 = icmp eq i8 %59, 0
  %61 = and i1 %58, %60
  br i1 %61, label %81, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 15
  %64 = load i64, ptr %63, align 16
  %65 = and i64 %64, 512
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %27) #18
  %69 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.net_device_ops, ptr %70, i32 0, i32 50
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %106, label %74

74:                                               ; preds = %67
  %75 = load i16, ptr %5, align 2
  %76 = call i32 %72(ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %27, ptr noundef %50, i16 noundef zeroext %75) #18
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load i8, ptr %56, align 2
  %80 = and i8 %79, -5
  store i8 %80, ptr %56, align 2
  br label %81

81:                                               ; preds = %78, %62, %55
  %82 = phi i8 [ %80, %78 ], [ %57, %62 ], [ %57, %55 ]
  %83 = phi i32 [ 0, %78 ], [ -95, %62 ], [ -95, %55 ]
  %84 = and i8 %82, 2
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 16
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.net_device_ops, ptr %88, i32 0, i32 50
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i16, ptr %5, align 2
  %94 = call i32 %90(ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %27, ptr noundef %50, i16 noundef zeroext %93) #18
  br label %97

95:                                               ; preds = %86
  %96 = call i32 @ndo_dflt_fdb_del(ptr noundef %19, ptr undef, ptr noundef nonnull %27, ptr noundef %50, i16 zeroext undef)
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %94, %92 ], [ %96, %95 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i16, ptr %5, align 2
  %102 = getelementptr i8, ptr %1, i32 24
  %103 = load i16, ptr %102, align 4
  call fastcc void @rtnl_fdb_notify(ptr noundef nonnull %27, ptr noundef %50, i16 noundef zeroext %101, i32 noundef 29, i16 noundef zeroext %103)
  %104 = load i8, ptr %56, align 2
  %105 = and i8 %104, -3
  store i8 %105, ptr %56, align 2
  br label %106

106:                                              ; preds = %100, %97, %81, %74, %67, %49, %48, %46, %41, %39, %31, %29, %25, %23, %13, %12, %10, %3
  %107 = phi i32 [ -1, %3 ], [ %16, %13 ], [ -22, %25 ], [ -22, %23 ], [ -19, %31 ], [ -19, %29 ], [ -22, %41 ], [ -22, %39 ], [ -22, %48 ], [ -22, %46 ], [ %53, %49 ], [ %98, %97 ], [ 0, %100 ], [ %83, %81 ], [ -22, %12 ], [ -22, %10 ], [ %76, %74 ], [ -95, %67 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_fdb_get(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [16 x ptr], align 4
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #18
  store i16 0, ptr %5, align 2
  %6 = load i32, ptr %1, align 4
  %7 = icmp ult i32 %6, 28
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_get_strict.__msg) #18
  %9 = icmp eq ptr %2, null
  br i1 %9, label %167, label %70

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 17
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %1, i32 18
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %1, i32 24
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 27
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18, %14, %10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_get_strict.__msg.37) #18
  %27 = icmp eq ptr %2, null
  br i1 %27, label %167, label %70

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %1, i32 26
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, -7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_get_strict.__msg.38) #18
  %34 = icmp eq ptr %2, null
  br i1 %34, label %167, label %70

35:                                               ; preds = %28
  %36 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %4, i32 noundef 15, ptr noundef nonnull @nda_policy, ptr noundef %2) #18
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %167, label %38

38:                                               ; preds = %35
  %39 = load i8, ptr %29, align 2
  %40 = getelementptr i8, ptr %1, i32 20
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %65, %38
  %43 = phi i32 [ 0, %38 ], [ %66, %65 ]
  %44 = phi ptr [ null, %38 ], [ %67, %65 ]
  %45 = phi i32 [ 0, %38 ], [ %68, %65 ]
  %46 = getelementptr ptr, ptr %4, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %42
  switch i32 %45, label %63 [
    i32 9, label %50
    i32 2, label %53
    i32 5, label %60
    i32 7, label %65
  ]

50:                                               ; preds = %49
  %51 = getelementptr i8, ptr %47, i32 4
  %52 = load i32, ptr %51, align 4
  br label %65

53:                                               ; preds = %49
  %54 = load i16, ptr %47, align 2
  %55 = icmp eq i16 %54, 10
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_get_strict.__msg.39) #18
  %57 = icmp eq ptr %2, null
  br i1 %57, label %167, label %70

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %47, i32 4
  br label %65

60:                                               ; preds = %49
  %61 = call fastcc i32 @fdb_vid_parse(ptr noundef nonnull %47, ptr noundef nonnull %5, ptr noundef %2) #18
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %72

63:                                               ; preds = %49
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_get_strict.__msg.40) #18
  %64 = icmp eq ptr %2, null
  br i1 %64, label %167, label %70

65:                                               ; preds = %60, %58, %50, %49, %42
  %66 = phi i32 [ %43, %42 ], [ %43, %49 ], [ %43, %60 ], [ %43, %58 ], [ %52, %50 ]
  %67 = phi ptr [ %44, %42 ], [ %44, %49 ], [ %44, %60 ], [ %59, %58 ], [ %44, %50 ]
  %68 = add nuw nsw i32 %45, 1
  %69 = icmp eq i32 %68, 16
  br i1 %69, label %74, label %42

70:                                               ; preds = %63, %56, %33, %26, %8
  %71 = phi ptr [ @valid_fdb_get_strict.__msg, %8 ], [ @valid_fdb_get_strict.__msg.37, %26 ], [ @valid_fdb_get_strict.__msg.38, %33 ], [ @valid_fdb_get_strict.__msg.39, %56 ], [ @valid_fdb_get_strict.__msg.40, %63 ]
  store ptr %71, ptr %2, align 4
  br label %167

72:                                               ; preds = %60
  %73 = icmp slt i32 %61, 0
  br i1 %73, label %167, label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %44, %72 ], [ %67, %65 ]
  %76 = phi i32 [ %43, %72 ], [ %66, %65 ]
  %77 = icmp eq ptr %75, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg) #18
  %79 = icmp eq ptr %2, null
  br i1 %79, label %167, label %80

80:                                               ; preds = %78
  store ptr @rtnl_fdb_get.__msg, ptr %2, align 4
  br label %167

81:                                               ; preds = %74
  %82 = icmp eq i32 %41, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %81
  %84 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %41) #18
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.29) #18
  %87 = icmp eq ptr %2, null
  br i1 %87, label %167, label %88

88:                                               ; preds = %86
  store ptr @rtnl_fdb_get.__msg.29, ptr %2, align 4
  br label %167

89:                                               ; preds = %83
  %90 = icmp eq i32 %76, 0
  br i1 %90, label %102, label %93

91:                                               ; preds = %81
  %92 = icmp eq i32 %76, 0
  br i1 %92, label %133, label %96

93:                                               ; preds = %89
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.30) #18
  %94 = icmp eq ptr %2, null
  br i1 %94, label %167, label %95

95:                                               ; preds = %93
  store ptr @rtnl_fdb_get.__msg.30, ptr %2, align 4
  br label %167

96:                                               ; preds = %91
  %97 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %76) #18
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %136

99:                                               ; preds = %96
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.31) #18
  %100 = icmp eq ptr %2, null
  br i1 %100, label %167, label %101

101:                                              ; preds = %99
  store ptr @rtnl_fdb_get.__msg.31, ptr %2, align 4
  br label %167

102:                                              ; preds = %89
  %103 = icmp eq i8 %39, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %102
  %105 = zext i8 %39 to i32
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %104, %102
  %109 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 15
  %110 = load i64, ptr %109, align 16
  %111 = and i64 %110, 512
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.32) #18
  %114 = icmp eq ptr %2, null
  br i1 %114, label %167, label %115

115:                                              ; preds = %113
  store ptr @rtnl_fdb_get.__msg.32, ptr %2, align 4
  br label %167

116:                                              ; preds = %108
  %117 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %84) #18
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.33) #18
  %120 = icmp eq ptr %2, null
  br i1 %120, label %167, label %121

121:                                              ; preds = %119
  store ptr @rtnl_fdb_get.__msg.33, ptr %2, align 4
  br label %167

122:                                              ; preds = %104
  %123 = and i32 %105, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.34) #18
  %126 = icmp eq ptr %2, null
  br i1 %126, label %167, label %127

127:                                              ; preds = %125
  store ptr @rtnl_fdb_get.__msg.34, ptr %2, align 4
  br label %167

128:                                              ; preds = %122, %116
  %129 = phi ptr [ %117, %116 ], [ null, %122 ]
  %130 = phi ptr [ %117, %116 ], [ %84, %122 ]
  %131 = icmp eq ptr %129, null
  %132 = select i1 %131, ptr %84, ptr %129
  br label %136

133:                                              ; preds = %91
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.35) #18
  %134 = icmp eq ptr %2, null
  br i1 %134, label %167, label %135

135:                                              ; preds = %133
  store ptr @rtnl_fdb_get.__msg.35, ptr %2, align 4
  br label %167

136:                                              ; preds = %128, %96
  %137 = phi ptr [ %132, %128 ], [ %97, %96 ]
  %138 = phi ptr [ %130, %128 ], [ %97, %96 ]
  %139 = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 16
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.net_device_ops, ptr %140, i32 0, i32 52
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142, %136
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_fdb_get.__msg.36) #18
  %147 = icmp eq ptr %2, null
  br i1 %147, label %167, label %148

148:                                              ; preds = %146
  store ptr @rtnl_fdb_get.__msg.36, ptr %2, align 4
  br label %167

149:                                              ; preds = %142
  %150 = call ptr @__alloc_skb(i32 noundef 3856, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %151 = icmp eq ptr %150, null
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %143, align 4
  %154 = load i16, ptr %5, align 2
  %155 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = call i32 %153(ptr noundef nonnull %150, ptr noundef nonnull %4, ptr noundef nonnull %137, ptr noundef nonnull %75, i16 noundef zeroext %154, i32 noundef %156, i32 noundef %158, ptr noundef %2) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = load i32, ptr %155, align 4
  %163 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %164 = call i32 @netlink_unicast(ptr noundef %163, ptr noundef nonnull %150, i32 noundef %162, i32 noundef 64) #18
  %165 = call i32 @llvm.smin.i32(i32 %164, i32 0) #18
  br label %167

166:                                              ; preds = %152
  call void @kfree_skb_reason(ptr noundef nonnull %150, i32 noundef 0) #18
  br label %167

167:                                              ; preds = %166, %161, %149, %148, %146, %135, %133, %127, %125, %121, %119, %115, %113, %101, %99, %95, %93, %88, %86, %80, %78, %72, %70, %63, %56, %35, %33, %26, %8
  %168 = phi i32 [ %159, %166 ], [ %165, %161 ], [ %61, %72 ], [ -22, %80 ], [ -22, %78 ], [ -19, %88 ], [ -19, %86 ], [ -22, %95 ], [ -22, %93 ], [ -22, %101 ], [ -22, %99 ], [ -22, %115 ], [ -22, %113 ], [ -22, %121 ], [ -22, %119 ], [ -22, %127 ], [ -22, %125 ], [ -19, %135 ], [ -19, %133 ], [ -95, %148 ], [ -95, %146 ], [ -105, %149 ], [ -22, %70 ], [ -22, %63 ], [ -22, %56 ], [ %36, %35 ], [ -22, %33 ], [ -22, %26 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_fdb_dump(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [59 x ptr], align 4
  %4 = alloca [16 x ptr], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %9 = load i8, ptr %8, align 4, !range !26
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  br i1 %10, label %84, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #18, !annotation !16
  %16 = load i32, ptr %12, align 4
  %17 = icmp ult i32 %16, 28
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_dump_strict.__msg) #18
  %19 = icmp eq ptr %14, null
  br i1 %19, label %82, label %80

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %12, i32 17
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %12, i32 18
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %12, i32 24
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %12, i32 26
  %34 = load i8, ptr %33, align 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %12, i32 27
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36, %32, %28, %24, %20
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_dump_strict.__msg.41) #18
  %41 = icmp eq ptr %14, null
  br i1 %41, label %82, label %80

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %12, i32 28
  %44 = add i32 %16, -28
  %45 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %43, i32 noundef %44, ptr noundef null, i32 noundef 3, ptr noundef %14) #18
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %12, i32 20
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %5, align 4
  %50 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %77, %47
  %55 = phi i32 [ 0, %47 ], [ %78, %77 ]
  %56 = getelementptr [16 x ptr], ptr %4, i32 0, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  switch i32 %55, label %70 [
    i32 8, label %60
    i32 9, label %65
  ]

60:                                               ; preds = %59
  %61 = load i16, ptr %57, align 2
  %62 = icmp eq i16 %61, 8
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_dump_strict.__msg.42) #18
  %64 = icmp eq ptr %14, null
  br i1 %64, label %82, label %80

65:                                               ; preds = %59
  %66 = load i16, ptr %57, align 2
  %67 = icmp eq i16 %66, 8
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_dump_strict.__msg.43) #18
  %69 = icmp eq ptr %14, null
  br i1 %69, label %82, label %80

70:                                               ; preds = %59
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_fdb_dump_strict.__msg.44) #18
  %71 = icmp eq ptr %14, null
  br i1 %71, label %82, label %80

72:                                               ; preds = %65, %60
  %73 = phi ptr [ %53, %60 ], [ %51, %65 ]
  %74 = phi ptr [ %5, %60 ], [ %6, %65 ]
  %75 = getelementptr i8, ptr %73, i32 4
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %74, align 4
  br label %77

77:                                               ; preds = %72, %54
  %78 = add nuw nsw i32 %55, 1
  %79 = icmp eq i32 %78, 16
  br i1 %79, label %82, label %54

80:                                               ; preds = %70, %68, %63, %40, %18
  %81 = phi ptr [ @valid_fdb_dump_strict.__msg, %18 ], [ @valid_fdb_dump_strict.__msg.41, %40 ], [ @valid_fdb_dump_strict.__msg.42, %63 ], [ @valid_fdb_dump_strict.__msg.43, %68 ], [ @valid_fdb_dump_strict.__msg.44, %70 ]
  store ptr %81, ptr %14, align 4
  br label %82

82:                                               ; preds = %80, %77, %70, %68, %63, %42, %40, %18
  %83 = phi i32 [ -22, %18 ], [ -22, %40 ], [ %45, %42 ], [ -22, %63 ], [ -22, %68 ], [ -22, %70 ], [ -22, %80 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %110

84:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %3, i8 0, i32 236, i1 false) #18, !annotation !16
  %85 = load i32, ptr %12, align 4
  switch i32 %85, label %86 [
    i32 28, label %108
    i32 36, label %108
  ]

86:                                               ; preds = %84
  %87 = icmp ult i32 %85, 32
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %89 = icmp eq ptr %14, null
  br i1 %89, label %108, label %90

90:                                               ; preds = %88
  store ptr @__nlmsg_parse.__msg, ptr %14, align 4
  br label %108

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %12, i32 32
  %93 = add i32 %85, -32
  %94 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 58, ptr noundef %92, i32 noundef %93, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef %14) #18
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = icmp eq i32 %94, 0
  %98 = getelementptr inbounds [59 x ptr], ptr %3, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  %100 = icmp ne ptr %99, null
  %101 = select i1 %97, i1 %100, i1 false
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = getelementptr i8, ptr %99, i32 4
  %104 = load i32, ptr %103, align 4
  store i32 %104, ptr %6, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = getelementptr i8, ptr %12, i32 20
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %5, align 4
  br label %108

108:                                              ; preds = %105, %91, %90, %88, %84, %84
  %109 = phi i32 [ 0, %105 ], [ 0, %84 ], [ -22, %91 ], [ -22, %90 ], [ -22, %88 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %3) #18
  br label %110

110:                                              ; preds = %108, %82
  %111 = phi i32 [ %83, %82 ], [ %109, %108 ]
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %238, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %6, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %114) #18
  %118 = icmp eq ptr %117, null
  br i1 %118, label %238, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 16
  %121 = load ptr, ptr %120, align 8
  br label %122

122:                                              ; preds = %119, %113
  %123 = phi ptr [ %121, %119 ], [ null, %113 ]
  %124 = phi ptr [ %117, %119 ], [ null, %113 ]
  %125 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %128 = icmp slt i32 %126, 256
  br i1 %128, label %129, label %231

129:                                              ; preds = %122
  %130 = load i32, ptr %127, align 4
  %131 = load i32, ptr %5, align 4
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  br label %134

134:                                              ; preds = %225, %129
  %135 = phi ptr [ %124, %129 ], [ %228, %225 ]
  %136 = phi ptr [ null, %129 ], [ %227, %225 ]
  %137 = phi i32 [ %130, %129 ], [ 0, %225 ]
  %138 = phi i32 [ %126, %129 ], [ %229, %225 ]
  %139 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %140 = getelementptr %struct.hlist_head, ptr %139, i32 %138
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  %143 = getelementptr i8, ptr %141, i32 -560
  %144 = icmp eq ptr %143, null
  %145 = or i1 %142, %144
  br i1 %145, label %225, label %146

146:                                              ; preds = %215, %134
  %147 = phi ptr [ %222, %215 ], [ %143, %134 ]
  %148 = phi ptr [ %218, %215 ], [ %135, %134 ]
  %149 = phi ptr [ %217, %215 ], [ %136, %134 ]
  %150 = phi i32 [ %216, %215 ], [ 0, %134 ]
  br i1 %132, label %155, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 17
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, %131
  br i1 %154, label %155, label %215

155:                                              ; preds = %151, %146
  br i1 %115, label %156, label %165

156:                                              ; preds = %155
  %157 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 15
  %158 = load i64, ptr %157, align 16
  %159 = and i64 %158, 512
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %180, label %161

161:                                              ; preds = %156
  %162 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %147) #18
  %163 = getelementptr inbounds %struct.net_device, ptr %162, i32 0, i32 16
  %164 = load ptr, ptr %163, align 8
  br label %180

165:                                              ; preds = %155
  %166 = icmp eq ptr %147, %148
  br i1 %166, label %172, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 15
  %169 = load i64, ptr %168, align 16
  %170 = and i64 %169, 512
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %215, label %172

172:                                              ; preds = %167, %165
  %173 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %147) #18
  %174 = icmp eq ptr %148, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 15
  %177 = load i64, ptr %176, align 16
  %178 = and i64 %177, 2
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %215, label %180

180:                                              ; preds = %175, %172, %161, %156
  %181 = phi ptr [ %164, %161 ], [ %149, %156 ], [ %123, %175 ], [ %123, %172 ]
  %182 = phi ptr [ %162, %161 ], [ %148, %156 ], [ %148, %175 ], [ %148, %172 ]
  %183 = icmp slt i32 %150, %137
  br i1 %183, label %212, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 15
  %186 = load i64, ptr %185, align 16
  %187 = and i64 %186, 512
  %188 = icmp ne i64 %187, 0
  %189 = icmp ne ptr %181, null
  %190 = select i1 %188, i1 %189, i1 false
  br i1 %190, label %191, label %198

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.net_device_ops, ptr %181, i32 0, i32 51
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = call i32 %193(ptr noundef %0, ptr noundef %1, ptr noundef %182, ptr noundef nonnull %147, ptr noundef nonnull %7) #18
  %197 = icmp eq i32 %196, -90
  br i1 %197, label %231, label %198

198:                                              ; preds = %195, %191, %184
  %199 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 16
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.net_device_ops, ptr %200, i32 0, i32 51
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %198
  %205 = call i32 %202(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %147, ptr noundef null, ptr noundef nonnull %7) #18
  br label %208

206:                                              ; preds = %198
  %207 = call i32 @ndo_dflt_fdb_dump(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %147, ptr undef, ptr noundef nonnull %7)
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = icmp eq i32 %209, -90
  br i1 %210, label %231, label %211

211:                                              ; preds = %208
  store i32 0, ptr %133, align 4
  store i32 0, ptr %7, align 4
  br label %212

212:                                              ; preds = %211, %180
  %213 = phi ptr [ %181, %180 ], [ null, %211 ]
  %214 = add i32 %150, 1
  br label %215

215:                                              ; preds = %212, %175, %167, %151
  %216 = phi i32 [ %150, %151 ], [ %214, %212 ], [ %150, %175 ], [ %150, %167 ]
  %217 = phi ptr [ %149, %151 ], [ %213, %212 ], [ %149, %175 ], [ %149, %167 ]
  %218 = phi ptr [ %148, %151 ], [ %182, %212 ], [ %148, %175 ], [ %148, %167 ]
  %219 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 85
  %220 = load ptr, ptr %219, align 16
  %221 = icmp eq ptr %220, null
  %222 = getelementptr i8, ptr %220, i32 -560
  %223 = icmp eq ptr %222, null
  %224 = or i1 %221, %223
  br i1 %224, label %225, label %146

225:                                              ; preds = %215, %134
  %226 = phi i32 [ 0, %134 ], [ %216, %215 ]
  %227 = phi ptr [ %136, %134 ], [ %217, %215 ]
  %228 = phi ptr [ %135, %134 ], [ %218, %215 ]
  %229 = add nsw i32 %138, 1
  %230 = icmp eq i32 %229, 256
  br i1 %230, label %231, label %134

231:                                              ; preds = %225, %208, %195, %122
  %232 = phi i32 [ %126, %122 ], [ %138, %195 ], [ %138, %208 ], [ 256, %225 ]
  %233 = phi i32 [ 0, %122 ], [ %150, %195 ], [ %150, %208 ], [ %226, %225 ]
  store i32 %232, ptr %125, align 4
  store i32 %233, ptr %127, align 4
  %234 = load i32, ptr %7, align 4
  %235 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  store i32 %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %237 = load i32, ptr %236, align 8
  br label %238

238:                                              ; preds = %231, %116, %110
  %239 = phi i32 [ %237, %231 ], [ %111, %110 ], [ -19, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret i32 %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_bridge_getlink(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [59 x ptr], align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %12 = load i8, ptr %11, align 4, !range !26
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %3, i8 0, i32 236, i1 false) #18, !annotation !16
  %16 = load i32, ptr %5, align 4
  %17 = icmp ult i32 %16, 32
  br i1 %13, label %43, label %18

18:                                               ; preds = %2
  br i1 %17, label %19, label %21

19:                                               ; preds = %18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_bridge_getlink_req.__msg) #18
  %20 = icmp eq ptr %15, null
  br i1 %20, label %74, label %70

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %5, i32 17
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %5, i32 18
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %5, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %5, i32 28
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %5, i32 20
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %33, %29, %25, %21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_bridge_getlink_req.__msg.45) #18
  %42 = icmp eq ptr %15, null
  br i1 %42, label %74, label %70

43:                                               ; preds = %2
  br i1 %17, label %44, label %46

44:                                               ; preds = %43
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %45 = icmp eq ptr %15, null
  br i1 %45, label %74, label %70

46:                                               ; preds = %43, %37
  %47 = phi i32 [ 3, %37 ], [ 0, %43 ]
  %48 = getelementptr i8, ptr %5, i32 32
  %49 = add i32 %16, -32
  %50 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 58, ptr noundef %48, i32 noundef %49, ptr noundef nonnull @ifla_policy, i32 noundef %47, ptr noundef %15) #18
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %66, %46
  %53 = phi i32 [ %67, %66 ], [ 0, %46 ]
  %54 = phi i32 [ %68, %66 ], [ 0, %46 ]
  %55 = getelementptr [59 x ptr], ptr %3, i32 0, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = icmp eq i32 %54, 29
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = getelementptr i8, ptr %56, i32 4
  %62 = load i32, ptr %61, align 4
  br label %66

63:                                               ; preds = %58
  br i1 %13, label %66, label %64

64:                                               ; preds = %63
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_bridge_getlink_req.__msg.46) #18
  %65 = icmp eq ptr %15, null
  br i1 %65, label %74, label %70

66:                                               ; preds = %63, %60, %52
  %67 = phi i32 [ %53, %52 ], [ %62, %60 ], [ %53, %63 ]
  %68 = add nuw nsw i32 %54, 1
  %69 = icmp eq i32 %68, 59
  br i1 %69, label %73, label %52

70:                                               ; preds = %64, %44, %41, %19
  %71 = phi i32 [ 0, %19 ], [ %53, %64 ], [ 0, %41 ], [ 0, %44 ]
  %72 = phi ptr [ @valid_bridge_getlink_req.__msg, %19 ], [ @valid_bridge_getlink_req.__msg.46, %64 ], [ @valid_bridge_getlink_req.__msg.45, %41 ], [ @__nlmsg_parse.__msg, %44 ]
  store ptr %72, ptr %15, align 4
  br label %74

73:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %3) #18
  br label %79

74:                                               ; preds = %70, %64, %46, %44, %41, %19
  %75 = phi i32 [ 0, %44 ], [ 0, %41 ], [ %53, %64 ], [ 0, %46 ], [ %71, %70 ], [ 0, %19 ]
  %76 = phi i32 [ -22, %44 ], [ -22, %41 ], [ -22, %64 ], [ %50, %46 ], [ -22, %70 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %3) #18
  %77 = load i8, ptr %11, align 4, !range !26
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %74, %73
  %80 = phi i32 [ %75, %74 ], [ %67, %73 ]
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %81 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %82 = icmp eq ptr %81, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %82, label %136, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  br label %85

85:                                               ; preds = %132, %83
  %86 = phi ptr [ %81, %83 ], [ %134, %132 ]
  %87 = phi i32 [ 0, %83 ], [ %133, %132 ]
  %88 = getelementptr i8, ptr %86, i32 -40
  %89 = getelementptr i8, ptr %86, i32 80
  %90 = load ptr, ptr %89, align 8
  %91 = call ptr @netdev_master_upper_dev_get(ptr noundef %88) #18
  %92 = icmp eq ptr %91, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 16
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.net_device_ops, ptr %95, i32 0, i32 54
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %113, label %99

99:                                               ; preds = %93
  %100 = load i32, ptr %84, align 4
  %101 = icmp slt i32 %87, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = call i32 %97(ptr noundef %0, i32 noundef %8, i32 noundef %10, ptr noundef %88, i32 noundef %80, i32 noundef 2) #18
  %104 = icmp slt i32 %103, 0
  %105 = icmp ne i32 %103, -95
  %106 = and i1 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %140, label %136

111:                                              ; preds = %102, %99
  %112 = add i32 %87, 1
  br label %113

113:                                              ; preds = %111, %93, %85
  %114 = phi i32 [ %112, %111 ], [ %87, %93 ], [ %87, %85 ]
  %115 = getelementptr inbounds %struct.net_device_ops, ptr %90, i32 0, i32 54
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %84, align 4
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = call i32 %116(ptr noundef %0, i32 noundef %8, i32 noundef %10, ptr noundef %88, i32 noundef %80, i32 noundef 2) #18
  %123 = icmp slt i32 %122, 0
  %124 = icmp ne i32 %122, -95
  %125 = and i1 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %136

130:                                              ; preds = %121, %118
  %131 = add i32 %114, 1
  br label %132

132:                                              ; preds = %130, %113
  %133 = phi i32 [ %131, %130 ], [ %114, %113 ]
  %134 = load volatile ptr, ptr %86, align 8
  %135 = icmp eq ptr %134, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %135, label %136, label %85

136:                                              ; preds = %132, %126, %107, %79
  %137 = phi i32 [ %114, %126 ], [ %87, %107 ], [ 0, %79 ], [ %133, %132 ]
  %138 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %139 = load i32, ptr %138, align 8
  br label %140

140:                                              ; preds = %136, %126, %107
  %141 = phi i32 [ %139, %136 ], [ %103, %107 ], [ %122, %126 ]
  %142 = phi i32 [ %137, %136 ], [ %87, %107 ], [ %114, %126 ]
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %143 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %140, %74
  %145 = phi i32 [ %141, %140 ], [ %76, %74 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_bridge_dellink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, -16
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %102, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 16
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 7
  br i1 %10, label %11, label %102

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_bridge_dellink.__msg) #18
  %17 = icmp eq ptr %2, null
  br i1 %17, label %102, label %18

18:                                               ; preds = %16
  store ptr @rtnl_bridge_dellink.__msg, ptr %2, align 4
  br label %102

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %1, i32 32
  %21 = load i32, ptr %1, align 4
  %22 = add i32 %21, -32
  %23 = tail call ptr @nla_find(ptr noundef %20, i32 noundef %22, i32 noundef 26) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %23, i32 4
  %27 = load i16, ptr %23, align 2
  %28 = icmp ugt i16 %27, 7
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = zext i16 %27 to i32
  %31 = add nsw i32 %30, -4
  br label %32

32:                                               ; preds = %48, %29
  %33 = phi ptr [ %52, %48 ], [ %26, %29 ]
  %34 = phi i32 [ %51, %48 ], [ %31, %29 ]
  %35 = load i16, ptr %33, align 2
  %36 = icmp ult i16 %35, 4
  %37 = zext i16 %35 to i32
  %38 = icmp ult i32 %34, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %61, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.nlattr, ptr %33, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %42, 16383
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = and i16 %35, -2
  %47 = icmp eq i16 %46, 4
  br i1 %47, label %102, label %54

48:                                               ; preds = %40
  %49 = add nuw nsw i32 %37, 3
  %50 = and i32 %49, 131068
  %51 = sub nsw i32 %34, %50
  %52 = getelementptr i8, ptr %33, i32 %50
  %53 = icmp sgt i32 %51, 3
  br i1 %53, label %32, label %61

54:                                               ; preds = %45
  %55 = getelementptr i8, ptr %33, i32 4
  %56 = load i16, ptr %55, align 2
  %57 = icmp ne i16 %56, 0
  %58 = and i16 %56, 1
  %59 = icmp eq i16 %58, 0
  %60 = and i1 %57, %59
  br i1 %60, label %78, label %61

61:                                               ; preds = %54, %48, %32, %25, %19
  %62 = phi i1 [ true, %54 ], [ false, %19 ], [ false, %25 ], [ false, %48 ], [ false, %32 ]
  %63 = phi i16 [ %56, %54 ], [ 0, %19 ], [ 0, %25 ], [ 0, %48 ], [ 0, %32 ]
  %64 = phi ptr [ %33, %54 ], [ null, %19 ], [ %26, %25 ], [ %33, %32 ], [ %52, %48 ]
  %65 = tail call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %14) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.net_device_ops, ptr %69, i32 0, i32 55
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %102, label %73

73:                                               ; preds = %67
  %74 = tail call i32 %71(ptr noundef nonnull %14, ptr noundef %1, i16 noundef zeroext %63) #18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %73
  %77 = and i16 %63, -2
  br label %78

78:                                               ; preds = %76, %54
  %79 = phi i1 [ %62, %76 ], [ true, %54 ]
  %80 = phi ptr [ %64, %76 ], [ %33, %54 ]
  %81 = phi i32 [ 0, %76 ], [ -95, %54 ]
  %82 = phi i16 [ %77, %76 ], [ %56, %54 ]
  %83 = and i16 %82, 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 16
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.net_device_ops, ptr %87, i32 0, i32 55
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = tail call i32 %89(ptr noundef nonnull %14, ptr noundef %1, i16 noundef zeroext %82) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = and i16 %82, -3
  %96 = tail call fastcc i32 @rtnl_bridge_notify(ptr noundef nonnull %14)
  br label %97

97:                                               ; preds = %94, %91, %85, %78
  %98 = phi i32 [ %92, %91 ], [ %96, %94 ], [ %81, %78 ], [ -95, %85 ]
  %99 = phi i16 [ %82, %91 ], [ %95, %94 ], [ %82, %78 ], [ %82, %85 ]
  br i1 %79, label %100, label %102

100:                                              ; preds = %97
  %101 = getelementptr i8, ptr %80, i32 4
  store i16 %99, ptr %101, align 1
  br label %102

102:                                              ; preds = %100, %97, %73, %67, %61, %45, %18, %16, %7, %3
  %103 = phi i32 [ -22, %3 ], [ -96, %7 ], [ -19, %18 ], [ -19, %16 ], [ -22, %45 ], [ %98, %100 ], [ %98, %97 ], [ %74, %73 ], [ -95, %61 ], [ -95, %67 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_bridge_setlink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, -16
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %102, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 16
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 7
  br i1 %10, label %11, label %102

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_bridge_setlink.__msg) #18
  %17 = icmp eq ptr %2, null
  br i1 %17, label %102, label %18

18:                                               ; preds = %16
  store ptr @rtnl_bridge_setlink.__msg, ptr %2, align 4
  br label %102

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %1, i32 32
  %21 = load i32, ptr %1, align 4
  %22 = add i32 %21, -32
  %23 = tail call ptr @nla_find(ptr noundef %20, i32 noundef %22, i32 noundef 26) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %23, i32 4
  %27 = load i16, ptr %23, align 2
  %28 = icmp ugt i16 %27, 7
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = zext i16 %27 to i32
  %31 = add nsw i32 %30, -4
  br label %32

32:                                               ; preds = %48, %29
  %33 = phi ptr [ %52, %48 ], [ %26, %29 ]
  %34 = phi i32 [ %51, %48 ], [ %31, %29 ]
  %35 = load i16, ptr %33, align 2
  %36 = icmp ult i16 %35, 4
  %37 = zext i16 %35 to i32
  %38 = icmp ult i32 %34, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %61, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.nlattr, ptr %33, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %42, 16383
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = and i16 %35, -2
  %47 = icmp eq i16 %46, 4
  br i1 %47, label %102, label %54

48:                                               ; preds = %40
  %49 = add nuw nsw i32 %37, 3
  %50 = and i32 %49, 131068
  %51 = sub nsw i32 %34, %50
  %52 = getelementptr i8, ptr %33, i32 %50
  %53 = icmp sgt i32 %51, 3
  br i1 %53, label %32, label %61

54:                                               ; preds = %45
  %55 = getelementptr i8, ptr %33, i32 4
  %56 = load i16, ptr %55, align 2
  %57 = icmp ne i16 %56, 0
  %58 = and i16 %56, 1
  %59 = icmp eq i16 %58, 0
  %60 = and i1 %57, %59
  br i1 %60, label %78, label %61

61:                                               ; preds = %54, %48, %32, %25, %19
  %62 = phi i1 [ true, %54 ], [ false, %19 ], [ false, %25 ], [ false, %48 ], [ false, %32 ]
  %63 = phi i16 [ %56, %54 ], [ 0, %19 ], [ 0, %25 ], [ 0, %48 ], [ 0, %32 ]
  %64 = phi ptr [ %33, %54 ], [ null, %19 ], [ %26, %25 ], [ %33, %32 ], [ %52, %48 ]
  %65 = tail call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %14) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.net_device_ops, ptr %69, i32 0, i32 53
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %102, label %73

73:                                               ; preds = %67
  %74 = tail call i32 %71(ptr noundef nonnull %14, ptr noundef %1, i16 noundef zeroext %63, ptr noundef %2) #18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %73
  %77 = and i16 %63, -2
  br label %78

78:                                               ; preds = %76, %54
  %79 = phi i1 [ %62, %76 ], [ true, %54 ]
  %80 = phi ptr [ %64, %76 ], [ %33, %54 ]
  %81 = phi i32 [ 0, %76 ], [ -95, %54 ]
  %82 = phi i16 [ %77, %76 ], [ %56, %54 ]
  %83 = and i16 %82, 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 16
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.net_device_ops, ptr %87, i32 0, i32 53
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = tail call i32 %89(ptr noundef nonnull %14, ptr noundef %1, i16 noundef zeroext %82, ptr noundef %2) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = and i16 %82, -3
  %96 = tail call fastcc i32 @rtnl_bridge_notify(ptr noundef nonnull %14)
  br label %97

97:                                               ; preds = %94, %91, %85, %78
  %98 = phi i32 [ %92, %91 ], [ %96, %94 ], [ %81, %78 ], [ -95, %85 ]
  %99 = phi i16 [ %82, %91 ], [ %95, %94 ], [ %82, %78 ], [ %82, %85 ]
  br i1 %79, label %100, label %102

100:                                              ; preds = %97
  %101 = getelementptr i8, ptr %80, i32 4
  store i16 %99, ptr %101, align 1
  br label %102

102:                                              ; preds = %100, %97, %73, %67, %61, %45, %18, %16, %7, %3
  %103 = phi i32 [ -22, %3 ], [ -96, %7 ], [ -19, %18 ], [ -19, %16 ], [ -22, %45 ], [ %98, %100 ], [ %98, %97 ], [ %74, %73 ], [ -95, %61 ], [ -95, %67 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_stats_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4
  %6 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #18
  %7 = load i32, ptr %1, align 4
  %8 = icmp ult i32 %7, 28
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg) #18
  %10 = icmp eq ptr %2, null
  br i1 %10, label %156, label %32

11:                                               ; preds = %3
  br i1 %6, label %12, label %34

12:                                               ; preds = %11
  %13 = getelementptr i8, ptr %1, i32 17
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 18
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = icmp eq i32 %7, 28
  br i1 %21, label %26, label %24

22:                                               ; preds = %16, %12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg.47) #18
  %23 = icmp eq ptr %2, null
  br i1 %23, label %156, label %32

24:                                               ; preds = %20
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg.48) #18
  %25 = icmp eq ptr %2, null
  br i1 %25, label %156, label %32

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %1, i32 24
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 31
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg.49) #18
  %31 = icmp eq ptr %2, null
  br i1 %31, label %156, label %32

32:                                               ; preds = %30, %24, %22, %9
  %33 = phi ptr [ @rtnl_valid_stats_req.__msg, %9 ], [ @rtnl_valid_stats_req.__msg.47, %22 ], [ @rtnl_valid_stats_req.__msg.48, %24 ], [ @rtnl_valid_stats_req.__msg.49, %30 ]
  store ptr %33, ptr %2, align 4
  br label %156

34:                                               ; preds = %26, %11
  %35 = getelementptr i8, ptr %1, i32 20
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %156, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %36) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %156, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %1, i32 24
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %156, label %45

45:                                               ; preds = %41
  %46 = and i32 %43, 1
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 12, i32 208
  %49 = and i32 %43, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 114
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtnl_link_ops, ptr %53, i32 0, i32 24
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = tail call i32 %57(ptr noundef nonnull %39, i32 noundef 2) #18
  %61 = add i32 %60, 7
  %62 = and i32 %61, -4
  %63 = add nuw nsw i32 %48, 4
  %64 = add i32 %63, %62
  br label %65

65:                                               ; preds = %59, %55, %51, %45
  %66 = phi i32 [ %64, %59 ], [ %48, %55 ], [ %48, %51 ], [ %48, %45 ]
  %67 = and i32 %43, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %39) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 114
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtnl_link_ops, ptr %74, i32 0, i32 24
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = tail call i32 %78(ptr noundef nonnull %39, i32 noundef 3) #18
  %82 = add i32 %81, 7
  %83 = and i32 %82, -4
  %84 = add i32 %66, 4
  %85 = add i32 %84, %83
  br label %86

86:                                               ; preds = %80, %76, %72, %69, %65
  %87 = phi i32 [ %85, %80 ], [ %66, %76 ], [ %66, %72 ], [ %66, %65 ], [ %66, %69 ]
  %88 = and i32 %43, 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 16
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %105, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.net_device_ops, ptr %92, i32 0, i32 21
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.net_device_ops, ptr %92, i32 0, i32 22
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = tail call zeroext i1 %96(ptr noundef nonnull %39, i32 noundef 1) #18
  %104 = select i1 %103, i32 200, i32 0
  br label %105

105:                                              ; preds = %102, %98, %94, %90
  %106 = phi i32 [ 0, %98 ], [ 0, %94 ], [ 0, %90 ], [ %104, %102 ]
  %107 = add i32 %106, %87
  br label %108

108:                                              ; preds = %105, %86
  %109 = phi i32 [ %107, %105 ], [ %87, %86 ]
  %110 = and i32 %43, 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %134, label %112

112:                                              ; preds = %108
  %113 = add i32 %109, 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %114 = load volatile ptr, ptr @rtnl_af_ops, align 4
  %115 = icmp eq ptr %114, @rtnl_af_ops
  br i1 %115, label %132, label %116

116:                                              ; preds = %128, %112
  %117 = phi ptr [ %130, %128 ], [ %114, %112 ]
  %118 = phi i32 [ %129, %128 ], [ %113, %112 ]
  %119 = getelementptr inbounds %struct.rtnl_af_ops, ptr %117, i32 0, i32 7
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = tail call i32 %120(ptr noundef nonnull %39) #18
  %124 = add i32 %123, 7
  %125 = and i32 %124, -4
  %126 = add i32 %118, 4
  %127 = add i32 %126, %125
  br label %128

128:                                              ; preds = %122, %116
  %129 = phi i32 [ %127, %122 ], [ %118, %116 ]
  %130 = load volatile ptr, ptr %117, align 4
  %131 = icmp eq ptr %130, @rtnl_af_ops
  br i1 %131, label %132, label %116

132:                                              ; preds = %128, %112
  %133 = phi i32 [ %113, %112 ], [ %129, %128 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %134

134:                                              ; preds = %132, %108
  %135 = phi i32 [ %133, %132 ], [ %109, %108 ]
  %136 = add i32 %135, 19
  %137 = and i32 %136, -4
  %138 = tail call ptr @__alloc_skb(i32 noundef %137, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %139 = icmp eq ptr %138, null
  br i1 %139, label %156, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = call fastcc i32 @rtnl_fill_statsinfo(ptr noundef nonnull %138, ptr noundef nonnull %39, i32 noundef %142, i32 noundef %144, i32 noundef 0, i32 noundef %43, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = icmp eq i32 %145, -90
  br i1 %148, label %149, label %150, !prof !8

149:                                              ; preds = %147
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5422, i32 noundef 9, ptr noundef null) #18
  br label %150

150:                                              ; preds = %149, %147
  call void @kfree_skb_reason(ptr noundef nonnull %138, i32 noundef 0) #18
  br label %156

151:                                              ; preds = %140
  %152 = load i32, ptr %141, align 4
  %153 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %154 = call i32 @netlink_unicast(ptr noundef %153, ptr noundef nonnull %138, i32 noundef %152, i32 noundef 64) #18
  %155 = call i32 @llvm.smin.i32(i32 %154, i32 0) #18
  br label %156

156:                                              ; preds = %151, %150, %134, %41, %38, %34, %32, %30, %24, %22, %9
  %157 = phi i32 [ -22, %34 ], [ -19, %38 ], [ -22, %41 ], [ -105, %134 ], [ %145, %150 ], [ %155, %151 ], [ -22, %9 ], [ -22, %22 ], [ -22, %24 ], [ -22, %30 ], [ -22, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_stats_dump(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  %13 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %20 = load i8, ptr %19, align 4, !range !26
  %21 = icmp ne i8 %20, 0
  %22 = tail call fastcc i32 @rtnl_valid_stats_req(ptr noundef %18, i1 noundef zeroext %21, i1 noundef zeroext true, ptr noundef %6)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %2
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = icmp slt i32 %8, 256
  br i1 %30, label %31, label %92

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %33 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  br label %37

34:                                               ; preds = %24
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_stats_dump.__msg) #18
  %35 = icmp eq ptr %6, null
  br i1 %35, label %99, label %36

36:                                               ; preds = %34
  store ptr @rtnl_stats_dump.__msg, ptr %6, align 4
  br label %99

37:                                               ; preds = %88, %31
  %38 = phi i32 [ %8, %31 ], [ %90, %88 ]
  %39 = phi i32 [ %10, %31 ], [ 0, %88 ]
  %40 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %41 = getelementptr %struct.hlist_head, ptr %40, i32 %38
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -560
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %88, label %47

47:                                               ; preds = %80, %37
  %48 = phi i32 [ %81, %80 ], [ 0, %37 ]
  %49 = phi ptr [ %85, %80 ], [ %44, %37 ]
  %50 = icmp slt i32 %48, %39
  br i1 %50, label %80, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 3, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr inbounds %struct.nlmsghdr, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = call fastcc i32 @rtnl_fill_statsinfo(ptr noundef %0, ptr noundef nonnull %49, i32 noundef %54, i32 noundef %57, i32 noundef 2, i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %59 = icmp eq i32 %58, -90
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %92, !prof !8

64:                                               ; preds = %60
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5475, i32 noundef 9, ptr noundef null) #18
  br label %92

65:                                               ; preds = %51
  %66 = icmp slt i32 %58, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %65
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  %68 = load ptr, ptr %32, align 4
  %69 = load i32, ptr %33, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %16, align 4
  %73 = icmp eq i32 %72, %69
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.nlmsghdr, ptr %68, i32 0, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = or i16 %76, 16
  store i16 %77, ptr %75, align 2
  br label %78

78:                                               ; preds = %74, %71, %67
  %79 = load i32, ptr %16, align 4
  store i32 %79, ptr %33, align 4
  br label %80

80:                                               ; preds = %78, %47
  %81 = add i32 %48, 1
  %82 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 85
  %83 = load ptr, ptr %82, align 16
  %84 = icmp eq ptr %83, null
  %85 = getelementptr i8, ptr %83, i32 -560
  %86 = icmp eq ptr %85, null
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %47

88:                                               ; preds = %80, %37
  %89 = phi i32 [ 0, %37 ], [ %81, %80 ]
  %90 = add nsw i32 %38, 1
  %91 = icmp eq i32 %90, 256
  br i1 %91, label %92, label %37

92:                                               ; preds = %88, %65, %64, %60, %29
  %93 = phi i32 [ %38, %64 ], [ %38, %60 ], [ %8, %29 ], [ %38, %65 ], [ 256, %88 ]
  %94 = phi i32 [ %48, %64 ], [ %48, %60 ], [ 0, %29 ], [ %48, %65 ], [ %89, %88 ]
  %95 = load i32, ptr %4, align 4
  store i32 %95, ptr %13, align 4
  %96 = load i32, ptr %3, align 4
  store i32 %96, ptr %11, align 4
  store i32 %94, ptr %9, align 4
  store i32 %93, ptr %7, align 4
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %98 = load i32, ptr %97, align 8
  br label %99

99:                                               ; preds = %92, %36, %34, %2
  %100 = phi i32 [ %98, %92 ], [ %22, %2 ], [ -22, %36 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @put_master_ifindex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %4 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %1) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 %8, ptr %3, align 4
  %9 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_ifalias(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i32 256, i1 false), !annotation !16
  %4 = call i32 @dev_get_alias(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 256) #18
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = call i32 @strlen(ptr noundef nonnull %3) #18
  %8 = add i32 %7, 1
  %9 = call i32 @nla_put(ptr noundef %0, i32 noundef 20, i32 noundef %8, ptr noundef nonnull %3) #18
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_proto_down(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 123
  %6 = load i8, ptr %5, align 4, !range !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 %6, ptr %4, align 1
  %7 = call i32 @nla_put(ptr noundef %0, i32 noundef 39, i32 noundef 1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 97
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 32823, i32 noundef 0, ptr noundef null) #18
  %17 = icmp slt i32 %16, 0
  %18 = icmp eq ptr %15, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 %11, ptr %3, align 4
  %21 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ugt ptr %25, %15
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %28 = load ptr, ptr %24, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %25, %23 ]
  %31 = ptrtoint ptr %15 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  call void @skb_trim(ptr noundef %0, i32 noundef %33) #18
  br label %40

34:                                               ; preds = %20
  %35 = load ptr, ptr %14, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %15 to i32
  %38 = sub i32 %36, %37
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %15, align 2
  br label %40

40:                                               ; preds = %34, %29, %13, %9, %2
  %41 = phi i32 [ 0, %34 ], [ 0, %9 ], [ -90, %13 ], [ -90, %2 ], [ -90, %29 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_link_ifmap(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rtnl_link_ifmap, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds i8, ptr %3, i32 24
  store i64 0, ptr %5, align 8
  %6 = load i32, ptr %4, align 4
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rtnl_link_ifmap, ptr %3, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 32
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rtnl_link_ifmap, ptr %3, i32 0, i32 2
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 59
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.rtnl_link_ifmap, ptr %3, i32 0, i32 3
  store i16 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 48
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.rtnl_link_ifmap, ptr %3, i32 0, i32 4
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 47
  %24 = load i8, ptr %23, align 2
  %25 = getelementptr inbounds %struct.rtnl_link_ifmap, ptr %3, i32 0, i32 5
  store i8 %24, ptr %25, align 1
  %26 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 14, i32 noundef 32, ptr noundef nonnull %3, i32 noundef 42) #18
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 0, i32 -90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_phys_port_id_fill(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.netdev_phys_item_id, align 1
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %3, i8 0, i32 33, i1 false), !annotation !16
  %4 = call i32 @dev_get_phys_port_id(ptr noundef %1, ptr noundef nonnull %3) #18
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 -95, label %13
  ]

5:                                                ; preds = %2
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.netdev_phys_item_id, ptr %3, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = call i32 @nla_put(ptr noundef %0, i32 noundef 34, i32 noundef %9, ptr noundef nonnull %3) #18
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -90
  br label %13

13:                                               ; preds = %6, %5, %2
  %14 = phi i32 [ %4, %5 ], [ 0, %2 ], [ %12, %6 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #18
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_phys_port_name_fill(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !16
  %4 = call i32 @dev_get_phys_port_name(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #18
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 -95, label %12
  ]

5:                                                ; preds = %2
  br label %12

6:                                                ; preds = %2
  %7 = call i32 @strlen(ptr noundef nonnull %3) #18
  %8 = add i32 %7, 1
  %9 = call i32 @nla_put(ptr noundef %0, i32 noundef 38, i32 noundef %8, ptr noundef nonnull %3) #18
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 -90
  br label %12

12:                                               ; preds = %6, %5, %2
  %13 = phi i32 [ %4, %5 ], [ 0, %2 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_phys_switch_id_fill(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.netdev_phys_item_id, align 1
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %3, i8 0, i32 33, i1 false)
  %4 = call i32 @dev_get_port_parent_id(ptr noundef %1, ptr noundef nonnull %3, i1 noundef zeroext false) #18
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 -95, label %13
  ]

5:                                                ; preds = %2
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.netdev_phys_item_id, ptr %3, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = call i32 @nla_put(ptr noundef %0, i32 noundef 36, i32 noundef %9, ptr noundef nonnull %3) #18
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -90
  br label %13

13:                                               ; preds = %6, %5, %2
  %14 = phi i32 [ %4, %5 ], [ 0, %2 ], [ %12, %6 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #18
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_stats(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call ptr @nla_reserve_64bit(ptr noundef %0, i32 noundef 23, i32 noundef 192, i32 noundef 42) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %3, i32 4
  %7 = tail call ptr @dev_get_stats(ptr noundef %1, ptr noundef %6) #18
  %8 = tail call ptr @nla_reserve(ptr noundef %0, i32 noundef 7, i32 noundef 96) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %106, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = load i64, ptr %6, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %11, align 4
  %14 = getelementptr i8, ptr %3, i32 12
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr i8, ptr %8, i32 8
  store i32 %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %3, i32 20
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr i8, ptr %8, i32 12
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %3, i32 28
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr i8, ptr %8, i32 16
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %3, i32 36
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr i8, ptr %8, i32 20
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %3, i32 44
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr i8, ptr %8, i32 24
  store i32 %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %3, i32 52
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = getelementptr i8, ptr %8, i32 28
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %3, i32 60
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr i8, ptr %8, i32 32
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %3, i32 68
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr i8, ptr %8, i32 36
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %3, i32 76
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = getelementptr i8, ptr %8, i32 40
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %3, i32 84
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr i8, ptr %8, i32 44
  store i32 %52, ptr %53, align 4
  %54 = getelementptr i8, ptr %3, i32 92
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr i8, ptr %8, i32 48
  store i32 %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %3, i32 100
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr i8, ptr %8, i32 52
  store i32 %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %3, i32 108
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = getelementptr i8, ptr %8, i32 56
  store i32 %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %3, i32 116
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = getelementptr i8, ptr %8, i32 60
  store i32 %68, ptr %69, align 4
  %70 = getelementptr i8, ptr %3, i32 124
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = getelementptr i8, ptr %8, i32 64
  store i32 %72, ptr %73, align 4
  %74 = getelementptr i8, ptr %3, i32 132
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr i8, ptr %8, i32 68
  store i32 %76, ptr %77, align 4
  %78 = getelementptr i8, ptr %3, i32 140
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = getelementptr i8, ptr %8, i32 72
  store i32 %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %3, i32 148
  %83 = load i64, ptr %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = getelementptr i8, ptr %8, i32 76
  store i32 %84, ptr %85, align 4
  %86 = getelementptr i8, ptr %3, i32 156
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = getelementptr i8, ptr %8, i32 80
  store i32 %88, ptr %89, align 4
  %90 = getelementptr i8, ptr %3, i32 164
  %91 = load i64, ptr %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr i8, ptr %8, i32 84
  store i32 %92, ptr %93, align 4
  %94 = getelementptr i8, ptr %3, i32 172
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = getelementptr i8, ptr %8, i32 88
  store i32 %96, ptr %97, align 4
  %98 = getelementptr i8, ptr %3, i32 180
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = getelementptr i8, ptr %8, i32 92
  store i32 %100, ptr %101, align 4
  %102 = getelementptr i8, ptr %3, i32 188
  %103 = load i64, ptr %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = getelementptr i8, ptr %8, i32 96
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %10, %5, %2
  %107 = phi i32 [ 0, %10 ], [ -90, %2 ], [ -90, %5 ]
  ret i32 %107
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_vf(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %9, %7
  br i1 %10, label %53, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bus_type, ptr %13, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %6) #18
  br label %21

21:                                               ; preds = %19, %15, %11
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %11 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 %22, ptr %4, align 4
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.net_device_ops, ptr %27, i32 0, i32 31
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 22, i32 noundef 0, ptr noundef null) #18
  %35 = icmp slt i32 %34, 0
  %36 = icmp eq ptr %33, null
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %53, label %38

38:                                               ; preds = %31
  %39 = icmp sgt i32 %22, 0
  br i1 %39, label %43, label %47

40:                                               ; preds = %43
  %41 = add nuw nsw i32 %44, 1
  %42 = icmp eq i32 %41, %22
  br i1 %42, label %47, label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %41, %40 ], [ 0, %38 ]
  %45 = call fastcc i32 @rtnl_fill_vfinfo(ptr noundef %0, ptr noundef %1, i32 noundef %44, ptr noundef nonnull %33)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %40, label %53

47:                                               ; preds = %40, %38
  %48 = load ptr, ptr %32, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = ptrtoint ptr %33 to i32
  %51 = sub i32 %49, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %33, align 2
  br label %53

53:                                               ; preds = %47, %43, %31, %25, %21, %3
  %54 = phi i32 [ 0, %47 ], [ 0, %3 ], [ -90, %21 ], [ 0, %25 ], [ -90, %31 ], [ -90, %43 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_port_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.net_device_ops, ptr %6, i32 0, i32 35
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %130, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = and i32 %2, 1
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %15, %13
  br i1 %16, label %130, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 25, i32 noundef 0, ptr noundef null) #18
  %21 = icmp slt i32 %20, 0
  %22 = icmp eq ptr %19, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %130, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.net_device_ops, ptr %25, i32 0, i32 35
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %1, i32 noundef -1, ptr noundef %0) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ugt ptr %32, %19
  br i1 %33, label %34, label %36, !prof !8

34:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %35 = load ptr, ptr %31, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ %32, %30 ]
  %38 = ptrtoint ptr %19 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  tail call void @skb_trim(ptr noundef %0, i32 noundef %40) #18
  %41 = icmp eq i32 %28, -90
  br i1 %41, label %130, label %48

42:                                               ; preds = %24
  %43 = load ptr, ptr %18, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = ptrtoint ptr %19 to i32
  %46 = sub i32 %44, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %19, align 2
  br label %48

48:                                               ; preds = %42, %36
  %49 = load ptr, ptr %11, align 4
  %50 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %130, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.bus_type, ptr %51, i32 0, i32 16
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %130, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef %49) #18
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %130, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %18, align 8
  %62 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 24, i32 noundef 0, ptr noundef null) #18
  %63 = icmp slt i32 %62, 0
  %64 = icmp eq ptr %61, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %130, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %68

68:                                               ; preds = %113, %66
  %69 = phi i32 [ %114, %113 ], [ 0, %66 ]
  %70 = load ptr, ptr %11, align 4
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bus_type, ptr %72, i32 0, i32 16
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 %76(ptr noundef %70) #18
  br label %80

80:                                               ; preds = %78, %74, %68
  %81 = phi i32 [ %79, %78 ], [ 0, %74 ], [ 0, %68 ]
  %82 = icmp slt i32 %69, %81
  %83 = load ptr, ptr %18, align 8
  br i1 %82, label %84, label %125

84:                                               ; preds = %80
  %85 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef null) #18
  %86 = icmp slt i32 %85, 0
  %87 = icmp eq ptr %83, null
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %115, label %89

89:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 %69, ptr %4, align 4
  %90 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.net_device_ops, ptr %93, i32 0, i32 35
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef %1, i32 noundef %69, ptr noundef %0) #18
  switch i32 %96, label %97 [
    i32 -90, label %115
    i32 0, label %107
  ]

97:                                               ; preds = %92
  %98 = load ptr, ptr %67, align 4
  %99 = icmp ugt ptr %98, %83
  br i1 %99, label %100, label %102, !prof !8

100:                                              ; preds = %97
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %101 = load ptr, ptr %67, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi ptr [ %101, %100 ], [ %98, %97 ]
  %104 = ptrtoint ptr %83 to i32
  %105 = ptrtoint ptr %103 to i32
  %106 = sub i32 %104, %105
  call void @skb_trim(ptr noundef %0, i32 noundef %106) #18
  br label %113

107:                                              ; preds = %92
  %108 = load ptr, ptr %18, align 8
  %109 = ptrtoint ptr %108 to i32
  %110 = ptrtoint ptr %83 to i32
  %111 = sub i32 %109, %110
  %112 = trunc i32 %111 to i16
  store i16 %112, ptr %83, align 2
  br label %113

113:                                              ; preds = %107, %102
  %114 = add nuw nsw i32 %69, 1
  br label %68

115:                                              ; preds = %92, %89, %84
  %116 = load ptr, ptr %67, align 4
  %117 = icmp ugt ptr %116, %61
  br i1 %117, label %118, label %120, !prof !8

118:                                              ; preds = %115
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %119 = load ptr, ptr %67, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi ptr [ %119, %118 ], [ %116, %115 ]
  %122 = ptrtoint ptr %61 to i32
  %123 = ptrtoint ptr %121 to i32
  %124 = sub i32 %122, %123
  call void @skb_trim(ptr noundef %0, i32 noundef %124) #18
  br label %130

125:                                              ; preds = %80
  %126 = ptrtoint ptr %83 to i32
  %127 = ptrtoint ptr %61 to i32
  %128 = sub i32 %126, %127
  %129 = trunc i32 %128 to i16
  store i16 %129, ptr %61, align 2
  br label %130

130:                                              ; preds = %125, %120, %60, %57, %53, %48, %36, %17, %10, %3
  %131 = phi i32 [ 0, %10 ], [ 0, %3 ], [ -90, %17 ], [ 0, %125 ], [ 0, %57 ], [ -90, %36 ], [ 0, %53 ], [ 0, %48 ], [ -90, %120 ], [ -90, %60 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_xdp_fill(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 43, i32 noundef 0, ptr noundef null) #18
  %11 = icmp slt i32 %10, 0
  %12 = icmp eq ptr %9, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %82, label %14

14:                                               ; preds = %2
  %15 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rtnl_mutex) #18
  %16 = load i1, ptr @rtnl_xdp_prog_skb.__already_done, align 1
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %19, label %18, !prof !24

18:                                               ; preds = %14
  store i1 true, ptr @rtnl_xdp_prog_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1413, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 1413) #18
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 76
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bpf_prog, ptr %21, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bpf_prog_aux, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 %27, ptr %7, align 4
  %30 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %29, %23, %19
  %33 = phi i32 [ 0, %23 ], [ 0, %19 ], [ %27, %29 ]
  %34 = phi i8 [ 1, %23 ], [ 1, %19 ], [ 4, %29 ]
  %35 = phi i8 [ 0, %23 ], [ 0, %19 ], [ 2, %29 ]
  %36 = call i32 @dev_xdp_prog_id(ptr noundef %1, i32 noundef 1) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 %36, ptr %6, align 4
  %39 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %38, %32
  %42 = phi i32 [ %33, %32 ], [ %36, %38 ]
  %43 = phi i8 [ %35, %32 ], [ %34, %38 ]
  %44 = call i32 @dev_xdp_prog_id(ptr noundef %1, i32 noundef 2) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 %44, ptr %5, align 4
  %47 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = icmp eq i8 %43, 0
  %51 = select i1 %50, i8 3, i8 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = phi i32 [ %44, %49 ], [ %42, %41 ]
  %54 = phi i8 [ %51, %49 ], [ %43, %41 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 %54, ptr %4, align 1
  %55 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = icmp ne i32 %53, 0
  %59 = icmp ne i8 %54, 4
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 %53, ptr %3, align 4
  %62 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61, %57
  %65 = load ptr, ptr %8, align 8
  %66 = ptrtoint ptr %65 to i32
  %67 = ptrtoint ptr %9 to i32
  %68 = sub i32 %66, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, ptr %9, align 2
  br label %82

70:                                               ; preds = %61, %52, %46, %38, %29
  %71 = phi i32 [ %55, %52 ], [ %62, %61 ], [ %30, %29 ], [ %39, %38 ], [ %47, %46 ]
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = icmp ugt ptr %73, %9
  br i1 %74, label %75, label %77, !prof !8

75:                                               ; preds = %70
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %76 = load ptr, ptr %72, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %73, %70 ]
  %79 = ptrtoint ptr %9 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %79, %80
  call void @skb_trim(ptr noundef %0, i32 noundef %81) #18
  br label %82

82:                                               ; preds = %77, %64, %2
  %83 = phi i32 [ %71, %77 ], [ 0, %64 ], [ -90, %2 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_link_fill(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 18, i32 noundef 0, ptr noundef null) #18
  %6 = icmp slt i32 %5, 0
  %7 = icmp eq ptr %4, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %119, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 114
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtnl_link_ops, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @strlen(ptr noundef %15) #18
  %17 = add i32 %16, 1
  %18 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %17, ptr noundef %15) #18
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %107, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtnl_link_ops, ptr %11, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0, ptr noundef %1) #18
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %107, label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.rtnl_link_ops, ptr %11, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 8
  %33 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null) #18
  %34 = icmp slt i32 %33, 0
  %35 = icmp eq ptr %32, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %107, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %28, align 4
  %39 = tail call i32 %38(ptr noundef %0, ptr noundef %1) #18
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %3, align 8
  %43 = ptrtoint ptr %42 to i32
  %44 = ptrtoint ptr %32 to i32
  %45 = sub i32 %43, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %32, align 2
  br label %51

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ugt ptr %49, %32
  br i1 %50, label %95, label %100, !prof !8

51:                                               ; preds = %41, %27, %9
  %52 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %1) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %89, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 114
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %89, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtnl_link_ops, ptr %56, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @strlen(ptr noundef %60) #18
  %62 = add i32 %61, 1
  %63 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef %62, ptr noundef %60) #18
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %107, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.rtnl_link_ops, ptr %56, i32 0, i32 22
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %3, align 8
  %71 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 0, ptr noundef null) #18
  %72 = icmp slt i32 %71, 0
  %73 = icmp eq ptr %70, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %107, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %66, align 4
  %77 = tail call i32 %76(ptr noundef %0, ptr noundef nonnull %52, ptr noundef %1) #18
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %3, align 8
  %81 = ptrtoint ptr %80 to i32
  %82 = ptrtoint ptr %70 to i32
  %83 = sub i32 %81, %82
  %84 = trunc i32 %83 to i16
  store i16 %84, ptr %70, align 2
  br label %89

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  %88 = icmp ugt ptr %87, %70
  br i1 %88, label %95, label %100, !prof !8

89:                                               ; preds = %79, %65, %54, %51
  %90 = load ptr, ptr %3, align 8
  %91 = ptrtoint ptr %90 to i32
  %92 = ptrtoint ptr %4 to i32
  %93 = sub i32 %91, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, ptr %4, align 2
  br label %119

95:                                               ; preds = %85, %47
  %96 = phi ptr [ %48, %47 ], [ %86, %85 ]
  %97 = phi ptr [ %32, %47 ], [ %70, %85 ]
  %98 = phi i32 [ %39, %47 ], [ %77, %85 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %99 = load ptr, ptr %96, align 4
  br label %100

100:                                              ; preds = %95, %85, %47
  %101 = phi ptr [ %32, %47 ], [ %70, %85 ], [ %97, %95 ]
  %102 = phi ptr [ %49, %47 ], [ %87, %85 ], [ %99, %95 ]
  %103 = phi i32 [ %39, %47 ], [ %77, %85 ], [ %98, %95 ]
  %104 = ptrtoint ptr %101 to i32
  %105 = ptrtoint ptr %102 to i32
  %106 = sub i32 %104, %105
  tail call void @skb_trim(ptr noundef %0, i32 noundef %106) #18
  br label %107

107:                                              ; preds = %100, %69, %58, %31, %24, %13
  %108 = phi i32 [ -90, %58 ], [ -90, %69 ], [ -90, %31 ], [ %25, %24 ], [ -90, %13 ], [ %103, %100 ]
  %109 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %110 = load ptr, ptr %109, align 4
  %111 = icmp ugt ptr %110, %4
  br i1 %111, label %112, label %114, !prof !8

112:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %113 = load ptr, ptr %109, align 4
  br label %114

114:                                              ; preds = %112, %107
  %115 = phi ptr [ %113, %112 ], [ %110, %107 ]
  %116 = ptrtoint ptr %4 to i32
  %117 = ptrtoint ptr %115 to i32
  %118 = sub i32 %116, %117
  tail call void @skb_trim(ptr noundef %0, i32 noundef %118) #18
  br label %119

119:                                              ; preds = %114, %89, %2
  %120 = phi i32 [ 0, %89 ], [ -90, %2 ], [ %108, %114 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_link_netnsid(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 114
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtnl_link_ops, ptr %5, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef %1) #18
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = tail call i32 @dev_get_iflink(ptr noundef %1) #18
  %15 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 %14, ptr %3, align 4
  %19 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ 0, %13 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_link_af(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 26, i32 noundef 0, ptr noundef null) #18
  %7 = icmp slt i32 %6, 0
  %8 = icmp eq ptr %5, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %61, label %10

10:                                               ; preds = %3
  %11 = load volatile ptr, ptr @rtnl_af_ops, align 4
  %12 = icmp eq ptr %11, @rtnl_af_ops
  br i1 %12, label %55, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %15

15:                                               ; preds = %52, %13
  %16 = phi ptr [ %11, %13 ], [ %53, %52 ]
  %17 = getelementptr inbounds %struct.rtnl_af_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtnl_af_ops, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %22, i32 noundef 0, ptr noundef null) #18
  %25 = icmp slt i32 %24, 0
  %26 = icmp eq ptr %23, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %61, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr %17, align 4
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  %31 = icmp eq i32 %30, -61
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load ptr, ptr %14, align 4
  %34 = icmp ugt ptr %33, %23
  br i1 %34, label %35, label %37, !prof !8

35:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %36 = load ptr, ptr %14, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %39 = ptrtoint ptr %23 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  tail call void @skb_trim(ptr noundef %0, i32 noundef %41) #18
  br label %46

42:                                               ; preds = %28
  %43 = icmp slt i32 %30, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %42
  %45 = ptrtoint ptr %23 to i32
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi i32 [ %45, %44 ], [ %39, %37 ]
  %48 = load ptr, ptr %4, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = sub i32 %49, %47
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %23, align 2
  br label %52

52:                                               ; preds = %46, %15
  %53 = load volatile ptr, ptr %16, align 4
  %54 = icmp eq ptr %53, @rtnl_af_ops
  br i1 %54, label %55, label %15

55:                                               ; preds = %52, %10
  %56 = load ptr, ptr %4, align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = ptrtoint ptr %5 to i32
  %59 = sub i32 %57, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, ptr %5, align 2
  br label %61

61:                                               ; preds = %55, %42, %20, %3
  %62 = phi i32 [ 0, %55 ], [ -90, %3 ], [ -90, %20 ], [ -90, %42 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_prop_list(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 32820, i32 noundef 0, ptr noundef null) #18
  %6 = icmp slt i32 %5, 0
  %7 = icmp eq ptr %4, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %50, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.netdev_name_node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %38, label %15

15:                                               ; preds = %24, %9
  %16 = phi ptr [ %26, %24 ], [ %13, %9 ]
  %17 = phi i32 [ %25, %24 ], [ 0, %9 ]
  %18 = getelementptr i8, ptr %16, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strlen(ptr noundef %19) #18
  %21 = add i32 %20, 1
  %22 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 53, i32 noundef %21, ptr noundef %19) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %15
  %25 = add i32 %17, 1
  %26 = load ptr, ptr %16, align 4
  %27 = load ptr, ptr %10, align 16
  %28 = getelementptr inbounds %struct.netdev_name_node, ptr %27, i32 0, i32 1
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %15

30:                                               ; preds = %24
  %31 = icmp ugt i32 %17, 2147483646
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = ptrtoint ptr %4 to i32
  %36 = sub i32 %34, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %4, align 2
  br label %50

38:                                               ; preds = %30, %15, %9
  %39 = phi i32 [ %25, %30 ], [ 0, %9 ], [ -90, %15 ]
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, %4
  br i1 %42, label %43, label %45, !prof !8

43:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %44 = load ptr, ptr %40, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %44, %43 ], [ %41, %38 ]
  %47 = ptrtoint ptr %4 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  tail call void @skb_trim(ptr noundef %0, i32 noundef %49) #18
  br label %50

50:                                               ; preds = %45, %32, %2
  %51 = phi i32 [ %39, %45 ], [ 0, %32 ], [ -90, %2 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_phys_port_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_phys_port_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_port_parent_id(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_vfinfo(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ifla_vf_rss_query_en, align 8
  %14 = alloca %struct.ifla_vf_link_state, align 8
  %15 = alloca %struct.ifla_vf_vlan_info, align 4
  %16 = alloca %struct.ifla_vf_spoofchk, align 8
  %17 = alloca %struct.ifla_vf_tx_rate, align 8
  %18 = alloca %struct.ifla_vf_stats, align 8
  %19 = alloca %struct.ifla_vf_trust, align 8
  %20 = alloca %struct.ifla_vf_vlan, align 4
  %21 = alloca %struct.ifla_vf_rate, align 4
  %22 = alloca %struct.ifla_vf_mac, align 4
  %23 = alloca %struct.ifla_vf_broadcast, align 1
  %24 = alloca %struct.ifla_vf_info, align 4
  %25 = alloca %struct.ifla_vf_guid, align 8
  %26 = alloca %struct.ifla_vf_guid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store i64 0, ptr %13, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  store i64 0, ptr %14, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 0, i32 16, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  store i64 0, ptr %16, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  store i64 0, ptr %17, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i32 64, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  store i64 0, ptr %19, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %20, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %21, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %23, i8 0, i32 32, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %24, i8 0, i32 72, i1 false)
  %27 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 4
  store i32 -1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 8
  store i32 -1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 9
  store i32 -1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 10
  store i16 129, ptr %30, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.net_device_ops, ptr %32, i32 0, i32 31
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %24) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %222

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 5
  %39 = getelementptr inbounds i8, ptr %15, i32 12
  store i32 0, ptr %39, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i32 16, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i32 16, i1 false)
  %40 = load i32, ptr %24, align 4
  store i32 %40, ptr %26, align 8
  store i32 %40, ptr %25, align 8
  store i32 %40, ptr %19, align 8
  store i32 %40, ptr %13, align 8
  store i32 %40, ptr %14, align 8
  store i32 %40, ptr %16, align 8
  store i32 %40, ptr %17, align 8
  store i32 %40, ptr %21, align 4
  store i32 %40, ptr %15, align 4
  store i32 %40, ptr %20, align 4
  store i32 %40, ptr %22, align 4
  %41 = getelementptr inbounds %struct.ifla_vf_mac, ptr %22, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %41, ptr noundef align 4 dereferenceable(32) %42, i32 32, i1 false)
  %43 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %44 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %23, ptr align 4 %43, i32 %46, i1 false)
  %47 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ifla_vf_vlan, ptr %20, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ifla_vf_vlan, ptr %20, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ifla_vf_vlan_info, ptr %15, i32 0, i32 1
  store i32 %48, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ifla_vf_vlan_info, ptr %15, i32 0, i32 2
  store i32 %51, ptr %54, align 4
  %55 = load i16, ptr %30, align 4
  %56 = getelementptr inbounds %struct.ifla_vf_vlan_info, ptr %15, i32 0, i32 3
  store i16 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ifla_vf_tx_rate, ptr %17, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ifla_vf_info, ptr %24, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ifla_vf_rate, ptr %21, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ifla_vf_rate, ptr %21, i32 0, i32 2
  store i32 %58, ptr %63, align 4
  %64 = load i32, ptr %27, align 4
  %65 = getelementptr inbounds %struct.ifla_vf_spoofchk, ptr %16, i32 0, i32 1
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %38, align 4
  %67 = getelementptr inbounds %struct.ifla_vf_link_state, ptr %14, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %28, align 4
  %69 = getelementptr inbounds %struct.ifla_vf_rss_query_en, ptr %13, i32 0, i32 1
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %29, align 4
  %71 = getelementptr inbounds %struct.ifla_vf_trust, ptr %19, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %73 = load ptr, ptr %72, align 8
  %74 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef null) #18
  %75 = icmp slt i32 %74, 0
  %76 = icmp eq ptr %73, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %209, label %78

78:                                               ; preds = %37
  %79 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 36, ptr noundef nonnull %22) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %198

81:                                               ; preds = %78
  %82 = call i32 @nla_put(ptr noundef %0, i32 noundef 13, i32 noundef 32, ptr noundef nonnull %23) #18
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %198

84:                                               ; preds = %81
  %85 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %20) #18
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %198

87:                                               ; preds = %84
  %88 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 12, ptr noundef nonnull %21) #18
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %198

90:                                               ; preds = %87
  %91 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %17) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %198

93:                                               ; preds = %90
  %94 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %16) #18
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %198

96:                                               ; preds = %93
  %97 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %14) #18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %198

99:                                               ; preds = %96
  %100 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %13) #18
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %198

102:                                              ; preds = %99
  %103 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %19) #18
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %198

105:                                              ; preds = %102
  %106 = load ptr, ptr %31, align 8
  %107 = getelementptr inbounds %struct.net_device_ops, ptr %106, i32 0, i32 36
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = call i32 %108(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %26) #18
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 16, ptr noundef nonnull %25) #18
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %198

116:                                              ; preds = %113
  %117 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 16, ptr noundef nonnull %26) #18
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %198

119:                                              ; preds = %116, %110, %105
  %120 = load ptr, ptr %72, align 8
  %121 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 0, ptr noundef null) #18
  %122 = icmp slt i32 %121, 0
  %123 = icmp eq ptr %120, null
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %198, label %125

125:                                              ; preds = %119
  %126 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %15) #18
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %196

128:                                              ; preds = %125
  %129 = load ptr, ptr %72, align 8
  %130 = ptrtoint ptr %129 to i32
  %131 = ptrtoint ptr %120 to i32
  %132 = sub i32 %130, %131
  %133 = trunc i32 %132 to i16
  store i16 %133, ptr %120, align 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i32 64, i1 false)
  %134 = load ptr, ptr %31, align 8
  %135 = getelementptr inbounds %struct.net_device_ops, ptr %134, i32 0, i32 33
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %128
  %139 = call i32 %136(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %18) #18
  br label %140

140:                                              ; preds = %138, %128
  %141 = load ptr, ptr %72, align 8
  %142 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 0, ptr noundef null) #18
  %143 = icmp slt i32 %142, 0
  %144 = icmp eq ptr %141, null
  %145 = select i1 %143, i1 true, i1 %144
  br i1 %145, label %198, label %146

146:                                              ; preds = %140
  %147 = load i64, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  store i64 %147, ptr %12, align 8
  %148 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %12, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %196

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 1
  %152 = load i64, ptr %151, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store i64 %152, ptr %11, align 8
  %153 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %11, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %196

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 2
  %157 = load i64, ptr %156, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store i64 %157, ptr %10, align 8
  %158 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %10, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 3
  %162 = load i64, ptr %161, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store i64 %162, ptr %9, align 8
  %163 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %9, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 4
  %167 = load i64, ptr %166, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store i64 %167, ptr %8, align 8
  %168 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %8, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 5
  %172 = load i64, ptr %171, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store i64 %172, ptr %7, align 8
  %173 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 6
  %177 = load i64, ptr %176, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store i64 %177, ptr %6, align 8
  %178 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %6, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.ifla_vf_stats, ptr %18, i32 0, i32 7
  %182 = load i64, ptr %181, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i64 %182, ptr %5, align 8
  %183 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load ptr, ptr %72, align 8
  %187 = ptrtoint ptr %186 to i32
  %188 = ptrtoint ptr %141 to i32
  %189 = sub i32 %187, %188
  %190 = trunc i32 %189 to i16
  store i16 %190, ptr %141, align 2
  %191 = load ptr, ptr %72, align 8
  %192 = ptrtoint ptr %191 to i32
  %193 = ptrtoint ptr %73 to i32
  %194 = sub i32 %192, %193
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %73, align 2
  br label %222

196:                                              ; preds = %180, %175, %170, %165, %160, %155, %150, %146, %125
  %197 = phi ptr [ %120, %125 ], [ %141, %180 ], [ %141, %175 ], [ %141, %170 ], [ %141, %165 ], [ %141, %160 ], [ %141, %155 ], [ %141, %150 ], [ %141, %146 ]
  call fastcc void @nla_nest_cancel(ptr noundef %0, ptr noundef nonnull %197)
  br label %198

198:                                              ; preds = %196, %140, %119, %116, %113, %102, %99, %96, %93, %90, %87, %84, %81, %78
  %199 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %200 = load ptr, ptr %199, align 4
  %201 = icmp ugt ptr %200, %73
  br i1 %201, label %202, label %204, !prof !8

202:                                              ; preds = %198
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %203 = load ptr, ptr %199, align 4
  br label %204

204:                                              ; preds = %202, %198
  %205 = phi ptr [ %203, %202 ], [ %200, %198 ]
  %206 = ptrtoint ptr %73 to i32
  %207 = ptrtoint ptr %205 to i32
  %208 = sub i32 %206, %207
  call void @skb_trim(ptr noundef %0, i32 noundef %208) #18
  br label %209

209:                                              ; preds = %204, %37
  %210 = icmp eq ptr %3, null
  br i1 %210, label %222, label %211

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %213 = load ptr, ptr %212, align 4
  %214 = icmp ugt ptr %213, %3
  br i1 %214, label %215, label %217, !prof !8

215:                                              ; preds = %211
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %216 = load ptr, ptr %212, align 4
  br label %217

217:                                              ; preds = %215, %211
  %218 = phi ptr [ %216, %215 ], [ %213, %211 ]
  %219 = ptrtoint ptr %3 to i32
  %220 = ptrtoint ptr %218 to i32
  %221 = sub i32 %219, %220
  call void @skb_trim(ptr noundef %0, i32 noundef %221) #18
  br label %222

222:                                              ; preds = %217, %209, %185, %4
  %223 = phi i32 [ 0, %185 ], [ 0, %4 ], [ -90, %209 ], [ -90, %217 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  ret i32 %223
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_xdp_prog_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_populate_fdb_fill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef zeroext %8) unnamed_addr #0 {
  %10 = alloca i16, align 2
  store i16 %3, ptr %10, align 2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = icmp slt i32 %21, 28
  br i1 %22, label %60, label %23, !prof !8

23:                                               ; preds = %14
  %24 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 12, i32 noundef %7) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 16
  store i8 7, ptr %27, align 4
  %28 = getelementptr i8, ptr %24, i32 17
  store i8 0, ptr %28, align 1
  %29 = getelementptr i8, ptr %24, i32 18
  store i16 0, ptr %29, align 2
  %30 = getelementptr i8, ptr %24, i32 26
  store i8 2, ptr %30, align 2
  %31 = getelementptr i8, ptr %24, i32 27
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %24, i32 20
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %24, i32 24
  store i16 %8, ptr %35, align 4
  %36 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 6, ptr noundef %2) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = load i16, ptr %10, align 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %10) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %17, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = ptrtoint ptr %24 to i32
  %48 = sub i32 %46, %47
  store i32 %48, ptr %24, align 4
  br label %60

49:                                               ; preds = %41, %26
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ugt ptr %51, %24
  br i1 %52, label %53, label %55, !prof !8

53:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %54 = load ptr, ptr %50, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %54, %53 ], [ %51, %49 ]
  %57 = ptrtoint ptr %24 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = sub i32 %57, %58
  call void @skb_trim(ptr noundef %0, i32 noundef %59) #18
  br label %60

60:                                               ; preds = %55, %44, %23, %14, %9
  %61 = phi i32 [ -90, %55 ], [ 0, %44 ], [ -90, %23 ], [ -90, %14 ], [ -90, %9 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rtnetlink_net_init(ptr noundef %0) #10 section ".init.text" {
  %2 = alloca %struct.netlink_kernel_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.rtnetlink_net_init.cfg, i32 28, i1 false)
  %3 = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %2) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 20
  store ptr %3, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #18
  ret i32 %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtnetlink_net_exit(ptr nocapture noundef %0) #9 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  tail call void @netlink_kernel_release(ptr noundef %3) #18
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtnetlink_rcv(ptr noundef %0) #0 {
  %2 = tail call i32 @netlink_rcv_skb(ptr noundef %0, ptr noundef nonnull @rtnetlink_rcv_msg) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnetlink_bind(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = and i32 %1, -2
  %4 = icmp eq i32 %3, 30
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #18
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ 0, %9 ], [ -1, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnetlink_rcv_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [59 x ptr], align 4
  %5 = alloca %struct.netlink_dump_control, align 4
  %6 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, 119
  br i1 %8, label %191, label %9

9:                                                ; preds = %3
  %10 = zext i16 %7 to i32
  %11 = add nsw i32 %10, -16
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %191, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %1, i32 16
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %10, 3
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = tail call zeroext i1 @netlink_net_capable(ptr noundef %0, i32 noundef 12) #18
  br i1 %21, label %22, label %191

22:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  br label %121

23:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %24 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 768
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %121, label %28

28:                                               ; preds = %23
  %29 = icmp ugt i8 %16, -127
  %30 = select i1 %29, i32 0, i32 %17
  %31 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %30
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %32, %28 ], [ %35, %34 ]
  %38 = getelementptr ptr, ptr %37, i32 %11
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtnl_link, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %41, %36
  %46 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %46, %45 ], [ %49, %48 ]
  %52 = getelementptr ptr, ptr %51, i32 %11
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %190, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtnl_link, ptr %53, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %190, label %59

59:                                               ; preds = %55, %41
  %60 = phi ptr [ %43, %41 ], [ %57, %55 ]
  %61 = phi ptr [ %39, %41 ], [ %53, %55 ]
  %62 = getelementptr inbounds %struct.rtnl_link, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq i32 %11, 2
  br i1 %64, label %65, label %107

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %4, i8 0, i32 236, i1 false) #18, !annotation !16
  %66 = load i32, ptr %1, align 4
  %67 = and i32 %66, -16
  %68 = icmp eq i32 %67, 16
  %69 = select i1 %68, i32 1, i32 16
  %70 = add nuw nsw i32 %69, 16
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  br label %105

73:                                               ; preds = %65
  %74 = add nuw nsw i32 %69, 3
  %75 = and i32 %74, 20
  %76 = getelementptr i8, ptr %15, i32 %75
  %77 = add i32 %66, -16
  %78 = sub i32 %77, %75
  %79 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 58, ptr noundef %76, i32 noundef %78, ptr noundef nonnull @ifla_policy, i32 noundef 0, ptr noundef null) #18
  %80 = icmp sgt i32 %79, -1
  %81 = getelementptr inbounds [59 x ptr], ptr %4, i32 0, i32 29
  %82 = load ptr, ptr %81, align 4
  %83 = icmp ne ptr %82, null
  %84 = select i1 %80, i1 %83, i1 false
  br i1 %84, label %85, label %105

85:                                               ; preds = %73
  %86 = getelementptr i8, ptr %82, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %85
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %90 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %91 = icmp eq ptr %90, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %91, label %103, label %92

92:                                               ; preds = %92, %89
  %93 = phi ptr [ %98, %92 ], [ %90, %89 ]
  %94 = phi i32 [ %97, %92 ], [ 0, %89 ]
  %95 = getelementptr i8, ptr %93, i32 -40
  %96 = call fastcc i32 @if_nlmsg_size(ptr noundef %95, i32 noundef %87) #18
  %97 = call i32 @llvm.umax.i32(i32 %94, i32 %96) #18
  %98 = load volatile ptr, ptr %93, align 8
  %99 = icmp eq ptr %98, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %99, label %100, label %92

100:                                              ; preds = %92
  %101 = add i32 %97, 19
  %102 = and i32 %101, -4
  br label %103

103:                                              ; preds = %100, %89
  %104 = phi i32 [ 16, %89 ], [ %102, %100 ]
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %105

105:                                              ; preds = %103, %85, %73, %72
  %106 = phi i32 [ %104, %103 ], [ 3840, %85 ], [ 3840, %73 ], [ 3840, %72 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %4) #18
  br label %107

107:                                              ; preds = %105, %59
  %108 = phi i32 [ %106, %105 ], [ 0, %59 ]
  %109 = call zeroext i1 @try_module_get(ptr noundef %63) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br i1 %109, label %110, label %191

110:                                              ; preds = %107
  %111 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %112 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr %60, ptr %112, align 4
  %113 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 2
  store ptr null, ptr %113, align 4
  %114 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 3
  store ptr null, ptr %114, align 4
  %115 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 4
  store ptr %63, ptr %115, align 4
  %116 = getelementptr inbounds %struct.netlink_dump_control, ptr %5, i32 0, i32 5
  store i32 %108, ptr %116, align 4
  %117 = icmp eq ptr %63, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store ptr null, ptr %115, align 4
  br label %119

119:                                              ; preds = %118, %110
  %120 = call i32 @__netlink_dump_start(ptr noundef %111, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #18
  call void @module_put(ptr noundef %63) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %191

121:                                              ; preds = %23, %22
  %122 = icmp ugt i8 %16, -127
  %123 = select i1 %122, i32 0, i32 %17
  %124 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %123
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi ptr [ %125, %121 ], [ %128, %127 ]
  %131 = getelementptr ptr, ptr %130, i32 %11
  %132 = load volatile ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %132, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %134, %129
  %138 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi ptr [ %138, %137 ], [ %141, %140 ]
  %144 = getelementptr ptr, ptr %143, i32 %11
  %145 = load volatile ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %188, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %145, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %188, label %150

150:                                              ; preds = %147, %134
  %151 = phi ptr [ %132, %134 ], [ %145, %147 ]
  %152 = phi i32 [ %17, %134 ], [ 0, %147 ]
  %153 = getelementptr inbounds %struct.rtnl_link, ptr %151, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = tail call zeroext i1 @try_module_get(ptr noundef %154) #18
  br i1 %155, label %156, label %188

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.rtnl_link, ptr %151, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %151, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = tail call i32 %162(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i32 [ %165, %164 ], [ -95, %161 ]
  tail call void @module_put(ptr noundef %154) #18
  br label %191

168:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  tail call void @mutex_lock(ptr noundef nonnull @rtnl_mutex) #18
  %169 = icmp ugt i32 %152, 129
  %170 = select i1 %169, i32 0, i32 %152
  %171 = getelementptr [130 x ptr], ptr @rtnl_msg_handlers, i32 0, i32 %170
  %172 = load volatile ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load volatile ptr, ptr @rtnl_msg_handlers, align 4
  br label %176

176:                                              ; preds = %174, %168
  %177 = phi ptr [ %172, %168 ], [ %175, %174 ]
  %178 = getelementptr ptr, ptr %177, i32 %11
  %179 = load volatile ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr %179, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = tail call i32 %182(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %186

186:                                              ; preds = %184, %181, %176
  %187 = phi i32 [ %185, %184 ], [ -95, %181 ], [ -95, %176 ]
  tail call void @netdev_run_todo() #18
  tail call void @module_put(ptr noundef %154) #18
  br label %191

188:                                              ; preds = %150, %147, %142
  %189 = phi i32 [ -95, %147 ], [ -95, %142 ], [ -93, %150 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %191

190:                                              ; preds = %55, %50
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %191

191:                                              ; preds = %190, %188, %186, %166, %119, %107, %20, %9, %3
  %192 = phi i32 [ -95, %190 ], [ %167, %166 ], [ %187, %186 ], [ %189, %188 ], [ -95, %3 ], [ 0, %9 ], [ -1, %20 ], [ %120, %119 ], [ -93, %107 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnetlink_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = add i32 %1, -3
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = lshr i32 153954097, %5
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 102
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds [28 x i32], ptr @switch.table.rtnetlink_event, i32 0, i32 %5
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @rtmsg_ifinfo_build_skb(i32 noundef 16, ptr noundef %4, i32 noundef 0, i32 noundef %17, i32 noundef 3264, ptr noundef null, i32 noundef 0) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %22 = tail call i32 @nlmsg_notify(ptr noundef %21, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #18
  br label %23

23:                                               ; preds = %20, %15, %11, %7, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #7 {
  %7 = load i32, ptr %0, align 4
  %8 = add i32 %1, 16
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %11 = icmp eq ptr %5, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  store ptr @__nlmsg_parse.__msg, ptr %5, align 4
  br label %21

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 16
  %15 = add i32 %1, 3
  %16 = and i32 %15, -4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = sub i32 -16, %16
  %19 = add i32 %18, %7
  %20 = tail call i32 @__nla_parse(ptr noundef %2, i32 noundef %3, ptr noundef %17, i32 noundef %19, ptr noundef %4, i32 noundef 3, ptr noundef %5) #18
  br label %21

21:                                               ; preds = %13, %12, %10
  %22 = phi i32 [ %20, %13 ], [ -22, %12 ], [ -22, %10 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_setlink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.ifla_vf_info, align 4
  %9 = alloca %struct.ifmap, align 4
  %10 = alloca [14 x ptr], align 4
  %11 = alloca [8 x ptr], align 4
  %12 = alloca [8 x ptr], align 4
  %13 = alloca [9 x ptr], align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = tail call fastcc i32 @validate_linkmsg(ptr noundef %1, ptr noundef %4, ptr noundef %3)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %886, label %18

18:                                               ; preds = %7
  %19 = getelementptr ptr, ptr %4, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr ptr, ptr %4, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr ptr, ptr %4, i32 46
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %78, label %30

30:                                               ; preds = %26, %22, %18
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = load i8, ptr %5, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr null, ptr %5
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi ptr [ null, %30 ], [ %35, %32 ]
  br i1 %21, label %38, label %42

38:                                               ; preds = %36
  %39 = getelementptr ptr, ptr %4, i32 28
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %62

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %20, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = tail call ptr @get_net_ns_by_pid(i32 noundef %44) #18
  br label %55

46:                                               ; preds = %38
  %47 = getelementptr ptr, ptr %4, i32 46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %48, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = tail call ptr @get_net_ns_by_id(ptr noundef nonnull @init_net, i32 noundef %52) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50, %46, %42
  %56 = phi ptr [ %45, %42 ], [ @init_net, %46 ], [ %53, %50 ]
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = tail call zeroext i1 @netlink_ns_capable(ptr noundef %0, ptr noundef %60, i32 noundef 12) #18
  br i1 %61, label %65, label %62

62:                                               ; preds = %58, %55, %50, %38
  %63 = phi ptr [ inttoptr (i32 -1 to ptr), %58 ], [ inttoptr (i32 -22 to ptr), %50 ], [ inttoptr (i32 -22 to ptr), %38 ], [ %56, %55 ]
  %64 = ptrtoint ptr %63 to i32
  br label %870

65:                                               ; preds = %58
  %66 = getelementptr ptr, ptr %4, i32 49
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %67, i32 4
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %71, %69 ], [ 0, %65 ]
  %74 = tail call i32 @__dev_change_net_namespace(ptr noundef %1, ptr noundef %56, ptr noundef %37, i32 noundef %73) #18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %870

76:                                               ; preds = %72
  %77 = or i32 %6, 1
  br label %78

78:                                               ; preds = %76, %26
  %79 = phi i32 [ %77, %76 ], [ %6, %26 ]
  %80 = getelementptr ptr, ptr %4, i32 14
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %119, label %83

83:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false), !annotation !16
  %84 = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 16
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %116, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %87
  %93 = getelementptr i8, ptr %81, i32 4
  %94 = load i64, ptr %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, ptr %9, align 4
  %96 = getelementptr i8, ptr %81, i32 12
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.ifmap, ptr %9, i32 0, i32 1
  store i32 %98, ptr %99, align 4
  %100 = getelementptr i8, ptr %81, i32 20
  %101 = load i64, ptr %100, align 8
  %102 = trunc i64 %101 to i16
  %103 = getelementptr inbounds %struct.ifmap, ptr %9, i32 0, i32 2
  store i16 %102, ptr %103, align 4
  %104 = getelementptr i8, ptr %81, i32 28
  %105 = load i16, ptr %104, align 8
  %106 = trunc i16 %105 to i8
  %107 = getelementptr inbounds %struct.ifmap, ptr %9, i32 0, i32 3
  store i8 %106, ptr %107, align 2
  %108 = getelementptr i8, ptr %81, i32 30
  %109 = load i8, ptr %108, align 2
  %110 = getelementptr inbounds %struct.ifmap, ptr %9, i32 0, i32 4
  store i8 %109, ptr %110, align 1
  %111 = getelementptr i8, ptr %81, i32 31
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr inbounds %struct.ifmap, ptr %9, i32 0, i32 5
  store i8 %112, ptr %113, align 4
  %114 = call i32 %85(ptr noundef %1, ptr noundef nonnull %9) #18
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %92, %87, %83
  %117 = phi i32 [ -19, %87 ], [ -95, %83 ], [ %114, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %870

118:                                              ; preds = %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %119

119:                                              ; preds = %118, %78
  %120 = phi i32 [ 3, %118 ], [ %79, %78 ]
  %121 = getelementptr ptr, ptr %4, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %144, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %126 = load i8, ptr %125, align 1
  %127 = call i8 @llvm.umax.i8(i8 %126, i8 16)
  %128 = zext i8 %127 to i32
  %129 = add nuw nsw i32 %128, 2
  %130 = call noalias align 64 ptr @__kmalloc(i32 noundef %129, i32 noundef 3264) #22
  %131 = icmp eq ptr %130, null
  br i1 %131, label %870, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %134 = load i16, ptr %133, align 16
  store i16 %134, ptr %130, align 64
  %135 = getelementptr inbounds %struct.sockaddr, ptr %130, i32 0, i32 1
  %136 = load ptr, ptr %121, align 4
  %137 = getelementptr i8, ptr %136, i32 4
  %138 = load i8, ptr %125, align 1
  %139 = zext i8 %138 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %135, ptr align 1 %137, i32 %139, i1 false)
  %140 = call i32 @dev_set_mac_address_user(ptr noundef %1, ptr noundef nonnull %130, ptr noundef %3) #18
  call void @kfree(ptr noundef nonnull %130) #18
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %870

142:                                              ; preds = %132
  %143 = or i32 %120, 1
  br label %144

144:                                              ; preds = %142, %119
  %145 = phi i32 [ %143, %142 ], [ %120, %119 ]
  %146 = getelementptr ptr, ptr %4, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %144
  %150 = getelementptr i8, ptr %147, i32 4
  %151 = load i32, ptr %150, align 4
  %152 = call i32 @dev_set_mtu_ext(ptr noundef %1, i32 noundef %151, ptr noundef %3) #18
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %870, label %154

154:                                              ; preds = %149
  %155 = or i32 %145, 1
  br label %156

156:                                              ; preds = %154, %144
  %157 = phi i32 [ %155, %154 ], [ %145, %144 ]
  %158 = getelementptr ptr, ptr %4, i32 27
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr i8, ptr %159, i32 4
  %163 = load i32, ptr %162, align 4
  call void @dev_set_group(ptr noundef %1, i32 noundef %163) #18
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ 3, %161 ], [ %157, %156 ]
  %166 = getelementptr inbounds %struct.ifinfomsg, ptr %2, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load i8, ptr %5, align 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = call i32 @dev_change_name(ptr noundef %1, ptr noundef %5) #18
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %870, label %175

175:                                              ; preds = %172
  %176 = or i32 %165, 1
  br label %177

177:                                              ; preds = %175, %169, %164
  %178 = phi i32 [ %176, %175 ], [ %165, %169 ], [ %165, %164 ]
  %179 = getelementptr ptr, ptr %4, i32 20
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %189, label %182

182:                                              ; preds = %177
  %183 = getelementptr i8, ptr %180, i32 4
  %184 = load i16, ptr %180, align 2
  %185 = zext i16 %184 to i32
  %186 = add nsw i32 %185, -4
  %187 = call i32 @dev_set_alias(ptr noundef %1, ptr noundef %183, i32 noundef %186) #18
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %870, label %189

189:                                              ; preds = %182, %177
  %190 = phi i32 [ %178, %177 ], [ 3, %182 ]
  %191 = getelementptr ptr, ptr %4, i32 2
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %201, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %196 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = call i32 @nla_memcpy(ptr noundef %195, ptr noundef nonnull %192, i32 noundef %198) #18
  %200 = call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %1) #18
  br label %201

201:                                              ; preds = %194, %189
  %202 = getelementptr inbounds %struct.ifinfomsg, ptr %2, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  %205 = getelementptr inbounds %struct.ifinfomsg, ptr %2, i32 0, i32 5
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %204, label %208, label %209

208:                                              ; preds = %201
  br i1 %207, label %227, label %210

209:                                              ; preds = %201
  br i1 %207, label %223, label %210

210:                                              ; preds = %209, %208
  %211 = and i32 %206, %203
  %212 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, -769
  %215 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 18
  %216 = load i16, ptr %215, align 64
  %217 = and i16 %216, 768
  %218 = zext i16 %217 to i32
  %219 = or i32 %214, %218
  %220 = xor i32 %206, -1
  %221 = and i32 %219, %220
  %222 = or i32 %221, %211
  br label %223

223:                                              ; preds = %210, %209
  %224 = phi i32 [ %222, %210 ], [ %203, %209 ]
  %225 = call i32 @dev_change_flags(ptr noundef %1, i32 noundef %224, ptr noundef %3) #18
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %870, label %227

227:                                              ; preds = %223, %208
  %228 = getelementptr ptr, ptr %4, i32 10
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %265, label %231

231:                                              ; preds = %227
  %232 = getelementptr i8, ptr %229, i32 4
  %233 = load i32, ptr %232, align 4
  %234 = call ptr @netdev_master_upper_dev_get(ptr noundef %1) #18
  %235 = icmp eq ptr %234, null
  br i1 %235, label %249, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.net_device, ptr %234, i32 0, i32 17
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, %233
  br i1 %239, label %263, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.net_device, ptr %234, i32 0, i32 16
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.net_device_ops, ptr %242, i32 0, i32 42
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %870, label %246

246:                                              ; preds = %240
  %247 = call i32 %244(ptr noundef nonnull %234, ptr noundef %1) #18
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %870

249:                                              ; preds = %246, %231
  %250 = icmp eq i32 %233, 0
  br i1 %250, label %263, label %251

251:                                              ; preds = %249
  %252 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %233) #18
  %253 = icmp eq ptr %252, null
  br i1 %253, label %870, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.net_device, ptr %252, i32 0, i32 16
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr inbounds %struct.net_device_ops, ptr %256, i32 0, i32 41
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %870, label %260

260:                                              ; preds = %254
  %261 = call i32 %258(ptr noundef nonnull %252, ptr noundef %1, ptr noundef %3) #18
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %870

263:                                              ; preds = %260, %249, %236
  %264 = or i32 %190, 1
  br label %265

265:                                              ; preds = %263, %227
  %266 = phi i32 [ %264, %263 ], [ %190, %227 ]
  %267 = getelementptr ptr, ptr %4, i32 33
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %278, label %270

270:                                              ; preds = %265
  %271 = getelementptr i8, ptr %268, i32 4
  %272 = load i8, ptr %271, align 1
  %273 = icmp ne i8 %272, 0
  %274 = call i32 @dev_change_carrier(ptr noundef %1, i1 noundef zeroext %273) #18
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %870

276:                                              ; preds = %270
  %277 = or i32 %266, 1
  br label %278

278:                                              ; preds = %276, %265
  %279 = phi i32 [ %277, %276 ], [ %266, %265 ]
  %280 = getelementptr ptr, ptr %4, i32 13
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %289, label %283

283:                                              ; preds = %278
  %284 = getelementptr i8, ptr %281, i32 4
  %285 = load i32, ptr %284, align 4
  %286 = call i32 @dev_change_tx_queue_len(ptr noundef %1, i32 noundef %285) #18
  %287 = icmp eq i32 %286, 0
  %288 = or i32 %279, 1
  br i1 %287, label %289, label %870

289:                                              ; preds = %283, %278
  %290 = phi i32 [ %288, %283 ], [ %279, %278 ]
  %291 = getelementptr ptr, ptr %4, i32 41
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %304, label %294

294:                                              ; preds = %289
  %295 = getelementptr i8, ptr %292, i32 4
  %296 = load i32, ptr %295, align 4
  %297 = icmp ugt i32 %296, 65536
  br i1 %297, label %870, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 115
  %300 = load i32, ptr %299, align 32
  %301 = icmp eq i32 %300, %296
  br i1 %301, label %304, label %302

302:                                              ; preds = %298
  store volatile i32 %296, ptr %299, align 32
  %303 = or i32 %290, 1
  br label %304

304:                                              ; preds = %302, %298, %289
  %305 = phi i32 [ %290, %289 ], [ %290, %298 ], [ %303, %302 ]
  %306 = getelementptr ptr, ptr %4, i32 40
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %321, label %309

309:                                              ; preds = %304
  %310 = getelementptr i8, ptr %307, i32 4
  %311 = load i32, ptr %310, align 4
  %312 = icmp ugt i32 %311, 65535
  br i1 %312, label %870, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 116
  %315 = load i16, ptr %314, align 4
  %316 = zext i16 %315 to i32
  %317 = icmp eq i32 %311, %316
  br i1 %317, label %321, label %318

318:                                              ; preds = %313
  %319 = trunc i32 %311 to i16
  store volatile i16 %319, ptr %314, align 4
  %320 = or i32 %305, 1
  br label %321

321:                                              ; preds = %318, %313, %304
  %322 = phi i32 [ %305, %304 ], [ %305, %313 ], [ %320, %318 ]
  %323 = getelementptr ptr, ptr %4, i32 58
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %334, label %326

326:                                              ; preds = %321
  %327 = getelementptr i8, ptr %324, i32 4
  %328 = load i32, ptr %327, align 4
  %329 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 79
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, %328
  br i1 %331, label %334, label %332

332:                                              ; preds = %326
  store volatile i32 %328, ptr %329, align 4
  %333 = or i32 %322, 1
  br label %334

334:                                              ; preds = %332, %326, %321
  %335 = phi i32 [ %322, %321 ], [ %333, %332 ], [ %322, %326 ]
  %336 = getelementptr ptr, ptr %4, i32 16
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %342, label %339

339:                                              ; preds = %334
  %340 = getelementptr i8, ptr %337, i32 4
  %341 = load i8, ptr %340, align 1
  call fastcc void @set_operstate(ptr noundef %1, i8 noundef zeroext %341)
  br label %342

342:                                              ; preds = %339, %334
  %343 = getelementptr ptr, ptr %4, i32 17
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %353, label %346

346:                                              ; preds = %342
  %347 = getelementptr i8, ptr %344, i32 4
  %348 = load i8, ptr %347, align 1
  call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #18
  %349 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 46
  %350 = load i8, ptr %349, align 1
  %351 = icmp eq i8 %350, %348
  %352 = select i1 %351, i32 %335, i32 3
  store i8 %348, ptr %349, align 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @dev_base_lock, i32 0) #18, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  br label %353

353:                                              ; preds = %346, %342
  %354 = phi i32 [ %352, %346 ], [ %335, %342 ]
  %355 = getelementptr ptr, ptr %4, i32 22
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %677, label %358

358:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 56, i1 false), !annotation !16
  %359 = load i16, ptr %356, align 2
  %360 = icmp ugt i16 %359, 7
  br i1 %360, label %361, label %675

361:                                              ; preds = %358
  %362 = zext i16 %359 to i32
  %363 = add nsw i32 %362, -4
  %364 = getelementptr i8, ptr %356, i32 4
  %365 = getelementptr inbounds ptr, ptr %10, i32 1
  %366 = getelementptr inbounds ptr, ptr %10, i32 2
  %367 = getelementptr inbounds ptr, ptr %10, i32 12
  %368 = getelementptr inbounds ptr, ptr %10, i32 3
  %369 = getelementptr inbounds %struct.ifla_vf_info, ptr %8, i32 0, i32 6
  %370 = getelementptr inbounds ptr, ptr %10, i32 6
  %371 = getelementptr inbounds ptr, ptr %10, i32 4
  %372 = getelementptr inbounds ptr, ptr %10, i32 5
  %373 = getelementptr inbounds ptr, ptr %10, i32 7
  %374 = getelementptr inbounds ptr, ptr %10, i32 9
  %375 = getelementptr inbounds ptr, ptr %10, i32 10
  %376 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %377 = getelementptr inbounds ptr, ptr %10, i32 11
  br label %378

378:                                              ; preds = %665, %361
  %379 = phi ptr [ %364, %361 ], [ %671, %665 ]
  %380 = phi i32 [ %354, %361 ], [ 3, %665 ]
  %381 = phi i32 [ %363, %361 ], [ %670, %665 ]
  %382 = load i16, ptr %379, align 2
  %383 = icmp ult i16 %382, 4
  %384 = zext i16 %382 to i32
  %385 = icmp ult i32 %381, %384
  %386 = select i1 %383, i1 true, i1 %385
  br i1 %386, label %675, label %387

387:                                              ; preds = %378
  %388 = getelementptr inbounds %struct.nlattr, ptr %379, i32 0, i32 1
  %389 = load i16, ptr %388, align 2
  %390 = and i16 %389, 16383
  %391 = icmp ne i16 %390, 1
  %392 = icmp ult i16 %382, 8
  %393 = select i1 %391, i1 true, i1 %392
  br i1 %393, label %673, label %394

394:                                              ; preds = %387
  %395 = add nsw i32 %384, -4
  %396 = getelementptr i8, ptr %379, i32 4
  %397 = call i32 @__nla_parse(ptr noundef nonnull %10, i32 noundef 13, ptr noundef %396, i32 noundef %395, ptr noundef nonnull @ifla_vf_policy, i32 noundef 0, ptr noundef null) #18
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %673, label %399

399:                                              ; preds = %394
  %400 = load ptr, ptr %14, align 8
  %401 = load ptr, ptr %365, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %415, label %403

403:                                              ; preds = %399
  %404 = getelementptr i8, ptr %401, i32 4
  %405 = load i32, ptr %404, align 4
  %406 = icmp ugt i32 %405, 2147483646
  br i1 %406, label %673, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 26
  %409 = load ptr, ptr %408, align 4
  %410 = icmp eq ptr %409, null
  br i1 %410, label %673, label %411

411:                                              ; preds = %407
  %412 = getelementptr i8, ptr %401, i32 8
  %413 = call i32 %409(ptr noundef %1, i32 noundef %405, ptr noundef %412) #18
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %673, label %415

415:                                              ; preds = %411, %399
  %416 = phi i32 [ %413, %411 ], [ -22, %399 ]
  %417 = load ptr, ptr %366, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %436, label %419

419:                                              ; preds = %415
  %420 = getelementptr i8, ptr %417, i32 4
  %421 = load i32, ptr %420, align 4
  %422 = icmp ugt i32 %421, 2147483646
  br i1 %422, label %673, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 27
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %673, label %427

427:                                              ; preds = %423
  %428 = getelementptr i8, ptr %417, i32 8
  %429 = load i32, ptr %428, align 4
  %430 = trunc i32 %429 to i16
  %431 = getelementptr i8, ptr %417, i32 12
  %432 = load i32, ptr %431, align 4
  %433 = trunc i32 %432 to i8
  %434 = call i32 %425(ptr noundef %1, i32 noundef %421, i16 noundef zeroext %430, i8 noundef zeroext %433, i16 noundef zeroext 129) #18
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %673, label %436

436:                                              ; preds = %427, %415
  %437 = phi i32 [ %434, %427 ], [ %416, %415 ]
  %438 = load ptr, ptr %367, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %495, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 27
  %442 = load ptr, ptr %441, align 4
  %443 = icmp eq ptr %442, null
  br i1 %443, label %673, label %444

444:                                              ; preds = %440
  %445 = load i16, ptr %438, align 2
  %446 = icmp ugt i16 %445, 7
  br i1 %446, label %447, label %673

447:                                              ; preds = %444
  %448 = zext i16 %445 to i32
  %449 = add nsw i32 %448, -4
  %450 = getelementptr i8, ptr %438, i32 4
  %451 = load i16, ptr %450, align 2
  %452 = icmp ult i16 %451, 4
  %453 = zext i16 %451 to i32
  %454 = icmp ult i32 %449, %453
  %455 = select i1 %452, i1 true, i1 %454
  br i1 %455, label %673, label %468

456:                                              ; preds = %475
  %457 = getelementptr i8, ptr %450, i32 %477
  %458 = load i16, ptr %457, align 2
  %459 = icmp ult i16 %458, 4
  %460 = zext i16 %458 to i32
  %461 = icmp ult i32 %478, %460
  %462 = select i1 %459, i1 true, i1 %461
  br i1 %462, label %480, label %463

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.nlattr, ptr %457, i32 0, i32 1
  %465 = load i16, ptr %464, align 2
  %466 = and i16 %465, 16383
  %467 = icmp eq i16 %466, 1
  br i1 %467, label %657, label %673

468:                                              ; preds = %447
  %469 = getelementptr i8, ptr %438, i32 6
  %470 = load i16, ptr %469, align 2
  %471 = and i16 %470, 16383
  %472 = icmp eq i16 %471, 1
  br i1 %472, label %473, label %673

473:                                              ; preds = %468
  %474 = icmp ult i16 %451, 8
  br i1 %474, label %659, label %475

475:                                              ; preds = %473
  %476 = add nuw nsw i32 %453, 3
  %477 = and i32 %476, 131068
  %478 = sub nsw i32 %449, %477
  %479 = icmp sgt i32 %478, 3
  br i1 %479, label %456, label %480

480:                                              ; preds = %475, %456
  %481 = getelementptr i8, ptr %450, i32 4
  %482 = load i32, ptr %481, align 4
  %483 = icmp ugt i32 %482, 2147483646
  br i1 %483, label %673, label %484

484:                                              ; preds = %480
  %485 = getelementptr i8, ptr %450, i32 8
  %486 = load i32, ptr %485, align 4
  %487 = trunc i32 %486 to i16
  %488 = getelementptr i8, ptr %450, i32 12
  %489 = load i32, ptr %488, align 4
  %490 = trunc i32 %489 to i8
  %491 = getelementptr i8, ptr %450, i32 16
  %492 = load i16, ptr %491, align 4
  %493 = call i32 %442(ptr noundef %1, i32 noundef %482, i16 noundef zeroext %487, i8 noundef zeroext %490, i16 noundef zeroext %492) #18
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %673, label %495

495:                                              ; preds = %484, %436
  %496 = phi i32 [ %493, %484 ], [ %437, %436 ]
  %497 = load ptr, ptr %368, align 4
  %498 = icmp eq ptr %497, null
  br i1 %498, label %524, label %499

499:                                              ; preds = %495
  %500 = getelementptr i8, ptr %497, i32 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 72, i1 false) #18, !annotation !16
  %501 = load i32, ptr %500, align 4
  %502 = icmp ugt i32 %501, 2147483646
  br i1 %502, label %515, label %503

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 31
  %505 = load ptr, ptr %504, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %515, label %507

507:                                              ; preds = %503
  %508 = call i32 %505(ptr noundef %1, i32 noundef %501, ptr noundef nonnull %8) #18
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %515, label %510

510:                                              ; preds = %507
  %511 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 28
  %512 = load ptr, ptr %511, align 4
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #18
  br label %673

515:                                              ; preds = %507, %503, %499
  %516 = phi i32 [ %508, %507 ], [ -22, %499 ], [ -95, %503 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #18
  br label %673

517:                                              ; preds = %510
  %518 = load i32, ptr %500, align 4
  %519 = load i32, ptr %369, align 4
  %520 = getelementptr i8, ptr %497, i32 8
  %521 = load i32, ptr %520, align 4
  %522 = call i32 %512(ptr noundef %1, i32 noundef %518, i32 noundef %519, i32 noundef %521) #18
  %523 = icmp slt i32 %522, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #18
  br i1 %523, label %673, label %524

524:                                              ; preds = %517, %495
  %525 = phi i32 [ %522, %517 ], [ %496, %495 ]
  %526 = load ptr, ptr %370, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %543, label %528

528:                                              ; preds = %524
  %529 = getelementptr i8, ptr %526, i32 4
  %530 = load i32, ptr %529, align 4
  %531 = icmp ugt i32 %530, 2147483646
  br i1 %531, label %673, label %532

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 28
  %534 = load ptr, ptr %533, align 4
  %535 = icmp eq ptr %534, null
  br i1 %535, label %673, label %536

536:                                              ; preds = %532
  %537 = getelementptr i8, ptr %526, i32 8
  %538 = load i32, ptr %537, align 4
  %539 = getelementptr i8, ptr %526, i32 12
  %540 = load i32, ptr %539, align 4
  %541 = call i32 %534(ptr noundef %1, i32 noundef %530, i32 noundef %538, i32 noundef %540) #18
  %542 = icmp slt i32 %541, 0
  br i1 %542, label %673, label %543

543:                                              ; preds = %536, %524
  %544 = phi i32 [ %541, %536 ], [ %525, %524 ]
  %545 = load ptr, ptr %371, align 4
  %546 = icmp eq ptr %545, null
  br i1 %546, label %561, label %547

547:                                              ; preds = %543
  %548 = getelementptr i8, ptr %545, i32 4
  %549 = load i32, ptr %548, align 4
  %550 = icmp ugt i32 %549, 2147483646
  br i1 %550, label %673, label %551

551:                                              ; preds = %547
  %552 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 29
  %553 = load ptr, ptr %552, align 4
  %554 = icmp eq ptr %553, null
  br i1 %554, label %673, label %555

555:                                              ; preds = %551
  %556 = getelementptr i8, ptr %545, i32 8
  %557 = load i32, ptr %556, align 4
  %558 = icmp ne i32 %557, 0
  %559 = call i32 %553(ptr noundef %1, i32 noundef %549, i1 noundef zeroext %558) #18
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %673, label %561

561:                                              ; preds = %555, %543
  %562 = phi i32 [ %559, %555 ], [ %544, %543 ]
  %563 = load ptr, ptr %372, align 4
  %564 = icmp eq ptr %563, null
  br i1 %564, label %578, label %565

565:                                              ; preds = %561
  %566 = getelementptr i8, ptr %563, i32 4
  %567 = load i32, ptr %566, align 4
  %568 = icmp ugt i32 %567, 2147483646
  br i1 %568, label %673, label %569

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 32
  %571 = load ptr, ptr %570, align 4
  %572 = icmp eq ptr %571, null
  br i1 %572, label %673, label %573

573:                                              ; preds = %569
  %574 = getelementptr i8, ptr %563, i32 8
  %575 = load i32, ptr %574, align 4
  %576 = call i32 %571(ptr noundef %1, i32 noundef %567, i32 noundef %575) #18
  %577 = icmp slt i32 %576, 0
  br i1 %577, label %673, label %578

578:                                              ; preds = %573, %561
  %579 = phi i32 [ %576, %573 ], [ %562, %561 ]
  %580 = load ptr, ptr %373, align 4
  %581 = icmp eq ptr %580, null
  br i1 %581, label %596, label %582

582:                                              ; preds = %578
  %583 = getelementptr i8, ptr %580, i32 4
  %584 = load i32, ptr %583, align 4
  %585 = icmp ugt i32 %584, 2147483646
  br i1 %585, label %673, label %586

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 38
  %588 = load ptr, ptr %587, align 4
  %589 = icmp eq ptr %588, null
  br i1 %589, label %673, label %590

590:                                              ; preds = %586
  %591 = getelementptr i8, ptr %580, i32 8
  %592 = load i32, ptr %591, align 4
  %593 = icmp ne i32 %592, 0
  %594 = call i32 %588(ptr noundef %1, i32 noundef %584, i1 noundef zeroext %593) #18
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %673, label %596

596:                                              ; preds = %590, %578
  %597 = phi i32 [ %594, %590 ], [ %579, %578 ]
  %598 = load ptr, ptr %374, align 4
  %599 = icmp eq ptr %598, null
  br i1 %599, label %614, label %600

600:                                              ; preds = %596
  %601 = getelementptr i8, ptr %598, i32 4
  %602 = load i32, ptr %601, align 4
  %603 = icmp ugt i32 %602, 2147483646
  br i1 %603, label %673, label %604

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 30
  %606 = load ptr, ptr %605, align 4
  %607 = icmp eq ptr %606, null
  br i1 %607, label %673, label %608

608:                                              ; preds = %604
  %609 = getelementptr i8, ptr %598, i32 8
  %610 = load i32, ptr %609, align 4
  %611 = icmp ne i32 %610, 0
  %612 = call i32 %606(ptr noundef %1, i32 noundef %602, i1 noundef zeroext %611) #18
  %613 = icmp slt i32 %612, 0
  br i1 %613, label %673, label %614

614:                                              ; preds = %608, %596
  %615 = phi i32 [ %612, %608 ], [ %597, %596 ]
  %616 = load ptr, ptr %375, align 4
  %617 = icmp eq ptr %616, null
  br i1 %617, label %636, label %618

618:                                              ; preds = %614
  %619 = getelementptr i8, ptr %616, i32 4
  %620 = load i32, ptr %619, align 8
  %621 = icmp ugt i32 %620, 2147483646
  br i1 %621, label %673, label %622

622:                                              ; preds = %618
  %623 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 37
  %624 = load ptr, ptr %623, align 4
  %625 = icmp eq ptr %624, null
  br i1 %625, label %673, label %626

626:                                              ; preds = %622
  %627 = load i16, ptr %376, align 16
  %628 = icmp eq i16 %627, 32
  br i1 %628, label %629, label %673

629:                                              ; preds = %626
  %630 = load ptr, ptr %14, align 8
  %631 = getelementptr inbounds %struct.net_device_ops, ptr %630, i32 0, i32 37
  %632 = load ptr, ptr %631, align 4
  %633 = getelementptr i8, ptr %616, i32 12
  %634 = load i64, ptr %633, align 8
  %635 = call i32 %632(ptr noundef %1, i32 noundef %620, i64 noundef %634, i32 noundef 10) #18
  br label %662

636:                                              ; preds = %614
  %637 = load ptr, ptr %377, align 4
  %638 = icmp eq ptr %637, null
  br i1 %638, label %662, label %639

639:                                              ; preds = %636
  %640 = getelementptr i8, ptr %637, i32 4
  %641 = load i32, ptr %640, align 8
  %642 = icmp ugt i32 %641, 2147483646
  br i1 %642, label %673, label %643

643:                                              ; preds = %639
  %644 = getelementptr inbounds %struct.net_device_ops, ptr %400, i32 0, i32 37
  %645 = load ptr, ptr %644, align 4
  %646 = icmp eq ptr %645, null
  br i1 %646, label %673, label %647

647:                                              ; preds = %643
  %648 = load i16, ptr %376, align 16
  %649 = icmp eq i16 %648, 32
  br i1 %649, label %650, label %673

650:                                              ; preds = %647
  %651 = load ptr, ptr %14, align 8
  %652 = getelementptr inbounds %struct.net_device_ops, ptr %651, i32 0, i32 37
  %653 = load ptr, ptr %652, align 4
  %654 = getelementptr i8, ptr %637, i32 12
  %655 = load i64, ptr %654, align 8
  %656 = call i32 %653(ptr noundef %1, i32 noundef %641, i64 noundef %655, i32 noundef 11) #18
  br label %662

657:                                              ; preds = %463
  %658 = icmp ult i16 %458, 8
  br label %659

659:                                              ; preds = %657, %473
  %660 = phi i1 [ %658, %657 ], [ %474, %473 ]
  %661 = select i1 %660, i32 -22, i32 -95
  br label %673

662:                                              ; preds = %650, %636, %629
  %663 = phi i32 [ %615, %636 ], [ %635, %629 ], [ %656, %650 ]
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %673, label %665

665:                                              ; preds = %662
  %666 = load i16, ptr %379, align 2
  %667 = zext i16 %666 to i32
  %668 = add nuw nsw i32 %667, 3
  %669 = and i32 %668, 131068
  %670 = sub i32 %381, %669
  %671 = getelementptr i8, ptr %379, i32 %669
  %672 = icmp sgt i32 %670, 3
  br i1 %672, label %378, label %675

673:                                              ; preds = %662, %659, %647, %643, %639, %626, %622, %618, %608, %604, %600, %590, %586, %582, %573, %569, %565, %555, %551, %547, %536, %532, %528, %517, %515, %514, %484, %480, %468, %463, %447, %444, %440, %427, %423, %419, %411, %407, %403, %394, %387
  %674 = phi i32 [ %661, %659 ], [ -95, %514 ], [ %516, %515 ], [ -22, %463 ], [ -22, %468 ], [ -22, %444 ], [ -95, %604 ], [ -22, %600 ], [ -95, %586 ], [ -22, %582 ], [ -95, %569 ], [ -22, %565 ], [ -95, %551 ], [ -22, %547 ], [ -95, %532 ], [ -22, %528 ], [ -95, %440 ], [ -22, %480 ], [ -95, %423 ], [ -22, %419 ], [ -95, %407 ], [ -22, %403 ], [ -95, %647 ], [ -95, %626 ], [ -95, %643 ], [ -22, %639 ], [ -95, %622 ], [ -22, %618 ], [ %413, %411 ], [ %434, %427 ], [ %493, %484 ], [ %522, %517 ], [ %541, %536 ], [ %559, %555 ], [ %576, %573 ], [ %594, %590 ], [ %612, %608 ], [ %663, %662 ], [ %397, %394 ], [ -22, %387 ], [ -22, %447 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #18
  br label %870

675:                                              ; preds = %665, %378, %358
  %676 = phi i32 [ %354, %358 ], [ 3, %665 ], [ %380, %378 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #18
  br label %677

677:                                              ; preds = %675, %353
  %678 = phi i32 [ %676, %675 ], [ %354, %353 ]
  %679 = getelementptr ptr, ptr %4, i32 24
  %680 = load ptr, ptr %679, align 4
  %681 = icmp eq ptr %680, null
  br i1 %681, label %737, label %682

682:                                              ; preds = %677
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false), !annotation !16
  %683 = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 34
  %684 = load ptr, ptr %683, align 4
  %685 = icmp eq ptr %684, null
  br i1 %685, label %732, label %686

686:                                              ; preds = %682
  %687 = load i16, ptr %680, align 2
  %688 = icmp ugt i16 %687, 7
  br i1 %688, label %689, label %735

689:                                              ; preds = %686
  %690 = zext i16 %687 to i32
  %691 = add nsw i32 %690, -4
  %692 = getelementptr i8, ptr %680, i32 4
  %693 = getelementptr inbounds [8 x ptr], ptr %11, i32 0, i32 1
  br label %694

694:                                              ; preds = %724, %689
  %695 = phi ptr [ %692, %689 ], [ %730, %724 ]
  %696 = phi i32 [ %678, %689 ], [ 3, %724 ]
  %697 = phi i32 [ %691, %689 ], [ %729, %724 ]
  %698 = load i16, ptr %695, align 2
  %699 = icmp ult i16 %698, 4
  %700 = zext i16 %698 to i32
  %701 = icmp ult i32 %697, %700
  %702 = select i1 %699, i1 true, i1 %701
  br i1 %702, label %735, label %703

703:                                              ; preds = %694
  %704 = getelementptr inbounds %struct.nlattr, ptr %695, i32 0, i32 1
  %705 = load i16, ptr %704, align 2
  %706 = and i16 %705, 16383
  %707 = icmp ne i16 %706, 1
  %708 = icmp ult i16 %698, 8
  %709 = select i1 %707, i1 true, i1 %708
  br i1 %709, label %732, label %710

710:                                              ; preds = %703
  %711 = add nsw i32 %700, -4
  %712 = getelementptr i8, ptr %695, i32 4
  %713 = call i32 @__nla_parse(ptr noundef nonnull %11, i32 noundef 7, ptr noundef %712, i32 noundef %711, ptr noundef nonnull @ifla_port_policy, i32 noundef 0, ptr noundef null) #18
  %714 = icmp slt i32 %713, 0
  br i1 %714, label %732, label %715

715:                                              ; preds = %710
  %716 = load ptr, ptr %693, align 4
  %717 = icmp eq ptr %716, null
  br i1 %717, label %732, label %718

718:                                              ; preds = %715
  %719 = getelementptr i8, ptr %716, i32 4
  %720 = load i32, ptr %719, align 4
  %721 = load ptr, ptr %683, align 4
  %722 = call i32 %721(ptr noundef %1, i32 noundef %720, ptr noundef nonnull %11) #18
  %723 = icmp slt i32 %722, 0
  br i1 %723, label %732, label %724

724:                                              ; preds = %718
  %725 = load i16, ptr %695, align 2
  %726 = zext i16 %725 to i32
  %727 = add nuw nsw i32 %726, 3
  %728 = and i32 %727, 131068
  %729 = sub nsw i32 %697, %728
  %730 = getelementptr i8, ptr %695, i32 %728
  %731 = icmp sgt i32 %729, 3
  br i1 %731, label %694, label %735

732:                                              ; preds = %718, %715, %710, %703, %682
  %733 = phi i32 [ -95, %682 ], [ -22, %703 ], [ %713, %710 ], [ -95, %715 ], [ %722, %718 ]
  %734 = phi i32 [ %678, %682 ], [ %696, %718 ], [ %696, %715 ], [ %696, %710 ], [ %696, %703 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #18
  br label %870

735:                                              ; preds = %724, %694, %686
  %736 = phi i32 [ %678, %686 ], [ 3, %724 ], [ %696, %694 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #18
  br label %737

737:                                              ; preds = %735, %677
  %738 = phi i32 [ %736, %735 ], [ %678, %677 ]
  %739 = getelementptr ptr, ptr %4, i32 25
  %740 = load ptr, ptr %739, align 4
  %741 = icmp eq ptr %740, null
  br i1 %741, label %759, label %742

742:                                              ; preds = %737
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %12, i8 0, i32 32, i1 false), !annotation !16
  %743 = getelementptr i8, ptr %740, i32 4
  %744 = load i16, ptr %740, align 2
  %745 = zext i16 %744 to i32
  %746 = add nsw i32 %745, -4
  %747 = call i32 @__nla_parse(ptr noundef nonnull %12, i32 noundef 7, ptr noundef %743, i32 noundef %746, ptr noundef nonnull @ifla_port_policy, i32 noundef 0, ptr noundef null) #18
  %748 = icmp slt i32 %747, 0
  br i1 %748, label %756, label %749

749:                                              ; preds = %742
  %750 = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 34
  %751 = load ptr, ptr %750, align 4
  %752 = icmp eq ptr %751, null
  br i1 %752, label %756, label %753

753:                                              ; preds = %749
  %754 = call i32 %751(ptr noundef %1, i32 noundef -1, ptr noundef nonnull %12) #18
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %756, label %758

756:                                              ; preds = %753, %749, %742
  %757 = phi i32 [ %747, %742 ], [ %754, %753 ], [ -95, %749 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #18
  br label %870

758:                                              ; preds = %753
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #18
  br label %759

759:                                              ; preds = %758, %737
  %760 = phi i32 [ 3, %758 ], [ %738, %737 ]
  %761 = getelementptr ptr, ptr %4, i32 26
  %762 = load ptr, ptr %761, align 4
  %763 = icmp eq ptr %762, null
  br i1 %763, label %801, label %764

764:                                              ; preds = %759
  %765 = load i16, ptr %762, align 2
  %766 = icmp ugt i16 %765, 7
  br i1 %766, label %767, label %801

767:                                              ; preds = %764
  %768 = zext i16 %765 to i32
  %769 = add nsw i32 %768, -4
  %770 = getelementptr i8, ptr %762, i32 4
  br label %771

771:                                              ; preds = %793, %767
  %772 = phi ptr [ %770, %767 ], [ %799, %793 ]
  %773 = phi i32 [ %760, %767 ], [ 3, %793 ]
  %774 = phi i32 [ %769, %767 ], [ %798, %793 ]
  %775 = load i16, ptr %772, align 2
  %776 = icmp ult i16 %775, 4
  %777 = zext i16 %775 to i32
  %778 = icmp ult i32 %774, %777
  %779 = select i1 %776, i1 true, i1 %778
  br i1 %779, label %801, label %780

780:                                              ; preds = %771
  %781 = getelementptr inbounds %struct.nlattr, ptr %772, i32 0, i32 1
  %782 = load i16, ptr %781, align 2
  %783 = and i16 %782, 16383
  %784 = zext i16 %783 to i32
  %785 = call fastcc ptr @rtnl_af_lookup(i32 noundef %784)
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %788, !prof !8

787:                                              ; preds = %780
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/rtnetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2894, 0\0A.popsection", ""() #18, !srcloc !27
  unreachable

788:                                              ; preds = %780
  %789 = getelementptr inbounds %struct.rtnl_af_ops, ptr %785, i32 0, i32 5
  %790 = load ptr, ptr %789, align 4
  %791 = call i32 %790(ptr noundef %1, ptr noundef %772, ptr noundef %3) #18
  %792 = icmp slt i32 %791, 0
  br i1 %792, label %870, label %793

793:                                              ; preds = %788
  %794 = load i16, ptr %772, align 2
  %795 = zext i16 %794 to i32
  %796 = add nuw nsw i32 %795, 3
  %797 = and i32 %796, 131068
  %798 = sub nsw i32 %774, %797
  %799 = getelementptr i8, ptr %772, i32 %797
  %800 = icmp sgt i32 %798, 3
  br i1 %800, label %771, label %801

801:                                              ; preds = %793, %771, %764, %759
  %802 = phi i32 [ %760, %759 ], [ %760, %764 ], [ %773, %771 ], [ 3, %793 ]
  %803 = getelementptr ptr, ptr %4, i32 39
  %804 = load ptr, ptr %803, align 4
  %805 = icmp eq ptr %804, null
  %806 = getelementptr ptr, ptr %4, i32 55
  %807 = load ptr, ptr %806, align 4
  %808 = icmp eq ptr %807, null
  %809 = select i1 %805, i1 %808, i1 false
  br i1 %809, label %813, label %810

810:                                              ; preds = %801
  %811 = call fastcc i32 @do_set_proto_down(ptr noundef %1, ptr noundef %804, ptr noundef %807, ptr noundef %3)
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %870

813:                                              ; preds = %810, %801
  %814 = phi i32 [ 3, %810 ], [ %802, %801 ]
  %815 = getelementptr ptr, ptr %4, i32 43
  %816 = load ptr, ptr %815, align 4
  %817 = icmp eq ptr %816, null
  br i1 %817, label %870, label %818

818:                                              ; preds = %813
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %13, i8 0, i32 36, i1 false), !annotation !16
  %819 = getelementptr i8, ptr %816, i32 4
  %820 = load i16, ptr %816, align 2
  %821 = zext i16 %820 to i32
  %822 = add nsw i32 %821, -4
  %823 = call i32 @__nla_parse(ptr noundef nonnull %13, i32 noundef 8, ptr noundef %819, i32 noundef %822, ptr noundef nonnull @ifla_xdp_policy, i32 noundef 0, ptr noundef null) #18
  %824 = icmp slt i32 %823, 0
  br i1 %824, label %867, label %825

825:                                              ; preds = %818
  %826 = getelementptr inbounds [9 x ptr], ptr %13, i32 0, i32 2
  %827 = load ptr, ptr %826, align 4
  %828 = icmp ne ptr %827, null
  %829 = getelementptr inbounds [9 x ptr], ptr %13, i32 0, i32 4
  %830 = load ptr, ptr %829, align 4
  %831 = icmp ne ptr %830, null
  %832 = select i1 %828, i1 true, i1 %831
  br i1 %832, label %867, label %833

833:                                              ; preds = %825
  %834 = getelementptr inbounds [9 x ptr], ptr %13, i32 0, i32 3
  %835 = load ptr, ptr %834, align 4
  %836 = icmp eq ptr %835, null
  br i1 %836, label %845, label %837

837:                                              ; preds = %833
  %838 = getelementptr i8, ptr %835, i32 4
  %839 = load i32, ptr %838, align 4
  %840 = icmp ult i32 %839, 32
  br i1 %840, label %841, label %867

841:                                              ; preds = %837
  %842 = and i32 %839, 14
  %843 = call i32 @__sw_hweight32(i32 noundef %842) #18
  %844 = icmp ugt i32 %843, 1
  br i1 %844, label %867, label %845

845:                                              ; preds = %841, %833
  %846 = phi i32 [ %839, %841 ], [ 0, %833 ]
  %847 = getelementptr inbounds [9 x ptr], ptr %13, i32 0, i32 1
  %848 = load ptr, ptr %847, align 4
  %849 = icmp eq ptr %848, null
  br i1 %849, label %867, label %850

850:                                              ; preds = %845
  %851 = and i32 %846, 16
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %860, label %853

853:                                              ; preds = %850
  %854 = getelementptr inbounds [9 x ptr], ptr %13, i32 0, i32 8
  %855 = load ptr, ptr %854, align 4
  %856 = icmp eq ptr %855, null
  br i1 %856, label %867, label %857

857:                                              ; preds = %853
  %858 = getelementptr i8, ptr %855, i32 4
  %859 = load i32, ptr %858, align 4
  br label %860

860:                                              ; preds = %857, %850
  %861 = phi i32 [ %859, %857 ], [ -1, %850 ]
  %862 = getelementptr i8, ptr %848, i32 4
  %863 = load i32, ptr %862, align 4
  %864 = call i32 @dev_change_xdp_fd(ptr noundef %1, ptr noundef %3, i32 noundef %863, i32 noundef %861, i32 noundef %846) #18
  %865 = icmp eq i32 %864, 0
  %866 = select i1 %865, i32 3, i32 %814
  br label %867

867:                                              ; preds = %860, %853, %845, %841, %837, %825, %818
  %868 = phi i32 [ %823, %818 ], [ -22, %825 ], [ -22, %837 ], [ -22, %841 ], [ %823, %845 ], [ -22, %853 ], [ %864, %860 ]
  %869 = phi i32 [ %814, %818 ], [ %814, %825 ], [ %814, %837 ], [ %814, %841 ], [ %814, %845 ], [ %814, %853 ], [ %866, %860 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #18
  br label %870

870:                                              ; preds = %867, %813, %810, %788, %756, %732, %673, %309, %294, %283, %270, %260, %254, %251, %246, %240, %223, %182, %172, %149, %132, %124, %116, %72, %62
  %871 = phi i32 [ %152, %149 ], [ %173, %172 ], [ %187, %182 ], [ %225, %223 ], [ %274, %270 ], [ %286, %283 ], [ %811, %810 ], [ %868, %867 ], [ 0, %813 ], [ %117, %116 ], [ -22, %294 ], [ -22, %309 ], [ %674, %673 ], [ %733, %732 ], [ %757, %756 ], [ %74, %72 ], [ %64, %62 ], [ %140, %132 ], [ -12, %124 ], [ -95, %254 ], [ %261, %260 ], [ -22, %251 ], [ -95, %240 ], [ %247, %246 ], [ %791, %788 ]
  %872 = phi i32 [ %145, %149 ], [ %165, %172 ], [ %178, %182 ], [ %190, %223 ], [ %266, %270 ], [ %279, %283 ], [ %802, %810 ], [ %869, %867 ], [ %814, %813 ], [ %79, %116 ], [ %290, %294 ], [ %305, %309 ], [ %380, %673 ], [ %734, %732 ], [ %738, %756 ], [ %6, %72 ], [ %6, %62 ], [ %120, %132 ], [ %120, %124 ], [ %190, %254 ], [ %190, %260 ], [ %190, %251 ], [ %190, %240 ], [ %190, %246 ], [ %773, %788 ]
  %873 = and i32 %872, 1
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %886, label %875

875:                                              ; preds = %870
  %876 = and i32 %872, 3
  %877 = icmp eq i32 %876, 3
  br i1 %877, label %878, label %879

878:                                              ; preds = %875
  call void @netdev_state_change(ptr noundef %1) #18
  br label %879

879:                                              ; preds = %878, %875
  %880 = icmp slt i32 %871, 0
  br i1 %880, label %881, label %886

881:                                              ; preds = %879
  %882 = call i32 @net_ratelimit() #18
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %886, label %884

884:                                              ; preds = %881
  %885 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %1) #20
  br label %886

886:                                              ; preds = %884, %881, %879, %870, %7
  %887 = phi i32 [ %16, %7 ], [ %871, %879 ], [ %871, %884 ], [ %871, %881 ], [ %871, %870 ]
  ret i32 %887
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_linkmsg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr ptr, ptr %1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %7, align 2
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -4
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %98, label %17

17:                                               ; preds = %9, %5
  %18 = getelementptr ptr, ptr %1, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr %19, align 2
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, -4
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %98, label %29

29:                                               ; preds = %21, %17, %3
  %30 = getelementptr ptr, ptr %1, i32 26
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %87, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %31, align 2
  %35 = icmp ugt i16 %34, 7
  br i1 %35, label %36, label %87

36:                                               ; preds = %33
  %37 = zext i16 %34 to i32
  %38 = add nsw i32 %37, -4
  %39 = getelementptr i8, ptr %31, i32 4
  br label %40

40:                                               ; preds = %79, %36
  %41 = phi ptr [ %85, %79 ], [ %39, %36 ]
  %42 = phi i32 [ %84, %79 ], [ %38, %36 ]
  %43 = load i16, ptr %41, align 2
  %44 = icmp ult i16 %43, 4
  %45 = zext i16 %43 to i32
  %46 = icmp ult i32 %42, %45
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %87, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nlattr, ptr %41, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = and i16 %50, 16383
  %52 = zext i16 %51 to i32
  %53 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rtnl_mutex) #18
  %54 = load i1, ptr @rtnl_af_lookup.__already_done, align 1
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %57, label %56, !prof !24

56:                                               ; preds = %48
  store i1 true, ptr @rtnl_af_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 546) #18
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %62, %57
  %59 = phi ptr [ %60, %62 ], [ @rtnl_af_ops, %57 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, @rtnl_af_ops
  br i1 %61, label %98, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtnl_af_ops, ptr %60, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %52
  br i1 %65, label %66, label %58

66:                                               ; preds = %62
  %67 = icmp eq ptr %60, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.rtnl_af_ops, ptr %60, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtnl_af_ops, ptr %60, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = tail call i32 %74(ptr noundef %0, ptr noundef %41, ptr noundef %2) #18
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %76, %72
  %80 = load i16, ptr %41, align 2
  %81 = zext i16 %80 to i32
  %82 = add nuw nsw i32 %81, 3
  %83 = and i32 %82, 131068
  %84 = sub i32 %42, %83
  %85 = getelementptr i8, ptr %41, i32 %83
  %86 = icmp sgt i32 %84, 3
  br i1 %86, label %40, label %87

87:                                               ; preds = %79, %40, %33, %29
  %88 = getelementptr ptr, ptr %1, i32 58
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %89, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %93, 65536
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_linkmsg.__msg) #18
  %96 = icmp eq ptr %2, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %95
  store ptr @validate_linkmsg.__msg, ptr %2, align 4
  br label %98

98:                                               ; preds = %97, %95, %91, %87, %76, %68, %66, %58, %21, %9
  %99 = phi i32 [ -22, %9 ], [ -22, %21 ], [ 0, %91 ], [ 0, %87 ], [ -22, %95 ], [ -22, %97 ], [ -97, %58 ], [ -97, %66 ], [ -95, %68 ], [ %77, %76 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_change_net_namespace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mac_address_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu_ext(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_carrier(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_tx_queue_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rtnl_af_lookup(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rtnl_mutex) #18
  %3 = load i1, ptr @rtnl_af_lookup.__already_done, align 1
  %4 = select i1 %2, i1 true, i1 %3
  br i1 %4, label %6, label %5, !prof !24

5:                                                ; preds = %1
  store i1 true, ptr @rtnl_af_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 546) #18
  br label %6

6:                                                ; preds = %5, %1
  br label %7

7:                                                ; preds = %11, %6
  %8 = phi ptr [ %9, %11 ], [ @rtnl_af_ops, %6 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @rtnl_af_ops
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtnl_af_ops, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %9, %11 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_set_proto_down(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !16
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %7 = load i64, ptr %6, align 16
  %8 = and i64 %7, 4294967296
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @do_set_proto_down.__msg) #18
  %11 = icmp eq ptr %3, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %10
  store ptr @do_set_proto_down.__msg, ptr %3, align 4
  br label %57

13:                                               ; preds = %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %2, i32 4
  %17 = load i16, ptr %2, align 2
  %18 = zext i16 %17 to i32
  %19 = add nsw i32 %18, -4
  %20 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 2, ptr noundef %16, i32 noundef %19, ptr noundef nonnull @ifla_proto_down_reason_policy, i32 noundef 0, ptr noundef null) #18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  call void @do_trace_netlink_extack(ptr noundef nonnull @do_set_proto_down.__msg.16) #18
  %27 = icmp eq ptr %3, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %26
  store ptr @do_set_proto_down.__msg.16, ptr %3, align 4
  br label %57

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %24, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %33, i32 4
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %37, %35 ], [ 0, %29 ]
  call void @dev_change_proto_down_reason(ptr noundef %0, i32 noundef %39, i32 noundef %31) #18
  br label %40

40:                                               ; preds = %38, %13
  %41 = icmp eq ptr %1, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %1, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 97
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  call void @do_trace_netlink_extack(ptr noundef nonnull @do_set_proto_down.__msg.17) #18
  %51 = icmp eq ptr %3, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  store ptr @do_set_proto_down.__msg.17, ptr %3, align 4
  br label %57

53:                                               ; preds = %46, %42
  %54 = call i32 @dev_change_proto_down(ptr noundef %0, i1 noundef zeroext %45) #18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %40
  br label %57

57:                                               ; preds = %56, %53, %52, %50, %28, %26, %15, %12, %10
  %58 = phi i32 [ 0, %56 ], [ -95, %12 ], [ -95, %10 ], [ %20, %15 ], [ -22, %28 ], [ -22, %26 ], [ -16, %52 ], [ -16, %50 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_xdp_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_change_proto_down_reason(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_proto_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_linkprop(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [128 x i8], align 1
  %6 = alloca [59 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %6, i8 0, i32 236, i1 false), !annotation !16
  %7 = load i32, ptr %2, align 4
  %8 = icmp ult i32 %7, 32
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #18
  %10 = icmp eq ptr %3, null
  br i1 %10, label %115, label %11

11:                                               ; preds = %9
  store ptr @__nlmsg_parse.__msg, ptr %3, align 4
  br label %115

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %2, i32 32
  %14 = add i32 %7, -32
  %15 = call i32 @__nla_parse(ptr noundef nonnull %6, i32 noundef 58, ptr noundef %13, i32 noundef %14, ptr noundef nonnull @ifla_policy, i32 noundef 31, ptr noundef %3) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %115

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %6, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds ptr, ptr %6, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_ensure_unique_netns.__msg) #18
  %26 = icmp eq ptr %3, null
  br i1 %26, label %115, label %27

27:                                               ; preds = %25
  store ptr @rtnl_ensure_unique_netns.__msg, ptr %3, align 4
  br label %115

28:                                               ; preds = %17
  %29 = getelementptr i8, ptr %2, i32 20
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %30) #18
  br label %54

34:                                               ; preds = %28
  %35 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, null
  %38 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 53
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ne ptr %39, null
  %41 = select i1 %37, i1 true, i1 %40
  br i1 %41, label %42, label %115

42:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false) #18, !annotation !16
  %43 = icmp eq ptr %36, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = call i32 @nla_strscpy(ptr noundef nonnull %5, ptr noundef nonnull %36, i32 noundef 16) #18
  br label %50

46:                                               ; preds = %42
  %47 = icmp eq ptr %39, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = call i32 @nla_strscpy(ptr noundef nonnull %5, ptr noundef nonnull %39, i32 noundef 128) #18
  br label %50

50:                                               ; preds = %48, %44
  %51 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %5) #18
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %51, %50 ], [ null, %46 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #18
  br label %54

54:                                               ; preds = %52, %32
  %55 = phi ptr [ %33, %32 ], [ %53, %52 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %115, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds [59 x ptr], ptr %6, i32 0, i32 52
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %115, label %61

61:                                               ; preds = %57
  %62 = load i16, ptr %59, align 2
  %63 = icmp ugt i16 %62, 7
  br i1 %63, label %64, label %115

64:                                               ; preds = %61
  %65 = zext i16 %62 to i32
  %66 = add nsw i32 %65, -4
  %67 = getelementptr i8, ptr %59, i32 4
  %68 = icmp eq i32 %0, 108
  br label %69

69:                                               ; preds = %103, %64
  %70 = phi ptr [ %67, %64 ], [ %109, %103 ]
  %71 = phi i32 [ %66, %64 ], [ %108, %103 ]
  %72 = phi i8 [ 0, %64 ], [ %105, %103 ]
  %73 = load i16, ptr %70, align 2
  %74 = icmp ult i16 %73, 4
  %75 = zext i16 %73 to i32
  %76 = icmp ult i32 %71, %75
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %111, label %78

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.nlattr, ptr %70, i32 0, i32 1
  %80 = load i16, ptr %79, align 2
  %81 = and i16 %80, 16383
  %82 = icmp eq i16 %81, 53
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = call i32 @__nla_validate(ptr noundef %70, i32 noundef %75, i32 noundef 58, ptr noundef nonnull @ifla_policy, i32 noundef 31, ptr noundef %3) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = call ptr @nla_strdup(ptr noundef %70, i32 noundef 3264) #18
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %89

89:                                               ; preds = %86
  br i1 %68, label %90, label %94

90:                                               ; preds = %89
  %91 = call i32 @netdev_name_node_alt_create(ptr noundef nonnull %55, ptr noundef nonnull %87) #18
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, ptr null, ptr %87
  br label %96

94:                                               ; preds = %89
  %95 = call i32 @netdev_name_node_alt_destroy(ptr noundef nonnull %55, ptr noundef nonnull %87) #18
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %95, %94 ], [ %91, %90 ]
  %98 = phi ptr [ %87, %94 ], [ %93, %90 ]
  call void @kfree(ptr noundef %98) #18
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i16, ptr %70, align 2
  %102 = zext i16 %101 to i32
  br label %103

103:                                              ; preds = %100, %78
  %104 = phi i32 [ %102, %100 ], [ %75, %78 ]
  %105 = phi i8 [ 1, %100 ], [ %72, %78 ]
  %106 = add nuw nsw i32 %104, 3
  %107 = and i32 %106, 131068
  %108 = sub nsw i32 %71, %107
  %109 = getelementptr i8, ptr %70, i32 %107
  %110 = icmp sgt i32 %108, 3
  br i1 %110, label %69, label %111

111:                                              ; preds = %103, %69
  %112 = phi i8 [ %72, %69 ], [ %105, %103 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @netdev_state_change(ptr noundef nonnull %55) #18
  br label %115

115:                                              ; preds = %114, %111, %96, %86, %83, %61, %57, %54, %34, %27, %25, %12, %11, %9
  %116 = phi i32 [ %15, %12 ], [ -22, %34 ], [ -19, %54 ], [ 0, %57 ], [ 0, %114 ], [ 0, %111 ], [ -22, %11 ], [ -22, %9 ], [ -95, %25 ], [ -95, %27 ], [ 0, %61 ], [ %84, %83 ], [ -12, %86 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %6) #18
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_strdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_name_node_alt_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_name_node_alt_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fdb_vid_parse(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2
  %7 = icmp eq i16 %6, 6
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fdb_vid_parse.__msg) #18
  %9 = icmp eq ptr %2, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  store ptr @fdb_vid_parse.__msg, ptr %2, align 4
  br label %21

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = add i16 %13, -4095
  %15 = icmp ult i16 %14, -4094
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fdb_vid_parse.__msg.25) #18
  %17 = icmp eq ptr %2, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  store ptr @fdb_vid_parse.__msg.25, ptr %2, align 4
  br label %21

19:                                               ; preds = %11, %3
  %20 = phi i16 [ %13, %11 ], [ 0, %3 ]
  store i16 %20, ptr %1, align 2
  br label %21

21:                                               ; preds = %19, %18, %16, %10, %8
  %22 = phi i32 [ 0, %19 ], [ -22, %10 ], [ -22, %8 ], [ -22, %18 ], [ -22, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtnl_fdb_notify(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @nlmsg_populate_fdb_fill(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef 0, i16 noundef zeroext %4)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #18
  br label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %14 = tail call i32 @nlmsg_notify(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 2592) #18
  br label %19

15:                                               ; preds = %11, %5
  %16 = phi i32 [ %9, %11 ], [ -105, %5 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %18 = tail call i32 @netlink_set_err(ptr noundef %17, i32 noundef 0, i32 noundef 3, i32 noundef %16) #18
  br label %19

19:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_bridge_notify(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 54
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @__alloc_skb(i32 noundef 152, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kfree_skb_reason(ptr noundef null, i32 noundef 0) #18
  br label %30

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.net_device_ops, ptr %12, i32 0, i32 54
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, ptr noundef %0, i32 noundef 0, i32 noundef 0) #18
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %23 = tail call i32 @nlmsg_notify(ptr noundef %22, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #18
  br label %34

24:                                               ; preds = %11
  %25 = icmp eq i32 %15, -90
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4885, i32 noundef 9, ptr noundef null) #18
  br label %27

27:                                               ; preds = %26, %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #18
  br label %30

28:                                               ; preds = %17
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #18
  %29 = icmp eq i32 %15, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %28, %27, %10
  %31 = phi i32 [ %15, %27 ], [ %15, %28 ], [ -12, %10 ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 20), align 4
  %33 = tail call i32 @netlink_set_err(ptr noundef %32, i32 noundef 0, i32 noundef 1, i32 noundef %31) #18
  br label %34

34:                                               ; preds = %30, %28, %21, %1
  %35 = phi i32 [ 0, %21 ], [ 0, %1 ], [ %31, %30 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_valid_stats_req(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 4
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg) #18
  %8 = icmp eq ptr %3, null
  br i1 %8, label %37, label %35

9:                                                ; preds = %4
  br i1 %1, label %10, label %37

10:                                               ; preds = %9
  %11 = getelementptr i8, ptr %0, i32 17
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 18
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  br i1 %2, label %19, label %25

19:                                               ; preds = %18
  %20 = getelementptr i8, ptr %0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %14, %10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg.47) #18
  %24 = icmp eq ptr %3, null
  br i1 %24, label %37, label %35

25:                                               ; preds = %19, %18
  %26 = icmp eq i32 %5, 28
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg.48) #18
  %28 = icmp eq ptr %3, null
  br i1 %28, label %37, label %35

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %0, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_stats_req.__msg.49) #18
  %34 = icmp eq ptr %3, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33, %27, %23, %7
  %36 = phi ptr [ @rtnl_valid_stats_req.__msg, %7 ], [ @rtnl_valid_stats_req.__msg.47, %23 ], [ @rtnl_valid_stats_req.__msg.48, %27 ], [ @rtnl_valid_stats_req.__msg.49, %33 ]
  store ptr %36, ptr %3, align 4
  br label %37

37:                                               ; preds = %35, %33, %29, %27, %23, %9, %7
  %38 = phi i32 [ -22, %7 ], [ 0, %9 ], [ -22, %23 ], [ -22, %27 ], [ -22, %33 ], [ 0, %29 ], [ -22, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_fill_statsinfo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = load i32, ptr %7, align 4
  %10 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rtnl_mutex) #18
  %11 = load i1, ptr @rtnl_fill_statsinfo.__already_done, align 1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %14, label %13, !prof !24

13:                                               ; preds = %8
  store i1 true, ptr @rtnl_fill_statsinfo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5147, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 5147) #18
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %271

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %20 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  %26 = icmp slt i32 %25, 28
  br i1 %26, label %271, label %27, !prof !8

27:                                               ; preds = %18
  %28 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 92, i32 noundef 12, i32 noundef %4) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %271, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 16
  %32 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  store i32 0, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %28, i32 20
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %28, i32 24
  store i32 %5, ptr %35, align 4
  %36 = load i32, ptr %6, align 4
  %37 = and i32 %5, 1
  %38 = icmp ne i32 %37, 0
  %39 = icmp ult i32 %36, 2
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = tail call ptr @nla_reserve_64bit(ptr noundef %0, i32 noundef 1, i32 noundef 192, i32 noundef 0) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %249, label %44

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %42, i32 4
  %46 = tail call ptr @dev_get_stats(ptr noundef %1, ptr noundef %45) #18
  br label %47

47:                                               ; preds = %44, %30
  %48 = and i32 %5, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %6, align 4
  switch i32 %51, label %77 [
    i32 2, label %52
    i32 0, label %52
  ]

52:                                               ; preds = %50, %50
  %53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 114
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtnl_link_ops, ptr %54, i32 0, i32 25
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %56
  store i32 2, ptr %6, align 4
  %61 = load ptr, ptr %21, align 8
  %62 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null) #18
  %63 = icmp slt i32 %62, 0
  %64 = icmp eq ptr %61, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %249, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %57, align 4
  %68 = load i32, ptr %6, align 4
  %69 = tail call i32 %67(ptr noundef %0, ptr noundef %1, ptr noundef %7, i32 noundef %68) #18
  %70 = load ptr, ptr %21, align 8
  %71 = ptrtoint ptr %70 to i32
  %72 = ptrtoint ptr %61 to i32
  %73 = sub i32 %71, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, ptr %61, align 2
  %75 = icmp eq i32 %69, 0
  br i1 %75, label %76, label %249

76:                                               ; preds = %66
  store i32 0, ptr %6, align 4
  br label %77

77:                                               ; preds = %76, %56, %52, %50, %47
  %78 = and i32 %5, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4
  switch i32 %81, label %110 [
    i32 3, label %82
    i32 0, label %82
  ]

82:                                               ; preds = %80, %80
  %83 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %1) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %110, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 114
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.rtnl_link_ops, ptr %87, i32 0, i32 25
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %110, label %93

93:                                               ; preds = %89
  store i32 3, ptr %6, align 4
  %94 = load ptr, ptr %21, align 8
  %95 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  %96 = icmp slt i32 %95, 0
  %97 = icmp eq ptr %94, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %249, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr %90, align 4
  %101 = load i32, ptr %6, align 4
  %102 = tail call i32 %100(ptr noundef %0, ptr noundef %1, ptr noundef %7, i32 noundef %101) #18
  %103 = load ptr, ptr %21, align 8
  %104 = ptrtoint ptr %103 to i32
  %105 = ptrtoint ptr %94 to i32
  %106 = sub i32 %104, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %94, align 2
  %108 = icmp eq i32 %102, 0
  br i1 %108, label %109, label %249

109:                                              ; preds = %99
  store i32 0, ptr %6, align 4
  br label %110

110:                                              ; preds = %109, %89, %85, %82, %80, %77
  %111 = and i32 %5, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %180, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %6, align 4
  switch i32 %114, label %180 [
    i32 4, label %115
    i32 0, label %115
  ]

115:                                              ; preds = %113, %113
  store i32 4, ptr %6, align 4
  %116 = load ptr, ptr %21, align 8
  %117 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef null) #18
  %118 = icmp slt i32 %117, 0
  %119 = icmp eq ptr %116, null
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %249, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %162, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.net_device_ops, ptr %123, i32 0, i32 21
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %162, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.net_device_ops, ptr %123, i32 0, i32 22
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %162, label %133

133:                                              ; preds = %129
  %134 = load i32, ptr %7, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %162, label %136

136:                                              ; preds = %133
  %137 = tail call zeroext i1 %127(ptr noundef %1, i32 noundef 1) #18
  br i1 %137, label %138, label %162

138:                                              ; preds = %136
  %139 = tail call ptr @nla_reserve_64bit(ptr noundef %0, i32 noundef 1, i32 noundef 192, i32 noundef 0) #18
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  store i32 1, ptr %7, align 4
  %142 = load ptr, ptr %21, align 8
  %143 = ptrtoint ptr %142 to i32
  %144 = ptrtoint ptr %116 to i32
  %145 = sub i32 %143, %144
  %146 = trunc i32 %145 to i16
  store i16 %146, ptr %116, align 2
  br label %249

147:                                              ; preds = %138
  %148 = getelementptr i8, ptr %139, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %148, i8 0, i32 192, i1 false) #18
  %149 = load ptr, ptr %122, align 8
  %150 = getelementptr inbounds %struct.net_device_ops, ptr %149, i32 0, i32 22
  %151 = load ptr, ptr %150, align 4
  %152 = tail call i32 %151(i32 noundef 1, ptr noundef %1, ptr noundef %148) #18
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  store i32 0, ptr %7, align 4
  %155 = load ptr, ptr %21, align 8
  %156 = ptrtoint ptr %155 to i32
  %157 = ptrtoint ptr %116 to i32
  %158 = sub i32 %156, %157
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %116, align 2
  br label %179

160:                                              ; preds = %147
  store i32 1, ptr %7, align 4
  %161 = icmp eq i32 %152, -61
  br i1 %161, label %162, label %173

162:                                              ; preds = %160, %136, %133, %129, %125, %121
  %163 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %164 = load ptr, ptr %163, align 4
  %165 = icmp ugt ptr %164, %116
  br i1 %165, label %166, label %168, !prof !8

166:                                              ; preds = %162
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %167 = load ptr, ptr %163, align 4
  br label %168

168:                                              ; preds = %166, %162
  %169 = phi ptr [ %167, %166 ], [ %164, %162 ]
  %170 = ptrtoint ptr %116 to i32
  %171 = ptrtoint ptr %169 to i32
  %172 = sub i32 %170, %171
  tail call void @skb_trim(ptr noundef %0, i32 noundef %172) #18
  br label %179

173:                                              ; preds = %160
  %174 = load ptr, ptr %21, align 8
  %175 = ptrtoint ptr %174 to i32
  %176 = ptrtoint ptr %116 to i32
  %177 = sub i32 %175, %176
  %178 = trunc i32 %177 to i16
  store i16 %178, ptr %116, align 2
  br label %249

179:                                              ; preds = %168, %154
  store i32 0, ptr %6, align 4
  br label %180

180:                                              ; preds = %179, %113, %110
  %181 = and i32 %5, 16
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %244, label %183

183:                                              ; preds = %180
  %184 = load i32, ptr %6, align 4
  switch i32 %184, label %244 [
    i32 5, label %185
    i32 0, label %185
  ]

185:                                              ; preds = %183, %183
  store i32 5, ptr %6, align 4
  %186 = load ptr, ptr %21, align 8
  %187 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 0, ptr noundef null) #18
  %188 = icmp slt i32 %187, 0
  %189 = icmp eq ptr %186, null
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %249, label %191

191:                                              ; preds = %185
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %192 = load volatile ptr, ptr @rtnl_af_ops, align 4
  %193 = icmp eq ptr %192, @rtnl_af_ops
  br i1 %193, label %238, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %196

196:                                              ; preds = %235, %194
  %197 = phi ptr [ %192, %194 ], [ %236, %235 ]
  %198 = getelementptr inbounds %struct.rtnl_af_ops, ptr %197, i32 0, i32 6
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %235, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.rtnl_af_ops, ptr %197, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = load ptr, ptr %21, align 8
  %205 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %203, i32 noundef 0, ptr noundef null) #18
  %206 = icmp slt i32 %205, 0
  %207 = icmp eq ptr %204, null
  %208 = select i1 %206, i1 true, i1 %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %249

210:                                              ; preds = %201
  %211 = load ptr, ptr %198, align 4
  %212 = tail call i32 %211(ptr noundef %0, ptr noundef %1) #18
  %213 = icmp eq i32 %212, -61
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load ptr, ptr %195, align 4
  %216 = icmp ugt ptr %215, %204
  br i1 %216, label %217, label %219, !prof !8

217:                                              ; preds = %214
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %218 = load ptr, ptr %195, align 4
  br label %219

219:                                              ; preds = %217, %214
  %220 = phi ptr [ %218, %217 ], [ %215, %214 ]
  %221 = ptrtoint ptr %204 to i32
  %222 = ptrtoint ptr %220 to i32
  %223 = sub i32 %221, %222
  tail call void @skb_trim(ptr noundef %0, i32 noundef %223) #18
  br label %229

224:                                              ; preds = %210
  %225 = icmp slt i32 %212, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %224
  %227 = ptrtoint ptr %204 to i32
  br label %229

228:                                              ; preds = %224
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  br label %249

229:                                              ; preds = %226, %219
  %230 = phi i32 [ %227, %226 ], [ %221, %219 ]
  %231 = load ptr, ptr %21, align 8
  %232 = ptrtoint ptr %231 to i32
  %233 = sub i32 %232, %230
  %234 = trunc i32 %233 to i16
  store i16 %234, ptr %204, align 2
  br label %235

235:                                              ; preds = %229, %196
  %236 = load volatile ptr, ptr %197, align 4
  %237 = icmp eq ptr %236, @rtnl_af_ops
  br i1 %237, label %238, label %196

238:                                              ; preds = %235, %191
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %239 = load ptr, ptr %21, align 8
  %240 = ptrtoint ptr %239 to i32
  %241 = ptrtoint ptr %186 to i32
  %242 = sub i32 %240, %241
  %243 = trunc i32 %242 to i16
  store i16 %243, ptr %186, align 2
  store i32 0, ptr %6, align 4
  br label %244

244:                                              ; preds = %238, %183, %180
  %245 = load ptr, ptr %21, align 8
  %246 = ptrtoint ptr %245 to i32
  %247 = ptrtoint ptr %28 to i32
  %248 = sub i32 %246, %247
  store i32 %248, ptr %28, align 4
  br label %271

249:                                              ; preds = %228, %209, %185, %173, %141, %115, %99, %93, %66, %60, %41
  %250 = and i32 %4, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load i32, ptr %7, align 4
  %254 = icmp eq i32 %9, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %252, %249
  %256 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %257 = load ptr, ptr %256, align 4
  %258 = icmp ugt ptr %257, %28
  br i1 %258, label %259, label %261, !prof !8

259:                                              ; preds = %255
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  %260 = load ptr, ptr %256, align 4
  br label %261

261:                                              ; preds = %259, %255
  %262 = phi ptr [ %260, %259 ], [ %257, %255 ]
  %263 = ptrtoint ptr %28 to i32
  %264 = ptrtoint ptr %262 to i32
  %265 = sub i32 %263, %264
  tail call void @skb_trim(ptr noundef %0, i32 noundef %265) #18
  br label %271

266:                                              ; preds = %252
  %267 = load ptr, ptr %21, align 8
  %268 = ptrtoint ptr %267 to i32
  %269 = ptrtoint ptr %28 to i32
  %270 = sub i32 %268, %269
  store i32 %270, ptr %28, align 4
  br label %271

271:                                              ; preds = %266, %261, %244, %27, %18, %14
  %272 = phi i32 [ 0, %244 ], [ -90, %27 ], [ -90, %266 ], [ -90, %261 ], [ -90, %18 ], [ -90, %14 ]
  ret i32 %272
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2157528349, i64 2157528834, i64 2157528386, i64 2157528442, i64 2157528476, i64 2157528500, i64 2157528541, i64 2157528562, i64 2157528590, i64 2157528624}
!10 = !{i64 2157514485, i64 2157514970, i64 2157514522, i64 2157514578, i64 2157514612, i64 2157514636, i64 2157514677, i64 2157514698, i64 2157514726, i64 2157514760}
!11 = !{i64 2157535777}
!12 = !{i64 2157546122}
!13 = !{i64 2157553290, i64 2157553775, i64 2157553327, i64 2157553383, i64 2157553417, i64 2157553441, i64 2157553482, i64 2157553503, i64 2157553531, i64 2157553565}
!14 = !{i64 2157561315, i64 2157561800, i64 2157561352, i64 2157561408, i64 2157561442, i64 2157561466, i64 2157561507, i64 2157561528, i64 2157561556, i64 2157561590}
!15 = !{i64 2150790597}
!16 = !{!"auto-init"}
!17 = !{i64 2149072541}
!18 = !{i64 1575755}
!19 = !{i64 2149061288}
!20 = !{i64 2149061363, i64 2149061390, i64 2149061437, i64 2149061459, i64 2149061487, i64 2149061507}
!21 = !{i64 2149110510}
!22 = !{i64 2149183819}
!23 = !{i64 2149184036}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148997589}
!26 = !{i8 0, i8 2}
!27 = !{i64 2157722040, i64 2157722526, i64 2157722077, i64 2157722133, i64 2157722167, i64 2157722191, i64 2157722232, i64 2157722253, i64 2157722281, i64 2157722315}
