; ModuleID = '/llk/IR/net/xfrm/xfrm_policy.c_pt.bc'
source_filename = "../net/xfrm/xfrm_policy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_dst_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_dst_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_dst_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_spd_getinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_spd_getinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_spd_getinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_hash_rebuild:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_hash_rebuild\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_hash_rebuild:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_insert\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_bysel_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_bysel_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_bysel_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_byid\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_flush\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_walk\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_walk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_walk_init\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_walk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_walk_done\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_delete\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_lookup_with_ifid:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_lookup_with_ifid\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_lookup_with_ifid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_lookup_route:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_lookup_route\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_lookup_route:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_decode_session:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_decode_session\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_decode_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_policy_check:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_policy_check\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_policy_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_route_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_route_forward\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_route_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_dst_ifdown:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_dst_ifdown\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_dst_ifdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_register_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_register_afinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_register_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_policy_unregister_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_policy_unregister_afinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_policy_unregister_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_if_register_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_if_register_cb\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_if_register_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_if_unregister_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_if_unregister_cb\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_if_unregister_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.149, i32, i32, i8, i8 }
%struct.anon.149 = type { i32, i32 }
%struct.spinlock = type { %union.anon.18 }
%union.anon.18 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.19 }
%union.anon.19 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.65, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.65 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.1 = type { i8, i8 }
%struct.anon = type { i16, i16 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.xfrm_policy_afinfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.possible_net_t = type {}
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.sk_buff_head = type { %union.anon.56, i32, %struct.spinlock }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.flowi = type { %union.anon.0 }
%union.anon.0 = type { %struct.flowi6 }
%struct.sk_buff = type { %union.anon.5, %union.anon.8, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr, %union.anon.7 }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.xfrm_dst = type { %union.anon.148, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.xfrmk_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_pol_inexact_key = type { %struct.possible_net_t, i32, i16, i8, i8 }
%struct.xfrm_pol_inexact_bin = type { %struct.xfrm_pol_inexact_key, %struct.rhash_head, %struct.hlist_head, %struct.seqcount_spinlock, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.xfrm_pol_inexact_node = type { %struct.rb_node, %union.anon.150, i8, %struct.rb_root, %struct.hlist_head }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.150 = type { %union.xfrm_address_t }
%struct.xfrm_policy_walk = type { %struct.xfrm_policy_walk_entry, i8, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.107, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.108, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.109, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.9, %union.anon.11, %union.anon.12, i16, i8, i8, i32, %union.anon.14, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.103, [0 x i32], %union.anon.104, i16, i16, %union.anon.105, %struct.refcount_struct, [0 x i32], %union.anon.106 }
%union.anon.9 = type { i64 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.14 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.103 = type { i32 }
%union.anon.104 = type { %struct.hlist_node }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.107 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.108 = type { ptr }
%union.anon.109 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.58, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.58 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.61, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.61 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.141, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.142, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.141 = type { %struct.hlist_node }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.142 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.4, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.4 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.140 = type { ptr }
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
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_state_afinfo = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.ip6_mh = type { i8, i8, i8, i8, i16, [0 x i8] }
%struct.xfrm_if = type { ptr, ptr, ptr, %struct.xfrm_if_parms, %struct.gro_cells }
%struct.xfrm_if_parms = type { i32, i32 }
%struct.gro_cells = type { ptr }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.xfrm_pol_inexact_candidates = type { [4 x ptr] }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.lockdep_map = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.sk_buff_fclones = type { %struct.sk_buff, %struct.sk_buff, %struct.refcount_struct }

@__kstrtab___xfrm_dst_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_dst_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_dst_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_dst_lookup to i32), ptr @__kstrtab___xfrm_dst_lookup, ptr @__kstrtabns___xfrm_dst_lookup }, section "___ksymtab+__xfrm_dst_lookup", align 4
@__kstrtab_xfrm_policy_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_alloc to i32), ptr @__kstrtab_xfrm_policy_alloc, ptr @__kstrtabns_xfrm_policy_alloc }, section "___ksymtab+xfrm_policy_alloc", align 4
@__kstrtab_xfrm_policy_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_destroy to i32), ptr @__kstrtab_xfrm_policy_destroy, ptr @__kstrtabns_xfrm_policy_destroy }, section "___ksymtab+xfrm_policy_destroy", align 4
@__kstrtab_xfrm_spd_getinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_spd_getinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_spd_getinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_spd_getinfo to i32), ptr @__kstrtab_xfrm_spd_getinfo, ptr @__kstrtabns_xfrm_spd_getinfo }, section "___ksymtab+xfrm_spd_getinfo", align 4
@__kstrtab_xfrm_policy_hash_rebuild = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_hash_rebuild = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_hash_rebuild = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_hash_rebuild to i32), ptr @__kstrtab_xfrm_policy_hash_rebuild, ptr @__kstrtabns_xfrm_policy_hash_rebuild }, section "___ksymtab+xfrm_policy_hash_rebuild", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_xfrm_policy_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_insert to i32), ptr @__kstrtab_xfrm_policy_insert, ptr @__kstrtabns_xfrm_policy_insert }, section "___ksymtab+xfrm_policy_insert", align 4
@__kstrtab_xfrm_policy_bysel_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_bysel_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_bysel_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_bysel_ctx to i32), ptr @__kstrtab_xfrm_policy_bysel_ctx, ptr @__kstrtabns_xfrm_policy_bysel_ctx }, section "___ksymtab+xfrm_policy_bysel_ctx", align 4
@__kstrtab_xfrm_policy_byid = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_byid = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_byid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_byid to i32), ptr @__kstrtab_xfrm_policy_byid, ptr @__kstrtabns_xfrm_policy_byid }, section "___ksymtab+xfrm_policy_byid", align 4
@__kstrtab_xfrm_policy_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_flush to i32), ptr @__kstrtab_xfrm_policy_flush, ptr @__kstrtabns_xfrm_policy_flush }, section "___ksymtab+xfrm_policy_flush", align 4
@__kstrtab_xfrm_policy_walk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_walk = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_walk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_walk to i32), ptr @__kstrtab_xfrm_policy_walk, ptr @__kstrtabns_xfrm_policy_walk }, section "___ksymtab+xfrm_policy_walk", align 4
@__kstrtab_xfrm_policy_walk_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_walk_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_walk_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_walk_init to i32), ptr @__kstrtab_xfrm_policy_walk_init, ptr @__kstrtabns_xfrm_policy_walk_init }, section "___ksymtab+xfrm_policy_walk_init", align 4
@__kstrtab_xfrm_policy_walk_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_walk_done = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_walk_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_walk_done to i32), ptr @__kstrtab_xfrm_policy_walk_done, ptr @__kstrtabns_xfrm_policy_walk_done }, section "___ksymtab+xfrm_policy_walk_done", align 4
@__kstrtab_xfrm_policy_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_delete to i32), ptr @__kstrtab_xfrm_policy_delete, ptr @__kstrtabns_xfrm_policy_delete }, section "___ksymtab+xfrm_policy_delete", align 4
@__kstrtab_xfrm_lookup_with_ifid = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_lookup_with_ifid = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_lookup_with_ifid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_lookup_with_ifid to i32), ptr @__kstrtab_xfrm_lookup_with_ifid, ptr @__kstrtabns_xfrm_lookup_with_ifid }, section "___ksymtab+xfrm_lookup_with_ifid", align 4
@__kstrtab_xfrm_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_lookup to i32), ptr @__kstrtab_xfrm_lookup, ptr @__kstrtabns_xfrm_lookup }, section "___ksymtab+xfrm_lookup", align 4
@__kstrtab_xfrm_lookup_route = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_lookup_route = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_lookup_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_lookup_route to i32), ptr @__kstrtab_xfrm_lookup_route, ptr @__kstrtabns_xfrm_lookup_route }, section "___ksymtab+xfrm_lookup_route", align 4
@__kstrtab___xfrm_decode_session = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_decode_session = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_decode_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_decode_session to i32), ptr @__kstrtab___xfrm_decode_session, ptr @__kstrtabns___xfrm_decode_session }, section "___ksymtab+__xfrm_decode_session", align 4
@__xfrm_policy_check.dummy = internal unnamed_addr constant %struct.sec_path zeroinitializer, align 4
@__kstrtab___xfrm_policy_check = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_policy_check = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_policy_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_policy_check to i32), ptr @__kstrtab___xfrm_policy_check, ptr @__kstrtabns___xfrm_policy_check }, section "___ksymtab+__xfrm_policy_check", align 4
@__kstrtab___xfrm_route_forward = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_route_forward = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_route_forward = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_route_forward to i32), ptr @__kstrtab___xfrm_route_forward, ptr @__kstrtabns___xfrm_route_forward }, section "___ksymtab+__xfrm_route_forward", align 4
@__kstrtab_xfrm_dst_ifdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_dst_ifdown = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_dst_ifdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_dst_ifdown to i32), ptr @__kstrtab_xfrm_dst_ifdown, ptr @__kstrtabns_xfrm_dst_ifdown }, section "___ksymtab+xfrm_dst_ifdown", align 4
@.str = private unnamed_addr constant [23 x i8] c"net/xfrm/xfrm_policy.c\00", align 1
@xfrm_policy_afinfo_lock = internal global %struct.spinlock zeroinitializer, align 4
@xfrm_policy_afinfo = internal global [11 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@xfrm_dst_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__kstrtab_xfrm_policy_register_afinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_register_afinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_register_afinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_register_afinfo to i32), ptr @__kstrtab_xfrm_policy_register_afinfo, ptr @__kstrtabns_xfrm_policy_register_afinfo }, section "___ksymtab+xfrm_policy_register_afinfo", align 4
@__kstrtab_xfrm_policy_unregister_afinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_policy_unregister_afinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_policy_unregister_afinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_policy_unregister_afinfo to i32), ptr @__kstrtab_xfrm_policy_unregister_afinfo, ptr @__kstrtabns_xfrm_policy_unregister_afinfo }, section "___ksymtab+xfrm_policy_unregister_afinfo", align 4
@xfrm_if_cb_lock = internal global %struct.spinlock zeroinitializer, align 4
@xfrm_if_cb = internal global ptr null, section ".data..read_mostly", align 4
@__kstrtab_xfrm_if_register_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_if_register_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_if_register_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_if_register_cb to i32), ptr @__kstrtab_xfrm_if_register_cb, ptr @__kstrtabns_xfrm_if_register_cb }, section "___ksymtab+xfrm_if_register_cb", align 4
@__kstrtab_xfrm_if_unregister_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_if_unregister_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_if_unregister_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_if_unregister_cb to i32), ptr @__kstrtab_xfrm_if_unregister_cb, ptr @__kstrtabns_xfrm_if_unregister_cb }, section "___ksymtab+xfrm_if_unregister_cb", align 4
@xfrm_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm_net_init, ptr null, ptr @xfrm_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_net = external dso_local global %struct.net, align 64
@xfrm_policy_inexact_table = internal global %struct.rhashtable zeroinitializer, align 4
@xfrm_pol_inexact_params = internal constant %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 8, i32 0, i16 0, i8 1, ptr @xfrm_pol_bin_key, ptr @xfrm_pol_bin_obj, ptr @xfrm_pol_bin_cmp }, align 4
@xfrm_policy_inexact_insert_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_policy_inexact_node_reinsert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_policy_inexact_list_reinsert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_policy_inexact_list_reinsert.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_policy_inexact_list_reinsert.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__xfrm_policy_inexact_prune_bin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_policy_inexact_gc_tree.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__fib6_flush_trees = external dso_local local_unnamed_addr global ptr, align 4
@xfrm_gen_index.idx_generator = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@xfrm_net_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"&net->xfrm.xfrm_cfg_mutex\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"xfrm_dst_cache\00", align 1
@hash_resize_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hash_resize_mutex, i64 12), ptr getelementptr (i8, ptr @hash_resize_mutex, i64 12) } }, align 4
@xfrm_hash_rebuild.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"reinsert: %ld\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab___xfrm_decode_session, ptr @__ksymtab___xfrm_dst_lookup, ptr @__ksymtab___xfrm_policy_check, ptr @__ksymtab___xfrm_route_forward, ptr @__ksymtab_xfrm_dst_ifdown, ptr @__ksymtab_xfrm_if_register_cb, ptr @__ksymtab_xfrm_if_unregister_cb, ptr @__ksymtab_xfrm_lookup, ptr @__ksymtab_xfrm_lookup_route, ptr @__ksymtab_xfrm_lookup_with_ifid, ptr @__ksymtab_xfrm_policy_alloc, ptr @__ksymtab_xfrm_policy_byid, ptr @__ksymtab_xfrm_policy_bysel_ctx, ptr @__ksymtab_xfrm_policy_delete, ptr @__ksymtab_xfrm_policy_destroy, ptr @__ksymtab_xfrm_policy_flush, ptr @__ksymtab_xfrm_policy_hash_rebuild, ptr @__ksymtab_xfrm_policy_insert, ptr @__ksymtab_xfrm_policy_register_afinfo, ptr @__ksymtab_xfrm_policy_unregister_afinfo, ptr @__ksymtab_xfrm_policy_walk, ptr @__ksymtab_xfrm_policy_walk_done, ptr @__ksymtab_xfrm_policy_walk_init, ptr @__ksymtab_xfrm_spd_getinfo], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfrm_selector_match(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  switch i16 %2, label %214 [
    i16 2, label %4
    i16 10, label %99
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 4
  %10 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = zext i8 %6 to i32
  %13 = xor i32 %11, %9
  %14 = sub nsw i32 32, %12
  %15 = shl nsw i32 -1, %14
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #24
  %17 = and i32 %13, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %214

19:                                               ; preds = %8, %4
  %20 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 8
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = zext i8 %21 to i32
  %29 = xor i32 %27, %25
  %30 = sub nsw i32 32, %28
  %31 = shl nsw i32 -1, %30
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #24
  %33 = and i32 %29, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %214

35:                                               ; preds = %23, %19
  %36 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  %37 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %38 = load i8, ptr %37, align 2
  switch i8 %38, label %50 [
    i8 6, label %39
    i8 17, label %39
    i8 -120, label %39
    i8 -124, label %39
    i8 1, label %41
    i8 58, label %41
    i8 47, label %46
  ]

39:                                               ; preds = %35, %35, %35, %35
  %40 = load i16, ptr %36, align 4
  br label %50

41:                                               ; preds = %35, %35
  %42 = getelementptr inbounds %struct.anon.1, ptr %36, i32 0, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  %45 = shl nuw i16 %44, 8
  br label %50

46:                                               ; preds = %35
  %47 = load i32, ptr %36, align 4
  %48 = lshr i32 %47, 16
  %49 = trunc i32 %48 to i16
  br label %50

50:                                               ; preds = %46, %41, %39, %35
  %51 = phi i16 [ %49, %46 ], [ %45, %41 ], [ %40, %39 ], [ 0, %35 ]
  %52 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 2
  %53 = load i16, ptr %52, align 4
  %54 = xor i16 %53, %51
  %55 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = and i16 %54, %56
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %214

59:                                               ; preds = %50
  switch i8 %38, label %77 [
    i8 6, label %60
    i8 17, label %60
    i8 -120, label %60
    i8 -124, label %60
    i8 1, label %63
    i8 58, label %63
    i8 -121, label %67
    i8 47, label %71
  ]

60:                                               ; preds = %59, %59, %59, %59
  %61 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1
  %62 = load i16, ptr %61, align 2
  br label %77

63:                                               ; preds = %59, %59
  %64 = load i8, ptr %36, align 4
  %65 = zext i8 %64 to i16
  %66 = shl nuw i16 %65, 8
  br label %77

67:                                               ; preds = %59
  %68 = load i8, ptr %36, align 4
  %69 = zext i8 %68 to i16
  %70 = shl nuw i16 %69, 8
  br label %77

71:                                               ; preds = %59
  %72 = load i32, ptr %36, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #24
  %74 = lshr i32 %73, 16
  %75 = trunc i32 %74 to i16
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #24
  br label %77

77:                                               ; preds = %71, %67, %63, %60, %59
  %78 = phi i16 [ %76, %71 ], [ %70, %67 ], [ %66, %63 ], [ %62, %60 ], [ 0, %59 ]
  %79 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 4
  %80 = load i16, ptr %79, align 4
  %81 = xor i16 %80, %78
  %82 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 5
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %81, %83
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %214

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 9
  %88 = load i8, ptr %87, align 4
  %89 = icmp eq i8 %38, %88
  %90 = icmp eq i8 %88, 0
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %214

92:                                               ; preds = %86
  %93 = load i32, ptr %1, align 8
  %94 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %93, %95
  %97 = icmp eq i32 %95, 0
  %98 = or i1 %96, %97
  br label %214

99:                                               ; preds = %3
  %100 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %101 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 7
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = lshr i32 %103, 5
  %105 = and i32 %103, 31
  %106 = icmp ult i8 %102, 32
  br i1 %106, label %111, label %107

107:                                              ; preds = %99
  %108 = shl nuw nsw i32 %104, 2
  %109 = tail call i32 @bcmp(ptr %100, ptr %0, i32 %108) #24
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %214

111:                                              ; preds = %107, %99
  %112 = icmp eq i32 %105, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %111
  %114 = sub nuw nsw i32 32, %105
  %115 = shl nsw i32 -1, %114
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #24
  %117 = getelementptr i32, ptr %100, i32 %104
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i32, ptr %0, i32 %104
  %120 = load i32, ptr %119, align 4
  %121 = xor i32 %120, %118
  %122 = and i32 %121, %116
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %214

124:                                              ; preds = %113, %111
  %125 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %126 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 1
  %127 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 8
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = lshr i32 %129, 5
  %131 = and i32 %129, 31
  %132 = icmp ult i8 %128, 32
  br i1 %132, label %137, label %133

133:                                              ; preds = %124
  %134 = shl nuw nsw i32 %130, 2
  %135 = tail call i32 @bcmp(ptr %125, ptr %126, i32 %134) #24
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %214

137:                                              ; preds = %133, %124
  %138 = icmp eq i32 %131, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %137
  %140 = sub nuw nsw i32 32, %131
  %141 = shl nsw i32 -1, %140
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #24
  %143 = getelementptr i32, ptr %125, i32 %130
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr i32, ptr %126, i32 %130
  %146 = load i32, ptr %145, align 4
  %147 = xor i32 %146, %144
  %148 = and i32 %147, %142
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %214

150:                                              ; preds = %139, %137
  %151 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  %152 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %153 = load i8, ptr %152, align 2
  switch i8 %153, label %165 [
    i8 6, label %154
    i8 17, label %154
    i8 -120, label %154
    i8 -124, label %154
    i8 1, label %156
    i8 58, label %156
    i8 47, label %161
  ]

154:                                              ; preds = %150, %150, %150, %150
  %155 = load i16, ptr %151, align 4
  br label %165

156:                                              ; preds = %150, %150
  %157 = getelementptr inbounds %struct.anon.1, ptr %151, i32 0, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i16
  %160 = shl nuw i16 %159, 8
  br label %165

161:                                              ; preds = %150
  %162 = load i32, ptr %151, align 4
  %163 = lshr i32 %162, 16
  %164 = trunc i32 %163 to i16
  br label %165

165:                                              ; preds = %161, %156, %154, %150
  %166 = phi i16 [ %164, %161 ], [ %160, %156 ], [ %155, %154 ], [ 0, %150 ]
  %167 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 2
  %168 = load i16, ptr %167, align 4
  %169 = xor i16 %168, %166
  %170 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 3
  %171 = load i16, ptr %170, align 2
  %172 = and i16 %169, %171
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %174, label %214

174:                                              ; preds = %165
  switch i8 %153, label %192 [
    i8 6, label %175
    i8 17, label %175
    i8 -120, label %175
    i8 -124, label %175
    i8 1, label %178
    i8 58, label %178
    i8 -121, label %182
    i8 47, label %186
  ]

175:                                              ; preds = %174, %174, %174, %174
  %176 = getelementptr inbounds %struct.anon, ptr %151, i32 0, i32 1
  %177 = load i16, ptr %176, align 2
  br label %192

178:                                              ; preds = %174, %174
  %179 = load i8, ptr %151, align 4
  %180 = zext i8 %179 to i16
  %181 = shl nuw i16 %180, 8
  br label %192

182:                                              ; preds = %174
  %183 = load i8, ptr %151, align 4
  %184 = zext i8 %183 to i16
  %185 = shl nuw i16 %184, 8
  br label %192

186:                                              ; preds = %174
  %187 = load i32, ptr %151, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #24
  %189 = lshr i32 %188, 16
  %190 = trunc i32 %189 to i16
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #24
  br label %192

192:                                              ; preds = %186, %182, %178, %175, %174
  %193 = phi i16 [ %191, %186 ], [ %185, %182 ], [ %181, %178 ], [ %177, %175 ], [ 0, %174 ]
  %194 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 4
  %195 = load i16, ptr %194, align 4
  %196 = xor i16 %195, %193
  %197 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 5
  %198 = load i16, ptr %197, align 2
  %199 = and i16 %196, %198
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 9
  %203 = load i8, ptr %202, align 4
  %204 = icmp eq i8 %153, %203
  %205 = icmp eq i8 %203, 0
  %206 = or i1 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load i32, ptr %1, align 8
  %209 = getelementptr inbounds %struct.xfrm_selector, ptr %0, i32 0, i32 10
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %208, %210
  %212 = icmp eq i32 %210, 0
  %213 = or i1 %211, %212
  br label %214

214:                                              ; preds = %207, %201, %192, %165, %139, %133, %113, %107, %92, %86, %77, %50, %23, %8, %3
  %215 = phi i1 [ false, %3 ], [ false, %77 ], [ false, %50 ], [ false, %23 ], [ false, %8 ], [ false, %86 ], [ %98, %92 ], [ false, %192 ], [ false, %165 ], [ false, %201 ], [ %213, %207 ], [ false, %113 ], [ false, %107 ], [ false, %139 ], [ false, %133 ]
  ret i1 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xfrm_dst_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #1 {
  %8 = trunc i32 %5 to i16
  %9 = icmp ugt i16 %8, 10
  br i1 %9, label %20, label %10, !prof !9

10:                                               ; preds = %7
  %11 = and i32 %5, 65535
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %12 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.xfrm_policy_afinfo, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr %18(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %6) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %20

20:                                               ; preds = %16, %15, %7
  %21 = phi ptr [ %19, %16 ], [ inttoptr (i32 -97 to ptr), %7 ], [ inttoptr (i32 -97 to ptr), %15 ]
  ret ptr %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_policy_alloc(ptr nocapture readnone %0, i32 noundef %1) #1 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !12

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 688) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 15
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 25
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 25, i32 1
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 1
  %22 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %21, i8 0, i64 20, i1 false)
  store volatile i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 16
  %24 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 16, i32 0, i32 2
  store i32 0, ptr %24, align 8
  store ptr %23, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 16, i32 0, i32 0, i32 0, i32 1
  store ptr %23, ptr %25, align 8
  %26 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 16, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %27, ptr noundef nonnull @xfrm_policy_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #24
  %28 = getelementptr inbounds %struct.xfrm_policy, ptr %14, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %28, ptr noundef nonnull @xfrm_policy_queue_process, i32 noundef 0, ptr noundef null, ptr noundef null) #24
  br label %29

29:                                               ; preds = %16, %10
  ret ptr %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_policy_timer(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = tail call i64 @ktime_get_real_seconds() #24
  %4 = getelementptr i8, ptr %0, i32 -12
  tail call void @_raw_read_lock(ptr noundef %4) #24
  %5 = getelementptr i8, ptr %0, i32 204
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %103, !prof !12

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 7
  %12 = getelementptr i8, ptr %0, i32 140
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %0, i32 180
  %17 = load i64, ptr %16, align 8
  %18 = sub i64 %13, %3
  %19 = add i64 %18, %17
  %20 = icmp slt i64 %19, 1
  br i1 %20, label %130, label %21

21:                                               ; preds = %15, %8
  %22 = phi i64 [ %19, %15 ], [ 9223372036854775807, %8 ]
  %23 = getelementptr i8, ptr %0, i32 156
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 188
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 180
  %32 = load i64, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i64 [ %32, %30 ], [ %28, %26 ]
  %35 = sub i64 %24, %3
  %36 = add i64 %35, %34
  %37 = icmp slt i64 %36, 1
  %38 = tail call i64 @llvm.smin.i64(i64 %36, i64 %22)
  br i1 %37, label %130, label %39

39:                                               ; preds = %33, %21
  %40 = phi i64 [ %38, %33 ], [ %22, %21 ]
  %41 = getelementptr i8, ptr %0, i32 132
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %0, i32 180
  %46 = load i64, ptr %45, align 8
  %47 = sub i64 %42, %3
  %48 = add i64 %47, %46
  %49 = icmp slt i64 %48, 1
  %50 = zext i1 %49 to i32
  %51 = select i1 %49, i64 30, i64 %48
  %52 = tail call i64 @llvm.smin.i64(i64 %51, i64 %40)
  br label %53

53:                                               ; preds = %44, %39
  %54 = phi i64 [ %52, %44 ], [ %40, %39 ]
  %55 = phi i32 [ %50, %44 ], [ 0, %39 ]
  %56 = getelementptr i8, ptr %0, i32 148
  %57 = load i64, ptr %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %0, i32 188
  %61 = load i64, ptr %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %0, i32 180
  %65 = load i64, ptr %64, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i64 [ %65, %63 ], [ %61, %59 ]
  %68 = sub i64 %57, %3
  %69 = add i64 %68, %67
  %70 = icmp slt i64 %69, 1
  %71 = select i1 %70, i64 30, i64 %69
  %72 = tail call i64 @llvm.smin.i64(i64 %71, i64 %54)
  br i1 %70, label %76, label %73

73:                                               ; preds = %66, %53
  %74 = phi i64 [ %72, %66 ], [ %54, %53 ]
  %75 = icmp eq i32 %55, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %66
  %77 = phi i64 [ %74, %73 ], [ %72, %66 ]
  tail call void @km_policy_expired(ptr noundef %2, i32 noundef %11, i32 noundef 0, i32 noundef 0) #24
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i64 [ %77, %76 ], [ %74, %73 ]
  %80 = icmp eq i64 %79, 9223372036854775807
  br i1 %80, label %103, label %81

81:                                               ; preds = %78
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = trunc i64 %79 to i32
  %84 = icmp sgt i32 %83, 21474835
  %85 = mul i32 %83, 100
  %86 = select i1 %84, i32 2147483646, i32 %85
  %87 = add i32 %82, %86
  %88 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %87) #24
  %89 = icmp ne i32 %88, 0
  %90 = icmp eq ptr %2, null
  %91 = or i1 %90, %89
  br i1 %91, label %103, label %92, !prof !13

92:                                               ; preds = %81
  %93 = getelementptr i8, ptr %0, i32 -8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #24, !srcloc !14
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #24, !srcloc !15
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97, !prof !9

97:                                               ; preds = %92
  %98 = add i32 %95, 1
  %99 = or i32 %98, %95
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %103, label %101, !prof !12

101:                                              ; preds = %97, %92
  %102 = phi i32 [ 2, %92 ], [ 1, %97 ]
  tail call void @refcount_warn_saturate(ptr noundef %93, i32 noundef %102) #24
  br label %103

103:                                              ; preds = %101, %97, %81, %78, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #24, !srcloc !14
  %104 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %4) #24, !srcloc !17
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  br label %108

108:                                              ; preds = %107, %103
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !20
  %109 = getelementptr i8, ptr %0, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #24, !srcloc !14
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #24, !srcloc !22
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %161, label %115, !prof !12

115:                                              ; preds = %113
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #24
  br label %161

116:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %117 = load i8, ptr %5, align 8
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %120, !prof !9

119:                                              ; preds = %116
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

120:                                              ; preds = %116
  %121 = tail call i32 @del_timer(ptr noundef %0) #24
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = getelementptr i8, ptr %0, i32 224
  %125 = tail call i32 @del_timer(ptr noundef %124) #24
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123, %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

128:                                              ; preds = %123
  %129 = getelementptr i8, ptr %0, i32 652
  tail call void @call_rcu(ptr noundef %129, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %161

130:                                              ; preds = %33, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #24, !srcloc !14
  %131 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %4) #24, !srcloc !17
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  br label %135

135:                                              ; preds = %134, %130
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !20
  %136 = tail call i32 @xfrm_policy_delete(ptr noundef %2, i32 noundef %11)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  tail call void @km_policy_expired(ptr noundef %2, i32 noundef %11, i32 noundef 1, i32 noundef 0) #24
  br label %139

139:                                              ; preds = %138, %135
  %140 = getelementptr i8, ptr %0, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #24, !srcloc !14
  %141 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #24, !srcloc !22
  %142 = extractvalue { i32, i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = icmp sgt i32 %142, 0
  br i1 %145, label %161, label %146, !prof !12

146:                                              ; preds = %144
  tail call void @refcount_warn_saturate(ptr noundef %140, i32 noundef 3) #24
  br label %161

147:                                              ; preds = %139
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %148 = load i8, ptr %5, align 8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %151, !prof !9

150:                                              ; preds = %147
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

151:                                              ; preds = %147
  %152 = tail call i32 @del_timer(ptr noundef %0) #24
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = getelementptr i8, ptr %0, i32 224
  %156 = tail call i32 @del_timer(ptr noundef %155) #24
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154, %151
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

159:                                              ; preds = %154
  %160 = getelementptr i8, ptr %0, i32 652
  tail call void @call_rcu(ptr noundef %160, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %161

161:                                              ; preds = %159, %146, %144, %128, %115, %113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_policy_queue_process(ptr noundef %0) #1 {
  %2 = alloca %struct.flowi, align 8
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = getelementptr i8, ptr %0, i32 -252
  %5 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !26
  %6 = getelementptr i8, ptr %0, i32 -4
  tail call void @_raw_spin_lock(ptr noundef %6) #24
  %7 = load ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, %5
  %9 = icmp eq ptr %7, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !27
  %12 = load i16, ptr %6, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !28
  br label %214

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -2
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 -188
  %24 = load i32, ptr %23, align 8
  store i32 %24, ptr %21, align 4
  %25 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i16, ptr %26, align 64
  %28 = zext i16 %27 to i32
  %29 = call i32 @__xfrm_decode_session(ptr noundef nonnull %7, ptr noundef nonnull %2, i32 noundef %28, i32 noundef 0) #24
  store i32 %22, ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !27
  %30 = load i16, ptr %6, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !28
  %32 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 7
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 64
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %14
  %41 = getelementptr inbounds %struct.xfrm_dst, ptr %18, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi ptr [ %42, %40 ], [ %18, %35 ]
  %45 = getelementptr inbounds %struct.dst_entry, ptr %44, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #24, !srcloc !14
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 0, i32 1, ptr elementtype(i32) %45) #24, !srcloc !30
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %51

50:                                               ; preds = %43
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef null) #24
  br label %51

51:                                               ; preds = %50, %49
  %52 = load ptr, ptr %32, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 7
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 64
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %51
  %60 = getelementptr inbounds %struct.xfrm_dst, ptr %18, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi ptr [ %61, %59 ], [ %18, %54 ]
  %64 = call ptr @xfrm_lookup_with_ifid(ptr noundef nonnull @init_net, ptr noundef %63, ptr noundef nonnull %2, ptr noundef %20, i32 noundef 2, i32 noundef 0) #24
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %237, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dst_entry, ptr %64, i32 0, i32 7
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, 64
  %70 = icmp eq i16 %69, 0
  call void @dst_release(ptr noundef %64) #24
  br i1 %70, label %94, label %71

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 5999
  br i1 %74, label %237, label %75

75:                                               ; preds = %71
  %76 = shl nuw nsw i32 %73, 1
  store i32 %76, ptr %72, align 4
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = add i32 %77, %76
  %79 = call i32 @mod_timer(ptr noundef %0, i32 noundef %78) #24
  %80 = icmp ne i32 %79, 0
  %81 = icmp eq ptr %4, null
  %82 = or i1 %81, %80
  br i1 %82, label %214, label %83, !prof !13

83:                                               ; preds = %75
  %84 = getelementptr i8, ptr %0, i32 -232
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #24, !srcloc !14
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #24, !srcloc !15
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88, !prof !9

88:                                               ; preds = %83
  %89 = add i32 %86, 1
  %90 = or i32 %89, %86
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %214, label %92, !prof !12

92:                                               ; preds = %88, %83
  %93 = phi i32 [ 2, %83 ], [ 1, %88 ]
  call void @refcount_warn_saturate(ptr noundef %84, i32 noundef %93) #24
  br label %214

94:                                               ; preds = %66
  store ptr %3, ptr %3, align 4
  %95 = getelementptr inbounds %struct.anon.57, ptr %3, i32 0, i32 1
  store ptr %3, ptr %95, align 4
  %96 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %96, align 4
  call void @_raw_spin_lock(ptr noundef %6) #24
  %97 = getelementptr i8, ptr %0, i32 20
  store i32 0, ptr %97, align 4
  %98 = load ptr, ptr %5, align 4
  %99 = icmp eq ptr %98, %5
  br i1 %99, label %110, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr i8, ptr %0, i32 -12
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.anon.6, ptr %98, i32 0, i32 1
  store volatile ptr %3, ptr %104, align 4
  store volatile ptr %98, ptr %3, align 8
  store volatile ptr %101, ptr %103, align 8
  %105 = getelementptr inbounds %struct.anon.6, ptr %101, i32 0, i32 1
  store volatile ptr %103, ptr %105, align 4
  %106 = getelementptr i8, ptr %0, i32 -8
  %107 = load i32, ptr %106, align 4
  %108 = load i32, ptr %96, align 4
  %109 = add i32 %108, %107
  store i32 %109, ptr %96, align 4
  store ptr %5, ptr %5, align 4
  store ptr %5, ptr %102, align 4
  store i32 0, ptr %106, align 4
  br label %110

110:                                              ; preds = %100, %94
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !27
  %111 = load i16, ptr %6, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !28
  %113 = load ptr, ptr %3, align 4
  %114 = icmp eq ptr %113, %3
  br i1 %114, label %214, label %115

115:                                              ; preds = %182, %110
  %116 = phi ptr [ %183, %182 ], [ %113, %110 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %96, align 4
  %120 = add i32 %119, -1
  store volatile i32 %120, ptr %96, align 4
  %121 = load ptr, ptr %116, align 8
  %122 = getelementptr inbounds %struct.anon.6, ptr %116, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  store ptr null, ptr %122, align 4
  store ptr null, ptr %116, align 8
  %124 = getelementptr inbounds %struct.anon.6, ptr %121, i32 0, i32 1
  store volatile ptr %123, ptr %124, align 4
  store volatile ptr %121, ptr %123, align 8
  br label %125

125:                                              ; preds = %118, %115
  %126 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 13, i32 0, i32 11
  %127 = load i32, ptr %126, align 4
  %128 = load i32, ptr %23, align 8
  store i32 %128, ptr %126, align 4
  %129 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 4
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, -2
  %132 = inttoptr i32 %131 to ptr
  %133 = getelementptr inbounds %struct.dst_entry, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = load i16, ptr %134, align 64
  %136 = zext i16 %135 to i32
  %137 = call i32 @__xfrm_decode_session(ptr noundef %116, ptr noundef nonnull %2, i32 noundef %136, i32 noundef 0) #24
  store i32 %127, ptr %126, align 4
  %138 = load i32, ptr %129, align 8
  %139 = and i32 %138, -2
  %140 = inttoptr i32 %139 to ptr
  %141 = getelementptr inbounds %struct.dst_entry, ptr %140, i32 0, i32 4
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %125
  %145 = getelementptr inbounds %struct.dst_entry, ptr %140, i32 0, i32 7
  %146 = load i16, ptr %145, align 4
  %147 = and i16 %146, 64
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144, %125
  %150 = getelementptr inbounds %struct.xfrm_dst, ptr %140, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi ptr [ %151, %149 ], [ %140, %144 ]
  %154 = getelementptr inbounds %struct.dst_entry, ptr %153, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #24, !srcloc !14
  %155 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 0, i32 1, ptr elementtype(i32) %154) #24, !srcloc !30
  %156 = extractvalue { i32, i32, i32 } %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %160

159:                                              ; preds = %152
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef null) #24
  br label %160

160:                                              ; preds = %159, %158
  %161 = load i32, ptr %129, align 8
  %162 = and i32 %161, -2
  %163 = inttoptr i32 %162 to ptr
  %164 = getelementptr inbounds %struct.dst_entry, ptr %163, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.dst_entry, ptr %163, i32 0, i32 7
  %169 = load i16, ptr %168, align 4
  %170 = and i16 %169, 64
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167, %160
  %173 = getelementptr inbounds %struct.xfrm_dst, ptr %163, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %174, %172 ], [ %163, %167 ]
  %177 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = call ptr @xfrm_lookup_with_ifid(ptr noundef nonnull @init_net, ptr noundef %176, ptr noundef nonnull %2, ptr noundef %178, i32 noundef 0, i32 noundef 0) #24
  %180 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  call void @kfree_skb_reason(ptr noundef %116, i32 noundef 0) #24
  br label %182

182:                                              ; preds = %194, %181
  %183 = load ptr, ptr %3, align 4
  %184 = icmp eq ptr %183, %3
  br i1 %184, label %214, label %115

185:                                              ; preds = %175
  %186 = load i32, ptr %129, align 8
  %187 = icmp ne i32 %186, 0
  %188 = and i32 %186, 1
  %189 = icmp eq i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = and i32 %186, -2
  %193 = inttoptr i32 %192 to ptr
  call void @dst_release(ptr noundef %193) #24
  br label %194

194:                                              ; preds = %191, %185
  %195 = icmp ne ptr %179, null
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 13, i32 0, i32 3
  %198 = load i16, ptr %197, align 2
  %199 = lshr i16 %198, 14
  %200 = trunc i16 %199 to i8
  %201 = and i8 %200, 1
  %202 = or i8 %201, %196
  %203 = zext i8 %202 to i16
  %204 = shl nuw nsw i16 %203, 14
  %205 = and i16 %198, -16385
  %206 = or i16 %204, %205
  store i16 %206, ptr %197, align 2
  %207 = ptrtoint ptr %179 to i32
  store i32 %207, ptr %129, align 8
  %208 = load ptr, ptr %177, align 4
  %209 = and i32 %207, -2
  %210 = inttoptr i32 %209 to ptr
  %211 = getelementptr inbounds %struct.dst_entry, ptr %210, i32 0, i32 6
  %212 = load ptr, ptr %211, align 4
  %213 = call i32 %212(ptr noundef nonnull @init_net, ptr noundef %208, ptr noundef %116) #24
  br label %182

214:                                              ; preds = %182, %110, %92, %88, %75, %11
  %215 = getelementptr i8, ptr %0, i32 -232
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %215) #24, !srcloc !14
  %216 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %215, ptr %215, i32 1, ptr elementtype(i32) %215) #24, !srcloc !22
  %217 = extractvalue { i32, i32, i32 } %216, 0
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %222, label %219

219:                                              ; preds = %214
  %220 = icmp sgt i32 %217, 0
  br i1 %220, label %261, label %221, !prof !12

221:                                              ; preds = %219
  call void @refcount_warn_saturate(ptr noundef %215, i32 noundef 3) #24
  br label %261

222:                                              ; preds = %214
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %223 = getelementptr i8, ptr %0, i32 -20
  %224 = load i8, ptr %223, align 8
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %227, !prof !9

226:                                              ; preds = %222
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

227:                                              ; preds = %222
  %228 = getelementptr i8, ptr %0, i32 -224
  %229 = call i32 @del_timer(ptr noundef %228) #24
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = call i32 @del_timer(ptr noundef %0) #24
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231, %227
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

235:                                              ; preds = %231
  %236 = getelementptr i8, ptr %0, i32 428
  call void @call_rcu(ptr noundef %236, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %261

237:                                              ; preds = %71, %62
  %238 = getelementptr i8, ptr %0, i32 20
  store i32 0, ptr %238, align 4
  call void @skb_queue_purge(ptr noundef %5) #24
  %239 = getelementptr i8, ptr %0, i32 -232
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #24, !srcloc !14
  %240 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #24, !srcloc !22
  %241 = extractvalue { i32, i32, i32 } %240, 0
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %246, label %243

243:                                              ; preds = %237
  %244 = icmp sgt i32 %241, 0
  br i1 %244, label %261, label %245, !prof !12

245:                                              ; preds = %243
  call void @refcount_warn_saturate(ptr noundef %239, i32 noundef 3) #24
  br label %261

246:                                              ; preds = %237
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %247 = getelementptr i8, ptr %0, i32 -20
  %248 = load i8, ptr %247, align 8
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %251, !prof !9

250:                                              ; preds = %246
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

251:                                              ; preds = %246
  %252 = getelementptr i8, ptr %0, i32 -224
  %253 = call i32 @del_timer(ptr noundef %252) #24
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = call i32 @del_timer(ptr noundef %0) #24
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255, %251
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

259:                                              ; preds = %255
  %260 = getelementptr i8, ptr %0, i32 428
  call void @call_rcu(ptr noundef %260, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %261

261:                                              ; preds = %259, %245, %243, %235, %221, %219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_policy_destroy(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 15, i32 1
  %3 = load i8, ptr %2, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 6
  %8 = tail call i32 @del_timer(ptr noundef %7) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16, i32 1
  %12 = tail call i32 @del_timer(ptr noundef %11) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %16, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_policy_destroy_rcu(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -680
  tail call void @kfree(ptr noundef %2) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xfrm_spd_getinfo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 13
  %4 = load i32, ptr %3, align 16
  store i32 %4, ptr %1, align 4
  %5 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 4
  %15 = load i32, ptr %14, align 16
  %16 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %1, i32 0, i32 7
  store i32 1048576, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_policy_hash_rebuild(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_policy_insert(i32 noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  %4 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12
  %5 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 22
  %6 = load i16, ptr %5, align 2
  %7 = tail call fastcc ptr @policy_hash_bysel(ptr noundef nonnull @init_net, ptr noundef %4, i16 noundef zeroext %6, i32 noundef %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = icmp ne i32 %2, 0
  %11 = tail call fastcc ptr @xfrm_policy_insert_list(ptr noundef nonnull %7, ptr noundef %1, i1 noundef zeroext %10)
  br label %15

12:                                               ; preds = %3
  %13 = trunc i32 %0 to i8
  %14 = tail call fastcc ptr @xfrm_policy_inexact_insert(ptr noundef %1, i8 noundef zeroext %13, i32 noundef %2)
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %11, %9 ], [ %14, %12 ]
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  %19 = ptrtoint ptr %16 to i32
  br label %185

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 15
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), align 16
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store ptr %22, ptr %21, align 4
  %24 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 15, i32 0, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), ptr %24, align 4
  store volatile ptr %21, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), align 16
  %25 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %0
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = icmp eq ptr %1, null
  br i1 %28, label %40, label %29, !prof !9

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #24, !srcloc !14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #24, !srcloc !15
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !9

34:                                               ; preds = %29
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !12

38:                                               ; preds = %34, %29
  %39 = phi i32 [ 2, %29 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #24
  br label %40

40:                                               ; preds = %38, %34, %20
  %41 = load i16, ptr %5, align 2
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122)) #24, !srcloc !14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122)) #24, !srcloc !32
  br label %49

45:                                               ; preds = %40
  %46 = load ptr, ptr @__fib6_flush_trees, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void %46(ptr noundef nonnull @init_net) #24
  br label %49

49:                                               ; preds = %48, %45, %43
  %50 = icmp eq ptr %16, null
  br i1 %50, label %98, label %51

51:                                               ; preds = %49
  tail call fastcc void @xfrm_policy_requeue(ptr noundef nonnull %16, ptr noundef %1)
  %52 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 15
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %93, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %86, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  store volatile ptr %61, ptr %57, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  store volatile ptr %57, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %59
  store volatile ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %66 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 25
  %67 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 25, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 4
  store volatile ptr %71, ptr %68, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  store volatile ptr %68, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %70
  store ptr null, ptr %66, align 4
  store ptr null, ptr %67, align 4
  br label %76

76:                                               ; preds = %75, %65
  %77 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 2, i32 1
  %80 = load ptr, ptr %79, align 4
  store volatile ptr %78, ptr %80, align 4
  %81 = icmp eq ptr %78, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.hlist_node, ptr %78, i32 0, i32 1
  store volatile ptr %80, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %76
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %79, align 4
  %85 = load ptr, ptr %52, align 4
  br label %86

86:                                               ; preds = %84, %55
  %87 = phi ptr [ %85, %84 ], [ %53, %55 ]
  %88 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 15, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %89, ptr %90, align 4
  store volatile ptr %87, ptr %89, align 4
  store volatile ptr %52, ptr %52, align 4
  store ptr %52, ptr %88, align 4
  %91 = load i32, ptr %25, align 4
  %92 = add i32 %91, -1
  store i32 %92, ptr %25, align 4
  br label %93

93:                                               ; preds = %86, %51
  %94 = getelementptr inbounds %struct.xfrm_policy, ptr %16, i32 0, i32 9
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 8
  %97 = xor i32 %96, %95
  br label %137

98:                                               ; preds = %49
  %99 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 9
  %100 = load i32, ptr %99, align 8
  %101 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 9), align 8
  %102 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 10), align 4
  %103 = load i32, ptr @xfrm_gen_index.idx_generator, align 4
  br label %104

104:                                              ; preds = %125, %98
  %105 = phi i32 [ %103, %98 ], [ %112, %125 ]
  %106 = phi i32 [ %100, %98 ], [ 0, %125 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = or i32 %105, %0
  %110 = add i32 %105, 8
  store i32 %110, ptr @xfrm_gen_index.idx_generator, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi i32 [ %110, %108 ], [ %105, %104 ]
  %113 = phi i32 [ %109, %108 ], [ %106, %104 ]
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 8, i32 %113
  %116 = lshr i32 %115, 8
  %117 = xor i32 %116, %115
  %118 = and i32 %117, %102
  %119 = getelementptr %struct.hlist_head, ptr %101, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  %122 = getelementptr i8, ptr %120, i32 -8
  %123 = icmp eq ptr %122, null
  %124 = or i1 %121, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %130, %111
  %126 = phi ptr [ %134, %130 ], [ %122, %111 ]
  %127 = getelementptr inbounds %struct.xfrm_policy, ptr %126, i32 0, i32 9
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %128, %115
  br i1 %129, label %104, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.xfrm_policy, ptr %126, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  %134 = getelementptr i8, ptr %132, i32 -8
  %135 = icmp eq ptr %134, null
  %136 = or i1 %133, %135
  br i1 %136, label %137, label %125

137:                                              ; preds = %130, %111, %93
  %138 = phi i32 [ %97, %93 ], [ %117, %130 ], [ %117, %111 ]
  %139 = phi i32 [ %95, %93 ], [ %115, %130 ], [ %115, %111 ]
  %140 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 9
  store i32 %139, ptr %140, align 8
  %141 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 2
  %142 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 9), align 8
  %143 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 10), align 4
  %144 = and i32 %143, %138
  %145 = getelementptr %struct.hlist_head, ptr %142, i32 %144
  %146 = load ptr, ptr %145, align 4
  store volatile ptr %146, ptr %141, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.hlist_node, ptr %146, i32 0, i32 1
  store volatile ptr %141, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %137
  store volatile ptr %141, ptr %145, align 4
  %151 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 2, i32 1
  store volatile ptr %145, ptr %151, align 4
  %152 = tail call i64 @ktime_get_real_seconds() #24
  %153 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 14, i32 2
  store i64 %152, ptr %153, align 8
  %154 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 14, i32 3
  store i64 0, ptr %154, align 8
  %155 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 6
  %156 = load volatile i32, ptr @jiffies, align 64
  %157 = add i32 %156, 100
  %158 = tail call i32 @mod_timer(ptr noundef %155, i32 noundef %157) #24
  %159 = icmp ne i32 %158, 0
  %160 = or i1 %28, %159
  br i1 %160, label %172, label %161, !prof !13

161:                                              ; preds = %150
  %162 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %162) #24, !srcloc !14
  %163 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %162, ptr %162, i32 1, ptr elementtype(i32) %162) #24, !srcloc !15
  %164 = extractvalue { i32, i32, i32 } %163, 0
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166, !prof !9

166:                                              ; preds = %161
  %167 = add i32 %164, 1
  %168 = or i32 %167, %164
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %172, label %170, !prof !12

170:                                              ; preds = %166, %161
  %171 = phi i32 [ 2, %161 ], [ 1, %166 ]
  tail call void @refcount_warn_saturate(ptr noundef %162, i32 noundef %171) #24
  br label %172

172:                                              ; preds = %170, %166, %150
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  br i1 %50, label %174, label %173

173:                                              ; preds = %172
  tail call fastcc void @xfrm_policy_kill(ptr noundef nonnull %16)
  br label %185

174:                                              ; preds = %172
  %175 = load i32, ptr %25, align 4
  %176 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 12, i32 %0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, -1048575
  %179 = icmp ult i32 %178, -1048576
  %180 = icmp ule i32 %175, %177
  %181 = select i1 %179, i1 true, i1 %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %174
  %183 = load ptr, ptr @system_wq, align 4
  %184 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %183, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 14)) #24
  br label %185

185:                                              ; preds = %182, %174, %173, %18
  %186 = phi i32 [ %19, %18 ], [ 0, %174 ], [ 0, %182 ], [ 0, %173 ]
  ret i32 %186
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @policy_hash_bysel(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %3, i32 1
  %6 = load i32, ptr %5, align 4
  switch i16 %2, label %85 [
    i16 2, label %7
    i16 10, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %3, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %3, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.xfrm_selector, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.xfrm_selector, ptr %1, i32 0, i32 7
  %14 = load i8, ptr %13, align 2
  %15 = icmp ult i8 %14, %9
  br i1 %15, label %96, label %25

16:                                               ; preds = %4
  %17 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %3, i32 4
  %18 = load i8, ptr %17, align 2
  %19 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %3, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.xfrm_selector, ptr %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.xfrm_selector, ptr %1, i32 0, i32 7
  %23 = load i8, ptr %22, align 2
  %24 = icmp ult i8 %23, %18
  br i1 %24, label %96, label %77

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.xfrm_selector, ptr %1, i32 0, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = icmp ult i8 %27, %11
  br i1 %28, label %96, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %1, align 4
  %31 = zext i8 %9 to i32
  %32 = icmp eq i8 %9, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = icmp ult i8 %9, 32
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = sub nsw i32 32, %31
  %37 = shl nsw i32 -1, %36
  br label %38

38:                                               ; preds = %35, %33, %29
  %39 = phi i32 [ %37, %35 ], [ -1, %33 ], [ 0, %29 ]
  %40 = load i32, ptr %12, align 4
  %41 = zext i8 %11 to i32
  %42 = icmp eq i8 %11, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = icmp ult i8 %11, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = sub nsw i32 32, %41
  %47 = shl nsw i32 -1, %46
  br label %48

48:                                               ; preds = %45, %43, %38
  %49 = phi i32 [ %47, %45 ], [ -1, %43 ], [ 0, %38 ]
  %50 = tail call i32 @llvm.bswap.i32(i32 %40) #24
  %51 = tail call i32 @llvm.bswap.i32(i32 %30) #24
  %52 = and i32 %39, %51
  %53 = and i32 %49, %50
  %54 = add i32 %52, -559038729
  %55 = add i32 %53, -559038729
  %56 = xor i32 %55, -559038729
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 14) #24
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %54
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 11) #24
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 25) #24
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %58
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 16) #24
  %67 = sub i32 %65, %66
  %68 = xor i32 %67, %61
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 4) #24
  %70 = sub i32 %68, %69
  %71 = xor i32 %70, %64
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 14) #24
  %73 = sub i32 %71, %72
  %74 = xor i32 %73, %67
  %75 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 24) #24
  %76 = sub i32 %74, %75
  br label %85

77:                                               ; preds = %16
  %78 = getelementptr inbounds %struct.xfrm_selector, ptr %1, i32 0, i32 8
  %79 = load i8, ptr %78, align 1
  %80 = icmp ult i8 %79, %20
  br i1 %80, label %96, label %81

81:                                               ; preds = %77
  %82 = tail call fastcc i32 @__xfrm6_pref_hash(ptr noundef %1, i8 noundef zeroext %18) #24
  %83 = tail call fastcc i32 @__xfrm6_pref_hash(ptr noundef %21, i8 noundef zeroext %20) #24
  %84 = xor i32 %83, %82
  br label %85

85:                                               ; preds = %81, %48, %4
  %86 = phi i32 [ %84, %81 ], [ %76, %48 ], [ 0, %4 ]
  %87 = lshr i32 %86, 16
  %88 = xor i32 %87, %86
  %89 = and i32 %88, %6
  %90 = add i32 %6, 1
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %3
  %94 = load volatile ptr, ptr %93, align 4
  %95 = getelementptr %struct.hlist_head, ptr %94, i32 %89
  br label %96

96:                                               ; preds = %92, %85, %77, %25, %16, %7
  %97 = phi ptr [ %95, %92 ], [ null, %85 ], [ null, %25 ], [ null, %7 ], [ null, %77 ], [ null, %16 ]
  ret ptr %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_insert_list(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %153, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 18
  %8 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 10
  %9 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12
  %10 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 1
  %11 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 2
  %12 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 3
  %13 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1
  %14 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 1
  %15 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 2
  %16 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 3
  %17 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 2
  %18 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 4
  %19 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 6
  %20 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 9
  %21 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 10
  %22 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 11
  %23 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 11
  %24 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 11, i32 1
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 8
  br label %26

26:                                               ; preds = %135, %6
  %27 = phi ptr [ %4, %6 ], [ %138, %135 ]
  %28 = phi ptr [ null, %6 ], [ %137, %135 ]
  %29 = phi ptr [ null, %6 ], [ %136, %135 ]
  %30 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 18
  %31 = load i8, ptr %30, align 1
  %32 = load i8, ptr %7, align 1
  %33 = icmp eq i8 %31, %32
  br i1 %33, label %34, label %128

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %128

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %128

44:                                               ; preds = %39
  %45 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %10, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %128

49:                                               ; preds = %44
  %50 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 0, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %128

54:                                               ; preds = %49
  %55 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %12, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %128

59:                                               ; preds = %54
  %60 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %128

64:                                               ; preds = %59
  %65 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 1, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %14, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %128

69:                                               ; preds = %64
  %70 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 1, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %15, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %128

74:                                               ; preds = %69
  %75 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 1, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %16, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %128

79:                                               ; preds = %74
  %80 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %17, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %79
  %85 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %18, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %84
  %90 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %19, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %89
  %95 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 9
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %20, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %128

99:                                               ; preds = %94
  %100 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 10
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %21, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  %105 = getelementptr %struct.xfrm_policy, ptr %27, i32 0, i32 12, i32 11
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %22, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load i32, ptr %23, align 4
  %111 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 11
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load i32, ptr %24, align 4
  %116 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 11, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = icmp eq ptr %29, null
  br i1 %120, label %122, label %121, !prof !12

121:                                              ; preds = %119
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1550, i32 noundef 9, ptr noundef null) #24
  br label %128

122:                                              ; preds = %119
  br i1 %2, label %164, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %25, align 4
  %125 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = icmp ugt i32 %124, %126
  br i1 %127, label %135, label %140

128:                                              ; preds = %121, %114, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %26
  %129 = load i32, ptr %25, align 4
  %130 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 8
  %131 = load i32, ptr %130, align 4
  %132 = icmp ult i32 %129, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = icmp eq ptr %29, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %133, %128, %123
  %136 = phi ptr [ null, %133 ], [ %27, %123 ], [ %29, %128 ]
  %137 = phi ptr [ %28, %133 ], [ %28, %123 ], [ %27, %128 ]
  %138 = load ptr, ptr %27, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %26

140:                                              ; preds = %135, %133, %123
  %141 = phi ptr [ %137, %135 ], [ %28, %133 ], [ %28, %123 ]
  %142 = phi ptr [ %136, %135 ], [ %29, %133 ], [ %27, %123 ]
  %143 = icmp eq ptr %141, null
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 1
  %146 = getelementptr inbounds %struct.xfrm_policy, ptr %141, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  store ptr %147, ptr %145, align 4
  %148 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 1, i32 1
  store volatile ptr %146, ptr %148, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  store volatile ptr %145, ptr %146, align 4
  %149 = load ptr, ptr %145, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %164, label %159

151:                                              ; preds = %140
  %152 = load ptr, ptr %0, align 4
  br label %153

153:                                              ; preds = %151, %3
  %154 = phi ptr [ %152, %151 ], [ null, %3 ]
  %155 = phi ptr [ %142, %151 ], [ null, %3 ]
  %156 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 1
  store ptr %154, ptr %156, align 4
  %157 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 1, i32 1
  store volatile ptr %0, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  store volatile ptr %156, ptr %0, align 4
  %158 = icmp eq ptr %154, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153, %144
  %160 = phi ptr [ %149, %144 ], [ %154, %153 ]
  %161 = phi ptr [ %145, %144 ], [ %156, %153 ]
  %162 = phi ptr [ %142, %144 ], [ %155, %153 ]
  %163 = getelementptr inbounds %struct.hlist_node, ptr %160, i32 0, i32 1
  store volatile ptr %161, ptr %163, align 4
  br label %164

164:                                              ; preds = %159, %153, %144, %122
  %165 = phi ptr [ %142, %144 ], [ %155, %153 ], [ %162, %159 ], [ inttoptr (i32 -17 to ptr), %122 ]
  ret ptr %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_inexact_insert(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @xfrm_policy_inexact_alloc_bin(ptr noundef %0, i8 noundef zeroext %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %203, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @xfrm_policy_inexact_alloc_chain(ptr noundef nonnull %4, ptr noundef %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %201, label %9

9:                                                ; preds = %6
  %10 = icmp ne i32 %2, 0
  %11 = tail call fastcc ptr @xfrm_policy_insert_list(ptr noundef nonnull %7, ptr noundef %0, i1 noundef zeroext %10)
  %12 = icmp ne ptr %11, null
  %13 = and i1 %10, %12
  br i1 %13, label %201, label %14

14:                                               ; preds = %9
  %15 = zext i8 %1 to i32
  %16 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 11, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -672
  %20 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 8
  %21 = icmp eq ptr %19, null
  %22 = or i1 %18, %21
  br i1 %22, label %172, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 18
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 10
  %26 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 12
  %27 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 1
  %28 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 2
  %29 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 3
  %30 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 1
  %31 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 1, i32 0, i32 1
  %32 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 1, i32 0, i32 2
  %33 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 1, i32 0, i32 3
  %34 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 2
  %35 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 4
  %36 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 6
  %37 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 9
  %38 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 10
  %39 = getelementptr %struct.xfrm_policy, ptr %0, i32 0, i32 12, i32 11
  %40 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 11
  %41 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 11, i32 1
  br label %42

42:                                               ; preds = %152, %23
  %43 = phi ptr [ %19, %23 ], [ %158, %152 ]
  %44 = phi ptr [ null, %23 ], [ %154, %152 ]
  %45 = phi ptr [ null, %23 ], [ %153, %152 ]
  %46 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 18
  %47 = load i8, ptr %46, align 1
  %48 = load i8, ptr %24, align 1
  %49 = icmp eq i8 %47, %48
  br i1 %49, label %50, label %143

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %25, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %143

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 12
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %26, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %55
  %61 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %27, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %143

65:                                               ; preds = %60
  %66 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 0, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %28, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %143

70:                                               ; preds = %65
  %71 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 0, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %29, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %143

75:                                               ; preds = %70
  %76 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %30, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %75
  %81 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %31, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %143

85:                                               ; preds = %80
  %86 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 1, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %32, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %143

90:                                               ; preds = %85
  %91 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 1, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %33, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %143

95:                                               ; preds = %90
  %96 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %34, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %95
  %101 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %35, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %100
  %106 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = load i32, ptr %36, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %105
  %111 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 9
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %37, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 10
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %38, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = getelementptr %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 11
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %39, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load i32, ptr %40, align 4
  %127 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 11
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load i32, ptr %41, align 4
  %132 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 11, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = icmp eq ptr %44, null
  br i1 %136, label %138, label %137, !prof !12

137:                                              ; preds = %135
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1515, i32 noundef 9, ptr noundef null) #24
  br label %143

138:                                              ; preds = %135
  %139 = load i32, ptr %20, align 4
  %140 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 8
  %141 = load i32, ptr %140, align 4
  %142 = icmp ugt i32 %139, %141
  br i1 %142, label %152, label %161

143:                                              ; preds = %137, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %42
  %144 = load i32, ptr %20, align 4
  %145 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 8
  %146 = load i32, ptr %145, align 4
  %147 = icmp ult i32 %144, %146
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 25
  br label %152

150:                                              ; preds = %143
  %151 = icmp eq ptr %44, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %150, %148, %138
  %153 = phi ptr [ %149, %148 ], [ %45, %150 ], [ %45, %138 ]
  %154 = phi ptr [ %44, %148 ], [ null, %150 ], [ %43, %138 ]
  %155 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 25
  %156 = load ptr, ptr %155, align 8
  %157 = icmp eq ptr %156, null
  %158 = getelementptr i8, ptr %156, i32 -672
  %159 = icmp eq ptr %158, null
  %160 = or i1 %157, %159
  br i1 %160, label %161, label %42

161:                                              ; preds = %152, %150, %138
  %162 = phi ptr [ %153, %152 ], [ %45, %150 ], [ %45, %138 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load ptr, ptr %16, align 4
  br label %172

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 25
  %168 = load ptr, ptr %162, align 4
  store ptr %168, ptr %167, align 4
  %169 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 25, i32 1
  store volatile ptr %162, ptr %169, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  store volatile ptr %167, ptr %162, align 4
  %170 = load ptr, ptr %167, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %177

172:                                              ; preds = %164, %14
  %173 = phi ptr [ %165, %164 ], [ %17, %14 ]
  %174 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 25
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 25, i32 1
  store volatile ptr %16, ptr %175, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  store volatile ptr %174, ptr %16, align 4
  %176 = icmp eq ptr %173, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %172, %166
  %178 = phi ptr [ %170, %166 ], [ %173, %172 ]
  %179 = phi ptr [ %167, %166 ], [ %174, %172 ]
  %180 = getelementptr inbounds %struct.hlist_node, ptr %178, i32 0, i32 1
  store volatile ptr %179, ptr %180, align 4
  br label %181

181:                                              ; preds = %177, %166
  %182 = load ptr, ptr %16, align 4
  br label %183

183:                                              ; preds = %181, %172
  %184 = phi ptr [ %182, %181 ], [ %174, %172 ]
  %185 = icmp eq ptr %184, null
  %186 = getelementptr i8, ptr %184, i32 -672
  %187 = icmp eq ptr %186, null
  %188 = or i1 %185, %187
  br i1 %188, label %200, label %189

189:                                              ; preds = %189, %183
  %190 = phi ptr [ %197, %189 ], [ %186, %183 ]
  %191 = phi i32 [ %193, %189 ], [ 0, %183 ]
  %192 = getelementptr inbounds %struct.xfrm_policy, ptr %190, i32 0, i32 5
  store i32 %191, ptr %192, align 8
  %193 = add i32 %191, 1
  %194 = getelementptr inbounds %struct.xfrm_policy, ptr %190, i32 0, i32 25
  %195 = load ptr, ptr %194, align 8
  %196 = icmp eq ptr %195, null
  %197 = getelementptr i8, ptr %195, i32 -672
  %198 = icmp eq ptr %197, null
  %199 = or i1 %196, %198
  br i1 %199, label %200, label %189

200:                                              ; preds = %189, %183
  br i1 %12, label %201, label %203

201:                                              ; preds = %200, %9, %6
  %202 = phi ptr [ inttoptr (i32 -12 to ptr), %6 ], [ inttoptr (i32 -17 to ptr), %9 ], [ %11, %200 ]
  tail call fastcc void @__xfrm_policy_inexact_prune_bin(ptr noundef nonnull %4, i1 noundef zeroext false)
  br label %203

203:                                              ; preds = %201, %200, %3
  %204 = phi ptr [ null, %200 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %202, %201 ]
  ret ptr %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_policy_requeue(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %5 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %5, align 4, !annotation !26
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %85, label %8

8:                                                ; preds = %2
  store ptr %3, ptr %3, align 4
  %9 = getelementptr inbounds %struct.anon.57, ptr %3, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %11) #24
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.anon.6, ptr %12, i32 0, i32 1
  store volatile ptr %3, ptr %18, align 4
  store volatile ptr %12, ptr %3, align 8
  store volatile ptr %15, ptr %17, align 8
  %19 = getelementptr inbounds %struct.anon.6, ptr %15, i32 0, i32 1
  store volatile ptr %17, ptr %19, align 4
  %20 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %10, align 4
  %23 = add i32 %22, %21
  store i32 %23, ptr %10, align 4
  store ptr %4, ptr %4, align 4
  store ptr %4, ptr %16, align 4
  store i32 0, ptr %20, align 4
  br label %24

24:                                               ; preds = %14, %8
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16, i32 1
  %26 = call i32 @del_timer(ptr noundef %25) #24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #24, !srcloc !14
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #24, !srcloc !22
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %51, label %35, !prof !12

35:                                               ; preds = %33
  call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #24
  br label %51

36:                                               ; preds = %28
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %37 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 15, i32 1
  %38 = load i8, ptr %37, align 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %36
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 6
  %43 = call i32 @del_timer(ptr noundef %42) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 @del_timer(ptr noundef %25) #24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %41
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 26
  call void @call_rcu(ptr noundef %50, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %51

51:                                               ; preds = %49, %35, %33, %24
  call void @_raw_spin_unlock_bh(ptr noundef %11) #24
  %52 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 16, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %52) #24
  %53 = load ptr, ptr %3, align 4
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 16
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %9, align 4
  %59 = getelementptr inbounds %struct.anon.6, ptr %53, i32 0, i32 1
  store volatile ptr %56, ptr %59, align 4
  store volatile ptr %53, ptr %56, align 8
  store volatile ptr %57, ptr %58, align 8
  %60 = getelementptr inbounds %struct.anon.6, ptr %57, i32 0, i32 1
  store volatile ptr %58, ptr %60, align 4
  %61 = load i32, ptr %10, align 4
  %62 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 16, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %55, %51
  %66 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 16, i32 2
  store i32 10, ptr %66, align 4
  %67 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 16, i32 1
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = call i32 @mod_timer(ptr noundef %67, i32 noundef %68) #24
  %70 = icmp ne i32 %69, 0
  %71 = icmp eq ptr %1, null
  %72 = or i1 %71, %70
  br i1 %72, label %84, label %73, !prof !13

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #24, !srcloc !14
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #24, !srcloc !15
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78, !prof !9

78:                                               ; preds = %73
  %79 = add i32 %76, 1
  %80 = or i32 %79, %76
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %84, label %82, !prof !12

82:                                               ; preds = %78, %73
  %83 = phi i32 [ 2, %73 ], [ 1, %78 ]
  call void @refcount_warn_saturate(ptr noundef %74, i32 noundef %83) #24
  br label %84

84:                                               ; preds = %82, %78, %65
  call void @_raw_spin_unlock_bh(ptr noundef %52) #24
  br label %85

85:                                               ; preds = %84, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_policy_kill(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %2) #24
  %3 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 15, i32 1
  store i8 1, ptr %3, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %2) #24
  %4 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #24, !srcloc !14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #24, !srcloc !32
  %6 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 16, i32 1
  %8 = tail call i32 @del_timer(ptr noundef %7) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #24, !srcloc !14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #24, !srcloc !22
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %32, label %17, !prof !12

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #24
  br label %32

18:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %19 = load i8, ptr %3, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 6
  %24 = tail call i32 @del_timer(ptr noundef %23) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call i32 @del_timer(ptr noundef %7) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %31, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %32

32:                                               ; preds = %30, %17, %15, %1
  tail call void @skb_queue_purge(ptr noundef %6) #24
  %33 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 6
  %34 = tail call i32 @del_timer(ptr noundef %33) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #24, !srcloc !14
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #24, !srcloc !22
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %57, label %43, !prof !12

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #24
  br label %57

44:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %45 = load i8, ptr %3, align 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

48:                                               ; preds = %44
  %49 = tail call i32 @del_timer(ptr noundef %33) #24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = tail call i32 @del_timer(ptr noundef %7) #24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %56, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %57

57:                                               ; preds = %55, %43, %41, %32
  %58 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #24, !srcloc !14
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #24, !srcloc !22
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %78, label %64, !prof !12

64:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %58, i32 noundef 3) #24
  br label %78

65:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %66 = load i8, ptr %3, align 8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69, !prof !9

68:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

69:                                               ; preds = %65
  %70 = tail call i32 @del_timer(ptr noundef %33) #24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = tail call i32 @del_timer(ptr noundef %7) #24
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %77, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %78

78:                                               ; preds = %76, %64, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_policy_bysel_ctx(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture readnone %6, i32 noundef %7, ptr nocapture noundef writeonly %8) #1 {
  %10 = alloca %struct.xfrm_pol_inexact_key, align 8
  store i32 0, ptr %8, align 4
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.xfrm_selector, ptr %5, i32 0, i32 6
  %13 = load i16, ptr %12, align 4
  %14 = tail call fastcc ptr @policy_hash_bysel(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %13, i32 noundef %4)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %96

16:                                               ; preds = %9
  %17 = load i16, ptr %12, align 4
  %18 = trunc i32 %4 to i8
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  %19 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %10, i32 0, i32 1
  store i32 %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %10, i32 0, i32 2
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %10, i32 0, i32 3
  store i8 %18, ptr %21, align 2
  %22 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %10, i32 0, i32 4
  store i8 %3, ptr %22, align 1
  %23 = call fastcc ptr @rhashtable_lookup(ptr noundef nonnull %10, [7 x i32] [i32 0, i32 524288, i32 0, i32 65536, i32 ptrtoint (ptr @xfrm_pol_bin_key to i32), i32 ptrtoint (ptr @xfrm_pol_bin_obj to i32), i32 ptrtoint (ptr @xfrm_pol_bin_cmp to i32)]) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %171, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.xfrm_selector, ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %23, i32 0, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %23, i32 0, i32 2
  %30 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %23, i32 0, i32 4
  %31 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %23, i32 0, i32 3
  %32 = call fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %30, ptr noundef %31, ptr noundef %5, i16 noundef zeroext %28) #24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %32, i32 0, i32 4
  %36 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %32, i32 0, i32 3
  %37 = call fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %36, ptr noundef %31, ptr noundef %26, i16 noundef zeroext %28) #24
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %37, i32 0, i32 4
  %40 = select i1 %38, ptr null, ptr %39
  br label %41

41:                                               ; preds = %34, %25
  %42 = phi ptr [ null, %25 ], [ %40, %34 ]
  %43 = phi ptr [ null, %25 ], [ %35, %34 ]
  %44 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %23, i32 0, i32 5
  %45 = call fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %44, ptr noundef %31, ptr noundef %26, i16 noundef zeroext %28) #24
  %46 = icmp eq ptr %45, null
  %47 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %45, i32 0, i32 4
  %48 = select i1 %46, ptr null, ptr %47
  %49 = call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef %42, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  %50 = icmp eq ptr %49, null
  %51 = call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef %48, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  %52 = icmp eq ptr %51, null
  br i1 %50, label %54, label %53

53:                                               ; preds = %41
  br i1 %52, label %62, label %55

54:                                               ; preds = %41
  br i1 %52, label %66, label %61

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %51, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.xfrm_policy, ptr %49, i32 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %55, %53
  %63 = phi ptr [ %49, %53 ], [ %51, %61 ], [ %49, %55 ]
  %64 = call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef %43, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %69

66:                                               ; preds = %54
  %67 = call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef %43, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %83, label %77

69:                                               ; preds = %62
  %70 = icmp eq ptr %63, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.xfrm_policy, ptr %64, i32 0, i32 5
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.xfrm_policy, ptr %63, i32 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71, %69, %66
  %78 = phi ptr [ %64, %71 ], [ %64, %69 ], [ %67, %66 ]
  br label %79

79:                                               ; preds = %77, %71, %62
  %80 = phi ptr [ %63, %62 ], [ %78, %77 ], [ %63, %71 ]
  %81 = call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef %29, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %98, label %86

83:                                               ; preds = %66
  %84 = call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef %29, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %160, label %94

86:                                               ; preds = %79
  %87 = icmp eq ptr %80, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.xfrm_policy, ptr %81, i32 0, i32 5
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.xfrm_policy, ptr %80, i32 0, i32 5
  %92 = load i32, ptr %91, align 8
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88, %86, %83
  %95 = phi ptr [ %81, %88 ], [ %81, %86 ], [ %84, %83 ]
  br label %102

96:                                               ; preds = %9
  %97 = tail call fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef nonnull %14, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %5)
  br label %98

98:                                               ; preds = %96, %79
  %99 = phi ptr [ null, %96 ], [ %23, %79 ]
  %100 = phi ptr [ %97, %96 ], [ %80, %79 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %160, label %102

102:                                              ; preds = %98, %94, %88
  %103 = phi ptr [ %100, %98 ], [ %80, %88 ], [ %95, %94 ]
  %104 = phi ptr [ %99, %98 ], [ %23, %88 ], [ %23, %94 ]
  %105 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #24, !srcloc !14
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #24, !srcloc !15
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109, !prof !9

109:                                              ; preds = %102
  %110 = add i32 %107, 1
  %111 = or i32 %110, %107
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %115, label %113, !prof !12

113:                                              ; preds = %109, %102
  %114 = phi i32 [ 2, %102 ], [ 1, %109 ]
  call void @refcount_warn_saturate(ptr noundef %105, i32 noundef %114) #24
  br label %115

115:                                              ; preds = %113, %109
  %116 = icmp eq i32 %7, 0
  br i1 %116, label %160, label %117

117:                                              ; preds = %115
  store i32 0, ptr %8, align 4
  %118 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 15
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %160, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 1, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %152, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  store volatile ptr %127, ptr %123, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.hlist_node, ptr %127, i32 0, i32 1
  store volatile ptr %123, ptr %130, align 4
  br label %131

131:                                              ; preds = %129, %125
  store volatile ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  %132 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 25
  %133 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 25, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr %132, align 4
  store volatile ptr %137, ptr %134, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.hlist_node, ptr %137, i32 0, i32 1
  store volatile ptr %134, ptr %140, align 4
  br label %141

141:                                              ; preds = %139, %136
  store ptr null, ptr %132, align 4
  store ptr null, ptr %133, align 4
  br label %142

142:                                              ; preds = %141, %131
  %143 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 2, i32 1
  %146 = load ptr, ptr %145, align 4
  store volatile ptr %144, ptr %146, align 4
  %147 = icmp eq ptr %144, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.hlist_node, ptr %144, i32 0, i32 1
  store volatile ptr %146, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %142
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  %151 = load ptr, ptr %118, align 4
  br label %152

152:                                              ; preds = %150, %121
  %153 = phi ptr [ %151, %150 ], [ %119, %121 ]
  %154 = getelementptr inbounds %struct.xfrm_policy, ptr %103, i32 0, i32 15, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  store ptr %155, ptr %156, align 4
  store volatile ptr %153, ptr %155, align 4
  store volatile ptr %118, ptr %118, align 4
  store ptr %118, ptr %154, align 4
  %157 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %4
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, -1
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %152, %117, %115, %98, %83
  %161 = phi ptr [ %103, %152 ], [ %103, %117 ], [ %103, %115 ], [ null, %98 ], [ null, %83 ]
  %162 = phi ptr [ %104, %152 ], [ %104, %117 ], [ %104, %115 ], [ %99, %98 ], [ %23, %83 ]
  call void @_raw_spin_unlock_bh(ptr noundef %11) #24
  %163 = icmp ne ptr %161, null
  %164 = icmp ne i32 %7, 0
  %165 = and i1 %164, %163
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  call fastcc void @xfrm_policy_kill(ptr noundef nonnull %161)
  br label %167

167:                                              ; preds = %166, %160
  %168 = icmp ne ptr %162, null
  %169 = and i1 %164, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  call fastcc void @__xfrm_policy_inexact_prune_bin(ptr noundef nonnull %162, i1 noundef zeroext false) #24
  br label %171

171:                                              ; preds = %170, %16
  %172 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31), %170 ], [ %11, %16 ]
  %173 = phi ptr [ %161, %170 ], [ null, %16 ]
  call void @_raw_spin_unlock_bh(ptr noundef %172) #24
  br label %174

174:                                              ; preds = %171, %167
  %175 = phi ptr [ %161, %167 ], [ %173, %171 ]
  ret ptr %175
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @__xfrm_policy_bysel_ctx(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4) unnamed_addr #8 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %117, label %7

7:                                                ; preds = %5
  %8 = getelementptr i32, ptr %4, i32 13
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %117, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.xfrm_mark, ptr %1, i32 0, i32 1
  %13 = getelementptr i32, ptr %4, i32 1
  %14 = getelementptr i32, ptr %4, i32 2
  %15 = getelementptr i32, ptr %4, i32 3
  %16 = getelementptr i32, ptr %4, i32 4
  %17 = getelementptr i32, ptr %4, i32 5
  %18 = getelementptr i32, ptr %4, i32 6
  %19 = getelementptr i32, ptr %4, i32 7
  %20 = getelementptr i32, ptr %4, i32 8
  %21 = getelementptr i32, ptr %4, i32 9
  %22 = getelementptr i32, ptr %4, i32 10
  %23 = getelementptr i32, ptr %4, i32 11
  %24 = getelementptr i32, ptr %4, i32 12
  br label %25

25:                                               ; preds = %114, %11
  %26 = phi ptr [ %9, %11 ], [ %115, %114 ]
  %27 = getelementptr inbounds %struct.xfrm_policy, ptr %26, i32 0, i32 18
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, %3
  br i1 %29, label %30, label %114

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.xfrm_policy, ptr %26, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  %35 = load i32, ptr %1, align 4
  %36 = getelementptr inbounds %struct.xfrm_policy, ptr %26, i32 0, i32 11
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %34
  %40 = load i32, ptr %12, align 4
  %41 = getelementptr inbounds %struct.xfrm_policy, ptr %26, i32 0, i32 11, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.xfrm_policy, ptr %26, i32 0, i32 12
  %46 = load i32, ptr %4, align 4
  %47 = load i32, ptr %45, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %114

49:                                               ; preds = %44
  %50 = load i32, ptr %13, align 4
  %51 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %49
  %55 = load i32, ptr %14, align 4
  %56 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %54
  %60 = load i32, ptr %15, align 4
  %61 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 0, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %59
  %65 = load i32, ptr %16, align 4
  %66 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = load i32, ptr %17, align 4
  %71 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 1, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %69
  %75 = load i32, ptr %18, align 4
  %76 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %74
  %80 = load i32, ptr %19, align 4
  %81 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 1, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %79
  %85 = load i32, ptr %20, align 4
  %86 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load i32, ptr %21, align 4
  %91 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = load i32, ptr %22, align 4
  %96 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i32, ptr %23, align 4
  %101 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 9
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, ptr %24, align 4
  %106 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 10
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, ptr %8, align 4
  %111 = getelementptr %struct.xfrm_policy, ptr %26, i32 0, i32 12, i32 11
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %30, %25
  %115 = load ptr, ptr %26, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %25

117:                                              ; preds = %114, %109, %7, %5
  %118 = phi ptr [ null, %5 ], [ null, %7 ], [ null, %114 ], [ %26, %109 ]
  ret ptr %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_policy_byid(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7) #1 {
  store i32 -2, ptr %7, align 4
  %9 = and i32 %5, 7
  %10 = icmp eq i32 %9, %4
  br i1 %10, label %11, label %120

11:                                               ; preds = %8
  store i32 0, ptr %7, align 4
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #24
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 9
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %5, 8
  %18 = xor i32 %17, %5
  %19 = and i32 %16, %18
  %20 = getelementptr %struct.hlist_head, ptr %14, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -8
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %114, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.xfrm_mark, ptr %1, i32 0, i32 1
  br label %28

28:                                               ; preds = %107, %26
  %29 = phi ptr [ %23, %26 ], [ %111, %107 ]
  %30 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 18
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, %3
  br i1 %32, label %33, label %107

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 9
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %107

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %107

41:                                               ; preds = %37
  %42 = load i32, ptr %1, align 4
  %43 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 11
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %41
  %47 = load i32, ptr %27, align 4
  %48 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 11, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #24, !srcloc !14
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #24, !srcloc !15
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56, !prof !9

56:                                               ; preds = %51
  %57 = add i32 %54, 1
  %58 = or i32 %57, %54
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %62, label %60, !prof !12

60:                                               ; preds = %56, %51
  %61 = phi i32 [ 2, %51 ], [ 1, %56 ]
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef %61) #24
  br label %62

62:                                               ; preds = %60, %56
  %63 = icmp eq i32 %6, 0
  br i1 %63, label %114, label %64

64:                                               ; preds = %62
  store i32 0, ptr %7, align 4
  %65 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 15
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %114, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %99, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  store volatile ptr %74, ptr %70, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  store volatile ptr %70, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %72
  store volatile ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  %79 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 25
  %80 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 25, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %79, align 4
  store volatile ptr %84, ptr %81, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  store volatile ptr %81, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %83
  store ptr null, ptr %79, align 4
  store ptr null, ptr %80, align 4
  br label %89

89:                                               ; preds = %88, %78
  %90 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 2, i32 1
  %93 = load ptr, ptr %92, align 4
  store volatile ptr %91, ptr %93, align 4
  %94 = icmp eq ptr %91, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.hlist_node, ptr %91, i32 0, i32 1
  store volatile ptr %93, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %89
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %92, align 4
  %98 = load ptr, ptr %65, align 4
  br label %99

99:                                               ; preds = %97, %68
  %100 = phi ptr [ %98, %97 ], [ %66, %68 ]
  %101 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 15, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  store volatile ptr %100, ptr %102, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %101, align 4
  %104 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %4
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, -1
  store i32 %106, ptr %104, align 4
  br label %114

107:                                              ; preds = %46, %41, %37, %33, %28
  %108 = getelementptr inbounds %struct.xfrm_policy, ptr %29, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  %111 = getelementptr i8, ptr %109, i32 -8
  %112 = icmp eq ptr %111, null
  %113 = or i1 %110, %112
  br i1 %113, label %114, label %28

114:                                              ; preds = %107, %99, %64, %62, %11
  %115 = phi ptr [ %29, %99 ], [ %29, %64 ], [ %29, %62 ], [ null, %11 ], [ null, %107 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #24
  %116 = icmp ne ptr %115, null
  %117 = icmp ne i32 %6, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  tail call fastcc void @xfrm_policy_kill(ptr noundef nonnull %115)
  br label %120

120:                                              ; preds = %119, %114, %8
  %121 = phi ptr [ null, %8 ], [ %115, %119 ], [ %115, %114 ]
  ret ptr %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_policy_flush(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #24
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %86, label %8

8:                                                ; preds = %67, %3
  %9 = phi ptr [ %69, %67 ], [ %6, %3 ]
  %10 = phi i32 [ %68, %67 ], [ 0, %3 ]
  br label %11

11:                                               ; preds = %71, %8
  %12 = phi ptr [ %9, %8 ], [ %72, %71 ]
  %13 = getelementptr i8, ptr %12, i32 -168
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 7
  %16 = getelementptr inbounds %struct.xfrm_policy_walk_entry, ptr %12, i32 0, i32 1
  %17 = load i8, ptr %16, align 8
  %18 = icmp ne i8 %17, 0
  %19 = icmp ugt i32 %15, 2
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %71, label %21

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %12, i32 53
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, %1
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %12, i32 -224
  %27 = load volatile ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, %12
  br i1 %28, label %67, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %12, i32 -220
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %26, align 4
  store volatile ptr %34, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  store volatile ptr %31, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  store volatile ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %39 = getelementptr i8, ptr %12, i32 448
  %40 = getelementptr i8, ptr %12, i32 452
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %39, align 4
  store volatile ptr %44, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  store volatile ptr %41, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %43
  store ptr null, ptr %39, align 4
  store ptr null, ptr %40, align 4
  br label %49

49:                                               ; preds = %48, %38
  %50 = getelementptr i8, ptr %12, i32 -216
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %12, i32 -212
  %53 = load ptr, ptr %52, align 4
  store volatile ptr %51, ptr %53, align 4
  %54 = icmp eq ptr %51, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  store volatile ptr %53, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %49
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %58 = load ptr, ptr %12, align 4
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi ptr [ %58, %57 ], [ %27, %29 ]
  %61 = getelementptr i8, ptr %12, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %60, ptr %62, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %61, align 4
  %64 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %15
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %59, %25
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #24
  %68 = add i32 %10, 1
  tail call fastcc void @xfrm_policy_kill(ptr noundef %26)
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #24
  %69 = load ptr, ptr %5, align 8
  %70 = icmp eq ptr %69, %5
  br i1 %70, label %74, label %8

71:                                               ; preds = %21, %11
  %72 = load ptr, ptr %12, align 8
  %73 = icmp eq ptr %72, %5
  br i1 %73, label %74, label %11

74:                                               ; preds = %71, %67
  %75 = phi i32 [ %10, %71 ], [ %68, %67 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 16
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %86, label %81

81:                                               ; preds = %81, %77
  %82 = phi ptr [ %84, %81 ], [ %79, %77 ]
  %83 = getelementptr i8, ptr %82, i32 -28
  %84 = load ptr, ptr %82, align 4
  tail call fastcc void @__xfrm_policy_inexact_prune_bin(ptr noundef %83, i1 noundef zeroext false) #24
  %85 = icmp eq ptr %84, %78
  br i1 %85, label %86, label %81

86:                                               ; preds = %81, %77, %74, %3
  %87 = phi i32 [ -3, %74 ], [ 0, %77 ], [ -3, %3 ], [ 0, %81 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #24
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_policy_walk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.xfrm_policy_walk, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %68 [
    i8 -1, label %7
    i8 1, label %7
    i8 0, label %7
  ]

7:                                                ; preds = %4, %4, %4
  %8 = load volatile ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.xfrm_policy_walk, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %10, %7
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %15) #24
  %16 = load volatile ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 8
  %19 = select i1 %17, ptr %18, ptr %1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %18
  br i1 %21, label %57, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.xfrm_policy_walk, ptr %1, i32 0, i32 2
  br label %24

24:                                               ; preds = %54, %22
  %25 = phi ptr [ %20, %22 ], [ %55, %54 ]
  %26 = getelementptr inbounds %struct.xfrm_policy_walk_entry, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %25, i32 -224
  %31 = load i8, ptr %5, align 4
  %32 = icmp eq i8 %31, -1
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %25, i32 53
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %31, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33, %29
  %38 = getelementptr i8, ptr %25, i32 -168
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 7
  %41 = load i32, ptr %23, align 4
  %42 = tail call i32 %2(ptr noundef %30, i32 noundef %40, i32 noundef %41, ptr noundef %3) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %1, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %1, ptr %49, align 4
  store ptr %25, ptr %1, align 4
  store ptr %50, ptr %45, align 4
  store volatile ptr %1, ptr %50, align 4
  br label %66

51:                                               ; preds = %37
  %52 = load i32, ptr %23, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %23, align 4
  br label %54

54:                                               ; preds = %51, %33, %24
  %55 = load ptr, ptr %25, align 4
  %56 = icmp eq ptr %55, %18
  br i1 %56, label %57, label %24

57:                                               ; preds = %54, %14
  %58 = getelementptr inbounds %struct.xfrm_policy_walk, ptr %1, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %1, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %62, align 4
  br label %66

66:                                               ; preds = %61, %57, %44
  %67 = phi i32 [ %42, %44 ], [ 0, %61 ], [ -2, %57 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %15) #24
  br label %68

68:                                               ; preds = %66, %10, %4
  %69 = phi i32 [ %67, %66 ], [ -22, %4 ], [ 0, %10 ]
  ret i32 %69
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_policy_walk_init(ptr noundef %0, i8 noundef zeroext %1) #9 {
  store volatile ptr %0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.xfrm_policy_walk_entry, ptr %0, i32 0, i32 1
  store i8 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xfrm_policy_walk, ptr %0, i32 0, i32 1
  store i8 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xfrm_policy_walk, ptr %0, i32 0, i32 2
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_policy_walk_done(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #24
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #24
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_policy_delete(ptr noundef %0, i32 noundef %1) #1 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  %3 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 15
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  br label %48

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store volatile ptr %13, ptr %9, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %9, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %11
  store volatile ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %18 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 25
  %19 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 25, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  store volatile ptr %23, ptr %20, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  store volatile ptr %20, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  store ptr null, ptr %18, align 4
  store ptr null, ptr %19, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 4
  store volatile ptr %30, ptr %32, align 4
  %33 = icmp eq ptr %30, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  store volatile ptr %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %28
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %37 = load ptr, ptr %3, align 4
  br label %38

38:                                               ; preds = %36, %7
  %39 = phi ptr [ %37, %36 ], [ %4, %7 ]
  %40 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 15, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %39, ptr %41, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %40, align 4
  %43 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  store i32 %45, ptr %43, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  %46 = icmp eq ptr %0, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  tail call fastcc void @xfrm_policy_kill(ptr noundef nonnull %0)
  br label %48

48:                                               ; preds = %47, %38, %6
  %49 = phi i32 [ 0, %47 ], [ -2, %38 ], [ -2, %6 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_sk_policy_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  %4 = getelementptr %struct.sock, ptr %0, i32 0, i32 18, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @ktime_get_real_seconds() #24
  %9 = getelementptr inbounds %struct.xfrm_policy, ptr %2, i32 0, i32 14, i32 2
  store i64 %8, ptr %9, align 8
  %10 = add i32 %1, 3
  %11 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 9), align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 10), align 4
  %13 = load i32, ptr @xfrm_gen_index.idx_generator, align 4
  %14 = or i32 %13, %10
  %15 = add i32 %13, 8
  %16 = icmp eq i32 %14, 0
  %17 = select i1 %16, i32 8, i32 %14
  %18 = lshr i32 %17, 8
  %19 = xor i32 %18, %17
  %20 = and i32 %19, %12
  %21 = getelementptr %struct.hlist_head, ptr %11, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -8
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %57, label %41

27:                                               ; preds = %45
  %28 = or i32 %44, %10
  %29 = add i32 %44, 8
  %30 = icmp eq i32 %28, 0
  %31 = select i1 %30, i32 8, i32 %28
  %32 = lshr i32 %31, 8
  %33 = xor i32 %32, %31
  %34 = and i32 %33, %12
  %35 = getelementptr %struct.hlist_head, ptr %11, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -8
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %27, %7
  %42 = phi ptr [ %38, %27 ], [ %24, %7 ]
  %43 = phi i32 [ %31, %27 ], [ %17, %7 ]
  %44 = phi i32 [ %29, %27 ], [ %15, %7 ]
  br label %45

45:                                               ; preds = %50, %41
  %46 = phi ptr [ %54, %50 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.xfrm_policy, ptr %46, i32 0, i32 9
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, %43
  br i1 %49, label %27, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.xfrm_policy, ptr %46, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  %54 = getelementptr i8, ptr %52, i32 -8
  %55 = icmp eq ptr %54, null
  %56 = or i1 %53, %55
  br i1 %56, label %57, label %45

57:                                               ; preds = %50, %27, %7
  %58 = phi i32 [ %15, %7 ], [ %44, %50 ], [ %29, %27 ]
  %59 = phi i32 [ %17, %7 ], [ %43, %50 ], [ %31, %27 ]
  store i32 %58, ptr @xfrm_gen_index.idx_generator, align 4
  %60 = getelementptr inbounds %struct.xfrm_policy, ptr %2, i32 0, i32 9
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.xfrm_policy, ptr %2, i32 0, i32 15
  %62 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), align 16
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store ptr %62, ptr %61, align 4
  %64 = getelementptr inbounds %struct.xfrm_policy, ptr %2, i32 0, i32 15, i32 0, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), ptr %64, align 4
  store volatile ptr %61, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), align 16
  %65 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %10
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.xfrm_policy, ptr %2, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #24, !srcloc !14
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #24, !srcloc !15
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !9

72:                                               ; preds = %57
  %73 = add i32 %70, 1
  %74 = or i32 %73, %70
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %78, label %76, !prof !12

76:                                               ; preds = %72, %57
  %77 = phi i32 [ 2, %57 ], [ 1, %72 ]
  tail call void @refcount_warn_saturate(ptr noundef %68, i32 noundef %77) #24
  br label %78

78:                                               ; preds = %76, %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  store volatile ptr %2, ptr %4, align 4
  %79 = icmp eq ptr %5, null
  br i1 %79, label %130, label %84

80:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  store volatile ptr null, ptr %4, align 4
  %81 = icmp eq ptr %5, null
  br i1 %81, label %130, label %82

82:                                               ; preds = %80
  %83 = add i32 %1, 3
  br label %85

84:                                               ; preds = %78
  tail call fastcc void @xfrm_policy_requeue(ptr noundef nonnull %5, ptr noundef nonnull %2)
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ %10, %84 ]
  %87 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 15
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %129, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 1, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %121, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  store volatile ptr %96, ptr %92, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.hlist_node, ptr %96, i32 0, i32 1
  store volatile ptr %92, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %94
  store volatile ptr inttoptr (i32 290 to ptr), ptr %91, align 4
  %101 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 25
  %102 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 25, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %101, align 4
  store volatile ptr %106, ptr %103, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.hlist_node, ptr %106, i32 0, i32 1
  store volatile ptr %103, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %105
  store ptr null, ptr %101, align 4
  store ptr null, ptr %102, align 4
  br label %111

111:                                              ; preds = %110, %100
  %112 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 2, i32 1
  %115 = load ptr, ptr %114, align 4
  store volatile ptr %113, ptr %115, align 4
  %116 = icmp eq ptr %113, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.hlist_node, ptr %113, i32 0, i32 1
  store volatile ptr %115, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %111
  store ptr inttoptr (i32 256 to ptr), ptr %112, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %114, align 4
  %120 = load ptr, ptr %87, align 4
  br label %121

121:                                              ; preds = %119, %90
  %122 = phi ptr [ %120, %119 ], [ %88, %90 ]
  %123 = getelementptr inbounds %struct.xfrm_policy, ptr %5, i32 0, i32 15, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %124, ptr %125, align 4
  store volatile ptr %122, ptr %124, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %123, align 4
  %126 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %86
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %126, align 4
  br label %129

129:                                              ; preds = %121, %85
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  tail call fastcc void @xfrm_policy_kill(ptr noundef nonnull %5)
  br label %131

130:                                              ; preds = %80, %78
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  br label %131

131:                                              ; preds = %130, %129
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xfrm_sk_clone_policy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  br label %3

3:                                                ; preds = %98, %2
  %4 = phi i1 [ true, %2 ], [ false, %98 ]
  %5 = phi i32 [ 0, %2 ], [ 1, %98 ]
  %6 = getelementptr %struct.sock, ptr %1, i32 0, i32 18, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 688) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %99, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 15
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 15, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 25
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 25, i32 1
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 1
  %19 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %18, i8 0, i64 20, i1 false) #24
  store volatile i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 16
  %21 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 16, i32 0, i32 2
  store i32 0, ptr %21, align 8
  store ptr %20, ptr %20, align 4
  %22 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 16, i32 0, i32 0, i32 0, i32 1
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 16, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @xfrm_policy_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #24
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %25, ptr noundef nonnull @xfrm_policy_queue_process, i32 noundef 0, ptr noundef null, ptr noundef null) #24
  %26 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 12
  %27 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %26, ptr noundef align 8 dereferenceable(56) %27, i32 56, i1 false) #24
  %28 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 13
  %29 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %28, ptr noundef align 8 dereferenceable(64) %29, i32 64, i1 false) #24
  %30 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 14
  %31 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %30, ptr noundef align 8 dereferenceable(32) %31, i32 32, i1 false) #24
  %32 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 11
  %33 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 11
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 10
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 19
  %39 = load i8, ptr %38, align 2
  %40 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 19
  store i8 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 20
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 20
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 21
  %45 = load i8, ptr %44, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 21
  store i8 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 9
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 9
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 18
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 18
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 22
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 22
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 24
  %57 = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 24
  %58 = zext i8 %45 to i32
  %59 = shl nuw nsw i32 %58, 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %56, ptr align 8 %57, i32 %59, i1 false) #24
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  %60 = add nuw nsw i32 %5, 3
  %61 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), align 16
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %14, ptr %62, align 4
  store ptr %61, ptr %14, align 8
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), ptr %15, align 4
  store volatile ptr %14, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8), align 16
  %63 = getelementptr %struct.net, ptr @init_net, i32 0, i32 40, i32 13, i32 %60
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #24, !srcloc !14
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #24, !srcloc !15
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !9

69:                                               ; preds = %13
  %70 = add i32 %67, 1
  %71 = or i32 %70, %67
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %75, label %73, !prof !12

73:                                               ; preds = %69, %13
  %74 = phi i32 [ 2, %13 ], [ 1, %69 ]
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %74) #24
  br label %75

75:                                               ; preds = %73, %69
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 31)) #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #24, !srcloc !14
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #24, !srcloc !22
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %96, label %81, !prof !12

81:                                               ; preds = %79
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #24
  br label %96

82:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %83 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 15, i32 1
  %84 = load i8, ptr %83, align 8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87, !prof !9

86:                                               ; preds = %82
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

87:                                               ; preds = %82
  %88 = tail call i32 @del_timer(ptr noundef %24) #24
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = tail call i32 @del_timer(ptr noundef %25) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.xfrm_policy, ptr %11, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %95, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %96

96:                                               ; preds = %94, %81, %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !36
  %97 = getelementptr %struct.sock, ptr %0, i32 0, i32 18, i32 %5
  store volatile ptr %11, ptr %97, align 4
  br label %98

98:                                               ; preds = %96, %3
  br i1 %4, label %3, label %99

99:                                               ; preds = %98, %9
  %100 = phi i32 [ 0, %98 ], [ -12, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_lookup_with_ifid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca [2 x ptr], align 8
  %8 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  store i64 0, ptr %8, align 8, !annotation !26
  %9 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %10, align 64
  %12 = icmp eq ptr %3, null
  br i1 %12, label %75, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 12
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %75, label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %19, %17 ], [ %3, %13 ]
  %23 = getelementptr %struct.sock, ptr %22, i32 0, i32 18, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @xfrm_sk_policy_lookup(ptr noundef nonnull %22, i32 noundef 1, ptr noundef %2, i16 noundef zeroext %11, i32 noundef %5)
  store ptr %27, ptr %8, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %75, label %29

29:                                               ; preds = %26
  %30 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 21
  %33 = load i8, ptr %32, align 8
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 19
  %36 = load i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %355

38:                                               ; preds = %31
  %39 = icmp eq i8 %33, 0
  br i1 %39, label %355, label %43

40:                                               ; preds = %29
  %41 = ptrtoint ptr %27 to i32
  %42 = icmp slt ptr %27, null
  br i1 %42, label %446, label %355

43:                                               ; preds = %38
  %44 = call fastcc ptr @xfrm_resolve_and_create_bundle(ptr noundef nonnull %8, i32 noundef 1, ptr noundef %2, i16 noundef zeroext %11, ptr noundef %1)
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #24, !srcloc !14
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #24, !srcloc !22
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %70, label %53, !prof !12

53:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 3) #24
  br label %70

54:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %55 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 15, i32 1
  %56 = load i8, ptr %55, align 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 6
  %61 = tail call i32 @del_timer(ptr noundef %60) #24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 16, i32 1
  %65 = tail call i32 @del_timer(ptr noundef %64) #24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.xfrm_policy, ptr %27, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %69, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %70

70:                                               ; preds = %68, %53, %51
  %71 = ptrtoint ptr %44 to i32
  %72 = icmp eq ptr %44, inttoptr (i32 -66 to ptr)
  br i1 %72, label %427, label %446

73:                                               ; preds = %43
  %74 = icmp eq ptr %44, null
  br i1 %74, label %355, label %343

75:                                               ; preds = %26, %21, %17, %6
  %76 = icmp eq i32 %5, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 7
  %79 = load i16, ptr %78, align 4
  %80 = and i16 %79, 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %427

82:                                               ; preds = %77
  %83 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %427, label %86

86:                                               ; preds = %82, %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  store i64 0, ptr %7, align 8, !annotation !26
  %87 = tail call fastcc ptr @xfrm_policy_lookup(ptr noundef %0, ptr noundef %2, i16 noundef zeroext %11, i8 noundef zeroext 1, i32 noundef %5) #24
  store ptr %87, ptr %7, align 8
  %88 = icmp eq ptr %87, null
  %89 = ptrtoint ptr %87 to i32
  br i1 %88, label %322, label %90

90:                                               ; preds = %86
  %91 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %101, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 21
  %94 = load i8, ptr %93, align 8
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 19
  %97 = load i8, ptr %96, align 2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %135

99:                                               ; preds = %92
  %100 = icmp eq i8 %94, 0
  br i1 %100, label %135, label %103

101:                                              ; preds = %90
  %102 = icmp slt ptr %87, null
  br i1 %102, label %295, label %135

103:                                              ; preds = %99
  %104 = call fastcc ptr @xfrm_resolve_and_create_bundle(ptr noundef nonnull %7, i32 noundef 1, ptr noundef %2, i16 noundef zeroext %11, ptr noundef %1) #24
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = ptrtoint ptr %104 to i32
  switch i32 %107, label %295 [
    i32 -66, label %108
    i32 -11, label %135
  ]

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #24, !srcloc !14
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #24, !srcloc !22
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %322, label %115, !prof !12

115:                                              ; preds = %113
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #24
  br label %322

116:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %117 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 15, i32 1
  %118 = load i8, ptr %117, align 8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %121, !prof !9

120:                                              ; preds = %116
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 6
  %123 = tail call i32 @del_timer(ptr noundef %122) #24
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 16, i32 1
  %127 = tail call i32 @del_timer(ptr noundef %126) #24
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125, %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %131, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %322

132:                                              ; preds = %103
  %133 = icmp eq ptr %104, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %326

135:                                              ; preds = %132, %106, %101, %99, %92
  %136 = phi i32 [ 0, %99 ], [ %95, %106 ], [ 0, %132 ], [ 0, %101 ], [ -1, %92 ]
  %137 = icmp ugt i16 %11, 10
  br i1 %137, label %266, label %138, !prof !9

138:                                              ; preds = %135
  %139 = zext i16 %11 to i32
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %140 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %139
  %141 = load volatile ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144, !prof !9

143:                                              ; preds = %138
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %266

144:                                              ; preds = %138
  switch i16 %11, label %149 [
    i16 2, label %145
    i16 10, label %147
  ]

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 26
  br label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 27
  br label %150

149:                                              ; preds = %144
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2486, 0\0A.popsection", ""() #24, !srcloc !37
  unreachable

150:                                              ; preds = %147, %145
  %151 = phi ptr [ %148, %147 ], [ %146, %145 ]
  %152 = tail call ptr @dst_alloc(ptr noundef %151, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #24
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155, !prof !9

154:                                              ; preds = %150
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %266

155:                                              ; preds = %150
  %156 = getelementptr i8, ptr %152, i32 68
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(140) %156, i8 0, i32 140, i1 false) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %157 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  %158 = and i32 %4, 2
  %159 = icmp eq i32 %158, 0
  %160 = or i1 %159, %157
  br i1 %160, label %263, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 21
  %163 = load i32, ptr %162, align 4
  %164 = icmp ne i32 %163, 0
  %165 = icmp slt i32 %136, 1
  %166 = or i1 %165, %164
  br i1 %166, label %263, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #24, !srcloc !14
  %169 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 0, i32 1, ptr elementtype(i32) %168) #24, !srcloc !30
  %170 = extractvalue { i32, i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %174

173:                                              ; preds = %167
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef null) #24
  br label %174

174:                                              ; preds = %173, %172
  %175 = getelementptr inbounds %struct.xfrm_dst, ptr %152, i32 0, i32 1
  store ptr %1, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180, !prof !9

179:                                              ; preds = %174
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #24, !srcloc !38
  unreachable

180:                                              ; preds = %174
  %181 = and i32 %177, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.dst_ops, ptr %185, i32 0, i32 6
  %187 = load ptr, ptr %186, align 8
  %188 = tail call ptr %187(ptr noundef nonnull %152, i32 noundef %177) #24
  br label %192

189:                                              ; preds = %180
  %190 = and i32 %177, -4
  %191 = inttoptr i32 %190 to ptr
  br label %192

192:                                              ; preds = %189, %183
  %193 = phi ptr [ %188, %183 ], [ %191, %189 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, -4
  %199 = inttoptr i32 %198 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %193, ptr noundef align 4 dereferenceable(68) %199, i32 68, i1 false) #24
  br label %200

200:                                              ; preds = %195, %192
  %201 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 8
  store i16 -1, ptr %201, align 2
  %202 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 7
  %203 = load i16, ptr %202, align 4
  %204 = or i16 %203, 64
  store i16 %204, ptr %202, align 4
  %205 = load volatile i32, ptr @jiffies, align 64
  %206 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 12
  store i32 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 5
  store ptr @dst_discard, ptr %207, align 4
  %208 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 6
  store ptr @xdst_queue_output, ptr %208, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #24, !srcloc !14
  %209 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 0, i32 1, ptr elementtype(i32) %168) #24, !srcloc !30
  %210 = extractvalue { i32, i32, i32 } %209, 0
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %200
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %214

213:                                              ; preds = %200
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef null) #24
  br label %214

214:                                              ; preds = %213, %212
  %215 = getelementptr inbounds %struct.xfrm_dst, ptr %152, i32 0, i32 2
  store ptr %1, ptr %215, align 4
  %216 = getelementptr inbounds %struct.xfrm_dst, ptr %152, i32 0, i32 3
  store ptr %1, ptr %216, align 4
  %217 = load ptr, ptr %9, align 4
  %218 = load i16, ptr %217, align 64
  %219 = icmp eq i16 %218, 10
  br i1 %219, label %220, label %241

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %225 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 1
  %226 = load volatile ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.fib6_info, ptr %226, i32 0, i32 2
  %230 = load volatile ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.fib6_node, ptr %230, i32 0, i32 6
  %234 = load volatile i32, ptr %233, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !39
  br label %235

235:                                              ; preds = %232, %228, %224
  %236 = phi i32 [ 0, %224 ], [ 0, %228 ], [ %234, %232 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %237

237:                                              ; preds = %235, %220
  %238 = phi i32 [ %236, %235 ], [ %222, %220 ]
  %239 = getelementptr inbounds %struct.xfrm_dst, ptr %152, i32 0, i32 12
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.rt6_info, ptr %152, i32 0, i32 10
  store i16 0, ptr %240, align 4
  br label %241

241:                                              ; preds = %237, %214
  %242 = load ptr, ptr %1, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %260, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.dst_entry, ptr %152, i32 0, i32 1
  %246 = load ptr, ptr %245, align 4
  %247 = load i16, ptr %246, align 64
  %248 = icmp ugt i16 %247, 10
  br i1 %248, label %260, label %249, !prof !9

249:                                              ; preds = %244
  %250 = zext i16 %247 to i32
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %251 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %250
  %252 = load volatile ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %255, !prof !9

254:                                              ; preds = %249
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %260

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.xfrm_policy_afinfo, ptr %252, i32 0, i32 3
  %257 = load ptr, ptr %256, align 4
  %258 = tail call i32 %257(ptr noundef nonnull %152, ptr noundef nonnull %242, ptr noundef %2) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %255, %254, %244, %241
  %261 = phi i32 [ %258, %255 ], [ -19, %241 ], [ -22, %244 ], [ -22, %254 ]
  tail call void @dst_release(ptr noundef nonnull %152) #24
  %262 = inttoptr i32 %261 to ptr
  br label %263

263:                                              ; preds = %260, %255, %161, %155
  %264 = phi ptr [ %152, %155 ], [ %152, %161 ], [ %262, %260 ], [ %152, %255 ]
  %265 = icmp ugt ptr %264, inttoptr (i32 -4096 to ptr)
  br i1 %265, label %266, label %291

266:                                              ; preds = %263, %154, %143, %135
  %267 = phi ptr [ %264, %263 ], [ inttoptr (i32 -22 to ptr), %143 ], [ inttoptr (i32 -22 to ptr), %135 ], [ inttoptr (i32 -105 to ptr), %154 ]
  %268 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %268) #24, !srcloc !14
  %269 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %268, ptr %268, i32 1, ptr elementtype(i32) %268) #24, !srcloc !22
  %270 = extractvalue { i32, i32, i32 } %269, 0
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %275, label %272

272:                                              ; preds = %266
  %273 = icmp sgt i32 %270, 0
  br i1 %273, label %323, label %274, !prof !12

274:                                              ; preds = %272
  tail call void @refcount_warn_saturate(ptr noundef %268, i32 noundef 3) #24
  br label %323

275:                                              ; preds = %266
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %276 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 15, i32 1
  %277 = load i8, ptr %276, align 8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %280, !prof !9

279:                                              ; preds = %275
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 6
  %282 = tail call i32 @del_timer(ptr noundef %281) #24
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 16, i32 1
  %286 = tail call i32 @del_timer(ptr noundef %285) #24
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %284, %280
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %290, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %323

291:                                              ; preds = %263
  %292 = getelementptr inbounds %struct.xfrm_dst, ptr %264, i32 0, i32 5
  store i32 1, ptr %292, align 4
  %293 = getelementptr inbounds %struct.xfrm_dst, ptr %264, i32 0, i32 6
  store i32 %136, ptr %293, align 4
  %294 = getelementptr inbounds %struct.xfrm_dst, ptr %264, i32 0, i32 4
  store i32 %89, ptr %294, align 4
  br label %323

295:                                              ; preds = %106, %101
  %296 = phi i32 [ %107, %106 ], [ %89, %101 ]
  %297 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %297) #24, !srcloc !14
  %298 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %297, ptr %297, i32 1, ptr elementtype(i32) %297) #24, !srcloc !22
  %299 = extractvalue { i32, i32, i32 } %298, 0
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %304, label %301

301:                                              ; preds = %295
  %302 = icmp sgt i32 %299, 0
  br i1 %302, label %320, label %303, !prof !12

303:                                              ; preds = %301
  tail call void @refcount_warn_saturate(ptr noundef %297, i32 noundef 3) #24
  br label %320

304:                                              ; preds = %295
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %305 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 15, i32 1
  %306 = load i8, ptr %305, align 8
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %309, !prof !9

308:                                              ; preds = %304
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 6
  %311 = tail call i32 @del_timer(ptr noundef %310) #24
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 16, i32 1
  %315 = tail call i32 @del_timer(ptr noundef %314) #24
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313, %309
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.xfrm_policy, ptr %87, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %319, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %320

320:                                              ; preds = %318, %303, %301
  %321 = inttoptr i32 %296 to ptr
  br label %323

322:                                              ; preds = %130, %115, %113, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %427

323:                                              ; preds = %320, %291, %289, %274, %272
  %324 = phi ptr [ %321, %320 ], [ %264, %291 ], [ %267, %289 ], [ %267, %274 ], [ %267, %272 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  %325 = icmp eq ptr %324, null
  br i1 %325, label %427, label %326

326:                                              ; preds = %323, %134
  %327 = phi ptr [ %104, %134 ], [ %324, %323 ]
  %328 = icmp ugt ptr %327, inttoptr (i32 -4096 to ptr)
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = ptrtoint ptr %327 to i32
  br label %446

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.xfrm_dst, ptr %327, i32 0, i32 5
  %333 = load i32, ptr %332, align 4
  %334 = getelementptr inbounds %struct.xfrm_dst, ptr %327, i32 0, i32 6
  %335 = load i32, ptr %334, align 4
  %336 = getelementptr inbounds %struct.xfrm_dst, ptr %327, i32 0, i32 4
  %337 = shl i32 %333, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %8, ptr align 4 %336, i32 %337, i1 false)
  %338 = getelementptr inbounds %struct.xfrm_dst, ptr %327, i32 0, i32 1
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  %341 = icmp sgt i32 %335, 0
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %342, label %347, label %353

343:                                              ; preds = %73
  %344 = getelementptr inbounds %struct.xfrm_dst, ptr %44, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %355

347:                                              ; preds = %343, %331
  %348 = phi ptr [ %44, %343 ], [ %327, %331 ]
  %349 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 21
  %350 = load i32, ptr %349, align 4
  %351 = icmp eq i32 %350, 0
  %352 = select i1 %351, i32 -11, i32 -66
  br label %442

353:                                              ; preds = %331
  %354 = icmp eq i32 %333, 0
  br i1 %354, label %427, label %355

355:                                              ; preds = %353, %343, %73, %40, %38, %31
  %356 = phi i1 [ true, %40 ], [ true, %73 ], [ true, %38 ], [ false, %353 ], [ true, %31 ], [ false, %343 ]
  %357 = phi i32 [ 1, %40 ], [ 1, %73 ], [ 1, %38 ], [ 0, %353 ], [ 1, %31 ], [ 0, %343 ]
  %358 = phi ptr [ null, %40 ], [ null, %73 ], [ null, %38 ], [ %327, %353 ], [ null, %31 ], [ %44, %343 ]
  %359 = phi i32 [ 1, %40 ], [ 1, %73 ], [ 1, %38 ], [ %333, %353 ], [ 1, %31 ], [ 1, %343 ]
  %360 = phi i32 [ 0, %40 ], [ 0, %73 ], [ 0, %38 ], [ %335, %353 ], [ -1, %31 ], [ %34, %343 ]
  %361 = and i32 %4, 1
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %369, label %363

363:                                              ; preds = %355
  %364 = load ptr, ptr %8, align 8
  %365 = getelementptr inbounds %struct.xfrm_policy, ptr %364, i32 0, i32 20
  %366 = load i8, ptr %365, align 1
  %367 = and i8 %366, 2
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %442, label %369

369:                                              ; preds = %363, %355
  %370 = icmp sgt i32 %359, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %371, %369
  %372 = phi i32 [ %377, %371 ], [ 0, %369 ]
  %373 = tail call i64 @ktime_get_real_seconds() #24
  %374 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %372
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.xfrm_policy, ptr %375, i32 0, i32 14, i32 3
  store i64 %373, ptr %376, align 8
  %377 = add nuw nsw i32 %372, 1
  %378 = icmp eq i32 %377, %359
  br i1 %378, label %379, label %371

379:                                              ; preds = %371, %369
  %380 = icmp slt i32 %360, 0
  br i1 %380, label %442, label %381

381:                                              ; preds = %379
  %382 = icmp eq i32 %360, 0
  %383 = select i1 %382, ptr %358, ptr %1
  %384 = select i1 %382, ptr %1, ptr %358
  tail call void @dst_release(ptr noundef %383) #24
  br i1 %356, label %385, label %412

385:                                              ; preds = %381
  %386 = add nsw i32 %357, -1
  %387 = getelementptr ptr, ptr %8, i32 %386
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr inbounds %struct.xfrm_policy, ptr %388, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %389) #24, !srcloc !14
  %390 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %389, ptr %389, i32 1, ptr elementtype(i32) %389) #24, !srcloc !22
  %391 = extractvalue { i32, i32, i32 } %390, 0
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %396, label %393

393:                                              ; preds = %385
  %394 = icmp sgt i32 %391, 0
  br i1 %394, label %412, label %395, !prof !12

395:                                              ; preds = %393
  tail call void @refcount_warn_saturate(ptr noundef %389, i32 noundef 3) #24
  br label %412

396:                                              ; preds = %385
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %397 = getelementptr inbounds %struct.xfrm_policy, ptr %388, i32 0, i32 15, i32 1
  %398 = load i8, ptr %397, align 8
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %401, !prof !9

400:                                              ; preds = %396
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.xfrm_policy, ptr %388, i32 0, i32 6
  %403 = tail call i32 @del_timer(ptr noundef %402) #24
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.xfrm_policy, ptr %388, i32 0, i32 16, i32 1
  %407 = tail call i32 @del_timer(ptr noundef %406) #24
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %405, %401
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.xfrm_policy, ptr %388, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %411, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %412

412:                                              ; preds = %439, %410, %395, %393, %381
  %413 = phi ptr [ %384, %381 ], [ %1, %439 ], [ %384, %410 ], [ %384, %395 ], [ %384, %393 ]
  %414 = icmp eq ptr %413, null
  br i1 %414, label %483, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct.dst_entry, ptr %413, i32 0, i32 4
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %483, label %419

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.xfrm_state, ptr %417, i32 0, i32 14, i32 1
  %421 = load i8, ptr %420, align 4
  %422 = icmp eq i8 %421, 1
  br i1 %422, label %423, label %483

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.dst_entry, ptr %413, i32 0, i32 7
  %425 = load i16, ptr %424, align 4
  %426 = or i16 %425, 32
  store i16 %426, ptr %424, align 4
  br label %483

427:                                              ; preds = %353, %323, %322, %82, %77, %70
  %428 = phi ptr [ %327, %353 ], [ null, %70 ], [ null, %82 ], [ null, %77 ], [ null, %323 ], [ null, %322 ]
  %429 = load ptr, ptr %1, align 4
  %430 = getelementptr inbounds %struct.net_device, ptr %429, i32 0, i32 14
  %431 = load i32, ptr %430, align 8
  %432 = and i32 %431, 8
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %427
  %435 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 23
  %436 = load i8, ptr %435, align 4
  %437 = and i8 %436, 2
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %434, %427
  %440 = and i32 %4, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %412, label %442

442:                                              ; preds = %439, %434, %379, %363, %347
  %443 = phi ptr [ %348, %347 ], [ %358, %363 ], [ %358, %379 ], [ %428, %434 ], [ %428, %439 ]
  %444 = phi i32 [ %352, %347 ], [ -2, %363 ], [ -1, %379 ], [ -1, %434 ], [ -2, %439 ]
  %445 = phi i32 [ 0, %347 ], [ %357, %363 ], [ %357, %379 ], [ 0, %434 ], [ 0, %439 ]
  tail call void @dst_release(ptr noundef %443) #24
  br label %446

446:                                              ; preds = %442, %329, %70, %40
  %447 = phi i32 [ %41, %40 ], [ %444, %442 ], [ %71, %70 ], [ %330, %329 ]
  %448 = phi i32 [ 0, %40 ], [ %445, %442 ], [ 0, %70 ], [ 0, %329 ]
  %449 = and i32 %4, 4
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %446
  tail call void @dst_release(ptr noundef %1) #24
  br label %452

452:                                              ; preds = %451, %446
  %453 = add i32 %448, -1
  %454 = icmp sgt i32 %453, -1
  br i1 %454, label %455, label %481

455:                                              ; preds = %452
  %456 = getelementptr ptr, ptr %8, i32 %453
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr inbounds %struct.xfrm_policy, ptr %457, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %458) #24, !srcloc !14
  %459 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %458, ptr %458, i32 1, ptr elementtype(i32) %458) #24, !srcloc !22
  %460 = extractvalue { i32, i32, i32 } %459, 0
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %465, label %462

462:                                              ; preds = %455
  %463 = icmp sgt i32 %460, 0
  br i1 %463, label %481, label %464, !prof !12

464:                                              ; preds = %462
  tail call void @refcount_warn_saturate(ptr noundef %458, i32 noundef 3) #24
  br label %481

465:                                              ; preds = %455
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %466 = getelementptr inbounds %struct.xfrm_policy, ptr %457, i32 0, i32 15, i32 1
  %467 = load i8, ptr %466, align 8
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %470, !prof !9

469:                                              ; preds = %465
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.xfrm_policy, ptr %457, i32 0, i32 6
  %472 = tail call i32 @del_timer(ptr noundef %471) #24
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.xfrm_policy, ptr %457, i32 0, i32 16, i32 1
  %476 = tail call i32 @del_timer(ptr noundef %475) #24
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %479, label %478

478:                                              ; preds = %474, %470
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

479:                                              ; preds = %474
  %480 = getelementptr inbounds %struct.xfrm_policy, ptr %457, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %480, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %481

481:                                              ; preds = %479, %464, %462, %452
  %482 = inttoptr i32 %447 to ptr
  br label %483

483:                                              ; preds = %481, %423, %419, %415, %412
  %484 = phi ptr [ %482, %481 ], [ %413, %423 ], [ %413, %419 ], [ %413, %415 ], [ null, %412 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  ret ptr %484
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_sk_policy_lookup(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %7 = getelementptr %struct.sock, ptr %0, i32 0, i32 18, i32 %1
  br label %8

8:                                                ; preds = %52, %5
  %9 = load volatile ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 22
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, %3
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 12
  %17 = tail call zeroext i1 @xfrm_selector_match(ptr noundef %16, ptr noundef %2, i16 noundef zeroext %3)
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 11
  %21 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 11, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %19
  %24 = load i32, ptr %20, align 8
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %4
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 4
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %44, %30
  %35 = phi i32 [ %42, %44 ], [ %32, %30 ]
  %36 = add i32 %35, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #24, !srcloc !14
  br label %37

37:                                               ; preds = %37, %34
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 %35, i32 %36, ptr elementtype(i32) %31) #24, !srcloc !40
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37
  %42 = extractvalue { i32, i32 } %38, 1
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %46, label %44, !prof !12

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %34

46:                                               ; preds = %44, %41, %30
  %47 = phi i32 [ 0, %30 ], [ %35, %41 ], [ 0, %44 ]
  %48 = add i32 %47, 1
  %49 = or i32 %48, %47
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %52, label %51, !prof !12

51:                                               ; preds = %46
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 0) #24
  br label %52

52:                                               ; preds = %51, %46
  %53 = icmp eq i32 %47, 0
  br i1 %53, label %8, label %54

54:                                               ; preds = %52, %26, %18, %15, %11, %8
  %55 = phi ptr [ null, %8 ], [ null, %18 ], [ null, %26 ], [ null, %11 ], [ %9, %52 ], [ null, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_resolve_and_create_bundle(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #1 {
  %6 = alloca %union.xfrm_address_t, align 4
  %7 = alloca %union.xfrm_address_t, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.xfrm_address_t, align 4
  %10 = alloca [6 x ptr], align 4
  %11 = alloca [6 x ptr], align 4
  %12 = alloca [6 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 24, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 24, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false) #24, !annotation !26
  %13 = icmp sgt i32 %1, 1
  %14 = select i1 %13, ptr %10, ptr %11
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %168

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 2
  %19 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  br label %20

20:                                               ; preds = %144, %16
  %21 = phi i32 [ 0, %16 ], [ %147, %144 ]
  %22 = phi i32 [ 0, %16 ], [ %146, %144 ]
  %23 = getelementptr ptr, ptr %0, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %24, i32 0, i32 21
  %26 = load i8, ptr %25, align 8
  %27 = zext i8 %26 to i32
  %28 = add i32 %22, %27
  %29 = icmp sgt i32 %28, 5
  br i1 %29, label %149, label %30

30:                                               ; preds = %20
  %31 = getelementptr ptr, ptr %14, i32 %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  store i32 0, ptr %8, align 4, !annotation !26
  switch i16 %3, label %34 [
    i16 2, label %32
    i16 10, label %33
  ]

32:                                               ; preds = %30
  br label %34

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %32, %30
  %35 = phi ptr [ %17, %33 ], [ %19, %32 ], [ null, %30 ]
  %36 = phi ptr [ %18, %33 ], [ %17, %32 ], [ null, %30 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #24, !annotation !26
  %37 = icmp eq i8 %26, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  br label %144

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.xfrm_policy, ptr %24, i32 0, i32 10
  br label %41

41:                                               ; preds = %116, %39
  %42 = phi ptr [ %36, %39 ], [ %119, %116 ]
  %43 = phi ptr [ %35, %39 ], [ %118, %116 ]
  %44 = phi i32 [ 0, %39 ], [ %120, %116 ]
  %45 = phi i32 [ 0, %39 ], [ %117, %116 ]
  %46 = getelementptr %struct.xfrm_policy, ptr %24, i32 0, i32 24, i32 %44
  %47 = getelementptr %struct.xfrm_policy, ptr %24, i32 0, i32 24, i32 %44, i32 4
  %48 = load i8, ptr %47, align 4
  switch i8 %48, label %81 [
    i8 1, label %49
    i8 4, label %49
  ]

49:                                               ; preds = %41, %41
  %50 = getelementptr %struct.xfrm_policy, ptr %24, i32 0, i32 24, i32 %44, i32 1
  %51 = getelementptr %struct.xfrm_policy, ptr %24, i32 0, i32 24, i32 %44, i32 2
  %52 = load i16, ptr %51, align 4
  switch i16 %52, label %81 [
    i16 2, label %53
    i16 10, label %55
  ]

53:                                               ; preds = %49
  %54 = load i32, ptr %50, align 4
  br label %66

55:                                               ; preds = %49
  %56 = load i32, ptr %50, align 4
  %57 = getelementptr [4 x i32], ptr %50, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, %56
  %60 = getelementptr [4 x i32], ptr %50, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %59, %61
  %63 = getelementptr [4 x i32], ptr %50, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %62, %64
  br label %66

66:                                               ; preds = %55, %53
  %67 = phi i32 [ %65, %55 ], [ %54, %53 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, ptr %2, align 8
  %71 = zext i16 %52 to i32
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %72 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %71
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76, !prof !9

75:                                               ; preds = %69
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  store i32 -22, ptr %8, align 4
  br label %113

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.xfrm_policy_afinfo, ptr %73, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef nonnull @init_net, i32 noundef %70, ptr noundef nonnull %9, ptr noundef %46, i32 noundef 0) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  store i32 %79, ptr %8, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %76, %66, %49, %41
  %82 = phi ptr [ %46, %66 ], [ %43, %41 ], [ %46, %76 ], [ %46, %49 ]
  %83 = phi ptr [ %50, %66 ], [ %42, %41 ], [ %9, %76 ], [ %50, %49 ]
  %84 = load i32, ptr %40, align 4
  %85 = call ptr @xfrm_state_find(ptr noundef %82, ptr noundef %83, ptr noundef %2, ptr noundef %46, ptr noundef %24, ptr noundef nonnull %8, i16 noundef zeroext %3, i32 noundef %84) #24
  %86 = icmp eq ptr %85, null
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.xfrm_state, ptr %85, i32 0, i32 13, i32 1
  %89 = load i8, ptr %88, align 4
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = add i32 %45, 1
  %93 = getelementptr ptr, ptr %31, i32 %45
  store ptr %85, ptr %93, align 4
  br label %116

94:                                               ; preds = %87
  %95 = icmp eq i8 %89, 3
  %96 = select i1 %95, i32 -22, i32 -11
  store i32 %96, ptr %8, align 4
  %97 = getelementptr inbounds %struct.xfrm_state, ptr %85, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #24, !srcloc !14
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #24, !srcloc !22
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %109, label %103, !prof !12

103:                                              ; preds = %101
  call void @refcount_warn_saturate(ptr noundef %97, i32 noundef 3) #24
  br label %109

104:                                              ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  call void @__xfrm_state_destroy(ptr noundef nonnull %85, i1 noundef zeroext false) #24
  br label %109

105:                                              ; preds = %81
  %106 = load i32, ptr %8, align 4
  %107 = icmp eq i32 %106, -3
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 -11, ptr %8, align 4
  br label %109

109:                                              ; preds = %108, %105, %104, %103, %101
  %110 = getelementptr %struct.xfrm_policy, ptr %24, i32 0, i32 24, i32 %44, i32 6
  %111 = load i8, ptr %110, align 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109, %76, %75
  %114 = add i32 %45, -1
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %124, label %139

116:                                              ; preds = %109, %91
  %117 = phi i32 [ %45, %109 ], [ %92, %91 ]
  %118 = phi ptr [ %43, %109 ], [ %82, %91 ]
  %119 = phi ptr [ %42, %109 ], [ %83, %91 ]
  %120 = add nuw nsw i32 %44, 1
  %121 = load i8, ptr %25, align 8
  %122 = zext i8 %121 to i32
  %123 = icmp ult i32 %120, %122
  br i1 %123, label %41, label %141

124:                                              ; preds = %136, %113
  %125 = phi i32 [ %137, %136 ], [ %114, %113 ]
  %126 = getelementptr ptr, ptr %31, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #24, !srcloc !14
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #24, !srcloc !22
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = icmp sgt i32 %130, 0
  br i1 %133, label %136, label %134, !prof !12

134:                                              ; preds = %132
  call void @refcount_warn_saturate(ptr noundef %128, i32 noundef 3) #24
  br label %136

135:                                              ; preds = %124
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  call void @__xfrm_state_destroy(ptr noundef %127, i1 noundef zeroext false) #24
  br label %136

136:                                              ; preds = %135, %134, %132
  %137 = add i32 %125, -1
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %124, label %139

139:                                              ; preds = %136, %113
  %140 = load i32, ptr %8, align 4
  br label %141

141:                                              ; preds = %139, %116
  %142 = phi i32 [ %140, %139 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141, %38
  %145 = phi i32 [ 0, %38 ], [ %142, %141 ]
  %146 = add i32 %145, %22
  %147 = add nuw nsw i32 %21, 1
  %148 = icmp eq i32 %147, %1
  br i1 %148, label %170, label %20

149:                                              ; preds = %141, %20
  %150 = phi i32 [ -105, %20 ], [ %142, %141 ]
  %151 = add i32 %22, -1
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %168

153:                                              ; preds = %165, %149
  %154 = phi i32 [ %166, %165 ], [ %151, %149 ]
  %155 = getelementptr ptr, ptr %14, i32 %154
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.xfrm_state, ptr %156, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %157) #24, !srcloc !14
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 1, ptr elementtype(i32) %157) #24, !srcloc !22
  %159 = extractvalue { i32, i32, i32 } %158, 0
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %153
  %162 = icmp sgt i32 %159, 0
  br i1 %162, label %165, label %163, !prof !12

163:                                              ; preds = %161
  call void @refcount_warn_saturate(ptr noundef %157, i32 noundef 3) #24
  br label %165

164:                                              ; preds = %153
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  call void @__xfrm_state_destroy(ptr noundef %156, i1 noundef zeroext false) #24
  br label %165

165:                                              ; preds = %164, %163, %161
  %166 = add i32 %154, -1
  %167 = icmp sgt i32 %166, -1
  br i1 %167, label %153, label %170

168:                                              ; preds = %149, %5
  %169 = phi i32 [ 0, %5 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  br label %173

170:                                              ; preds = %165, %144
  %171 = phi i32 [ %150, %165 ], [ %146, %144 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %173, label %176

173:                                              ; preds = %170, %168
  %174 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %175 = inttoptr i32 %174 to ptr
  br label %577

176:                                              ; preds = %170
  %177 = load ptr, ptr %0, align 4
  %178 = load volatile i32, ptr @jiffies, align 64
  %179 = getelementptr inbounds %struct.xfrm_policy, ptr %177, i32 0, i32 12, i32 6
  %180 = load i16, ptr %179, align 8
  %181 = zext i16 %180 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #24, !annotation !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #24, !annotation !26
  switch i16 %180, label %190 [
    i16 2, label %182
    i16 10, label %189
  ]

182:                                              ; preds = %176
  %183 = load i32, ptr %17, align 8
  store i32 %183, ptr %6, align 4
  %184 = load i32, ptr %19, align 4
  store i32 %184, ptr %7, align 4
  %185 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 3
  %186 = load i8, ptr %185, align 4
  %187 = and i8 %186, 28
  %188 = zext i8 %187 to i32
  br label %190

189:                                              ; preds = %176
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 8 dereferenceable(16) %17, i32 16, i1 false) #24
  br label %190

190:                                              ; preds = %189, %182, %176
  %191 = phi i32 [ %188, %182 ], [ 0, %189 ], [ 0, %176 ]
  %192 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %192) #24, !srcloc !14
  %193 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %192, ptr %192, i32 0, i32 1, ptr elementtype(i32) %192) #24, !srcloc !30
  %194 = extractvalue { i32, i32, i32 } %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %190
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %198

197:                                              ; preds = %190
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef null) #24
  br label %198

198:                                              ; preds = %197, %196
  %199 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 2
  br label %200

200:                                              ; preds = %381, %198
  %201 = phi i32 [ %181, %198 ], [ %365, %381 ]
  %202 = phi i32 [ 0, %198 ], [ %397, %381 ]
  %203 = phi i32 [ 0, %198 ], [ %394, %381 ]
  %204 = phi i32 [ 0, %198 ], [ %386, %381 ]
  %205 = phi i32 [ 0, %198 ], [ %398, %381 ]
  %206 = phi ptr [ null, %198 ], [ %237, %381 ]
  %207 = phi ptr [ null, %198 ], [ %221, %381 ]
  %208 = phi ptr [ %4, %198 ], [ %364, %381 ]
  %209 = trunc i32 %201 to i16
  %210 = icmp ugt i16 %209, 10
  br i1 %210, label %229, label %211, !prof !9

211:                                              ; preds = %200
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %212 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %201
  %213 = load volatile ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %216, !prof !9

215:                                              ; preds = %211
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %229

216:                                              ; preds = %211
  switch i32 %201, label %218 [
    i32 2, label %219
    i32 10, label %217
  ]

217:                                              ; preds = %216
  br label %219

218:                                              ; preds = %216
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2486, 0\0A.popsection", ""() #24, !srcloc !37
  unreachable

219:                                              ; preds = %217, %216
  %220 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 27), %217 ], [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 26), %216 ]
  %221 = call ptr @dst_alloc(ptr noundef nonnull %220, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #24
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224, !prof !9

223:                                              ; preds = %219
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %229

224:                                              ; preds = %219
  %225 = getelementptr i8, ptr %221, i32 68
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(140) %225, i8 0, i32 140, i1 false) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %226 = icmp ugt ptr %221, inttoptr (i32 -4096 to ptr)
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = ptrtoint ptr %221 to i32
  br label %229

229:                                              ; preds = %227, %223, %215, %200
  %230 = phi i32 [ -105, %223 ], [ -22, %215 ], [ %228, %227 ], [ -22, %200 ]
  call void @dst_release(ptr noundef %208) #24
  br label %402

231:                                              ; preds = %224
  %232 = getelementptr ptr, ptr %12, i32 %205
  store ptr %221, ptr %232, align 4
  %233 = icmp eq ptr %207, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.xfrm_dst, ptr %207, i32 0, i32 2
  store ptr %221, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %231
  %237 = phi ptr [ %206, %234 ], [ %221, %231 ]
  %238 = getelementptr ptr, ptr %11, i32 %205
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 8, i32 6
  %241 = load i16, ptr %240, align 8
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %236
  %244 = icmp eq i32 %201, 10
  %245 = select i1 %244, i32 41, i32 0
  %246 = icmp eq i32 %201, 2
  %247 = select i1 %246, i32 4, i32 %245
  switch i32 %247, label %258 [
    i32 4, label %248
    i32 41, label %252
  ]

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 7
  %250 = load i16, ptr %249, align 2
  %251 = icmp eq i16 %250, 2
  br i1 %251, label %256, label %258

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 7
  %254 = load i16, ptr %253, align 2
  %255 = icmp eq i16 %254, 10
  br i1 %255, label %256, label %258

256:                                              ; preds = %252, %248
  %257 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 46
  br label %260

258:                                              ; preds = %252, %248, %243
  %259 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 47
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi ptr [ %257, %256 ], [ %259, %258 ]
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  call void @dst_release(ptr noundef %208) #24
  br label %402

264:                                              ; preds = %236
  %265 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 46
  br label %266

266:                                              ; preds = %264, %260
  %267 = phi ptr [ %261, %260 ], [ %265, %264 ]
  %268 = getelementptr inbounds %struct.xfrm_dst, ptr %221, i32 0, i32 1
  store ptr %208, ptr %268, align 4
  %269 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 2
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273, !prof !9

272:                                              ; preds = %266
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #24, !srcloc !38
  unreachable

273:                                              ; preds = %266
  %274 = and i32 %270, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.dst_ops, ptr %278, i32 0, i32 6
  %280 = load ptr, ptr %279, align 8
  %281 = call ptr %280(ptr noundef nonnull %221, i32 noundef %270) #24
  br label %285

282:                                              ; preds = %273
  %283 = and i32 %270, -4
  %284 = inttoptr i32 %283 to ptr
  br label %285

285:                                              ; preds = %282, %276
  %286 = phi ptr [ %281, %276 ], [ %284, %282 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %293, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.dst_entry, ptr %208, i32 0, i32 2
  %290 = load i32, ptr %289, align 4
  %291 = and i32 %290, -4
  %292 = inttoptr i32 %291 to ptr
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %286, ptr noundef align 4 dereferenceable(68) %292, i32 68, i1 false) #24
  br label %293

293:                                              ; preds = %288, %285
  %294 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 1
  %295 = load i8, ptr %294, align 4
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %356, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 12
  %299 = load i32, ptr %298, align 8
  %300 = icmp eq i32 %299, 0
  %301 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 12, i32 1
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 0
  %304 = select i1 %300, i1 %303, i1 false
  br i1 %304, label %311, label %305

305:                                              ; preds = %297
  %306 = load i32, ptr %199, align 8
  %307 = and i32 %302, %299
  %308 = xor i32 %302, -1
  %309 = and i32 %306, %308
  %310 = or i32 %309, %307
  br label %311

311:                                              ; preds = %305, %297
  %312 = phi i32 [ %310, %305 ], [ 0, %297 ]
  %313 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 7
  %314 = load i16, ptr %313, align 2
  %315 = zext i16 %314 to i32
  %316 = load i32, ptr %2, align 8
  %317 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 8
  %318 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 7
  %319 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 45
  %320 = load ptr, ptr %319, align 8
  %321 = getelementptr inbounds %struct.xfrm_type, ptr %320, i32 0, i32 2
  %322 = load i8, ptr %321, align 1
  %323 = and i8 %322, 4
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %311
  %326 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 26
  %327 = load ptr, ptr %326, align 8
  br label %328

328:                                              ; preds = %325, %311
  %329 = phi ptr [ %327, %325 ], [ %317, %311 ]
  %330 = phi ptr [ %7, %325 ], [ %318, %311 ]
  %331 = and i8 %322, 8
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 26
  %335 = load ptr, ptr %334, align 8
  br label %336

336:                                              ; preds = %333, %328
  %337 = phi ptr [ %6, %333 ], [ %329, %328 ]
  %338 = phi ptr [ %335, %333 ], [ %330, %328 ]
  %339 = icmp ugt i16 %314, 10
  br i1 %339, label %402, label %340, !prof !9

340:                                              ; preds = %336
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %341 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %315
  %342 = load volatile ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %345, !prof !9

344:                                              ; preds = %340
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %402

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.xfrm_policy_afinfo, ptr %342, i32 0, i32 1
  %347 = load ptr, ptr %346, align 4
  %348 = call ptr %347(ptr noundef nonnull @init_net, i32 noundef %191, i32 noundef %316, ptr noundef %337, ptr noundef %338, i32 noundef %312) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %349 = icmp ugt ptr %348, inttoptr (i32 -4096 to ptr)
  br i1 %349, label %400, label %350

350:                                              ; preds = %345
  %351 = icmp eq ptr %337, %6
  br i1 %351, label %353, label %352

352:                                              ; preds = %350
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %337, i32 16, i1 false) #24
  br label %353

353:                                              ; preds = %352, %350
  %354 = icmp eq ptr %338, %7
  br i1 %354, label %363, label %355

355:                                              ; preds = %353
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %338, i32 16, i1 false) #24
  br label %363

356:                                              ; preds = %293
  %357 = getelementptr inbounds %struct.dst_entry, ptr %208, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %357) #24, !srcloc !14
  %358 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %357, ptr %357, i32 0, i32 1, ptr elementtype(i32) %357) #24, !srcloc !30
  %359 = extractvalue { i32, i32, i32 } %358, 0
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %362, label %361

361:                                              ; preds = %356
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %363

362:                                              ; preds = %356
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef null) #24
  br label %363

363:                                              ; preds = %362, %361, %355, %353
  %364 = phi ptr [ %208, %361 ], [ %208, %362 ], [ %348, %353 ], [ %348, %355 ]
  %365 = phi i32 [ %201, %361 ], [ %201, %362 ], [ %315, %353 ], [ %315, %355 ]
  %366 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 4
  store ptr %239, ptr %366, align 4
  %367 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 12
  %368 = load i32, ptr %367, align 8
  %369 = getelementptr inbounds %struct.xfrm_dst, ptr %221, i32 0, i32 7
  store i32 %368, ptr %369, align 4
  %370 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 8
  store i16 -1, ptr %370, align 2
  %371 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 12
  store i32 %178, ptr %371, align 4
  %372 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 5
  store ptr @dst_discard, ptr %372, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %373 = getelementptr inbounds %struct.xfrm_mode, ptr %267, i32 0, i32 1
  %374 = load i8, ptr %373, align 1
  %375 = zext i8 %374 to i32
  %376 = call ptr @xfrm_state_afinfo_get_rcu(i32 noundef %375) #24
  %377 = icmp eq ptr %376, null
  br i1 %377, label %381, label %378, !prof !9

378:                                              ; preds = %363
  %379 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %376, i32 0, i32 10
  %380 = load ptr, ptr %379, align 4
  br label %381

381:                                              ; preds = %378, %363
  %382 = phi ptr [ %380, %378 ], [ @dst_discard_out, %363 ]
  %383 = getelementptr inbounds %struct.dst_entry, ptr %221, i32 0, i32 6
  store ptr %382, ptr %383, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %384 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 9
  %385 = load i32, ptr %384, align 4
  %386 = add i32 %385, %204
  %387 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 45
  %388 = load ptr, ptr %387, align 8
  %389 = getelementptr inbounds %struct.xfrm_type, ptr %388, i32 0, i32 2
  %390 = load i8, ptr %389, align 1
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  %393 = select i1 %392, i32 0, i32 %385
  %394 = add i32 %393, %203
  %395 = getelementptr inbounds %struct.xfrm_state, ptr %239, i32 0, i32 14, i32 10
  %396 = load i32, ptr %395, align 8
  %397 = add i32 %396, %202
  %398 = add nuw nsw i32 %205, 1
  %399 = icmp eq i32 %398, %171
  br i1 %399, label %406, label %200

400:                                              ; preds = %345
  %401 = ptrtoint ptr %348 to i32
  br label %402

402:                                              ; preds = %400, %344, %336, %263, %229
  %403 = phi ptr [ %206, %229 ], [ %237, %263 ], [ %237, %344 ], [ %237, %400 ], [ %237, %336 ]
  %404 = phi i32 [ %230, %229 ], [ -97, %263 ], [ -97, %344 ], [ %401, %400 ], [ -97, %336 ]
  %405 = icmp slt i32 %205, %171
  br i1 %405, label %543, label %558

406:                                              ; preds = %381
  %407 = trunc i32 %394 to i16
  %408 = getelementptr inbounds %struct.xfrm_dst, ptr %221, i32 0, i32 2
  store ptr %364, ptr %408, align 4
  %409 = getelementptr inbounds %struct.xfrm_dst, ptr %237, i32 0, i32 3
  store ptr %364, ptr %409, align 4
  %410 = load ptr, ptr %364, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %558, label %412

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.dst_entry, ptr %364, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  %415 = load i16, ptr %414, align 64
  %416 = icmp eq i16 %415, 10
  br i1 %416, label %417, label %438

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.rt6_info, ptr %364, i32 0, i32 2
  %419 = load i32, ptr %418, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %434

421:                                              ; preds = %417
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %422 = getelementptr inbounds %struct.rt6_info, ptr %364, i32 0, i32 1
  %423 = load volatile ptr, ptr %422, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %432, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.fib6_info, ptr %423, i32 0, i32 2
  %427 = load volatile ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %432, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.fib6_node, ptr %427, i32 0, i32 6
  %431 = load volatile i32, ptr %430, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !39
  br label %432

432:                                              ; preds = %429, %425, %421
  %433 = phi i32 [ 0, %421 ], [ 0, %425 ], [ %431, %429 ]
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %434

434:                                              ; preds = %432, %417
  %435 = phi i32 [ %433, %432 ], [ %419, %417 ]
  %436 = getelementptr inbounds %struct.xfrm_dst, ptr %237, i32 0, i32 12
  store i32 %435, ptr %436, align 4
  %437 = getelementptr inbounds %struct.rt6_info, ptr %237, i32 0, i32 10
  store i16 %407, ptr %437, align 4
  br label %438

438:                                              ; preds = %434, %412
  br label %439

439:                                              ; preds = %495, %438
  %440 = phi i32 [ %441, %495 ], [ %171, %438 ]
  %441 = add i32 %440, -1
  %442 = getelementptr ptr, ptr %12, i32 %441
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.dst_entry, ptr %443, i32 0, i32 4
  %445 = load ptr, ptr %444, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %452

447:                                              ; preds = %439
  %448 = getelementptr inbounds %struct.dst_entry, ptr %443, i32 0, i32 7
  %449 = load i16, ptr %448, align 4
  %450 = and i16 %449, 64
  %451 = icmp eq i16 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %447, %439
  %453 = getelementptr inbounds %struct.xfrm_dst, ptr %443, i32 0, i32 2
  %454 = load ptr, ptr %453, align 4
  br label %455

455:                                              ; preds = %452, %447
  %456 = phi ptr [ %454, %452 ], [ null, %447 ]
  %457 = getelementptr inbounds %struct.dst_entry, ptr %456, i32 0, i32 1
  %458 = load ptr, ptr %457, align 4
  %459 = getelementptr inbounds %struct.dst_ops, ptr %458, i32 0, i32 5
  %460 = load ptr, ptr %459, align 4
  %461 = call i32 %460(ptr noundef %456) #24
  %462 = getelementptr inbounds %struct.xfrm_dst, ptr %443, i32 0, i32 10
  store i32 %461, ptr %462, align 4
  %463 = load ptr, ptr %444, align 4
  %464 = call i32 @xfrm_state_mtu(ptr noundef %463, i32 noundef %461) #24
  %465 = getelementptr inbounds %struct.xfrm_dst, ptr %443, i32 0, i32 1
  %466 = load ptr, ptr %465, align 4
  %467 = getelementptr inbounds %struct.dst_entry, ptr %466, i32 0, i32 1
  %468 = load ptr, ptr %467, align 4
  %469 = getelementptr inbounds %struct.dst_ops, ptr %468, i32 0, i32 5
  %470 = load ptr, ptr %469, align 4
  %471 = call i32 %470(ptr noundef %466) #24
  %472 = getelementptr inbounds %struct.xfrm_dst, ptr %443, i32 0, i32 9
  store i32 %471, ptr %472, align 4
  %473 = call i32 @llvm.umin.i32(i32 %464, i32 %471) #24
  %474 = getelementptr inbounds %struct.dst_entry, ptr %443, i32 0, i32 2
  %475 = load i32, ptr %474, align 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478, !prof !9

477:                                              ; preds = %455
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #24, !srcloc !38
  unreachable

478:                                              ; preds = %455
  %479 = and i32 %475, 1
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %487, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.dst_entry, ptr %443, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.dst_ops, ptr %483, i32 0, i32 6
  %485 = load ptr, ptr %484, align 8
  %486 = call ptr %485(ptr noundef %443, i32 noundef %475) #24
  br label %490

487:                                              ; preds = %478
  %488 = and i32 %475, -4
  %489 = inttoptr i32 %488 to ptr
  br label %490

490:                                              ; preds = %487, %481
  %491 = phi ptr [ %486, %481 ], [ %489, %487 ]
  %492 = icmp eq ptr %491, null
  br i1 %492, label %495, label %493

493:                                              ; preds = %490
  %494 = getelementptr i32, ptr %491, i32 1
  store i32 %473, ptr %494, align 4
  br label %495

495:                                              ; preds = %493, %490
  %496 = icmp eq i32 %441, 0
  br i1 %496, label %497, label %439

497:                                              ; preds = %495
  %498 = icmp eq ptr %237, %364
  br i1 %498, label %565, label %499

499:                                              ; preds = %540, %497
  %500 = phi i32 [ %530, %540 ], [ %397, %497 ]
  %501 = phi i32 [ %527, %540 ], [ %386, %497 ]
  %502 = phi ptr [ %541, %540 ], [ %237, %497 ]
  %503 = getelementptr inbounds %struct.dst_entry, ptr %502, i32 0, i32 1
  %504 = load ptr, ptr %503, align 4
  %505 = load i16, ptr %504, align 64
  %506 = icmp ugt i16 %505, 10
  br i1 %506, label %558, label %507, !prof !9

507:                                              ; preds = %499
  %508 = zext i16 %505 to i32
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %509 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %508
  %510 = load volatile ptr, ptr %509, align 4
  %511 = icmp eq ptr %510, null
  br i1 %511, label %512, label %513, !prof !9

512:                                              ; preds = %507
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %558

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.xfrm_policy_afinfo, ptr %510, i32 0, i32 3
  %515 = load ptr, ptr %514, align 4
  %516 = call i32 %515(ptr noundef %502, ptr noundef nonnull %410, ptr noundef %2) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %558

518:                                              ; preds = %513
  %519 = trunc i32 %501 to i16
  %520 = getelementptr inbounds %struct.dst_entry, ptr %502, i32 0, i32 9
  store i16 %519, ptr %520, align 4
  %521 = trunc i32 %500 to i16
  %522 = getelementptr inbounds %struct.dst_entry, ptr %502, i32 0, i32 10
  store i16 %521, ptr %522, align 2
  %523 = getelementptr inbounds %struct.dst_entry, ptr %502, i32 0, i32 4
  %524 = load ptr, ptr %523, align 4
  %525 = getelementptr inbounds %struct.xfrm_state, ptr %524, i32 0, i32 14, i32 9
  %526 = load i32, ptr %525, align 4
  %527 = sub i32 %501, %526
  %528 = getelementptr inbounds %struct.xfrm_state, ptr %524, i32 0, i32 14, i32 10
  %529 = load i32, ptr %528, align 8
  %530 = sub i32 %500, %529
  %531 = icmp eq ptr %524, null
  br i1 %531, label %532, label %537

532:                                              ; preds = %518
  %533 = getelementptr inbounds %struct.dst_entry, ptr %502, i32 0, i32 7
  %534 = load i16, ptr %533, align 4
  %535 = and i16 %534, 64
  %536 = icmp eq i16 %535, 0
  br i1 %536, label %540, label %537

537:                                              ; preds = %532, %518
  %538 = getelementptr inbounds %struct.xfrm_dst, ptr %502, i32 0, i32 2
  %539 = load ptr, ptr %538, align 4
  br label %540

540:                                              ; preds = %537, %532
  %541 = phi ptr [ %539, %537 ], [ null, %532 ]
  %542 = icmp eq ptr %541, %364
  br i1 %542, label %565, label %499

543:                                              ; preds = %555, %402
  %544 = phi i32 [ %556, %555 ], [ %205, %402 ]
  %545 = getelementptr ptr, ptr %11, i32 %544
  %546 = load ptr, ptr %545, align 4
  %547 = getelementptr inbounds %struct.xfrm_state, ptr %546, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %547) #24, !srcloc !14
  %548 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %547, ptr %547, i32 1, ptr elementtype(i32) %547) #24, !srcloc !22
  %549 = extractvalue { i32, i32, i32 } %548, 0
  %550 = icmp eq i32 %549, 1
  br i1 %550, label %554, label %551

551:                                              ; preds = %543
  %552 = icmp sgt i32 %549, 0
  br i1 %552, label %555, label %553, !prof !12

553:                                              ; preds = %551
  call void @refcount_warn_saturate(ptr noundef %547, i32 noundef 3) #24
  br label %555

554:                                              ; preds = %543
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  call void @__xfrm_state_destroy(ptr noundef %546, i1 noundef zeroext false) #24
  br label %555

555:                                              ; preds = %554, %553, %551
  %556 = add nuw i32 %544, 1
  %557 = icmp eq i32 %556, %171
  br i1 %557, label %558, label %543

558:                                              ; preds = %555, %513, %512, %499, %406, %402
  %559 = phi ptr [ %237, %406 ], [ %237, %512 ], [ %403, %402 ], [ %403, %555 ], [ %237, %499 ], [ %237, %513 ]
  %560 = phi i32 [ -19, %406 ], [ -22, %512 ], [ %404, %402 ], [ %404, %555 ], [ %516, %513 ], [ -22, %499 ]
  %561 = icmp eq ptr %559, null
  br i1 %561, label %563, label %562

562:                                              ; preds = %558
  call void @dst_release_immediate(ptr noundef nonnull %559) #24
  br label %563

563:                                              ; preds = %562, %558
  %564 = inttoptr i32 %560 to ptr
  br label %565

565:                                              ; preds = %563, %540, %497
  %566 = phi ptr [ %564, %563 ], [ %237, %497 ], [ %237, %540 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  %567 = icmp ugt ptr %566, inttoptr (i32 -4096 to ptr)
  br i1 %567, label %577, label %568

568:                                              ; preds = %565
  %569 = getelementptr inbounds %struct.xfrm_dst, ptr %566, i32 0, i32 6
  store i32 %171, ptr %569, align 4
  %570 = getelementptr inbounds %struct.xfrm_dst, ptr %566, i32 0, i32 5
  store i32 %1, ptr %570, align 4
  %571 = getelementptr inbounds %struct.xfrm_dst, ptr %566, i32 0, i32 4
  %572 = shl i32 %1, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %571, ptr align 4 %0, i32 %572, i1 false)
  %573 = load ptr, ptr %0, align 4
  %574 = getelementptr inbounds %struct.xfrm_policy, ptr %573, i32 0, i32 7
  %575 = load volatile i32, ptr %574, align 4
  %576 = getelementptr inbounds %struct.xfrm_dst, ptr %566, i32 0, i32 8
  store i32 %575, ptr %576, align 4
  br label %577

577:                                              ; preds = %568, %565, %173
  %578 = phi ptr [ %566, %568 ], [ %566, %565 ], [ %175, %173 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #24
  ret ptr %578
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_pols_put(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %35

5:                                                ; preds = %32, %2
  %6 = phi i32 [ %33, %32 ], [ %3, %2 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xfrm_policy, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #24, !srcloc !14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #24, !srcloc !22
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %32, label %15, !prof !12

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #24
  br label %32

16:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %17 = getelementptr inbounds %struct.xfrm_policy, ptr %8, i32 0, i32 15, i32 1
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.xfrm_policy, ptr %8, i32 0, i32 6
  %23 = tail call i32 @del_timer(ptr noundef %22) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.xfrm_policy, ptr %8, i32 0, i32 16, i32 1
  %27 = tail call i32 @del_timer(ptr noundef %26) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.xfrm_policy, ptr %8, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %31, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %32

32:                                               ; preds = %30, %15, %13
  %33 = add i32 %6, -1
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %5, label %35

35:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = tail call ptr @xfrm_lookup_with_ifid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_lookup_route(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = or i32 %4, 6
  %7 = tail call ptr @xfrm_lookup_with_ifid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef 0) #24
  %8 = icmp eq ptr %7, inttoptr (i32 -66 to ptr)
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %11, align 64
  %13 = icmp ugt i16 %12, 10
  br i1 %13, label %20, label %14, !prof !9

14:                                               ; preds = %9
  %15 = zext i16 %12 to i32
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %16 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %15
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %20

20:                                               ; preds = %19, %9
  tail call void @dst_release(ptr noundef %1) #24
  br label %28

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.xfrm_policy_afinfo, ptr %17, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %0, ptr noundef %1) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %28

25:                                               ; preds = %5
  %26 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @dst_release(ptr noundef %1) #24
  br label %28

28:                                               ; preds = %27, %25, %21, %20
  %29 = phi ptr [ %7, %27 ], [ %7, %25 ], [ %24, %21 ], [ inttoptr (i32 -22 to ptr), %20 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xfrm_decode_session(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3) #1 {
  switch i32 %2, label %405 [
    i32 2, label %5
    i32 10, label %166
  ]

5:                                                ; preds = %4
  %6 = icmp ne i32 %3, 0
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = load i8, ptr %12, align 4
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 60
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %12, i32 %16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = inttoptr i32 %20 to ptr
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22, %5
  %30 = phi i32 [ %28, %26 ], [ 0, %22 ], [ 0, %5 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %1, i8 0, i32 56, i1 false) #24
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  store i32 %32, ptr %33, align 8
  br i1 %6, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %36, %34 ], [ %30, %29 ]
  store i32 %38, ptr %1, align 8
  %39 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 8
  %43 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 9
  %44 = select i1 %6, ptr %42, ptr %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = select i1 %6, ptr %43, ptr %42
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, -4
  %53 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 3
  store i8 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 4
  %55 = load i16, ptr %54, align 2
  %56 = and i16 %55, -193
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %405

58:                                               ; preds = %37
  %59 = load i8, ptr %39, align 1
  switch i8 %59, label %405 [
    i8 17, label %60
    i8 -120, label %60
    i8 6, label %60
    i8 -124, label %60
    i8 33, label %60
    i8 1, label %96
    i8 47, label %128
  ]

60:                                               ; preds = %58, %58, %58, %58, %58
  %61 = getelementptr i8, ptr %17, i32 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ult ptr %61, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %60
  %66 = ptrtoint ptr %61 to i32
  %67 = ptrtoint ptr %63 to i32
  %68 = sub i32 %66, %67
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %70, %72
  %74 = icmp ugt i32 %68, %73
  br i1 %74, label %75, label %81, !prof !9

75:                                               ; preds = %65
  %76 = icmp ult i32 %70, %68
  br i1 %76, label %405, label %77, !prof !9

77:                                               ; preds = %75
  %78 = sub i32 %68, %73
  %79 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %78) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %405, label %81

81:                                               ; preds = %77, %65, %60
  %82 = load ptr, ptr %7, align 8
  %83 = load i16, ptr %9, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = getelementptr i8, ptr %85, i32 %16
  %87 = xor i1 %6, true
  %88 = zext i1 %6 to i32
  %89 = getelementptr i16, ptr %86, i32 %88
  %90 = load i16, ptr %89, align 2
  %91 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  %92 = getelementptr inbounds %struct.anon, ptr %91, i32 0, i32 1
  store i16 %90, ptr %92, align 2
  %93 = zext i1 %87 to i32
  %94 = getelementptr i16, ptr %86, i32 %93
  %95 = load i16, ptr %94, align 2
  store i16 %95, ptr %91, align 8
  br label %405

96:                                               ; preds = %58
  %97 = getelementptr i8, ptr %17, i32 2
  %98 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %99 = load ptr, ptr %98, align 4
  %100 = icmp ult ptr %97, %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %96
  %102 = ptrtoint ptr %97 to i32
  %103 = ptrtoint ptr %99 to i32
  %104 = sub i32 %102, %103
  %105 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %106 = load i32, ptr %105, align 8
  %107 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = sub i32 %106, %108
  %110 = icmp ugt i32 %104, %109
  br i1 %110, label %111, label %117, !prof !9

111:                                              ; preds = %101
  %112 = icmp ult i32 %106, %104
  br i1 %112, label %405, label %113, !prof !9

113:                                              ; preds = %111
  %114 = sub i32 %104, %109
  %115 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %114) #24
  %116 = icmp eq ptr %115, null
  br i1 %116, label %405, label %117

117:                                              ; preds = %113, %101, %96
  %118 = load ptr, ptr %7, align 8
  %119 = load i16, ptr %9, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr i8, ptr %118, i32 %120
  %122 = getelementptr i8, ptr %121, i32 %16
  %123 = load i8, ptr %122, align 1
  %124 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  store i8 %123, ptr %124, align 8
  %125 = getelementptr i8, ptr %122, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds %struct.anon.1, ptr %124, i32 0, i32 1
  store i8 %126, ptr %127, align 1
  br label %405

128:                                              ; preds = %58
  %129 = getelementptr i8, ptr %17, i32 12
  %130 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %131 = load ptr, ptr %130, align 4
  %132 = icmp ult ptr %129, %131
  br i1 %132, label %149, label %133

133:                                              ; preds = %128
  %134 = ptrtoint ptr %129 to i32
  %135 = ptrtoint ptr %131 to i32
  %136 = sub i32 %134, %135
  %137 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = sub i32 %138, %140
  %142 = icmp ugt i32 %136, %141
  br i1 %142, label %143, label %149, !prof !9

143:                                              ; preds = %133
  %144 = icmp ult i32 %138, %136
  br i1 %144, label %405, label %145, !prof !9

145:                                              ; preds = %143
  %146 = sub i32 %136, %141
  %147 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %146) #24
  %148 = icmp eq ptr %147, null
  br i1 %148, label %405, label %149

149:                                              ; preds = %145, %133, %128
  %150 = load ptr, ptr %7, align 8
  %151 = load i16, ptr %9, align 4
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %150, i32 %152
  %154 = getelementptr i8, ptr %153, i32 %16
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i32
  %157 = and i32 %156, 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %405, label %159

159:                                              ; preds = %149
  %160 = lshr i32 %156, 7
  %161 = and i32 %160, 1
  %162 = getelementptr i32, ptr %154, i32 %161
  %163 = getelementptr i32, ptr %162, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 3
  store i32 %164, ptr %165, align 8
  br label %405

166:                                              ; preds = %4
  %167 = icmp ne i32 %3, 0
  %168 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %171 = load i16, ptr %170, align 4
  %172 = zext i16 %171 to i32
  %173 = getelementptr i8, ptr %169, i32 %172
  %174 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %175 = load i16, ptr %174, align 2
  %176 = icmp eq i16 %175, 0
  %177 = select i1 %176, i16 6, i16 %175
  %178 = zext i16 %177 to i32
  %179 = getelementptr i8, ptr %173, i32 %178
  %180 = load i8, ptr %179, align 1
  %181 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %182 = load i32, ptr %181, align 8
  %183 = and i32 %182, -2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %166
  %186 = inttoptr i32 %183 to ptr
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.net_device, ptr %187, i32 0, i32 17
  %191 = load i32, ptr %190, align 4
  br label %192

192:                                              ; preds = %189, %185, %166
  %193 = phi i32 [ %191, %189 ], [ 0, %185 ], [ 0, %166 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false) #24
  %194 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  store i32 %195, ptr %196, align 8
  br i1 %167, label %197, label %204

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %199 = load i32, ptr %198, align 4
  store i32 %199, ptr %1, align 8
  %200 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %201 = getelementptr inbounds %struct.ipv6hdr, ptr %173, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %200, ptr noundef align 4 dereferenceable(16) %201, i32 16, i1 false) #24
  %202 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %203 = getelementptr inbounds %struct.ipv6hdr, ptr %173, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %202, ptr noundef align 4 dereferenceable(16) %203, i32 16, i1 false) #24
  br label %209

204:                                              ; preds = %192
  store i32 %193, ptr %1, align 8
  %205 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %206 = getelementptr inbounds %struct.ipv6hdr, ptr %173, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %205, ptr noundef align 4 dereferenceable(16) %206, i32 16, i1 false) #24
  %207 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  %208 = getelementptr inbounds %struct.ipv6hdr, ptr %173, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %207, ptr noundef align 4 dereferenceable(16) %208, i32 16, i1 false) #24
  br label %209

209:                                              ; preds = %204, %197
  %210 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %211 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %212 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  br label %213

213:                                              ; preds = %243, %209
  %214 = phi ptr [ %173, %209 ], [ %240, %243 ]
  %215 = phi i32 [ 40, %209 ], [ %250, %243 ]
  %216 = phi i8 [ %180, %209 ], [ %251, %243 ]
  %217 = phi i32 [ 0, %209 ], [ %244, %243 ]
  %218 = getelementptr i8, ptr %214, i32 2
  %219 = getelementptr i8, ptr %218, i32 %215
  %220 = load ptr, ptr %210, align 4
  %221 = icmp ult ptr %219, %220
  br i1 %221, label %236, label %222

222:                                              ; preds = %213
  %223 = ptrtoint ptr %219 to i32
  %224 = ptrtoint ptr %220 to i32
  %225 = sub i32 %223, %224
  %226 = load i32, ptr %211, align 8
  %227 = load i32, ptr %212, align 4
  %228 = sub i32 %226, %227
  %229 = icmp ugt i32 %225, %228
  br i1 %229, label %230, label %236, !prof !9

230:                                              ; preds = %222
  %231 = icmp ult i32 %226, %225
  br i1 %231, label %405, label %232, !prof !9

232:                                              ; preds = %230
  %233 = sub i32 %225, %228
  %234 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %233) #24
  %235 = icmp eq ptr %234, null
  br i1 %235, label %405, label %236

236:                                              ; preds = %232, %222, %213
  %237 = load ptr, ptr %168, align 8
  %238 = load i16, ptr %170, align 4
  %239 = zext i16 %238 to i32
  %240 = getelementptr i8, ptr %237, i32 %239
  %241 = getelementptr i8, ptr %240, i32 %215
  switch i8 %216, label %403 [
    i8 44, label %242
    i8 43, label %243
    i8 0, label %243
    i8 60, label %243
    i8 17, label %252
    i8 -120, label %252
    i8 6, label %252
    i8 -124, label %252
    i8 33, label %252
    i8 58, label %290
    i8 47, label %324
    i8 -121, label %364
  ]

242:                                              ; preds = %236
  br label %243

243:                                              ; preds = %242, %236, %236, %236
  %244 = phi i32 [ %217, %236 ], [ %217, %236 ], [ %217, %236 ], [ 1, %242 ]
  %245 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %241, i32 0, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = shl nuw nsw i32 %247, 3
  %249 = add i32 %215, 8
  %250 = add i32 %249, %248
  %251 = load i8, ptr %241, align 1
  br label %213

252:                                              ; preds = %236, %236, %236, %236, %236
  %253 = icmp eq i32 %217, 0
  br i1 %253, label %254, label %403

254:                                              ; preds = %252
  %255 = getelementptr i8, ptr %241, i32 4
  %256 = load ptr, ptr %210, align 4
  %257 = icmp ult ptr %255, %256
  br i1 %257, label %275, label %258

258:                                              ; preds = %254
  %259 = ptrtoint ptr %255 to i32
  %260 = ptrtoint ptr %256 to i32
  %261 = sub i32 %259, %260
  %262 = load i32, ptr %211, align 8
  %263 = load i32, ptr %212, align 4
  %264 = sub i32 %262, %263
  %265 = icmp ugt i32 %261, %264
  br i1 %265, label %266, label %275, !prof !9

266:                                              ; preds = %258
  %267 = icmp ult i32 %262, %261
  br i1 %267, label %403, label %268, !prof !9

268:                                              ; preds = %266
  %269 = sub i32 %261, %264
  %270 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %269) #24
  %271 = icmp eq ptr %270, null
  br i1 %271, label %403, label %272

272:                                              ; preds = %268
  %273 = load ptr, ptr %168, align 8
  %274 = load i16, ptr %170, align 4
  br label %275

275:                                              ; preds = %272, %258, %254
  %276 = phi i16 [ %274, %272 ], [ %238, %258 ], [ %238, %254 ]
  %277 = phi ptr [ %273, %272 ], [ %237, %258 ], [ %237, %254 ]
  %278 = zext i16 %276 to i32
  %279 = getelementptr i8, ptr %277, i32 %278
  %280 = getelementptr i8, ptr %279, i32 %215
  %281 = xor i1 %167, true
  %282 = zext i1 %167 to i32
  %283 = getelementptr i16, ptr %280, i32 %282
  %284 = load i16, ptr %283, align 2
  %285 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  %286 = getelementptr inbounds %struct.anon, ptr %285, i32 0, i32 1
  store i16 %284, ptr %286, align 2
  %287 = zext i1 %281 to i32
  %288 = getelementptr i16, ptr %280, i32 %287
  %289 = load i16, ptr %288, align 2
  store i16 %289, ptr %285, align 4
  br label %403

290:                                              ; preds = %236
  %291 = icmp eq i32 %217, 0
  br i1 %291, label %292, label %403

292:                                              ; preds = %290
  %293 = getelementptr i8, ptr %241, i32 2
  %294 = load ptr, ptr %210, align 4
  %295 = icmp ult ptr %293, %294
  br i1 %295, label %313, label %296

296:                                              ; preds = %292
  %297 = ptrtoint ptr %293 to i32
  %298 = ptrtoint ptr %294 to i32
  %299 = sub i32 %297, %298
  %300 = load i32, ptr %211, align 8
  %301 = load i32, ptr %212, align 4
  %302 = sub i32 %300, %301
  %303 = icmp ugt i32 %299, %302
  br i1 %303, label %304, label %313, !prof !9

304:                                              ; preds = %296
  %305 = icmp ult i32 %300, %299
  br i1 %305, label %403, label %306, !prof !9

306:                                              ; preds = %304
  %307 = sub i32 %299, %302
  %308 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %307) #24
  %309 = icmp eq ptr %308, null
  br i1 %309, label %403, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr %168, align 8
  %312 = load i16, ptr %170, align 4
  br label %313

313:                                              ; preds = %310, %296, %292
  %314 = phi i16 [ %238, %292 ], [ %312, %310 ], [ %238, %296 ]
  %315 = phi ptr [ %237, %292 ], [ %311, %310 ], [ %237, %296 ]
  %316 = zext i16 %314 to i32
  %317 = getelementptr i8, ptr %315, i32 %316
  %318 = getelementptr i8, ptr %317, i32 %215
  %319 = load i8, ptr %318, align 1
  %320 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i8 %319, ptr %320, align 4
  %321 = getelementptr i8, ptr %318, i32 1
  %322 = load i8, ptr %321, align 1
  %323 = getelementptr inbounds %struct.anon.1, ptr %320, i32 0, i32 1
  store i8 %322, ptr %323, align 1
  br label %403

324:                                              ; preds = %236
  %325 = icmp eq i32 %217, 0
  br i1 %325, label %326, label %403

326:                                              ; preds = %324
  %327 = getelementptr i8, ptr %241, i32 12
  %328 = load ptr, ptr %210, align 4
  %329 = icmp ult ptr %327, %328
  br i1 %329, label %347, label %330

330:                                              ; preds = %326
  %331 = ptrtoint ptr %327 to i32
  %332 = ptrtoint ptr %328 to i32
  %333 = sub i32 %331, %332
  %334 = load i32, ptr %211, align 8
  %335 = load i32, ptr %212, align 4
  %336 = sub i32 %334, %335
  %337 = icmp ugt i32 %333, %336
  br i1 %337, label %338, label %347, !prof !9

338:                                              ; preds = %330
  %339 = icmp ult i32 %334, %333
  br i1 %339, label %403, label %340, !prof !9

340:                                              ; preds = %338
  %341 = sub i32 %333, %336
  %342 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %341) #24
  %343 = icmp eq ptr %342, null
  br i1 %343, label %403, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr %168, align 8
  %346 = load i16, ptr %170, align 4
  br label %347

347:                                              ; preds = %344, %330, %326
  %348 = phi i16 [ %238, %326 ], [ %346, %344 ], [ %238, %330 ]
  %349 = phi ptr [ %237, %326 ], [ %345, %344 ], [ %237, %330 ]
  %350 = zext i16 %348 to i32
  %351 = getelementptr i8, ptr %349, i32 %350
  %352 = getelementptr i8, ptr %351, i32 %215
  %353 = load i16, ptr %352, align 1
  %354 = zext i16 %353 to i32
  %355 = and i32 %354, 32
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %403, label %357

357:                                              ; preds = %347
  %358 = getelementptr %struct.gre_base_hdr, ptr %352, i32 1
  %359 = lshr i32 %354, 7
  %360 = and i32 %359, 1
  %361 = getelementptr i32, ptr %358, i32 %360
  %362 = load i32, ptr %361, align 4
  %363 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i32 %362, ptr %363, align 4
  br label %403

364:                                              ; preds = %236
  %365 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %241, i32 0, i32 1
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i32
  %368 = shl nuw nsw i32 %367, 3
  %369 = add i32 %215, 8
  %370 = add i32 %369, %368
  %371 = icmp eq i32 %217, 0
  br i1 %371, label %372, label %403

372:                                              ; preds = %364
  %373 = getelementptr i8, ptr %240, i32 %370
  %374 = getelementptr i8, ptr %373, i32 3
  %375 = load ptr, ptr %210, align 4
  %376 = icmp ult ptr %374, %375
  br i1 %376, label %394, label %377

377:                                              ; preds = %372
  %378 = ptrtoint ptr %374 to i32
  %379 = ptrtoint ptr %375 to i32
  %380 = sub i32 %378, %379
  %381 = load i32, ptr %211, align 8
  %382 = load i32, ptr %212, align 4
  %383 = sub i32 %381, %382
  %384 = icmp ugt i32 %380, %383
  br i1 %384, label %385, label %394, !prof !9

385:                                              ; preds = %377
  %386 = icmp ult i32 %381, %380
  br i1 %386, label %403, label %387, !prof !9

387:                                              ; preds = %385
  %388 = sub i32 %380, %383
  %389 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %388) #24
  %390 = icmp eq ptr %389, null
  br i1 %390, label %403, label %391

391:                                              ; preds = %387
  %392 = load ptr, ptr %168, align 8
  %393 = load i16, ptr %170, align 4
  br label %394

394:                                              ; preds = %391, %377, %372
  %395 = phi i16 [ %238, %372 ], [ %393, %391 ], [ %238, %377 ]
  %396 = phi ptr [ %237, %372 ], [ %392, %391 ], [ %237, %377 ]
  %397 = zext i16 %395 to i32
  %398 = getelementptr i8, ptr %396, i32 %397
  %399 = getelementptr i8, ptr %398, i32 %370
  %400 = getelementptr inbounds %struct.ip6_mh, ptr %399, i32 0, i32 2
  %401 = load i8, ptr %400, align 1
  %402 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 4
  store i8 %401, ptr %402, align 4
  br label %403

403:                                              ; preds = %394, %387, %385, %364, %357, %347, %340, %338, %324, %313, %306, %304, %290, %275, %268, %266, %252, %236
  %404 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  store i8 %216, ptr %404, align 2
  br label %405

405:                                              ; preds = %403, %232, %230, %159, %149, %145, %143, %117, %113, %111, %81, %77, %75, %58, %37, %4
  %406 = phi i32 [ -97, %4 ], [ 0, %403 ], [ 0, %159 ], [ 0, %149 ], [ 0, %145 ], [ 0, %143 ], [ 0, %117 ], [ 0, %113 ], [ 0, %111 ], [ 0, %81 ], [ 0, %77 ], [ 0, %75 ], [ 0, %58 ], [ 0, %37 ], [ 0, %232 ], [ 0, %230 ]
  ret i32 %406
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef zeroext %3) #1 {
  %5 = alloca [2 x ptr], align 8
  %6 = alloca %struct.flowi, align 8
  %7 = alloca [6 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store i64 0, ptr %5, align 8, !annotation !26
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !26
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %8 = load volatile ptr, ptr @xfrm_if_cb, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 4
  %12 = tail call ptr %11(ptr noundef %2, i16 noundef zeroext %3) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xfrm_if, ptr %12, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.xfrm_if, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %14, %10, %4
  %20 = phi ptr [ %18, %14 ], [ @init_net, %10 ], [ @init_net, %4 ]
  %21 = phi i32 [ %16, %14 ], [ 0, %10 ], [ 0, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %22 = and i32 %1, -4
  %23 = and i32 %1, 3
  %24 = zext i16 %3 to i32
  %25 = call i32 @__xfrm_decode_session(ptr noundef %2, ptr noundef nonnull %6, i32 noundef %24, i32 noundef %22)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %433, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 12
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 20
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.skb_ext, ptr %34, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %32
  %42 = load i32, ptr %39, align 4
  br label %43

43:                                               ; preds = %47, %41
  %44 = phi i32 [ %42, %41 ], [ %45, %47 ]
  %45 = add i32 %44, -1
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr %struct.sec_path, ptr %39, i32 0, i32 2, i32 %45
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.xfrm_state, ptr %49, i32 0, i32 8
  %51 = call zeroext i1 @xfrm_selector_match(ptr noundef %50, ptr noundef nonnull %6, i16 noundef zeroext %3)
  br i1 %51, label %43, label %433

52:                                               ; preds = %43, %32, %27
  %53 = phi i1 [ true, %32 ], [ true, %27 ], [ false, %43 ]
  %54 = phi ptr [ null, %32 ], [ null, %27 ], [ %39, %43 ]
  %55 = icmp eq ptr %0, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %58 = load volatile i8, ptr %57, align 2
  %59 = icmp eq i8 %58, 12
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %60, %56
  %65 = phi ptr [ %62, %60 ], [ %0, %56 ]
  %66 = getelementptr %struct.sock, ptr %65, i32 0, i32 18, i32 %23
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = call fastcc ptr @xfrm_sk_policy_lookup(ptr noundef nonnull %65, i32 noundef %23, ptr noundef nonnull %6, i16 noundef zeroext %3, i32 noundef %21)
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %433, label %72

72:                                               ; preds = %69
  %73 = icmp eq ptr %70, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %72, %64, %60, %52
  %75 = trunc i32 %23 to i8
  %76 = call fastcc ptr @xfrm_policy_lookup(ptr noundef %20, ptr noundef nonnull %6, i16 noundef zeroext %3, i8 noundef zeroext %75, i32 noundef %21)
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi ptr [ %70, %72 ], [ %76, %74 ]
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %433, label %80

80:                                               ; preds = %77
  %81 = icmp eq ptr %78, null
  br i1 %81, label %82, label %135

82:                                               ; preds = %80
  %83 = icmp eq i32 %23, 3
  br i1 %83, label %433, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 40, i32 23
  %86 = load i8, ptr %85, align 4
  %87 = trunc i32 %23 to i24
  %88 = shl nuw nsw i24 %87, 3
  %89 = lshr i24 262657, %88
  %90 = trunc i24 %89 to i8
  %91 = and i8 %86, %90
  %92 = icmp ne i8 %91, 0
  %93 = or i1 %92, %53
  %94 = xor i1 %92, true
  %95 = zext i1 %94 to i32
  br i1 %93, label %433, label %96

96:                                               ; preds = %84
  %97 = load i32, ptr %54, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %433

99:                                               ; preds = %106, %96
  %100 = phi i32 [ %107, %106 ], [ 0, %96 ]
  %101 = getelementptr %struct.sec_path, ptr %54, i32 0, i32 2, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.xfrm_state, ptr %102, i32 0, i32 14, i32 1
  %104 = load i8, ptr %103, align 4
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = add nuw nsw i32 %100, 1
  %108 = icmp eq i32 %107, %97
  br i1 %108, label %433, label %99

109:                                              ; preds = %99
  %110 = load i8, ptr %28, align 1
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %433, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 20
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.skb_ext, ptr %115, i32 0, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 3
  %120 = getelementptr i8, ptr %115, i32 %119
  %121 = icmp eq ptr %120, null
  br i1 %121, label %433, label %122

122:                                              ; preds = %113
  %123 = load i32, ptr %120, align 4
  %124 = icmp sgt i32 %123, %100
  br i1 %124, label %125, label %433

125:                                              ; preds = %122
  %126 = getelementptr %struct.sec_path, ptr %120, i32 0, i32 2, i32 %100
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 45
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.xfrm_type, ptr %129, i32 0, i32 7
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %433, label %133

133:                                              ; preds = %125
  %134 = call i32 %131(ptr noundef %127, ptr noundef %2, ptr noundef nonnull %6) #24
  br label %433

135:                                              ; preds = %80
  %136 = call i64 @ktime_get_real_seconds() #24
  %137 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 14, i32 3
  store i64 %136, ptr %137, align 8
  store ptr %78, ptr %5, align 8
  %138 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 19
  %139 = load i8, ptr %138, align 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i8, ptr %28, align 1
  %143 = and i8 %142, 1
  br label %381

144:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !26
  %145 = load i8, ptr %28, align 1
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 20
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %struct.skb_ext, ptr %150, i32 0, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 3
  %155 = getelementptr i8, ptr %150, i32 %154
  br label %156

156:                                              ; preds = %148, %144
  %157 = phi ptr [ %155, %148 ], [ null, %144 ]
  %158 = icmp eq ptr %157, null
  %159 = select i1 %158, ptr @__xfrm_policy_check.dummy, ptr %157
  %160 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 21
  %161 = load i8, ptr %160, align 8
  %162 = icmp ugt i8 %161, 5
  br i1 %162, label %380, label %163

163:                                              ; preds = %156
  %164 = zext i8 %161 to i32
  %165 = icmp eq i8 %161, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %163
  %167 = getelementptr %struct.xfrm_policy, ptr %78, i32 0, i32 24, i32 0
  store ptr %167, ptr %7, align 4
  %168 = icmp eq i8 %161, 1
  br i1 %168, label %184, label %169

169:                                              ; preds = %166
  %170 = getelementptr %struct.xfrm_policy, ptr %78, i32 0, i32 24, i32 1
  %171 = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %170, ptr %171, align 4
  %172 = icmp eq i8 %161, 2
  br i1 %172, label %184, label %173

173:                                              ; preds = %169
  %174 = getelementptr %struct.xfrm_policy, ptr %78, i32 0, i32 24, i32 2
  %175 = getelementptr inbounds ptr, ptr %7, i32 2
  store ptr %174, ptr %175, align 4
  %176 = icmp eq i8 %161, 3
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = getelementptr %struct.xfrm_policy, ptr %78, i32 0, i32 24, i32 3
  %179 = getelementptr inbounds ptr, ptr %7, i32 3
  store ptr %178, ptr %179, align 4
  %180 = icmp eq i8 %161, 4
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = getelementptr %struct.xfrm_policy, ptr %78, i32 0, i32 24, i32 4
  %183 = getelementptr inbounds ptr, ptr %7, i32 4
  store ptr %182, ptr %183, align 4
  br label %184

184:                                              ; preds = %181, %177, %173, %169, %166, %163
  %185 = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 40, i32 23
  %186 = load i8, ptr %185, align 4
  switch i32 %23, label %196 [
    i32 0, label %187
    i32 1, label %190
    i32 2, label %193
  ]

187:                                              ; preds = %184
  %188 = and i8 %186, 1
  %189 = icmp eq i8 %188, 0
  br label %196

190:                                              ; preds = %184
  %191 = and i8 %186, 2
  %192 = icmp eq i8 %191, 0
  br label %196

193:                                              ; preds = %184
  %194 = and i8 %186, 4
  %195 = icmp eq i8 %194, 0
  br label %196

196:                                              ; preds = %193, %190, %187, %184
  %197 = phi i1 [ %195, %193 ], [ %192, %190 ], [ %189, %187 ], [ false, %184 ]
  %198 = icmp ne i8 %161, 0
  %199 = select i1 %197, i1 true, i1 %198
  br i1 %199, label %200, label %378

200:                                              ; preds = %359, %196
  %201 = phi i32 [ %203, %359 ], [ %164, %196 ]
  %202 = phi i32 [ %360, %359 ], [ 0, %196 ]
  %203 = add nsw i32 %201, -1
  %204 = icmp sgt i32 %201, 0
  br i1 %204, label %205, label %364

205:                                              ; preds = %200
  %206 = getelementptr ptr, ptr %7, i32 %203
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 6
  %209 = load i8, ptr %208, align 2
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 4
  %213 = load i8, ptr %212, align 4
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %359, label %215

215:                                              ; preds = %211, %205
  %216 = phi i32 [ %202, %211 ], [ -1, %205 ]
  %217 = load i32, ptr %159, align 4
  %218 = icmp sgt i32 %217, %202
  br i1 %218, label %219, label %359

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 2
  %221 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 1
  %222 = getelementptr %struct.xfrm_tmpl, ptr %207, i32 0, i32 1, i32 0, i32 1
  %223 = getelementptr %struct.xfrm_tmpl, ptr %207, i32 0, i32 1, i32 0, i32 2
  %224 = getelementptr %struct.xfrm_tmpl, ptr %207, i32 0, i32 1, i32 0, i32 3
  %225 = getelementptr inbounds %struct.xfrm_id, ptr %207, i32 0, i32 2
  %226 = getelementptr inbounds %struct.xfrm_id, ptr %207, i32 0, i32 1
  %227 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 3
  %228 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 4
  %229 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 7
  %230 = getelementptr inbounds %struct.xfrm_tmpl, ptr %207, i32 0, i32 8
  br label %231

231:                                              ; preds = %356, %219
  %232 = phi i32 [ %202, %219 ], [ %357, %356 ]
  %233 = getelementptr %struct.sec_path, ptr %159, i32 0, i32 2, i32 %232
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 28
  %236 = load volatile i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %274, label %238

238:                                              ; preds = %231
  br i1 %210, label %348, label %239

239:                                              ; preds = %238
  %240 = load i16, ptr %220, align 4
  switch i16 %240, label %348 [
    i16 2, label %241
    i16 10, label %248
  ]

241:                                              ; preds = %239
  %242 = load i32, ptr %221, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %346, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %242, %246
  br i1 %247, label %346, label %348

248:                                              ; preds = %239
  %249 = load i32, ptr %221, align 4
  %250 = load i32, ptr %222, align 4
  %251 = or i32 %250, %249
  %252 = load i32, ptr %223, align 4
  %253 = or i32 %251, %252
  %254 = load i32, ptr %224, align 4
  %255 = or i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %346, label %257

257:                                              ; preds = %248
  %258 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8
  %259 = load i32, ptr %258, align 4
  %260 = xor i32 %259, %249
  %261 = getelementptr %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = xor i32 %262, %250
  %264 = or i32 %263, %260
  %265 = getelementptr %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8, i32 0, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = xor i32 %266, %252
  %268 = or i32 %264, %267
  %269 = getelementptr %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8, i32 0, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = xor i32 %270, %254
  %272 = or i32 %268, %271
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %346, label %348

274:                                              ; preds = %231
  %275 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 7, i32 2
  %276 = load i8, ptr %275, align 4
  %277 = load i8, ptr %225, align 4
  %278 = icmp eq i8 %276, %277
  br i1 %278, label %279, label %348

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 7, i32 1
  %281 = load i32, ptr %280, align 8
  %282 = load i32, ptr %226, align 4
  %283 = icmp eq i32 %281, %282
  %284 = icmp eq i32 %282, 0
  %285 = or i1 %283, %284
  br i1 %285, label %286, label %348

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14
  %288 = load i32, ptr %287, align 8
  %289 = load i32, ptr %227, align 4
  %290 = icmp eq i32 %288, %289
  %291 = icmp eq i32 %289, 0
  %292 = or i1 %290, %291
  br i1 %292, label %293, label %348

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 1
  %295 = load i8, ptr %294, align 4
  %296 = load i8, ptr %228, align 4
  %297 = icmp eq i8 %295, %296
  br i1 %297, label %298, label %348

298:                                              ; preds = %293
  %299 = load i8, ptr %229, align 1
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %298
  %302 = load i32, ptr %230, align 4
  %303 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 3
  %304 = load i8, ptr %303, align 2
  %305 = zext i8 %304 to i32
  %306 = shl nuw i32 1, %305
  %307 = and i32 %306, %302
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  switch i8 %276, label %310 [
    i8 -1, label %348
    i8 108, label %348
    i8 51, label %348
    i8 50, label %348
  ]

310:                                              ; preds = %309, %301, %298
  %311 = icmp eq i8 %295, 0
  br i1 %311, label %346, label %312

312:                                              ; preds = %310
  switch i16 %3, label %348 [
    i16 2, label %313
    i16 10, label %320
  ]

313:                                              ; preds = %312
  %314 = load i32, ptr %221, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %346, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %314, %318
  br i1 %319, label %346, label %348

320:                                              ; preds = %312
  %321 = load i32, ptr %221, align 4
  %322 = load i32, ptr %222, align 4
  %323 = or i32 %322, %321
  %324 = load i32, ptr %223, align 4
  %325 = or i32 %323, %324
  %326 = load i32, ptr %224, align 4
  %327 = or i32 %325, %326
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %346, label %329

329:                                              ; preds = %320
  %330 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8
  %331 = load i32, ptr %330, align 4
  %332 = xor i32 %331, %321
  %333 = getelementptr %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8, i32 0, i32 1
  %334 = load i32, ptr %333, align 4
  %335 = xor i32 %334, %322
  %336 = or i32 %335, %332
  %337 = getelementptr %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8, i32 0, i32 2
  %338 = load i32, ptr %337, align 4
  %339 = xor i32 %338, %324
  %340 = or i32 %336, %339
  %341 = getelementptr %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 8, i32 0, i32 3
  %342 = load i32, ptr %341, align 4
  %343 = xor i32 %342, %326
  %344 = or i32 %340, %343
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %329, %320, %316, %313, %310, %257, %248, %244, %241
  %347 = add nsw i32 %232, 1
  br label %359

348:                                              ; preds = %329, %316, %312, %309, %309, %309, %309, %293, %286, %279, %274, %257, %244, %239, %238
  %349 = getelementptr inbounds %struct.xfrm_state, ptr %234, i32 0, i32 14, i32 1
  %350 = load i8, ptr %349, align 4
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = icmp eq i32 %216, -1
  %354 = sub nsw i32 -2, %232
  %355 = select i1 %353, i32 %354, i32 %216
  br label %359

356:                                              ; preds = %348
  %357 = add i32 %232, 1
  %358 = icmp eq i32 %357, %217
  br i1 %358, label %359, label %231

359:                                              ; preds = %356, %352, %346, %215, %211
  %360 = phi i32 [ %347, %346 ], [ %202, %211 ], [ %355, %352 ], [ %216, %215 ], [ %216, %356 ]
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %200

362:                                              ; preds = %359
  %363 = sub nsw i32 -2, %360
  br label %378

364:                                              ; preds = %200
  %365 = load i32, ptr %159, align 4
  %366 = icmp sgt i32 %365, %202
  br i1 %366, label %367, label %377

367:                                              ; preds = %374, %364
  %368 = phi i32 [ %375, %374 ], [ %202, %364 ]
  %369 = getelementptr %struct.sec_path, ptr %159, i32 0, i32 2, i32 %368
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.xfrm_state, ptr %370, i32 0, i32 14, i32 1
  %372 = load i8, ptr %371, align 4
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %367
  %375 = add i32 %368, 1
  %376 = icmp eq i32 %375, %365
  br i1 %376, label %377, label %367

377:                                              ; preds = %374, %364
  call fastcc void @xfrm_pols_put(ptr noundef nonnull %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  br label %433

378:                                              ; preds = %367, %362, %196
  %379 = phi i32 [ -1, %196 ], [ %363, %362 ], [ %368, %367 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  br label %381

380:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  br label %409

381:                                              ; preds = %378, %141
  %382 = phi i8 [ %143, %141 ], [ %146, %378 ]
  %383 = phi i32 [ -1, %141 ], [ %379, %378 ]
  %384 = icmp eq i8 %382, 0
  br i1 %384, label %409, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 20
  %387 = load ptr, ptr %386, align 8
  %388 = getelementptr inbounds %struct.skb_ext, ptr %387, i32 0, i32 1
  %389 = load i8, ptr %388, align 1
  %390 = zext i8 %389 to i32
  %391 = shl nuw nsw i32 %390, 3
  %392 = getelementptr i8, ptr %387, i32 %391
  %393 = icmp eq ptr %392, null
  %394 = icmp slt i32 %383, 0
  %395 = or i1 %394, %393
  br i1 %395, label %409, label %396

396:                                              ; preds = %385
  %397 = load i32, ptr %392, align 4
  %398 = icmp sgt i32 %397, %383
  br i1 %398, label %399, label %409

399:                                              ; preds = %396
  %400 = getelementptr %struct.sec_path, ptr %392, i32 0, i32 2, i32 %383
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr inbounds %struct.xfrm_state, ptr %401, i32 0, i32 45
  %403 = load ptr, ptr %402, align 8
  %404 = getelementptr inbounds %struct.xfrm_type, ptr %403, i32 0, i32 7
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %399
  %408 = call i32 %405(ptr noundef %401, ptr noundef %2, ptr noundef nonnull %6) #24
  br label %409

409:                                              ; preds = %407, %399, %396, %385, %381, %380
  %410 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %410) #24, !srcloc !14
  %411 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %410, ptr %410, i32 1, ptr elementtype(i32) %410) #24, !srcloc !22
  %412 = extractvalue { i32, i32, i32 } %411, 0
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %417, label %414

414:                                              ; preds = %409
  %415 = icmp sgt i32 %412, 0
  br i1 %415, label %433, label %416, !prof !12

416:                                              ; preds = %414
  call void @refcount_warn_saturate(ptr noundef %410, i32 noundef 3) #24
  br label %433

417:                                              ; preds = %409
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %418 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 15, i32 1
  %419 = load i8, ptr %418, align 8
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %421, label %422, !prof !9

421:                                              ; preds = %417
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 6
  %424 = call i32 @del_timer(ptr noundef %423) #24
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 16, i32 1
  %428 = call i32 @del_timer(ptr noundef %427) #24
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %426, %422
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

431:                                              ; preds = %426
  %432 = getelementptr inbounds %struct.xfrm_policy, ptr %78, i32 0, i32 26
  call void @call_rcu(ptr noundef %432, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %433

433:                                              ; preds = %431, %416, %414, %377, %133, %125, %122, %113, %109, %106, %96, %84, %82, %77, %69, %47, %19
  %434 = phi i32 [ 0, %19 ], [ 0, %69 ], [ 0, %77 ], [ %95, %84 ], [ 0, %109 ], [ 0, %113 ], [ 0, %122 ], [ 0, %125 ], [ 0, %133 ], [ 1, %377 ], [ 0, %82 ], [ 1, %96 ], [ 0, %431 ], [ 0, %416 ], [ 0, %414 ], [ 1, %106 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret i32 %434
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_lookup(ptr noundef %0, ptr noundef readonly %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.xfrm_pol_inexact_key, align 8
  %7 = alloca %struct.xfrm_pol_inexact_candidates, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #24, !annotation !26
  switch i16 %2, label %274 [
    i16 2, label %8
    i16 10, label %11
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 2
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %12, %11 ], [ %9, %8 ]
  %16 = phi ptr [ %13, %11 ], [ %10, %8 ]
  %17 = icmp eq ptr %15, null
  %18 = icmp eq ptr %16, null
  %19 = select i1 %17, i1 true, i1 %18, !prof !9
  br i1 %19, label %274, label %20, !prof !9

20:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 30
  %22 = zext i8 %3 to i32
  %23 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %22, i32 1
  %24 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %22, i32 4
  %25 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %22, i32 5
  %26 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %22, i32 2
  %27 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %22, i32 3
  %28 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %22
  %29 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %6, i32 0, i32 2
  %32 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %6, i32 0, i32 3
  %33 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %6, i32 0, i32 4
  %34 = getelementptr inbounds [4 x ptr], ptr %7, i32 0, i32 3
  %35 = getelementptr inbounds [4 x ptr], ptr %7, i32 0, i32 2
  %36 = getelementptr inbounds [4 x ptr], ptr %7, i32 0, i32 1
  br label %37

37:                                               ; preds = %109, %20
  %38 = load volatile i32, ptr %21, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %41, %37
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !41
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !42
  %42 = load volatile i32, ptr %21, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %38, %37 ], [ %42, %41 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !43
  %47 = load i32, ptr %23, align 4
  switch i16 %2, label %104 [
    i16 2, label %54
    i16 10, label %48
  ]

48:                                               ; preds = %45
  %49 = load i8, ptr %24, align 2
  %50 = load i8, ptr %25, align 1
  %51 = call fastcc i32 @__xfrm6_pref_hash(ptr noundef %15, i8 noundef zeroext %49) #24
  %52 = call fastcc i32 @__xfrm6_pref_hash(ptr noundef %16, i8 noundef zeroext %50) #24
  %53 = xor i32 %52, %51
  br label %104

54:                                               ; preds = %45
  %55 = load i8, ptr %26, align 4
  %56 = load i8, ptr %27, align 1
  %57 = load i32, ptr %15, align 4
  %58 = zext i8 %55 to i32
  %59 = icmp eq i8 %55, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = icmp ult i8 %55, 32
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = sub nsw i32 32, %58
  %64 = shl nsw i32 -1, %63
  br label %65

65:                                               ; preds = %62, %60, %54
  %66 = phi i32 [ %64, %62 ], [ -1, %60 ], [ 0, %54 ]
  %67 = load i32, ptr %16, align 4
  %68 = zext i8 %56 to i32
  %69 = icmp eq i8 %56, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = icmp ult i8 %56, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = sub nsw i32 32, %68
  %74 = shl nsw i32 -1, %73
  br label %75

75:                                               ; preds = %72, %70, %65
  %76 = phi i32 [ %74, %72 ], [ -1, %70 ], [ 0, %65 ]
  %77 = call i32 @llvm.bswap.i32(i32 %67) #24
  %78 = call i32 @llvm.bswap.i32(i32 %57) #24
  %79 = and i32 %66, %78
  %80 = and i32 %76, %77
  %81 = add i32 %79, -559038729
  %82 = add i32 %80, -559038729
  %83 = xor i32 %82, -559038729
  %84 = call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 14) #24
  %85 = sub i32 %83, %84
  %86 = xor i32 %85, %81
  %87 = call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11) #24
  %88 = sub i32 %86, %87
  %89 = xor i32 %88, %82
  %90 = call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 25) #24
  %91 = sub i32 %89, %90
  %92 = xor i32 %91, %85
  %93 = call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 16) #24
  %94 = sub i32 %92, %93
  %95 = xor i32 %94, %88
  %96 = call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 4) #24
  %97 = sub i32 %95, %96
  %98 = xor i32 %97, %91
  %99 = call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 14) #24
  %100 = sub i32 %98, %99
  %101 = xor i32 %100, %94
  %102 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 24) #24
  %103 = sub i32 %101, %102
  br label %104

104:                                              ; preds = %75, %48, %45
  %105 = phi i32 [ %53, %48 ], [ %103, %75 ], [ 0, %45 ]
  %106 = load volatile ptr, ptr %28, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !44
  %107 = load volatile i32, ptr %21, align 4
  %108 = icmp eq i32 %107, %46
  br i1 %108, label %110, label %109

109:                                              ; preds = %270, %242, %104
  br label %37

110:                                              ; preds = %104
  %111 = lshr i32 %105, 16
  %112 = xor i32 %111, %105
  %113 = and i32 %112, %47
  %114 = getelementptr %struct.hlist_head, ptr %106, i32 %113
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %144, label %117

117:                                              ; preds = %141, %110
  %118 = phi ptr [ %142, %141 ], [ %115, %110 ]
  %119 = getelementptr inbounds %struct.xfrm_policy, ptr %118, i32 0, i32 12
  %120 = getelementptr inbounds %struct.xfrm_policy, ptr %118, i32 0, i32 22
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, %2
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.xfrm_policy, ptr %118, i32 0, i32 10
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, %4
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load i32, ptr %29, align 8
  %129 = getelementptr inbounds %struct.xfrm_policy, ptr %118, i32 0, i32 11
  %130 = getelementptr inbounds %struct.xfrm_policy, ptr %118, i32 0, i32 11, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, %128
  %133 = load i32, ptr %129, align 8
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.xfrm_policy, ptr %118, i32 0, i32 18
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call zeroext i1 @xfrm_selector_match(ptr noundef %119, ptr noundef %1, i16 noundef zeroext %2) #24
  br i1 %140, label %144, label %141

141:                                              ; preds = %139, %135, %127, %123, %117
  %142 = load volatile ptr, ptr %118, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %117

144:                                              ; preds = %141, %139, %110
  %145 = phi ptr [ null, %110 ], [ null, %141 ], [ %118, %139 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store i32 %4, ptr %30, align 8
  store i16 %2, ptr %31, align 4
  store i8 %3, ptr %32, align 2
  store i8 0, ptr %33, align 1
  %146 = call fastcc ptr @rhashtable_lookup(ptr noundef nonnull %6, [7 x i32] [i32 0, i32 524288, i32 0, i32 65536, i32 ptrtoint (ptr @xfrm_pol_bin_key to i32), i32 ptrtoint (ptr @xfrm_pol_bin_obj to i32), i32 ptrtoint (ptr @xfrm_pol_bin_cmp to i32)]) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  %147 = icmp eq ptr %146, null
  br i1 %147, label %242, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %146, i32 0, i32 2
  %150 = load i16, ptr %149, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 12, i1 false) #24
  %151 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %146, i32 0, i32 2
  store ptr %151, ptr %34, align 4
  %152 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %146, i32 0, i32 4
  %153 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %146, i32 0, i32 3
  %154 = call fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %152, ptr noundef %153, ptr noundef %15, i16 noundef zeroext %150) #24
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %154, i32 0, i32 4
  store ptr %157, ptr %35, align 4
  %158 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %154, i32 0, i32 3
  %159 = call fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %158, ptr noundef %153, ptr noundef %16, i16 noundef zeroext %150) #24
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %159, i32 0, i32 4
  store ptr %162, ptr %7, align 4
  br label %163

163:                                              ; preds = %161, %156, %148
  %164 = phi ptr [ %162, %161 ], [ null, %156 ], [ null, %148 ]
  %165 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %146, i32 0, i32 5
  %166 = call fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %165, ptr noundef %153, ptr noundef %16, i16 noundef zeroext %150) #24
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %166, i32 0, i32 4
  store ptr %169, ptr %36, align 4
  br label %170

170:                                              ; preds = %168, %163
  br label %171

171:                                              ; preds = %234, %170
  %172 = phi ptr [ %236, %234 ], [ %164, %170 ]
  %173 = phi i32 [ %232, %234 ], [ 0, %170 ]
  %174 = phi ptr [ %231, %234 ], [ %145, %170 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.xfrm_policy, ptr %174, i32 0, i32 8
  %178 = load i32, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %171
  %180 = phi i32 [ %178, %176 ], [ -1, %171 ]
  %181 = icmp eq ptr %172, null
  br i1 %181, label %230, label %182

182:                                              ; preds = %179
  %183 = load volatile ptr, ptr %172, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %230, label %185

185:                                              ; preds = %224, %182
  %186 = phi ptr [ %225, %224 ], [ %183, %182 ]
  %187 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = icmp ugt i32 %188, %180
  br i1 %189, label %230, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 12
  %192 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 22
  %193 = load i16, ptr %192, align 2
  %194 = icmp eq i16 %193, %2
  br i1 %194, label %195, label %224

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 10
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, %4
  br i1 %198, label %199, label %224

199:                                              ; preds = %195
  %200 = load i32, ptr %29, align 8
  %201 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 11
  %202 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 11, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, %200
  %205 = load i32, ptr %201, align 8
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 18
  %209 = load i8, ptr %208, align 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %207
  %212 = call zeroext i1 @xfrm_selector_match(ptr noundef %191, ptr noundef %1, i16 noundef zeroext %2) #24
  br i1 %212, label %213, label %224

213:                                              ; preds = %211
  %214 = xor i1 %175, true
  %215 = icmp eq i32 %188, %180
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.xfrm_policy, ptr %174, i32 0, i32 5
  %219 = load i32, ptr %218, align 8
  %220 = getelementptr inbounds %struct.xfrm_policy, ptr %186, i32 0, i32 5
  %221 = load i32, ptr %220, align 8
  %222 = icmp ult i32 %219, %221
  %223 = select i1 %222, ptr %174, ptr %186
  br label %227

224:                                              ; preds = %211, %207, %199, %195, %190
  %225 = load volatile ptr, ptr %186, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %230, label %185

227:                                              ; preds = %217, %213
  %228 = phi ptr [ %186, %213 ], [ %223, %217 ]
  %229 = icmp ugt ptr %228, inttoptr (i32 -4096 to ptr)
  br i1 %229, label %237, label %230

230:                                              ; preds = %227, %224, %185, %182, %179
  %231 = phi ptr [ %228, %227 ], [ %174, %179 ], [ %174, %182 ], [ %174, %185 ], [ %174, %224 ]
  %232 = add nuw nsw i32 %173, 1
  %233 = icmp eq i32 %232, 4
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = getelementptr [4 x ptr], ptr %7, i32 0, i32 %232
  %236 = load ptr, ptr %235, align 4
  br label %171

237:                                              ; preds = %230, %227
  %238 = phi ptr [ %228, %227 ], [ %231, %230 ]
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %237
  %241 = icmp ugt ptr %238, inttoptr (i32 -4096 to ptr)
  br i1 %241, label %272, label %242

242:                                              ; preds = %240, %237, %144
  %243 = phi ptr [ %238, %240 ], [ %145, %237 ], [ %145, %144 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !44
  %244 = load volatile i32, ptr %21, align 4
  %245 = icmp eq i32 %244, %46
  br i1 %245, label %246, label %109

246:                                              ; preds = %242
  %247 = icmp eq ptr %243, null
  br i1 %247, label %272, label %248

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.xfrm_policy, ptr %243, i32 0, i32 4
  %250 = load volatile i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %264, label %252

252:                                              ; preds = %262, %248
  %253 = phi i32 [ %260, %262 ], [ %250, %248 ]
  %254 = add i32 %253, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %249) #24, !srcloc !14
  br label %255

255:                                              ; preds = %255, %252
  %256 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %249, ptr %249, i32 %253, i32 %254, ptr elementtype(i32) %249) #24, !srcloc !40
  %257 = extractvalue { i32, i32 } %256, 0
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %255

259:                                              ; preds = %255
  %260 = extractvalue { i32, i32 } %256, 1
  %261 = icmp eq i32 %260, %253
  br i1 %261, label %264, label %262, !prof !12

262:                                              ; preds = %259
  %263 = icmp eq i32 %260, 0
  br i1 %263, label %264, label %252

264:                                              ; preds = %262, %259, %248
  %265 = phi i32 [ 0, %248 ], [ 0, %262 ], [ %253, %259 ]
  %266 = add i32 %265, 1
  %267 = or i32 %266, %265
  %268 = icmp sgt i32 %267, -1
  br i1 %268, label %270, label %269, !prof !12

269:                                              ; preds = %264
  call void @refcount_warn_saturate(ptr noundef %249, i32 noundef 0) #24
  br label %270

270:                                              ; preds = %269, %264
  %271 = icmp eq i32 %265, 0
  br i1 %271, label %109, label %272

272:                                              ; preds = %270, %246, %240
  %273 = phi ptr [ %238, %240 ], [ %243, %270 ], [ null, %246 ]
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %274

274:                                              ; preds = %272, %14, %5
  %275 = phi ptr [ %273, %272 ], [ null, %14 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  ret ptr %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xfrm_route_forward(ptr noundef %0, i16 noundef zeroext %1) #1 {
  %3 = alloca %struct.flowi, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !26
  %4 = zext i16 %1 to i32
  %5 = call i32 @__xfrm_decode_session(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4, i32 noundef 0) #24
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = icmp ugt i32 %9, 1
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = and i32 %9, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #24, !srcloc !14
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 1, ptr elementtype(i32) %17) #24, !srcloc !30
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi ptr [ null, %14 ], [ %16, %21 ]
  %24 = ptrtoint ptr %23 to i32
  store i32 %24, ptr %8, align 8
  %25 = icmp ne ptr %23, null
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = lshr i16 %28, 14
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 1
  %32 = or i8 %31, %26
  %33 = zext i8 %32 to i16
  %34 = shl nuw nsw i16 %33, 14
  %35 = and i16 %28, -16385
  %36 = or i16 %34, %35
  store i16 %36, ptr %27, align 2
  br label %37

37:                                               ; preds = %22, %7
  %38 = phi i32 [ %9, %7 ], [ %24, %22 ]
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = inttoptr i32 %39 to ptr
  %43 = call ptr @xfrm_lookup_with_ifid(ptr noundef nonnull @init_net, ptr noundef nonnull %42, ptr noundef nonnull %3, ptr noundef null, i32 noundef 2, i32 noundef 0) #24
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %45 = select i1 %44, ptr null, ptr %43
  %46 = xor i1 %44, true
  %47 = zext i1 %46 to i32
  %48 = icmp ne ptr %45, null
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %51 = load i16, ptr %50, align 2
  %52 = lshr i16 %51, 14
  %53 = trunc i16 %52 to i8
  %54 = and i8 %53, 1
  %55 = or i8 %54, %49
  %56 = zext i8 %55 to i16
  %57 = shl nuw nsw i16 %56, 14
  %58 = and i16 %51, -16385
  %59 = or i16 %57, %58
  store i16 %59, ptr %50, align 2
  %60 = ptrtoint ptr %45 to i32
  store i32 %60, ptr %8, align 8
  br label %61

61:                                               ; preds = %41, %37, %2
  %62 = phi i32 [ %47, %41 ], [ 0, %2 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #24
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_dst_ifdown(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #1 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  br label %5

5:                                                ; preds = %42, %2
  %6 = phi ptr [ %0, %2 ], [ %17, %42 ]
  %7 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 7
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.xfrm_dst, ptr %6, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 4
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  store ptr %27, ptr %17, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !45
  %31 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 99
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #21, !srcloc !46
  %37 = add i32 %36, %33
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #24, !srcloc !47
  br label %41

41:                                               ; preds = %29, %26
  br i1 %3, label %42, label %43

42:                                               ; preds = %43, %41
  br label %5

43:                                               ; preds = %41
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !45
  %45 = load ptr, ptr %4, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #21, !srcloc !46
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #24, !srcloc !47
  br label %42

54:                                               ; preds = %23, %19, %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_policy_register_afinfo(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 10
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3915, i32 noundef 9, ptr noundef null) #24
  br label %56

5:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfrm_policy_afinfo_lock) #24
  %6 = getelementptr [11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %52, !prof !12

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 16
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !12

14:                                               ; preds = %9
  %15 = load ptr, ptr @xfrm_dst_cache, align 4
  store ptr %15, ptr %11, align 64
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %16
  store ptr @xfrm_dst_check, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 4
  %23 = load ptr, ptr %22, align 16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %21
  store ptr @xfrm_default_advmss, ptr %22, align 16
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !12

30:                                               ; preds = %26
  store ptr @xfrm_mtu, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !12

35:                                               ; preds = %31
  store ptr @xfrm_negative_advice, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 10
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !12

40:                                               ; preds = %36
  store ptr @xfrm_link_failure, ptr %37, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 14
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !12

45:                                               ; preds = %41
  store ptr @xfrm_neigh_lookup, ptr %42, align 8
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !12

50:                                               ; preds = %46
  store ptr @xfrm_confirm_neigh, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  store volatile ptr %0, ptr %6, align 4
  br label %52

52:                                               ; preds = %51, %5
  %53 = phi i32 [ 0, %51 ], [ -17, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !27
  %54 = load i16, ptr @xfrm_policy_afinfo_lock, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr @xfrm_policy_afinfo_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !28
  br label %56

56:                                               ; preds = %52, %4
  %57 = phi i32 [ -97, %4 ], [ %53, %52 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xfrm_dst_check(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca [6 x ptr], align 4
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp slt i16 %5, 0
  br i1 %6, label %7, label %205

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #24, !annotation !26
  %8 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 8
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16, %11
  %23 = phi ptr [ %18, %16 ], [ %0, %11 ]
  %24 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dst_entry, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dst_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr %29(ptr noundef %23, i32 noundef %25) #24
  br label %31

31:                                               ; preds = %22, %16
  %32 = phi ptr [ %30, %22 ], [ %18, %16 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %203, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %203, label %42

42:                                               ; preds = %37, %34
  %43 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 64
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %204

47:                                               ; preds = %42
  %48 = load ptr, ptr %8, align 4
  br label %49

49:                                               ; preds = %141, %47
  %50 = phi ptr [ %144, %141 ], [ %48, %47 ]
  %51 = phi ptr [ %142, %141 ], [ %0, %47 ]
  %52 = phi i32 [ %130, %141 ], [ 0, %47 ]
  %53 = phi i32 [ %77, %141 ], [ 0, %47 ]
  %54 = getelementptr inbounds %struct.dst_entry, ptr %51, i32 0, i32 4
  %55 = getelementptr inbounds %struct.xfrm_state, ptr %50, i32 0, i32 13, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %58, label %203

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.xfrm_state, ptr %50, i32 0, i32 12
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %203

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 8
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.xfrm_policy, ptr %72, i32 0, i32 7
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %203

76:                                               ; preds = %68, %64
  %77 = add i32 %53, 1
  %78 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %53
  store ptr %51, ptr %78, align 4
  %79 = load ptr, ptr %54, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.dst_entry, ptr %51, i32 0, i32 7
  %83 = load i16, ptr %82, align 4
  %84 = and i16 %83, 64
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81, %76
  %87 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi ptr [ %88, %86 ], [ null, %81 ]
  %91 = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.dst_ops, ptr %92, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 %94(ptr noundef %90) #24
  %96 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 10
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, %95
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  store i32 %95, ptr %96, align 4
  br label %100

100:                                              ; preds = %99, %89
  %101 = phi i32 [ %77, %99 ], [ %52, %89 ]
  %102 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.dst_entry, ptr %103, i32 0, i32 8
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 11
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dst_entry, ptr %103, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.dst_ops, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = tail call ptr %113(ptr noundef %103, i32 noundef %109) #24
  br label %115

115:                                              ; preds = %107, %100
  %116 = phi ptr [ %114, %107 ], [ %103, %100 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %203, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %102, align 4
  %120 = getelementptr inbounds %struct.dst_entry, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.dst_ops, ptr %121, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef %119) #24
  %125 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 9
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, %124
  br i1 %127, label %129, label %128

128:                                              ; preds = %118
  store i32 %124, ptr %125, align 4
  br label %129

129:                                              ; preds = %128, %118
  %130 = phi i32 [ %77, %128 ], [ %101, %118 ]
  %131 = load ptr, ptr %54, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.dst_entry, ptr %51, i32 0, i32 7
  %135 = load i16, ptr %134, align 4
  %136 = and i16 %135, 64
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133, %129
  %139 = getelementptr inbounds %struct.xfrm_dst, ptr %51, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi ptr [ %140, %138 ], [ null, %133 ]
  %143 = getelementptr inbounds %struct.dst_entry, ptr %142, i32 0, i32 4
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %49

146:                                              ; preds = %141
  %147 = icmp eq i32 %130, 0
  br i1 %147, label %204, label %148, !prof !12

148:                                              ; preds = %146
  %149 = add i32 %130, -1
  %150 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %149
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.xfrm_dst, ptr %151, i32 0, i32 10
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dst_entry, ptr %151, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = tail call i32 @xfrm_state_mtu(ptr noundef %155, i32 noundef %153) #24
  %157 = getelementptr inbounds %struct.dst_entry, ptr %151, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160, !prof !9

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.xfrm_dst, ptr %151, i32 0, i32 9
  %162 = load i32, ptr %161, align 4
  %163 = tail call i32 @llvm.umin.i32(i32 %156, i32 %162) #24
  br label %165

164:                                              ; preds = %189, %148
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #24, !srcloc !38
  unreachable

165:                                              ; preds = %189, %160
  %166 = phi i32 [ %201, %189 ], [ %158, %160 ]
  %167 = phi i32 [ %199, %189 ], [ %163, %160 ]
  %168 = phi i32 [ %170, %189 ], [ %130, %160 ]
  %169 = phi ptr [ %192, %189 ], [ %151, %160 ]
  %170 = add i32 %168, -1
  %171 = and i32 %166, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.dst_entry, ptr %169, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.dst_ops, ptr %175, i32 0, i32 6
  %177 = load ptr, ptr %176, align 8
  %178 = tail call ptr %177(ptr noundef %169, i32 noundef %166) #24
  br label %182

179:                                              ; preds = %165
  %180 = and i32 %166, -4
  %181 = inttoptr i32 %180 to ptr
  br label %182

182:                                              ; preds = %179, %173
  %183 = phi ptr [ %178, %173 ], [ %181, %179 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr i32, ptr %183, i32 1
  store i32 %167, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %182
  %188 = icmp eq i32 %170, 0
  br i1 %188, label %204, label %189

189:                                              ; preds = %187
  %190 = add i32 %168, -2
  %191 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %190
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.xfrm_dst, ptr %192, i32 0, i32 10
  store i32 %167, ptr %193, align 4
  %194 = getelementptr inbounds %struct.dst_entry, ptr %192, i32 0, i32 4
  %195 = load ptr, ptr %194, align 4
  %196 = tail call i32 @xfrm_state_mtu(ptr noundef %195, i32 noundef %167) #24
  %197 = getelementptr inbounds %struct.xfrm_dst, ptr %192, i32 0, i32 9
  %198 = load i32, ptr %197, align 4
  %199 = tail call i32 @llvm.umin.i32(i32 %196, i32 %198) #24
  %200 = getelementptr inbounds %struct.dst_entry, ptr %192, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %164, label %165, !prof !9

203:                                              ; preds = %115, %68, %58, %49, %37, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  br label %205

204:                                              ; preds = %187, %146, %42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  br label %205

205:                                              ; preds = %204, %203, %2
  %206 = phi ptr [ %0, %204 ], [ null, %203 ], [ null, %2 ]
  ret ptr %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm_default_advmss(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ %0, %5 ]
  %15 = getelementptr inbounds %struct.dst_entry, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr i32, ptr %18, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.dst_entry, ptr %14, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dst_ops, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = tail call i32 %26(ptr noundef %14) #24
  br label %28

28:                                               ; preds = %22, %13
  %29 = phi i32 [ %20, %13 ], [ %27, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm_mtu(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr i32, ptr %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 64
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %20, %18 ], [ %0, %13 ]
  %23 = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dst_ops, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %22) #24
  br label %28

28:                                               ; preds = %21, %1
  %29 = phi i32 [ %27, %21 ], [ %7, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xfrm_negative_advice(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @dst_release(ptr noundef nonnull %0) #24
  br label %8

8:                                                ; preds = %7, %3, %1
  %9 = phi ptr [ null, %7 ], [ %0, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @xfrm_link_failure(ptr nocapture noundef %0) #11 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xfrm_neigh_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 64
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  br label %50

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %1, null
  %19 = select i1 %18, i1 true, i1 %6
  br i1 %19, label %50, label %20

20:                                               ; preds = %45, %15
  %21 = phi ptr [ %48, %45 ], [ %5, %15 ]
  %22 = phi ptr [ %46, %45 ], [ %2, %15 ]
  %23 = phi ptr [ %25, %45 ], [ %0, %15 ]
  %24 = getelementptr inbounds %struct.xfrm_dst, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 14, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 45
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.xfrm_type, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 26
  %39 = load ptr, ptr %38, align 8
  br label %45

40:                                               ; preds = %29
  %41 = and i32 %34, 4
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 7
  %44 = select i1 %42, ptr %43, ptr %22
  br label %45

45:                                               ; preds = %40, %37, %20
  %46 = phi ptr [ %22, %20 ], [ %39, %37 ], [ %44, %40 ]
  %47 = getelementptr inbounds %struct.dst_entry, ptr %25, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %20

50:                                               ; preds = %45, %15, %12, %7
  %51 = phi ptr [ %17, %15 ], [ %0, %7 ], [ %14, %12 ], [ %17, %45 ]
  %52 = phi ptr [ %2, %15 ], [ %2, %7 ], [ %2, %12 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct.dst_entry, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dst_ops, ptr %54, i32 0, i32 14
  %56 = load ptr, ptr %55, align 8
  %57 = tail call ptr %56(ptr noundef %51, ptr noundef %1, ptr noundef %52) #24
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_confirm_neigh(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 7
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  br label %47

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.xfrm_dst, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %42, %14
  %18 = phi ptr [ %45, %42 ], [ %4, %14 ]
  %19 = phi ptr [ %43, %42 ], [ %1, %14 ]
  %20 = phi ptr [ %22, %42 ], [ %0, %14 ]
  %21 = getelementptr inbounds %struct.xfrm_dst, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 45
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.xfrm_type, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 26
  %36 = load ptr, ptr %35, align 8
  br label %42

37:                                               ; preds = %26
  %38 = and i32 %31, 4
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 7
  %41 = select i1 %39, ptr %40, ptr %19
  br label %42

42:                                               ; preds = %37, %34, %17
  %43 = phi ptr [ %19, %17 ], [ %36, %34 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %17

47:                                               ; preds = %42, %11, %6
  %48 = phi ptr [ %13, %11 ], [ %0, %6 ], [ %16, %42 ]
  %49 = phi ptr [ %1, %11 ], [ %1, %6 ], [ %43, %42 ]
  %50 = getelementptr inbounds %struct.dst_entry, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dst_ops, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %48, ptr noundef %49) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_policy_unregister_afinfo(ptr noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr @xfrm_policy_afinfo, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 1), align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %35, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 2), align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 3), align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 4), align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 5), align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 6), align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 7), align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 8), align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 9), align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 10), align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %1
  %36 = phi ptr [ @xfrm_policy_afinfo, %1 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 1), %5 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 2), %8 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 3), %11 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 4), %14 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 5), %17 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 6), %20 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 7), %23 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 8), %26 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 9), %29 ], [ getelementptr inbounds ([11 x ptr], ptr @xfrm_policy_afinfo, i32 0, i32 10), %32 ]
  store volatile ptr null, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %32
  tail call void @synchronize_rcu() #24
  %38 = getelementptr inbounds %struct.dst_ops, ptr %2, i32 0, i32 16
  store ptr null, ptr %38, align 64
  %39 = getelementptr inbounds %struct.dst_ops, ptr %2, i32 0, i32 3
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dst_ops, ptr %2, i32 0, i32 9
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dst_ops, ptr %2, i32 0, i32 10
  store ptr null, ptr %41, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_if_register_cb(ptr noundef %0) #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @xfrm_if_cb_lock) #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !49
  store volatile ptr %0, ptr @xfrm_if_cb, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !27
  %2 = load i16, ptr @xfrm_if_cb_lock, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr @xfrm_if_cb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_if_unregister_cb() #1 {
  store volatile ptr null, ptr @xfrm_if_cb, align 4
  tail call void @synchronize_rcu() #24
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @xfrm_init() local_unnamed_addr #12 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm_net_ops) #24
  tail call void @xfrm_dev_init() #26
  tail call void @xfrm_input_init() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @xfrm_dev_init() local_unnamed_addr #13 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_input_init() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_policy_expired(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @__xfrm6_pref_hash(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #17 {
  %3 = zext i8 %1 to i32
  %4 = lshr i32 %3, 5
  %5 = and i32 %3, 31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = sub nuw nsw i32 32, %5
  %9 = shl nsw i32 -1, %8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr [4 x i32], ptr %0, i32 0, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %16 = shl nuw nsw i32 %4, 2
  %17 = add nuw nsw i32 %16, -559038737
  %18 = add i32 %17, %15
  %19 = icmp slt i8 %1, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %56, %20 ], [ %18, %14 ]
  %22 = phi i32 [ %57, %20 ], [ %18, %14 ]
  %23 = phi i32 [ %53, %20 ], [ %18, %14 ]
  %24 = phi ptr [ %59, %20 ], [ %0, %14 ]
  %25 = phi i32 [ %58, %20 ], [ %4, %14 ]
  %26 = load i32, ptr %24, align 4
  %27 = add i32 %26, %23
  %28 = getelementptr i32, ptr %24, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %22
  %31 = getelementptr i32, ptr %24, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %21
  %34 = sub i32 %27, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 4) #24
  %36 = xor i32 %34, %35
  %37 = add i32 %33, %30
  %38 = sub i32 %30, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 6) #24
  %40 = xor i32 %38, %39
  %41 = add i32 %36, %37
  %42 = sub i32 %37, %40
  %43 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 8) #24
  %44 = xor i32 %42, %43
  %45 = add i32 %40, %41
  %46 = sub i32 %41, %44
  %47 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 16) #24
  %48 = xor i32 %46, %47
  %49 = add i32 %44, %45
  %50 = sub i32 %45, %48
  %51 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 19) #24
  %52 = xor i32 %50, %51
  %53 = add i32 %48, %49
  %54 = sub i32 %49, %52
  %55 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 4) #24
  %56 = xor i32 %54, %55
  %57 = add i32 %52, %53
  %58 = add i32 %25, -3
  %59 = getelementptr i32, ptr %24, i32 3
  %60 = icmp ugt i32 %58, 3
  br i1 %60, label %20, label %61

61:                                               ; preds = %20, %14
  %62 = phi i32 [ %4, %14 ], [ %58, %20 ]
  %63 = phi ptr [ %0, %14 ], [ %59, %20 ]
  %64 = phi i32 [ %18, %14 ], [ %53, %20 ]
  %65 = phi i32 [ %18, %14 ], [ %57, %20 ]
  %66 = phi i32 [ %18, %14 ], [ %56, %20 ]
  switch i32 %62, label %102 [
    i32 3, label %67
    i32 2, label %71
    i32 1, label %76
  ]

67:                                               ; preds = %61
  %68 = getelementptr i32, ptr %63, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %66
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i32 [ %66, %61 ], [ %70, %67 ]
  %73 = getelementptr i32, ptr %63, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %65
  br label %76

76:                                               ; preds = %71, %61
  %77 = phi i32 [ %65, %61 ], [ %75, %71 ]
  %78 = phi i32 [ %66, %61 ], [ %72, %71 ]
  %79 = load i32, ptr %63, align 4
  %80 = add i32 %79, %64
  %81 = xor i32 %78, %77
  %82 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 14) #24
  %83 = sub i32 %81, %82
  %84 = xor i32 %80, %83
  %85 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 11) #24
  %86 = sub i32 %84, %85
  %87 = xor i32 %86, %77
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 25) #24
  %89 = sub i32 %87, %88
  %90 = xor i32 %89, %83
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 16) #24
  %92 = sub i32 %90, %91
  %93 = xor i32 %92, %86
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 4) #24
  %95 = sub i32 %93, %94
  %96 = xor i32 %95, %89
  %97 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 14) #24
  %98 = sub i32 %96, %97
  %99 = xor i32 %98, %92
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 24) #24
  %101 = sub i32 %99, %100
  br label %102

102:                                              ; preds = %76, %61
  %103 = phi i32 [ %66, %61 ], [ %101, %76 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_inexact_alloc_bin(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca %struct.xfrm_pol_inexact_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 22
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %3, i32 0, i32 3
  store i8 %1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %3, i32 0, i32 4
  %12 = getelementptr inbounds %struct.xfrm_policy, ptr %0, i32 0, i32 18
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr %11, align 1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %14 = call fastcc ptr @rhashtable_lookup(ptr noundef nonnull %3, [7 x i32] [i32 0, i32 524288, i32 0, i32 65536, i32 ptrtoint (ptr @xfrm_pol_bin_key to i32), i32 ptrtoint (ptr @xfrm_pol_bin_obj to i32), i32 ptrtoint (ptr @xfrm_pol_bin_cmp to i32)]) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %211

16:                                               ; preds = %2
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 44) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %211, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %3, align 8
  store i64 %21, ptr %18, align 8
  %22 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %18, i32 0, i32 2
  %23 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %18, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 8), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %20
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 980, 0\0A.popsection", ""() #24, !srcloc !50
  unreachable

27:                                               ; preds = %20
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %28 = load volatile ptr, ptr @xfrm_policy_inexact_table, align 4
  %29 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 3), align 2
  %30 = zext i16 %29 to i32
  %31 = sub nsw i32 0, %30
  %32 = getelementptr i8, ptr %23, i32 %31
  %33 = getelementptr inbounds %struct.bucket_table, ptr %28, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 3
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or i32 %42, %38
  %44 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %51 = add i32 %34, -559038725
  %52 = add i32 %47, %51
  %53 = add i32 %49, %51
  %54 = add i32 %50, %51
  %55 = xor i32 %54, %53
  %56 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 14) #24
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %52
  %59 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11) #24
  %60 = sub i32 %58, %59
  %61 = xor i32 %60, %53
  %62 = call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 25) #24
  %63 = sub i32 %61, %62
  %64 = xor i32 %63, %57
  %65 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 16) #24
  %66 = sub i32 %64, %65
  %67 = xor i32 %66, %60
  %68 = call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 4) #24
  %69 = sub i32 %67, %68
  %70 = xor i32 %69, %63
  %71 = call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 14) #24
  %72 = sub i32 %70, %71
  %73 = xor i32 %72, %66
  %74 = call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 24) #24
  %75 = sub i32 %73, %74
  %76 = load i32, ptr %28, align 64
  %77 = add i32 %76, -1
  %78 = and i32 %75, %77
  %79 = getelementptr inbounds %struct.bucket_table, ptr %28, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !12

82:                                               ; preds = %27
  %83 = call ptr @rht_bucket_nested_insert(ptr noundef nonnull @xfrm_policy_inexact_table, ptr noundef %28, i32 noundef %78) #24
  br label %86

84:                                               ; preds = %27
  %85 = getelementptr %struct.bucket_table, ptr %28, i32 0, i32 8, i32 %78
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi ptr [ %83, %82 ], [ %85, %84 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %195, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @llvm.thread.pointer() #24
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = add i32 %92, 512
  store volatile i32 %93, ptr %91, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !52
  br label %94

94:                                               ; preds = %108, %89
  %95 = load volatile i32, ptr %87, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103, !prof !53

98:                                               ; preds = %94
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #24, !srcloc !14
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #24, !srcloc !54
  %100 = extractvalue { i32, i32, i32 } %99, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !55
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103, !prof !12

103:                                              ; preds = %98, %94
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !56
  br label %104

104:                                              ; preds = %104, %103
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !57
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !58
  %105 = load volatile i32, ptr %87, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %104

108:                                              ; preds = %104
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !59
  br label %94

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.bucket_table, ptr %28, i32 0, i32 5
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113, !prof !12

113:                                              ; preds = %174, %164, %109
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !60
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #24, !srcloc !14
  %114 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #24, !srcloc !61
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !62
  call fastcc void @local_bh_enable() #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %115 = call ptr @rhashtable_insert_slow(ptr noundef nonnull @xfrm_policy_inexact_table, ptr noundef nonnull %18, ptr noundef %23) #24
  br label %200

116:                                              ; preds = %109
  %117 = load ptr, ptr %87, align 4
  %118 = ptrtoint ptr %117 to i32
  %119 = and i32 %118, -2
  %120 = icmp eq i32 %119, 0
  %121 = ptrtoint ptr %87 to i32
  %122 = or i32 %121, 1
  %123 = select i1 %120, i32 %122, i32 %119
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %166

126:                                              ; preds = %116
  %127 = inttoptr i32 %123 to ptr
  %128 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 3), align 2
  %129 = zext i16 %128 to i32
  %130 = sub nsw i32 0, %129
  %131 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %18, i32 0, i32 3
  %132 = load i8, ptr %131, align 2
  %133 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %18, i32 0, i32 4
  %134 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %18, i32 0, i32 2
  %135 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %18, i32 0, i32 1
  br label %136

136:                                              ; preds = %159, %126
  %137 = phi ptr [ %127, %126 ], [ %160, %159 ]
  %138 = phi i32 [ 16, %126 ], [ %139, %159 ]
  %139 = add i32 %138, -1
  %140 = getelementptr i8, ptr %137, i32 %130
  %141 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %140, i32 0, i32 3
  %142 = load i8, ptr %141, align 2
  %143 = icmp eq i8 %132, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %140, i32 0, i32 4
  %146 = load i8, ptr %145, align 1
  %147 = load i8, ptr %133, align 1
  %148 = icmp eq i8 %147, %146
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %140, i32 0, i32 2
  %151 = load i16, ptr %150, align 4
  %152 = load i16, ptr %134, align 4
  %153 = icmp eq i16 %152, %151
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %140, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr %135, align 8
  %158 = icmp eq i32 %157, %156
  br i1 %158, label %197, label %159

159:                                              ; preds = %154, %149, %144, %136
  %160 = load ptr, ptr %137, align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %136, label %164

164:                                              ; preds = %159
  %165 = icmp slt i32 %139, 1
  br i1 %165, label %113, label %166

166:                                              ; preds = %164, %116
  %167 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), align 4
  %168 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 2), align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %197, !prof !12

170:                                              ; preds = %166
  %171 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), align 4
  %172 = load i32, ptr %28, align 64
  %173 = icmp ugt i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 4), align 4
  %176 = icmp eq i32 %175, 0
  %177 = icmp ult i32 %172, %175
  %178 = select i1 %176, i1 true, i1 %177
  br i1 %178, label %113, label %179, !prof !9

179:                                              ; preds = %174, %170
  %180 = inttoptr i32 %123 to ptr
  store volatile ptr %180, ptr %23, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8)) #24, !srcloc !14
  %181 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8)) #24, !srcloc !32
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  store volatile ptr %23, ptr %87, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  call fastcc void @local_bh_enable() #24
  %182 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), align 4
  %183 = load i32, ptr %28, align 64
  %184 = lshr i32 %183, 2
  %185 = mul nuw i32 %184, 3
  %186 = icmp ugt i32 %182, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %179
  %188 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 4), align 4
  %189 = icmp eq i32 %188, 0
  %190 = icmp ult i32 %183, %188
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load ptr, ptr @system_wq, align 4
  %194 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %193, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 5)) #24
  br label %195

195:                                              ; preds = %197, %192, %187, %179, %86
  %196 = phi ptr [ %198, %197 ], [ inttoptr (i32 -12 to ptr), %86 ], [ null, %192 ], [ null, %187 ], [ null, %179 ]
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %200

197:                                              ; preds = %166, %154
  %198 = phi ptr [ inttoptr (i32 -7 to ptr), %166 ], [ %140, %154 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !60
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #24, !srcloc !14
  %199 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #24, !srcloc !61
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !62
  call fastcc void @local_bh_enable() #24
  br label %195

200:                                              ; preds = %195, %113
  %201 = phi ptr [ %115, %113 ], [ %196, %195 ]
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %18, i32 0, i32 6
  %205 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 16), align 4
  %206 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  store ptr %204, ptr %206, align 4
  store ptr %205, ptr %204, align 4
  %207 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %18, i32 0, i32 6, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 16), ptr %207, align 8
  store volatile ptr %204, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 16), align 4
  br label %211

208:                                              ; preds = %200
  call void @kfree(ptr noundef nonnull %18) #24
  %209 = icmp ugt ptr %201, inttoptr (i32 -4096 to ptr)
  %210 = select i1 %209, ptr null, ptr %201
  br label %211

211:                                              ; preds = %208, %203, %16, %2
  %212 = phi ptr [ %210, %208 ], [ %18, %203 ], [ %14, %2 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_inexact_alloc_chain(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12
  %4 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1
  %5 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 8
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 22
  %8 = load i16, ptr %7, align 2
  switch i16 %8, label %32 [
    i16 2, label %9
    i16 10, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  %16 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  %19 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %18, %20
  br label %22

22:                                               ; preds = %11, %9
  %23 = phi i32 [ %21, %11 ], [ %10, %9 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = icmp eq i16 %8, 10
  %27 = icmp ult i8 %6, 48
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 7
  %31 = load i8, ptr %30, align 2
  br label %42

32:                                               ; preds = %25, %2
  %33 = icmp eq i16 %8, 2
  %34 = icmp ult i8 %6, 16
  %35 = and i1 %34, %33
  br label %36

36:                                               ; preds = %32, %22
  %37 = phi i1 [ true, %22 ], [ %35, %32 ]
  %38 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 7
  %39 = load i8, ptr %38, align 2
  switch i16 %8, label %64 [
    i16 2, label %40
    i16 10, label %42
  ]

40:                                               ; preds = %36
  %41 = load i32, ptr %3, align 4
  br label %55

42:                                               ; preds = %36, %29
  %43 = phi i8 [ %31, %29 ], [ %39, %36 ]
  %44 = phi i1 [ true, %29 ], [ %37, %36 ]
  %45 = load i32, ptr %3, align 4
  %46 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, %45
  %49 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  %52 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %51, %53
  br label %55

55:                                               ; preds = %42, %40
  %56 = phi i8 [ %43, %42 ], [ %39, %40 ]
  %57 = phi i1 [ %44, %42 ], [ %37, %40 ]
  %58 = phi i32 [ %54, %42 ], [ %41, %40 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = icmp eq i16 %8, 10
  %62 = icmp ult i8 %56, 48
  %63 = and i1 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %60, %36
  %65 = phi i1 [ %57, %60 ], [ %37, %36 ]
  %66 = phi i8 [ %56, %60 ], [ %39, %36 ]
  %67 = icmp eq i16 %8, 2
  %68 = icmp ult i8 %66, 16
  %69 = and i1 %67, %68
  br label %70

70:                                               ; preds = %64, %60, %55
  %71 = phi i8 [ %56, %55 ], [ %56, %60 ], [ %66, %64 ]
  %72 = phi i1 [ %57, %55 ], [ %57, %60 ], [ %65, %64 ]
  %73 = phi i1 [ true, %55 ], [ true, %60 ], [ %69, %64 ]
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 2
  br label %167

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 7
  switch i16 %8, label %99 [
    i16 2, label %79
    i16 10, label %81
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %3, align 4
  br label %92

81:                                               ; preds = %77
  %82 = load i32, ptr %3, align 4
  %83 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %84, %82
  %86 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %85, %87
  %89 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %88, %90
  br label %92

92:                                               ; preds = %81, %79
  %93 = phi i32 [ %91, %81 ], [ %80, %79 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = icmp eq i16 %8, 10
  %97 = icmp ult i8 %71, 48
  %98 = and i1 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95, %77
  %100 = icmp eq i16 %8, 2
  %101 = icmp ult i8 %71, 16
  %102 = and i1 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %99, %95, %92
  %104 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !65
  %107 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 5
  %108 = load i16, ptr %7, align 2
  %109 = load i8, ptr %5, align 1
  %110 = tail call fastcc ptr @xfrm_policy_inexact_insert_node(ptr noundef %107, ptr noundef %4, i16 noundef zeroext %108, i8 noundef zeroext %109)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !66
  %111 = load i32, ptr %104, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %104, align 4
  %113 = icmp eq ptr %110, null
  %114 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %110, i32 0, i32 4
  %115 = select i1 %113, ptr null, ptr %114
  br label %167

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !65
  %120 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 4
  %121 = load i16, ptr %7, align 2
  %122 = load i8, ptr %78, align 2
  %123 = tail call fastcc ptr @xfrm_policy_inexact_insert_node(ptr noundef %120, ptr noundef %3, i16 noundef zeroext %121, i8 noundef zeroext %122)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !66
  %124 = load i32, ptr %117, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %117, align 4
  %126 = icmp eq ptr %123, null
  br i1 %126, label %167, label %127

127:                                              ; preds = %116
  %128 = load i16, ptr %7, align 2
  %129 = load i8, ptr %5, align 1
  switch i16 %128, label %150 [
    i16 2, label %130
    i16 10, label %132
  ]

130:                                              ; preds = %127
  %131 = load i32, ptr %4, align 4
  br label %143

132:                                              ; preds = %127
  %133 = load i32, ptr %4, align 4
  %134 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = or i32 %135, %133
  %137 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = or i32 %136, %138
  %140 = getelementptr %struct.xfrm_policy, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = or i32 %139, %141
  br label %143

143:                                              ; preds = %132, %130
  %144 = phi i32 [ %142, %132 ], [ %131, %130 ]
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = icmp eq i16 %128, 10
  %148 = icmp ult i8 %129, 48
  %149 = and i1 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146, %127
  %151 = icmp eq i16 %128, 2
  %152 = icmp ult i8 %129, 16
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150, %146, %143
  %155 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %123, i32 0, i32 4
  br label %167

156:                                              ; preds = %150
  %157 = add i32 %124, 2
  store i32 %157, ptr %117, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !65
  %158 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %123, i32 0, i32 3
  %159 = load i16, ptr %7, align 2
  %160 = load i8, ptr %5, align 1
  %161 = tail call fastcc ptr @xfrm_policy_inexact_insert_node(ptr noundef %158, ptr noundef %4, i16 noundef zeroext %159, i8 noundef zeroext %160)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !66
  %162 = load i32, ptr %117, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %117, align 4
  %164 = icmp eq ptr %161, null
  %165 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %161, i32 0, i32 4
  %166 = select i1 %164, ptr null, ptr %165
  br label %167

167:                                              ; preds = %156, %154, %116, %103, %75
  %168 = phi ptr [ %76, %75 ], [ %155, %154 ], [ null, %116 ], [ %115, %103 ], [ %166, %156 ]
  ret ptr %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__xfrm_policy_inexact_prune_bin(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !65
  %6 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 4
  tail call fastcc void @xfrm_policy_inexact_gc_tree(ptr noundef %6, i1 noundef zeroext %1)
  %7 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 5
  tail call fastcc void @xfrm_policy_inexact_gc_tree(ptr noundef %7, i1 noundef zeroext %1)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !66
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  %10 = load volatile ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load volatile ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %12, %2
  %20 = load i1, ptr @__xfrm_policy_inexact_prune_bin.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %1, i1 %21, i1 false
  br i1 %22, label %23, label %176, !prof !9

23:                                               ; preds = %19
  store i1 true, ptr @__xfrm_policy_inexact_prune_bin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #24
  br label %176

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %26 = load volatile ptr, ptr @xfrm_policy_inexact_table, align 4
  br label %27

27:                                               ; preds = %162, %24
  %28 = phi ptr [ %26, %24 ], [ %164, %162 ]
  %29 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 3), align 2
  %30 = zext i16 %29 to i32
  %31 = sub nsw i32 0, %30
  %32 = getelementptr i8, ptr %25, i32 %31
  %33 = getelementptr inbounds %struct.bucket_table, ptr %28, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 3
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or i32 %42, %38
  %44 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %32, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %51 = add i32 %34, -559038725
  %52 = add i32 %47, %51
  %53 = add i32 %49, %51
  %54 = add i32 %50, %51
  %55 = xor i32 %54, %53
  %56 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 14) #24
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %52
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11) #24
  %60 = sub i32 %58, %59
  %61 = xor i32 %60, %53
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 25) #24
  %63 = sub i32 %61, %62
  %64 = xor i32 %63, %57
  %65 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 16) #24
  %66 = sub i32 %64, %65
  %67 = xor i32 %66, %60
  %68 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 4) #24
  %69 = sub i32 %67, %68
  %70 = xor i32 %69, %63
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 14) #24
  %72 = sub i32 %70, %71
  %73 = xor i32 %72, %66
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 24) #24
  %75 = sub i32 %73, %74
  %76 = load i32, ptr %28, align 64
  %77 = add i32 %76, -1
  %78 = and i32 %75, %77
  %79 = getelementptr inbounds %struct.bucket_table, ptr %28, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !12

82:                                               ; preds = %27
  %83 = tail call ptr @__rht_bucket_nested(ptr noundef %28, i32 noundef %78) #24
  br label %86

84:                                               ; preds = %27
  %85 = getelementptr %struct.bucket_table, ptr %28, i32 0, i32 8, i32 %78
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi ptr [ %83, %82 ], [ %85, %84 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %162, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @llvm.thread.pointer() #24
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = add i32 %92, 512
  store volatile i32 %93, ptr %91, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !52
  br label %94

94:                                               ; preds = %108, %89
  %95 = load volatile i32, ptr %87, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103, !prof !53

98:                                               ; preds = %94
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #24, !srcloc !14
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #24, !srcloc !54
  %100 = extractvalue { i32, i32, i32 } %99, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !55
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103, !prof !12

103:                                              ; preds = %98, %94
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !56
  br label %104

104:                                              ; preds = %104, %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !57
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !58
  %105 = load volatile i32, ptr %87, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %104

108:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !59
  br label %94

109:                                              ; preds = %98
  %110 = load ptr, ptr %87, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = and i32 %111, -2
  %113 = icmp eq i32 %112, 0
  %114 = ptrtoint ptr %87 to i32
  %115 = or i32 %114, 1
  %116 = select i1 %113, i32 %115, i32 %112
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %109
  %120 = inttoptr i32 %116 to ptr
  %121 = icmp eq ptr %25, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load ptr, ptr %25, align 4
  br label %131

124:                                              ; preds = %137
  %125 = icmp eq ptr %139, %25
  br i1 %125, label %126, label %137

126:                                              ; preds = %124
  %127 = load ptr, ptr %25, align 4
  %128 = icmp eq ptr %138, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !67
  store volatile ptr %127, ptr %138, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #24, !srcloc !14
  %130 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #24, !srcloc !61
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !62
  br label %145

131:                                              ; preds = %126, %122
  %132 = phi ptr [ %123, %122 ], [ %127, %126 ]
  %133 = ptrtoint ptr %132 to i32
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, ptr %132, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  store volatile ptr %136, ptr %87, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  br label %145

137:                                              ; preds = %124, %119
  %138 = phi ptr [ %139, %124 ], [ %120, %119 ]
  %139 = load ptr, ptr %138, align 4
  %140 = ptrtoint ptr %139 to i32
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %124, label %143

143:                                              ; preds = %137, %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #24, !srcloc !14
  %144 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #24, !srcloc !61
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !62
  tail call fastcc void @local_bh_enable() #24
  br label %162

145:                                              ; preds = %131, %129
  tail call fastcc void @local_bh_enable() #24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8)) #24, !srcloc !14
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8)) #24, !srcloc !68
  %147 = load i8, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 6), align 2, !range !69
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %145
  %150 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 8), align 4
  %151 = load i32, ptr %28, align 64
  %152 = mul i32 %151, 3
  %153 = udiv i32 %152, 10
  %154 = icmp ult i32 %150, %153
  %155 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 5), align 4
  %156 = zext i16 %155 to i32
  %157 = icmp ugt i32 %151, %156
  %158 = select i1 %154, i1 %157, i1 false
  br i1 %158, label %159, label %167, !prof !9

159:                                              ; preds = %149
  %160 = load ptr, ptr @system_wq, align 4
  %161 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %160, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 5)) #24
  br label %167

162:                                              ; preds = %143, %86
  %163 = getelementptr inbounds %struct.bucket_table, ptr %28, i32 0, i32 5
  %164 = load volatile ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %27

166:                                              ; preds = %162
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %176

167:                                              ; preds = %159, %149, %145
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %168 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 6, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %168, align 4
  %172 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  store ptr %170, ptr %172, align 4
  store volatile ptr %171, ptr %170, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %168, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %169, align 4
  %173 = icmp eq ptr %0, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, ptr %0, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %175, ptr noundef nonnull inttoptr (i32 36 to ptr)) #24
  br label %176

176:                                              ; preds = %174, %167, %166, %23, %19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %0, [7 x i32] %1) unnamed_addr #10 {
  %3 = alloca %struct.rhashtable_compare_arg, align 8
  %4 = extractvalue [7 x i32] %1, 6
  %5 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr @xfrm_policy_inexact_table, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 4
  %7 = load volatile ptr, ptr @xfrm_policy_inexact_table, align 4
  %8 = icmp eq i32 %4, 0
  br label %9

9:                                                ; preds = %73, %2
  %10 = phi ptr [ %7, %2 ], [ %75, %73 ]
  %11 = getelementptr inbounds %struct.bucket_table, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 7), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 1), align 4
  %15 = call i32 %13(ptr noundef %0, i32 noundef %14, i32 noundef %12) #24
  %16 = load i32, ptr %10, align 64
  %17 = add i32 %16, -1
  %18 = and i32 %17, %15
  %19 = getelementptr inbounds %struct.bucket_table, ptr %10, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !12

22:                                               ; preds = %9
  %23 = call ptr @rht_bucket_nested(ptr noundef %10, i32 noundef %18) #24
  br label %26

24:                                               ; preds = %9
  %25 = getelementptr %struct.bucket_table, ptr %10, i32 0, i32 8, i32 %18
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %28 = ptrtoint ptr %27 to i32
  %29 = or i32 %28, 1
  %30 = inttoptr i32 %29 to ptr
  br label %31

31:                                               ; preds = %70, %26
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !70
  %32 = load volatile ptr, ptr %27, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 %29, i32 %34
  %37 = inttoptr i32 %36 to ptr
  %38 = and i32 %36, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %31
  %41 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 3), align 2
  br label %42

42:                                               ; preds = %64, %40
  %43 = phi i16 [ %65, %64 ], [ %41, %40 ]
  %44 = phi ptr [ %66, %64 ], [ %37, %40 ]
  %45 = zext i16 %43 to i32
  %46 = sub nsw i32 0, %45
  %47 = getelementptr i8, ptr %44, i32 %46
  br i1 %8, label %52, label %48

48:                                               ; preds = %42
  %49 = call i32 %5(ptr noundef nonnull %3, ptr noundef %47) #24
  %50 = icmp eq i32 %49, 0
  %51 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @xfrm_policy_inexact_table, i32 0, i32 3, i32 3), align 2
  br i1 %50, label %78, label %64

52:                                               ; preds = %42
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.rhashtable, ptr %53, i32 0, i32 3, i32 2
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %47, i32 %56
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.rhashtable, ptr %53, i32 0, i32 3, i32 1
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = call i32 @bcmp(ptr %57, ptr %58, i32 %61) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %52, %48
  %65 = phi i16 [ %43, %52 ], [ %51, %48 ]
  %66 = load volatile ptr, ptr %44, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %42, label %70

70:                                               ; preds = %64, %31
  %71 = phi ptr [ %37, %31 ], [ %66, %64 ]
  %72 = icmp eq ptr %71, %30
  br i1 %72, label %73, label %31

73:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !71
  %74 = getelementptr inbounds %struct.bucket_table, ptr %10, i32 0, i32 5
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %9, !prof !12

77:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  br label %85

78:                                               ; preds = %52, %48
  %79 = phi i16 [ %51, %48 ], [ %43, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  %80 = icmp eq ptr %44, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = zext i16 %79 to i32
  %83 = sub nsw i32 0, %82
  %84 = getelementptr i8, ptr %44, i32 %83
  br label %85

85:                                               ; preds = %81, %78, %77
  %86 = phi ptr [ %84, %81 ], [ null, %78 ], [ null, %77 ]
  ret ptr %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @xfrm_pol_bin_key(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #18 {
  %4 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = or i32 %12, %15
  %17 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %20 = add i32 %2, -559038725
  %21 = add i32 %16, %20
  %22 = add i32 %18, %20
  %23 = add i32 %19, %20
  %24 = xor i32 %23, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 14) #24
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %21
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11) #24
  %29 = sub i32 %27, %28
  %30 = xor i32 %29, %22
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 25) #24
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 16) #24
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 4) #24
  %38 = sub i32 %36, %37
  %39 = xor i32 %38, %32
  %40 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 14) #24
  %41 = sub i32 %39, %40
  %42 = xor i32 %41, %35
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 24) #24
  %44 = sub i32 %42, %43
  ret i32 %44
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @xfrm_pol_bin_obj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #18 {
  %4 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = or i32 %12, %15
  %17 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %20 = add i32 %2, -559038725
  %21 = add i32 %16, %20
  %22 = add i32 %18, %20
  %23 = add i32 %19, %20
  %24 = xor i32 %23, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 14) #24
  %26 = sub i32 %24, %25
  %27 = xor i32 %26, %21
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11) #24
  %29 = sub i32 %27, %28
  %30 = xor i32 %29, %22
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 25) #24
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 16) #24
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 4) #24
  %38 = sub i32 %36, %37
  %39 = xor i32 %38, %32
  %40 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 14) #24
  %41 = sub i32 %39, %40
  %42 = xor i32 %41, %35
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 24) #24
  %44 = sub i32 %42, %43
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @xfrm_pol_bin_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 {
  %3 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %1, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %4, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = xor i8 %8, %6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = zext i8 %9 to i32
  br label %37

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %1, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %4, i32 0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = xor i8 %17, %15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = zext i8 %18 to i32
  br label %37

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %4, i32 0, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = xor i16 %26, %24
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = zext i16 %27 to i32
  br label %37

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.xfrm_pol_inexact_key, ptr %4, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %33
  br label %37

37:                                               ; preds = %31, %29, %20, %11
  %38 = phi i32 [ %12, %11 ], [ %21, %20 ], [ %30, %29 ], [ %36, %31 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #20

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_inexact_insert_node(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %261, label %7

7:                                                ; preds = %4
  %8 = zext i8 %3 to i32
  %9 = lshr i32 %8, 5
  %10 = and i32 %8, 31
  %11 = icmp ult i8 %3, 32
  %12 = shl nuw nsw i32 %9, 2
  %13 = icmp eq i32 %10, 0
  %14 = sub nuw nsw i32 32, %10
  %15 = shl nsw i32 -1, %14
  %16 = getelementptr [4 x i32], ptr %1, i32 0, i32 %9
  %17 = icmp eq i8 %3, 0
  %18 = sub nsw i32 32, %8
  %19 = shl nsw i32 -1, %18
  br label %20

20:                                               ; preds = %253, %7
  %21 = phi ptr [ %5, %7 ], [ %257, %253 ]
  %22 = phi ptr [ null, %7 ], [ %256, %253 ]
  %23 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %21, i32 0, i32 1
  %24 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %21, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  switch i16 %2, label %70 [
    i16 2, label %26
    i16 10, label %41
  ]

26:                                               ; preds = %20
  %27 = icmp eq i8 %25, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %26
  %29 = zext i8 %25 to i32
  %30 = sub nsw i32 32, %29
  %31 = shl nsw i32 -1, %30
  %32 = load i32, ptr %1, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #24
  %34 = and i32 %33, %31
  %35 = load i32, ptr %23, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #24
  %37 = and i32 %36, %31
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %83, label %39

39:                                               ; preds = %28
  %40 = icmp ugt i32 %34, %37
  br label %66

41:                                               ; preds = %20
  %42 = zext i8 %25 to i32
  %43 = lshr i32 %42, 5
  %44 = and i32 %42, 31
  %45 = icmp ult i8 %25, 32
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = shl nuw nsw i32 %43, 2
  %48 = tail call i32 @memcmp(ptr noundef %1, ptr noundef %23, i32 noundef %47) #24
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %46, %41
  %51 = icmp eq i32 %44, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %50
  %53 = sub nuw nsw i32 32, %44
  %54 = shl nsw i32 -1, %53
  %55 = getelementptr [4 x i32], ptr %1, i32 0, i32 %43
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #24
  %58 = and i32 %57, %54
  %59 = getelementptr [4 x i32], ptr %23, i32 0, i32 %43
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #24
  %62 = and i32 %61, %54
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %83, label %64

64:                                               ; preds = %52
  %65 = icmp ugt i32 %58, %62
  br label %66

66:                                               ; preds = %64, %39
  %67 = phi i1 [ %40, %39 ], [ %65, %64 ]
  %68 = icmp ugt i8 %25, %3
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %78, label %72

70:                                               ; preds = %50, %26, %20
  %71 = icmp ugt i8 %25, %3
  br i1 %71, label %78, label %72

72:                                               ; preds = %70, %66
  %73 = icmp ne ptr %22, null
  %74 = load i1, ptr @xfrm_policy_inexact_insert_node.__already_done, align 1
  %75 = xor i1 %74, true
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %277, !prof !9

77:                                               ; preds = %72
  store i1 true, ptr @xfrm_policy_inexact_insert_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1009, i32 noundef 9, ptr noundef null) #24
  br label %277

78:                                               ; preds = %70, %66
  %79 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  br label %85

80:                                               ; preds = %46
  %81 = icmp slt i32 %48, 0
  %82 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  br i1 %81, label %83, label %85

83:                                               ; preds = %80, %52, %28
  %84 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  br label %85

85:                                               ; preds = %83, %80, %78
  %86 = phi ptr [ %84, %83 ], [ %82, %80 ], [ %79, %78 ]
  %87 = icmp ugt i8 %25, %3
  br i1 %87, label %88, label %253

88:                                               ; preds = %85
  switch i16 %2, label %110 [
    i16 2, label %89
    i16 10, label %97
  ]

89:                                               ; preds = %88
  br i1 %17, label %110, label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %1, align 4
  %92 = load i32, ptr %23, align 4
  %93 = xor i32 %91, %92
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = and i32 %94, %19
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %110, label %253

97:                                               ; preds = %88
  br i1 %11, label %101, label %98

98:                                               ; preds = %97
  %99 = tail call i32 @bcmp(ptr %1, ptr %23, i32 %12)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %253

101:                                              ; preds = %98, %97
  br i1 %13, label %110, label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %16, align 4
  %104 = getelementptr [4 x i32], ptr %23, i32 0, i32 %9
  %105 = load i32, ptr %104, align 4
  %106 = xor i32 %103, %105
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %108 = and i32 %107, %15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %253

110:                                              ; preds = %102, %101, %90, %89, %88
  tail call void @rb_erase(ptr noundef nonnull %21, ptr noundef %0) #24
  %111 = icmp eq ptr %22, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %23, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #24
  store i8 %3, ptr %24, align 4
  br label %253

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %21, i32 0, i32 3
  %115 = tail call ptr @rb_first(ptr noundef %114) #24
  %116 = icmp eq ptr %115, null
  br i1 %116, label %236, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %22, i32 0, i32 3
  br label %119

119:                                              ; preds = %233, %117
  %120 = phi ptr [ %115, %117 ], [ %234, %233 ]
  tail call void @rb_erase(ptr noundef nonnull %120, ptr noundef %114) #24
  %121 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %120, i32 0, i32 3
  %122 = load volatile ptr, ptr %121, align 4
  %123 = icmp ne ptr %122, null
  %124 = load i1, ptr @xfrm_policy_inexact_node_reinsert.__already_done, align 1
  %125 = xor i1 %124, true
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %128, !prof !9

127:                                              ; preds = %119
  store i1 true, ptr @xfrm_policy_inexact_node_reinsert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 911, i32 noundef 9, ptr noundef null) #24
  br label %128

128:                                              ; preds = %127, %119
  %129 = load ptr, ptr %118, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %226, label %134

131:                                              ; preds = %225, %222
  %132 = load ptr, ptr %118, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %226, label %134

134:                                              ; preds = %131, %128
  %135 = phi ptr [ %132, %131 ], [ %129, %128 ]
  %136 = phi ptr [ %198, %131 ], [ %120, %128 ]
  %137 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %136, i32 0, i32 2
  %138 = load i8, ptr %137, align 4
  %139 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %136, i32 0, i32 1
  br label %144

140:                                              ; preds = %195, %191
  %141 = phi ptr [ %196, %195 ], [ %192, %191 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %226, label %144

144:                                              ; preds = %140, %134
  %145 = phi ptr [ %135, %134 ], [ %142, %140 ]
  %146 = phi ptr [ %118, %134 ], [ %141, %140 ]
  %147 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %145, i32 0, i32 2
  %148 = load i8, ptr %147, align 4
  %149 = tail call i8 @llvm.umin.i8(i8 %148, i8 %138) #24
  %150 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %145, i32 0, i32 1
  switch i16 %2, label %197 [
    i16 2, label %151
    i16 10, label %164
  ]

151:                                              ; preds = %144
  %152 = icmp eq i8 %149, 0
  br i1 %152, label %197, label %153

153:                                              ; preds = %151
  %154 = zext i8 %149 to i32
  %155 = sub nsw i32 32, %154
  %156 = shl nsw i32 -1, %155
  %157 = load i32, ptr %139, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #24
  %159 = and i32 %158, %156
  %160 = load i32, ptr %150, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #24
  %162 = and i32 %161, %156
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %191, label %193

164:                                              ; preds = %144
  %165 = zext i8 %149 to i32
  %166 = lshr i32 %165, 5
  %167 = and i32 %165, 31
  %168 = icmp ult i8 %149, 32
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = shl nuw nsw i32 %166, 2
  %171 = tail call i32 @memcmp(ptr noundef %139, ptr noundef %150, i32 noundef %170) #24
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %169, %164
  %174 = icmp eq i32 %167, 0
  br i1 %174, label %197, label %175

175:                                              ; preds = %173
  %176 = sub nuw nsw i32 32, %167
  %177 = shl nsw i32 -1, %176
  %178 = getelementptr [4 x i32], ptr %139, i32 0, i32 %166
  %179 = load i32, ptr %178, align 4
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #24
  %181 = and i32 %180, %177
  %182 = getelementptr [4 x i32], ptr %150, i32 0, i32 %166
  %183 = load i32, ptr %182, align 4
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #24
  %185 = and i32 %184, %177
  %186 = icmp ult i32 %181, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %175
  %188 = icmp ugt i32 %181, %185
  br i1 %188, label %195, label %197

189:                                              ; preds = %169
  %190 = icmp slt i32 %171, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %189, %175, %153
  %192 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 2
  br label %140

193:                                              ; preds = %153
  %194 = icmp ugt i32 %159, %162
  br i1 %194, label %195, label %197

195:                                              ; preds = %193, %189, %187
  %196 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 1
  br label %140

197:                                              ; preds = %193, %187, %173, %151, %144
  %198 = phi ptr [ %145, %193 ], [ %145, %187 ], [ %145, %173 ], [ %145, %151 ], [ %135, %144 ]
  %199 = phi ptr [ %146, %193 ], [ %146, %187 ], [ %146, %173 ], [ %146, %151 ], [ %118, %144 ]
  %200 = phi i8 [ %149, %193 ], [ %149, %187 ], [ %149, %173 ], [ 0, %151 ], [ %149, %144 ]
  %201 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %198, i32 0, i32 2
  %202 = icmp eq i8 %148, %138
  %203 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %136, i32 0, i32 4
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %218, label %206

206:                                              ; preds = %215, %197
  %207 = phi ptr [ %216, %215 ], [ %204, %197 ]
  %208 = getelementptr inbounds %struct.xfrm_policy, ptr %207, i32 0, i32 17
  store i8 1, ptr %208, align 4
  %209 = load ptr, ptr %207, align 4
  %210 = getelementptr inbounds %struct.xfrm_policy, ptr %207, i32 0, i32 1, i32 1
  %211 = load ptr, ptr %210, align 4
  store volatile ptr %209, ptr %211, align 4
  %212 = icmp eq ptr %209, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.hlist_node, ptr %209, i32 0, i32 1
  store volatile ptr %211, ptr %214, align 4
  br label %215

215:                                              ; preds = %213, %206
  store volatile ptr inttoptr (i32 290 to ptr), ptr %210, align 4
  %216 = load ptr, ptr %207, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %206

218:                                              ; preds = %215, %197
  store i8 %200, ptr %201, align 4
  tail call fastcc void @xfrm_policy_inexact_list_reinsert(ptr noundef nonnull %198, i16 noundef zeroext %2) #24
  br i1 %202, label %219, label %222

219:                                              ; preds = %218
  %220 = icmp eq ptr %136, null
  br i1 %220, label %233, label %221

221:                                              ; preds = %219
  tail call void @kvfree_call_rcu(ptr noundef %139, ptr noundef nonnull inttoptr (i32 12 to ptr)) #24
  br label %233

222:                                              ; preds = %218
  %223 = load ptr, ptr %199, align 4
  tail call void @rb_erase(ptr noundef %223, ptr noundef %118) #24
  %224 = icmp eq ptr %136, null
  br i1 %224, label %131, label %225

225:                                              ; preds = %222
  tail call void @kvfree_call_rcu(ptr noundef %139, ptr noundef nonnull inttoptr (i32 12 to ptr)) #24
  br label %131

226:                                              ; preds = %140, %131, %128
  %227 = phi ptr [ null, %128 ], [ %145, %140 ], [ null, %131 ]
  %228 = phi ptr [ %118, %128 ], [ %141, %140 ], [ %118, %131 ]
  %229 = phi ptr [ %120, %128 ], [ %136, %140 ], [ %198, %131 ]
  %230 = ptrtoint ptr %227 to i32
  store i32 %230, ptr %229, align 4
  %231 = getelementptr inbounds %struct.rb_node, ptr %229, i32 0, i32 1
  store ptr null, ptr %231, align 4
  %232 = getelementptr inbounds %struct.rb_node, ptr %229, i32 0, i32 2
  store ptr null, ptr %232, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !72
  store volatile ptr %229, ptr %228, align 4
  tail call void @rb_insert_color(ptr noundef %229, ptr noundef %118) #24
  br label %233

233:                                              ; preds = %226, %221, %219
  %234 = tail call ptr @rb_first(ptr noundef %114) #24
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %119

236:                                              ; preds = %233, %113
  %237 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %21, i32 0, i32 4
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %252, label %240

240:                                              ; preds = %249, %236
  %241 = phi ptr [ %250, %249 ], [ %238, %236 ]
  %242 = getelementptr inbounds %struct.xfrm_policy, ptr %241, i32 0, i32 17
  store i8 1, ptr %242, align 4
  %243 = load ptr, ptr %241, align 4
  %244 = getelementptr inbounds %struct.xfrm_policy, ptr %241, i32 0, i32 1, i32 1
  %245 = load ptr, ptr %244, align 4
  store volatile ptr %243, ptr %245, align 4
  %246 = icmp eq ptr %243, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.hlist_node, ptr %243, i32 0, i32 1
  store volatile ptr %245, ptr %248, align 4
  br label %249

249:                                              ; preds = %247, %240
  store volatile ptr inttoptr (i32 290 to ptr), ptr %244, align 4
  %250 = load ptr, ptr %241, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %240

252:                                              ; preds = %249, %236
  tail call fastcc void @xfrm_policy_inexact_list_reinsert(ptr noundef nonnull %22, i16 noundef zeroext %2) #24
  tail call void @kvfree_call_rcu(ptr noundef %23, ptr noundef nonnull inttoptr (i32 12 to ptr)) #24
  br label %253

253:                                              ; preds = %252, %112, %102, %98, %90, %85
  %254 = phi ptr [ %21, %85 ], [ null, %252 ], [ null, %112 ], [ %21, %98 ], [ %21, %90 ], [ %21, %102 ]
  %255 = phi ptr [ %86, %85 ], [ %0, %252 ], [ %0, %112 ], [ %86, %98 ], [ %86, %90 ], [ %86, %102 ]
  %256 = phi ptr [ %22, %85 ], [ %22, %252 ], [ %21, %112 ], [ %22, %98 ], [ %22, %90 ], [ %22, %102 ]
  %257 = load ptr, ptr %255, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %20

259:                                              ; preds = %253
  %260 = icmp eq ptr %256, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %259, %4
  %262 = phi ptr [ %255, %259 ], [ %0, %4 ]
  %263 = phi ptr [ %254, %259 ], [ null, %4 ]
  %264 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %265 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %264, i32 noundef 2848, i32 noundef 40) #25
  %266 = icmp eq ptr %265, null
  br i1 %266, label %277, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %265, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %268, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #24
  %269 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %265, i32 0, i32 2
  store i8 %3, ptr %269, align 4
  br label %270

270:                                              ; preds = %267, %259
  %271 = phi ptr [ %255, %259 ], [ %262, %267 ]
  %272 = phi ptr [ %254, %259 ], [ %263, %267 ]
  %273 = phi ptr [ %256, %259 ], [ %265, %267 ]
  %274 = ptrtoint ptr %272 to i32
  store i32 %274, ptr %273, align 4
  %275 = getelementptr inbounds %struct.rb_node, ptr %273, i32 0, i32 1
  store ptr null, ptr %275, align 4
  %276 = getelementptr inbounds %struct.rb_node, ptr %273, i32 0, i32 2
  store ptr null, ptr %276, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !72
  store volatile ptr %273, ptr %271, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %273, ptr noundef %0) #24
  br label %277

277:                                              ; preds = %270, %261, %77, %72
  %278 = phi ptr [ %273, %270 ], [ %21, %77 ], [ %21, %72 ], [ null, %261 ]
  ret ptr %278
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_policy_inexact_list_reinsert(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8, i32 1), align 4
  %4 = icmp eq ptr %3, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8)
  br i1 %4, label %174, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %168, %5
  %10 = phi ptr [ %3, %5 ], [ %172, %168 ]
  %11 = phi i32 [ 0, %5 ], [ %170, %168 ]
  %12 = phi i32 [ 0, %5 ], [ %169, %168 ]
  %13 = getelementptr i8, ptr %10, i32 52
  %14 = load i8, ptr %13, align 4, !range !69
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %168, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %10, i32 58
  %18 = load i16, ptr %17, align 2
  %19 = icmp ne i16 %18, %1
  %20 = load i1, ptr @xfrm_policy_inexact_list_reinsert.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %16
  store i1 true, ptr @xfrm_policy_inexact_list_reinsert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 856, i32 noundef 9, ptr noundef null) #24
  br label %24

24:                                               ; preds = %23, %16
  store i8 0, ptr %13, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %10, i32 -200
  br i1 %26, label %56, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %10, i32 -172
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %44, %28
  %32 = phi ptr [ %25, %28 ], [ %45, %44 ]
  %33 = phi ptr [ null, %28 ], [ %32, %44 ]
  %34 = getelementptr inbounds %struct.xfrm_policy, ptr %32, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %30, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = icmp eq i32 %30, %35
  br i1 %38, label %39, label %47

39:                                               ; preds = %37
  %40 = load i32, ptr %27, align 8
  %41 = getelementptr inbounds %struct.xfrm_policy, ptr %32, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %31
  %45 = load ptr, ptr %32, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %31

47:                                               ; preds = %39, %37
  %48 = icmp eq ptr %33, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %33, %47 ], [ %32, %44 ]
  %51 = getelementptr i8, ptr %10, i32 -224
  %52 = load ptr, ptr %50, align 4
  store ptr %52, ptr %51, align 4
  %53 = getelementptr i8, ptr %10, i32 -220
  store volatile ptr %50, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  store volatile ptr %51, ptr %50, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %59

56:                                               ; preds = %47, %24
  %57 = getelementptr i8, ptr %10, i32 -224
  store ptr %25, ptr %57, align 4
  %58 = getelementptr i8, ptr %10, i32 -220
  store volatile ptr %6, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  store volatile ptr %57, ptr %6, align 4
  br i1 %26, label %63, label %59

59:                                               ; preds = %56, %49
  %60 = phi ptr [ %54, %49 ], [ %25, %56 ]
  %61 = phi ptr [ %51, %49 ], [ %57, %56 ]
  %62 = getelementptr inbounds %struct.hlist_node, ptr %60, i32 0, i32 1
  store volatile ptr %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %56, %49
  %64 = getelementptr i8, ptr %10, i32 -152
  %65 = getelementptr i8, ptr %10, i32 -136
  %66 = load i8, ptr %8, align 4
  switch i16 %1, label %142 [
    i16 2, label %67
    i16 10, label %89
  ]

67:                                               ; preds = %63
  %68 = icmp eq i8 %66, 0
  br i1 %68, label %142, label %69

69:                                               ; preds = %67
  %70 = zext i8 %66 to i32
  %71 = sub nsw i32 32, %70
  %72 = shl nsw i32 -1, %71
  %73 = load i32, ptr %65, align 4
  %74 = load i32, ptr %7, align 4
  %75 = xor i32 %73, %74
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %77 = and i32 %76, %72
  %78 = icmp eq i32 %77, 0
  %79 = zext i8 %66 to i32
  %80 = sub nsw i32 32, %79
  %81 = shl nsw i32 -1, %80
  %82 = load i32, ptr %64, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #24
  %84 = and i32 %83, %81
  %85 = load i32, ptr %7, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #24
  %87 = and i32 %86, %81
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %149, label %118

89:                                               ; preds = %63
  %90 = zext i8 %66 to i32
  %91 = lshr i32 %90, 5
  %92 = and i32 %90, 31
  %93 = icmp ult i8 %66, 32
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = shl nuw nsw i32 %91, 2
  %96 = tail call i32 @bcmp(ptr %65, ptr %7, i32 %95)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %94, %89
  %99 = icmp eq i32 %92, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %98
  %101 = sub nuw nsw i32 32, %92
  %102 = shl nsw i32 -1, %101
  %103 = getelementptr [4 x i32], ptr %65, i32 0, i32 %91
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #24
  %106 = and i32 %105, %102
  %107 = getelementptr [4 x i32], ptr %7, i32 0, i32 %91
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #24
  %110 = and i32 %109, %102
  %111 = icmp ult i32 %106, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %100
  %113 = icmp ugt i32 %106, %110
  %114 = zext i1 %113 to i32
  br label %115

115:                                              ; preds = %112, %100, %98
  %116 = phi i32 [ %114, %112 ], [ -1, %100 ], [ 0, %98 ]
  %117 = icmp eq i32 %116, 0
  br i1 %93, label %125, label %120

118:                                              ; preds = %69
  %119 = icmp ugt i32 %84, %87
  br label %142

120:                                              ; preds = %115, %94
  %121 = phi i1 [ %117, %115 ], [ false, %94 ]
  %122 = shl nuw nsw i32 %91, 2
  %123 = tail call i32 @bcmp(ptr %64, ptr %7, i32 %122)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %120, %115
  %126 = phi i1 [ %121, %120 ], [ %117, %115 ]
  %127 = icmp eq i32 %92, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %125
  %129 = sub nuw nsw i32 32, %92
  %130 = shl nsw i32 -1, %129
  %131 = getelementptr [4 x i32], ptr %64, i32 0, i32 %91
  %132 = load i32, ptr %131, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #24
  %134 = and i32 %133, %130
  %135 = getelementptr [4 x i32], ptr %7, i32 0, i32 %91
  %136 = load i32, ptr %135, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #24
  %138 = and i32 %137, %130
  %139 = icmp ult i32 %134, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %128
  %141 = icmp ugt i32 %134, %138
  br label %142

142:                                              ; preds = %140, %125, %118, %67, %63
  %143 = phi i1 [ %126, %125 ], [ %78, %118 ], [ %126, %140 ], [ true, %63 ], [ true, %67 ]
  %144 = phi i1 [ false, %125 ], [ %119, %118 ], [ %141, %140 ], [ false, %63 ], [ false, %67 ]
  %145 = xor i1 %144, true
  %146 = xor i1 %143, true
  %147 = select i1 %146, i1 true, i1 %144
  %148 = select i1 %143, i1 true, i1 %145
  br i1 %147, label %149, label %168

149:                                              ; preds = %142, %128, %120, %69
  %150 = phi i1 [ %148, %142 ], [ %126, %128 ], [ %78, %69 ], [ %121, %120 ]
  %151 = phi i1 [ %145, %142 ], [ false, %128 ], [ false, %69 ], [ false, %120 ]
  %152 = phi i1 [ %143, %142 ], [ %126, %128 ], [ %78, %69 ], [ %121, %120 ]
  %153 = load i1, ptr @xfrm_policy_inexact_list_reinsert.__already_done.1, align 1
  %154 = select i1 %150, i1 true, i1 %153
  br i1 %154, label %156, label %155, !prof !12

155:                                              ; preds = %149
  store i1 true, ptr @xfrm_policy_inexact_list_reinsert.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 893, i32 noundef 9, ptr noundef null) #24
  br label %156

156:                                              ; preds = %155, %149
  %157 = zext i1 %152 to i32
  %158 = add i32 %11, %157
  %159 = zext i1 %151 to i32
  %160 = add i32 %12, %159
  %161 = icmp ne i32 %158, 0
  %162 = icmp ne i32 %160, 0
  %163 = select i1 %161, i1 %162, i1 false
  %164 = load i1, ptr @xfrm_policy_inexact_list_reinsert.__already_done.2, align 1
  %165 = xor i1 %164, true
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %168, !prof !9

167:                                              ; preds = %156
  store i1 true, ptr @xfrm_policy_inexact_list_reinsert.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 898, i32 noundef 9, ptr noundef null) #24
  br label %168

168:                                              ; preds = %167, %156, %142, %9
  %169 = phi i32 [ %12, %9 ], [ %12, %142 ], [ %160, %167 ], [ %160, %156 ]
  %170 = phi i32 [ %11, %9 ], [ %11, %142 ], [ %158, %167 ], [ %158, %156 ]
  %171 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 8)
  br i1 %173, label %174, label %9

174:                                              ; preds = %168, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_policy_inexact_gc_tree(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call ptr @rb_first(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %20, %2
  %6 = phi ptr [ %8, %20 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %6, i32 0, i32 3
  tail call fastcc void @xfrm_policy_inexact_gc_tree(ptr noundef %7, i1 noundef zeroext %1)
  %8 = tail call ptr @rb_next(ptr noundef nonnull %6) #24
  %9 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %6, i32 0, i32 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load volatile ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %5
  %16 = load i1, ptr @xfrm_policy_inexact_gc_tree.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %1, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %15
  store i1 true, ptr @xfrm_policy_inexact_gc_tree.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1077, i32 noundef 9, ptr noundef null) #24
  br label %20

20:                                               ; preds = %22, %19, %15
  %21 = icmp eq ptr %8, null
  br i1 %21, label %24, label %5

22:                                               ; preds = %12
  tail call void @rb_erase(ptr noundef nonnull %6, ptr noundef %0) #24
  %23 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %23, ptr noundef nonnull inttoptr (i32 12 to ptr)) #24
  br label %20

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_lookup_inexact_addr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) unnamed_addr #1 {
  br label %5

5:                                                ; preds = %72, %4
  %6 = load volatile i32, ptr %1, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !74
  %10 = load volatile i32, ptr %1, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !75
  %15 = load volatile ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %72, label %17

17:                                               ; preds = %68, %13
  %18 = phi ptr [ %70, %68 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.xfrm_pol_inexact_node, ptr %18, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  switch i16 %3, label %75 [
    i16 2, label %22
    i16 10, label %35
  ]

22:                                               ; preds = %17
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %75, label %24

24:                                               ; preds = %22
  %25 = zext i8 %21 to i32
  %26 = sub nsw i32 32, %25
  %27 = shl nsw i32 -1, %26
  %28 = load i32, ptr %2, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #24
  %30 = and i32 %29, %27
  %31 = load i32, ptr %19, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #24
  %33 = and i32 %32, %27
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %62, label %64

35:                                               ; preds = %17
  %36 = zext i8 %21 to i32
  %37 = lshr i32 %36, 5
  %38 = and i32 %36, 31
  %39 = icmp ult i8 %21, 32
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = shl nuw nsw i32 %37, 2
  %42 = tail call i32 @memcmp(ptr noundef %2, ptr noundef %19, i32 noundef %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40, %35
  %45 = icmp eq i32 %38, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %44
  %47 = sub nuw nsw i32 32, %38
  %48 = shl nsw i32 -1, %47
  %49 = getelementptr [4 x i32], ptr %2, i32 0, i32 %37
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #24
  %52 = and i32 %51, %48
  %53 = getelementptr [4 x i32], ptr %19, i32 0, i32 %37
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #24
  %56 = and i32 %55, %48
  %57 = icmp ult i32 %52, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %46
  %59 = icmp ugt i32 %52, %56
  br i1 %59, label %66, label %75

60:                                               ; preds = %40
  %61 = icmp slt i32 %42, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %60, %46, %24
  %63 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %68

64:                                               ; preds = %24
  %65 = icmp ugt i32 %30, %33
  br i1 %65, label %66, label %75

66:                                               ; preds = %64, %60, %58
  %67 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi ptr [ %67, %66 ], [ %63, %62 ]
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %17

72:                                               ; preds = %68, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !44
  %73 = load volatile i32, ptr %1, align 4
  %74 = icmp eq i32 %73, %14
  br i1 %74, label %75, label %5

75:                                               ; preds = %72, %64, %58, %44, %22, %17
  %76 = phi ptr [ %18, %58 ], [ %18, %22 ], [ %15, %17 ], [ %18, %44 ], [ %18, %64 ], [ null, %72 ]
  ret ptr %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dst_discard(ptr noundef %0) #10 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @dst_discard_out(ptr noundef nonnull @init_net, ptr noundef %3, ptr noundef %0) #24
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_afinfo_get_rcu(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_discard_out(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release_immediate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_mtu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xdst_queue_output(ptr nocapture noundef readnone %0, ptr noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.xfrm_dst, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 11
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 12
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sk_buff_fclones, ptr %2, i32 0, i32 2
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sk_buff_fclones, ptr %2, i32 0, i32 1, i32 1
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %19
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #24
  br label %119

24:                                               ; preds = %19, %15, %3
  %25 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 100
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #24
  br label %119

29:                                               ; preds = %24
  %30 = and i32 %5, 1
  %31 = icmp ne i32 %30, 0
  %32 = icmp ugt i32 %5, 1
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #24, !srcloc !14
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 0, i32 1, ptr elementtype(i32) %35) #24, !srcloc !30
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi ptr [ null, %34 ], [ %7, %39 ]
  %42 = ptrtoint ptr %41 to i32
  store i32 %42, ptr %4, align 8
  %43 = icmp ne ptr %41, null
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = lshr i16 %46, 14
  %48 = trunc i16 %47 to i8
  %49 = and i8 %48, 1
  %50 = or i8 %49, %44
  %51 = zext i8 %50 to i16
  %52 = shl nuw nsw i16 %51, 14
  %53 = and i16 %46, -16385
  %54 = or i16 %52, %53
  store i16 %54, ptr %45, align 2
  br label %55

55:                                               ; preds = %40, %29
  %56 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %56) #24
  %57 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 10, ptr %57, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi i32 [ 10, %60 ], [ %58, %55 ]
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = add i32 %62, %63
  %65 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16, i32 1
  %66 = tail call i32 @del_timer(ptr noundef %65) #24
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16, i32 1, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %70, %64
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %72, i32 %70, i32 %64
  %74 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #24, !srcloc !14
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #24, !srcloc !22
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %96, label %80, !prof !12

80:                                               ; preds = %78
  tail call void @refcount_warn_saturate(ptr noundef %74, i32 noundef 3) #24
  br label %96

81:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !23
  %82 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 15, i32 1
  %83 = load i8, ptr %82, align 8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %86, !prof !9

85:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #24, !srcloc !24
  unreachable

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 6
  %88 = tail call i32 @del_timer(ptr noundef %87) #24
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = tail call i32 @del_timer(ptr noundef %65) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %86
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #24, !srcloc !25
  unreachable

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 26
  tail call void @call_rcu(ptr noundef %95, ptr noundef nonnull @xfrm_policy_destroy_rcu) #24
  br label %96

96:                                               ; preds = %94, %80, %78, %61
  %97 = phi i32 [ %64, %61 ], [ %73, %78 ], [ %73, %80 ], [ %73, %94 ]
  %98 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  store volatile ptr %10, ptr %2, align 8
  %100 = getelementptr inbounds %struct.anon.6, ptr %2, i32 0, i32 1
  store volatile ptr %99, ptr %100, align 4
  store volatile ptr %2, ptr %98, align 4
  store volatile ptr %2, ptr %99, align 4
  %101 = load i32, ptr %25, align 4
  %102 = add i32 %101, 1
  store volatile i32 %102, ptr %25, align 4
  %103 = tail call i32 @mod_timer(ptr noundef %65, i32 noundef %97) #24
  %104 = icmp ne i32 %103, 0
  %105 = icmp eq ptr %9, null
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %118, label %107, !prof !13

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.xfrm_policy, ptr %9, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #24, !srcloc !14
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #24, !srcloc !15
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112, !prof !9

112:                                              ; preds = %107
  %113 = add i32 %110, 1
  %114 = or i32 %113, %110
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %118, label %116, !prof !12

116:                                              ; preds = %112, %107
  %117 = phi i32 [ 2, %107 ], [ 1, %112 ]
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef %117) #24
  br label %118

118:                                              ; preds = %116, %112, %96
  tail call void @_raw_spin_unlock_bh(ptr noundef %56) #24
  br label %119

119:                                              ; preds = %118, %28, %23
  %120 = phi i32 [ 0, %23 ], [ -11, %28 ], [ 0, %118 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xfrm_net_init(ptr noundef %0) #12 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  store i32 0, ptr %2, align 64
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 31
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 30
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 32
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @xfrm_net_init.__key) #24
  %6 = tail call i32 @xfrm_state_init(ptr noundef %0) #24
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @xfrm_policy_init(ptr noundef %0) #27
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @xfrm_sysctl_init(ptr noundef %0) #24
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call fastcc void @xfrm_policy_fini(ptr noundef %0)
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ %9, %8 ], [ %12, %14 ]
  tail call void @xfrm_state_fini(ptr noundef %0) #24
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = phi i32 [ 0, %11 ], [ %6, %1 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_net_exit(ptr noundef %0) #22 section ".ref.text" {
  tail call void @xfrm_sysctl_fini(ptr noundef %0) #24
  tail call fastcc void @xfrm_policy_fini(ptr noundef %0)
  tail call void @xfrm_state_fini(ptr noundef %0) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_policy_init(ptr noundef %0) unnamed_addr #12 section ".init.text" {
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 208, i32 noundef 0, i32 noundef 270336, ptr noundef null) #24
  store ptr %2, ptr @xfrm_dst_cache, align 4
  %3 = tail call i32 @rhashtable_init(ptr noundef nonnull @xfrm_policy_inexact_table, ptr noundef nonnull @xfrm_pol_inexact_params) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !12

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_policy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4024, 0\0A.popsection", ""() #24, !srcloc !76
  unreachable

6:                                                ; preds = %1
  %7 = tail call ptr @xfrm_hash_alloc(i32 noundef 32) #24
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 9
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 10
  store i32 7, ptr %11, align 4
  br label %12

12:                                               ; preds = %23, %10
  %13 = phi i32 [ 0, %10 ], [ %29, %23 ]
  %14 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 %13
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i32 %13, 3
  %16 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 13, i32 %15
  store i32 0, ptr %16, align 4
  %17 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 11, i32 %13
  store ptr null, ptr %17, align 4
  %18 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %13
  %19 = tail call ptr @xfrm_hash_alloc(i32 noundef 32) #24
  store ptr %19, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %56, label %50

23:                                               ; preds = %12
  %24 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %13, i32 1
  store i32 7, ptr %24, align 4
  %25 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %13, i32 2
  store i8 32, ptr %25, align 4
  %26 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %13, i32 3
  store i8 32, ptr %26, align 1
  %27 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %13, i32 4
  store i8 -128, ptr %27, align 2
  %28 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %13, i32 5
  store i8 -128, ptr %28, align 1
  %29 = add nuw nsw i32 %13, 1
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %12

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15
  %33 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 2
  store i8 32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 3
  store i8 32, ptr %34, align 1
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 4
  store i8 -128, ptr %35, align 2
  %36 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 5
  store i8 -128, ptr %36, align 1
  %37 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 1
  %38 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 1, i32 1
  store i32 0, ptr %38, align 4
  store i32 0, ptr %37, align 4
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 8
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 8, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 16
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 16, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 14
  store i32 -32, ptr %43, align 8
  %44 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 14, i32 1
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 14, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 14, i32 2
  store ptr @xfrm_hash_resize, ptr %46, align 4
  store i32 -32, ptr %32, align 8
  %47 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 0, i32 1
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 0, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 15, i32 0, i32 2
  store ptr @xfrm_hash_rebuild, ptr %49, align 4
  br label %58

50:                                               ; preds = %50, %21
  %51 = phi i32 [ %52, %50 ], [ %13, %21 ]
  %52 = add nsw i32 %51, -1
  %53 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 %52
  %54 = load ptr, ptr %53, align 4
  tail call void @xfrm_hash_free(ptr noundef %54, i32 noundef 32) #24
  %55 = icmp sgt i32 %51, 1
  br i1 %55, label %50, label %56

56:                                               ; preds = %50, %21
  %57 = load ptr, ptr %8, align 8
  tail call void @xfrm_hash_free(ptr noundef %57, i32 noundef 32) #24
  br label %58

58:                                               ; preds = %56, %31, %6
  %59 = phi i32 [ 0, %31 ], [ -12, %6 ], [ -12, %56 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_sysctl_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_policy_fini(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 14
  %3 = tail call zeroext i1 @flush_work(ptr noundef %2) #24
  %4 = tail call i32 @xfrm_policy_flush(ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false)
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 8
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %9, label %8, !prof !12

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4089, i32 noundef 9, ptr noundef null) #24
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 11, i32 0
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !12

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4094, i32 noundef 9, ptr noundef null) #24
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 0
  %16 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 2
  %19 = add i32 %18, 4
  %20 = load ptr, ptr %15, align 4
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !12

23:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4098, i32 noundef 9, ptr noundef null) #24
  %24 = load ptr, ptr %15, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ %24, %23 ], [ %20, %14 ]
  tail call void @xfrm_hash_free(ptr noundef %26, i32 noundef %19) #24
  %27 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 11, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !12

30:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4094, i32 noundef 9, ptr noundef null) #24
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 1
  %33 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 2
  %36 = add i32 %35, 4
  %37 = load ptr, ptr %32, align 4
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !12

40:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4098, i32 noundef 9, ptr noundef null) #24
  %41 = load ptr, ptr %32, align 4
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi ptr [ %41, %40 ], [ %37, %31 ]
  tail call void @xfrm_hash_free(ptr noundef %43, i32 noundef %36) #24
  %44 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 11, i32 2
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !12

47:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4094, i32 noundef 9, ptr noundef null) #24
  br label %48

48:                                               ; preds = %47, %42
  %49 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 2
  %50 = getelementptr %struct.net, ptr %0, i32 0, i32 40, i32 12, i32 2, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 2
  %53 = add i32 %52, 4
  %54 = load ptr, ptr %49, align 4
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !12

57:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4098, i32 noundef 9, ptr noundef null) #24
  %58 = load ptr, ptr %49, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi ptr [ %58, %57 ], [ %54, %48 ]
  tail call void @xfrm_hash_free(ptr noundef %60, i32 noundef %53) #24
  %61 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 %62, 2
  %64 = add i32 %63, 4
  %65 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 9
  %66 = load ptr, ptr %65, align 8
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69, !prof !12

69:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4103, i32 noundef 9, ptr noundef null) #24
  %70 = load ptr, ptr %65, align 8
  br label %71

71:                                               ; preds = %69, %59
  %72 = phi ptr [ %70, %69 ], [ %66, %59 ]
  tail call void @xfrm_hash_free(ptr noundef %72, i32 noundef %64) #24
  %73 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %73) #24
  %74 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %82, label %77

77:                                               ; preds = %77, %71
  %78 = phi ptr [ %80, %77 ], [ %75, %71 ]
  %79 = getelementptr i8, ptr %78, i32 -28
  %80 = load ptr, ptr %78, align 4
  tail call fastcc void @__xfrm_policy_inexact_prune_bin(ptr noundef %79, i1 noundef zeroext true)
  %81 = icmp eq ptr %80, %74
  br i1 %81, label %82, label %77

82:                                               ; preds = %77, %71
  tail call void @_raw_spin_unlock_bh(ptr noundef %73) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_hash_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_hash_resize(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -1672
  tail call void @mutex_lock(ptr noundef nonnull @hash_resize_mutex) #24
  %3 = getelementptr i8, ptr %0, i32 516
  %4 = getelementptr i8, ptr %0, i32 512
  br label %5

5:                                                ; preds = %156, %1
  %6 = phi i32 [ 0, %1 ], [ %157, %156 ]
  %7 = phi i32 [ 0, %1 ], [ %12, %156 ]
  %8 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 13, i32 %6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 12, i32 %6, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %7
  %13 = add i32 %11, -1048575
  %14 = icmp ult i32 %13, -1048576
  %15 = icmp ule i32 %9, %11
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %156, label %17

17:                                               ; preds = %5
  %18 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 12, i32 %6
  %19 = shl nuw nsw i32 %11, 1
  %20 = or i32 %19, 1
  %21 = shl i32 %20, 2
  %22 = add i32 %21, 4
  %23 = tail call ptr @xfrm_hash_alloc(i32 noundef %22) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %156, label %25

25:                                               ; preds = %17
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #24
  %26 = load i32, ptr %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %4, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !65
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 12, i32 %6, i32 4
  %30 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 12, i32 %6, i32 5
  %31 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 12, i32 %6, i32 2
  %32 = getelementptr %struct.net, ptr %2, i32 0, i32 40, i32 12, i32 %6, i32 3
  br label %33

33:                                               ; preds = %148, %25
  %34 = phi i32 [ %11, %25 ], [ %149, %148 ]
  %35 = getelementptr %struct.hlist_head, ptr %28, i32 %34
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %144, %33
  %38 = phi ptr [ %36, %33 ], [ %146, %144 ]
  %39 = phi i32 [ 0, %33 ], [ %145, %144 ]
  %40 = icmp eq ptr %38, null
  br i1 %40, label %144, label %41

41:                                               ; preds = %140, %37
  %42 = phi ptr [ %142, %140 ], [ null, %37 ]
  %43 = phi ptr [ %45, %140 ], [ %38, %37 ]
  %44 = phi i32 [ %141, %140 ], [ %39, %37 ]
  %45 = load ptr, ptr %43, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 22
  %47 = load i16, ptr %46, align 2
  switch i16 %47, label %108 [
    i16 2, label %56
    i16 10, label %48
  ]

48:                                               ; preds = %41
  %49 = load i8, ptr %29, align 2
  %50 = load i8, ptr %30, align 1
  %51 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 12
  %52 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 1
  %53 = tail call fastcc i32 @__xfrm6_pref_hash(ptr noundef %51, i8 noundef zeroext %49) #24
  %54 = tail call fastcc i32 @__xfrm6_pref_hash(ptr noundef %52, i8 noundef zeroext %50) #24
  %55 = xor i32 %54, %53
  br label %108

56:                                               ; preds = %41
  %57 = load i8, ptr %31, align 4
  %58 = load i8, ptr %32, align 1
  %59 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 12
  %60 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 12, i32 1
  %61 = load i32, ptr %59, align 4
  %62 = zext i8 %57 to i32
  %63 = icmp eq i8 %57, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = icmp ult i8 %57, 32
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = sub nsw i32 32, %62
  %68 = shl nsw i32 -1, %67
  br label %69

69:                                               ; preds = %66, %64, %56
  %70 = phi i32 [ %68, %66 ], [ -1, %64 ], [ 0, %56 ]
  %71 = load i32, ptr %60, align 4
  %72 = zext i8 %58 to i32
  %73 = icmp eq i8 %58, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = icmp ult i8 %58, 32
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = sub nsw i32 32, %72
  %78 = shl nsw i32 -1, %77
  br label %79

79:                                               ; preds = %76, %74, %69
  %80 = phi i32 [ %78, %76 ], [ -1, %74 ], [ 0, %69 ]
  %81 = tail call i32 @llvm.bswap.i32(i32 %71) #24
  %82 = tail call i32 @llvm.bswap.i32(i32 %61) #24
  %83 = and i32 %70, %82
  %84 = and i32 %80, %81
  %85 = add i32 %83, -559038729
  %86 = add i32 %84, -559038729
  %87 = xor i32 %86, -559038729
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 14) #24
  %89 = sub i32 %87, %88
  %90 = xor i32 %89, %85
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 11) #24
  %92 = sub i32 %90, %91
  %93 = xor i32 %92, %86
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 25) #24
  %95 = sub i32 %93, %94
  %96 = xor i32 %95, %89
  %97 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 16) #24
  %98 = sub i32 %96, %97
  %99 = xor i32 %98, %92
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 4) #24
  %101 = sub i32 %99, %100
  %102 = xor i32 %101, %95
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 14) #24
  %104 = sub i32 %102, %103
  %105 = xor i32 %104, %98
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 24) #24
  %107 = sub i32 %105, %106
  br label %108

108:                                              ; preds = %79, %48, %41
  %109 = phi i32 [ %55, %48 ], [ %107, %79 ], [ 0, %41 ]
  %110 = lshr i32 %109, 16
  %111 = xor i32 %110, %109
  %112 = and i32 %111, %20
  %113 = icmp eq ptr %42, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 1, i32 1
  %116 = load ptr, ptr %115, align 4
  store volatile ptr %45, ptr %116, align 4
  %117 = icmp eq ptr %45, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  store volatile ptr %116, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %114
  store volatile ptr inttoptr (i32 290 to ptr), ptr %115, align 4
  %121 = getelementptr %struct.hlist_head, ptr %23, i32 %112
  %122 = load ptr, ptr %121, align 4
  store ptr %122, ptr %43, align 4
  store volatile ptr %121, ptr %115, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  store volatile ptr %43, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %136

124:                                              ; preds = %108
  %125 = icmp eq i32 %112, %44
  br i1 %125, label %126, label %140

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.xfrm_policy, ptr %43, i32 0, i32 1, i32 1
  %128 = load ptr, ptr %127, align 4
  store volatile ptr %45, ptr %128, align 4
  %129 = icmp eq ptr %45, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  store volatile ptr %128, ptr %131, align 4
  br label %132

132:                                              ; preds = %130, %126
  store volatile ptr inttoptr (i32 290 to ptr), ptr %127, align 4
  %133 = load ptr, ptr %42, align 4
  store ptr %133, ptr %43, align 4
  store volatile ptr %42, ptr %127, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  store volatile ptr %43, ptr %42, align 4
  %134 = load ptr, ptr %43, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %132, %120
  %137 = phi ptr [ %122, %120 ], [ %134, %132 ]
  %138 = phi i32 [ %112, %120 ], [ %44, %132 ]
  %139 = getelementptr inbounds %struct.hlist_node, ptr %137, i32 0, i32 1
  store volatile ptr %43, ptr %139, align 4
  br label %140

140:                                              ; preds = %136, %132, %124, %120
  %141 = phi i32 [ %44, %124 ], [ %112, %120 ], [ %44, %132 ], [ %138, %136 ]
  %142 = phi ptr [ %42, %124 ], [ %43, %120 ], [ %43, %132 ], [ %43, %136 ]
  %143 = icmp eq ptr %45, null
  br i1 %143, label %144, label %41

144:                                              ; preds = %140, %37
  %145 = phi i32 [ %39, %37 ], [ %141, %140 ]
  %146 = load volatile ptr, ptr %35, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %37

148:                                              ; preds = %144
  %149 = add nsw i32 %34, -1
  %150 = icmp sgt i32 %34, 0
  br i1 %150, label %33, label %151

151:                                              ; preds = %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !77
  store volatile ptr %23, ptr %18, align 4
  store i32 %20, ptr %10, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !66
  %152 = load i32, ptr %4, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %4, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #24
  tail call void @synchronize_rcu() #24
  %154 = shl i32 %11, 2
  %155 = add i32 %154, 4
  tail call void @xfrm_hash_free(ptr noundef %28, i32 noundef %155) #24
  br label %156

156:                                              ; preds = %151, %17, %5
  %157 = add nuw nsw i32 %6, 1
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %5

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %0, i32 -76
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, -1048575
  %163 = icmp ult i32 %162, -1048576
  %164 = icmp uge i32 %161, %12
  %165 = or i1 %164, %163
  br i1 %165, label %210, label %166

166:                                              ; preds = %159
  %167 = shl nuw nsw i32 %161, 1
  %168 = or i32 %167, 1
  %169 = shl i32 %168, 2
  %170 = add i32 %169, 4
  %171 = getelementptr i8, ptr %0, i32 -80
  %172 = load ptr, ptr %171, align 8
  %173 = tail call ptr @xfrm_hash_alloc(i32 noundef %170) #24
  %174 = icmp eq ptr %173, null
  br i1 %174, label %210, label %175

175:                                              ; preds = %166
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #24
  br label %176

176:                                              ; preds = %204, %175
  %177 = phi i32 [ %205, %204 ], [ %161, %175 ]
  %178 = getelementptr %struct.hlist_head, ptr %172, i32 %177
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  %181 = getelementptr i8, ptr %179, i32 -8
  %182 = icmp eq ptr %181, null
  %183 = or i1 %180, %182
  br i1 %183, label %204, label %184

184:                                              ; preds = %198, %176
  %185 = phi ptr [ %201, %198 ], [ %181, %176 ]
  %186 = getelementptr inbounds %struct.xfrm_policy, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.xfrm_policy, ptr %185, i32 0, i32 9
  %189 = load i32, ptr %188, align 8
  %190 = lshr i32 %189, 8
  %191 = xor i32 %190, %189
  %192 = and i32 %191, %168
  %193 = getelementptr %struct.hlist_head, ptr %173, i32 %192
  %194 = load ptr, ptr %193, align 4
  store volatile ptr %194, ptr %186, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.hlist_node, ptr %194, i32 0, i32 1
  store volatile ptr %186, ptr %197, align 4
  br label %198

198:                                              ; preds = %196, %184
  store volatile ptr %186, ptr %193, align 4
  %199 = getelementptr inbounds %struct.xfrm_policy, ptr %185, i32 0, i32 2, i32 1
  store volatile ptr %193, ptr %199, align 4
  %200 = icmp eq ptr %187, null
  %201 = getelementptr i8, ptr %187, i32 -8
  %202 = icmp eq ptr %201, null
  %203 = or i1 %200, %202
  br i1 %203, label %204, label %184

204:                                              ; preds = %198, %176
  %205 = add nsw i32 %177, -1
  %206 = icmp sgt i32 %177, 0
  br i1 %206, label %176, label %207

207:                                              ; preds = %204
  store ptr %173, ptr %171, align 8
  store i32 %168, ptr %160, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #24
  %208 = shl i32 %161, 2
  %209 = add i32 %208, 4
  tail call void @xfrm_hash_free(ptr noundef %172, i32 noundef %209) #24
  br label %210

210:                                              ; preds = %207, %166, %159
  tail call void @mutex_unlock(ptr noundef nonnull @hash_resize_mutex) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_hash_rebuild(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @hash_resize_mutex) #24
  %2 = getelementptr inbounds %struct.xfrm_policy_hthresh, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xfrm_policy_hthresh, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xfrm_policy_hthresh, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xfrm_policy_hthresh, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.xfrm_policy_hthresh, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %15, %1
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !79
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !80
  %17 = load i8, ptr %3, align 8
  %18 = load i8, ptr %4, align 1
  %19 = load i8, ptr %5, align 2
  %20 = load i8, ptr %6, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !44
  %21 = load volatile i32, ptr %2, align 4
  %22 = icmp eq i32 %21, %16
  br i1 %22, label %23, label %7

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %0, i32 -1688
  %25 = getelementptr i8, ptr %0, i32 500
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #24
  %26 = getelementptr i8, ptr %0, i32 496
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !65
  %29 = getelementptr i8, ptr %0, i32 -104
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %35

32:                                               ; preds = %71, %23
  %33 = getelementptr i8, ptr %0, i32 -88
  %34 = getelementptr i8, ptr %0, i32 -76
  br label %74

35:                                               ; preds = %71, %23
  %36 = phi ptr [ %72, %71 ], [ %30, %23 ]
  %37 = getelementptr i8, ptr %36, i32 -224
  %38 = getelementptr i8, ptr %36, i32 -168
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds %struct.xfrm_policy_walk_entry, ptr %36, i32 0, i32 1
  %42 = load i8, ptr %41, align 8
  %43 = icmp ne i8 %42, 0
  %44 = icmp ugt i32 %40, 2
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %71, label %46

46:                                               ; preds = %35
  %47 = icmp eq i32 %40, 1
  %48 = getelementptr i8, ptr %36, i32 58
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, 2
  %51 = select i1 %50, i8 %18, i8 %20
  %52 = select i1 %50, i8 %17, i8 %19
  %53 = select i1 %47, i8 %51, i8 %52
  %54 = getelementptr i8, ptr %36, i32 -110
  %55 = load i8, ptr %54, align 2
  %56 = icmp ult i8 %55, %53
  br i1 %56, label %71, label %57

57:                                               ; preds = %46
  %58 = select i1 %50, i8 %17, i8 %19
  %59 = select i1 %50, i8 %18, i8 %20
  %60 = select i1 %47, i8 %58, i8 %59
  %61 = getelementptr i8, ptr %36, i32 -109
  %62 = load i8, ptr %61, align 1
  %63 = icmp ult i8 %62, %60
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = trunc i32 %40 to i8
  %66 = tail call fastcc ptr @xfrm_policy_inexact_alloc_bin(ptr noundef %37, i8 noundef zeroext %65)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %219, label %68

68:                                               ; preds = %64
  %69 = tail call fastcc ptr @xfrm_policy_inexact_alloc_chain(ptr noundef nonnull %66, ptr noundef %37)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %219, label %71

71:                                               ; preds = %68, %57, %46, %35
  %72 = load ptr, ptr %36, align 8
  %73 = icmp eq ptr %72, %29
  br i1 %73, label %32, label %35

74:                                               ; preds = %140, %32
  %75 = phi i32 [ 0, %32 ], [ %149, %140 ]
  %76 = getelementptr [3 x %struct.hlist_head], ptr %33, i32 0, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = getelementptr i8, ptr %77, i32 -672
  %80 = icmp eq ptr %79, null
  %81 = or i1 %78, %80
  br i1 %81, label %107, label %82

82:                                               ; preds = %102, %74
  %83 = phi ptr [ %104, %102 ], [ %79, %74 ]
  %84 = getelementptr inbounds %struct.xfrm_policy, ptr %83, i32 0, i32 25
  %85 = load ptr, ptr %84, align 8
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr inbounds %struct.xfrm_policy, ptr %83, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  store volatile ptr %86, ptr %88, align 4
  %89 = icmp eq ptr %86, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.hlist_node, ptr %86, i32 0, i32 1
  store volatile ptr %88, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %82
  store volatile ptr inttoptr (i32 290 to ptr), ptr %87, align 4
  %93 = getelementptr inbounds %struct.xfrm_policy, ptr %83, i32 0, i32 25, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %84, align 4
  store volatile ptr %97, ptr %94, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.hlist_node, ptr %97, i32 0, i32 1
  store volatile ptr %94, ptr %100, align 4
  br label %101

101:                                              ; preds = %99, %96
  store ptr null, ptr %84, align 4
  store ptr null, ptr %93, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = icmp eq ptr %85, null
  %104 = getelementptr i8, ptr %85, i32 -672
  %105 = icmp eq ptr %104, null
  %106 = or i1 %103, %105
  br i1 %106, label %107, label %82

107:                                              ; preds = %102, %74
  %108 = getelementptr [3 x %struct.xfrm_policy_hash], ptr %34, i32 0, i32 %75
  %109 = getelementptr inbounds %struct.xfrm_policy_hash, ptr %108, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr %108, align 4
  %112 = icmp sgt i32 %110, -1
  br i1 %112, label %113, label %137

113:                                              ; preds = %134, %107
  %114 = phi i32 [ %135, %134 ], [ %110, %107 ]
  %115 = getelementptr %struct.hlist_head, ptr %111, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %134, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %116, align 8
  %120 = getelementptr inbounds %struct.xfrm_policy, ptr %116, i32 0, i32 1, i32 1
  %121 = load ptr, ptr %120, align 4
  store volatile ptr %119, ptr %121, align 4
  %122 = icmp eq ptr %119, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %123, %118
  %124 = phi ptr [ %130, %123 ], [ %121, %118 ]
  %125 = phi ptr [ %129, %123 ], [ %120, %118 ]
  %126 = phi ptr [ %128, %123 ], [ %119, %118 ]
  %127 = getelementptr inbounds %struct.hlist_node, ptr %126, i32 0, i32 1
  store volatile ptr %124, ptr %127, align 4
  store volatile ptr inttoptr (i32 290 to ptr), ptr %125, align 4
  %128 = load ptr, ptr %126, align 8
  %129 = getelementptr inbounds %struct.xfrm_policy, ptr %126, i32 0, i32 1, i32 1
  %130 = load ptr, ptr %129, align 4
  store volatile ptr %128, ptr %130, align 4
  %131 = icmp eq ptr %128, null
  br i1 %131, label %132, label %123

132:                                              ; preds = %123, %118
  %133 = phi ptr [ %120, %118 ], [ %129, %123 ]
  store volatile ptr inttoptr (i32 290 to ptr), ptr %133, align 4
  br label %134

134:                                              ; preds = %132, %113
  %135 = add nsw i32 %114, -1
  %136 = icmp sgt i32 %114, 0
  br i1 %136, label %113, label %137

137:                                              ; preds = %134, %107
  %138 = icmp eq i32 %75, 1
  br i1 %138, label %140, label %139

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i8 [ %17, %139 ], [ %18, %137 ]
  %142 = phi i8 [ %18, %139 ], [ %17, %137 ]
  %143 = phi i8 [ %19, %139 ], [ %20, %137 ]
  %144 = phi i8 [ %20, %139 ], [ %19, %137 ]
  %145 = getelementptr inbounds %struct.xfrm_policy_hash, ptr %108, i32 0, i32 2
  store i8 %141, ptr %145, align 4
  %146 = getelementptr inbounds %struct.xfrm_policy_hash, ptr %108, i32 0, i32 3
  store i8 %142, ptr %146, align 1
  %147 = getelementptr inbounds %struct.xfrm_policy_hash, ptr %108, i32 0, i32 4
  store i8 %143, ptr %147, align 2
  %148 = getelementptr inbounds %struct.xfrm_policy_hash, ptr %108, i32 0, i32 5
  store i8 %144, ptr %148, align 1
  %149 = add nuw nsw i32 %75, 1
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %74

151:                                              ; preds = %140
  %152 = getelementptr i8, ptr %0, i32 -100
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %29
  br i1 %154, label %219, label %155

155:                                              ; preds = %215, %151
  %156 = phi ptr [ %217, %215 ], [ %153, %151 ]
  %157 = getelementptr i8, ptr %156, i32 -224
  %158 = getelementptr inbounds %struct.xfrm_policy_walk_entry, ptr %156, i32 0, i32 1
  %159 = load i8, ptr %158, align 8
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %215

161:                                              ; preds = %155
  %162 = getelementptr i8, ptr %156, i32 -168
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 7
  %165 = icmp ugt i32 %164, 2
  br i1 %165, label %215, label %166

166:                                              ; preds = %161
  %167 = getelementptr i8, ptr %156, i32 -152
  %168 = getelementptr i8, ptr %156, i32 58
  %169 = load i16, ptr %168, align 2
  %170 = tail call fastcc ptr @policy_hash_bysel(ptr noundef %24, ptr noundef %167, i16 noundef zeroext %169, i32 noundef %164)
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = trunc i32 %164 to i8
  %174 = tail call fastcc ptr @xfrm_policy_inexact_insert(ptr noundef %157, i8 noundef zeroext %173, i32 noundef 0)
  %175 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  %176 = load i1, ptr @xfrm_hash_rebuild.__already_done, align 1
  %177 = xor i1 %176, true
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %215, !prof !9

179:                                              ; preds = %172
  store i1 true, ptr @xfrm_hash_rebuild.__already_done, align 1
  %180 = ptrtoint ptr %174 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1340, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %180) #24
  br label %215

181:                                              ; preds = %166
  %182 = load ptr, ptr %170, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %213, label %184

184:                                              ; preds = %181
  %185 = getelementptr i8, ptr %156, i32 -172
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.xfrm_policy, ptr %182, i32 0, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = icmp ult i32 %186, %188
  br i1 %189, label %198, label %194

190:                                              ; preds = %194
  %191 = getelementptr inbounds %struct.xfrm_policy, ptr %196, i32 0, i32 8
  %192 = load i32, ptr %191, align 4
  %193 = icmp ult i32 %186, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190, %184
  %195 = phi ptr [ %196, %190 ], [ %182, %184 ]
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %190

198:                                              ; preds = %190, %184
  %199 = phi ptr [ null, %184 ], [ %195, %190 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %198, %194
  %202 = phi ptr [ %199, %198 ], [ %195, %194 ]
  %203 = load ptr, ptr %202, align 4
  store ptr %203, ptr %157, align 4
  %204 = getelementptr i8, ptr %156, i32 -220
  store volatile ptr %202, ptr %204, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  store volatile ptr %157, ptr %202, align 4
  %205 = load ptr, ptr %157, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %215, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.hlist_node, ptr %205, i32 0, i32 1
  store volatile ptr %157, ptr %208, align 4
  br label %215

209:                                              ; preds = %198
  store ptr %182, ptr %157, align 4
  %210 = getelementptr i8, ptr %156, i32 -220
  store volatile ptr %170, ptr %210, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  store volatile ptr %157, ptr %170, align 4
  br i1 %183, label %215, label %211

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.hlist_node, ptr %182, i32 0, i32 1
  store volatile ptr %157, ptr %212, align 4
  br label %215

213:                                              ; preds = %181
  store ptr %182, ptr %157, align 4
  %214 = getelementptr i8, ptr %156, i32 -220
  store volatile ptr %170, ptr %214, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  store volatile ptr %157, ptr %170, align 4
  br label %215

215:                                              ; preds = %213, %211, %209, %207, %201, %179, %172, %161, %155
  %216 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, %29
  br i1 %218, label %219, label %155

219:                                              ; preds = %215, %151, %68, %64
  %220 = getelementptr i8, ptr %0, i32 28
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, %220
  br i1 %222, label %228, label %223

223:                                              ; preds = %223, %219
  %224 = phi ptr [ %226, %223 ], [ %221, %219 ]
  %225 = getelementptr i8, ptr %224, i32 -28
  %226 = load ptr, ptr %224, align 4
  tail call fastcc void @__xfrm_policy_inexact_prune_bin(ptr noundef %225, i1 noundef zeroext false) #24
  %227 = icmp eq ptr %226, %220
  br i1 %227, label %228, label %223

228:                                              ; preds = %223, %219
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !66
  %229 = load i32, ptr %26, align 4
  %230 = add i32 %229, 1
  store i32 %230, ptr %26, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #24
  tail call void @mutex_unlock(ptr noundef nonnull @hash_resize_mutex) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_hash_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_sysctl_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #21 = { nounwind readonly }
attributes #22 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { cold nounwind }
attributes #27 = { cold }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149429789}
!11 = !{i64 2149430006}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 2002, i32 2000}
!14 = !{i64 862413, i64 2148352384, i64 2148352410, i64 2148352457, i64 2148352479, i64 2148352507, i64 2148352527}
!15 = !{i64 2148365257, i64 2148365289, i64 2148365318, i64 2148365352, i64 2148365383, i64 2148365406}
!16 = !{i64 2149038899}
!17 = !{i64 1542323, i64 1542346, i64 1542366, i64 1542390, i64 1542406}
!18 = !{i64 2149026841}
!19 = !{i64 2149026916, i64 2149026943, i64 2149026990, i64 2149027012, i64 2149027040, i64 2149027060}
!20 = !{i64 2149076502}
!21 = !{i64 2148465479}
!22 = !{i64 2148367614, i64 2148367646, i64 2148367675, i64 2148367709, i64 2148367740, i64 2148367763}
!23 = !{i64 2149380369}
!24 = !{i64 2156994545, i64 2156995032, i64 2156994582, i64 2156994638, i64 2156994672, i64 2156994696, i64 2156994737, i64 2156994758, i64 2156994786, i64 2156994820}
!25 = !{i64 2156995468, i64 2156995955, i64 2156995505, i64 2156995561, i64 2156995595, i64 2156995619, i64 2156995660, i64 2156995681, i64 2156995709, i64 2156995743}
!26 = !{!"auto-init"}
!27 = !{i64 2149031017}
!28 = !{i64 2149054020}
!29 = !{i64 2148363306}
!30 = !{i64 848982, i64 849007, i64 849029, i64 849045, i64 849057, i64 849077, i64 849101, i64 849117, i64 849129}
!31 = !{i64 2148363432}
!32 = !{i64 2148363799, i64 2148363825, i64 2148363854, i64 2148363888, i64 2148363919, i64 2148363942}
!33 = !{i64 2150638560}
!34 = !{i64 2150591675}
!35 = !{i64 2157288636}
!36 = !{i64 2157300622}
!37 = !{i64 2157304223, i64 2157304711, i64 2157304260, i64 2157304316, i64 2157304350, i64 2157304374, i64 2157304415, i64 2157304436, i64 2157304464, i64 2157304498}
!38 = !{i64 2155250113, i64 2155250595, i64 2155250150, i64 2155250206, i64 2155250240, i64 2155250264, i64 2155250305, i64 2155250326, i64 2155250354, i64 2155250388}
!39 = !{i64 2156702300}
!40 = !{i64 848476, i64 848500, i64 848521, i64 848538, i64 848555}
!41 = !{i64 2157254987}
!42 = !{i64 2157254829}
!43 = !{i64 2157255131}
!44 = !{i64 2149273822}
!45 = !{i64 768091, i64 768152}
!46 = !{i64 786791}
!47 = !{i64 771108}
!48 = !{i64 2157332956}
!49 = !{i64 2157346804}
!50 = !{i64 2154991400, i64 2154991891, i64 2154991437, i64 2154991493, i64 2154991527, i64 2154991551, i64 2154991592, i64 2154991613, i64 2154991641, i64 2154991675}
!51 = !{i64 2148825243}
!52 = !{i64 2151660836}
!53 = !{!"branch_weights", i32 2146410443, i32 1073205}
!54 = !{i64 2148372261, i64 2148372293, i64 2148372322, i64 2148372356, i64 2148372387, i64 2148372410}
!55 = !{i64 2148473601}
!56 = !{i64 2151660947}
!57 = !{i64 2151661176}
!58 = !{i64 2151661018}
!59 = !{i64 2151661258}
!60 = !{i64 2148472566}
!61 = !{i64 2148370720, i64 2148370752, i64 2148370781, i64 2148370815, i64 2148370846, i64 2148370869}
!62 = !{i64 2151661819}
!63 = !{i64 2154941172}
!64 = !{i64 2154943396}
!65 = !{i64 2149274121}
!66 = !{i64 2149274422}
!67 = !{i64 2155005590}
!68 = !{i64 2148366156, i64 2148366182, i64 2148366211, i64 2148366245, i64 2148366276, i64 2148366299}
!69 = !{i8 0, i8 2}
!70 = !{i64 2154947640}
!71 = !{i64 2154951074}
!72 = !{i64 2149448549}
!73 = !{i64 2157216264}
!74 = !{i64 2157216106}
!75 = !{i64 2157216408}
!76 = !{i64 2157354883, i64 2157355371, i64 2157354920, i64 2157354976, i64 2157355010, i64 2157355034, i64 2157355075, i64 2157355096, i64 2157355124, i64 2157355158}
!77 = !{i64 2157024799}
!78 = !{i64 2149283184}
!79 = !{i64 2149283026}
!80 = !{i64 2149283328}
