; ModuleID = '/llk/IR/net/core/neighbour.c_pt.bc'
source_filename = "../net/core/neighbour.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_rand_reach_time:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_rand_reach_time\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_rand_reach_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_changeaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_changeaddr\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_changeaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_carrier_down:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_carrier_down\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_carrier_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_ifdown:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_ifdown\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_ifdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_lookup_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_lookup_nodev\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_lookup_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___neigh_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__neigh_create\22\09\09\09\09\09"
module asm "__kstrtabns___neigh_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pneigh_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__pneigh_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___pneigh_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pneigh_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22pneigh_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_pneigh_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___neigh_event_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__neigh_event_send\22\09\09\09\09\09"
module asm "__kstrtabns___neigh_event_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_update:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_update\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___neigh_set_probe_once:\09\09\09\09\09"
module asm "\09.asciz \09\22__neigh_set_probe_once\22\09\09\09\09\09"
module asm "__kstrtabns___neigh_set_probe_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_event_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_event_ns\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_event_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_resolve_output:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_resolve_output\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_resolve_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_connected_output:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_connected_output\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_connected_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_direct_output:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_direct_output\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_direct_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pneigh_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22pneigh_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_pneigh_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_parms_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_parms_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_parms_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_parms_release:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_parms_release\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_parms_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_table_init:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_table_init\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_table_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_table_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_table_clear\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_table_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_for_each\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___neigh_for_each_release:\09\09\09\09\09"
module asm "\09.asciz \09\22__neigh_for_each_release\22\09\09\09\09\09"
module asm "__kstrtabns___neigh_for_each_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_seq_start\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_seq_next\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_seq_stop\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_app_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_app_ns\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_app_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_proc_dointvec:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_proc_dointvec\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_proc_dointvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_proc_dointvec_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_proc_dointvec_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_proc_dointvec_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_proc_dointvec_ms_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_proc_dointvec_ms_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_proc_dointvec_ms_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_sysctl_register:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_sysctl_register\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_sysctl_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_neigh_sysctl_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22neigh_sysctl_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_neigh_sysctl_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.55, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.55 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.neigh_sysctl_table = type { ptr, [21 x %struct.ctl_table] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.pneigh_entry = type { ptr, %struct.possible_net_t, ptr, %struct.netdevice_tracker, i32, i8, [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.130 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.neigh_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.neigh_seq_state = type { %struct.seq_net_private, ptr, ptr, ptr, i32, i32 }
%struct.seq_net_private = type {}
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.132 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.134 = type { ptr }
%struct.nda_cacheinfo = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.120 }
%union.anon.120 = type { [6 x i32], [24 x i8] }
%struct.ndt_config = type { i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.ndt_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__kstrtab_neigh_rand_reach_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_rand_reach_time = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_rand_reach_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_rand_reach_time to i32), ptr @__kstrtab_neigh_rand_reach_time, ptr @__kstrtabns_neigh_rand_reach_time }, section "___ksymtab+neigh_rand_reach_time", align 4
@__kstrtab_neigh_changeaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_changeaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_changeaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_changeaddr to i32), ptr @__kstrtab_neigh_changeaddr, ptr @__kstrtabns_neigh_changeaddr }, section "___ksymtab+neigh_changeaddr", align 4
@__kstrtab_neigh_carrier_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_carrier_down = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_carrier_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_carrier_down to i32), ptr @__kstrtab_neigh_carrier_down, ptr @__kstrtabns_neigh_carrier_down }, section "___ksymtab+neigh_carrier_down", align 4
@__kstrtab_neigh_ifdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_ifdown = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_ifdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_ifdown to i32), ptr @__kstrtab_neigh_ifdown, ptr @__kstrtabns_neigh_ifdown }, section "___ksymtab+neigh_ifdown", align 4
@__kstrtab_neigh_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_lookup to i32), ptr @__kstrtab_neigh_lookup, ptr @__kstrtabns_neigh_lookup }, section "___ksymtab+neigh_lookup", align 4
@__kstrtab_neigh_lookup_nodev = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_lookup_nodev = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_lookup_nodev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_lookup_nodev to i32), ptr @__kstrtab_neigh_lookup_nodev, ptr @__kstrtabns_neigh_lookup_nodev }, section "___ksymtab+neigh_lookup_nodev", align 4
@__kstrtab___neigh_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___neigh_create = external dso_local constant [0 x i8], align 1
@__ksymtab___neigh_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__neigh_create to i32), ptr @__kstrtab___neigh_create, ptr @__kstrtabns___neigh_create }, section "___ksymtab+__neigh_create", align 4
@__kstrtab___pneigh_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___pneigh_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___pneigh_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pneigh_lookup to i32), ptr @__kstrtab___pneigh_lookup, ptr @__kstrtabns___pneigh_lookup }, section "___ksymtab_gpl+__pneigh_lookup", align 4
@pneigh_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"net/core/neighbour.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_pneigh_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_pneigh_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_pneigh_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pneigh_lookup to i32), ptr @__kstrtab_pneigh_lookup, ptr @__kstrtabns_pneigh_lookup }, section "___ksymtab+pneigh_lookup", align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"\014neighbour: Destroying alive neighbour %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\014neighbour: Impossible event\0A\00", align 1
@__kstrtab_neigh_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_destroy to i32), ptr @__kstrtab_neigh_destroy, ptr @__kstrtabns_neigh_destroy }, section "___ksymtab+neigh_destroy", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___neigh_event_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___neigh_event_send = external dso_local constant [0 x i8], align 1
@__ksymtab___neigh_event_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__neigh_event_send to i32), ptr @__kstrtab___neigh_event_send, ptr @__kstrtabns___neigh_event_send }, section "___ksymtab+__neigh_event_send", align 4
@__kstrtab_neigh_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_update = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_update to i32), ptr @__kstrtab_neigh_update, ptr @__kstrtabns_neigh_update }, section "___ksymtab+neigh_update", align 4
@__kstrtab___neigh_set_probe_once = external dso_local constant [0 x i8], align 1
@__kstrtabns___neigh_set_probe_once = external dso_local constant [0 x i8], align 1
@__ksymtab___neigh_set_probe_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__neigh_set_probe_once to i32), ptr @__kstrtab___neigh_set_probe_once, ptr @__kstrtabns___neigh_set_probe_once }, section "___ksymtab+__neigh_set_probe_once", align 4
@__kstrtab_neigh_event_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_event_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_event_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_event_ns to i32), ptr @__kstrtab_neigh_event_ns, ptr @__kstrtabns_neigh_event_ns }, section "___ksymtab+neigh_event_ns", align 4
@__kstrtab_neigh_resolve_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_resolve_output = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_resolve_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_resolve_output to i32), ptr @__kstrtab_neigh_resolve_output, ptr @__kstrtabns_neigh_resolve_output }, section "___ksymtab+neigh_resolve_output", align 4
@__kstrtab_neigh_connected_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_connected_output = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_connected_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_connected_output to i32), ptr @__kstrtab_neigh_connected_output, ptr @__kstrtabns_neigh_connected_output }, section "___ksymtab+neigh_connected_output", align 4
@__kstrtab_neigh_direct_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_direct_output = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_direct_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_direct_output to i32), ptr @__kstrtab_neigh_direct_output, ptr @__kstrtabns_neigh_direct_output }, section "___ksymtab+neigh_direct_output", align 4
@__kstrtab_pneigh_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_pneigh_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_pneigh_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pneigh_enqueue to i32), ptr @__kstrtab_pneigh_enqueue, ptr @__kstrtabns_pneigh_enqueue }, section "___ksymtab+pneigh_enqueue", align 4
@__kstrtab_neigh_parms_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_parms_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_parms_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_parms_alloc to i32), ptr @__kstrtab_neigh_parms_alloc, ptr @__kstrtabns_neigh_parms_alloc }, section "___ksymtab+neigh_parms_alloc", align 4
@__kstrtab_neigh_parms_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_parms_release = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_parms_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_parms_release to i32), ptr @__kstrtab_neigh_parms_release, ptr @__kstrtabns_neigh_parms_release }, section "___ksymtab+neigh_parms_release", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.4 = private unnamed_addr constant [41 x i8] c"cannot create neighbour cache statistics\00", align 1
@neigh_stat_seq_ops = internal constant %struct.seq_operations { ptr @neigh_stat_seq_start, ptr @neigh_stat_seq_stop, ptr @neigh_stat_seq_next, ptr @neigh_stat_seq_show }, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"cannot create neighbour proc dir entry\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"cannot allocate neighbour cache hashes\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@neigh_tables = internal unnamed_addr global [3 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_neigh_table_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_table_init = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_table_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_table_init to i32), ptr @__kstrtab_neigh_table_init, ptr @__kstrtabns_neigh_table_init }, section "___ksymtab+neigh_table_init", align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"\012neighbour: neighbour leakage\0A\00", align 1
@__kstrtab_neigh_table_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_table_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_table_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_table_clear to i32), ptr @__kstrtab_neigh_table_clear, ptr @__kstrtabns_neigh_table_clear }, section "___ksymtab+neigh_table_clear", align 4
@nda_policy = dso_local constant <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 13, [2 x i8] undef } }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 32, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 5, i16 0, %union.anon.48 { i32 1 } } }>, align 4
@__kstrtab_neigh_for_each = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_for_each = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_for_each = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_for_each to i32), ptr @__kstrtab_neigh_for_each, ptr @__kstrtabns_neigh_for_each }, section "___ksymtab+neigh_for_each", align 4
@__kstrtab___neigh_for_each_release = external dso_local constant [0 x i8], align 1
@__kstrtabns___neigh_for_each_release = external dso_local constant [0 x i8], align 1
@__ksymtab___neigh_for_each_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__neigh_for_each_release to i32), ptr @__kstrtab___neigh_for_each_release, ptr @__kstrtabns___neigh_for_each_release }, section "___ksymtab+__neigh_for_each_release", align 4
@__kstrtab_neigh_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_xmit to i32), ptr @__kstrtab_neigh_xmit, ptr @__kstrtabns_neigh_xmit }, section "___ksymtab+neigh_xmit", align 4
@__kstrtab_neigh_seq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_seq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_seq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_seq_start to i32), ptr @__kstrtab_neigh_seq_start, ptr @__kstrtabns_neigh_seq_start }, section "___ksymtab+neigh_seq_start", align 4
@__kstrtab_neigh_seq_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_seq_next = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_seq_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_seq_next to i32), ptr @__kstrtab_neigh_seq_next, ptr @__kstrtabns_neigh_seq_next }, section "___ksymtab+neigh_seq_next", align 4
@__kstrtab_neigh_seq_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_seq_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_seq_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_seq_stop to i32), ptr @__kstrtab_neigh_seq_stop, ptr @__kstrtabns_neigh_seq_stop }, section "___ksymtab+neigh_seq_stop", align 4
@__kstrtab_neigh_app_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_app_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_app_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_app_ns to i32), ptr @__kstrtab_neigh_app_ns, ptr @__kstrtabns_neigh_app_ns }, section "___ksymtab+neigh_app_ns", align 4
@__kstrtab_neigh_proc_dointvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_proc_dointvec = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_proc_dointvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_proc_dointvec to i32), ptr @__kstrtab_neigh_proc_dointvec, ptr @__kstrtabns_neigh_proc_dointvec }, section "___ksymtab+neigh_proc_dointvec", align 4
@__kstrtab_neigh_proc_dointvec_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_proc_dointvec_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_proc_dointvec_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_proc_dointvec_jiffies to i32), ptr @__kstrtab_neigh_proc_dointvec_jiffies, ptr @__kstrtabns_neigh_proc_dointvec_jiffies }, section "___ksymtab+neigh_proc_dointvec_jiffies", align 4
@__kstrtab_neigh_proc_dointvec_ms_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_proc_dointvec_ms_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_proc_dointvec_ms_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_proc_dointvec_ms_jiffies to i32), ptr @__kstrtab_neigh_proc_dointvec_ms_jiffies, ptr @__kstrtabns_neigh_proc_dointvec_ms_jiffies }, section "___ksymtab+neigh_proc_dointvec_ms_jiffies", align 4
@neigh_sysctl_template = internal global %struct.neigh_sysctl_table { ptr null, [21 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.21, ptr inttoptr (i32 44 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_zero_intmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr inttoptr (i32 48 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_zero_intmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr inttoptr (i32 52 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_zero_intmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr inttoptr (i32 56 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_zero_intmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr inttoptr (i32 60 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_userhz_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr inttoptr (i32 64 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr inttoptr (i32 68 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr inttoptr (i32 72 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr inttoptr (i32 76 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_zero_intmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.30, ptr inttoptr (i32 80 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_zero_intmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.31, ptr inttoptr (i32 84 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_userhz_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.32, ptr inttoptr (i32 88 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_userhz_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.33, ptr inttoptr (i32 92 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_userhz_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr inttoptr (i32 76 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_unres_qlen, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.35, ptr inttoptr (i32 60 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr inttoptr (i32 64 to ptr), i32 4, i16 420, ptr null, ptr @neigh_proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.38, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.39, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.40, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table zeroinitializer] }, section ".data..read_mostly", align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"net/%s/neigh/%s\00", align 1
@__kstrtab_neigh_sysctl_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_sysctl_register = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_sysctl_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_sysctl_register to i32), ptr @__kstrtab_neigh_sysctl_register, ptr @__kstrtabns_neigh_sysctl_register }, section "___ksymtab+neigh_sysctl_register", align 4
@__kstrtab_neigh_sysctl_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_neigh_sysctl_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_neigh_sysctl_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @neigh_sysctl_unregister to i32), ptr @__kstrtab_neigh_sysctl_unregister, ptr @__kstrtabns_neigh_sysctl_unregister }, section "___ksymtab+neigh_sysctl_unregister", align 4
@__initcall__kmod_neighbour__533_3833_neigh_init4 = internal global ptr @neigh_init, section ".initcall4.init", align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"\016neighbour: %s: neighbor table overflow!\0A\00", align 1
@__tracepoint_neigh_timer_handler = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_neigh_create = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"NEIGH: BUG, double timer add, state is %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@__tracepoint_neigh_event_send_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_neigh_event_send_dead = external dso_local global %struct.tracepoint, align 4
@__neigh_update.__msg = internal constant [27 x i8] c"Neighbor entry is now dead\00", align 1
@__neigh_update.__msg.17 = internal constant [28 x i8] c"No link layer address given\00", align 1
@__tracepoint_neigh_update = external dso_local global %struct.tracepoint, align 4
@dst_neigh_lookup_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_neigh_update_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_neigh_cleanup_and_release = external dso_local global %struct.tracepoint, align 4
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.18 = private unnamed_addr constant [166 x i8] c"entries  allocs   destroys hash_grows lookups  hits     res_failed rcv_probes_mcast rcv_probes_ucast periodic_gc_runs forced_gc_runs unresolved_discards table_fulls\0A\00", align 1
@.str.19 = private unnamed_addr constant [123 x i8] c"%08x %08lx %08lx %08lx   %08lx %08lx %08lx   %08lx         %08lx         %08lx         %08lx       %08lx            %08lx\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"mcast_solicit\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"ucast_solicit\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"app_solicit\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"mcast_resolicit\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"retrans_time\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"base_reachable_time\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"delay_first_probe_time\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"gc_stale_time\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"unres_qlen_bytes\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"proxy_qlen\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"anycast_delay\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"proxy_delay\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"locktime\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"unres_qlen\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"retrans_time_ms\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"base_reachable_time_ms\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"gc_interval\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"gc_thresh1\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.39 = private unnamed_addr constant [11 x i8] c"gc_thresh2\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"gc_thresh3\00", align 1
@unres_qlen_max = internal global i32 1094538, align 4
@neigh_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@neigh_add.__msg = internal constant [30 x i8] c"Network address not specified\00", align 1
@neigh_add.__msg.41 = internal constant [21 x i8] c"Invalid link address\00", align 1
@neigh_add.__msg.42 = internal constant [24 x i8] c"Invalid network address\00", align 1
@neigh_add.__msg.43 = internal constant [31 x i8] c"Invalid NTF_* flag combination\00", align 1
@neigh_add.__msg.44 = internal constant [21 x i8] c"Device not specified\00", align 1
@neigh_add.__msg.45 = internal constant [39 x i8] c"Invalid NTF_* flag for permanent entry\00", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@neigh_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@neigh_delete.__msg = internal constant [30 x i8] c"Network address not specified\00", align 1
@neigh_delete.__msg.46 = internal constant [24 x i8] c"Invalid network address\00", align 1
@neigh_get.__msg = internal constant [23 x i8] c"Unknown device ifindex\00", align 1
@neigh_get.__msg.47 = internal constant [30 x i8] c"Network address not specified\00", align 1
@neigh_get.__msg.48 = internal constant [32 x i8] c"Proxy neighbour entry not found\00", align 1
@neigh_get.__msg.49 = internal constant [20 x i8] c"No device specified\00", align 1
@neigh_get.__msg.50 = internal constant [26 x i8] c"Neighbour entry not found\00", align 1
@neigh_valid_get_req.__msg = internal constant [40 x i8] c"Invalid header for neighbor get request\00", align 1
@neigh_valid_get_req.__msg.51 = internal constant [50 x i8] c"Invalid values in header for neighbor get request\00", align 1
@neigh_valid_get_req.__msg.52 = internal constant [49 x i8] c"Invalid flags in header for neighbor get request\00", align 1
@neigh_valid_get_req.__msg.53 = internal constant [54 x i8] c"Unsupported family in header for neighbor get request\00", align 1
@neigh_valid_get_req.__msg.54 = internal constant [48 x i8] c"Invalid network address in neighbor get request\00", align 1
@neigh_valid_get_req.__msg.55 = internal constant [46 x i8] c"Unsupported attribute in neighbor get request\00", align 1
@neigh_valid_dump_req.__msg = internal constant [41 x i8] c"Invalid header for neighbor dump request\00", align 1
@neigh_valid_dump_req.__msg.56 = internal constant [51 x i8] c"Invalid values in header for neighbor dump request\00", align 1
@neigh_valid_dump_req.__msg.57 = internal constant [50 x i8] c"Invalid flags in header for neighbor dump request\00", align 1
@neigh_valid_dump_req.__msg.58 = internal constant [47 x i8] c"Unsupported attribute in neighbor dump request\00", align 1
@neightbl_valid_dump_info.__msg = internal constant [47 x i8] c"Invalid header for neighbor table dump request\00", align 1
@neightbl_valid_dump_info.__msg.59 = internal constant [57 x i8] c"Invalid values in header for neighbor table dump request\00", align 1
@neightbl_valid_dump_info.__msg.60 = internal constant [57 x i8] c"Invalid data after header in neighbor table dump request\00", align 1
@nl_neightbl_policy = internal constant [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer], align 4
@nl_ntbl_parm_policy = internal constant [19 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer], align 4
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_neighbour__533_3833_neigh_init4, ptr @__ksymtab___neigh_create, ptr @__ksymtab___neigh_event_send, ptr @__ksymtab___neigh_for_each_release, ptr @__ksymtab___neigh_set_probe_once, ptr @__ksymtab___pneigh_lookup, ptr @__ksymtab_neigh_app_ns, ptr @__ksymtab_neigh_carrier_down, ptr @__ksymtab_neigh_changeaddr, ptr @__ksymtab_neigh_connected_output, ptr @__ksymtab_neigh_destroy, ptr @__ksymtab_neigh_direct_output, ptr @__ksymtab_neigh_event_ns, ptr @__ksymtab_neigh_for_each, ptr @__ksymtab_neigh_ifdown, ptr @__ksymtab_neigh_lookup, ptr @__ksymtab_neigh_lookup_nodev, ptr @__ksymtab_neigh_parms_alloc, ptr @__ksymtab_neigh_parms_release, ptr @__ksymtab_neigh_proc_dointvec, ptr @__ksymtab_neigh_proc_dointvec_jiffies, ptr @__ksymtab_neigh_proc_dointvec_ms_jiffies, ptr @__ksymtab_neigh_rand_reach_time, ptr @__ksymtab_neigh_resolve_output, ptr @__ksymtab_neigh_seq_next, ptr @__ksymtab_neigh_seq_start, ptr @__ksymtab_neigh_seq_stop, ptr @__ksymtab_neigh_sysctl_register, ptr @__ksymtab_neigh_sysctl_unregister, ptr @__ksymtab_neigh_table_clear, ptr @__ksymtab_neigh_table_init, ptr @__ksymtab_neigh_update, ptr @__ksymtab_neigh_xmit, ptr @__ksymtab_pneigh_enqueue, ptr @__ksymtab_pneigh_lookup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_rand_reach_time(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @prandom_u32() #22
  %5 = urem i32 %4, %0
  %6 = lshr i32 %0, 1
  %7 = add i32 %5, %6
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @neigh_remove_one(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %4 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.neigh_hash_table, ptr %5, i32 0, i32 2
  %11 = tail call i32 %7(ptr noundef %3, ptr noundef %9, ptr noundef %10) #22
  %12 = getelementptr inbounds %struct.neigh_hash_table, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 32, %13
  %15 = lshr i32 %11, %14
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr ptr, ptr %16, i32 %15
  br label %18

18:                                               ; preds = %22, %2
  %19 = phi ptr [ %17, %2 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %20, %0
  br i1 %23, label %24, label %18

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %25) #22
  %26 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  store volatile ptr %30, ptr %19, align 4
  %31 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 14
  store i8 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 23
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 23, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %33, ptr %37, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %36, align 4
  %39 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.neigh_table, ptr %40, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #22, !srcloc !10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #22, !srcloc !11
  br label %43

43:                                               ; preds = %35, %29
  %44 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 24
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 24, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %45, ptr %49, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %25, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  tail call fastcc void @neigh_cleanup_and_release(ptr noundef nonnull %0) #22
  br label %53

52:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %25, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br label %53

53:                                               ; preds = %52, %51, %18
  %54 = phi i1 [ true, %51 ], [ false, %52 ], [ false, %18 ]
  ret i1 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_changeaddr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %3) #22
  tail call fastcc void @neigh_flush_dev(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @_raw_write_unlock_bh(ptr noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_flush_dev(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.neigh_hash_table, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 31
  br i1 %8, label %114, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  br label %11

11:                                               ; preds = %109, %9
  %12 = phi i32 [ 0, %9 ], [ %110, %109 ]
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %109, label %20

17:                                               ; preds = %30, %25
  %18 = load ptr, ptr %24, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %109, label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %18, %17 ], [ %15, %11 ]
  %22 = phi ptr [ %24, %17 ], [ %14, %11 ]
  br label %23

23:                                               ; preds = %106, %20
  %24 = phi ptr [ %21, %20 ], [ %107, %106 ]
  br i1 %10, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 26
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %17

29:                                               ; preds = %25, %23
  br i1 %2, label %30, label %34

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 12
  %32 = load i8, ptr %31, align 4
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %34, label %17

34:                                               ; preds = %30, %29
  %35 = load ptr, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  store volatile ptr %35, ptr %22, align 4
  %36 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %36) #22
  %37 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 12
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 27
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 9
  %43 = tail call i32 @del_timer(ptr noundef %42) #22
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #22, !srcloc !10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #22, !srcloc !19
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %54, label %52, !prof !20

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #22
  br label %54

53:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef nonnull %24) #22
  br label %54

54:                                               ; preds = %53, %52, %50, %41, %34
  %55 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 14
  store i8 1, ptr %55, align 2
  %56 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 23
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 23, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %57, ptr %61, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %60, align 4
  %63 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.neigh_table, ptr %64, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #22, !srcloc !10
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #22, !srcloc !11
  br label %67

67:                                               ; preds = %59, %54
  %68 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 24
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 24, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  store volatile ptr %69, ptr %73, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %72, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 6
  %77 = load volatile i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %106, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  %83 = icmp eq ptr %81, null
  %84 = or i1 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 8, i32 1
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi ptr [ %81, %85 ], [ %95, %87 ]
  %89 = load i32, ptr %86, align 4
  %90 = add i32 %89, -1
  store volatile i32 %90, ptr %86, align 4
  %91 = load ptr, ptr %88, align 8
  %92 = getelementptr inbounds %struct.anon.0, ptr %88, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  store ptr null, ptr %92, align 4
  store ptr null, ptr %88, align 8
  %94 = getelementptr inbounds %struct.anon.0, ptr %91, i32 0, i32 1
  store volatile ptr %93, ptr %94, align 4
  store volatile ptr %91, ptr %93, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %88, i32 noundef 0) #22
  %95 = load ptr, ptr %80, align 4
  %96 = icmp eq ptr %95, %80
  %97 = icmp eq ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %87

99:                                               ; preds = %87, %79
  %100 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 7
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 21
  store ptr @neigh_blackhole, ptr %101, align 4
  %102 = load i8, ptr %37, align 4
  %103 = and i8 %102, -34
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i8 0, i8 64
  store i8 %105, ptr %37, align 4
  br label %106

106:                                              ; preds = %99, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %36, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  tail call fastcc void @neigh_cleanup_and_release(ptr noundef nonnull %24)
  %107 = load ptr, ptr %22, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %23

109:                                              ; preds = %106, %17, %11
  %110 = add nuw nsw i32 %12, 1
  %111 = load i32, ptr %6, align 4
  %112 = shl nuw i32 1, %111
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %11, label %114

114:                                              ; preds = %109, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_carrier_down(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @__neigh_ifdown(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__neigh_ifdown(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %4) #22
  tail call fastcc void @neigh_flush_dev(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  %5 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 32
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %32, %3
  %8 = phi i32 [ 0, %3 ], [ %34, %32 ]
  %9 = phi ptr [ null, %3 ], [ %33, %32 ]
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr ptr, ptr %10, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %17

14:                                               ; preds = %24
  %15 = load ptr, ptr %22, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %15, %14 ], [ %12, %7 ]
  %19 = phi ptr [ %23, %14 ], [ %9, %7 ]
  %20 = phi ptr [ %22, %14 ], [ %11, %7 ]
  br label %21

21:                                               ; preds = %28, %17
  %22 = phi ptr [ %18, %17 ], [ %30, %28 ]
  %23 = phi ptr [ %19, %17 ], [ %22, %28 ]
  br i1 %6, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pneigh_entry, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %14

28:                                               ; preds = %24, %21
  %29 = load ptr, ptr %22, align 4
  store ptr %29, ptr %20, align 4
  store ptr %23, ptr %22, align 4
  %30 = load ptr, ptr %20, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21

32:                                               ; preds = %28, %14, %7
  %33 = phi ptr [ %9, %7 ], [ %22, %28 ], [ %23, %14 ]
  %34 = add nuw nsw i32 %8, 1
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %7

36:                                               ; preds = %32
  tail call void @_raw_write_unlock_bh(ptr noundef %4) #22
  %37 = icmp eq ptr %33, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 8
  br label %40

40:                                               ; preds = %62, %38
  %41 = phi ptr [ %33, %38 ], [ %42, %62 ]
  %42 = load ptr, ptr %41, align 4
  store ptr null, ptr %41, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void %43(ptr noundef nonnull %41) #22
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.pneigh_entry, ptr %41, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %52 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 99
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #14, !srcloc !23
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -1
  store i32 %61, ptr %59, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #22, !srcloc !24
  br label %62

62:                                               ; preds = %50, %46
  tail call void @kfree(ptr noundef nonnull %41) #22
  %63 = icmp eq ptr %42, null
  br i1 %63, label %64, label %40

64:                                               ; preds = %62, %36
  %65 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 22
  %66 = tail call i32 @del_timer_sync(ptr noundef %65) #22
  %67 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 23
  %68 = tail call ptr @skb_dequeue(ptr noundef %67) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %87, %64
  %71 = phi ptr [ %88, %87 ], [ %68, %64 ]
  %72 = getelementptr inbounds %struct.anon.0, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %77 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 99
  %78 = load ptr, ptr %77, align 8
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #14, !srcloc !23
  %83 = add i32 %82, %79
  %84 = inttoptr i32 %83 to ptr
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, -1
  store i32 %86, ptr %84, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #22, !srcloc !24
  br label %87

87:                                               ; preds = %75, %70
  tail call void @kfree_skb_reason(ptr noundef nonnull %71, i32 noundef 0) #22
  %88 = tail call ptr @skb_dequeue(ptr noundef %67) #22
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %70

90:                                               ; preds = %87, %64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_ifdown(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @__neigh_ifdown(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @neigh_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %5 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.neigh_statistics, ptr %6, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #14, !srcloc !23
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #22, !srcloc !24
  %16 = tail call ptr @llvm.thread.pointer() #22
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = add i32 %18, 512
  store volatile i32 %19, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %20 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 31
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.neigh_hash_table, ptr %25, i32 0, i32 2
  %27 = tail call i32 %23(ptr noundef %1, ptr noundef %2, ptr noundef %26) #22
  %28 = getelementptr inbounds %struct.neigh_hash_table, ptr %25, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 32, %29
  %31 = lshr i32 %27, %30
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr ptr, ptr %32, i32 %31
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %82, label %36

36:                                               ; preds = %43, %3
  %37 = phi ptr [ %44, %43 ], [ %34, %3 ]
  %38 = getelementptr inbounds %struct.neighbour, ptr %37, i32 0, i32 26
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call zeroext i1 %21(ptr noundef nonnull %37, ptr noundef %1) #22
  br i1 %42, label %46, label %43

43:                                               ; preds = %41, %36
  %44 = load volatile ptr, ptr %37, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %82, label %36

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.neighbour, ptr %37, i32 0, i32 6
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %60, %46
  %51 = phi i32 [ %58, %60 ], [ %48, %46 ]
  %52 = add i32 %51, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #22, !srcloc !10
  br label %53

53:                                               ; preds = %53, %50
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 %51, i32 %52, ptr elementtype(i32) %47) #22, !srcloc !26
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i32 } %54, 1
  %59 = icmp eq i32 %58, %51
  br i1 %59, label %62, label %60, !prof !20

60:                                               ; preds = %57
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %62, label %50

62:                                               ; preds = %60, %57, %46
  %63 = phi i32 [ 0, %46 ], [ 0, %60 ], [ %51, %57 ]
  %64 = add i32 %63, 1
  %65 = or i32 %64, %63
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %68, label %67, !prof !20

67:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 0) #22
  br label %68

68:                                               ; preds = %67, %62
  %69 = icmp eq i32 %63, 0
  %70 = select i1 %69, ptr null, ptr %37
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds %struct.neigh_statistics, ptr %72, i32 0, i32 5
  %74 = ptrtoint ptr %73 to i32
  %75 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %76 = inttoptr i32 %75 to ptr
  %77 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #14, !srcloc !23
  %78 = add i32 %77, %74
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #22, !srcloc !24
  br label %82

82:                                               ; preds = %68, %43, %3
  %83 = phi ptr [ %70, %68 ], [ null, %3 ], [ null, %43 ]
  tail call fastcc void @local_bh_enable() #22
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @neigh_lookup_nodev(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %7 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.neigh_statistics, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #14, !srcloc !23
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #22, !srcloc !24
  %18 = tail call ptr @llvm.thread.pointer() #22
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = add i32 %20, 512
  store volatile i32 %21, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %22 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 31
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.neigh_hash_table, ptr %23, i32 0, i32 2
  %27 = tail call i32 %25(ptr noundef %2, ptr noundef null, ptr noundef %26) #22
  %28 = getelementptr inbounds %struct.neigh_hash_table, ptr %23, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 32, %29
  %31 = lshr i32 %27, %30
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr ptr, ptr %32, i32 %31
  br label %34

34:                                               ; preds = %38, %3
  %35 = phi ptr [ %33, %3 ], [ %36, %38 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.neighbour, ptr %36, i32 0, i32 28
  %40 = tail call i32 @bcmp(ptr %39, ptr %2, i32 %5)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.neighbour, ptr %36, i32 0, i32 6
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %56, %42
  %47 = phi i32 [ %54, %56 ], [ %44, %42 ]
  %48 = add i32 %47, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #22, !srcloc !10
  br label %49

49:                                               ; preds = %49, %46
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 %47, i32 %48, ptr elementtype(i32) %43) #22, !srcloc !26
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49

53:                                               ; preds = %49
  %54 = extractvalue { i32, i32 } %50, 1
  %55 = icmp eq i32 %54, %47
  br i1 %55, label %58, label %56, !prof !20

56:                                               ; preds = %53
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %58, label %46

58:                                               ; preds = %56, %53, %42
  %59 = phi i32 [ 0, %42 ], [ 0, %56 ], [ %47, %53 ]
  %60 = add i32 %59, 1
  %61 = or i32 %60, %59
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %64, label %63, !prof !20

63:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 0) #22
  br label %64

64:                                               ; preds = %63, %58
  %65 = icmp eq i32 %59, 0
  %66 = select i1 %65, ptr null, ptr %36
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.neigh_statistics, ptr %68, i32 0, i32 5
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #14, !srcloc !23
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %67) #22, !srcloc !24
  br label %78

78:                                               ; preds = %64, %34
  %79 = phi ptr [ %66, %64 ], [ null, %34 ]
  tail call fastcc void @local_bh_enable() #22
  ret ptr %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__neigh_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call fastcc ptr @___neigh_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @___neigh_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load volatile i32, ptr @jiffies, align 64
  br i1 %4, label %113, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #22, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #22, !srcloc !28
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !29
  %14 = add i32 %13, -1
  %15 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %14, %16
  %18 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  br i1 %17, label %20, label %28

20:                                               ; preds = %10
  %21 = icmp slt i32 %14, %19
  br i1 %21, label %113, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 19
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 500, %9
  %26 = add i32 %25, %24
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %113

28:                                               ; preds = %22, %10
  %29 = load volatile i32, ptr %11, align 4
  %30 = sub i32 %29, %19
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %33 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 30
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.neigh_statistics, ptr %34, i32 0, i32 9
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #14, !srcloc !23
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #22, !srcloc !24
  %44 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %44) #22
  %45 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 26
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %86, label %48

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 10
  %50 = sub i32 500, %31
  br label %51

51:                                               ; preds = %83, %48
  %52 = phi ptr [ %46, %48 ], [ %55, %83 ]
  %53 = phi i32 [ 0, %48 ], [ %84, %83 ]
  %54 = getelementptr i8, ptr %52, i32 -244
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr i8, ptr %52, i32 -220
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %83

59:                                               ; preds = %51
  %60 = getelementptr i8, ptr %52, i32 -224
  tail call void @_raw_write_lock(ptr noundef %60) #22
  %61 = getelementptr i8, ptr %52, i32 -168
  %62 = load i8, ptr %61, align 4
  switch i8 %62, label %63 [
    i8 32, label %76
    i8 64, label %76
  ]

63:                                               ; preds = %59
  %64 = load ptr, ptr %49, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %52, i32 28
  %68 = tail call i32 %64(ptr noundef %67) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %63
  %71 = getelementptr i8, ptr %52, i32 -228
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %50, %72
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %60, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br label %80

76:                                               ; preds = %70, %66, %59, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %60, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %77 = tail call zeroext i1 @neigh_remove_one(ptr noundef %54, ptr noundef %0) #22
  %78 = zext i1 %77 to i32
  %79 = add i32 %53, %78
  br label %80

80:                                               ; preds = %76, %75
  %81 = phi i32 [ %53, %75 ], [ %79, %76 ]
  %82 = icmp slt i32 %81, %30
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %51
  %84 = phi i32 [ %81, %80 ], [ %53, %51 ]
  %85 = icmp eq ptr %55, %45
  br i1 %85, label %86, label %51

86:                                               ; preds = %83, %80, %28
  %87 = phi i32 [ 0, %28 ], [ %81, %80 ], [ %84, %83 ]
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 19
  store i32 %88, ptr %89, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %44) #22
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i32, ptr %15, align 4
  %93 = icmp slt i32 %14, %92
  br i1 %93, label %113, label %94

94:                                               ; preds = %91
  %95 = tail call i32 @net_ratelimit() #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 12
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %99) #23
  br label %101

101:                                              ; preds = %97, %94
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %103 = load ptr, ptr %33, align 4
  %104 = getelementptr inbounds %struct.neigh_statistics, ptr %103, i32 0, i32 11
  %105 = ptrtoint ptr %104 to i32
  %106 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %107 = inttoptr i32 %106 to ptr
  %108 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #14, !srcloc !23
  %109 = add i32 %108, %105
  %110 = inttoptr i32 %109 to ptr
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #22, !srcloc !24
  br label %170

113:                                              ; preds = %91, %86, %22, %20, %6
  %114 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 54
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  %119 = add i32 %115, %118
  %120 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %119, i32 noundef 2848) #24
  %121 = icmp eq ptr %120, null
  br i1 %121, label %170, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 8
  store ptr %123, ptr %123, align 32
  %124 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 8, i32 1
  store i32 0, ptr %125, align 8
  %126 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 5
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 17
  %128 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 17, i32 1
  store i32 0, ptr %128, align 8
  store i32 0, ptr %127, align 4
  %129 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 10
  store i32 %9, ptr %129, align 4
  %130 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 4
  store i32 %9, ptr %130, align 16
  %131 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 12
  store i8 0, ptr %131, align 4
  %132 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 21
  store ptr @neigh_blackhole, ptr %132, align 4
  %133 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 16
  store i32 %3, ptr %133, align 16
  %134 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 20, i32 1
  %135 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 20, i32 1, i32 1
  store i32 0, ptr %135, align 8
  store i32 0, ptr %134, align 4
  %136 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 13
  %137 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 13, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #22, !srcloc !10
  %138 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #22, !srcloc !30
  %139 = extractvalue { i32, i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141, !prof !31

141:                                              ; preds = %122
  %142 = add i32 %139, 1
  %143 = or i32 %142, %139
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %147, label %145, !prof !20

145:                                              ; preds = %141, %122
  %146 = phi i32 [ 2, %122 ], [ 1, %141 ]
  tail call void @refcount_warn_saturate(ptr noundef %137, i32 noundef %146) #22
  br label %147

147:                                              ; preds = %145, %141
  %148 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 2
  store ptr %136, ptr %148, align 8
  %149 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %149, ptr noundef nonnull @neigh_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #22
  %150 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %151 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 30
  %152 = load ptr, ptr %151, align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %155 = inttoptr i32 %154 to ptr
  %156 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %155) #14, !srcloc !23
  %157 = add i32 %156, %153
  %158 = inttoptr i32 %157 to ptr
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %150) #22, !srcloc !24
  %161 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 1
  store ptr %0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 6
  store volatile i32 1, ptr %162, align 8
  %163 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 14
  store i8 1, ptr %163, align 2
  %164 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 23
  store volatile ptr %164, ptr %164, align 4
  %165 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 23, i32 1
  store ptr %164, ptr %165, align 8
  %166 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 24
  store volatile ptr %166, ptr %166, align 4
  %167 = getelementptr inbounds %struct.neighbour, ptr %120, i32 0, i32 24, i32 1
  store ptr %166, ptr %167, align 64
  %168 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #22, !srcloc !10
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #22, !srcloc !32
  br label %174

170:                                              ; preds = %113, %101
  br i1 %4, label %174, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %172) #22, !srcloc !10
  %173 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %172, ptr %172, i32 1, ptr elementtype(i32) %172) #22, !srcloc !11
  br label %174

174:                                              ; preds = %171, %170, %147
  %175 = phi ptr [ %120, %147 ], [ null, %170 ], [ null, %171 ]
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_create, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = tail call ptr @llvm.thread.pointer() #22
  %180 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = lshr i32 %181, 5
  %183 = getelementptr i32, ptr @__cpu_online_mask, i32 %182
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %181, 31
  %186 = shl nuw i32 1, %185
  %187 = and i32 %186, %184
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %178
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !33
  %190 = tail call i32 @__traceiter_neigh_create(ptr noundef null, ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %175, i1 noundef zeroext %4) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !34
  br label %191

191:                                              ; preds = %189, %178, %174
  %192 = icmp eq ptr %175, null
  br i1 %192, label %386, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 28
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %194, ptr align 1 %1, i32 %8, i1 false)
  %195 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 26
  store ptr %2, ptr %195, align 4
  %196 = icmp eq ptr %2, null
  br i1 %196, label %209, label %197

197:                                              ; preds = %193
  %198 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %199 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 99
  %200 = load ptr, ptr %199, align 8
  %201 = ptrtoint ptr %200 to i32
  %202 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %203 = inttoptr i32 %202 to ptr
  %204 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %203) #14, !srcloc !23
  %205 = add i32 %204, %201
  %206 = inttoptr i32 %205 to ptr
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, 1
  store i32 %208, ptr %206, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %198) #22, !srcloc !24
  br label %209

209:                                              ; preds = %197, %193
  %210 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 6
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %209
  %214 = tail call i32 %211(ptr noundef nonnull %175) #22
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = inttoptr i32 %214 to ptr
  br label %390

218:                                              ; preds = %213, %209
  %219 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 16
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.net_device_ops, ptr %220, i32 0, i32 47
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %229, label %224

224:                                              ; preds = %218
  %225 = tail call i32 %222(ptr noundef %2, ptr noundef nonnull %175) #22
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = inttoptr i32 %225 to ptr
  br label %390

229:                                              ; preds = %224, %218
  %230 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 2
  %231 = load ptr, ptr %230, align 8
  %232 = getelementptr inbounds %struct.neigh_parms, ptr %231, i32 0, i32 4
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %229
  %236 = tail call i32 %233(ptr noundef nonnull %175) #22
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %230, align 8
  br label %242

240:                                              ; preds = %235
  %241 = inttoptr i32 %236 to ptr
  br label %390

242:                                              ; preds = %238, %229
  %243 = phi ptr [ %239, %238 ], [ %231, %229 ]
  %244 = load volatile i32, ptr @jiffies, align 64
  %245 = getelementptr %struct.neigh_parms, ptr %243, i32 0, i32 11, i32 5
  %246 = load i32, ptr %245, align 4
  %247 = mul i32 %246, -2
  %248 = add i32 %247, %244
  %249 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 3
  store i32 %248, ptr %249, align 4
  %250 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %250) #22
  %251 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 31
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 24
  %254 = load volatile i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.neigh_hash_table, ptr %252, i32 0, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = shl nuw i32 1, %256
  %258 = icmp sgt i32 %254, %257
  br i1 %258, label %259, label %311

259:                                              ; preds = %242
  %260 = add i32 %256, 1
  %261 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %262 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 30
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.neigh_statistics, ptr %263, i32 0, i32 2
  %265 = ptrtoint ptr %264 to i32
  %266 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %267 = inttoptr i32 %266 to ptr
  %268 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %267) #14, !srcloc !23
  %269 = add i32 %268, %265
  %270 = inttoptr i32 %269 to ptr
  %271 = load i32, ptr %270, align 4
  %272 = add i32 %271, 1
  store i32 %272, ptr %270, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %261) #22, !srcloc !24
  %273 = load ptr, ptr %251, align 4
  %274 = tail call fastcc ptr @neigh_hash_alloc(i32 noundef %260) #22
  %275 = icmp eq ptr %274, null
  br i1 %275, label %311, label %276

276:                                              ; preds = %259
  %277 = getelementptr inbounds %struct.neigh_hash_table, ptr %273, i32 0, i32 1
  %278 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 4
  %279 = getelementptr inbounds %struct.neigh_hash_table, ptr %274, i32 0, i32 2
  %280 = getelementptr inbounds %struct.neigh_hash_table, ptr %274, i32 0, i32 1
  br label %281

281:                                              ; preds = %304, %276
  %282 = phi i32 [ 0, %276 ], [ %305, %304 ]
  %283 = load ptr, ptr %273, align 4
  %284 = getelementptr ptr, ptr %283, i32 %282
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %304, label %287

287:                                              ; preds = %287, %281
  %288 = phi ptr [ %297, %287 ], [ %285, %281 ]
  %289 = load ptr, ptr %278, align 4
  %290 = getelementptr inbounds %struct.neighbour, ptr %288, i32 0, i32 28
  %291 = getelementptr inbounds %struct.neighbour, ptr %288, i32 0, i32 26
  %292 = load ptr, ptr %291, align 4
  %293 = tail call i32 %289(ptr noundef %290, ptr noundef %292, ptr noundef %279) #22
  %294 = load i32, ptr %280, align 4
  %295 = sub i32 32, %294
  %296 = lshr i32 %293, %295
  %297 = load ptr, ptr %288, align 8
  %298 = load ptr, ptr %274, align 4
  %299 = getelementptr ptr, ptr %298, i32 %296
  %300 = load ptr, ptr %299, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !35
  store volatile ptr %300, ptr %288, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !36
  %301 = load ptr, ptr %274, align 4
  %302 = getelementptr ptr, ptr %301, i32 %296
  store volatile ptr %288, ptr %302, align 4
  %303 = icmp eq ptr %297, null
  br i1 %303, label %304, label %287

304:                                              ; preds = %287, %281
  %305 = add i32 %282, 1
  %306 = load i32, ptr %277, align 4
  %307 = lshr i32 %305, %306
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %281, label %309

309:                                              ; preds = %304
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !37
  store volatile ptr %274, ptr %251, align 4
  %310 = getelementptr inbounds %struct.neigh_hash_table, ptr %273, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %310, ptr noundef nonnull @neigh_hash_free_rcu) #22
  br label %311

311:                                              ; preds = %309, %259, %242
  %312 = phi ptr [ %252, %242 ], [ %274, %309 ], [ %273, %259 ]
  %313 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 4
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.neigh_hash_table, ptr %312, i32 0, i32 2
  %316 = tail call i32 %314(ptr noundef %194, ptr noundef %2, ptr noundef %315) #22
  %317 = getelementptr inbounds %struct.neigh_hash_table, ptr %312, i32 0, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = sub i32 32, %318
  %320 = lshr i32 %316, %319
  %321 = load ptr, ptr %230, align 8
  %322 = getelementptr inbounds %struct.neigh_parms, ptr %321, i32 0, i32 7
  %323 = load i32, ptr %322, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %388

325:                                              ; preds = %311
  %326 = load ptr, ptr %312, align 4
  %327 = getelementptr ptr, ptr %326, i32 %320
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %345, label %330

330:                                              ; preds = %342, %325
  %331 = phi ptr [ %343, %342 ], [ %328, %325 ]
  %332 = getelementptr inbounds %struct.neighbour, ptr %331, i32 0, i32 26
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, %2
  br i1 %334, label %335, label %342

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.neighbour, ptr %331, i32 0, i32 28
  %337 = tail call i32 @bcmp(ptr %336, ptr %194, i32 %8)
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %335
  br i1 %5, label %340, label %388

340:                                              ; preds = %339
  %341 = getelementptr inbounds %struct.neighbour, ptr %331, i32 0, i32 6
  tail call fastcc void @refcount_inc(ptr noundef %341)
  br label %388

342:                                              ; preds = %335, %330
  %343 = load ptr, ptr %331, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %330

345:                                              ; preds = %342, %325
  %346 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 14
  store i8 0, ptr %346, align 2
  br i1 %4, label %355, label %347

347:                                              ; preds = %345
  %348 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 23
  %349 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.neigh_table, ptr %350, i32 0, i32 26
  %352 = getelementptr inbounds %struct.neigh_table, ptr %350, i32 0, i32 26, i32 1
  %353 = load ptr, ptr %352, align 4
  store ptr %348, ptr %352, align 4
  store ptr %351, ptr %348, align 4
  %354 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 23, i32 1
  store ptr %353, ptr %354, align 8
  store volatile ptr %348, ptr %353, align 4
  br label %355

355:                                              ; preds = %347, %345
  %356 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 16
  %357 = load i32, ptr %356, align 16
  %358 = and i32 %357, 256
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 24
  %362 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 1
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.neigh_table, ptr %363, i32 0, i32 27
  %365 = getelementptr inbounds %struct.neigh_table, ptr %363, i32 0, i32 27, i32 1
  %366 = load ptr, ptr %365, align 4
  store ptr %361, ptr %365, align 4
  store ptr %364, ptr %361, align 4
  %367 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 24, i32 1
  store ptr %366, ptr %367, align 64
  store volatile ptr %361, ptr %366, align 4
  br label %368

368:                                              ; preds = %360, %355
  br i1 %5, label %369, label %380

369:                                              ; preds = %368
  %370 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %370) #22, !srcloc !10
  %371 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %370, ptr %370, i32 1, ptr elementtype(i32) %370) #22, !srcloc !30
  %372 = extractvalue { i32, i32, i32 } %371, 0
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %378, label %374, !prof !31

374:                                              ; preds = %369
  %375 = add i32 %372, 1
  %376 = or i32 %375, %372
  %377 = icmp sgt i32 %376, -1
  br i1 %377, label %380, label %378, !prof !20

378:                                              ; preds = %374, %369
  %379 = phi i32 [ 2, %369 ], [ 1, %374 ]
  tail call void @refcount_warn_saturate(ptr noundef %370, i32 noundef %379) #22
  br label %380

380:                                              ; preds = %378, %374, %368
  %381 = load ptr, ptr %312, align 4
  %382 = getelementptr ptr, ptr %381, i32 %320
  %383 = load ptr, ptr %382, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !38
  store volatile ptr %383, ptr %175, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !39
  %384 = load ptr, ptr %312, align 4
  %385 = getelementptr ptr, ptr %384, i32 %320
  store volatile ptr %175, ptr %385, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %250) #22
  br label %386

386:                                              ; preds = %403, %402, %400, %380, %191
  %387 = phi ptr [ %175, %380 ], [ inttoptr (i32 -105 to ptr), %191 ], [ %391, %400 ], [ %391, %402 ], [ %391, %403 ]
  ret ptr %387

388:                                              ; preds = %340, %339, %311
  %389 = phi ptr [ %331, %340 ], [ %331, %339 ], [ inttoptr (i32 -22 to ptr), %311 ]
  tail call void @_raw_write_unlock_bh(ptr noundef %250) #22
  br label %390

390:                                              ; preds = %388, %240, %227, %216
  %391 = phi ptr [ %217, %216 ], [ %228, %227 ], [ %241, %240 ], [ %389, %388 ]
  br i1 %4, label %395, label %392

392:                                              ; preds = %390
  %393 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %393) #22, !srcloc !10
  %394 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %393, ptr %393, i32 1, ptr elementtype(i32) %393) #22, !srcloc !11
  br label %395

395:                                              ; preds = %392, %390
  %396 = getelementptr inbounds %struct.neighbour, ptr %175, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %396) #22, !srcloc !10
  %397 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %396, ptr %396, i32 1, ptr elementtype(i32) %396) #22, !srcloc !19
  %398 = extractvalue { i32, i32, i32 } %397, 0
  %399 = icmp eq i32 %398, 1
  br i1 %399, label %403, label %400

400:                                              ; preds = %395
  %401 = icmp sgt i32 %398, 0
  br i1 %401, label %386, label %402, !prof !20

402:                                              ; preds = %400
  tail call void @refcount_warn_saturate(ptr noundef %396, i32 noundef 3) #22
  br label %386

403:                                              ; preds = %395
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef nonnull %175) #22
  br label %386
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__pneigh_lookup(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, %9
  %12 = lshr i32 %11, 8
  %13 = xor i32 %12, %11
  %14 = lshr i32 %13, 4
  %15 = xor i32 %14, %13
  %16 = and i32 %15, 15
  %17 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 32
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr ptr, ptr %18, i32 %16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %33, %4
  %23 = phi ptr [ %34, %33 ], [ %20, %4 ]
  %24 = getelementptr inbounds %struct.pneigh_entry, ptr %23, i32 0, i32 6
  %25 = tail call i32 @bcmp(ptr %24, ptr %2, i32 %6) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pneigh_entry, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %3
  %31 = icmp eq ptr %29, null
  %32 = or i1 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27, %22
  %34 = load ptr, ptr %23, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %27, %4
  %37 = phi ptr [ null, %4 ], [ %23, %27 ], [ null, %33 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pneigh_lookup(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = xor i32 %11, %10
  %13 = lshr i32 %12, 8
  %14 = xor i32 %13, %12
  %15 = lshr i32 %14, 4
  %16 = xor i32 %15, %14
  %17 = and i32 %16, 15
  %18 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_read_lock_bh(ptr noundef %18) #22
  %19 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr ptr, ptr %20, i32 %17
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %35, %5
  %25 = phi ptr [ %36, %35 ], [ %22, %5 ]
  %26 = getelementptr inbounds %struct.pneigh_entry, ptr %25, i32 0, i32 6
  %27 = tail call i32 @bcmp(ptr %26, ptr %2, i32 %7) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.pneigh_entry, ptr %25, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %3
  %33 = icmp eq ptr %31, null
  %34 = or i1 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %24
  %36 = load ptr, ptr %25, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %24

38:                                               ; preds = %35, %29, %5
  %39 = phi ptr [ null, %5 ], [ %25, %29 ], [ null, %35 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %18) #22
  %40 = icmp eq ptr %39, null
  %41 = icmp ne i32 %4, 0
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %95

43:                                               ; preds = %38
  %44 = tail call i32 @rtnl_is_locked() #22
  %45 = icmp eq i32 %44, 0
  %46 = load i1, ptr @pneigh_lookup.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !31

49:                                               ; preds = %43
  store i1 true, ptr @pneigh_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 764, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 764) #22
  br label %50

50:                                               ; preds = %49, %43
  %51 = add i32 %7, 16
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #24
  %53 = icmp eq ptr %52, null
  br i1 %53, label %95, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.pneigh_entry, ptr %52, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr align 1 %2, i32 %7, i1 false)
  %56 = getelementptr inbounds %struct.pneigh_entry, ptr %52, i32 0, i32 2
  store ptr %3, ptr %56, align 4
  %57 = icmp eq ptr %3, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %60 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 99
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #14, !srcloc !23
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #22, !srcloc !24
  br label %70

70:                                               ; preds = %58, %54
  %71 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74

74:                                               ; preds = %70
  %75 = tail call i32 %72(ptr noundef nonnull %52) #22
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %74
  br i1 %57, label %90, label %78

78:                                               ; preds = %77
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %80 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 99
  %81 = load ptr, ptr %80, align 8
  %82 = ptrtoint ptr %81 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #14, !srcloc !23
  %86 = add i32 %85, %82
  %87 = inttoptr i32 %86 to ptr
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, -1
  store i32 %89, ptr %87, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #22, !srcloc !24
  br label %90

90:                                               ; preds = %78, %77
  tail call void @kfree(ptr noundef nonnull %52) #22
  br label %95

91:                                               ; preds = %74, %70
  tail call void @_raw_write_lock_bh(ptr noundef %18) #22
  %92 = load ptr, ptr %19, align 4
  %93 = getelementptr ptr, ptr %92, i32 %17
  %94 = load ptr, ptr %93, align 4
  store ptr %94, ptr %52, align 64
  store ptr %52, ptr %93, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %18) #22
  br label %95

95:                                               ; preds = %91, %90, %50, %38
  %96 = phi ptr [ null, %90 ], [ %52, %91 ], [ null, %50 ], [ %39, %38 ]
  ret ptr %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pneigh_delete(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, %9
  %12 = lshr i32 %11, 8
  %13 = xor i32 %12, %11
  %14 = lshr i32 %13, 4
  %15 = xor i32 %14, %13
  %16 = and i32 %15, 15
  %17 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %17) #22
  %18 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 32
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %19, i32 %16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %56, %4
  %24 = phi ptr [ %57, %56 ], [ %21, %4 ]
  %25 = phi ptr [ %24, %56 ], [ %20, %4 ]
  %26 = getelementptr inbounds %struct.pneigh_entry, ptr %24, i32 0, i32 6
  %27 = tail call i32 @bcmp(ptr %26, ptr %2, i32 %6)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.pneigh_entry, ptr %24, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.pneigh_entry, ptr %24, i32 0, i32 2
  %35 = load ptr, ptr %24, align 4
  store ptr %35, ptr %25, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %17) #22
  %36 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void %37(ptr noundef nonnull %24) #22
  br label %40

40:                                               ; preds = %39, %33
  %41 = load ptr, ptr %34, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %45 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 99
  %46 = load ptr, ptr %45, align 8
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #14, !srcloc !23
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #22, !srcloc !24
  br label %55

55:                                               ; preds = %43, %40
  tail call void @kfree(ptr noundef nonnull %24) #22
  br label %60

56:                                               ; preds = %29, %23
  %57 = load ptr, ptr %24, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %23

59:                                               ; preds = %56, %4
  tail call void @_raw_write_unlock_bh(ptr noundef %17) #22
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ 0, %55 ], [ -2, %59 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %5 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.neigh_table, ptr %6, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.neigh_statistics, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #14, !srcloc !23
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #22, !srcloc !24
  %18 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 14
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #23
  tail call void @dump_stack() #23
  br label %104

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 27
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %30 = tail call i32 @del_timer(ptr noundef %29) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #22, !srcloc !10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #22, !srcloc !19
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !20

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #22
  br label %41

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %41

41:                                               ; preds = %40, %39, %37
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #23
  br label %43

43:                                               ; preds = %41, %28, %23
  %44 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 5
  tail call void @_raw_write_lock_bh(ptr noundef %44) #22
  %45 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  %48 = icmp eq ptr %46, null
  %49 = or i1 %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 1
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi ptr [ %46, %50 ], [ %60, %52 ]
  %54 = load i32, ptr %51, align 4
  %55 = add i32 %54, -1
  store volatile i32 %55, ptr %51, align 4
  %56 = load ptr, ptr %53, align 8
  %57 = getelementptr inbounds %struct.anon.0, ptr %53, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr null, ptr %57, align 4
  store ptr null, ptr %53, align 8
  %59 = getelementptr inbounds %struct.anon.0, ptr %56, i32 0, i32 1
  store volatile ptr %58, ptr %59, align 4
  store volatile ptr %56, ptr %58, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %53, i32 noundef 0) #22
  %60 = load ptr, ptr %45, align 4
  %61 = icmp eq ptr %60, %45
  %62 = icmp eq ptr %60, null
  %63 = or i1 %61, %62
  br i1 %63, label %64, label %52

64:                                               ; preds = %52, %43
  tail call void @_raw_write_unlock_bh(ptr noundef %44) #22
  %65 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 7
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.net_device_ops, ptr %67, i32 0, i32 48
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  tail call void %69(ptr noundef %3, ptr noundef %0) #22
  br label %72

72:                                               ; preds = %71, %64
  %73 = icmp eq ptr %3, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %76 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 99
  %77 = load ptr, ptr %76, align 8
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #14, !srcloc !23
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  store i32 %85, ptr %83, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %75) #22, !srcloc !24
  br label %86

86:                                               ; preds = %74, %72
  %87 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.neigh_parms, ptr %88, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #22, !srcloc !10
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #22, !srcloc !19
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = icmp sgt i32 %91, 0
  br i1 %94, label %97, label %95, !prof !20

95:                                               ; preds = %93
  tail call void @refcount_warn_saturate(ptr noundef %89, i32 noundef 3) #22
  br label %97

96:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @kfree(ptr noundef %88) #22
  br label %97

97:                                               ; preds = %96, %95, %93
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr inbounds %struct.neigh_table, ptr %98, i32 0, i32 24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #22, !srcloc !10
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #22, !srcloc !11
  %101 = icmp eq ptr %0, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 25
  tail call void @kvfree_call_rcu(ptr noundef %103, ptr noundef nonnull inttoptr (i32 260 to ptr)) #22
  br label %104

104:                                              ; preds = %102, %97, %21
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @neigh_del_timer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %8 = tail call i32 @del_timer(ptr noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #22, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #22, !srcloc !19
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !20

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #22
  br label %19

18:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %19

19:                                               ; preds = %18, %17, %15, %6, %1
  %20 = phi i32 [ 0, %6 ], [ 0, %1 ], [ 1, %15 ], [ 1, %17 ], [ 1, %18 ]
  ret i32 %20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  %4 = icmp eq ptr %2, null
  %5 = or i1 %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %2, %6 ], [ %16, %8 ]
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %9, align 8
  %15 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #22
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__neigh_event_send(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 5
  tail call void @_raw_write_lock_bh(ptr noundef %4) #22
  %5 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 218
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %241

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 14
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %260

14:                                               ; preds = %10
  %15 = and i32 %7, 5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.neigh_parms, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.neigh_parms, ptr %19, i32 0, i32 11, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 0, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %70, label %26

26:                                               ; preds = %17
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 11
  %29 = getelementptr %struct.neigh_parms, ptr %19, i32 0, i32 11, i32 1
  %30 = load i32, ptr %29, align 4
  store volatile i32 %30, ptr %28, align 4
  %31 = and i8 %6, 27
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %35 = tail call i32 @del_timer(ptr noundef %34) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #22, !srcloc !10
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #22, !srcloc !19
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %46, label %44, !prof !20

44:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #22
  br label %46

45:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %46

46:                                               ; preds = %45, %44, %42, %33, %26
  store i8 1, ptr %5, align 4
  %47 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 4
  store i32 %27, ptr %47, align 8
  br i1 %2, label %48, label %53

48:                                               ; preds = %46
  %49 = load ptr, ptr %18, align 8
  %50 = getelementptr %struct.neigh_parms, ptr %49, i32 0, i32 11, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %52, %48 ], [ 1, %46 ]
  %55 = add i32 %54, %27
  %56 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #22, !srcloc !10
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #22, !srcloc !30
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60, !prof !31

60:                                               ; preds = %53
  %61 = add i32 %58, 1
  %62 = or i32 %61, %58
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %66, label %64, !prof !20

64:                                               ; preds = %60, %53
  %65 = phi i32 [ 2, %53 ], [ 1, %60 ]
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef %65) #22
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %68 = tail call i32 @mod_timer(ptr noundef %67, i32 noundef %55) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %120, label %115, !prof !20

70:                                               ; preds = %17
  store i8 32, ptr %5, align 4
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 4
  store i32 %71, ptr %72, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %4) #22
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #22
  br label %279

73:                                               ; preds = %14
  %74 = and i32 %7, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %120, label %76

76:                                               ; preds = %73
  %77 = and i8 %6, 27
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %81 = tail call i32 @del_timer(ptr noundef %80) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #22, !srcloc !10
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #22, !srcloc !19
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %92, label %90, !prof !20

90:                                               ; preds = %88
  tail call void @refcount_warn_saturate(ptr noundef %84, i32 noundef 3) #22
  br label %92

91:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %92

92:                                               ; preds = %91, %90, %88, %79, %76
  store i8 8, ptr %5, align 4
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 4
  store i32 %93, ptr %94, align 8
  %95 = load volatile i32, ptr @jiffies, align 64
  %96 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr %struct.neigh_parms, ptr %97, i32 0, i32 11, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, %95
  %101 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #22, !srcloc !10
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #22, !srcloc !30
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105, !prof !31

105:                                              ; preds = %92
  %106 = add i32 %103, 1
  %107 = or i32 %106, %103
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %111, label %109, !prof !20

109:                                              ; preds = %105, %92
  %110 = phi i32 [ 2, %92 ], [ 1, %105 ]
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef %110) #22
  br label %111

111:                                              ; preds = %109, %105
  %112 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %113 = tail call i32 @mod_timer(ptr noundef %112, i32 noundef %100) #22
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115, !prof !20

115:                                              ; preds = %111, %66
  %116 = phi i1 [ %2, %66 ], [ false, %111 ]
  %117 = load i8, ptr %5, align 4
  %118 = zext i8 %117 to i32
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %118) #23
  tail call void @dump_stack() #23
  br label %120

120:                                              ; preds = %115, %111, %73, %66
  %121 = phi i1 [ false, %73 ], [ %2, %66 ], [ false, %111 ], [ %116, %115 ]
  %122 = load i8, ptr %5, align 4
  %123 = icmp eq i8 %122, 1
  br i1 %123, label %124, label %218

124:                                              ; preds = %120
  %125 = icmp eq ptr %1, null
  br i1 %125, label %218, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 7
  %128 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %129 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %130 = load i32, ptr %127, align 4
  %131 = load i32, ptr %128, align 8
  %132 = add i32 %131, %130
  %133 = load ptr, ptr %129, align 8
  %134 = getelementptr %struct.neigh_parms, ptr %133, i32 0, i32 11, i32 8
  %135 = load i32, ptr %134, align 4
  %136 = icmp ugt i32 %132, %135
  br i1 %136, label %137, label %177

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %139 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 1
  %140 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  br label %141

141:                                              ; preds = %146, %137
  %142 = load ptr, ptr %138, align 4
  %143 = icmp eq ptr %142, %138
  %144 = icmp eq ptr %142, null
  %145 = or i1 %143, %144
  br i1 %145, label %177, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %139, align 4
  %148 = add i32 %147, -1
  store volatile i32 %148, ptr %139, align 4
  %149 = load ptr, ptr %142, align 8
  %150 = getelementptr inbounds %struct.anon.0, ptr %142, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  store ptr null, ptr %150, align 4
  store ptr null, ptr %142, align 8
  %152 = getelementptr inbounds %struct.anon.0, ptr %149, i32 0, i32 1
  store volatile ptr %151, ptr %152, align 4
  store volatile ptr %149, ptr %151, align 8
  %153 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 18
  %154 = load i32, ptr %153, align 8
  %155 = load i32, ptr %127, align 4
  %156 = sub i32 %155, %154
  store i32 %156, ptr %127, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %142, i32 noundef 0) #22
  %157 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %158 = load ptr, ptr %140, align 4
  %159 = getelementptr inbounds %struct.neigh_table, ptr %158, i32 0, i32 30
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.neigh_statistics, ptr %160, i32 0, i32 10
  %162 = ptrtoint ptr %161 to i32
  %163 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %164 = inttoptr i32 %163 to ptr
  %165 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %164) #14, !srcloc !23
  %166 = add i32 %165, %162
  %167 = inttoptr i32 %166 to ptr
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %157) #22, !srcloc !24
  %170 = load i32, ptr %127, align 4
  %171 = load i32, ptr %128, align 8
  %172 = add i32 %171, %170
  %173 = load ptr, ptr %129, align 8
  %174 = getelementptr %struct.neigh_parms, ptr %173, i32 0, i32 11, i32 8
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %172, %175
  br i1 %176, label %141, label %177

177:                                              ; preds = %146, %141, %126
  %178 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  %182 = icmp ugt i32 %179, 1
  %183 = and i1 %182, %181
  br i1 %183, label %184, label %207

184:                                              ; preds = %177
  %185 = and i32 %179, -2
  %186 = inttoptr i32 %185 to ptr
  %187 = getelementptr inbounds %struct.dst_entry, ptr %186, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %187) #22, !srcloc !10
  %188 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %187, ptr %187, i32 0, i32 1, ptr elementtype(i32) %187) #22, !srcloc !41
  %189 = extractvalue { i32, i32, i32 } %188, 0
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  br label %192

192:                                              ; preds = %191, %184
  %193 = phi ptr [ null, %184 ], [ %186, %191 ]
  %194 = ptrtoint ptr %193 to i32
  store i32 %194, ptr %178, align 8
  %195 = icmp ne ptr %193, null
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
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
  br label %207

207:                                              ; preds = %192, %177
  %208 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %209 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  store volatile ptr %208, ptr %1, align 8
  %211 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 1
  store volatile ptr %210, ptr %211, align 4
  store volatile ptr %1, ptr %209, align 4
  store volatile ptr %1, ptr %210, align 4
  %212 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, 1
  store volatile i32 %214, ptr %212, align 4
  %215 = load i32, ptr %128, align 8
  %216 = load i32, ptr %127, align 4
  %217 = add i32 %216, %215
  store i32 %217, ptr %127, align 4
  br i1 %121, label %220, label %241

218:                                              ; preds = %124, %120
  %219 = phi i32 [ 0, %120 ], [ 1, %124 ]
  br i1 %121, label %220, label %241

220:                                              ; preds = %218, %207
  %221 = phi i32 [ 1, %207 ], [ %219, %218 ]
  %222 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %223 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %224 = load volatile ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, %222
  %226 = icmp eq ptr %224, null
  %227 = or i1 %225, %226
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = tail call ptr @skb_clone(ptr noundef nonnull %224, i32 noundef 2592) #22
  br label %230

230:                                              ; preds = %228, %220
  %231 = phi ptr [ %229, %228 ], [ null, %220 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %4, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %232 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  %233 = load ptr, ptr %232, align 8
  %234 = getelementptr inbounds %struct.neigh_ops, ptr %233, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %230
  tail call void %235(ptr noundef %0, ptr noundef %231) #22
  br label %238

238:                                              ; preds = %237, %230
  %239 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #22, !srcloc !10
  %240 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #22, !srcloc !32
  tail call void @consume_skb(ptr noundef %231) #22
  br label %243

241:                                              ; preds = %260, %218, %207, %3
  %242 = phi i32 [ %219, %218 ], [ 1, %207 ], [ 0, %3 ], [ 0, %260 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %4, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br label %243

243:                                              ; preds = %241, %238
  %244 = phi i32 [ %242, %241 ], [ %221, %238 ]
  tail call fastcc void @local_bh_enable()
  %245 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_event_send_done, i32 0, i32 1), align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %279

247:                                              ; preds = %243
  %248 = tail call ptr @llvm.thread.pointer() #22
  %249 = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 2
  %250 = load i32, ptr %249, align 8
  %251 = lshr i32 %250, 5
  %252 = getelementptr i32, ptr @__cpu_online_mask, i32 %251
  %253 = load volatile i32, ptr %252, align 4
  %254 = and i32 %250, 31
  %255 = shl nuw i32 1, %254
  %256 = and i32 %255, %253
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %279, label %258

258:                                              ; preds = %247
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !43
  %259 = tail call i32 @__traceiter_neigh_event_send_done(ptr noundef null, ptr noundef %0, i32 noundef %244) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !44
  br label %279

260:                                              ; preds = %10
  %261 = and i32 %7, 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %241

263:                                              ; preds = %260
  tail call void @_raw_write_unlock_bh(ptr noundef %4) #22
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #22
  %264 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_event_send_dead, i32 0, i32 1), align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %263
  %267 = tail call ptr @llvm.thread.pointer() #22
  %268 = getelementptr inbounds %struct.thread_info, ptr %267, i32 0, i32 2
  %269 = load i32, ptr %268, align 8
  %270 = lshr i32 %269, 5
  %271 = getelementptr i32, ptr @__cpu_online_mask, i32 %270
  %272 = load volatile i32, ptr %271, align 4
  %273 = and i32 %269, 31
  %274 = shl nuw i32 1, %273
  %275 = and i32 %274, %272
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %266
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  %278 = tail call i32 @__traceiter_neigh_event_send_dead(ptr noundef null, ptr noundef %0, i32 noundef 1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !46
  br label %279

279:                                              ; preds = %277, %266, %263, %258, %247, %243, %70
  %280 = phi i32 [ 1, %70 ], [ %244, %243 ], [ %244, %247 ], [ %244, %258 ], [ 1, %263 ], [ 1, %266 ], [ 1, %277 ]
  ret i32 %280
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_add_timer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #22, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #22, !srcloc !30
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !31

7:                                                ; preds = %2
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !20

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 2, %2 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %12) #22
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %15 = tail call i32 @mod_timer(ptr noundef %14, i32 noundef %1) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !prof !20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %20) #23
  tail call void @dump_stack() #23
  br label %22

22:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_update(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc i32 @__neigh_update(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef null)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__neigh_update(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_update, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #22
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !47
  %21 = tail call i32 @__traceiter_neigh_update(ptr noundef null, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  br label %22

22:                                               ; preds = %20, %9, %6
  %23 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 5
  tail call void @_raw_write_lock_bh(ptr noundef %23) #22
  %24 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 14
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__neigh_update.__msg) #22
  %32 = icmp eq ptr %5, null
  br i1 %32, label %343, label %33

33:                                               ; preds = %31
  store ptr @__neigh_update.__msg, ptr %5, align 4
  br label %343

34:                                               ; preds = %22
  %35 = and i32 %3, 128
  %36 = icmp eq i32 %35, 0
  %37 = xor i1 %36, true
  %38 = icmp ult i8 %27, 64
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %343

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 16
  br i1 %36, label %67, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %41, align 8
  %44 = lshr i32 %3, 1
  %45 = and i32 %44, 16
  %46 = shl i32 %3, 4
  %47 = and i32 %46, 256
  %48 = or i32 %45, %47
  %49 = xor i32 %43, %48
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  %52 = xor i1 %51, true
  %53 = and i32 %49, 256
  %54 = icmp eq i32 %53, 0
  %55 = xor i1 %54, true
  %56 = and i32 %49, 272
  %57 = icmp ne i32 %56, 0
  %58 = and i32 %49, 272
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %42
  %61 = and i32 %43, -17
  %62 = or i32 %61, %45
  %63 = select i1 %51, i32 %43, i32 %62
  %64 = and i32 %63, -257
  %65 = or i32 %64, %47
  %66 = select i1 %54, i32 %63, i32 %65
  store i32 %66, ptr %41, align 8
  br label %67

67:                                               ; preds = %60, %42, %40
  %68 = phi i1 [ false, %40 ], [ %52, %42 ], [ %52, %60 ]
  %69 = phi i1 [ false, %40 ], [ %55, %42 ], [ %55, %60 ]
  %70 = phi i1 [ false, %40 ], [ %57, %42 ], [ %57, %60 ]
  %71 = zext i1 %70 to i32
  %72 = and i32 %3, 24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = and i8 %27, 127
  store i8 %75, ptr %26, align 4
  br label %343

76:                                               ; preds = %67
  %77 = zext i8 %2 to i32
  %78 = and i32 %77, 222
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = and i8 %27, 27
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %85 = tail call i32 @del_timer(ptr noundef %84) #22
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #22, !srcloc !10
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #22, !srcloc !19
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %96, label %94, !prof !20

94:                                               ; preds = %92
  tail call void @refcount_warn_saturate(ptr noundef %88, i32 noundef 3) #22
  br label %96

95:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %96

96:                                               ; preds = %95, %94, %92, %83, %80
  %97 = zext i8 %27 to i32
  %98 = and i32 %97, 194
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.neigh_ops, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 21
  store ptr %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %100, %96
  store i8 %2, ptr %26, align 4
  %107 = and i32 %97, 222
  %108 = and i32 %97, 17
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %77, 32
  %111 = icmp eq i32 %110, 0
  %112 = or i1 %111, %109
  br i1 %112, label %343, label %113

113:                                              ; preds = %106
  tail call fastcc void @neigh_invalidate(ptr noundef %0)
  br label %343

114:                                              ; preds = %76
  %115 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 51
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  br label %137

120:                                              ; preds = %114
  %121 = icmp eq ptr %1, null
  %122 = and i8 %27, -34
  %123 = icmp eq i8 %122, 0
  br i1 %121, label %131, label %124

124:                                              ; preds = %120
  br i1 %123, label %137, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %127 = zext i8 %116 to i32
  %128 = tail call i32 @bcmp(ptr nonnull %1, ptr %126, i32 %127)
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr %126, ptr %1
  br label %137

131:                                              ; preds = %120
  br i1 %123, label %132, label %135

132:                                              ; preds = %131
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__neigh_update.__msg.17) #22
  %133 = icmp eq ptr %5, null
  br i1 %133, label %343, label %134

134:                                              ; preds = %132
  store ptr @__neigh_update.__msg.17, ptr %5, align 4
  br label %343

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  br label %137

137:                                              ; preds = %135, %125, %124, %118
  %138 = phi ptr [ %1, %124 ], [ %136, %135 ], [ %119, %118 ], [ %130, %125 ]
  %139 = and i32 %77, 194
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load volatile i32, ptr @jiffies, align 64
  %143 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 3
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = and i32 %3, 4
  %146 = zext i8 %27 to i32
  %147 = and i32 %146, 222
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %151 = icmp ne ptr %138, %150
  %152 = and i32 %3, 1
  %153 = icmp eq i32 %152, 0
  %154 = and i1 %153, %151
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = and i32 %3, 2
  %157 = icmp eq i32 %156, 0
  %158 = and i32 %146, 194
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %157, i1 true, i1 %159
  br i1 %160, label %343, label %167

161:                                              ; preds = %149
  %162 = icmp eq ptr %138, %150
  %163 = icmp eq i8 %2, 4
  %164 = and i1 %163, %162
  %165 = and i1 %36, %164
  %166 = select i1 %165, i8 %27, i8 %2
  br label %167

167:                                              ; preds = %161, %155, %144
  %168 = phi i8 [ %2, %144 ], [ 4, %155 ], [ %166, %161 ]
  %169 = phi ptr [ %138, %144 ], [ %150, %155 ], [ %138, %161 ]
  %170 = phi i32 [ %145, %144 ], [ 0, %155 ], [ %145, %161 ]
  %171 = zext i8 %168 to i32
  %172 = icmp eq i8 %168, %27
  %173 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %174 = icmp eq ptr %169, %173
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %179, label %176

176:                                              ; preds = %167
  %177 = load volatile i32, ptr @jiffies, align 64
  %178 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 4
  store i32 %177, ptr %178, align 8
  br label %179

179:                                              ; preds = %176, %167
  br i1 %172, label %202, label %180

180:                                              ; preds = %179
  %181 = tail call fastcc i32 @neigh_del_timer(ptr noundef %0)
  %182 = and i32 %171, 16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 11
  store volatile i32 0, ptr %185, align 4
  br label %186

186:                                              ; preds = %184, %180
  %187 = and i32 %171, 27
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %186
  %190 = load volatile i32, ptr @jiffies, align 64
  %191 = and i32 %171, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.neigh_parms, ptr %195, i32 0, i32 10
  %197 = load i32, ptr %196, align 4
  br label %198

198:                                              ; preds = %193, %189
  %199 = phi i32 [ %197, %193 ], [ 0, %189 ]
  %200 = add i32 %199, %190
  tail call fastcc void @neigh_add_timer(ptr noundef %0, i32 noundef %200)
  br label %201

201:                                              ; preds = %198, %186
  store i8 %168, ptr %26, align 4
  br label %202

202:                                              ; preds = %201, %179
  %203 = phi i32 [ %71, %179 ], [ 1, %201 ]
  br i1 %174, label %247, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 17
  %206 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %206) #22
  %207 = load i32, ptr %205, align 4
  %208 = add i32 %207, 1
  store i32 %208, ptr %205, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !49
  %209 = load i8, ptr %115, align 1
  %210 = zext i8 %209 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %173, ptr align 1 %169, i32 %210, i1 false)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !50
  %211 = load i32, ptr %205, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %205, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !51
  %213 = load i16, ptr %206, align 4
  %214 = add i16 %213, 1
  store i16 %214, ptr %206, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !52
  %215 = load ptr, ptr %24, align 4
  %216 = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 44
  %217 = load ptr, ptr %216, align 16
  %218 = icmp eq ptr %217, null
  br i1 %218, label %235, label %219

219:                                              ; preds = %204
  %220 = getelementptr inbounds %struct.header_ops, ptr %217, i32 0, i32 3
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %235, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 20
  %225 = load volatile i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 20, i32 1
  %229 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 20, i32 1, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %229) #22
  %230 = load i32, ptr %228, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %228, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !49
  %232 = load ptr, ptr %24, align 4
  tail call void %221(ptr noundef %224, ptr noundef %232, ptr noundef %173) #22
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !50
  %233 = load i32, ptr %228, align 4
  %234 = add i32 %233, 1
  store i32 %234, ptr %228, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %229) #22
  br label %235

235:                                              ; preds = %227, %223, %219, %204
  %236 = and i32 %171, 194
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load volatile i32, ptr @jiffies, align 64
  %240 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr %struct.neigh_parms, ptr %241, i32 0, i32 11, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = mul i32 %243, -2
  %245 = add i32 %244, %239
  %246 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 3
  store i32 %245, ptr %246, align 4
  br label %247

247:                                              ; preds = %238, %235, %202
  %248 = phi i32 [ %203, %202 ], [ 1, %238 ], [ 1, %235 ]
  br i1 %172, label %331, label %249

249:                                              ; preds = %247
  %250 = and i32 %171, 194
  %251 = icmp eq i32 %250, 0
  %252 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  %253 = load ptr, ptr %252, align 8
  %254 = getelementptr inbounds %struct.neigh_ops, ptr %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.neigh_ops, ptr %253, i32 0, i32 4
  %256 = select i1 %251, ptr %254, ptr %255
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 21
  store ptr %257, ptr %258, align 4
  br i1 %148, label %259, label %331

259:                                              ; preds = %249
  %260 = load i8, ptr %26, align 4
  %261 = and i8 %260, -34
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %328, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %265 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 1
  br label %266

266:                                              ; preds = %324, %263
  %267 = load ptr, ptr %264, align 4
  %268 = icmp eq ptr %267, %264
  %269 = icmp eq ptr %267, null
  %270 = or i1 %268, %269
  br i1 %270, label %328, label %271

271:                                              ; preds = %266
  %272 = load i32, ptr %265, align 4
  %273 = add i32 %272, -1
  store volatile i32 %273, ptr %265, align 4
  %274 = load ptr, ptr %267, align 8
  %275 = getelementptr inbounds %struct.anon.0, ptr %267, i32 0, i32 1
  %276 = load ptr, ptr %275, align 4
  store ptr null, ptr %275, align 4
  store ptr null, ptr %267, align 8
  %277 = getelementptr inbounds %struct.anon.0, ptr %274, i32 0, i32 1
  store volatile ptr %276, ptr %277, align 4
  store volatile ptr %274, ptr %276, align 8
  %278 = getelementptr inbounds %struct.sk_buff, ptr %267, i32 0, i32 4
  %279 = load i32, ptr %278, align 8
  %280 = and i32 %279, -2
  %281 = inttoptr i32 %280 to ptr
  tail call void @_raw_write_unlock_bh(ptr noundef %23) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !53
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %305, label %283

283:                                              ; preds = %271
  %284 = getelementptr inbounds %struct.dst_entry, ptr %281, i32 0, i32 8
  %285 = load i16, ptr %284, align 2
  %286 = icmp eq i16 %285, 2
  br i1 %286, label %305, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.dst_entry, ptr %281, i32 0, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.dst_ops, ptr %289, i32 0, i32 14
  %291 = load ptr, ptr %290, align 8
  %292 = icmp eq ptr %291, null
  %293 = load i1, ptr @dst_neigh_lookup_skb.__already_done, align 1
  %294 = xor i1 %293, true
  %295 = select i1 %292, i1 %294, i1 false
  br i1 %295, label %296, label %297, !prof !31

296:                                              ; preds = %287
  store i1 true, ptr @dst_neigh_lookup_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 411, i32 noundef 9, ptr noundef null) #22
  br label %297

297:                                              ; preds = %296, %287
  br i1 %292, label %308, label %298

298:                                              ; preds = %297
  %299 = load ptr, ptr %288, align 4
  %300 = getelementptr inbounds %struct.dst_ops, ptr %299, i32 0, i32 14
  %301 = load ptr, ptr %300, align 8
  %302 = tail call ptr %301(ptr noundef nonnull %281, ptr noundef nonnull %267, ptr noundef null) #22
  %303 = icmp ugt ptr %302, inttoptr (i32 -4096 to ptr)
  %304 = select i1 %303, ptr null, ptr %302
  br label %308

305:                                              ; preds = %283, %271
  %306 = load ptr, ptr %258, align 4
  %307 = tail call i32 %306(ptr noundef %0, ptr noundef nonnull %267) #22
  br label %324

308:                                              ; preds = %298, %297
  %309 = phi ptr [ null, %297 ], [ %304, %298 ]
  %310 = icmp eq ptr %309, null
  %311 = select i1 %310, ptr %0, ptr %309
  %312 = getelementptr inbounds %struct.neighbour, ptr %311, i32 0, i32 21
  %313 = load ptr, ptr %312, align 4
  %314 = tail call i32 %313(ptr noundef %311, ptr noundef nonnull %267) #22
  br i1 %310, label %324, label %315

315:                                              ; preds = %308
  %316 = getelementptr inbounds %struct.neighbour, ptr %309, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %316) #22, !srcloc !10
  %317 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %316, ptr %316, i32 1, ptr elementtype(i32) %316) #22, !srcloc !19
  %318 = extractvalue { i32, i32, i32 } %317, 0
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %323, label %320

320:                                              ; preds = %315
  %321 = icmp sgt i32 %318, 0
  br i1 %321, label %324, label %322, !prof !20

322:                                              ; preds = %320
  tail call void @refcount_warn_saturate(ptr noundef %316, i32 noundef 3) #22
  br label %324

323:                                              ; preds = %315
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef nonnull %309) #22
  br label %324

324:                                              ; preds = %323, %322, %320, %308, %305
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !54
  tail call void @_raw_write_lock_bh(ptr noundef %23) #22
  %325 = load i8, ptr %26, align 4
  %326 = and i8 %325, -34
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %266

328:                                              ; preds = %324, %266, %259
  %329 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  tail call fastcc void @__skb_queue_purge(ptr noundef %329)
  %330 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 7
  store i32 0, ptr %330, align 4
  br label %331

331:                                              ; preds = %328, %249, %247
  %332 = icmp eq i32 %170, 0
  br i1 %332, label %343, label %333

333:                                              ; preds = %331
  %334 = shl i32 %3, 1
  %335 = load i32, ptr %41, align 8
  %336 = xor i32 %335, %334
  %337 = and i32 %336, 128
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %333
  %340 = and i32 %335, -129
  %341 = and i32 %334, 128
  %342 = or i32 %340, %341
  store i32 %342, ptr %41, align 8
  br label %343

343:                                              ; preds = %339, %333, %331, %155, %134, %132, %113, %106, %74, %34, %33, %31
  %344 = phi i32 [ 0, %331 ], [ 0, %333 ], [ 0, %339 ], [ -22, %132 ], [ -22, %134 ], [ -1, %34 ], [ -1, %31 ], [ -1, %33 ], [ 0, %106 ], [ 0, %113 ], [ 0, %155 ], [ 0, %74 ]
  %345 = phi i8 [ %168, %331 ], [ %168, %333 ], [ %168, %339 ], [ %2, %132 ], [ %2, %134 ], [ %2, %34 ], [ %27, %31 ], [ %27, %33 ], [ %2, %106 ], [ %2, %113 ], [ %2, %155 ], [ %75, %74 ]
  %346 = phi i1 [ %69, %331 ], [ %69, %333 ], [ %69, %339 ], [ %69, %132 ], [ %69, %134 ], [ false, %34 ], [ false, %31 ], [ false, %33 ], [ %69, %106 ], [ %69, %113 ], [ %69, %155 ], [ %69, %74 ]
  %347 = phi i1 [ %68, %331 ], [ %68, %333 ], [ %68, %339 ], [ %68, %132 ], [ %68, %134 ], [ false, %34 ], [ false, %31 ], [ false, %33 ], [ %68, %106 ], [ %68, %113 ], [ %68, %155 ], [ %68, %74 ]
  %348 = phi i32 [ %248, %331 ], [ %248, %333 ], [ 1, %339 ], [ %71, %132 ], [ %71, %134 ], [ 0, %34 ], [ 0, %31 ], [ 0, %33 ], [ %107, %106 ], [ 1, %113 ], [ %71, %155 ], [ %71, %74 ]
  tail call void @_raw_write_unlock_bh(ptr noundef %23) #22
  %349 = xor i8 %345, %27
  %350 = icmp slt i8 %349, 0
  %351 = or i1 %347, %350
  br i1 %351, label %352, label %393

352:                                              ; preds = %343
  %353 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.neigh_table, ptr %354, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %355) #22
  tail call void @_raw_write_lock(ptr noundef %23) #22
  %356 = load i8, ptr %28, align 2
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %390

358:                                              ; preds = %352
  %359 = load i8, ptr %26, align 4
  %360 = icmp sgt i8 %359, -1
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 16
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 16
  %365 = icmp ne i32 %364, 0
  br label %366

366:                                              ; preds = %361, %358
  %367 = phi i1 [ true, %358 ], [ %365, %361 ]
  %368 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 23
  %369 = load volatile ptr, ptr %368, align 4
  %370 = icmp ne ptr %369, %368
  %371 = select i1 %367, i1 %370, i1 false
  br i1 %371, label %372, label %379

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 23, i32 1
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.list_head, ptr %369, i32 0, i32 1
  store ptr %374, ptr %375, align 4
  store volatile ptr %369, ptr %374, align 4
  store volatile ptr %368, ptr %368, align 4
  store ptr %368, ptr %373, align 4
  %376 = load ptr, ptr %353, align 4
  %377 = getelementptr inbounds %struct.neigh_table, ptr %376, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %377) #22, !srcloc !10
  %378 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %377, ptr %377, i32 1, ptr elementtype(i32) %377) #22, !srcloc !11
  br label %390

379:                                              ; preds = %366
  %380 = select i1 %367, i1 true, i1 %370
  br i1 %380, label %390, label %381

381:                                              ; preds = %379
  %382 = load ptr, ptr %353, align 4
  %383 = getelementptr inbounds %struct.neigh_table, ptr %382, i32 0, i32 26
  %384 = getelementptr inbounds %struct.neigh_table, ptr %382, i32 0, i32 26, i32 1
  %385 = load ptr, ptr %384, align 4
  store ptr %368, ptr %384, align 4
  store ptr %383, ptr %368, align 4
  %386 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 23, i32 1
  store ptr %385, ptr %386, align 4
  store volatile ptr %368, ptr %385, align 4
  %387 = load ptr, ptr %353, align 4
  %388 = getelementptr inbounds %struct.neigh_table, ptr %387, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %388) #22, !srcloc !10
  %389 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %388, ptr %388, i32 1, ptr elementtype(i32) %388) #22, !srcloc !32
  br label %390

390:                                              ; preds = %381, %379, %372, %352
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %23, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %391 = load ptr, ptr %353, align 4
  %392 = getelementptr inbounds %struct.neigh_table, ptr %391, i32 0, i32 28
  tail call void @_raw_write_unlock_bh(ptr noundef %392) #22
  br label %393

393:                                              ; preds = %390, %343
  br i1 %346, label %394, label %424

394:                                              ; preds = %393
  %395 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr inbounds %struct.neigh_table, ptr %396, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %397) #22
  tail call void @_raw_write_lock(ptr noundef %23) #22
  %398 = load i8, ptr %28, align 2
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %421

400:                                              ; preds = %394
  %401 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 16
  %402 = load i32, ptr %401, align 8
  %403 = and i32 %402, 256
  %404 = icmp eq i32 %403, 0
  %405 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 24
  %406 = load volatile ptr, ptr %405, align 4
  %407 = icmp ne ptr %406, %405
  %408 = select i1 %404, i1 %407, i1 false
  br i1 %408, label %409, label %413

409:                                              ; preds = %400
  %410 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 24, i32 1
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.list_head, ptr %406, i32 0, i32 1
  store ptr %411, ptr %412, align 4
  store volatile ptr %406, ptr %411, align 4
  store volatile ptr %405, ptr %405, align 4
  store ptr %405, ptr %410, align 4
  br label %421

413:                                              ; preds = %400
  %414 = select i1 %404, i1 true, i1 %407
  br i1 %414, label %421, label %415

415:                                              ; preds = %413
  %416 = load ptr, ptr %395, align 4
  %417 = getelementptr inbounds %struct.neigh_table, ptr %416, i32 0, i32 27
  %418 = getelementptr inbounds %struct.neigh_table, ptr %416, i32 0, i32 27, i32 1
  %419 = load ptr, ptr %418, align 4
  store ptr %405, ptr %418, align 4
  store ptr %417, ptr %405, align 4
  %420 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 24, i32 1
  store ptr %419, ptr %420, align 4
  store volatile ptr %405, ptr %419, align 4
  br label %421

421:                                              ; preds = %415, %413, %409, %394
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %23, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %422 = load ptr, ptr %395, align 4
  %423 = getelementptr inbounds %struct.neigh_table, ptr %422, i32 0, i32 28
  tail call void @_raw_write_unlock_bh(ptr noundef %423) #22
  br label %424

424:                                              ; preds = %421, %393
  %425 = icmp eq i32 %348, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %424
  %427 = tail call i32 @call_netevent_notifiers(i32 noundef 1, ptr noundef %0) #22
  tail call fastcc void @__neigh_notify(ptr noundef %0, i32 noundef 28, i32 noundef 0, i32 noundef %4) #22
  br label %428

428:                                              ; preds = %426, %424
  %429 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_update_done, i32 0, i32 1), align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %444

431:                                              ; preds = %428
  %432 = tail call ptr @llvm.thread.pointer() #22
  %433 = getelementptr inbounds %struct.thread_info, ptr %432, i32 0, i32 2
  %434 = load i32, ptr %433, align 8
  %435 = lshr i32 %434, 5
  %436 = getelementptr i32, ptr @__cpu_online_mask, i32 %435
  %437 = load volatile i32, ptr %436, align 4
  %438 = and i32 %434, 31
  %439 = shl nuw i32 1, %438
  %440 = and i32 %439, %437
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %444, label %442

442:                                              ; preds = %431
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !55
  %443 = tail call i32 @__traceiter_neigh_update_done(ptr noundef null, ptr noundef %0, i32 noundef %344) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !56
  br label %444

444:                                              ; preds = %442, %431, %428
  ret i32 %344
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__neigh_set_probe_once(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %1
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 4
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %5
  store i8 1, ptr %8, align 4
  %13 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 11
  %14 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr %struct.neigh_parms, ptr %15, i32 0, i32 11, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.neigh_parms, ptr %15, i32 0, i32 11, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.neigh_parms, ptr %15, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %17
  %23 = add i32 %22, %21
  store volatile i32 %23, ptr %13, align 4
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr %struct.neigh_parms, ptr %15, i32 0, i32 11, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  %28 = add i32 %27, %24
  %29 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #22, !srcloc !10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #22, !srcloc !30
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !31

33:                                               ; preds = %12
  %34 = add i32 %31, 1
  %35 = or i32 %34, %31
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %39, label %37, !prof !20

37:                                               ; preds = %33, %12
  %38 = phi i32 [ 2, %12 ], [ 1, %33 ]
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef %38) #22
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 9
  %41 = tail call i32 @mod_timer(ptr noundef %40, i32 noundef %28) #22
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !20

43:                                               ; preds = %39
  %44 = load i8, ptr %8, align 4
  %45 = zext i8 %44 to i32
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %45) #23
  tail call void @dump_stack() #23
  br label %47

47:                                               ; preds = %43, %39, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @neigh_event_ns(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 51
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i1 [ true, %4 ], [ %9, %6 ]
  %12 = tail call ptr @neigh_lookup(ptr noundef %0, ptr noundef %2, ptr noundef %3) #22
  %13 = icmp eq ptr %12, null
  %14 = and i1 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @___neigh_create(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #22
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %16, %15 ], [ %12, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @__neigh_update(ptr noundef nonnull %19, ptr noundef %1, i8 noundef zeroext 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #22
  br label %23

23:                                               ; preds = %21, %18, %15
  %24 = phi ptr [ %19, %21 ], [ null, %18 ], [ null, %15 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_resolve_output(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 10
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %3
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store volatile i32 %3, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, -38
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 @__neigh_event_send(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %13, %8
  %17 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 44
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr inbounds %struct.header_ops, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 20
  %26 = load volatile i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.neigh_table, ptr %30, i32 0, i32 3
  %32 = load i16, ptr %31, align 4
  %33 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 5
  tail call void @_raw_write_lock_bh(ptr noundef %33) #22
  %34 = load i32, ptr %25, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load ptr, ptr %19, align 16
  %38 = getelementptr inbounds %struct.header_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0, ptr noundef %25, i16 noundef zeroext %32) #22
  br label %41

41:                                               ; preds = %36, %28
  tail call void @_raw_write_unlock_bh(ptr noundef %33) #22
  br label %42

42:                                               ; preds = %41, %24, %16
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %48 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 17
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %50 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  br label %51

51:                                               ; preds = %86, %42
  %52 = load ptr, ptr %43, align 8
  %53 = load i16, ptr %44, align 4
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = load ptr, ptr %45, align 4
  %57 = ptrtoint ptr %55 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = sub i32 %57, %58
  %60 = load i32, ptr %46, align 8
  %61 = sub i32 %60, %59
  store i32 %61, ptr %46, align 8
  %62 = load i32, ptr %47, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %65, !prof !31

64:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #22, !srcloc !57
  unreachable

65:                                               ; preds = %51
  %66 = getelementptr i8, ptr %56, i32 %59
  store ptr %66, ptr %45, align 4
  %67 = load volatile i32, ptr %48, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %70, %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #22, !srcloc !59
  %71 = load volatile i32, ptr %48, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %70

74:                                               ; preds = %70, %65
  %75 = phi i32 [ %67, %65 ], [ %71, %70 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !60
  %76 = load i16, ptr %49, align 8
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %78 = load i32, ptr %46, align 8
  %79 = load ptr, ptr %19, align 16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load ptr, ptr %79, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i32 %82(ptr noundef %1, ptr noundef %18, i16 noundef zeroext %77, ptr noundef %50, ptr noundef null, i32 noundef %78) #22
  br label %86

86:                                               ; preds = %84, %81, %74
  %87 = phi i32 [ %85, %84 ], [ 0, %81 ], [ 0, %74 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !61
  %88 = load volatile i32, ptr %48, align 4
  %89 = icmp eq i32 %88, %75
  br i1 %89, label %90, label %51

90:                                               ; preds = %86
  %91 = icmp sgt i32 %87, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call i32 @dev_queue_xmit(ptr noundef %1) #22
  br label %95

94:                                               ; preds = %90
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #22
  br label %95

95:                                               ; preds = %94, %92, %13
  %96 = phi i32 [ 0, %13 ], [ -22, %94 ], [ %93, %92 ]
  ret i32 %96
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @neigh_event_send(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 10
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %3
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store volatile i32 %3, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, -38
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 @__neigh_event_send(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #22
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_connected_output(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 17
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %12 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %13 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 44
  br label %14

14:                                               ; preds = %49, %2
  %15 = load ptr, ptr %5, align 8
  %16 = load i16, ptr %6, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load ptr, ptr %7, align 4
  %20 = ptrtoint ptr %18 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = load i32, ptr %8, align 8
  %24 = sub i32 %23, %22
  store i32 %24, ptr %8, align 8
  %25 = load i32, ptr %9, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %28, !prof !31

27:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #22, !srcloc !57
  unreachable

28:                                               ; preds = %14
  %29 = getelementptr i8, ptr %19, i32 %22
  store ptr %29, ptr %7, align 4
  %30 = load volatile i32, ptr %10, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %33, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #22, !srcloc !59
  %34 = load volatile i32, ptr %10, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %30, %28 ], [ %34, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !60
  %39 = load i16, ptr %11, align 8
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %41 = load i32, ptr %8, align 8
  %42 = load ptr, ptr %13, align 16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %42, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 %45(ptr noundef %1, ptr noundef %4, i16 noundef zeroext %40, ptr noundef %12, ptr noundef null, i32 noundef %41) #22
  br label %49

49:                                               ; preds = %47, %44, %37
  %50 = phi i32 [ %48, %47 ], [ 0, %44 ], [ 0, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !61
  %51 = load volatile i32, ptr %10, align 4
  %52 = icmp eq i32 %51, %38
  br i1 %52, label %53, label %14

53:                                               ; preds = %49
  %54 = icmp sgt i32 %50, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = tail call i32 @dev_queue_xmit(ptr noundef %1) #22
  br label %58

57:                                               ; preds = %53
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #22
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ -22, %57 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_direct_output(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @dev_queue_xmit(ptr noundef %1) #22
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pneigh_enqueue(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @prandom_u32() #22
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = mul nuw i64 %8, %9
  %11 = lshr i64 %10, 32
  %12 = trunc i64 %11 to i32
  %13 = add i32 %4, %12
  %14 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 23
  %15 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 23, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #22
  br label %73

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  store i32 %13, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 23, i32 2
  tail call void @_raw_spin_lock(ptr noundef %26) #22
  %27 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 22
  %28 = tail call i32 @del_timer(ptr noundef %27) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 22, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %32, %13
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i32 %32, i32 %13
  br label %36

36:                                               ; preds = %30, %21
  %37 = phi i32 [ %13, %21 ], [ %35, %30 ]
  %38 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = and i32 %39, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = and i32 %39, -2
  %46 = inttoptr i32 %45 to ptr
  tail call void @dst_release(ptr noundef %46) #22
  br label %47

47:                                               ; preds = %44, %41
  store i32 0, ptr %38, align 8
  br label %48

48:                                               ; preds = %47, %36
  %49 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %54 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 99
  %55 = load ptr, ptr %54, align 8
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #14, !srcloc !23
  %60 = add i32 %59, %56
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #22, !srcloc !24
  br label %64

64:                                               ; preds = %52, %48
  %65 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 23, i32 0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  store volatile ptr %14, ptr %2, align 8
  %67 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1
  store volatile ptr %66, ptr %67, align 4
  store volatile ptr %2, ptr %65, align 4
  store volatile ptr %2, ptr %66, align 4
  %68 = load i32, ptr %15, align 4
  %69 = add i32 %68, 1
  store volatile i32 %69, ptr %15, align 4
  %70 = tail call i32 @mod_timer(ptr noundef %27, i32 noundef %37) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !51
  %71 = load i16, ptr %26, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !52
  br label %73

73:                                               ; preds = %64, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @neigh_parms_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 13
  %6 = tail call ptr @kmemdup(ptr noundef %5, i32 noundef 100, i32 noundef 3264) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 5
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 8
  store volatile i32 1, ptr %10, align 4
  %11 = getelementptr %struct.neigh_parms, ptr %6, i32 0, i32 11, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @prandom_u32() #22
  %16 = urem i32 %15, %12
  %17 = lshr i32 %12, 1
  %18 = add i32 %16, %17
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i32 [ %18, %14 ], [ 0, %8 ]
  %21 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 10
  store i32 %20, ptr %21, align 4
  %22 = icmp eq ptr %0, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #14, !srcloc !23
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #22, !srcloc !24
  br label %35

35:                                               ; preds = %23, %19
  %36 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 1
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 6
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.net_device_ops, ptr %4, i32 0, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = tail call i32 %39(ptr noundef %0, ptr noundef nonnull %6) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  br i1 %22, label %57, label %45

45:                                               ; preds = %44
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %48 = load ptr, ptr %47, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #14, !srcloc !23
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #22, !srcloc !24
  br label %57

57:                                               ; preds = %45, %44
  tail call void @kfree(ptr noundef nonnull %6) #22
  br label %66

58:                                               ; preds = %41, %35
  %59 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %59) #22
  %60 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 3
  %61 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 13, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %60, ptr %63, align 4
  store ptr %62, ptr %60, align 4
  %64 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 3, i32 1
  store ptr %61, ptr %64, align 4
  store volatile ptr %60, ptr %61, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %59) #22
  %65 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 12
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %58, %57, %2
  %67 = phi ptr [ null, %57 ], [ %6, %58 ], [ null, %2 ]
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_parms_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 13
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 7
  store i32 1, ptr %14, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %8) #22
  %15 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %20 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 99
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #14, !srcloc !23
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #22, !srcloc !24
  br label %30

30:                                               ; preds = %18, %7
  %31 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 9
  tail call void @call_rcu(ptr noundef %31, ptr noundef nonnull @neigh_rcu_free_parms) #22
  br label %32

32:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @neigh_rcu_free_parms(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !20

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #22
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @kfree(ptr noundef %10) #22
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_table_init(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 14
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 14, i32 1
  %6 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 26
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 26, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 27
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 27, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 13, i32 3
  store ptr %10, ptr %5, align 4
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 13, i32 3, i32 1
  store ptr %4, ptr %11, align 4
  store volatile ptr %10, ptr %4, align 4
  %12 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 13, i32 8
  store volatile i32 1, ptr %12, align 4
  %13 = getelementptr %struct.neigh_table, ptr %1, i32 0, i32 13, i32 11, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = tail call i32 @prandom_u32() #22
  %18 = urem i32 %17, %14
  %19 = lshr i32 %14, 1
  %20 = add i32 %18, %19
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i32 [ %20, %16 ], [ 0, %2 ]
  %23 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 13, i32 10
  store i32 %22, ptr %23, align 4
  %24 = tail call noalias ptr @__alloc_percpu(i32 noundef 48, i32 noundef 4) #24
  %25 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 30
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #25
  unreachable

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 18), align 4
  %32 = tail call ptr @proc_create_seq_private(ptr noundef %30, i16 noundef zeroext 0, ptr noundef %31, ptr noundef nonnull @neigh_stat_seq_ops, i32 noundef 0, ptr noundef %1) #22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #25
  unreachable

35:                                               ; preds = %28
  %36 = tail call fastcc ptr @neigh_hash_alloc(i32 noundef 3)
  %37 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 31
  store volatile ptr %36, ptr %37, align 4
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 64) #26
  %40 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 32
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = icmp eq ptr %41, null
  %43 = icmp eq ptr %39, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #25
  unreachable

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 279
  %54 = and i32 %53, -8
  store i32 %54, ptr %47, align 4
  br label %59

55:                                               ; preds = %46
  %56 = and i32 %48, 7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !20

58:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1762, i32 noundef 9, ptr noundef null) #22
  br label %59

59:                                               ; preds = %58, %55, %50
  %60 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 28
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 20
  store i32 -32, ptr %61, align 4
  %62 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 20, i32 0, i32 1
  store volatile ptr %62, ptr %62, align 4
  %63 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 20, i32 0, i32 1, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 20, i32 0, i32 2
  store ptr @neigh_periodic_work, ptr %64, align 4
  %65 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 20, i32 1
  tail call void @init_timer_key(ptr noundef %65, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef null, ptr noundef null) #22
  %66 = load ptr, ptr @system_power_efficient_wq, align 4
  %67 = load i32, ptr %23, align 4
  %68 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %66, ptr noundef %61, i32 noundef %67) #22
  %69 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 21
  store i32 -32, ptr %69, align 4
  %70 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 21, i32 0, i32 1
  store volatile ptr %70, ptr %70, align 4
  %71 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 21, i32 0, i32 2
  store ptr @neigh_managed_work, ptr %72, align 4
  %73 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %73, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef null, ptr noundef null) #22
  %74 = load ptr, ptr @system_power_efficient_wq, align 4
  %75 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %74, ptr noundef %69, i32 noundef 0) #22
  %76 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %76, ptr noundef nonnull @neigh_proxy_process, i32 noundef 0, ptr noundef null, ptr noundef null) #22
  %77 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 23
  %78 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 23, i32 2
  store i32 0, ptr %78, align 4
  store ptr %77, ptr %77, align 4
  %79 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 23, i32 0, i32 0, i32 1
  store ptr %77, ptr %79, align 4
  %80 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 23, i32 1
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 19
  store i32 %3, ptr %81, align 4
  %82 = load i32, ptr %23, align 4
  %83 = mul i32 %82, 20
  %84 = add i32 %83, %3
  %85 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 29
  store i32 %84, ptr %85, align 4
  %86 = getelementptr [3 x ptr], ptr @neigh_tables, i32 0, i32 %0
  store ptr %1, ptr %86, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @neigh_hash_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = shl i32 4, %0
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 32) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = icmp ult i32 %2, 4097
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 2848) #24
  br label %17

10:                                               ; preds = %6
  %11 = add i32 %2, -1
  %12 = lshr i32 %11, 12
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #22, !range !62
  %14 = sub nuw nsw i32 32, %13
  %15 = tail call i32 @__get_free_pages(i32 noundef 2848, i32 noundef %14) #22
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi ptr [ %16, %10 ], [ %9, %8 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %4) #22
  br label %35

21:                                               ; preds = %17
  store ptr %18, ptr %4, align 8
  %22 = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 1
  store i32 %0, ptr %22, align 4
  %23 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 0
  %24 = tail call i32 @get_random_u32() #22
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8
  %26 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 1
  %27 = tail call i32 @get_random_u32() #22
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 2
  %30 = tail call i32 @get_random_u32() #22
  %31 = or i32 %30, 1
  store i32 %31, ptr %29, align 8
  %32 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 3
  %33 = tail call i32 @get_random_u32() #22
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %21, %20, %1
  %36 = phi ptr [ null, %20 ], [ null, %1 ], [ %4, %21 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @neigh_periodic_work(ptr noundef %0) #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %3 = getelementptr i8, ptr %0, i32 156
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.neigh_statistics, ptr %4, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #14, !srcloc !23
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #22, !srcloc !24
  %14 = getelementptr i8, ptr %0, i32 148
  tail call void @_raw_write_lock_bh(ptr noundef %14) #22
  %15 = getelementptr i8, ptr %0, i32 160
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 152
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 30000
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %19, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load volatile i32, ptr @jiffies, align 64
  store i32 %24, ptr %17, align 4
  %25 = getelementptr i8, ptr %0, i32 -28
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %43, label %28

28:                                               ; preds = %38, %23
  %29 = phi ptr [ %41, %38 ], [ %26, %23 ]
  %30 = getelementptr i8, ptr %29, i32 60
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @prandom_u32() #22
  %35 = urem i32 %34, %31
  %36 = lshr i32 %31, 1
  %37 = add i32 %35, %36
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %37, %33 ], [ 0, %28 ]
  %40 = getelementptr i8, ptr %29, i32 36
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %29, align 4
  %42 = icmp eq ptr %41, %25
  br i1 %42, label %43, label %28

43:                                               ; preds = %38, %23, %1
  %44 = getelementptr i8, ptr %0, i32 124
  %45 = load volatile i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 -16
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %130, label %49

49:                                               ; preds = %122, %43
  %50 = phi i32 [ %125, %122 ], [ 0, %43 ]
  %51 = phi ptr [ %124, %122 ], [ %16, %43 ]
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr ptr, ptr %52, i32 %50
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %122, label %56

56:                                               ; preds = %118, %49
  %57 = phi ptr [ %120, %118 ], [ %54, %49 ]
  %58 = phi ptr [ %119, %118 ], [ %53, %49 ]
  %59 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %59) #22
  %60 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 12
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, -101
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 16
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %59, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br label %118

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = sub i32 %72, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 %74, ptr %71, align 4
  br label %78

78:                                               ; preds = %77, %70
  %79 = phi i32 [ %74, %77 ], [ %72, %70 ]
  %80 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 6
  %81 = load volatile i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %117

83:                                               ; preds = %78
  %84 = icmp eq i8 %61, 32
  br i1 %84, label %94, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr %struct.neigh_parms, ptr %87, i32 0, i32 11, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, %79
  %91 = load volatile i32, ptr @jiffies, align 64
  %92 = sub i32 %90, %91
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %85, %83
  %95 = load ptr, ptr %57, align 8
  store ptr %95, ptr %58, align 4
  %96 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 14
  store i8 1, ptr %96, align 2
  %97 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 23
  %98 = load volatile ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %97
  br i1 %99, label %108, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 23, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  store volatile ptr %98, ptr %102, align 4
  store volatile ptr %97, ptr %97, align 4
  store ptr %97, ptr %101, align 4
  %104 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.neigh_table, ptr %105, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #22, !srcloc !10
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #22, !srcloc !11
  br label %108

108:                                              ; preds = %100, %94
  %109 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 24
  %110 = load volatile ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %109
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.neighbour, ptr %57, i32 0, i32 24, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %114, ptr %115, align 4
  store volatile ptr %110, ptr %114, align 4
  store volatile ptr %109, ptr %109, align 4
  store ptr %109, ptr %113, align 4
  br label %116

116:                                              ; preds = %112, %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %59, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  tail call fastcc void @neigh_cleanup_and_release(ptr noundef nonnull %57)
  br label %118

117:                                              ; preds = %85, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %59, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br label %118

118:                                              ; preds = %117, %116, %69
  %119 = phi ptr [ %58, %116 ], [ %57, %117 ], [ %57, %69 ]
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %56

122:                                              ; preds = %118, %49
  tail call void @_raw_write_unlock_bh(ptr noundef %14) #22
  %123 = tail call i32 @__cond_resched() #22
  tail call void @_raw_write_lock_bh(ptr noundef %14) #22
  %124 = load ptr, ptr %15, align 4
  %125 = add i32 %50, 1
  %126 = getelementptr inbounds %struct.neigh_hash_table, ptr %124, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %125, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %49, label %130

130:                                              ; preds = %122, %43
  %131 = load ptr, ptr @system_power_efficient_wq, align 4
  %132 = getelementptr i8, ptr %0, i32 -64
  %133 = load i32, ptr %132, align 4
  %134 = ashr i32 %133, 1
  %135 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %131, ptr noundef %0, i32 noundef %134) #22
  tail call void @_raw_write_unlock_bh(ptr noundef %14) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @neigh_managed_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 104
  tail call void @_raw_write_lock_bh(ptr noundef %2) #22
  %3 = getelementptr i8, ptr %0, i32 96
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %24, label %6

6:                                                ; preds = %21, %1
  %7 = phi ptr [ %22, %21 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -252
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = getelementptr i8, ptr %7, i32 -184
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store volatile i32 %9, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr i8, ptr %7, i32 -176
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, -38
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @__neigh_event_send(ptr noundef %8, ptr noundef null, i1 noundef zeroext false) #22
  br label %21

21:                                               ; preds = %19, %14
  %22 = load ptr, ptr %7, align 4
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %6

24:                                               ; preds = %21, %1
  %25 = load ptr, ptr @system_power_efficient_wq, align 4
  %26 = getelementptr i8, ptr %0, i32 -104
  %27 = load i32, ptr %26, align 4
  %28 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %0, i32 noundef %27) #22
  tail call void @_raw_write_unlock_bh(ptr noundef %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @neigh_proxy_process(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = getelementptr i8, ptr %0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %4) #22
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @del_timer(ptr noundef %0) #22
  br label %68

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = getelementptr i8, ptr %0, i32 -232
  br label %12

12:                                               ; preds = %58, %9
  %13 = phi ptr [ %5, %9 ], [ %15, %58 ]
  %14 = phi i32 [ 0, %9 ], [ %59, %58 ]
  %15 = load ptr, ptr %13, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = sub i32 %17, %2
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %53

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %10, align 4
  %24 = add i32 %23, -1
  store volatile i32 %24, ptr %10, align 4
  %25 = load ptr, ptr %13, align 8
  %26 = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr null, ptr %26, align 4
  store ptr null, ptr %13, align 8
  %28 = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 1
  store volatile ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 8
  %29 = load ptr, ptr %11, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !53
  %37 = load ptr, ptr %11, align 4
  tail call void %37(ptr noundef %13) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !54
  br label %39

38:                                               ; preds = %31, %20
  tail call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #22
  br label %39

39:                                               ; preds = %38, %36
  %40 = icmp eq ptr %22, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %39
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %43 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 99
  %44 = load ptr, ptr %43, align 8
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #14, !srcloc !23
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #22, !srcloc !24
  br label %58

53:                                               ; preds = %12
  %54 = icmp eq i32 %14, 0
  %55 = icmp slt i32 %18, %14
  %56 = select i1 %54, i1 true, i1 %55
  %57 = select i1 %56, i32 %18, i32 %14
  br label %58

58:                                               ; preds = %53, %41, %39
  %59 = phi i32 [ %57, %53 ], [ %14, %39 ], [ %14, %41 ]
  %60 = icmp eq ptr %15, %3
  br i1 %60, label %61, label %12

61:                                               ; preds = %58
  %62 = tail call i32 @del_timer(ptr noundef %0) #22
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, %59
  %67 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %66) #22
  br label %68

68:                                               ; preds = %64, %61, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !51
  %69 = load i16, ptr %4, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_table_clear(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr [3 x ptr], ptr @neigh_tables, i32 0, i32 %0
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 21
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #22
  %6 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 20
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 22
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #22
  %10 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 23
  %11 = tail call ptr @skb_dequeue(ptr noundef %10) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %30, %2
  %14 = phi ptr [ %31, %30 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %20 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 99
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #14, !srcloc !23
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #22, !srcloc !24
  br label %30

30:                                               ; preds = %18, %13
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #22
  %31 = tail call ptr @skb_dequeue(ptr noundef %10) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %13

33:                                               ; preds = %30, %2
  tail call fastcc void @__neigh_ifdown(ptr noundef %1, ptr noundef null, i1 noundef zeroext false) #22
  %34 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 24
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #23
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 31
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.neigh_hash_table, ptr %41, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %42, ptr noundef nonnull @neigh_hash_free_rcu) #22
  store ptr null, ptr %40, align 4
  %43 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 32
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #22
  store ptr null, ptr %43, align 4
  %45 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 18), align 4
  tail call void @remove_proc_entry(ptr noundef %46, ptr noundef %47) #22
  %48 = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 30
  %49 = load ptr, ptr %48, align 4
  tail call void @free_percpu(ptr noundef %49) #22
  store ptr null, ptr %48, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @neigh_hash_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 4, %4
  %6 = load ptr, ptr %2, align 4
  %7 = icmp ult i32 %5, 4097
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @kfree(ptr noundef %6) #22
  br label %15

9:                                                ; preds = %1
  %10 = ptrtoint ptr %6 to i32
  %11 = add i32 %5, -1
  %12 = lshr i32 %11, 12
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #22, !range !62
  %14 = sub nuw nsw i32 32, %13
  tail call void @free_pages(i32 noundef %10, i32 noundef %14) #22
  br label %15

15:                                               ; preds = %9, %8
  tail call void @kfree(ptr noundef %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_for_each(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #22
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = add i32 %6, 512
  store volatile i32 %7, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %8 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 31
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 28
  tail call void @_raw_read_lock(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.neigh_hash_table, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 31
  br i1 %13, label %32, label %14

14:                                               ; preds = %27, %3
  %15 = phi i32 [ %28, %27 ], [ %12, %3 ]
  %16 = phi i32 [ %29, %27 ], [ 0, %3 ]
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %21, %14
  %22 = phi ptr [ %23, %21 ], [ %19, %14 ]
  tail call void %1(ptr noundef nonnull %22, ptr noundef %2) #22
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = load i32, ptr %11, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i32 [ %26, %25 ], [ %15, %14 ]
  %29 = add nuw nsw i32 %16, 1
  %30 = shl nuw i32 1, %28
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %14, label %32

32:                                               ; preds = %27, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !63
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #22, !srcloc !10
  %33 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %10) #22, !srcloc !64
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  br label %37

37:                                               ; preds = %36, %32
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !65
  tail call fastcc void @local_bh_enable() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__neigh_for_each_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.neigh_table, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 31
  br i1 %7, label %56, label %8

8:                                                ; preds = %51, %2
  %9 = phi i32 [ %52, %51 ], [ %6, %2 ]
  %10 = phi i32 [ %53, %51 ], [ 0, %2 ]
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %46, %8
  %16 = phi ptr [ %47, %46 ], [ %13, %8 ]
  %17 = phi ptr [ %44, %46 ], [ %12, %8 ]
  %18 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %18) #22
  %19 = tail call i32 %1(ptr noundef nonnull %16) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !66
  store volatile ptr %22, ptr %17, align 4
  %23 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 14
  store i8 1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 23
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 23, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %25, ptr %29, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %28, align 4
  %31 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.neigh_table, ptr %32, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #22, !srcloc !10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #22, !srcloc !11
  br label %35

35:                                               ; preds = %27, %21
  %36 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 24
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 24, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %37, ptr %41, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %35, %15
  %44 = phi ptr [ %16, %15 ], [ %17, %35 ], [ %17, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %18, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br i1 %20, label %46, label %45

45:                                               ; preds = %43
  tail call fastcc void @neigh_cleanup_and_release(ptr noundef nonnull %16)
  br label %46

46:                                               ; preds = %45, %43
  %47 = load ptr, ptr %44, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15

49:                                               ; preds = %46
  %50 = load i32, ptr %5, align 4
  br label %51

51:                                               ; preds = %49, %8
  %52 = phi i32 [ %50, %49 ], [ %9, %8 ]
  %53 = add nuw nsw i32 %10, 1
  %54 = shl nuw i32 1, %52
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %8, label %56

56:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_cleanup_and_release(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_cleanup_and_release, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #22
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !67
  %16 = tail call i32 @__traceiter_neigh_cleanup_and_release(ptr noundef null, ptr noundef %0, i32 noundef 0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !68
  br label %17

17:                                               ; preds = %15, %4, %1
  tail call fastcc void @__neigh_notify(ptr noundef %0, i32 noundef 29, i32 noundef 0, i32 noundef 0)
  %18 = tail call i32 @call_netevent_notifiers(i32 noundef 1, ptr noundef %0) #22
  %19 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #22, !srcloc !10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #22, !srcloc !19
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %27, label %25, !prof !20

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #22
  br label %27

26:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %27

27:                                               ; preds = %26, %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_xmit(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp slt i32 %0, 3
  br i1 %5, label %6, label %87, !prof !20

6:                                                ; preds = %4
  %7 = getelementptr [3 x ptr], ptr @neigh_tables, i32 0, i32 %0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %108, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #22
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = add i32 %13, 512
  store volatile i32 %14, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %15 = icmp eq i32 %0, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 24
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 %17, i32 0
  %23 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %24 = getelementptr inbounds %struct.neigh_hash_table, ptr %23, i32 0, i32 2
  %25 = ptrtoint ptr %1 to i32
  %26 = xor i32 %22, %25
  %27 = load i32, ptr %24, align 4
  %28 = mul i32 %26, %27
  %29 = getelementptr inbounds %struct.neigh_hash_table, ptr %23, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 32, %30
  %32 = lshr i32 %28, %31
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr ptr, ptr %33, i32 %32
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %46, %16
  %38 = phi ptr [ %47, %46 ], [ %35, %16 ]
  %39 = getelementptr inbounds %struct.neighbour, ptr %38, i32 0, i32 26
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.neighbour, ptr %38, i32 0, i32 28
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, %22
  br i1 %45, label %78, label %46

46:                                               ; preds = %42, %37
  %47 = load volatile ptr, ptr %38, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %76, label %37

49:                                               ; preds = %10
  %50 = getelementptr inbounds %struct.neigh_table, ptr %8, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.neigh_table, ptr %8, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.neigh_table, ptr %8, i32 0, i32 31
  %55 = load volatile ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.neigh_hash_table, ptr %55, i32 0, i32 2
  %57 = tail call i32 %53(ptr noundef %2, ptr noundef %1, ptr noundef %56) #22
  %58 = getelementptr inbounds %struct.neigh_hash_table, ptr %55, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 32, %59
  %61 = lshr i32 %57, %60
  %62 = load ptr, ptr %55, align 4
  %63 = getelementptr ptr, ptr %62, i32 %61
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %73, %49
  %67 = phi ptr [ %74, %73 ], [ %64, %49 ]
  %68 = getelementptr inbounds %struct.neighbour, ptr %67, i32 0, i32 26
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %1
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call zeroext i1 %51(ptr noundef nonnull %67, ptr noundef %2) #22
  br i1 %72, label %78, label %73

73:                                               ; preds = %71, %66
  %74 = load volatile ptr, ptr %67, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %66

76:                                               ; preds = %73, %49, %46, %16
  %77 = tail call fastcc ptr @___neigh_create(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #22
  br label %78

78:                                               ; preds = %76, %71, %42
  %79 = phi ptr [ %77, %76 ], [ %38, %42 ], [ %67, %71 ]
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.neighbour, ptr %79, i32 0, i32 21
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %79, ptr noundef %3) #22
  tail call fastcc void @local_bh_enable() #22
  br label %108

85:                                               ; preds = %78
  %86 = ptrtoint ptr %79 to i32
  tail call fastcc void @local_bh_enable() #22
  br label %106

87:                                               ; preds = %4
  %88 = icmp eq i32 %0, 3
  br i1 %88, label %89, label %108

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 16
  %91 = load i16, ptr %90, align 8
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %93 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %96 = load ptr, ptr %95, align 16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %89
  %99 = load ptr, ptr %96, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = tail call i32 %99(ptr noundef %3, ptr noundef %1, i16 noundef zeroext %92, ptr noundef %2, ptr noundef null, i32 noundef %94) #22
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101, %98, %89
  %105 = tail call i32 @dev_queue_xmit(ptr noundef %3) #22
  br label %108

106:                                              ; preds = %101, %85
  %107 = phi i32 [ %86, %85 ], [ %102, %101 ]
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #22
  br label %108

108:                                              ; preds = %106, %104, %87, %81, %6
  %109 = phi i32 [ %107, %106 ], [ %105, %104 ], [ -97, %87 ], [ -97, %6 ], [ %84, %81 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @neigh_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.neigh_seq_state, ptr %8, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.neigh_seq_state, ptr %8, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = and i32 %3, -3
  %12 = getelementptr inbounds %struct.neigh_seq_state, ptr %8, i32 0, i32 5
  store i32 %11, ptr %12, align 4
  %13 = tail call ptr @llvm.thread.pointer() #22
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = add i32 %15, 512
  store volatile i32 %16, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %17 = getelementptr inbounds %struct.neigh_table, ptr %2, i32 0, i32 31
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.neigh_seq_state, ptr %8, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.neigh_table, ptr %2, i32 0, i32 28
  tail call void @_raw_read_lock(ptr noundef %20) #22
  %21 = load i64, ptr %1, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %173, label %23

23:                                               ; preds = %4
  %24 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store i64 %21, ptr %6, align 8
  %25 = getelementptr inbounds %struct.neigh_seq_state, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.neigh_seq_state, ptr %24, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.neigh_hash_table, ptr %26, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 31
  br i1 %32, label %68, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.neigh_seq_state, ptr %24, i32 0, i32 3
  br label %35

35:                                               ; preds = %63, %33
  %36 = phi i32 [ %31, %33 ], [ %64, %63 ]
  %37 = phi i32 [ 0, %33 ], [ %65, %63 ]
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %58, %35
  %43 = phi ptr [ %59, %58 ], [ %40, %35 ]
  %44 = load ptr, ptr %34, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8
  %47 = call ptr %44(ptr noundef %24, ptr noundef nonnull %43, ptr noundef nonnull %5) #22
  %48 = icmp eq ptr %47, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br i1 %48, label %58, label %49

49:                                               ; preds = %46, %42
  %50 = load i32, ptr %27, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.neighbour, ptr %43, i32 0, i32 12
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, -65
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53, %46
  %59 = load volatile ptr, ptr %43, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %42

61:                                               ; preds = %58
  %62 = load i32, ptr %30, align 4
  br label %63

63:                                               ; preds = %61, %35
  %64 = phi i32 [ %62, %61 ], [ %36, %35 ]
  %65 = add nuw nsw i32 %37, 1
  %66 = shl nuw i32 1, %64
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %35, label %68

68:                                               ; preds = %63, %23
  %69 = phi i32 [ 0, %23 ], [ %65, %63 ]
  %70 = getelementptr inbounds %struct.neigh_seq_state, ptr %24, i32 0, i32 4
  store i32 %69, ptr %70, align 4
  br label %135

71:                                               ; preds = %53, %49
  %72 = getelementptr inbounds %struct.neigh_seq_state, ptr %24, i32 0, i32 4
  store i32 %37, ptr %72, align 4
  %73 = load i64, ptr %6, align 8
  %74 = add i64 %73, -1
  store i64 %74, ptr %6, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %171, label %83

76:                                               ; preds = %106, %91
  %77 = phi ptr [ %84, %91 ], [ %103, %106 ]
  %78 = load i64, ptr %6, align 8
  br label %79

79:                                               ; preds = %130, %76
  %80 = phi i64 [ %78, %76 ], [ %132, %130 ]
  %81 = phi ptr [ %77, %76 ], [ %103, %130 ]
  %82 = icmp eq i64 %80, 0
  br i1 %82, label %133, label %83

83:                                               ; preds = %79, %71
  %84 = phi ptr [ %81, %79 ], [ %43, %71 ]
  %85 = load ptr, ptr %7, align 8
  %86 = getelementptr inbounds %struct.neigh_seq_state, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.neigh_seq_state, ptr %85, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = call ptr %89(ptr noundef %85, ptr noundef nonnull %84, ptr noundef nonnull %6) #22
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %76

94:                                               ; preds = %91, %83
  %95 = getelementptr inbounds %struct.neigh_seq_state, ptr %85, i32 0, i32 5
  %96 = getelementptr inbounds %struct.neigh_seq_state, ptr %85, i32 0, i32 4
  %97 = getelementptr inbounds %struct.neigh_hash_table, ptr %87, i32 0, i32 1
  br label %98

98:                                               ; preds = %127, %94
  %99 = phi ptr [ %84, %94 ], [ %129, %127 ]
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %121, label %102

102:                                              ; preds = %118, %98
  %103 = phi ptr [ %119, %118 ], [ %100, %98 ]
  %104 = load ptr, ptr %88, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = call ptr %104(ptr noundef %85, ptr noundef nonnull %103, ptr noundef nonnull %6) #22
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %76

109:                                              ; preds = %102
  %110 = load i32, ptr %95, align 4
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.neighbour, ptr %103, i32 0, i32 12
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, -65
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %113, %106
  %119 = load volatile ptr, ptr %103, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %102

121:                                              ; preds = %118, %98
  %122 = load i32, ptr %96, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %96, align 4
  %124 = load i32, ptr %97, align 4
  %125 = lshr i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load ptr, ptr %87, align 4
  %129 = getelementptr ptr, ptr %128, i32 %123
  br label %98

130:                                              ; preds = %113, %109
  %131 = load i64, ptr %6, align 8
  %132 = add i64 %131, -1
  store i64 %132, ptr %6, align 8
  br label %79

133:                                              ; preds = %79
  %134 = icmp eq ptr %81, null
  br i1 %134, label %135, label %171

135:                                              ; preds = %133, %121, %68
  %136 = load i32, ptr %27, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %135
  %140 = call fastcc ptr @pneigh_get_first(ptr noundef %0) #22
  %141 = icmp eq ptr %140, null
  br i1 %141, label %171, label %142

142:                                              ; preds = %139
  %143 = load i64, ptr %6, align 8
  %144 = add i64 %143, -1
  store i64 %144, ptr %6, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %171, label %146

146:                                              ; preds = %167, %142
  %147 = phi i64 [ %169, %167 ], [ %144, %142 ]
  %148 = phi ptr [ %168, %167 ], [ %140, %142 ]
  %149 = load ptr, ptr %7, align 8
  %150 = getelementptr inbounds %struct.neigh_seq_state, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = load ptr, ptr %148, align 4
  %153 = getelementptr inbounds %struct.neigh_seq_state, ptr %149, i32 0, i32 4
  %154 = getelementptr inbounds %struct.neigh_table, ptr %151, i32 0, i32 32
  br label %155

155:                                              ; preds = %162, %146
  %156 = phi ptr [ %152, %146 ], [ null, %162 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i32, ptr %153, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %153, align 4
  %161 = icmp ugt i32 %160, 15
  br i1 %161, label %171, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %154, align 4
  %164 = getelementptr ptr, ptr %163, i32 %160
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %155, label %167

167:                                              ; preds = %162, %155
  %168 = phi ptr [ %156, %155 ], [ %165, %162 ]
  %169 = add i64 %147, -1
  store i64 %169, ptr %6, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %146

171:                                              ; preds = %167, %158, %142, %139, %135, %133, %71
  %172 = phi ptr [ %81, %133 ], [ null, %135 ], [ %140, %142 ], [ null, %139 ], [ %43, %71 ], [ null, %158 ], [ %168, %167 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %173

173:                                              ; preds = %171, %4
  %174 = phi ptr [ %172, %171 ], [ inttoptr (i32 1 to ptr), %4 ]
  ret ptr %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @neigh_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %8, label %56

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -3
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.neigh_hash_table, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 31
  br i1 %16, label %52, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 3
  br label %19

19:                                               ; preds = %47, %17
  %20 = phi i32 [ %15, %17 ], [ %48, %47 ]
  %21 = phi i32 [ 0, %17 ], [ %49, %47 ]
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %42, %19
  %27 = phi ptr [ %43, %42 ], [ %24, %19 ]
  %28 = load ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8
  %31 = call ptr %28(ptr noundef %7, ptr noundef nonnull %27, ptr noundef nonnull %4) #22
  %32 = icmp eq ptr %31, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br i1 %32, label %42, label %33

33:                                               ; preds = %30, %26
  %34 = load i32, ptr %11, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.neighbour, ptr %27, i32 0, i32 12
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, -65
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37, %30
  %43 = load volatile ptr, ptr %27, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %26

45:                                               ; preds = %42
  %46 = load i32, ptr %14, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = phi i32 [ %46, %45 ], [ %20, %19 ]
  %49 = add nuw nsw i32 %21, 1
  %50 = shl nuw i32 1, %48
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %19, label %52

52:                                               ; preds = %47, %37, %33, %8
  %53 = phi i32 [ 0, %8 ], [ %21, %37 ], [ %21, %33 ], [ %49, %47 ]
  %54 = phi ptr [ null, %8 ], [ %27, %37 ], [ %27, %33 ], [ null, %47 ]
  %55 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 4
  store i32 %53, ptr %55, align 4
  br label %135

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %113

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = tail call ptr %65(ptr noundef %7, ptr noundef %1, ptr noundef null) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %105

70:                                               ; preds = %67, %61
  %71 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 4
  %72 = getelementptr inbounds %struct.neigh_hash_table, ptr %63, i32 0, i32 1
  br label %73

73:                                               ; preds = %102, %70
  %74 = phi ptr [ %1, %70 ], [ %104, %102 ]
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %93, %73
  %78 = phi ptr [ %94, %93 ], [ %75, %73 ]
  %79 = load ptr, ptr %64, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call ptr %79(ptr noundef %7, ptr noundef nonnull %78, ptr noundef null) #22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %135

84:                                               ; preds = %77
  %85 = load i32, ptr %57, align 4
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %135, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.neighbour, ptr %78, i32 0, i32 12
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, -65
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %135

93:                                               ; preds = %88, %81
  %94 = load volatile ptr, ptr %78, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %77

96:                                               ; preds = %93, %73
  %97 = load i32, ptr %71, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %71, align 4
  %99 = load i32, ptr %72, align 4
  %100 = lshr i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load ptr, ptr %63, align 4
  %104 = getelementptr ptr, ptr %103, i32 %98
  br label %73

105:                                              ; preds = %67
  %106 = icmp eq ptr %1, null
  br i1 %106, label %107, label %135

107:                                              ; preds = %105, %96
  %108 = load i32, ptr %57, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @pneigh_get_first(ptr noundef %0)
  br label %135

113:                                              ; preds = %56
  %114 = and i32 %58, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116, !prof !20

116:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/neighbour.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3348, 0\0A.popsection", ""() #22, !srcloc !69
  unreachable

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %1, align 4
  %121 = getelementptr inbounds %struct.neigh_seq_state, ptr %7, i32 0, i32 4
  %122 = getelementptr inbounds %struct.neigh_table, ptr %119, i32 0, i32 32
  br label %123

123:                                              ; preds = %130, %117
  %124 = phi ptr [ %120, %117 ], [ null, %130 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32, ptr %121, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %121, align 4
  %129 = icmp ugt i32 %128, 15
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %122, align 4
  %132 = getelementptr ptr, ptr %131, i32 %128
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %123, label %135

135:                                              ; preds = %130, %126, %123, %111, %107, %105, %88, %84, %81, %52
  %136 = phi ptr [ %54, %52 ], [ %1, %105 ], [ null, %107 ], [ %112, %111 ], [ %78, %81 ], [ %78, %88 ], [ %78, %84 ], [ %133, %130 ], [ %124, %123 ], [ null, %126 ]
  %137 = load i64, ptr %2, align 8
  %138 = add i64 %137, 1
  store i64 %138, ptr %2, align 8
  ret ptr %136
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pneigh_get_first(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.neigh_seq_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.neigh_seq_state, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 2
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.neigh_table, ptr %5, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %1
  %14 = getelementptr ptr, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = getelementptr ptr, ptr %10, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = getelementptr ptr, ptr %10, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = getelementptr ptr, ptr %10, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = getelementptr ptr, ptr %10, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = getelementptr ptr, ptr %10, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = getelementptr ptr, ptr %10, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = getelementptr ptr, ptr %10, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = getelementptr ptr, ptr %10, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = getelementptr ptr, ptr %10, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = getelementptr ptr, ptr %10, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = getelementptr ptr, ptr %10, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = getelementptr ptr, ptr %10, i32 13
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr ptr, ptr %10, i32 14
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr ptr, ptr %10, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = select i1 %72, i32 16, i32 15
  br label %74

74:                                               ; preds = %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %1
  %75 = phi i32 [ 0, %1 ], [ 1, %13 ], [ 2, %17 ], [ 3, %21 ], [ 4, %25 ], [ 5, %29 ], [ 6, %33 ], [ 7, %37 ], [ 8, %41 ], [ 9, %45 ], [ 10, %49 ], [ 11, %53 ], [ 12, %57 ], [ 13, %61 ], [ 14, %65 ], [ %73, %69 ]
  %76 = phi ptr [ %11, %1 ], [ %15, %13 ], [ %19, %17 ], [ %23, %21 ], [ %27, %25 ], [ %31, %29 ], [ %35, %33 ], [ %39, %37 ], [ %43, %41 ], [ %47, %45 ], [ %51, %49 ], [ %55, %53 ], [ %59, %57 ], [ %63, %61 ], [ %67, %65 ], [ %71, %69 ]
  %77 = getelementptr inbounds %struct.neigh_seq_state, ptr %3, i32 0, i32 4
  store i32 %75, ptr %77, align 4
  ret ptr %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.neigh_seq_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.neigh_table, ptr %6, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !63
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #22, !srcloc !10
  %8 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %7) #22, !srcloc !64
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  br label %12

12:                                               ; preds = %11, %2
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !65
  tail call fastcc void @local_bh_enable() #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_app_ns(ptr noundef %0) #0 {
  tail call fastcc void @__neigh_notify(ptr noundef %0, i32 noundef 30, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__neigh_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @__alloc_skb(i32 noundef 144, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @neigh_fill_info(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef %2)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = icmp eq i32 %8, -90
  br i1 %11, label %12, label %13, !prof !31

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3466, i32 noundef 9, ptr noundef null) #22
  br label %13

13:                                               ; preds = %12, %10
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #22
  br label %15

14:                                               ; preds = %7
  tail call void @rtnl_notify(ptr noundef nonnull %5, ptr noundef nonnull @init_net, i32 noundef 0, i32 noundef 3, ptr noundef null, i32 noundef 2592) #22
  br label %17

15:                                               ; preds = %13, %4
  %16 = phi i32 [ -105, %4 ], [ %8, %13 ]
  tail call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 3, i32 noundef %16) #22
  br label %17

17:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  tail call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_proc_update(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 11
  %10 = ptrtoint ptr %8 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = ashr exact i32 %12, 2
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 12
  tail call void @_set_bit(i32 noundef %13, ptr noundef %16) #22
  %17 = icmp eq i32 %12, 24
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @call_netevent_notifiers(i32 noundef 3, ptr noundef %6) #22
  br label %20

20:                                               ; preds = %18, %15
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.neigh_parms, ptr %6, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !53
  %26 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %27 = icmp eq ptr %26, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %27, label %63, label %28

28:                                               ; preds = %22
  %29 = lshr i32 %13, 5
  %30 = and i32 %13, 31
  %31 = shl nuw i32 1, %30
  %32 = getelementptr %struct.neigh_parms, ptr %6, i32 0, i32 11, i32 %13
  br label %33

33:                                               ; preds = %60, %28
  %34 = phi ptr [ %26, %28 ], [ %61, %60 ]
  switch i32 %25, label %60 [
    i32 2, label %35
    i32 10, label %41
  ]

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %34, i32 424
  %37 = load volatile ptr, ptr %36, align 16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.in_device, ptr %37, i32 0, i32 20
  br label %47

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %34, i32 428
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.inet6_dev, ptr %43, i32 0, i32 31
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %46, %45 ], [ %40, %39 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.neigh_parms, ptr %49, i32 0, i32 12
  %53 = getelementptr i32, ptr %52, i32 %29
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, %31
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, ptr %32, align 4
  %59 = getelementptr %struct.neigh_parms, ptr %49, i32 0, i32 11, i32 %13
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %51, %47, %41, %35, %33
  %61 = load volatile ptr, ptr %34, align 8
  %62 = icmp eq ptr %61, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %62, label %63, label %33

63:                                               ; preds = %60, %22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !54
  br label %64

64:                                               ; preds = %63, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_proc_dointvec_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @proc_dointvec_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  tail call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_proc_dointvec_ms_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @proc_dointvec_ms_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  tail call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @neigh_sysctl_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [44 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !70
  %5 = tail call ptr @kmemdup(ptr noundef nonnull @neigh_sysctl_template, i32 noundef 760, i32 noundef 3264) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i32
  %9 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  store ptr %11, ptr %9, align 4
  %12 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 0, i32 7
  store ptr %0, ptr %12, align 4
  %13 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 0, i32 8
  store ptr %1, ptr %13, align 4
  %14 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %8
  store ptr %16, ptr %14, align 4
  %17 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 1, i32 7
  store ptr %0, ptr %17, align 4
  %18 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 1, i32 8
  store ptr %1, ptr %18, align 4
  %19 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %8
  store ptr %21, ptr %19, align 4
  %22 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 2, i32 7
  store ptr %0, ptr %22, align 4
  %23 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 2, i32 8
  store ptr %1, ptr %23, align 4
  %24 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 3, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %8
  store ptr %26, ptr %24, align 4
  %27 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 3, i32 7
  store ptr %0, ptr %27, align 4
  %28 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 3, i32 8
  store ptr %1, ptr %28, align 4
  %29 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 4, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %8
  store ptr %31, ptr %29, align 4
  %32 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 4, i32 7
  store ptr %0, ptr %32, align 4
  %33 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 4, i32 8
  store ptr %1, ptr %33, align 4
  %34 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 5, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %8
  store ptr %36, ptr %34, align 4
  %37 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 5, i32 7
  store ptr %0, ptr %37, align 4
  %38 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 5, i32 8
  store ptr %1, ptr %38, align 4
  %39 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 6, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %8
  store ptr %41, ptr %39, align 4
  %42 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 6, i32 7
  store ptr %0, ptr %42, align 4
  %43 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 6, i32 8
  store ptr %1, ptr %43, align 4
  %44 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 7, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %8
  store ptr %46, ptr %44, align 4
  %47 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 7, i32 7
  store ptr %0, ptr %47, align 4
  %48 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 7, i32 8
  store ptr %1, ptr %48, align 4
  %49 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 8, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %8
  store ptr %51, ptr %49, align 4
  %52 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 8, i32 7
  store ptr %0, ptr %52, align 4
  %53 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 8, i32 8
  store ptr %1, ptr %53, align 4
  %54 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 9, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %8
  store ptr %56, ptr %54, align 4
  %57 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 9, i32 7
  store ptr %0, ptr %57, align 4
  %58 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 9, i32 8
  store ptr %1, ptr %58, align 4
  %59 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 10, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %8
  store ptr %61, ptr %59, align 4
  %62 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 10, i32 7
  store ptr %0, ptr %62, align 4
  %63 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 10, i32 8
  store ptr %1, ptr %63, align 4
  %64 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 11, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %8
  store ptr %66, ptr %64, align 4
  %67 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 11, i32 7
  store ptr %0, ptr %67, align 4
  %68 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 11, i32 8
  store ptr %1, ptr %68, align 4
  %69 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 12, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %8
  store ptr %71, ptr %69, align 4
  %72 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 12, i32 7
  store ptr %0, ptr %72, align 4
  %73 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 12, i32 8
  store ptr %1, ptr %73, align 4
  %74 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 13, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %8
  store ptr %76, ptr %74, align 4
  %77 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 13, i32 7
  store ptr %0, ptr %77, align 4
  %78 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 13, i32 8
  store ptr %1, ptr %78, align 4
  %79 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 14, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %8
  store ptr %81, ptr %79, align 4
  %82 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 14, i32 7
  store ptr %0, ptr %82, align 4
  %83 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 14, i32 8
  store ptr %1, ptr %83, align 4
  %84 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 15, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 %8
  store ptr %86, ptr %84, align 4
  %87 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 15, i32 7
  store ptr %0, ptr %87, align 4
  %88 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 15, i32 8
  store ptr %1, ptr %88, align 4
  %89 = icmp eq ptr %0, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %7
  %91 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %91, i8 0, i32 36, i1 false)
  br label %103

92:                                               ; preds = %7
  %93 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.neigh_table, ptr %94, i32 0, i32 15
  %96 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 16, i32 1
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.neigh_table, ptr %94, i32 0, i32 16
  %98 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 17, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.neigh_table, ptr %94, i32 0, i32 17
  %100 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 18, i32 1
  store ptr %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.neigh_table, ptr %94, i32 0, i32 18
  %102 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 19, i32 1
  store ptr %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %92, %90
  %104 = phi ptr [ %0, %90 ], [ @.str.8, %92 ]
  %105 = icmp eq ptr %2, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 4, i32 5
  store ptr %2, ptr %107, align 4
  %108 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 14, i32 5
  store ptr %2, ptr %108, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi ptr [ %2, %106 ], [ @neigh_proc_base_reachable_time, %103 ]
  %111 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 5, i32 5
  store ptr %110, ptr %111, align 4
  %112 = getelementptr %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1, i32 15, i32 5
  store ptr %110, ptr %112, align 4
  %113 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  switch i32 %115, label %117 [
    i32 2, label %118
    i32 10, label %116
  ]

116:                                              ; preds = %109
  br label %118

117:                                              ; preds = %109
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/neighbour.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3787, 0\0A.popsection", ""() #22, !srcloc !71
  unreachable

118:                                              ; preds = %116, %109
  %119 = phi ptr [ @.str.10, %116 ], [ @.str.9, %109 ]
  %120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 44, ptr noundef nonnull @.str.11, ptr noundef nonnull %119, ptr noundef nonnull %104)
  %121 = getelementptr inbounds %struct.neigh_sysctl_table, ptr %5, i32 0, i32 1
  %122 = call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef %121) #22
  store ptr %122, ptr %5, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 6
  store ptr %5, ptr %125, align 4
  br label %127

126:                                              ; preds = %118
  call void @kfree(ptr noundef nonnull %5) #22
  br label %127

127:                                              ; preds = %126, %124, %3
  %128 = phi i32 [ 0, %124 ], [ -105, %3 ], [ -105, %126 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #22
  ret i32 %128
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_proc_base_reachable_time(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(20) @.str.26)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call i32 @proc_dointvec_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  br label %18

13:                                               ; preds = %5
  %14 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(23) @.str.36)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = tail call i32 @proc_dointvec_ms_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %12, %11 ], [ %17, %16 ]
  tail call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1) #22
  %20 = icmp ne i32 %1, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = getelementptr %struct.neigh_parms, ptr %7, i32 0, i32 11, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @prandom_u32() #22
  %29 = urem i32 %28, %25
  %30 = lshr i32 %25, 1
  %31 = add i32 %29, %30
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ %31, %27 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.neigh_parms, ptr %7, i32 0, i32 10
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %18, %13
  %36 = phi i32 [ 0, %32 ], [ %19, %18 ], [ -1, %13 ]
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @neigh_sysctl_unregister(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.neigh_parms, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = load ptr, ptr %3, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %6) #22
  tail call void @kfree(ptr noundef nonnull %3) #22
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @neigh_init() #13 section ".init.text" {
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 28, ptr noundef nonnull @neigh_add, ptr noundef null, i32 noundef 0) #22
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 29, ptr noundef nonnull @neigh_delete, ptr noundef null, i32 noundef 0) #22
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 30, ptr noundef nonnull @neigh_get, ptr noundef nonnull @neigh_dump_info, i32 noundef 0) #22
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 66, ptr noundef null, ptr noundef nonnull @neightbl_dump_info, i32 noundef 0) #22
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 67, ptr noundef nonnull @neightbl_set, ptr noundef null, i32 noundef 0) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_blackhole(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #22
  ret i32 -100
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #6 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #22, !srcloc !10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #22, !srcloc !30
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !31

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !20

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #22
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !20

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #22
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @neigh_timer_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -28
  tail call void @_raw_write_lock(ptr noundef %3) #22
  %4 = getelementptr i8, ptr %0, i32 28
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = and i32 %6, 27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %172, label %10

10:                                               ; preds = %1
  %11 = and i32 %6, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %0, i32 -36
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -40
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.neigh_parms, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = sub i32 %20, %7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %84, label %23

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.neigh_parms, ptr %17, i32 0, i32 11, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %7
  %29 = add i32 %28, %27
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  store i8 8, ptr %4, align 4
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = getelementptr i8, ptr %0, i32 -32
  store i32 %32, ptr %33, align 8
  %34 = getelementptr i8, ptr %0, i32 192
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.neigh_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %0, i32 188
  store ptr %37, ptr %38, align 4
  br label %116

39:                                               ; preds = %23
  store i8 4, ptr %4, align 4
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr i8, ptr %0, i32 -32
  store i32 %40, ptr %41, align 8
  %42 = getelementptr i8, ptr %0, i32 192
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.neigh_ops, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 188
  store ptr %45, ptr %46, align 4
  br label %147

47:                                               ; preds = %10
  %48 = and i32 %6, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %0, i32 -36
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %0, i32 -40
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr %struct.neigh_parms, ptr %54, i32 0, i32 11, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %52, %7
  %58 = add i32 %57, %56
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  store i8 2, ptr %4, align 4
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = getelementptr i8, ptr %0, i32 -32
  store i32 %61, ptr %62, align 8
  %63 = getelementptr i8, ptr %0, i32 192
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.neigh_ops, ptr %64, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %0, i32 188
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.neigh_parms, ptr %54, i32 0, i32 10
  br label %116

69:                                               ; preds = %50
  store i8 16, ptr %4, align 4
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = getelementptr i8, ptr %0, i32 -32
  store i32 %70, ptr %71, align 8
  %72 = getelementptr i8, ptr %0, i32 24
  store volatile i32 0, ptr %72, align 4
  %73 = getelementptr %struct.neigh_parms, ptr %54, i32 0, i32 11, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 1)
  %76 = add i32 %75, %7
  br label %89

77:                                               ; preds = %47
  %78 = getelementptr i8, ptr %0, i32 -40
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr %struct.neigh_parms, ptr %79, i32 0, i32 11, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 1)
  %83 = add i32 %82, %7
  br label %84

84:                                               ; preds = %77, %13
  %85 = phi ptr [ %79, %77 ], [ %17, %13 ]
  %86 = phi i32 [ %83, %77 ], [ %20, %13 ]
  %87 = and i8 %5, 17
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %84, %69
  %90 = phi i32 [ %76, %69 ], [ %86, %84 ]
  %91 = phi i32 [ 1, %69 ], [ 0, %84 ]
  %92 = phi i8 [ 16, %69 ], [ %5, %84 ]
  %93 = phi ptr [ %54, %69 ], [ %85, %84 ]
  %94 = getelementptr i8, ptr %0, i32 24
  %95 = load volatile i32, ptr %94, align 4
  %96 = getelementptr %struct.neigh_parms, ptr %93, i32 0, i32 11, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr %struct.neigh_parms, ptr %93, i32 0, i32 11, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = and i8 %92, 16
  %101 = icmp eq i8 %100, 0
  %102 = getelementptr %struct.neigh_parms, ptr %93, i32 0, i32 11, i32 3
  %103 = getelementptr inbounds %struct.neigh_parms, ptr %93, i32 0, i32 11
  %104 = select i1 %101, ptr %103, ptr %102
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %99, %97
  %107 = add i32 %106, %105
  %108 = icmp slt i32 %95, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %89
  store i8 32, ptr %4, align 4
  tail call fastcc void @neigh_invalidate(ptr noundef %2)
  br label %172

110:                                              ; preds = %89, %84
  %111 = phi i32 [ %90, %89 ], [ %86, %84 ]
  %112 = phi i32 [ %91, %89 ], [ 0, %84 ]
  %113 = phi i8 [ %92, %89 ], [ %5, %84 ]
  %114 = and i8 %113, 27
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %147, label %122

116:                                              ; preds = %60, %31
  %117 = phi ptr [ %26, %31 ], [ %68, %60 ]
  %118 = phi i32 [ %7, %31 ], [ %52, %60 ]
  %119 = phi i32 [ 0, %31 ], [ 1, %60 ]
  %120 = load i32, ptr %117, align 4
  %121 = add i32 %120, %118
  br label %122

122:                                              ; preds = %116, %110
  %123 = phi i32 [ %112, %110 ], [ %119, %116 ]
  %124 = phi i32 [ %111, %110 ], [ %121, %116 ]
  %125 = load volatile i32, ptr @jiffies, align 64
  %126 = xor i32 %125, -1
  %127 = add i32 %124, %126
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load volatile i32, ptr @jiffies, align 64
  %131 = add i32 %130, 1
  br label %132

132:                                              ; preds = %129, %122
  %133 = phi i32 [ %131, %129 ], [ %124, %122 ]
  %134 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %133) #22
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = getelementptr i8, ptr %0, i32 -24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #22, !srcloc !10
  %138 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #22, !srcloc !30
  %139 = extractvalue { i32, i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141, !prof !31

141:                                              ; preds = %136
  %142 = add i32 %139, 1
  %143 = or i32 %142, %139
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %147, label %145, !prof !20

145:                                              ; preds = %141, %136
  %146 = phi i32 [ 2, %136 ], [ 1, %141 ]
  tail call void @refcount_warn_saturate(ptr noundef %137, i32 noundef %146) #22
  br label %147

147:                                              ; preds = %145, %141, %132, %110, %39
  %148 = phi i32 [ %123, %145 ], [ %123, %141 ], [ %123, %132 ], [ %112, %110 ], [ 1, %39 ]
  %149 = load i8, ptr %4, align 4
  %150 = and i8 %149, 17
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %172, label %152

152:                                              ; preds = %147
  %153 = getelementptr i8, ptr %0, i32 -16
  %154 = getelementptr i8, ptr %0, i32 -12
  %155 = load volatile ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, %153
  %157 = icmp eq ptr %155, null
  %158 = or i1 %156, %157
  br i1 %158, label %161, label %159

159:                                              ; preds = %152
  %160 = tail call ptr @skb_clone(ptr noundef nonnull %155, i32 noundef 2592) #22
  br label %161

161:                                              ; preds = %159, %152
  %162 = phi ptr [ %160, %159 ], [ null, %152 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %163 = getelementptr i8, ptr %0, i32 192
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.neigh_ops, ptr %164, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  tail call void %166(ptr noundef %2, ptr noundef %162) #22
  br label %169

169:                                              ; preds = %168, %161
  %170 = getelementptr i8, ptr %0, i32 24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #22, !srcloc !10
  %171 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 1, ptr elementtype(i32) %170) #22, !srcloc !32
  tail call void @consume_skb(ptr noundef %162) #22
  br label %174

172:                                              ; preds = %147, %109, %1
  %173 = phi i32 [ 1, %109 ], [ %148, %147 ], [ 0, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br label %174

174:                                              ; preds = %172, %169
  %175 = phi i32 [ %173, %172 ], [ %148, %169 ]
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = tail call i32 @call_netevent_notifiers(i32 noundef 1, ptr noundef %2) #22
  tail call fastcc void @__neigh_notify(ptr noundef %2, i32 noundef 28, i32 noundef 0, i32 noundef 0) #22
  br label %179

179:                                              ; preds = %177, %174
  %180 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_neigh_timer_handler, i32 0, i32 1), align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = tail call ptr @llvm.thread.pointer() #22
  %184 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 5
  %187 = getelementptr i32, ptr @__cpu_online_mask, i32 %186
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %185, 31
  %190 = shl nuw i32 1, %189
  %191 = and i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %182
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !72
  %194 = tail call i32 @__traceiter_neigh_timer_handler(ptr noundef null, ptr noundef %2, i32 noundef 0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !73
  br label %195

195:                                              ; preds = %193, %182, %179
  %196 = getelementptr i8, ptr %0, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %196) #22, !srcloc !10
  %197 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %196, ptr %196, i32 1, ptr elementtype(i32) %196) #22, !srcloc !19
  %198 = extractvalue { i32, i32, i32 } %197, 0
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = icmp sgt i32 %198, 0
  br i1 %201, label %204, label %202, !prof !20

202:                                              ; preds = %200
  tail call void @refcount_warn_saturate(ptr noundef %196, i32 noundef 3) #22
  br label %204

203:                                              ; preds = %195
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void @neigh_destroy(ptr noundef %2) #22
  br label %204

204:                                              ; preds = %203, %202, %200
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_invalidate(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !22
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.neigh_table, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.neigh_statistics, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #14, !srcloc !23
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #22, !srcloc !24
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 4
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 32
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %23 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 1
  %24 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 5
  %25 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  br label %26

26:                                               ; preds = %31, %21
  %27 = load ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, %22
  %29 = icmp eq ptr %27, null
  %30 = or i1 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %23, align 4
  %33 = add i32 %32, -1
  store volatile i32 %33, ptr %23, align 4
  %34 = load ptr, ptr %27, align 8
  %35 = getelementptr inbounds %struct.anon.0, ptr %27, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr null, ptr %35, align 4
  store ptr null, ptr %27, align 8
  %37 = getelementptr inbounds %struct.anon.0, ptr %34, i32 0, i32 1
  store volatile ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %24, i32 0) #22, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %38 = load ptr, ptr %25, align 8
  %39 = getelementptr inbounds %struct.neigh_ops, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %0, ptr noundef nonnull %27) #22
  tail call void @_raw_write_lock(ptr noundef %24) #22
  %41 = load i8, ptr %18, align 4
  %42 = icmp eq i8 %41, 32
  br i1 %42, label %26, label %43

43:                                               ; preds = %31, %26, %1
  %44 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  %47 = icmp eq ptr %45, null
  %48 = or i1 %46, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 8, i32 1
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi ptr [ %45, %49 ], [ %59, %51 ]
  %53 = load i32, ptr %50, align 4
  %54 = add i32 %53, -1
  store volatile i32 %54, ptr %50, align 4
  %55 = load ptr, ptr %52, align 8
  %56 = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr null, ptr %56, align 4
  store ptr null, ptr %52, align 8
  %58 = getelementptr inbounds %struct.anon.0, ptr %55, i32 0, i32 1
  store volatile ptr %57, ptr %58, align 4
  store volatile ptr %55, ptr %57, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %52, i32 noundef 0) #22
  %59 = load ptr, ptr %44, align 4
  %60 = icmp eq ptr %59, %44
  %61 = icmp eq ptr %59, null
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %51

63:                                               ; preds = %51, %43
  %64 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 7
  store i32 0, ptr %64, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netevent_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_timer_handler(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_event_send_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_event_send_dead(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_update(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_update_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_neigh_cleanup_and_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @neigh_stat_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #17 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %1, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = trunc i64 %9 to i32
  %13 = add i32 %12, -1
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %35, %11
  %17 = phi i32 [ %25, %35 ], [ %13, %11 ]
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_possible_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  %25 = add nuw i32 %17, 1
  br i1 %24, label %35, label %26

26:                                               ; preds = %16
  %27 = sext i32 %25 to i64
  store i64 %27, ptr %1, align 8
  %28 = getelementptr inbounds %struct.neigh_table, ptr %8, i32 0, i32 30
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = inttoptr i32 %33 to ptr
  br label %37

35:                                               ; preds = %16
  %36 = icmp eq i32 %25, %14
  br i1 %36, label %37, label %16

37:                                               ; preds = %35, %26, %11, %2
  %38 = phi ptr [ %34, %26 ], [ inttoptr (i32 1 to ptr), %2 ], [ null, %11 ], [ null, %35 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @neigh_stat_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #18 {
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @neigh_stat_seq_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #17 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = load i64, ptr %2, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ugt i32 %12, %11
  br i1 %13, label %14, label %35

14:                                               ; preds = %33, %3
  %15 = phi i32 [ %23, %33 ], [ %11, %3 ]
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_possible_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = add i32 %15, 1
  br i1 %22, label %33, label %24

24:                                               ; preds = %14
  %25 = sext i32 %23 to i64
  store i64 %25, ptr %2, align 8
  %26 = getelementptr inbounds %struct.neigh_table, ptr %9, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = inttoptr i32 %31 to ptr
  br label %37

33:                                               ; preds = %14
  %34 = icmp eq i32 %23, %12
  br i1 %34, label %35, label %14

35:                                               ; preds = %33, %3
  %36 = add i64 %10, 1
  store i64 %36, ptr %2, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi ptr [ %32, %24 ], [ null, %35 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_stat_seq_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #22
  br label %37

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.neigh_table, ptr %11, i32 0, i32 24
  %13 = load volatile i32, ptr %12, align 4
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.neigh_statistics, ptr %1, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #22
  br label %37

37:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @neigh_fill_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.nda_cacheinfo, align 4
  %11 = alloca [32 x i8], align 1
  %12 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !70
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %147

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = icmp slt i32 %23, 28
  br i1 %24, label %147, label %25, !prof !31

25:                                               ; preds = %16
  %26 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 12, i32 noundef %5) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %147, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 16
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 8
  %32 = getelementptr i8, ptr %26, i32 16
  %33 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 22
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %32, align 4
  %37 = getelementptr i8, ptr %26, i32 17
  store i8 0, ptr %37, align 1
  %38 = getelementptr i8, ptr %26, i32 18
  store i16 0, ptr %38, align 2
  %39 = trunc i32 %30 to i8
  %40 = getelementptr i8, ptr %26, i32 26
  store i8 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 13
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr i8, ptr %26, i32 27
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 26
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %26, i32 20
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.neigh_table, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 28
  %54 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %52, ptr noundef %53) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %136

56:                                               ; preds = %28
  %57 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %57) #22
  %58 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 12
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i16
  %61 = getelementptr i8, ptr %26, i32 24
  store i16 %60, ptr %61, align 4
  %62 = load i8, ptr %58, align 4
  %63 = and i8 %62, -34
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %93, label %65

65:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %11, i8 0, i32 32, i1 false), !annotation !70
  %66 = load ptr, ptr %44, align 4
  %67 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 17
  %68 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 19
  %69 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 51
  br label %70

70:                                               ; preds = %78, %65
  %71 = load volatile i32, ptr %67, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %74, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #22, !srcloc !59
  %75 = load volatile i32, ptr %67, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %71, %70 ], [ %75, %74 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !60
  %80 = load i8, ptr %69, align 1
  %81 = zext i8 %80 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %11, ptr align 8 %68, i32 %81, i1 false) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !61
  %82 = load volatile i32, ptr %67, align 4
  %83 = icmp eq i32 %82, %79
  br i1 %83, label %84, label %70

84:                                               ; preds = %78
  %85 = load ptr, ptr %44, align 4
  %86 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 51
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef %88, ptr noundef nonnull %11) #22
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  br label %93

92:                                               ; preds = %84
  call void @_raw_read_unlock_bh(ptr noundef %57) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  br label %136

93:                                               ; preds = %91, %56
  %94 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %12, %95
  %97 = call i32 @jiffies_to_clock_t(i32 noundef %96) #22
  %98 = getelementptr inbounds %struct.nda_cacheinfo, ptr %10, i32 0, i32 1
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %12, %100
  %102 = call i32 @jiffies_to_clock_t(i32 noundef %101) #22
  store i32 %102, ptr %10, align 4
  %103 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 4
  %104 = load i32, ptr %103, align 8
  %105 = sub i32 %12, %104
  %106 = call i32 @jiffies_to_clock_t(i32 noundef %105) #22
  %107 = getelementptr inbounds %struct.nda_cacheinfo, ptr %10, i32 0, i32 2
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 6
  %109 = load volatile i32, ptr %108, align 4
  %110 = add i32 %109, -1
  %111 = getelementptr inbounds %struct.nda_cacheinfo, ptr %10, i32 0, i32 3
  store i32 %110, ptr %111, align 4
  call void @_raw_read_unlock_bh(ptr noundef %57) #22
  %112 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 11
  %113 = load volatile i32, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %113, ptr %9, align 4
  %114 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %93
  %117 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 16, ptr noundef nonnull %10) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 15
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  store i8 %121, ptr %8, align 1
  %124 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123, %119
  %127 = icmp ult i32 %30, 256
  br i1 %127, label %131, label %128

128:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %31, ptr %7, align 4
  %129 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128, %126
  %132 = load ptr, ptr %19, align 8
  %133 = ptrtoint ptr %132 to i32
  %134 = ptrtoint ptr %26 to i32
  %135 = sub i32 %133, %134
  store i32 %135, ptr %26, align 4
  br label %147

136:                                              ; preds = %128, %123, %116, %93, %92, %28
  %137 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %138 = load ptr, ptr %137, align 4
  %139 = icmp ugt ptr %138, %26
  br i1 %139, label %140, label %142, !prof !31

140:                                              ; preds = %136
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %141 = load ptr, ptr %137, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi ptr [ %141, %140 ], [ %138, %136 ]
  %144 = ptrtoint ptr %26 to i32
  %145 = ptrtoint ptr %143 to i32
  %146 = sub i32 %144, %145
  call void @skb_trim(ptr noundef %0, i32 noundef %146) #22
  br label %147

147:                                              ; preds = %142, %131, %25, %16, %6
  %148 = phi i32 [ -90, %142 ], [ 0, %131 ], [ -90, %25 ], [ -90, %16 ], [ -90, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_proc_dointvec_zero_intmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 28, i1 false)
  %7 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 7
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %7, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 8
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 9), ptr %8, align 4
  %9 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_proc_dointvec_userhz_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @proc_dointvec_userhz_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  tail call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_proc_dointvec_unres_qlen(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 28, i1 false) #22
  %8 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 7
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %8, align 4
  %9 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 8
  store ptr @unres_qlen_max, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = udiv i32 %13, 1962
  store i32 %14, ptr %6, align 4
  %15 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %16 = icmp eq i32 %1, 0
  %17 = icmp ne i32 %15, 0
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, ptr %6, align 4
  %21 = mul i32 %20, 1962
  %22 = load ptr, ptr %11, align 4
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call fastcc void @neigh_proc_update(ptr noundef %0, i32 noundef %1)
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_userhz_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_add(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [16 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !70
  %5 = tail call i32 @rtnl_is_locked() #22
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @neigh_add.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !31

10:                                               ; preds = %3
  store i1 true, ptr @neigh_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1928, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1928) #22
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %12, 28
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %15 = icmp eq ptr %2, null
  br i1 %15, label %199, label %16

16:                                               ; preds = %14
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %199

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %1, i32 28
  %19 = add i32 %12, -28
  %20 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 15, ptr noundef %18, i32 noundef %19, ptr noundef nonnull @nda_policy, i32 noundef 0, ptr noundef %2) #22
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %199, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_add.__msg) #22
  %27 = icmp eq ptr %2, null
  br i1 %27, label %199, label %28

28:                                               ; preds = %26
  store ptr @neigh_add.__msg, ptr %2, align 4
  br label %199

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %1, i32 16
  %31 = getelementptr i8, ptr %1, i32 26
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = getelementptr i8, ptr %35, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %40, %33
  br label %42

42:                                               ; preds = %37, %29
  %43 = phi i32 [ %41, %37 ], [ %33, %29 ]
  %44 = getelementptr i8, ptr %1, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %45) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %199, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = load i16, ptr %52, align 2
  %56 = zext i16 %55 to i32
  %57 = add nsw i32 %56, -4
  %58 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 51
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_add.__msg.41) #22
  %63 = icmp eq ptr %2, null
  br i1 %63, label %199, label %64

64:                                               ; preds = %62
  store ptr @neigh_add.__msg.41, ptr %2, align 4
  br label %199

65:                                               ; preds = %54, %50, %42
  %66 = phi ptr [ %48, %54 ], [ %48, %50 ], [ null, %42 ]
  %67 = load i8, ptr %30, align 4
  switch i8 %67, label %199 [
    i8 2, label %70
    i8 10, label %68
    i8 12, label %69
  ]

68:                                               ; preds = %65
  br label %70

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %68, %65
  %71 = phi ptr [ getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 2), %69 ], [ getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 1), %68 ], [ @neigh_tables, %65 ]
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %199, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %23, align 4
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = add nsw i32 %77, -4
  %79 = getelementptr inbounds %struct.neigh_table, ptr %72, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_add.__msg.42) #22
  %83 = icmp eq ptr %2, null
  br i1 %83, label %199, label %84

84:                                               ; preds = %82
  store ptr @neigh_add.__msg.42, ptr %2, align 4
  br label %199

85:                                               ; preds = %74
  %86 = getelementptr i8, ptr %75, i32 4
  %87 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = getelementptr i8, ptr %88, i32 4
  %91 = select i1 %89, ptr null, ptr %90
  %92 = getelementptr inbounds [16 x ptr], ptr %4, i32 0, i32 12
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = getelementptr i8, ptr %93, i32 4
  %97 = load i8, ptr %96, align 1
  br label %98

98:                                               ; preds = %95, %85
  %99 = phi i8 [ %97, %95 ], [ 0, %85 ]
  %100 = and i32 %43, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %98
  %103 = and i32 %43, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_add.__msg.43) #22
  %106 = icmp eq ptr %2, null
  br i1 %106, label %199, label %107

107:                                              ; preds = %105
  store ptr @neigh_add.__msg.43, ptr %2, align 4
  br label %199

108:                                              ; preds = %102
  %109 = call ptr @pneigh_lookup(ptr noundef nonnull %72, ptr undef, ptr noundef %86, ptr noundef %66, i32 noundef 1)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %199, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.pneigh_entry, ptr %109, i32 0, i32 4
  store i32 %43, ptr %112, align 4
  %113 = icmp eq i8 %99, 0
  br i1 %113, label %199, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.pneigh_entry, ptr %109, i32 0, i32 5
  store i8 %99, ptr %115, align 4
  br label %199

116:                                              ; preds = %98
  %117 = icmp eq ptr %66, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_add.__msg.44) #22
  %119 = icmp eq ptr %2, null
  br i1 %119, label %199, label %120

120:                                              ; preds = %118
  store ptr @neigh_add.__msg.44, ptr %2, align 4
  br label %199

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.neigh_table, ptr %72, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = call zeroext i1 %123(ptr noundef nonnull %66, ptr noundef %2) #22
  br i1 %126, label %127, label %199

127:                                              ; preds = %125, %121
  %128 = call ptr @neigh_lookup(ptr noundef nonnull %72, ptr noundef %86, ptr noundef nonnull %66)
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %156

130:                                              ; preds = %127
  %131 = getelementptr i8, ptr %1, i32 24
  %132 = load i16, ptr %131, align 4
  %133 = and i16 %132, 128
  %134 = icmp ne i16 %133, 0
  %135 = and i32 %43, 16
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 true, i1 %136
  %138 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %139 = load i16, ptr %138, align 2
  %140 = and i16 %139, 1024
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %199, label %142

142:                                              ; preds = %130
  %143 = xor i1 %134, true
  %144 = and i32 %43, 256
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_add.__msg.45) #22
  %148 = icmp eq ptr %2, null
  br i1 %148, label %199, label %149

149:                                              ; preds = %147
  store ptr @neigh_add.__msg.45, ptr %2, align 4
  br label %199

150:                                              ; preds = %142
  %151 = and i32 %43, 272
  %152 = call fastcc ptr @___neigh_create(ptr noundef nonnull %72, ptr noundef %86, ptr noundef nonnull %66, i32 noundef %151, i1 noundef zeroext %137, i1 noundef zeroext true)
  %153 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = ptrtoint ptr %152 to i32
  br label %199

156:                                              ; preds = %127
  %157 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %158 = load i16, ptr %157, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 512
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  call fastcc void @neigh_release(ptr noundef nonnull %128)
  br label %199

163:                                              ; preds = %156
  %164 = and i32 %159, 256
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i32 128, i32 133
  br label %167

167:                                              ; preds = %163, %150
  %168 = phi ptr [ %128, %163 ], [ %152, %150 ]
  %169 = phi i32 [ %166, %163 ], [ 133, %150 ]
  %170 = icmp eq i8 %99, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.neighbour, ptr %168, i32 0, i32 15
  store i8 %99, ptr %172, align 1
  br label %173

173:                                              ; preds = %171, %167
  %174 = shl i32 %43, 1
  %175 = and i32 %174, 32
  %176 = lshr i32 %43, 1
  %177 = and i32 %176, 64
  %178 = lshr i32 %43, 4
  %179 = and i32 %178, 16
  %180 = shl i32 %43, 3
  %181 = and i32 %180, 8
  %182 = or i32 %177, %175
  %183 = or i32 %182, %179
  %184 = or i32 %183, %181
  %185 = or i32 %184, %169
  %186 = getelementptr i8, ptr %1, i32 24
  %187 = load i16, ptr %186, align 4
  %188 = trunc i16 %187 to i8
  %189 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %190 = load i32, ptr %189, align 4
  %191 = call fastcc i32 @__neigh_update(ptr noundef %168, ptr noundef %91, i8 noundef zeroext %188, i32 noundef %185, i32 noundef %190, ptr noundef %2)
  %192 = icmp ne i32 %191, 0
  %193 = and i32 %43, 257
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %192, i1 true, i1 %194
  br i1 %195, label %198, label %196

196:                                              ; preds = %173
  %197 = call fastcc i32 @neigh_event_send(ptr noundef %168, ptr noundef null)
  br label %198

198:                                              ; preds = %196, %173
  call fastcc void @neigh_release(ptr noundef %168)
  br label %199

199:                                              ; preds = %198, %162, %154, %149, %147, %130, %125, %120, %118, %114, %111, %108, %107, %105, %84, %82, %70, %65, %64, %62, %47, %28, %26, %17, %16, %14
  %200 = phi i32 [ -97, %70 ], [ %20, %17 ], [ %191, %198 ], [ -17, %162 ], [ -22, %28 ], [ -22, %26 ], [ -19, %47 ], [ -22, %64 ], [ -22, %62 ], [ -22, %84 ], [ -22, %82 ], [ -22, %107 ], [ -22, %105 ], [ -105, %108 ], [ 0, %114 ], [ 0, %111 ], [ -22, %120 ], [ -22, %118 ], [ -22, %125 ], [ -22, %16 ], [ -22, %14 ], [ -97, %65 ], [ -22, %147 ], [ -22, %149 ], [ -2, %130 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_delete(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rtnl_is_locked() #22
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @neigh_delete.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !31

9:                                                ; preds = %3
  store i1 true, ptr @neigh_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1858, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1858) #22
  br label %10

10:                                               ; preds = %9, %3
  %11 = load i32, ptr %1, align 4
  %12 = add i32 %11, -16
  %13 = icmp ult i32 %12, 12
  br i1 %13, label %69, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %1, i32 28
  %16 = add i32 %11, -28
  %17 = tail call ptr @nla_find(ptr noundef %15, i32 noundef %16, i32 noundef 1) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_delete.__msg) #22
  %20 = icmp eq ptr %2, null
  br i1 %20, label %69, label %21

21:                                               ; preds = %19
  store ptr @neigh_delete.__msg, ptr %2, align 4
  br label %69

22:                                               ; preds = %14
  %23 = getelementptr i8, ptr %1, i32 16
  %24 = getelementptr i8, ptr %1, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %25) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %69, label %30

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %28, %27 ], [ null, %22 ]
  %32 = load i8, ptr %23, align 4
  switch i8 %32, label %69 [
    i8 2, label %35
    i8 10, label %33
    i8 12, label %34
  ]

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %33, %30
  %36 = phi ptr [ getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 2), %34 ], [ getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 1), %33 ], [ @neigh_tables, %30 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = load i16, ptr %17, align 2
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %41, -4
  %43 = getelementptr inbounds %struct.neigh_table, ptr %37, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_delete.__msg.46) #22
  %47 = icmp eq ptr %2, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %46
  store ptr @neigh_delete.__msg.46, ptr %2, align 4
  br label %69

49:                                               ; preds = %39
  %50 = getelementptr i8, ptr %1, i32 26
  %51 = load i8, ptr %50, align 2
  %52 = and i8 %51, 8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %17, i32 4
  %56 = tail call i32 @pneigh_delete(ptr noundef nonnull %37, ptr undef, ptr noundef %55, ptr noundef %31)
  br label %69

57:                                               ; preds = %49
  %58 = icmp eq ptr %31, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %57
  %60 = getelementptr i8, ptr %17, i32 4
  %61 = tail call ptr @neigh_lookup(ptr noundef nonnull %37, ptr noundef %60, ptr noundef nonnull %31)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = tail call fastcc i32 @__neigh_update(ptr noundef nonnull %61, ptr noundef null, i8 noundef zeroext 32, i32 noundef 129, i32 noundef %65, ptr noundef %2)
  %67 = getelementptr inbounds %struct.neigh_table, ptr %37, i32 0, i32 28
  tail call void @_raw_write_lock_bh(ptr noundef %67) #22
  tail call fastcc void @neigh_release(ptr noundef nonnull %61)
  %68 = tail call zeroext i1 @neigh_remove_one(ptr noundef nonnull %61, ptr noundef nonnull %37)
  tail call void @_raw_write_unlock_bh(ptr noundef %67) #22
  br label %69

69:                                               ; preds = %63, %59, %57, %54, %48, %46, %35, %30, %27, %21, %19, %10
  %70 = phi i32 [ -97, %35 ], [ -22, %10 ], [ %56, %54 ], [ -22, %57 ], [ %66, %63 ], [ -22, %21 ], [ -22, %19 ], [ -19, %27 ], [ -22, %48 ], [ -22, %46 ], [ -2, %59 ], [ -97, %30 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_get(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [16 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #22, !annotation !70
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_get_req.__msg) #22
  %8 = icmp eq ptr %2, null
  br i1 %8, label %80, label %77

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 16
  %11 = getelementptr i8, ptr %1, i32 17
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
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

26:                                               ; preds = %22, %18, %14, %9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_get_req.__msg.51) #22
  %27 = icmp eq ptr %2, null
  br i1 %27, label %80, label %77

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %1, i32 26
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, -9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_get_req.__msg.52) #22
  %34 = icmp eq ptr %2, null
  br i1 %34, label %80, label %77

35:                                               ; preds = %28
  %36 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2) #22
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %35
  %39 = load i8, ptr %29, align 2
  %40 = getelementptr i8, ptr %1, i32 20
  %41 = load i32, ptr %40, align 4
  %42 = load i8, ptr %10, align 4
  switch i8 %42, label %51 [
    i8 2, label %45
    i8 10, label %43
    i8 12, label %44
  ]

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %43, %38
  %46 = phi ptr [ getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 2), %44 ], [ getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 1), %43 ], [ @neigh_tables, %38 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.neigh_table, ptr %47, i32 0, i32 2
  br label %53

51:                                               ; preds = %45, %38
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_get_req.__msg.53) #22
  %52 = icmp eq ptr %2, null
  br i1 %52, label %80, label %77

53:                                               ; preds = %73, %49
  %54 = phi ptr [ %74, %73 ], [ null, %49 ]
  %55 = phi i32 [ %75, %73 ], [ 0, %49 ]
  %56 = getelementptr [16 x ptr], ptr %4, i32 0, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = icmp eq i32 %55, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %59
  %62 = load i16, ptr %57, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 %63, -4
  %65 = load i32, ptr %50, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_get_req.__msg.54) #22
  %68 = icmp eq ptr %2, null
  br i1 %68, label %80, label %77

69:                                               ; preds = %61
  %70 = getelementptr i8, ptr %57, i32 4
  br label %73

71:                                               ; preds = %59
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_get_req.__msg.55) #22
  %72 = icmp eq ptr %2, null
  br i1 %72, label %80, label %77

73:                                               ; preds = %69, %53
  %74 = phi ptr [ %54, %53 ], [ %70, %69 ]
  %75 = add nuw nsw i32 %55, 1
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %82, label %53

77:                                               ; preds = %71, %67, %51, %33, %26, %7
  %78 = phi ptr [ @neigh_valid_get_req.__msg, %7 ], [ @neigh_valid_get_req.__msg.51, %26 ], [ @neigh_valid_get_req.__msg.52, %33 ], [ @neigh_valid_get_req.__msg.53, %51 ], [ @neigh_valid_get_req.__msg.54, %67 ], [ @neigh_valid_get_req.__msg.55, %71 ]
  %79 = phi i32 [ -22, %7 ], [ -22, %26 ], [ -22, %33 ], [ -97, %51 ], [ -22, %67 ], [ -22, %71 ]
  store ptr %78, ptr %2, align 4
  br label %80

80:                                               ; preds = %77, %71, %67, %51, %35, %33, %26, %7
  %81 = phi i32 [ %79, %77 ], [ -22, %71 ], [ -22, %67 ], [ -97, %51 ], [ %36, %35 ], [ -22, %33 ], [ -22, %26 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %181

82:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  %83 = icmp eq i32 %41, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %82
  %85 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %41) #22
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_get.__msg) #22
  %88 = icmp eq ptr %2, null
  br i1 %88, label %181, label %89

89:                                               ; preds = %87
  store ptr @neigh_get.__msg, ptr %2, align 4
  br label %181

90:                                               ; preds = %84, %82
  %91 = phi ptr [ %85, %84 ], [ null, %82 ]
  %92 = icmp eq ptr %74, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_get.__msg.47) #22
  %94 = icmp eq ptr %2, null
  br i1 %94, label %181, label %95

95:                                               ; preds = %93
  store ptr @neigh_get.__msg.47, ptr %2, align 4
  br label %181

96:                                               ; preds = %90
  %97 = and i8 %39, 8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %147, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %50, align 4
  %101 = getelementptr i8, ptr %74, i32 %100
  %102 = getelementptr i8, ptr %101, i32 -4
  %103 = load i32, ptr %102, align 4
  %104 = lshr i32 %103, 16
  %105 = xor i32 %104, %103
  %106 = lshr i32 %105, 8
  %107 = xor i32 %106, %105
  %108 = lshr i32 %107, 4
  %109 = xor i32 %108, %107
  %110 = and i32 %109, 15
  %111 = getelementptr inbounds %struct.neigh_table, ptr %47, i32 0, i32 28
  call void @_raw_read_lock_bh(ptr noundef %111) #22
  %112 = getelementptr inbounds %struct.neigh_table, ptr %47, i32 0, i32 32
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr ptr, ptr %113, i32 %110
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %128, %99
  %118 = phi ptr [ %129, %128 ], [ %115, %99 ]
  %119 = getelementptr inbounds %struct.pneigh_entry, ptr %118, i32 0, i32 6
  %120 = call i32 @bcmp(ptr %119, ptr nonnull %74, i32 %100) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.pneigh_entry, ptr %118, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, %91
  %126 = icmp eq ptr %124, null
  %127 = or i1 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122, %117
  %129 = load ptr, ptr %118, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %117

131:                                              ; preds = %128, %99
  call void @_raw_read_unlock_bh(ptr noundef %111) #22
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_get.__msg.48) #22
  %132 = icmp eq ptr %2, null
  br i1 %132, label %181, label %133

133:                                              ; preds = %131
  store ptr @neigh_get.__msg.48, ptr %2, align 4
  br label %181

134:                                              ; preds = %122
  call void @_raw_read_unlock_bh(ptr noundef %111) #22
  %135 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = call ptr @__alloc_skb(i32 noundef 80, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %140 = icmp eq ptr %139, null
  br i1 %140, label %181, label %141

141:                                              ; preds = %134
  %142 = call fastcc i32 @pneigh_fill_info(ptr noundef nonnull %139, ptr noundef nonnull %118, i32 noundef %136, i32 noundef %138, i32 noundef 0, ptr noundef nonnull %47) #22
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  call void @kfree_skb_reason(ptr noundef nonnull %139, i32 noundef 0) #22
  br label %181

145:                                              ; preds = %141
  %146 = call i32 @rtnl_unicast(ptr noundef nonnull %139, ptr noundef nonnull @init_net, i32 noundef %136) #22
  br label %181

147:                                              ; preds = %96
  %148 = icmp eq ptr %91, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_get.__msg.49) #22
  %150 = icmp eq ptr %2, null
  br i1 %150, label %181, label %151

151:                                              ; preds = %149
  store ptr @neigh_get.__msg.49, ptr %2, align 4
  br label %181

152:                                              ; preds = %147
  %153 = call ptr @neigh_lookup(ptr noundef nonnull %47, ptr noundef nonnull %74, ptr noundef nonnull %91)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_get.__msg.50) #22
  %156 = icmp eq ptr %2, null
  br i1 %156, label %181, label %157

157:                                              ; preds = %155
  store ptr @neigh_get.__msg.50, ptr %2, align 4
  br label %181

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = call ptr @__alloc_skb(i32 noundef 144, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %158
  %166 = call fastcc i32 @neigh_fill_info(ptr noundef nonnull %163, ptr noundef nonnull %153, i32 noundef %160, i32 noundef %162, i32 noundef 28, i32 noundef 0) #22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  call void @kfree_skb_reason(ptr noundef nonnull %163, i32 noundef 0) #22
  br label %171

169:                                              ; preds = %165
  %170 = call i32 @rtnl_unicast(ptr noundef nonnull %163, ptr noundef nonnull @init_net, i32 noundef %160) #22
  br label %171

171:                                              ; preds = %169, %168, %158
  %172 = phi i32 [ -105, %158 ], [ %166, %168 ], [ %170, %169 ]
  %173 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #22, !srcloc !10
  %174 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #22, !srcloc !19
  %175 = extractvalue { i32, i32, i32 } %174, 0
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = icmp sgt i32 %175, 0
  br i1 %178, label %181, label %179, !prof !20

179:                                              ; preds = %177
  call void @refcount_warn_saturate(ptr noundef %173, i32 noundef 3) #22
  br label %181

180:                                              ; preds = %171
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  call void @neigh_destroy(ptr noundef nonnull %153) #22
  br label %181

181:                                              ; preds = %180, %179, %177, %157, %155, %151, %149, %145, %144, %134, %133, %131, %95, %93, %89, %87, %80
  %182 = phi i32 [ -19, %89 ], [ -19, %87 ], [ -22, %95 ], [ -22, %93 ], [ -2, %133 ], [ -2, %131 ], [ -22, %151 ], [ -22, %149 ], [ -2, %157 ], [ -2, %155 ], [ %81, %80 ], [ -105, %134 ], [ %142, %144 ], [ %146, %145 ], [ %172, %177 ], [ %172, %179 ], [ %172, %180 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neigh_dump_info(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [16 x ptr], align 4
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, -28
  %13 = icmp ult i32 %12, -12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %7, i32 26
  %16 = load i8, ptr %15, align 2
  %17 = icmp ne i8 %16, 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %21 = load i8, ptr %20, align 4, !range !74
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #22, !annotation !70
  %25 = load i32, ptr %7, align 4
  %26 = icmp ult i32 %25, 28
  br i1 %22, label %59, label %27

27:                                               ; preds = %18
  br i1 %26, label %28, label %30

28:                                               ; preds = %27
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_dump_req.__msg) #22
  %29 = icmp eq ptr %24, null
  br i1 %29, label %88, label %85

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %7, i32 17
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %7, i32 18
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %7, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %7, i32 24
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %7, i32 27
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46, %42, %38, %34, %30
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_dump_req.__msg.56) #22
  %51 = icmp eq ptr %24, null
  br i1 %51, label %88, label %85

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %7, i32 26
  %54 = load i8, ptr %53, align 2
  %55 = and i8 %54, -9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_dump_req.__msg.57) #22
  %58 = icmp eq ptr %24, null
  br i1 %58, label %88, label %85

59:                                               ; preds = %18
  br i1 %26, label %60, label %62

60:                                               ; preds = %59
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %61 = icmp eq ptr %24, null
  br i1 %61, label %88, label %85

62:                                               ; preds = %59, %52
  %63 = phi i32 [ 3, %52 ], [ 0, %59 ]
  %64 = getelementptr i8, ptr %7, i32 28
  %65 = add i32 %25, -28
  %66 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 15, ptr noundef %64, i32 noundef %65, ptr noundef nonnull @nda_policy, i32 noundef %63, ptr noundef %24) #22
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %82, %62
  %69 = phi i32 [ %83, %82 ], [ 0, %62 ]
  %70 = getelementptr [16 x ptr], ptr %3, i32 0, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  switch i32 %69, label %75 [
    i32 8, label %78
    i32 9, label %74
  ]

74:                                               ; preds = %73
  br label %78

75:                                               ; preds = %73
  br i1 %22, label %82, label %76

76:                                               ; preds = %75
  call void @do_trace_netlink_extack(ptr noundef nonnull @neigh_valid_dump_req.__msg.58) #22
  %77 = icmp eq ptr %24, null
  br i1 %77, label %88, label %85

78:                                               ; preds = %74, %73
  %79 = phi ptr [ %4, %74 ], [ %5, %73 ]
  %80 = getelementptr i8, ptr %71, i32 4
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %78, %75, %68
  %83 = add nuw nsw i32 %69, 1
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %87, label %68

85:                                               ; preds = %76, %60, %57, %50, %28
  %86 = phi ptr [ @neigh_valid_dump_req.__msg, %28 ], [ @neigh_valid_dump_req.__msg.56, %50 ], [ @neigh_valid_dump_req.__msg.57, %57 ], [ @__nlmsg_parse.__msg, %60 ], [ @neigh_valid_dump_req.__msg.58, %76 ]
  store ptr %86, ptr %24, align 4
  br label %88

87:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  br label %92

88:                                               ; preds = %85, %76, %62, %60, %57, %50, %28
  %89 = phi i32 [ -22, %85 ], [ -22, %60 ], [ -22, %57 ], [ -22, %50 ], [ -22, %28 ], [ -22, %76 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  %90 = load i8, ptr %20, align 4, !range !74
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %278

92:                                               ; preds = %88, %87
  %93 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i8 %9, 0
  %96 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %97 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  %98 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 4
  %99 = load i32, ptr %5, align 4
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %4, align 8
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %100, i1 %102, i1 false
  %104 = select i1 %103, i32 2, i32 34
  %105 = icmp eq i32 %101, -1
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %107 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  br label %108

108:                                              ; preds = %272, %92
  %109 = phi i32 [ 0, %92 ], [ %273, %272 ]
  %110 = getelementptr [3 x ptr], ptr @neigh_tables, i32 0, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  %113 = icmp slt i32 %109, %94
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %272, label %115

115:                                              ; preds = %108
  br i1 %95, label %119, label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %111, align 4
  %118 = icmp eq i32 %117, %10
  br i1 %118, label %119, label %272

119:                                              ; preds = %116, %115
  %120 = icmp sgt i32 %109, %94
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %96, i8 0, i32 20, i1 false)
  br label %122

122:                                              ; preds = %121, %119
  br i1 %19, label %191, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %97, align 4
  %125 = load i32, ptr %98, align 4
  %126 = getelementptr inbounds %struct.neigh_table, ptr %111, i32 0, i32 28
  call void @_raw_read_lock_bh(ptr noundef %126) #22
  %127 = icmp slt i32 %124, 16
  br i1 %127, label %128, label %183

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.neigh_table, ptr %111, i32 0, i32 32
  br label %130

130:                                              ; preds = %179, %128
  %131 = phi i32 [ %125, %128 ], [ %134, %179 ]
  %132 = phi i32 [ %124, %128 ], [ %181, %179 ]
  %133 = icmp sgt i32 %132, %124
  %134 = select i1 %133, i32 0, i32 %131
  %135 = load ptr, ptr %129, align 4
  %136 = getelementptr ptr, ptr %135, i32 %132
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %179, label %139

139:                                              ; preds = %175, %130
  %140 = phi ptr [ %177, %175 ], [ %137, %130 ]
  %141 = phi i32 [ %176, %175 ], [ 0, %130 ]
  %142 = icmp slt i32 %141, %134
  br i1 %142, label %175, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.pneigh_entry, ptr %140, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  br i1 %100, label %152, label %146

146:                                              ; preds = %143
  %147 = icmp eq ptr %145, null
  br i1 %147, label %175, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 17
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, %99
  br i1 %151, label %152, label %175

152:                                              ; preds = %148, %143
  br i1 %102, label %165, label %153

153:                                              ; preds = %152
  %154 = icmp eq ptr %145, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  %156 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %145) #22
  %157 = icmp eq ptr %156, null
  br i1 %105, label %159, label %160

158:                                              ; preds = %153
  br i1 %105, label %165, label %175

159:                                              ; preds = %155
  br i1 %157, label %165, label %175

160:                                              ; preds = %155
  br i1 %157, label %175, label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 17
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, %101
  br i1 %164, label %165, label %175

165:                                              ; preds = %161, %159, %158, %152
  %166 = load ptr, ptr %1, align 4
  %167 = getelementptr inbounds %struct.sk_buff, ptr %166, i32 0, i32 3, i32 12
  %168 = load i32, ptr %167, align 4
  %169 = load ptr, ptr %6, align 4
  %170 = getelementptr inbounds %struct.nlmsghdr, ptr %169, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = call fastcc i32 @pneigh_fill_info(ptr noundef %0, ptr noundef nonnull %140, i32 noundef %168, i32 noundef %171, i32 noundef %104, ptr noundef %111) #22
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  call void @_raw_read_unlock_bh(ptr noundef %126) #22
  br label %187

175:                                              ; preds = %165, %161, %160, %159, %158, %148, %146, %139
  %176 = add i32 %141, 1
  %177 = load ptr, ptr %140, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %139

179:                                              ; preds = %175, %130
  %180 = phi i32 [ 0, %130 ], [ %176, %175 ]
  %181 = add nsw i32 %132, 1
  %182 = icmp eq i32 %181, 16
  br i1 %182, label %183, label %130

183:                                              ; preds = %179, %123
  %184 = phi i32 [ %124, %123 ], [ 16, %179 ]
  %185 = phi i32 [ %125, %123 ], [ %180, %179 ]
  call void @_raw_read_unlock_bh(ptr noundef %126) #22
  %186 = load i32, ptr %106, align 8
  br label %187

187:                                              ; preds = %183, %174
  %188 = phi i32 [ %132, %174 ], [ %184, %183 ]
  %189 = phi i32 [ -1, %174 ], [ %186, %183 ]
  %190 = phi i32 [ %141, %174 ], [ %185, %183 ]
  store i32 %188, ptr %97, align 4
  store i32 %190, ptr %98, align 4
  br label %269

191:                                              ; preds = %122
  %192 = load i32, ptr %96, align 4
  %193 = load i32, ptr %107, align 4
  %194 = tail call ptr @llvm.thread.pointer() #22
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 1
  %196 = load volatile i32, ptr %195, align 4
  %197 = add i32 %196, 512
  store volatile i32 %197, ptr %195, align 4
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %198 = getelementptr inbounds %struct.neigh_table, ptr %111, i32 0, i32 31
  %199 = load volatile ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.neigh_hash_table, ptr %199, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = shl nuw i32 1, %201
  %203 = icmp slt i32 %192, %202
  br i1 %203, label %204, label %261

204:                                              ; preds = %255, %191
  %205 = phi i32 [ %256, %255 ], [ %201, %191 ]
  %206 = phi i32 [ %258, %255 ], [ %192, %191 ]
  %207 = phi i32 [ %209, %255 ], [ %193, %191 ]
  %208 = icmp sgt i32 %206, %192
  %209 = select i1 %208, i32 0, i32 %207
  %210 = load ptr, ptr %199, align 4
  %211 = getelementptr ptr, ptr %210, i32 %206
  %212 = load volatile ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %255, label %214

214:                                              ; preds = %249, %204
  %215 = phi ptr [ %251, %249 ], [ %212, %204 ]
  %216 = phi i32 [ %250, %249 ], [ 0, %204 ]
  %217 = icmp slt i32 %216, %209
  br i1 %217, label %249, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.neighbour, ptr %215, i32 0, i32 26
  %220 = load ptr, ptr %219, align 4
  br i1 %100, label %227, label %221

221:                                              ; preds = %218
  %222 = icmp eq ptr %220, null
  br i1 %222, label %249, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.net_device, ptr %220, i32 0, i32 17
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, %99
  br i1 %226, label %227, label %249

227:                                              ; preds = %223, %218
  br i1 %102, label %240, label %228

228:                                              ; preds = %227
  %229 = icmp eq ptr %220, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %228
  %231 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %220) #22
  %232 = icmp eq ptr %231, null
  br i1 %105, label %234, label %235

233:                                              ; preds = %228
  br i1 %105, label %240, label %249

234:                                              ; preds = %230
  br i1 %232, label %240, label %249

235:                                              ; preds = %230
  br i1 %232, label %249, label %236

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.net_device, ptr %231, i32 0, i32 17
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, %101
  br i1 %239, label %240, label %249

240:                                              ; preds = %236, %234, %233, %227
  %241 = load ptr, ptr %1, align 4
  %242 = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 3, i32 12
  %243 = load i32, ptr %242, align 4
  %244 = load ptr, ptr %6, align 4
  %245 = getelementptr inbounds %struct.nlmsghdr, ptr %244, i32 0, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = call fastcc i32 @neigh_fill_info(ptr noundef %0, ptr noundef nonnull %215, i32 noundef %243, i32 noundef %246, i32 noundef 28, i32 noundef %104) #22
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %265, label %249

249:                                              ; preds = %240, %236, %235, %234, %233, %223, %221, %214
  %250 = add i32 %216, 1
  %251 = load volatile ptr, ptr %215, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %214

253:                                              ; preds = %249
  %254 = load i32, ptr %200, align 4
  br label %255

255:                                              ; preds = %253, %204
  %256 = phi i32 [ %205, %204 ], [ %254, %253 ]
  %257 = phi i32 [ 0, %204 ], [ %250, %253 ]
  %258 = add nsw i32 %206, 1
  %259 = shl nuw i32 1, %256
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %204, label %261

261:                                              ; preds = %255, %191
  %262 = phi i32 [ %193, %191 ], [ %257, %255 ]
  %263 = phi i32 [ %192, %191 ], [ %258, %255 ]
  %264 = load i32, ptr %106, align 8
  br label %265

265:                                              ; preds = %261, %240
  %266 = phi i32 [ %263, %261 ], [ %206, %240 ]
  %267 = phi i32 [ %262, %261 ], [ %216, %240 ]
  %268 = phi i32 [ %264, %261 ], [ -1, %240 ]
  call fastcc void @local_bh_enable() #22
  store i32 %266, ptr %96, align 4
  store i32 %267, ptr %107, align 4
  br label %269

269:                                              ; preds = %265, %187
  %270 = phi i32 [ %189, %187 ], [ %268, %265 ]
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %269, %116, %108
  %273 = add nuw nsw i32 %109, 1
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %275, label %108

275:                                              ; preds = %272, %269
  %276 = phi i32 [ %109, %269 ], [ 3, %272 ]
  store i32 %276, ptr %93, align 4
  %277 = load i32, ptr %106, align 8
  br label %278

278:                                              ; preds = %275, %88
  %279 = phi i32 [ %277, %275 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neightbl_dump_info(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ndt_config, align 4
  %8 = alloca %struct.ndt_stats, align 8
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %16 = load i8, ptr %15, align 4, !range !74
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %10, align 4
  %22 = icmp ult i32 %21, 20
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neightbl_valid_dump_info.__msg) #22
  %24 = icmp eq ptr %20, null
  br i1 %24, label %332, label %39

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %10, i32 17
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %10, i32 18
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neightbl_valid_dump_info.__msg.59) #22
  %34 = icmp eq ptr %20, null
  br i1 %34, label %332, label %39

35:                                               ; preds = %29
  %36 = icmp eq i32 %21, 20
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @neightbl_valid_dump_info.__msg.60) #22
  %38 = icmp eq ptr %20, null
  br i1 %38, label %332, label %39

39:                                               ; preds = %37, %33, %23
  %40 = phi ptr [ @neightbl_valid_dump_info.__msg, %23 ], [ @neightbl_valid_dump_info.__msg.59, %33 ], [ @neightbl_valid_dump_info.__msg.60, %37 ]
  store ptr %40, ptr %20, align 4
  br label %332

41:                                               ; preds = %35, %2
  %42 = getelementptr i8, ptr %10, i32 16
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i8 %43, 0
  %46 = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %50 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 1
  %51 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 2
  %52 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 3
  %53 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 4
  %54 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 5
  %55 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 6
  %56 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 7
  %57 = getelementptr inbounds %struct.ndt_config, ptr %7, i32 0, i32 8
  %58 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 2
  %60 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 3
  %61 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 4
  %62 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 5
  %63 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 6
  %64 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 7
  %65 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 8
  %66 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 9
  %67 = getelementptr inbounds %struct.ndt_stats, ptr %8, i32 0, i32 10
  br label %68

68:                                               ; preds = %310, %41
  %69 = phi i32 [ %14, %41 ], [ %312, %310 ]
  %70 = phi i32 [ 0, %41 ], [ %311, %310 ]
  %71 = phi i32 [ 0, %41 ], [ %313, %310 ]
  %72 = getelementptr [3 x ptr], ptr @neigh_tables, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = icmp slt i32 %71, %12
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %310, label %77

77:                                               ; preds = %68
  br i1 %45, label %81, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %73, align 4
  %80 = icmp eq i32 %79, %44
  br i1 %80, label %81, label %310

81:                                               ; preds = %78, %77
  %82 = load ptr, ptr %1, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 3, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %46, align 4
  %86 = load i32, ptr %47, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %327

88:                                               ; preds = %81
  %89 = load ptr, ptr %48, align 4
  %90 = load ptr, ptr %49, align 8
  %91 = ptrtoint ptr %89 to i32
  %92 = ptrtoint ptr %90 to i32
  %93 = sub i32 %91, %92
  %94 = icmp slt i32 %93, 20
  br i1 %94, label %327, label %95, !prof !31

95:                                               ; preds = %88
  %96 = call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %84, i32 noundef %85, i32 noundef 64, i32 noundef 4, i32 noundef 2) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %327, label %98

98:                                               ; preds = %95
  %99 = getelementptr i8, ptr %96, i32 16
  %100 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 28
  call void @_raw_read_lock_bh(ptr noundef %100) #22
  %101 = load i32, ptr %73, align 4
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %99, align 2
  %103 = getelementptr i8, ptr %96, i32 17
  store i8 0, ptr %103, align 1
  %104 = getelementptr i8, ptr %96, i32 18
  store i16 0, ptr %104, align 2
  %105 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 12
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @strlen(ptr noundef %106) #22
  %108 = add i32 %107, 1
  %109 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %108, ptr noundef %106) #22
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %248

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 15
  %113 = load i32, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %114 = call i32 @jiffies_to_msecs(i32 noundef %113) #22
  %115 = zext i32 %114 to i64
  store i64 %115, ptr %6, align 8
  %116 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %6, i32 noundef 9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %248

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 16
  %120 = load i32, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 %120, ptr %5, align 4
  %121 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %248

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 17
  %125 = load i32, ptr %124, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 %125, ptr %4, align 4
  %126 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %248

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 18
  %130 = load i32, ptr %129, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 %130, ptr %3, align 4
  %131 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %248

133:                                              ; preds = %128
  %134 = load volatile i32, ptr @jiffies, align 64
  %135 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 19
  %136 = load i32, ptr %135, align 4
  %137 = sub i32 %134, %136
  %138 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 29
  %139 = load i32, ptr %138, align 4
  %140 = sub i32 %134, %139
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  %141 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = trunc i32 %142 to i16
  store i16 %143, ptr %7, align 4
  %144 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = trunc i32 %145 to i16
  store i16 %146, ptr %50, align 2
  %147 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 24
  %148 = load volatile i32, ptr %147, align 4
  store i32 %148, ptr %51, align 4
  %149 = call i32 @jiffies_to_msecs(i32 noundef %137) #22
  store i32 %149, ptr %52, align 4
  %150 = call i32 @jiffies_to_msecs(i32 noundef %140) #22
  store i32 %150, ptr %53, align 4
  store i32 0, ptr %56, align 4
  %151 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 23, i32 1
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %57, align 4
  %153 = tail call ptr @llvm.thread.pointer() #22
  %154 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 1
  %155 = load volatile i32, ptr %154, align 4
  %156 = add i32 %155, 512
  store volatile i32 %156, ptr %154, align 4
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %157 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 31
  %158 = load volatile ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.neigh_hash_table, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  store i32 %160, ptr %54, align 4
  %161 = getelementptr inbounds %struct.neigh_hash_table, ptr %158, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = shl nsw i32 -1, %162
  %164 = xor i32 %163, -1
  store i32 %164, ptr %55, align 4
  call fastcc void @local_bh_enable() #22
  %165 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 32, ptr noundef nonnull %7) #22
  %166 = icmp eq i32 %165, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  br i1 %166, label %167, label %248

167:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, i8 0, i64 88, i1 false) #22
  %168 = load i32, ptr @nr_cpu_ids, align 4
  %169 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %170 = icmp ult i32 %169, %168
  br i1 %170, label %171, label %237

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 30
  %173 = load ptr, ptr %172, align 4
  %174 = ptrtoint ptr %173 to i32
  br label %175

175:                                              ; preds = %175, %171
  %176 = phi i64 [ 0, %171 ], [ %234, %175 ]
  %177 = phi i64 [ 0, %171 ], [ %230, %175 ]
  %178 = phi i64 [ 0, %171 ], [ %226, %175 ]
  %179 = phi i64 [ 0, %171 ], [ %222, %175 ]
  %180 = phi i64 [ 0, %171 ], [ %218, %175 ]
  %181 = phi i64 [ 0, %171 ], [ %214, %175 ]
  %182 = phi i64 [ 0, %171 ], [ %210, %175 ]
  %183 = phi i64 [ 0, %171 ], [ %206, %175 ]
  %184 = phi i64 [ 0, %171 ], [ %202, %175 ]
  %185 = phi i64 [ 0, %171 ], [ %198, %175 ]
  %186 = phi i64 [ 0, %171 ], [ %194, %175 ]
  %187 = phi i32 [ %169, %171 ], [ %235, %175 ]
  %188 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, %174
  %191 = inttoptr i32 %190 to ptr
  %192 = load i32, ptr %191, align 4
  %193 = zext i32 %192 to i64
  %194 = add i64 %186, %193
  store i64 %194, ptr %8, align 8
  %195 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = zext i32 %196 to i64
  %198 = add i64 %185, %197
  store i64 %198, ptr %58, align 8
  %199 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = zext i32 %200 to i64
  %202 = add i64 %184, %201
  store i64 %202, ptr %59, align 8
  %203 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = zext i32 %204 to i64
  %206 = add i64 %183, %205
  store i64 %206, ptr %60, align 8
  %207 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 4
  %208 = load i32, ptr %207, align 4
  %209 = zext i32 %208 to i64
  %210 = add i64 %182, %209
  store i64 %210, ptr %61, align 8
  %211 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 5
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = add i64 %181, %213
  store i64 %214, ptr %62, align 8
  %215 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 6
  %216 = load i32, ptr %215, align 4
  %217 = zext i32 %216 to i64
  %218 = add i64 %180, %217
  store i64 %218, ptr %63, align 8
  %219 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 7
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = add i64 %179, %221
  store i64 %222, ptr %64, align 8
  %223 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 8
  %224 = load i32, ptr %223, align 4
  %225 = zext i32 %224 to i64
  %226 = add i64 %178, %225
  store i64 %226, ptr %65, align 8
  %227 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 9
  %228 = load i32, ptr %227, align 4
  %229 = zext i32 %228 to i64
  %230 = add i64 %177, %229
  store i64 %230, ptr %66, align 8
  %231 = getelementptr inbounds %struct.neigh_statistics, ptr %191, i32 0, i32 11
  %232 = load i32, ptr %231, align 4
  %233 = zext i32 %232 to i64
  %234 = add i64 %176, %233
  store i64 %234, ptr %67, align 8
  %235 = call i32 @cpumask_next(i32 noundef %187, ptr noundef nonnull @__cpu_possible_mask) #27
  %236 = icmp ult i32 %235, %168
  br i1 %236, label %175, label %237

237:                                              ; preds = %175, %167
  %238 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef 7, i32 noundef 88, ptr noundef nonnull %8, i32 noundef 9) #22
  %239 = icmp eq i32 %238, 0
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #22
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 13
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244, !prof !20

244:                                              ; preds = %240
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/neighbour.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2187, 0\0A.popsection", ""() #22, !srcloc !75
  unreachable

245:                                              ; preds = %240
  %246 = call fastcc i32 @neightbl_fill_parms(ptr noundef %0, ptr noundef %241) #22
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245, %237, %133, %128, %123, %118, %111, %98
  call void @_raw_read_unlock_bh(ptr noundef %100) #22
  %249 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %250 = load ptr, ptr %249, align 4
  %251 = icmp ugt ptr %250, %96
  br i1 %251, label %315, label %320, !prof !31

252:                                              ; preds = %245
  call void @_raw_read_unlock_bh(ptr noundef %100) #22
  %253 = load ptr, ptr %49, align 8
  %254 = ptrtoint ptr %253 to i32
  %255 = ptrtoint ptr %96 to i32
  %256 = sub i32 %254, %255
  store i32 %256, ptr %96, align 4
  %257 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 13, i32 3
  %258 = getelementptr inbounds %struct.neigh_table, ptr %73, i32 0, i32 14
  %259 = load ptr, ptr %257, align 4
  %260 = icmp eq ptr %259, %258
  br i1 %260, label %310, label %261

261:                                              ; preds = %306, %252
  %262 = phi ptr [ %308, %306 ], [ %259, %252 ]
  %263 = phi i32 [ %307, %306 ], [ 0, %252 ]
  %264 = getelementptr i8, ptr %262, i32 -4
  %265 = icmp slt i32 %263, %69
  br i1 %265, label %306, label %266

266:                                              ; preds = %261
  %267 = load ptr, ptr %1, align 4
  %268 = getelementptr inbounds %struct.sk_buff, ptr %267, i32 0, i32 3, i32 12
  %269 = load i32, ptr %268, align 4
  %270 = load i32, ptr %46, align 4
  %271 = load i32, ptr %47, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %327

273:                                              ; preds = %266
  %274 = load ptr, ptr %48, align 4
  %275 = load ptr, ptr %49, align 8
  %276 = ptrtoint ptr %274 to i32
  %277 = ptrtoint ptr %275 to i32
  %278 = sub i32 %276, %277
  %279 = icmp slt i32 %278, 20
  br i1 %279, label %327, label %280, !prof !31

280:                                              ; preds = %273
  %281 = call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %269, i32 noundef %270, i32 noundef 64, i32 noundef 4, i32 noundef 2) #22
  %282 = icmp eq ptr %281, null
  br i1 %282, label %327, label %283

283:                                              ; preds = %280
  %284 = getelementptr i8, ptr %281, i32 16
  call void @_raw_read_lock_bh(ptr noundef %100) #22
  %285 = load i32, ptr %73, align 4
  %286 = trunc i32 %285 to i8
  store i8 %286, ptr %284, align 2
  %287 = getelementptr i8, ptr %281, i32 17
  store i8 0, ptr %287, align 1
  %288 = getelementptr i8, ptr %281, i32 18
  store i16 0, ptr %288, align 2
  %289 = load ptr, ptr %105, align 4
  %290 = call i32 @strlen(ptr noundef %289) #22
  %291 = add i32 %290, 1
  %292 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %291, ptr noundef %289) #22
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %283
  %295 = call fastcc i32 @neightbl_fill_parms(ptr noundef %0, ptr noundef %264) #22
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %294, %283
  call void @_raw_read_unlock_bh(ptr noundef %100) #22
  %298 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %299 = load ptr, ptr %298, align 4
  %300 = icmp ugt ptr %299, %281
  br i1 %300, label %315, label %320, !prof !31

301:                                              ; preds = %294
  call void @_raw_read_unlock_bh(ptr noundef %100) #22
  %302 = load ptr, ptr %49, align 8
  %303 = ptrtoint ptr %302 to i32
  %304 = ptrtoint ptr %281 to i32
  %305 = sub i32 %303, %304
  store i32 %305, ptr %281, align 4
  br label %306

306:                                              ; preds = %301, %261
  %307 = add i32 %263, 1
  %308 = load ptr, ptr %262, align 4
  %309 = icmp eq ptr %308, %258
  br i1 %309, label %310, label %261

310:                                              ; preds = %306, %252, %78, %68
  %311 = phi i32 [ %70, %78 ], [ %70, %68 ], [ 0, %252 ], [ %307, %306 ]
  %312 = phi i32 [ %69, %78 ], [ %69, %68 ], [ 0, %252 ], [ 0, %306 ]
  %313 = add nuw nsw i32 %71, 1
  %314 = icmp eq i32 %313, 3
  br i1 %314, label %327, label %68

315:                                              ; preds = %297, %248
  %316 = phi ptr [ %249, %248 ], [ %298, %297 ]
  %317 = phi ptr [ %96, %248 ], [ %281, %297 ]
  %318 = phi i32 [ %70, %248 ], [ %263, %297 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %319 = load ptr, ptr %316, align 4
  br label %320

320:                                              ; preds = %315, %297, %248
  %321 = phi ptr [ %96, %248 ], [ %281, %297 ], [ %317, %315 ]
  %322 = phi ptr [ %250, %248 ], [ %299, %297 ], [ %319, %315 ]
  %323 = phi i32 [ %70, %248 ], [ %263, %297 ], [ %318, %315 ]
  %324 = ptrtoint ptr %321 to i32
  %325 = ptrtoint ptr %322 to i32
  %326 = sub i32 %324, %325
  call void @skb_trim(ptr noundef %0, i32 noundef %326) #22
  br label %327

327:                                              ; preds = %320, %310, %280, %273, %266, %95, %88, %81
  %328 = phi i32 [ %71, %320 ], [ %71, %280 ], [ %71, %273 ], [ %71, %266 ], [ 3, %310 ], [ %71, %95 ], [ %71, %88 ], [ %71, %81 ]
  %329 = phi i32 [ %323, %320 ], [ %263, %280 ], [ %263, %273 ], [ %263, %266 ], [ %311, %310 ], [ %70, %95 ], [ %70, %88 ], [ %70, %81 ]
  store i32 %328, ptr %11, align 4
  store i32 %329, ptr %13, align 4
  %330 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %331 = load i32, ptr %330, align 8
  br label %332

332:                                              ; preds = %327, %39, %37, %33, %23
  %333 = phi i32 [ %331, %327 ], [ -22, %23 ], [ -22, %33 ], [ -22, %37 ], [ -22, %39 ]
  ret i32 %333
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @neightbl_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x ptr], align 4
  %13 = alloca [19 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %12, i8 0, i32 40, i1 false), !annotation !70
  %14 = load i32, ptr %1, align 4
  %15 = icmp ult i32 %14, 20
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %17 = icmp eq ptr %2, null
  br i1 %17, label %253, label %18

18:                                               ; preds = %16
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %253

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %1, i32 20
  %21 = add i32 %14, -20
  %22 = call i32 @__nla_parse(ptr noundef nonnull %12, i32 noundef 9, ptr noundef %20, i32 noundef %21, ptr noundef nonnull @nl_neightbl_policy, i32 noundef 0, ptr noundef %2) #22
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %253, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [10 x ptr], ptr %12, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %253, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 16
  %30 = load ptr, ptr @neigh_tables, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %29, align 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = zext i8 %33 to i32
  %37 = load i32, ptr %30, align 4
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %32
  %40 = getelementptr inbounds %struct.neigh_table, ptr %30, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @nla_strcmp(ptr noundef nonnull %26, ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %39, %35, %28
  %45 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 1), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %29, align 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = zext i8 %48 to i32
  %52 = load i32, ptr %45, align 4
  %53 = icmp eq i32 %52, %51
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %47
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr inbounds %struct.neigh_table, ptr %45, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @nla_strcmp(ptr noundef %55, ptr noundef %57) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %54, %50, %44
  %61 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @neigh_tables, i32 0, i32 2), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %253, label %63

63:                                               ; preds = %60
  %64 = load i8, ptr %29, align 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = zext i8 %64 to i32
  %68 = load i32, ptr %61, align 4
  %69 = icmp eq i32 %68, %67
  br i1 %69, label %70, label %253

70:                                               ; preds = %66, %63
  %71 = load ptr, ptr %25, align 4
  %72 = getelementptr inbounds %struct.neigh_table, ptr %61, i32 0, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @nla_strcmp(ptr noundef %71, ptr noundef %73) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %253

76:                                               ; preds = %70, %54, %39
  %77 = phi ptr [ %30, %39 ], [ %45, %54 ], [ %61, %70 ]
  %78 = getelementptr inbounds %struct.neigh_table, ptr %77, i32 0, i32 28
  call void @_raw_write_lock_bh(ptr noundef %78) #22
  %79 = getelementptr inbounds [10 x ptr], ptr %12, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %217, label %82

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %13) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %13, i8 0, i32 76, i1 false), !annotation !70
  %83 = getelementptr i8, ptr %80, i32 4
  %84 = load i16, ptr %80, align 2
  %85 = zext i16 %84 to i32
  %86 = add nsw i32 %85, -4
  %87 = call i32 @__nla_parse(ptr noundef nonnull %13, i32 noundef 18, ptr noundef %83, i32 noundef %86, ptr noundef nonnull @nl_ntbl_parm_policy, i32 noundef 0, ptr noundef %2) #22
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %214, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds [19 x ptr], ptr %13, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %91, i32 4
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i32 [ %95, %93 ], [ 0, %89 ]
  %98 = getelementptr inbounds %struct.neigh_table, ptr %77, i32 0, i32 14
  %99 = icmp eq i32 %97, 0
  %100 = load ptr, ptr %98, align 4
  %101 = icmp eq ptr %100, %98
  br i1 %101, label %214, label %102

102:                                              ; preds = %112, %96
  %103 = phi ptr [ %113, %112 ], [ %100, %96 ]
  %104 = getelementptr i8, ptr %103, i32 -4
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 17
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %97
  br i1 %110, label %115, label %112

111:                                              ; preds = %102
  br i1 %99, label %115, label %112

112:                                              ; preds = %111, %107
  %113 = load ptr, ptr %103, align 4
  %114 = icmp eq ptr %113, %98
  br i1 %114, label %214, label %102

115:                                              ; preds = %111, %107
  %116 = getelementptr i8, ptr %103, i32 -4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %214, label %118

118:                                              ; preds = %115
  %119 = getelementptr i8, ptr %103, i32 92
  %120 = getelementptr i8, ptr %103, i32 88
  %121 = getelementptr i8, ptr %103, i32 84
  %122 = getelementptr i8, ptr %103, i32 80
  %123 = getelementptr i8, ptr %103, i32 56
  %124 = getelementptr i8, ptr %103, i32 64
  %125 = getelementptr i8, ptr %103, i32 68
  %126 = getelementptr i8, ptr %103, i32 60
  %127 = getelementptr i8, ptr %103, i32 36
  %128 = getelementptr i8, ptr %103, i32 52
  %129 = getelementptr i8, ptr %103, i32 40
  %130 = getelementptr i8, ptr %103, i32 44
  %131 = getelementptr i8, ptr %103, i32 48
  %132 = getelementptr i8, ptr %103, i32 76
  %133 = getelementptr i8, ptr %103, i32 72
  br label %134

134:                                              ; preds = %210, %118
  %135 = phi ptr [ %91, %118 ], [ %213, %210 ]
  %136 = phi i32 [ 1, %118 ], [ %211, %210 ]
  %137 = icmp eq ptr %135, null
  br i1 %137, label %207, label %138

138:                                              ; preds = %134
  switch i32 %136, label %207 [
    i32 8, label %139
    i32 16, label %143
    i32 14, label %146
    i32 9, label %149
    i32 10, label %152
    i32 11, label %155
    i32 17, label %158
    i32 4, label %161
    i32 6, label %174
    i32 7, label %179
    i32 5, label %185
    i32 12, label %190
    i32 13, label %195
    i32 15, label %200
  ]

139:                                              ; preds = %138
  %140 = getelementptr i8, ptr %135, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = mul i32 %141, 1962
  call void @_set_bit(i32 noundef 8, ptr noundef %119) #22
  store i32 %142, ptr %133, align 4
  br label %205

143:                                              ; preds = %138
  %144 = getelementptr i8, ptr %135, i32 4
  %145 = load i32, ptr %144, align 4
  call void @_set_bit(i32 noundef 8, ptr noundef %119) #22
  store i32 %145, ptr %133, align 4
  br label %205

146:                                              ; preds = %138
  %147 = getelementptr i8, ptr %135, i32 4
  %148 = load i32, ptr %147, align 4
  call void @_set_bit(i32 noundef 9, ptr noundef %119) #22
  store i32 %148, ptr %132, align 4
  br label %205

149:                                              ; preds = %138
  %150 = getelementptr i8, ptr %135, i32 4
  %151 = load i32, ptr %150, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %119) #22
  store i32 %151, ptr %131, align 4
  br label %205

152:                                              ; preds = %138
  %153 = getelementptr i8, ptr %135, i32 4
  %154 = load i32, ptr %153, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %119) #22
  store i32 %154, ptr %130, align 4
  br label %205

155:                                              ; preds = %138
  %156 = getelementptr i8, ptr %135, i32 4
  %157 = load i32, ptr %156, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %119) #22
  store i32 %157, ptr %129, align 4
  br label %205

158:                                              ; preds = %138
  %159 = getelementptr i8, ptr %135, i32 4
  %160 = load i32, ptr %159, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %119) #22
  store i32 %160, ptr %128, align 4
  br label %205

161:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  store i64 0, ptr %11, align 8, !annotation !70
  %162 = call i32 @nla_memcpy(ptr noundef nonnull %11, ptr noundef nonnull %135, i32 noundef 8) #22
  %163 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  %164 = trunc i64 %163 to i32
  %165 = call i32 @__msecs_to_jiffies(i32 noundef %164) #22
  call void @_set_bit(i32 noundef 5, ptr noundef %119) #22
  store i32 %165, ptr %126, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %161
  %168 = call i32 @prandom_u32() #22
  %169 = urem i32 %168, %165
  %170 = lshr i32 %165, 1
  %171 = add i32 %169, %170
  br label %172

172:                                              ; preds = %167, %161
  %173 = phi i32 [ %171, %167 ], [ 0, %161 ]
  store i32 %173, ptr %127, align 4
  br label %205

174:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  store i64 0, ptr %10, align 8, !annotation !70
  %175 = call i32 @nla_memcpy(ptr noundef nonnull %10, ptr noundef nonnull %135, i32 noundef 8) #22
  %176 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  %177 = trunc i64 %176 to i32
  %178 = call i32 @__msecs_to_jiffies(i32 noundef %177) #22
  call void @_set_bit(i32 noundef 7, ptr noundef %119) #22
  store i32 %178, ptr %125, align 4
  br label %205

179:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store i64 0, ptr %9, align 8, !annotation !70
  %180 = call i32 @nla_memcpy(ptr noundef nonnull %9, ptr noundef nonnull %135, i32 noundef 8) #22
  %181 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  %182 = trunc i64 %181 to i32
  %183 = call i32 @__msecs_to_jiffies(i32 noundef %182) #22
  call void @_set_bit(i32 noundef 6, ptr noundef %119) #22
  store i32 %183, ptr %124, align 4
  %184 = call i32 @call_netevent_notifiers(i32 noundef 3, ptr noundef nonnull %116) #22
  br label %205

185:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store i64 0, ptr %8, align 8, !annotation !70
  %186 = call i32 @nla_memcpy(ptr noundef nonnull %8, ptr noundef nonnull %135, i32 noundef 8) #22
  %187 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %188 = trunc i64 %187 to i32
  %189 = call i32 @__msecs_to_jiffies(i32 noundef %188) #22
  call void @_set_bit(i32 noundef 4, ptr noundef %119) #22
  store i32 %189, ptr %123, align 4
  br label %205

190:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store i64 0, ptr %7, align 8, !annotation !70
  %191 = call i32 @nla_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %135, i32 noundef 8) #22
  %192 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  %193 = trunc i64 %192 to i32
  %194 = call i32 @__msecs_to_jiffies(i32 noundef %193) #22
  call void @_set_bit(i32 noundef 10, ptr noundef %119) #22
  store i32 %194, ptr %122, align 4
  br label %205

195:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store i64 0, ptr %6, align 8, !annotation !70
  %196 = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %135, i32 noundef 8) #22
  %197 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %198 = trunc i64 %197 to i32
  %199 = call i32 @__msecs_to_jiffies(i32 noundef %198) #22
  call void @_set_bit(i32 noundef 11, ptr noundef %119) #22
  store i32 %199, ptr %121, align 4
  br label %205

200:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !annotation !70
  %201 = call i32 @nla_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %135, i32 noundef 8) #22
  %202 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %203 = trunc i64 %202 to i32
  %204 = call i32 @__msecs_to_jiffies(i32 noundef %203) #22
  call void @_set_bit(i32 noundef 12, ptr noundef %119) #22
  store i32 %204, ptr %120, align 4
  br label %205

205:                                              ; preds = %200, %195, %190, %185, %179, %174, %172, %158, %155, %152, %149, %146, %143, %139
  %206 = add nuw nsw i32 %136, 1
  br label %210

207:                                              ; preds = %138, %134
  %208 = add nuw nsw i32 %136, 1
  %209 = icmp eq i32 %208, 19
  br i1 %209, label %216, label %210

210:                                              ; preds = %207, %205
  %211 = phi i32 [ %206, %205 ], [ %208, %207 ]
  %212 = getelementptr [19 x ptr], ptr %13, i32 0, i32 %211
  %213 = load ptr, ptr %212, align 4
  br label %134

214:                                              ; preds = %115, %112, %96, %82
  %215 = phi i32 [ -2, %115 ], [ %87, %82 ], [ -2, %96 ], [ -2, %112 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %13) #22
  br label %251

216:                                              ; preds = %207
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %13) #22
  br label %217

217:                                              ; preds = %216, %76
  %218 = getelementptr inbounds [10 x ptr], ptr %12, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds [10 x ptr], ptr %12, i32 0, i32 3
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds [10 x ptr], ptr %12, i32 0, i32 4
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds [10 x ptr], ptr %12, i32 0, i32 8
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %219, null
  br i1 %226, label %231, label %227

227:                                              ; preds = %217
  %228 = getelementptr i8, ptr %219, i32 4
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.neigh_table, ptr %77, i32 0, i32 16
  store i32 %229, ptr %230, align 4
  br label %231

231:                                              ; preds = %227, %217
  %232 = icmp eq ptr %221, null
  br i1 %232, label %237, label %233

233:                                              ; preds = %231
  %234 = getelementptr i8, ptr %221, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.neigh_table, ptr %77, i32 0, i32 17
  store i32 %235, ptr %236, align 4
  br label %237

237:                                              ; preds = %233, %231
  %238 = icmp eq ptr %223, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %237
  %240 = getelementptr i8, ptr %223, i32 4
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.neigh_table, ptr %77, i32 0, i32 18
  store i32 %241, ptr %242, align 4
  br label %243

243:                                              ; preds = %239, %237
  %244 = icmp eq ptr %225, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !annotation !70
  %246 = call i32 @nla_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %225, i32 noundef 8) #22
  %247 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  %248 = trunc i64 %247 to i32
  %249 = call i32 @__msecs_to_jiffies(i32 noundef %248) #22
  %250 = getelementptr inbounds %struct.neigh_table, ptr %77, i32 0, i32 15
  store i32 %249, ptr %250, align 4
  br label %251

251:                                              ; preds = %245, %243, %214
  %252 = phi i32 [ 0, %245 ], [ 0, %243 ], [ %215, %214 ]
  call void @_raw_write_unlock_bh(ptr noundef %78) #22
  br label %253

253:                                              ; preds = %251, %70, %66, %60, %24, %19, %18, %16
  %254 = phi i32 [ %22, %19 ], [ %252, %251 ], [ -22, %24 ], [ -22, %18 ], [ -22, %16 ], [ -2, %70 ], [ -2, %66 ], [ -2, %60 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #22
  ret i32 %254
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %4, 28
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = add i32 %4, -28
  %12 = tail call i32 @__nla_parse(ptr noundef %1, i32 noundef 15, ptr noundef %10, i32 noundef %11, ptr noundef nonnull @nda_policy, i32 noundef 3, ptr noundef %2) #22
  br label %13

13:                                               ; preds = %9, %8, %6
  %14 = phi i32 [ %12, %9 ], [ -22, %8 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pneigh_fill_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = icmp slt i32 %19, 28
  br i1 %20, label %80, label %21, !prof !31

21:                                               ; preds = %12
  %22 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 28, i32 noundef 12, i32 noundef %4) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %80, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pneigh_entry, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 8
  %28 = getelementptr i8, ptr %22, i32 16
  %29 = load i32, ptr %5, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %28, align 4
  %31 = getelementptr i8, ptr %22, i32 17
  store i8 0, ptr %31, align 1
  %32 = getelementptr i8, ptr %22, i32 18
  store i16 0, ptr %32, align 2
  %33 = trunc i32 %26 to i8
  %34 = or i8 %33, 8
  %35 = getelementptr i8, ptr %22, i32 26
  store i8 %34, ptr %35, align 2
  %36 = getelementptr i8, ptr %22, i32 27
  store i8 1, ptr %36, align 1
  %37 = getelementptr inbounds %struct.pneigh_entry, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %24
  %44 = phi i32 [ %42, %40 ], [ 0, %24 ]
  %45 = getelementptr i8, ptr %22, i32 20
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %22, i32 24
  store i16 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.neigh_table, ptr %5, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.pneigh_entry, ptr %1, i32 0, i32 6
  %50 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %48, ptr noundef %49) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.pneigh_entry, ptr %1, i32 0, i32 5
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  store i8 %54, ptr %8, align 1
  %57 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56, %52
  %60 = icmp ult i32 %26, 256
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %27, ptr %7, align 4
  %62 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61, %59
  %65 = load ptr, ptr %15, align 8
  %66 = ptrtoint ptr %65 to i32
  %67 = ptrtoint ptr %22 to i32
  %68 = sub i32 %66, %67
  store i32 %68, ptr %22, align 4
  br label %80

69:                                               ; preds = %61, %56, %43
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = icmp ugt ptr %71, %22
  br i1 %72, label %73, label %75, !prof !31

73:                                               ; preds = %69
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %74 = load ptr, ptr %70, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi ptr [ %74, %73 ], [ %71, %69 ]
  %77 = ptrtoint ptr %22 to i32
  %78 = ptrtoint ptr %76 to i32
  %79 = sub i32 %77, %78
  call void @skb_trim(ptr noundef %0, i32 noundef %79) #22
  br label %80

80:                                               ; preds = %75, %64, %21, %12, %6
  %81 = phi i32 [ -90, %75 ], [ 0, %64 ], [ -90, %21 ], [ -90, %12 ], [ -90, %6 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = tail call i32 @jiffies_to_msecs(i32 noundef %2) #22
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %5, align 8
  %8 = call i32 @nla_put_64bit(ptr noundef %0, i32 noundef %1, i32 noundef 8, ptr noundef nonnull %5, i32 noundef %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @neightbl_fill_parms(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 0, ptr noundef null) #22
  %15 = icmp slt i32 %14, 0
  %16 = icmp eq ptr %13, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %126, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store i32 %24, ptr %11, align 4
  %25 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %115

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 8
  %29 = load volatile i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 %29, ptr %10, align 4
  %30 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %115

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 11
  %34 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 8
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %35, ptr %9, align 4
  %36 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %115

38:                                               ; preds = %32
  %39 = load i32, ptr %34, align 4
  %40 = udiv i32 %39, 1962
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 %40, ptr %8, align 4
  %41 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %115

43:                                               ; preds = %38
  %44 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 9
  %45 = load i32, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %45, ptr %7, align 4
  %46 = call i32 @nla_put(ptr noundef %0, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %115

48:                                               ; preds = %43
  %49 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 2
  %50 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 %50, ptr %6, align 4
  %51 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %115

53:                                               ; preds = %48
  %54 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 1
  %55 = load i32, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 %55, ptr %5, align 4
  %56 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %115

58:                                               ; preds = %53
  %59 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 %59, ptr %4, align 4
  %60 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %58
  %63 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 3
  %64 = load i32, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 %64, ptr %3, align 4
  %65 = call i32 @nla_put(ptr noundef %0, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %115

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.neigh_parms, ptr %1, i32 0, i32 10
  %69 = load i32, ptr %68, align 4
  %70 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 3, i32 noundef %69, i32 noundef 18)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %67
  %73 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 4, i32 noundef %74, i32 noundef 18)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %72
  %78 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 6, i32 noundef %79, i32 noundef 18)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 7, i32 noundef %84, i32 noundef 18)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  %88 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 5, i32 noundef %89, i32 noundef 18)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 12, i32 noundef %94, i32 noundef 18)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 11
  %99 = load i32, ptr %98, align 4
  %100 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 13, i32 noundef %99, i32 noundef 18)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = getelementptr %struct.neigh_parms, ptr %1, i32 0, i32 11, i32 12
  %104 = load i32, ptr %103, align 4
  %105 = call fastcc i32 @nla_put_msecs(ptr noundef %0, i32 noundef 15, i32 noundef %104, i32 noundef 18)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load ptr, ptr %12, align 8
  %109 = ptrtoint ptr %108 to i32
  %110 = ptrtoint ptr %13 to i32
  %111 = sub i32 %109, %110
  %112 = trunc i32 %111 to i16
  store i16 %112, ptr %13, align 2
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %114 = load i32, ptr %113, align 8
  br label %126

115:                                              ; preds = %102, %97, %92, %87, %82, %77, %72, %67, %62, %58, %53, %48, %43, %38, %32, %27, %22
  %116 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %117 = load ptr, ptr %116, align 4
  %118 = icmp ugt ptr %117, %13
  br i1 %118, label %119, label %121, !prof !31

119:                                              ; preds = %115
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %120 = load ptr, ptr %116, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi ptr [ %120, %119 ], [ %117, %115 ]
  %123 = ptrtoint ptr %13 to i32
  %124 = ptrtoint ptr %122 to i32
  %125 = sub i32 %123, %124
  call void @skb_trim(ptr noundef %0, i32 noundef %125) #22
  br label %126

126:                                              ; preds = %121, %107, %2
  %127 = phi i32 [ -90, %121 ], [ %114, %107 ], [ -105, %2 ]
  ret i32 %127
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nounwind readonly willreturn }

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
!9 = !{i64 2155989606}
!10 = !{i64 851186, i64 2148341157, i64 2148341183, i64 2148341230, i64 2148341252, i64 2148341280, i64 2148341300}
!11 = !{i64 2148354929, i64 2148354955, i64 2148354984, i64 2148355018, i64 2148355049, i64 2148355072}
!12 = !{i64 2149026867}
!13 = !{i64 1530081}
!14 = !{i64 2149015614}
!15 = !{i64 2149015689, i64 2149015716, i64 2149015763, i64 2149015785, i64 2149015813, i64 2149015833}
!16 = !{i64 2149064836}
!17 = !{i64 2156012948}
!18 = !{i64 2148454252}
!19 = !{i64 2148356387, i64 2148356419, i64 2148356448, i64 2148356482, i64 2148356513, i64 2148356536}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2149369142}
!22 = !{i64 756864, i64 756925}
!23 = !{i64 775564}
!24 = !{i64 759881}
!25 = !{i64 2148814016}
!26 = !{i64 837249, i64 837273, i64 837294, i64 837311, i64 837328}
!27 = !{i64 2148450418}
!28 = !{i64 2148353256, i64 2148353288, i64 2148353317, i64 2148353351, i64 2148353382, i64 2148353405}
!29 = !{i64 2148450621}
!30 = !{i64 2148354030, i64 2148354062, i64 2148354091, i64 2148354125, i64 2148354156, i64 2148354179}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2148352572, i64 2148352598, i64 2148352627, i64 2148352661, i64 2148352692, i64 2148352715}
!33 = !{i64 2155859281}
!34 = !{i64 2155859483}
!35 = !{i64 2156061092}
!36 = !{i64 2156069265}
!37 = !{i64 2156076928}
!38 = !{i64 2156132263}
!39 = !{i64 2156140436}
!40 = !{i64 2148352079}
!41 = !{i64 837755, i64 837780, i64 837802, i64 837818, i64 837830, i64 837850, i64 837874, i64 837890, i64 837902}
!42 = !{i64 2148352205}
!43 = !{i64 2155930571}
!44 = !{i64 2155930745}
!45 = !{i64 2155951285}
!46 = !{i64 2155951459}
!47 = !{i64 2155880850}
!48 = !{i64 2155881050}
!49 = !{i64 2149262894}
!50 = !{i64 2149263195}
!51 = !{i64 2149019790}
!52 = !{i64 2149042793}
!53 = !{i64 2149418562}
!54 = !{i64 2149418779}
!55 = !{i64 2155897665}
!56 = !{i64 2155897831}
!57 = !{i64 2153713557, i64 2153714045, i64 2153713594, i64 2153713650, i64 2153713684, i64 2153713708, i64 2153713749, i64 2153713770, i64 2153713798, i64 2153713832}
!58 = !{i64 2149271957}
!59 = !{i64 2149271799}
!60 = !{i64 2149272101}
!61 = !{i64 2149262595}
!62 = !{i32 0, i32 33}
!63 = !{i64 2149027672}
!64 = !{i64 1531096, i64 1531119, i64 1531139, i64 1531163, i64 1531179}
!65 = !{i64 2149065275}
!66 = !{i64 2156342075}
!67 = !{i64 2155968067}
!68 = !{i64 2155968247}
!69 = !{i64 2156375882, i64 2156376368, i64 2156375919, i64 2156375975, i64 2156376009, i64 2156376033, i64 2156376074, i64 2156376095, i64 2156376123, i64 2156376157}
!70 = !{!"auto-init"}
!71 = !{i64 2156436275, i64 2156436761, i64 2156436312, i64 2156436368, i64 2156436402, i64 2156436426, i64 2156436467, i64 2156436488, i64 2156436516, i64 2156436550}
!72 = !{i64 2155914026}
!73 = !{i64 2155914196}
!74 = !{i8 0, i8 2}
!75 = !{i64 2156298014, i64 2156298500, i64 2156298051, i64 2156298107, i64 2156298141, i64 2156298165, i64 2156298206, i64 2156298227, i64 2156298255, i64 2156298289}
