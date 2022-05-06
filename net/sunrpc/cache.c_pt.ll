; ModuleID = '/llk/IR/net/sunrpc/cache.c_pt.bc'
source_filename = "../net/sunrpc/cache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_lookup_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_lookup_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_lookup_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_update:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_update\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_check:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_check\22\09\09\09\09\09"
module asm "__kstrtabns_cache_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_init_cache_detail:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_init_cache_detail\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_init_cache_detail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_destroy_cache_detail:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_destroy_cache_detail\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_destroy_cache_detail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_flush\22\09\09\09\09\09"
module asm "__kstrtabns_cache_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_purge\22\09\09\09\09\09"
module asm "__kstrtabns_cache_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qword_add:\09\09\09\09\09"
module asm "\09.asciz \09\22qword_add\22\09\09\09\09\09"
module asm "__kstrtabns_qword_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qword_addhex:\09\09\09\09\09"
module asm "\09.asciz \09\22qword_addhex\22\09\09\09\09\09"
module asm "__kstrtabns_qword_addhex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_pipe_upcall:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_pipe_upcall\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_pipe_upcall:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_pipe_upcall_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_pipe_upcall_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_pipe_upcall_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qword_get:\09\09\09\09\09"
module asm "\09.asciz \09\22qword_get\22\09\09\09\09\09"
module asm "__kstrtabns_qword_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_seq_start_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_seq_start_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_cache_seq_start_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_seq_next_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_seq_next_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_cache_seq_next_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_seq_stop_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_seq_stop_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_cache_seq_stop_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_register_net:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_register_net\22\09\09\09\09\09"
module asm "__kstrtabns_cache_register_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_unregister_net:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_unregister_net\22\09\09\09\09\09"
module asm "__kstrtabns_cache_unregister_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_create_net:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_create_net\22\09\09\09\09\09"
module asm "__kstrtabns_cache_create_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cache_destroy_net:\09\09\09\09\09"
module asm "\09.asciz \09\22cache_destroy_net\22\09\09\09\09\09"
module asm "__kstrtabns_cache_destroy_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_register_pipefs:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_register_pipefs\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_register_pipefs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_unregister_pipefs:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_unregister_pipefs\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_unregister_pipefs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_cache_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_cache_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_cache_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.118, ptr }
%union.anon.118 = type { ptr }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cache_queue = type { %struct.list_head, i32 }
%struct.cache_request = type { %struct.cache_queue, ptr, ptr, i32, i32 }
%struct.thread_deferred_req = type { %struct.cache_deferred_req, %struct.completion }
%struct.cache_deferred_req = type { %struct.hlist_node, %struct.list_head, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cache_req = type { ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rpc_inode = type { %struct.inode, ptr, ptr, %struct.wait_queue_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.119, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.120, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.121, ptr, %struct.address_space, %struct.list_head, %union.anon.122, i32, i32, ptr, ptr }
%union.anon.119 = type { i32 }
%union.anon.120 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.121 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.122 = type { ptr }
%struct.cache_reader = type { %struct.cache_queue, i32 }

@__kstrtab_sunrpc_cache_lookup_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_lookup_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_lookup_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_lookup_rcu to i32), ptr @__kstrtab_sunrpc_cache_lookup_rcu, ptr @__kstrtabns_sunrpc_cache_lookup_rcu }, section "___ksymtab_gpl+sunrpc_cache_lookup_rcu", align 4
@__kstrtab_sunrpc_cache_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_update = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_update to i32), ptr @__kstrtab_sunrpc_cache_update, ptr @__kstrtabns_sunrpc_cache_update }, section "___ksymtab_gpl+sunrpc_cache_update", align 4
@__kstrtab_cache_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_check = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_check to i32), ptr @__kstrtab_cache_check, ptr @__kstrtabns_cache_check }, section "___ksymtab_gpl+cache_check", align 4
@cache_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@cache_list = internal global %struct.list_head { ptr @cache_list, ptr @cache_list }, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@cache_cleaner = internal global %struct.delayed_work zeroinitializer, align 4
@__kstrtab_sunrpc_init_cache_detail = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_init_cache_detail = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_init_cache_detail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_init_cache_detail to i32), ptr @__kstrtab_sunrpc_init_cache_detail, ptr @__kstrtabns_sunrpc_init_cache_detail }, section "___ksymtab_gpl+sunrpc_init_cache_detail", align 4
@current_detail = internal unnamed_addr global ptr null, align 4
@__kstrtab_sunrpc_destroy_cache_detail = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_destroy_cache_detail = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_destroy_cache_detail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_destroy_cache_detail to i32), ptr @__kstrtab_sunrpc_destroy_cache_detail, ptr @__kstrtabns_sunrpc_destroy_cache_detail }, section "___ksymtab_gpl+sunrpc_destroy_cache_detail", align 4
@.str = private unnamed_addr constant [19 x i8] c"net/sunrpc/cache.c\00", align 1
@__kstrtab_cache_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_flush to i32), ptr @__kstrtab_cache_flush, ptr @__kstrtabns_cache_flush }, section "___ksymtab_gpl+cache_flush", align 4
@__kstrtab_cache_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_purge to i32), ptr @__kstrtab_cache_purge, ptr @__kstrtabns_cache_purge }, section "___ksymtab_gpl+cache_purge", align 4
@cache_defer_lock = internal global %struct.spinlock zeroinitializer, align 4
@cache_defer_list = internal global %struct.list_head { ptr @cache_defer_list, ptr @cache_defer_list }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\\ \0A\09\00", align 1
@__kstrtab_qword_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_qword_add = external dso_local constant [0 x i8], align 1
@__ksymtab_qword_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qword_add to i32), ptr @__kstrtab_qword_add, ptr @__kstrtabns_qword_add }, section "___ksymtab_gpl+qword_add", align 4
@__kstrtab_qword_addhex = external dso_local constant [0 x i8], align 1
@__kstrtabns_qword_addhex = external dso_local constant [0 x i8], align 1
@__ksymtab_qword_addhex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qword_addhex to i32), ptr @__kstrtab_qword_addhex, ptr @__kstrtabns_qword_addhex }, section "___ksymtab_gpl+qword_addhex", align 4
@__kstrtab_sunrpc_cache_pipe_upcall = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_pipe_upcall = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_pipe_upcall = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_pipe_upcall to i32), ptr @__kstrtab_sunrpc_cache_pipe_upcall, ptr @__kstrtabns_sunrpc_cache_pipe_upcall }, section "___ksymtab_gpl+sunrpc_cache_pipe_upcall", align 4
@__kstrtab_sunrpc_cache_pipe_upcall_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_pipe_upcall_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_pipe_upcall_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_pipe_upcall_timeout to i32), ptr @__kstrtab_sunrpc_cache_pipe_upcall_timeout, ptr @__kstrtabns_sunrpc_cache_pipe_upcall_timeout }, section "___ksymtab_gpl+sunrpc_cache_pipe_upcall_timeout", align 4
@__kstrtab_qword_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_qword_get = external dso_local constant [0 x i8], align 1
@__ksymtab_qword_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qword_get to i32), ptr @__kstrtab_qword_get, ptr @__kstrtabns_qword_get }, section "___ksymtab_gpl+qword_get", align 4
@__kstrtab_cache_seq_start_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_seq_start_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_seq_start_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_seq_start_rcu to i32), ptr @__kstrtab_cache_seq_start_rcu, ptr @__kstrtabns_cache_seq_start_rcu }, section "___ksymtab_gpl+cache_seq_start_rcu", align 4
@__kstrtab_cache_seq_next_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_seq_next_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_seq_next_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_seq_next_rcu to i32), ptr @__kstrtab_cache_seq_next_rcu, ptr @__kstrtabns_cache_seq_next_rcu }, section "___ksymtab_gpl+cache_seq_next_rcu", align 4
@__kstrtab_cache_seq_stop_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_seq_stop_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_seq_stop_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_seq_stop_rcu to i32), ptr @__kstrtab_cache_seq_stop_rcu, ptr @__kstrtabns_cache_seq_stop_rcu }, section "___ksymtab_gpl+cache_seq_stop_rcu", align 4
@__kstrtab_cache_register_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_register_net = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_register_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_register_net to i32), ptr @__kstrtab_cache_register_net, ptr @__kstrtabns_cache_register_net }, section "___ksymtab_gpl+cache_register_net", align 4
@__kstrtab_cache_unregister_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_unregister_net = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_unregister_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_unregister_net to i32), ptr @__kstrtab_cache_unregister_net, ptr @__kstrtabns_cache_unregister_net }, section "___ksymtab_gpl+cache_unregister_net", align 4
@__kstrtab_cache_create_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_create_net = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_create_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_create_net to i32), ptr @__kstrtab_cache_create_net, ptr @__kstrtabns_cache_create_net }, section "___ksymtab_gpl+cache_create_net", align 4
@__kstrtab_cache_destroy_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_cache_destroy_net = external dso_local constant [0 x i8], align 1
@__ksymtab_cache_destroy_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cache_destroy_net to i32), ptr @__kstrtab_cache_destroy_net, ptr @__kstrtabns_cache_destroy_net }, section "___ksymtab_gpl+cache_destroy_net", align 4
@cache_file_operations_pipefs = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @cache_read_pipefs, ptr @cache_write_pipefs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cache_poll_pipefs, ptr @cache_ioctl_pipefs, ptr null, ptr null, i32 0, ptr @cache_open_pipefs, ptr null, ptr @cache_release_pipefs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@content_file_operations_pipefs = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @content_open_pipefs, ptr null, ptr @content_release_pipefs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cache_flush_operations_pipefs = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @read_flush_pipefs, ptr @write_flush_pipefs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_flush_pipefs, ptr null, ptr @release_flush_pipefs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_sunrpc_cache_register_pipefs = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_register_pipefs = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_register_pipefs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_register_pipefs to i32), ptr @__kstrtab_sunrpc_cache_register_pipefs, ptr @__kstrtabns_sunrpc_cache_register_pipefs }, section "___ksymtab_gpl+sunrpc_cache_register_pipefs", align 4
@__kstrtab_sunrpc_cache_unregister_pipefs = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_unregister_pipefs = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_unregister_pipefs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_unregister_pipefs to i32), ptr @__kstrtab_sunrpc_cache_unregister_pipefs, ptr @__kstrtabns_sunrpc_cache_unregister_pipefs }, section "___ksymtab_gpl+sunrpc_cache_unregister_pipefs", align 4
@__kstrtab_sunrpc_cache_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_cache_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_cache_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_cache_unhash to i32), ptr @__kstrtab_sunrpc_cache_unhash, ptr @__kstrtabns_sunrpc_cache_unhash }, section "___ksymtab_gpl+sunrpc_cache_unhash", align 4
@__tracepoint_cache_entry_expired = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_cache_entry_update = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cache_entry_make_negative = external dso_local global %struct.tracepoint, align 4
@cache_defer_hash = internal global [512 x %struct.hlist_head] zeroinitializer, align 4
@queue_lock = internal global %struct.spinlock zeroinitializer, align 4
@current_index = internal unnamed_addr global i32 0, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cache_defer_cnt = internal unnamed_addr global i32 0, align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@queue_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @queue_wait, i64 4), ptr getelementptr (i8, ptr @queue_wait, i64 4) } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_cache_entry_upcall = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cache_entry_no_listener = external dso_local global %struct.tracepoint, align 4
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@cache_flush_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @open_flush_procfs, ptr @read_flush_procfs, ptr null, ptr @write_flush_procfs, ptr @no_llseek, ptr @release_flush_procfs, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@cache_channel_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @cache_open_procfs, ptr @cache_read_procfs, ptr null, ptr @cache_write_procfs, ptr @no_llseek, ptr @cache_release_procfs, ptr @cache_poll_procfs, ptr @cache_ioctl_procfs, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@content_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @content_open_procfs, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @content_release_procfs, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@cache_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cache_content_op = internal constant %struct.seq_operations { ptr @cache_seq_start_rcu, ptr @cache_seq_stop_rcu, ptr @cache_seq_next_rcu, ptr @c_show }, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_cache_check, ptr @__ksymtab_cache_create_net, ptr @__ksymtab_cache_destroy_net, ptr @__ksymtab_cache_flush, ptr @__ksymtab_cache_purge, ptr @__ksymtab_cache_register_net, ptr @__ksymtab_cache_seq_next_rcu, ptr @__ksymtab_cache_seq_start_rcu, ptr @__ksymtab_cache_seq_stop_rcu, ptr @__ksymtab_cache_unregister_net, ptr @__ksymtab_qword_add, ptr @__ksymtab_qword_addhex, ptr @__ksymtab_qword_get, ptr @__ksymtab_sunrpc_cache_lookup_rcu, ptr @__ksymtab_sunrpc_cache_pipe_upcall, ptr @__ksymtab_sunrpc_cache_pipe_upcall_timeout, ptr @__ksymtab_sunrpc_cache_register_pipefs, ptr @__ksymtab_sunrpc_cache_unhash, ptr @__ksymtab_sunrpc_cache_unregister_pipefs, ptr @__ksymtab_sunrpc_cache_update, ptr @__ksymtab_sunrpc_destroy_cache_detail, ptr @__ksymtab_sunrpc_init_cache_detail], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.hlist_head, ptr %8, i32 %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 13
  %14 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 16
  br label %15

15:                                               ; preds = %67, %12
  %16 = phi ptr [ %10, %12 ], [ %68, %67 ]
  %17 = load ptr, ptr %13, align 4
  %18 = call i32 %17(ptr noundef nonnull %16, ptr noundef %1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.cache_head, ptr %16, i32 0, i32 4
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cache_head, ptr %16, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %6) #13
  %28 = call i64 @ktime_get_real_seconds() #13
  %29 = load i64, ptr %6, align 8
  %30 = sub i64 %28, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %67, label %32

32:                                               ; preds = %25
  %33 = load volatile i32, ptr %21, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %14, align 8
  %38 = getelementptr inbounds %struct.cache_head, ptr %16, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %36, %32, %20
  %42 = getelementptr inbounds %struct.cache_head, ptr %16, i32 0, i32 3
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %55, %41
  %46 = phi i32 [ %53, %55 ], [ %43, %41 ]
  %47 = add i32 %46, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #13, !srcloc !10
  br label %48

48:                                               ; preds = %48, %45
  %49 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 %46, i32 %47, ptr elementtype(i32) %42) #13, !srcloc !11
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %48

52:                                               ; preds = %48
  %53 = extractvalue { i32, i32 } %49, 1
  %54 = icmp eq i32 %53, %46
  br i1 %54, label %57, label %55, !prof !12

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %57, label %45

57:                                               ; preds = %55, %52, %41
  %58 = phi i32 [ 0, %41 ], [ %46, %52 ], [ 0, %55 ]
  %59 = add i32 %58, 1
  %60 = or i32 %59, %58
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %63, label %62, !prof !12

62:                                               ; preds = %57
  call void @refcount_warn_saturate(ptr noundef %42, i32 noundef 0) #13
  br label %63

63:                                               ; preds = %62, %57
  %64 = icmp eq i32 %58, 0
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %65 = icmp eq ptr %16, null
  %66 = or i1 %65, %64
  br i1 %66, label %71, label %229

67:                                               ; preds = %36, %25, %15
  %68 = load volatile ptr, ptr %16, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %15

70:                                               ; preds = %67, %3
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %71

71:                                               ; preds = %70, %63
  %72 = load ptr, ptr %7, align 8
  %73 = getelementptr %struct.hlist_head, ptr %72, i32 %2
  %74 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = call ptr %75() #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %229, label %78

78:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %5) #13
  %79 = call i64 @ktime_get_real_seconds() #13
  %80 = load i64, ptr %5, align 8
  %81 = sub i64 %79, %80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  store ptr null, ptr %76, align 4
  %82 = getelementptr inbounds %struct.hlist_node, ptr %76, i32 0, i32 1
  store ptr null, ptr %82, align 4
  %83 = getelementptr inbounds %struct.cache_head, ptr %76, i32 0, i32 4
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.cache_head, ptr %76, i32 0, i32 3
  store volatile i32 1, ptr %84, align 4
  %85 = add i64 %81, 120
  %86 = getelementptr inbounds %struct.cache_head, ptr %76, i32 0, i32 1
  store i64 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 16
  %88 = load i64, ptr %87, align 8
  %89 = icmp sgt i64 %81, %88
  %90 = add i64 %88, 1
  %91 = select i1 %89, i64 %81, i64 %90
  %92 = getelementptr inbounds %struct.cache_head, ptr %76, i32 0, i32 2
  store i64 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 14
  %94 = load ptr, ptr %93, align 8
  call void %94(ptr noundef nonnull %76, ptr noundef %1) #13
  %95 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %95) #13
  %96 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 13
  br label %97

97:                                               ; preds = %101, %78
  %98 = phi ptr [ %73, %78 ], [ %99, %101 ]
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %187, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %96, align 4
  %103 = call i32 %102(ptr noundef nonnull %99, ptr noundef %1) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %97, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.cache_head, ptr %99, i32 0, i32 4
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %155, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.cache_head, ptr %99, i32 0, i32 1
  %112 = load i64, ptr %111, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %4) #13
  %113 = call i64 @ktime_get_real_seconds() #13
  %114 = load i64, ptr %4, align 8
  %115 = sub i64 %113, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %126, label %117

117:                                              ; preds = %110
  %118 = load volatile i32, ptr %106, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %155, label %121

121:                                              ; preds = %117
  %122 = load i64, ptr %87, align 8
  %123 = getelementptr inbounds %struct.cache_head, ptr %99, i32 0, i32 2
  %124 = load i64, ptr %123, align 8
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %155, label %126

126:                                              ; preds = %121, %110
  %127 = getelementptr inbounds %struct.hlist_node, ptr %99, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %99, align 4
  store volatile ptr %131, ptr %128, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.hlist_node, ptr %131, i32 0, i32 1
  store volatile ptr %128, ptr %134, align 4
  br label %135

135:                                              ; preds = %133, %130
  store volatile ptr null, ptr %127, align 4
  br label %136

136:                                              ; preds = %135, %126
  call void @_set_bit(i32 noundef 3, ptr noundef %106) #13
  %137 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  %138 = load i32, ptr %137, align 8
  %139 = add i32 %138, -1
  store i32 %139, ptr %137, align 8
  %140 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_expired, i32 0, i32 1), align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %187

142:                                              ; preds = %136
  %143 = tail call ptr @llvm.thread.pointer() #13
  %144 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 5
  %147 = getelementptr i32, ptr @__cpu_online_mask, i32 %146
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %145, 31
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %148
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %187, label %153

153:                                              ; preds = %142
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %154 = call i32 @__traceiter_cache_entry_expired(ptr noundef null, ptr noundef %0, ptr noundef nonnull %99) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %187

155:                                              ; preds = %121, %117, %105
  %156 = getelementptr inbounds %struct.cache_head, ptr %99, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %156) #13, !srcloc !10
  %157 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %156, ptr %156, i32 1, ptr elementtype(i32) %156) #13, !srcloc !16
  %158 = extractvalue { i32, i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160, !prof !17

160:                                              ; preds = %155
  %161 = add i32 %158, 1
  %162 = or i32 %161, %158
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %166, label %164, !prof !12

164:                                              ; preds = %160, %155
  %165 = phi i32 [ 2, %155 ], [ 1, %160 ]
  call void @refcount_warn_saturate(ptr noundef %156, i32 noundef %165) #13
  br label %166

166:                                              ; preds = %164, %160
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %167 = load i16, ptr %95, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr %95, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %169 = load volatile i32, ptr %84, align 4
  %170 = icmp ult i32 %169, 3
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i64, ptr %86, align 8
  %173 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %174 = load i64, ptr %173, align 8
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i64 %172, ptr %173, align 8
  br label %177

177:                                              ; preds = %176, %171, %166
  %178 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %179 = load ptr, ptr %178, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #13, !srcloc !10
  %180 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #13, !srcloc !23
  %181 = extractvalue { i32, i32, i32 } %180, 0
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %186, label %183

183:                                              ; preds = %177
  %184 = icmp sgt i32 %181, 0
  br i1 %184, label %229, label %185, !prof !12

185:                                              ; preds = %183
  call void @refcount_warn_saturate(ptr noundef %84, i32 noundef 3) #13
  br label %229

186:                                              ; preds = %177
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %179(ptr noundef %84) #13
  br label %229

187:                                              ; preds = %153, %142, %136, %97
  %188 = load ptr, ptr %73, align 4
  store ptr %188, ptr %76, align 4
  store volatile ptr %73, ptr %82, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  store volatile ptr %76, ptr %73, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.hlist_node, ptr %188, i32 0, i32 1
  store volatile ptr %76, ptr %191, align 4
  br label %192

192:                                              ; preds = %190, %187
  %193 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  %194 = load i32, ptr %193, align 8
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #13, !srcloc !10
  %196 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #13, !srcloc !16
  %197 = extractvalue { i32, i32, i32 } %196, 0
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199, !prof !17

199:                                              ; preds = %192
  %200 = add i32 %197, 1
  %201 = or i32 %200, %197
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %205, label %203, !prof !12

203:                                              ; preds = %199, %192
  %204 = phi i32 [ 2, %192 ], [ 1, %199 ]
  call void @refcount_warn_saturate(ptr noundef %84, i32 noundef %204) #13
  br label %205

205:                                              ; preds = %203, %199
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %206 = load i16, ptr %95, align 4
  %207 = add i16 %206, 1
  store i16 %207, ptr %95, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br i1 %100, label %229, label %208

208:                                              ; preds = %205
  call fastcc void @cache_fresh_unlocked(ptr noundef nonnull %99, ptr noundef %0) #13
  %209 = getelementptr inbounds %struct.cache_head, ptr %99, i32 0, i32 3
  %210 = load volatile i32, ptr %209, align 4
  %211 = icmp ult i32 %210, 3
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.cache_head, ptr %99, i32 0, i32 1
  %214 = load i64, ptr %213, align 8
  %215 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %216 = load i64, ptr %215, align 8
  %217 = icmp slt i64 %214, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  store i64 %214, ptr %215, align 8
  br label %219

219:                                              ; preds = %218, %212, %208
  %220 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %221 = load ptr, ptr %220, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %209) #13, !srcloc !10
  %222 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %209, ptr %209, i32 1, ptr elementtype(i32) %209) #13, !srcloc !23
  %223 = extractvalue { i32, i32, i32 } %222, 0
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %228, label %225

225:                                              ; preds = %219
  %226 = icmp sgt i32 %223, 0
  br i1 %226, label %229, label %227, !prof !12

227:                                              ; preds = %225
  call void @refcount_warn_saturate(ptr noundef %209, i32 noundef 3) #13
  br label %229

228:                                              ; preds = %219
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %221(ptr noundef %209) #13
  br label %229

229:                                              ; preds = %228, %227, %225, %205, %186, %185, %183, %71, %63
  %230 = phi ptr [ null, %71 ], [ %76, %205 ], [ %99, %183 ], [ %99, %185 ], [ %99, %186 ], [ %76, %225 ], [ %76, %227 ], [ %76, %228 ], [ %16, %63 ]
  ret ptr %230
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sunrpc_cache_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %14) #13
  %15 = load volatile i32, ptr %9, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  tail call fastcc void @cache_entry_update(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  %19 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %8) #13
  %21 = call i64 @ktime_get_real_seconds() #13
  %22 = load i64, ptr %8, align 8
  %23 = sub i64 %21, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  %24 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = icmp sgt i64 %23, %25
  %27 = add i64 %25, 1
  %28 = select i1 %26, i64 %23, i64 %27
  %29 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 1
  store i64 %20, ptr %29, align 8
  %30 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 2
  store i64 %28, ptr %30, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !26
  call void @_set_bit(i32 noundef 0, ptr noundef %9) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %31 = load i16, ptr %14, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call fastcc void @cache_fresh_unlocked(ptr noundef %2, ptr noundef %0)
  br label %140

33:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %34 = load i16, ptr %14, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %36

36:                                               ; preds = %33, %4
  %37 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr %38() #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 3
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %49 = load i64, ptr %48, align 8
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 %47, ptr %48, align 8
  br label %52

52:                                               ; preds = %51, %45, %41
  %53 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #13, !srcloc !10
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #13, !srcloc !23
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %140, label %60, !prof !12

60:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef 3) #13
  br label %140

61:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void %54(ptr noundef %42) #13
  br label %140

62:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %7) #13
  %63 = call i64 @ktime_get_real_seconds() #13
  %64 = load i64, ptr %7, align 8
  %65 = sub i64 %63, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  store ptr null, ptr %39, align 4
  %66 = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  store ptr null, ptr %66, align 4
  %67 = getelementptr inbounds %struct.cache_head, ptr %39, i32 0, i32 4
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.cache_head, ptr %39, i32 0, i32 3
  store volatile i32 1, ptr %68, align 4
  %69 = add i64 %65, 120
  %70 = getelementptr inbounds %struct.cache_head, ptr %39, i32 0, i32 1
  store i64 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 16
  %72 = load i64, ptr %71, align 8
  %73 = icmp sgt i64 %65, %72
  %74 = add i64 %72, 1
  %75 = select i1 %73, i64 %65, i64 %74
  %76 = getelementptr inbounds %struct.cache_head, ptr %39, i32 0, i32 2
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 14
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr noundef nonnull %39, ptr noundef %2) #13
  %79 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %79) #13
  call fastcc void @cache_entry_update(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %1)
  %80 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr %struct.hlist_head, ptr %81, i32 %3
  %83 = load ptr, ptr %82, align 4
  store volatile ptr %83, ptr %39, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %62
  %86 = getelementptr inbounds %struct.hlist_node, ptr %83, i32 0, i32 1
  store volatile ptr %39, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %62
  store volatile ptr %39, ptr %82, align 4
  store volatile ptr %82, ptr %66, align 4
  %88 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #13, !srcloc !10
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #13, !srcloc !16
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94, !prof !17

94:                                               ; preds = %87
  %95 = add i32 %92, 1
  %96 = or i32 %95, %92
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %100, label %98, !prof !12

98:                                               ; preds = %94, %87
  %99 = phi i32 [ 2, %87 ], [ 1, %94 ]
  call void @refcount_warn_saturate(ptr noundef %68, i32 noundef %99) #13
  br label %100

100:                                              ; preds = %98, %94
  %101 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %102 = load i64, ptr %101, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %6) #13
  %103 = call i64 @ktime_get_real_seconds() #13
  %104 = load i64, ptr %6, align 8
  %105 = sub i64 %103, %104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %106 = load i64, ptr %71, align 8
  %107 = icmp sgt i64 %105, %106
  %108 = add i64 %106, 1
  %109 = select i1 %107, i64 %105, i64 %108
  store i64 %102, ptr %70, align 8
  store i64 %109, ptr %76, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !26
  call void @_set_bit(i32 noundef 0, ptr noundef %67) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %5) #13
  %110 = call i64 @ktime_get_real_seconds() #13
  %111 = load i64, ptr %5, align 8
  %112 = sub i64 %110, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %113 = load i64, ptr %71, align 8
  %114 = icmp sgt i64 %112, %113
  %115 = add i64 %113, 1
  %116 = select i1 %114, i64 %112, i64 %115
  %117 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 1
  store i64 0, ptr %117, align 8
  %118 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 2
  store i64 %116, ptr %118, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !26
  call void @_set_bit(i32 noundef 0, ptr noundef %9) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %119 = load i16, ptr %79, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %79, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call fastcc void @cache_fresh_unlocked(ptr noundef nonnull %39, ptr noundef %0)
  call fastcc void @cache_fresh_unlocked(ptr noundef %2, ptr noundef %0)
  %121 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 3
  %122 = load volatile i32, ptr %121, align 4
  %123 = icmp ult i32 %122, 3
  br i1 %123, label %124, label %130

124:                                              ; preds = %100
  %125 = load i64, ptr %117, align 8
  %126 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %127 = load i64, ptr %126, align 8
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i64 %125, ptr %126, align 8
  br label %130

130:                                              ; preds = %129, %124, %100
  %131 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %132 = load ptr, ptr %131, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #13, !srcloc !10
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #13, !srcloc !23
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = icmp sgt i32 %134, 0
  br i1 %137, label %140, label %138, !prof !12

138:                                              ; preds = %136
  call void @refcount_warn_saturate(ptr noundef %121, i32 noundef 3) #13
  br label %140

139:                                              ; preds = %130
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %132(ptr noundef %121) #13
  br label %140

140:                                              ; preds = %139, %138, %136, %61, %60, %58, %18
  %141 = phi ptr [ %2, %18 ], [ null, %58 ], [ null, %60 ], [ null, %61 ], [ %39, %136 ], [ %39, %138 ], [ %39, %139 ]
  ret ptr %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cache_entry_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 4
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %1, ptr noundef %2) #13
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_update, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %25 = tail call i32 @__traceiter_cache_entry_update(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  br label %43

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %27) #13
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_make_negative, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #13
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %42 = tail call i32 @__traceiter_cache_entry_make_negative(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %43

43:                                               ; preds = %41, %30, %26, %24, %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cache_fresh_unlocked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.cache_head, ptr %0, i32 0, i32 4
  %5 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %4) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %2
  tail call fastcc void @cache_revisit_request(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store volatile ptr %3, ptr %3, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %9 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %38, label %12

12:                                               ; preds = %36, %7
  %13 = phi ptr [ %14, %36 ], [ %10, %7 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cache_queue, ptr %13, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cache_request, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %4, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cache_request, ptr %13, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  store volatile ptr %14, ptr %32, align 4
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %13, ptr %35, align 4
  store ptr %34, ptr %13, align 4
  store ptr %3, ptr %31, align 4
  store volatile ptr %13, ptr %3, align 8
  br label %36

36:                                               ; preds = %30, %26, %18, %12
  %37 = icmp eq ptr %14, %9
  br i1 %37, label %38, label %12

38:                                               ; preds = %36, %22, %7
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %39 = load i16, ptr @queue_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %41 = load volatile ptr, ptr %3, align 8
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %77, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 18
  %45 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 5
  br label %46

46:                                               ; preds = %72, %43
  %47 = phi ptr [ %41, %43 ], [ %75, %72 ]
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  %52 = getelementptr inbounds %struct.cache_request, ptr %47, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.cache_head, ptr %53, i32 0, i32 3
  %55 = load volatile i32, ptr %54, align 4
  %56 = icmp ult i32 %55, 3
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.cache_head, ptr %53, i32 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %44, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i64 %59, ptr %44, align 8
  br label %63

63:                                               ; preds = %62, %57, %46
  %64 = load ptr, ptr %45, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #13, !srcloc !10
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #13, !srcloc !23
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !12

70:                                               ; preds = %68
  call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 3) #13
  br label %72

71:                                               ; preds = %63
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %64(ptr noundef %54) #13
  br label %72

72:                                               ; preds = %71, %70, %68
  %73 = getelementptr inbounds %struct.cache_request, ptr %47, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  call void @kfree(ptr noundef %74) #13
  call void @kfree(ptr noundef %47) #13
  %75 = load volatile ptr, ptr %3, align 8
  %76 = icmp eq ptr %75, %3
  br i1 %76, label %77, label %46

77:                                               ; preds = %72, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %78

78:                                               ; preds = %77, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cache_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.thread_deferred_req, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 4
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  br label %17

17:                                               ; preds = %16, %12, %3
  %18 = phi i32 [ 0, %16 ], [ -11, %3 ], [ -2, %12 ]
  %19 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = sub i64 %20, %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %7) #13
  %24 = call i64 @ktime_get_real_seconds() #13
  %25 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  %26 = load i64, ptr %21, align 8
  %27 = add i64 %25, %26
  %28 = sub i64 %24, %27
  %29 = icmp eq ptr %2, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br i1 %11, label %227, label %224

31:                                               ; preds = %17
  br i1 %11, label %38, label %32

32:                                               ; preds = %31
  %33 = load i64, ptr %19, align 8
  %34 = icmp ne i64 %33, 0
  %35 = sdiv i64 %23, 2
  %36 = icmp sgt i64 %28, %35
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %224

38:                                               ; preds = %32, %31
  %39 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = call i32 %40(ptr noundef %0, ptr noundef %1) #13
  switch i32 %41, label %86 [
    i32 -22, label %42
    i32 -11, label %85
  ]

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %43) #13
  %44 = load volatile i32, ptr %8, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load volatile i32, ptr %8, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  br label %81

52:                                               ; preds = %42
  call void @_set_bit(i32 noundef 1, ptr noundef %8) #13
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_make_negative, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = tail call ptr @llvm.thread.pointer() #13
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %67 = call i32 @__traceiter_cache_entry_make_negative(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %68

68:                                               ; preds = %66, %55, %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %6) #13
  %69 = call i64 @ktime_get_real_seconds() #13
  %70 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %71 = add i64 %69, 120
  %72 = sub i64 %71, %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %5) #13
  %73 = call i64 @ktime_get_real_seconds() #13
  %74 = load i64, ptr %5, align 8
  %75 = sub i64 %73, %74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %76 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 16
  %77 = load i64, ptr %76, align 8
  %78 = icmp sgt i64 %75, %77
  %79 = add i64 %77, 1
  %80 = select i1 %78, i64 %75, i64 %79
  store i64 %72, ptr %19, align 8
  store i64 %80, ptr %21, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !26
  call void @_set_bit(i32 noundef 0, ptr noundef %8) #13
  br label %81

81:                                               ; preds = %68, %51, %47
  %82 = phi i32 [ -2, %68 ], [ -2, %47 ], [ 0, %51 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %83 = load i16, ptr %43, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %43, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call fastcc void @cache_fresh_unlocked(ptr noundef %1, ptr noundef %0) #13
  br label %224

85:                                               ; preds = %38
  call fastcc void @cache_fresh_unlocked(ptr noundef %1, ptr noundef %0)
  br label %86

86:                                               ; preds = %85, %38
  br i1 %11, label %87, label %224

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.cache_req, ptr %2, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %145, label %91

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #13
  %92 = getelementptr inbounds %struct.thread_deferred_req, ptr %4, i32 0, i32 1
  %93 = getelementptr inbounds %struct.thread_deferred_req, ptr %4, i32 0, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false) #13
  call void @__init_swait_queue_head(ptr noundef %93, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #13
  %94 = getelementptr inbounds %struct.cache_deferred_req, ptr %4, i32 0, i32 4
  store ptr @cache_restart_thread, ptr %94, align 4
  %95 = getelementptr inbounds %struct.cache_deferred_req, ptr %4, i32 0, i32 2
  store ptr %1, ptr %95, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @cache_defer_lock) #13
  %96 = ptrtoint ptr %1 to i32
  %97 = lshr i32 %96, 4
  %98 = lshr i32 %96, 13
  %99 = xor i32 %97, %98
  %100 = and i32 %99, 511
  %101 = getelementptr inbounds %struct.cache_deferred_req, ptr %4, i32 0, i32 1
  store volatile ptr %101, ptr %101, align 4
  %102 = getelementptr inbounds %struct.cache_deferred_req, ptr %4, i32 0, i32 1, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr [512 x %struct.hlist_head], ptr @cache_defer_hash, i32 0, i32 %100
  %104 = load ptr, ptr %103, align 4
  store volatile ptr %104, ptr %4, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.hlist_node, ptr %104, i32 0, i32 1
  store volatile ptr %4, ptr %107, align 4
  br label %108

108:                                              ; preds = %106, %91
  store volatile ptr %4, ptr %103, align 4
  %109 = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  store volatile ptr %103, ptr %109, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %110 = load i16, ptr @cache_defer_lock, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %112 = load volatile i32, ptr %8, align 4
  %113 = and i32 %112, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = load i32, ptr %88, align 4
  %117 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %92, i32 noundef %116) #13
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %141

119:                                              ; preds = %115, %108
  call void @_raw_spin_lock(ptr noundef nonnull @cache_defer_lock) #13
  %120 = load ptr, ptr %109, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %138, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %4, align 4
  store volatile ptr %123, ptr %120, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.hlist_node, ptr %123, i32 0, i32 1
  store volatile ptr %120, ptr %126, align 4
  br label %127

127:                                              ; preds = %125, %122
  store ptr null, ptr %4, align 4
  store ptr null, ptr %109, align 4
  %128 = load volatile ptr, ptr %101, align 4
  %129 = icmp eq ptr %128, %101
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %102, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  store ptr %131, ptr %132, align 4
  store volatile ptr %128, ptr %131, align 4
  store volatile ptr %101, ptr %101, align 4
  store ptr %101, ptr %102, align 4
  %133 = load i32, ptr @cache_defer_cnt, align 4
  %134 = add i32 %133, -1
  store i32 %134, ptr @cache_defer_cnt, align 4
  br label %135

135:                                              ; preds = %130, %127
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %136 = load i16, ptr @cache_defer_lock, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %141

138:                                              ; preds = %119
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %139 = load i16, ptr @cache_defer_lock, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call void @wait_for_completion(ptr noundef %92) #13
  br label %141

141:                                              ; preds = %138, %135, %115
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #13
  %142 = load volatile i32, ptr %8, align 4
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %215, label %145

145:                                              ; preds = %141, %87
  %146 = load ptr, ptr %2, align 4
  %147 = call ptr %146(ptr noundef nonnull %2) #13
  %148 = icmp eq ptr %147, null
  br i1 %148, label %215, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.cache_deferred_req, ptr %147, i32 0, i32 2
  store ptr %1, ptr %150, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @cache_defer_lock) #13
  %151 = ptrtoint ptr %1 to i32
  %152 = lshr i32 %151, 4
  %153 = lshr i32 %151, 13
  %154 = xor i32 %152, %153
  %155 = and i32 %154, 511
  %156 = getelementptr inbounds %struct.cache_deferred_req, ptr %147, i32 0, i32 1
  store volatile ptr %156, ptr %156, align 4
  %157 = getelementptr inbounds %struct.cache_deferred_req, ptr %147, i32 0, i32 1, i32 1
  store ptr %156, ptr %157, align 4
  %158 = getelementptr [512 x %struct.hlist_head], ptr @cache_defer_hash, i32 0, i32 %155
  %159 = load ptr, ptr %158, align 4
  store volatile ptr %159, ptr %147, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.hlist_node, ptr %159, i32 0, i32 1
  store volatile ptr %147, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %149
  store volatile ptr %147, ptr %158, align 4
  %164 = getelementptr inbounds %struct.hlist_node, ptr %147, i32 0, i32 1
  store volatile ptr %158, ptr %164, align 4
  %165 = load i32, ptr @cache_defer_cnt, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr @cache_defer_cnt, align 4
  %167 = load ptr, ptr @cache_defer_list, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %156, ptr %168, align 4
  store ptr %167, ptr %156, align 4
  store ptr @cache_defer_list, ptr %157, align 4
  store volatile ptr %156, ptr @cache_defer_list, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %169 = load i16, ptr @cache_defer_lock, align 4
  %170 = add i16 %169, 1
  store i16 %170, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %171 = load volatile i32, ptr %8, align 4
  %172 = and i32 %171, 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  call fastcc void @cache_revisit_request(ptr noundef %1) #13
  br label %175

175:                                              ; preds = %174, %163
  %176 = load i32, ptr @cache_defer_cnt, align 4
  %177 = icmp slt i32 %176, 301
  br i1 %177, label %227, label %178

178:                                              ; preds = %175
  call void @_raw_spin_lock(ptr noundef nonnull @cache_defer_lock) #13
  %179 = load i32, ptr @cache_defer_cnt, align 4
  %180 = icmp sgt i32 %179, 300
  br i1 %180, label %181, label %207

181:                                              ; preds = %178
  %182 = call i32 @prandom_u32() #13
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  %185 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cache_defer_list, i32 0, i32 1), align 4
  %186 = load ptr, ptr @cache_defer_list, align 4
  %187 = select i1 %184, ptr %185, ptr %186
  %188 = getelementptr i8, ptr %187, i32 -8
  %189 = getelementptr i8, ptr %187, i32 -4
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %181
  %193 = load ptr, ptr %188, align 4
  store volatile ptr %193, ptr %190, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.hlist_node, ptr %193, i32 0, i32 1
  store volatile ptr %190, ptr %196, align 4
  br label %197

197:                                              ; preds = %195, %192
  store ptr null, ptr %188, align 4
  store ptr null, ptr %189, align 4
  br label %198

198:                                              ; preds = %197, %181
  %199 = load volatile ptr, ptr %187, align 4
  %200 = icmp eq ptr %199, %187
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = getelementptr i8, ptr %187, i32 4
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  store ptr %203, ptr %204, align 4
  store volatile ptr %199, ptr %203, align 4
  store volatile ptr %187, ptr %187, align 4
  store ptr %187, ptr %202, align 4
  %205 = load i32, ptr @cache_defer_cnt, align 4
  %206 = add i32 %205, -1
  store i32 %206, ptr @cache_defer_cnt, align 4
  br label %207

207:                                              ; preds = %201, %198, %178
  %208 = phi ptr [ null, %178 ], [ %188, %198 ], [ %188, %201 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %209 = load i16, ptr @cache_defer_lock, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %211 = icmp eq ptr %208, null
  br i1 %211, label %227, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.cache_deferred_req, ptr %208, i32 0, i32 4
  %214 = load ptr, ptr %213, align 4
  call void %214(ptr noundef nonnull %208, i32 noundef 1) #13
  br label %227

215:                                              ; preds = %145, %141
  %216 = load volatile i32, ptr %8, align 4
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %215
  %220 = load volatile i32, ptr %8, align 4
  %221 = and i32 %220, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  br label %248

224:                                              ; preds = %86, %81, %32, %30
  %225 = phi i32 [ %18, %86 ], [ %18, %32 ], [ %82, %81 ], [ %18, %30 ]
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %248, label %227

227:                                              ; preds = %224, %219, %215, %212, %207, %175, %30
  %228 = phi i32 [ %225, %224 ], [ -110, %215 ], [ -11, %175 ], [ -11, %207 ], [ -11, %212 ], [ -2, %219 ], [ -2, %30 ]
  %229 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  %230 = load volatile i32, ptr %229, align 4
  %231 = icmp ult i32 %230, 3
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i64, ptr %19, align 8
  %234 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %235 = load i64, ptr %234, align 8
  %236 = icmp slt i64 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  store i64 %233, ptr %234, align 8
  br label %238

238:                                              ; preds = %237, %232, %227
  %239 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %240 = load ptr, ptr %239, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %229) #13, !srcloc !10
  %241 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %229, ptr %229, i32 1, ptr elementtype(i32) %229) #13, !srcloc !23
  %242 = extractvalue { i32, i32, i32 } %241, 0
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %247, label %244

244:                                              ; preds = %238
  %245 = icmp sgt i32 %242, 0
  br i1 %245, label %248, label %246, !prof !12

246:                                              ; preds = %244
  call void @refcount_warn_saturate(ptr noundef %229, i32 noundef 3) #13
  br label %248

247:                                              ; preds = %238
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %240(ptr noundef %229) #13
  br label %248

248:                                              ; preds = %247, %246, %244, %224, %223
  %249 = phi i32 [ 0, %224 ], [ %228, %244 ], [ %228, %246 ], [ %228, %247 ], [ 0, %223 ]
  ret i32 %249
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sunrpc_init_cache_detail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 20
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 20, i32 1
  store ptr %3, ptr %4, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cache_list_lock) #13
  %5 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 21
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 22
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 23
  store i64 -1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr @cache_list, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %13 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 17, i32 1
  store ptr @cache_list, ptr %13, align 4
  store volatile ptr %10, ptr @cache_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %14 = load i16, ptr @cache_list_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @cache_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %16 = load ptr, ptr @system_power_efficient_wq, align 4
  %17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %16, ptr noundef nonnull @cache_cleaner, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sunrpc_destroy_cache_detail(ptr noundef %0) #0 {
  tail call void @cache_purge(ptr noundef %0)
  tail call void @_raw_spin_lock(ptr noundef nonnull @cache_list_lock) #13
  %2 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %3 = load ptr, ptr @current_detail, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr null, ptr @current_detail, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 17
  %8 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 17, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %12 = load i16, ptr %2, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %14 = load i16, ptr @cache_list_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @cache_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %16 = load volatile ptr, ptr @cache_list, align 4
  %17 = icmp eq ptr %16, @cache_list
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @cache_cleaner) #13
  br label %20

20:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_purge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %13 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  br label %17

14:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %15 = load i16, ptr %2, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %71

17:                                               ; preds = %64, %10
  %18 = phi i32 [ %8, %10 ], [ %65, %64 ]
  %19 = phi i32 [ 0, %10 ], [ %66, %64 ]
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr %struct.hlist_head, ptr %20, i32 %19
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %59, %17
  %25 = phi ptr [ %60, %59 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 4
  store volatile ptr %30, ptr %27, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  store volatile ptr %27, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %29
  store volatile ptr null, ptr %26, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = getelementptr inbounds %struct.cache_head, ptr %25, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %36) #13
  %37 = load i32, ptr %3, align 8
  %38 = add i32 %37, -1
  store i32 %38, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %39 = load i16, ptr %2, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call fastcc void @cache_fresh_unlocked(ptr noundef nonnull %25, ptr noundef %0) #13
  %41 = getelementptr inbounds %struct.cache_head, ptr %25, i32 0, i32 3
  %42 = load volatile i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.cache_head, ptr %25, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = load i64, ptr %12, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i64 %46, ptr %12, align 8
  br label %50

50:                                               ; preds = %49, %44, %35
  %51 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #13, !srcloc !10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #13, !srcloc !23
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = icmp sgt i32 %53, 0
  br i1 %56, label %59, label %57, !prof !12

57:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #13
  br label %59

58:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void %51(ptr noundef %41) #13
  br label %59

59:                                               ; preds = %58, %57, %55
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %60 = load volatile ptr, ptr %21, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %24

62:                                               ; preds = %59
  %63 = load i32, ptr %7, align 4
  br label %64

64:                                               ; preds = %62, %17
  %65 = phi i32 [ %63, %62 ], [ %18, %17 ]
  %66 = add nuw nsw i32 %19, 1
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %17, label %68

68:                                               ; preds = %64, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %69 = load i16, ptr %2, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %71

71:                                               ; preds = %68, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_flush() #0 {
  %1 = tail call fastcc i32 @cache_clean()
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %6

3:                                                ; preds = %6, %0
  %4 = tail call fastcc i32 @cache_clean()
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %14, label %10

6:                                                ; preds = %6, %0
  %7 = tail call i32 @__cond_resched() #13
  %8 = tail call fastcc i32 @cache_clean()
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %3, label %6

10:                                               ; preds = %10, %3
  %11 = tail call i32 @__cond_resched() #13
  %12 = tail call fastcc i32 @cache_clean()
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cache_clean() unnamed_addr #0 {
  %1 = alloca %struct.timespec64, align 8
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @cache_list_lock) #13
  %4 = load ptr, ptr @current_detail, align 4
  br label %5

5:                                                ; preds = %43, %0
  %6 = phi ptr [ %4, %0 ], [ %44, %43 ]
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @current_index, align 4
  %10 = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  br label %45

16:                                               ; preds = %8, %5
  %17 = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 17
  %18 = select i1 %7, ptr @cache_list, ptr %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @cache_list
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  store ptr null, ptr @current_detail, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %22 = load i16, ptr @cache_list_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @cache_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %169

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %19, i32 -72
  store ptr %25, ptr @current_detail, align 4
  %26 = getelementptr i8, ptr %19, i32 8
  %27 = load i64, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %3) #13
  %28 = call i64 @ktime_get_real_seconds() #13
  %29 = load i64, ptr %3, align 8
  %30 = sub i64 %28, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load ptr, ptr @current_detail, align 4
  %34 = getelementptr inbounds %struct.cache_detail, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr @current_index, align 4
  br label %43

36:                                               ; preds = %24
  store i32 0, ptr @current_index, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %2) #13
  %37 = call i64 @ktime_get_real_seconds() #13
  %38 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  %39 = add i64 %37, 1800
  %40 = sub i64 %39, %38
  %41 = load ptr, ptr @current_detail, align 4
  %42 = getelementptr inbounds %struct.cache_detail, ptr %41, i32 0, i32 18
  store i64 %40, ptr %42, align 8
  br label %43

43:                                               ; preds = %36, %32
  %44 = phi ptr [ %41, %36 ], [ %33, %32 ]
  br label %5

45:                                               ; preds = %50, %13
  %46 = phi i32 [ %9, %13 ], [ %51, %50 ]
  %47 = getelementptr %struct.hlist_head, ptr %15, i32 %46
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = add i32 %46, 1
  store i32 %51, ptr @current_index, align 4
  %52 = icmp eq i32 %51, %11
  br i1 %52, label %166, label %45

53:                                               ; preds = %45
  %54 = icmp slt i32 %46, %11
  br i1 %54, label %55, label %166

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %56) #13
  %57 = load ptr, ptr @current_detail, align 4
  %58 = getelementptr inbounds %struct.cache_detail, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr @current_index, align 4
  %61 = getelementptr %struct.hlist_head, ptr %59, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %129, label %64

64:                                               ; preds = %127, %55
  %65 = phi ptr [ %128, %127 ], [ %57, %55 ]
  %66 = phi ptr [ %67, %127 ], [ %62, %55 ]
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.cache_detail, ptr %65, i32 0, i32 18
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds %struct.cache_head, ptr %66, i32 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = icmp sgt i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = add nsw i64 %71, 1
  store i64 %74, ptr %68, align 8
  %75 = load i64, ptr %70, align 8
  br label %76

76:                                               ; preds = %73, %64
  %77 = phi i64 [ %75, %73 ], [ %71, %64 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %1) #13
  %78 = call i64 @ktime_get_real_seconds() #13
  %79 = load i64, ptr %1, align 8
  %80 = sub i64 %78, %79
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #13
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.cache_head, ptr %66, i32 0, i32 4
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %125, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.cache_detail, ptr %65, i32 0, i32 16
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds %struct.cache_head, ptr %66, i32 0, i32 2
  %91 = load i64, ptr %90, align 8
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %125, label %93

93:                                               ; preds = %87, %76
  %94 = load ptr, ptr @current_detail, align 4
  %95 = getelementptr inbounds %struct.hlist_node, ptr %66, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %66, align 4
  store volatile ptr %99, ptr %96, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.hlist_node, ptr %99, i32 0, i32 1
  store volatile ptr %96, ptr %102, align 4
  br label %103

103:                                              ; preds = %101, %98
  store volatile ptr null, ptr %95, align 4
  br label %104

104:                                              ; preds = %103, %93
  %105 = getelementptr inbounds %struct.cache_head, ptr %66, i32 0, i32 4
  call void @_set_bit(i32 noundef 3, ptr noundef %105) #13
  %106 = getelementptr inbounds %struct.cache_detail, ptr %94, i32 0, i32 19
  %107 = load i32, ptr %106, align 8
  %108 = add i32 %107, -1
  store i32 %108, ptr %106, align 8
  %109 = load ptr, ptr @current_detail, align 4
  %110 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_expired, i32 0, i32 1), align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %104
  %113 = tail call ptr @llvm.thread.pointer() #13
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 8
  %116 = lshr i32 %115, 5
  %117 = getelementptr i32, ptr @__cpu_online_mask, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %115, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %112
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %124 = call i32 @__traceiter_cache_entry_expired(ptr noundef null, ptr noundef %109, ptr noundef nonnull %66) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %129

125:                                              ; preds = %87, %82
  %126 = icmp eq ptr %67, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr @current_detail, align 4
  br label %64

129:                                              ; preds = %125, %123, %112, %104, %55
  %130 = phi ptr [ %66, %104 ], [ %66, %112 ], [ %66, %123 ], [ null, %55 ], [ null, %125 ]
  %131 = phi i1 [ false, %104 ], [ false, %112 ], [ false, %123 ], [ true, %55 ], [ true, %125 ]
  %132 = phi i32 [ 1, %104 ], [ 1, %112 ], [ 1, %123 ], [ 0, %55 ], [ 0, %125 ]
  %133 = load ptr, ptr @current_detail, align 4
  %134 = getelementptr inbounds %struct.cache_detail, ptr %133, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %135 = load i16, ptr %134, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %134, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %137 = load ptr, ptr @current_detail, align 4
  br i1 %131, label %138, label %143

138:                                              ; preds = %129
  %139 = load i32, ptr @current_index, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr @current_index, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %141 = load i16, ptr @cache_list_lock, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr @cache_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %169

143:                                              ; preds = %129
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %144 = load i16, ptr @cache_list_lock, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr @cache_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call fastcc void @cache_fresh_unlocked(ptr noundef nonnull %130, ptr noundef %137) #13
  %146 = getelementptr inbounds %struct.cache_head, ptr %130, i32 0, i32 3
  %147 = load volatile i32, ptr %146, align 4
  %148 = icmp ult i32 %147, 3
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.cache_head, ptr %130, i32 0, i32 1
  %151 = load i64, ptr %150, align 8
  %152 = getelementptr inbounds %struct.cache_detail, ptr %137, i32 0, i32 18
  %153 = load i64, ptr %152, align 8
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i64 %151, ptr %152, align 8
  br label %156

156:                                              ; preds = %155, %149, %143
  %157 = getelementptr inbounds %struct.cache_detail, ptr %137, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #13, !srcloc !10
  %159 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 1, ptr elementtype(i32) %146) #13, !srcloc !23
  %160 = extractvalue { i32, i32, i32 } %159, 0
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = icmp sgt i32 %160, 0
  br i1 %163, label %169, label %164, !prof !12

164:                                              ; preds = %162
  call void @refcount_warn_saturate(ptr noundef %146, i32 noundef 3) #13
  br label %169

165:                                              ; preds = %156
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %158(ptr noundef %146) #13
  br label %169

166:                                              ; preds = %53, %50
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %167 = load i16, ptr @cache_list_lock, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr @cache_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %169

169:                                              ; preds = %166, %165, %164, %162, %138, %21
  %170 = phi i32 [ -1, %21 ], [ 0, %166 ], [ %132, %138 ], [ %132, %162 ], [ %132, %164 ], [ %132, %165 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_clean_deferred(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store volatile ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @cache_defer_lock) #13
  %4 = load ptr, ptr @cache_defer_list, align 4
  %5 = icmp eq ptr %4, @cache_defer_list
  br i1 %5, label %38, label %6

6:                                                ; preds = %36, %1
  %7 = phi ptr [ %9, %36 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -8
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %7, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 -4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 4
  store volatile ptr %18, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %15, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17
  store ptr null, ptr %8, align 4
  store ptr null, ptr %14, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load volatile ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %7, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %24, ptr %28, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %27, align 4
  %30 = load i32, ptr @cache_defer_cnt, align 4
  %31 = add i32 %30, -1
  store i32 %31, ptr @cache_defer_cnt, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %7, ptr %34, align 4
  store ptr %33, ptr %7, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %2, ptr %35, align 4
  store volatile ptr %7, ptr %2, align 8
  br label %36

36:                                               ; preds = %32, %6
  %37 = icmp eq ptr %9, @cache_defer_list
  br i1 %37, label %38, label %6

38:                                               ; preds = %36, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %39 = load i16, ptr @cache_defer_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %41 = load volatile ptr, ptr %2, align 8
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %54, label %43

43:                                               ; preds = %43, %38
  %44 = phi ptr [ %52, %43 ], [ %41, %38 ]
  %45 = getelementptr i8, ptr %44, i32 -8
  %46 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %46, align 4
  %50 = getelementptr i8, ptr %44, i32 16
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %45, i32 noundef 1) #13
  %52 = load volatile ptr, ptr %2, align 8
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %43

54:                                               ; preds = %43, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qword_add(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strlen(ptr noundef %2) #13
  %9 = tail call i32 @string_escape_mem(ptr noundef %2, i32 noundef %8, ptr noundef %4, i32 noundef %5, i32 noundef 8, ptr noundef nonnull @.str.1) #13
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %4, i32 %5
  br label %18

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %4, i32 %9
  %15 = getelementptr i8, ptr %14, i32 1
  store i8 32, ptr %14, align 1
  %16 = xor i32 %9, -1
  %17 = add i32 %5, %16
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi ptr [ %12, %11 ], [ %15, %13 ]
  %20 = phi i32 [ -1, %11 ], [ %17, %13 ]
  store ptr %19, ptr %0, align 4
  store i32 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qword_addhex(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = load ptr, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %4
  %9 = icmp ugt i32 %6, 2
  br i1 %9, label %10, label %39

10:                                               ; preds = %8
  %11 = getelementptr i8, ptr %5, i32 1
  store i8 92, ptr %5, align 1
  store i8 120, ptr %11, align 1
  %12 = getelementptr i8, ptr %5, i32 2
  %13 = add nsw i32 %6, -2
  %14 = icmp ne i32 %3, 0
  %15 = icmp ugt i32 %13, 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %39

17:                                               ; preds = %17, %10
  %18 = phi i32 [ %35, %17 ], [ %13, %10 ]
  %19 = phi ptr [ %34, %17 ], [ %12, %10 ]
  %20 = phi ptr [ %19, %17 ], [ %5, %10 ]
  %21 = phi i32 [ %33, %17 ], [ %3, %10 ]
  %22 = phi ptr [ %23, %17 ], [ %2, %10 ]
  %23 = getelementptr i8, ptr %22, i32 1
  %24 = load i8, ptr %22, align 1
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %25, 4
  %27 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr i8, ptr %20, i32 3
  store i8 %28, ptr %19, align 1
  %30 = and i32 %25, 15
  %31 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %29, align 1
  %33 = add i32 %21, -1
  %34 = getelementptr i8, ptr %19, i32 2
  %35 = add nsw i32 %18, -2
  %36 = icmp ne i32 %33, 0
  %37 = icmp ugt i32 %35, 1
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %17, label %39

39:                                               ; preds = %17, %10, %8
  %40 = phi i32 [ %3, %8 ], [ %3, %10 ], [ %33, %17 ]
  %41 = phi ptr [ %5, %8 ], [ %12, %10 ], [ %34, %17 ]
  %42 = phi i32 [ %6, %8 ], [ %13, %10 ], [ %35, %17 ]
  %43 = icmp ne i32 %40, 0
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = getelementptr i8, ptr %41, i32 1
  store i8 32, ptr %41, align 1
  %48 = add nsw i32 %42, -1
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi ptr [ %47, %46 ], [ %41, %39 ]
  %51 = phi i32 [ %48, %46 ], [ -1, %39 ]
  store ptr %50, ptr %0, align 4
  store i32 %51, ptr %1, align 4
  br label %52

52:                                               ; preds = %49, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunrpc_cache_pipe_upcall(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 4
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %66

6:                                                ; preds = %2
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4096) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 28) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cache_queue, ptr %16, i32 0, i32 1
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.cache_request, ptr %16, i32 0, i32 2
  store ptr %12, ptr %20, align 8
  %21 = getelementptr inbounds %struct.cache_request, ptr %16, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cache_request, ptr %16, i32 0, i32 4
  store i32 0, ptr %22, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %23 = load volatile i32, ptr %3, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #13, !srcloc !16
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !17

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !12

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #13
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.cache_request, ptr %16, i32 0, i32 1
  store ptr %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 20
  %40 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 20, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %16, ptr %40, align 4
  store ptr %39, ptr %16, align 8
  %42 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %16, ptr %41, align 4
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_upcall, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = tail call ptr @llvm.thread.pointer() #13
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %57 = tail call i32 @__traceiter_cache_entry_upcall(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %58

58:                                               ; preds = %56, %45, %37, %18
  %59 = phi i32 [ -11, %18 ], [ 0, %37 ], [ 0, %45 ], [ 0, %56 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %60 = load i16, ptr @queue_lock, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call void @__wake_up(ptr noundef nonnull @queue_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br i1 %25, label %62, label %66

62:                                               ; preds = %58
  tail call void @kfree(ptr noundef nonnull %12) #13
  br label %63

63:                                               ; preds = %62, %14
  %64 = phi ptr [ %16, %62 ], [ %12, %14 ]
  %65 = phi i32 [ %59, %62 ], [ -11, %14 ]
  tail call void @kfree(ptr noundef nonnull %64) #13
  br label %66

66:                                               ; preds = %63, %58, %10, %6, %2
  %67 = phi i32 [ 0, %2 ], [ -11, %6 ], [ -11, %10 ], [ %59, %58 ], [ %65, %63 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 21
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 22
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %3) #13
  %12 = call i64 @ktime_get_real_seconds() #13
  %13 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %14 = add i64 %12, -30
  %15 = sub i64 %14, %13
  %16 = icmp slt i64 %9, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i64 [ %18, %17 ], [ 0, %7 ]
  %21 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 23
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  store i64 %20, ptr %21, align 8
  %25 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 10
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = icmp ne i64 %20, 0
  %30 = zext i1 %29 to i32
  call void %26(ptr noundef %0, i32 noundef %30) #13
  br label %31

31:                                               ; preds = %28, %24, %19
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cache_entry_no_listener, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = tail call ptr @llvm.thread.pointer() #13
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %46 = call i32 @__traceiter_cache_entry_no_listener(ptr noundef null, ptr noundef %0, ptr noundef %1) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %49

47:                                               ; preds = %11, %2
  %48 = call i32 @sunrpc_cache_pipe_upcall(ptr noundef %0, ptr noundef %1)
  br label %49

49:                                               ; preds = %47, %45, %34, %31
  %50 = phi i32 [ %48, %47 ], [ -22, %31 ], [ -22, %34 ], [ -22, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qword_get(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  br label %5

5:                                                ; preds = %8, %3
  %6 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %39 [
    i8 32, label %8
    i8 92, label %10
  ]

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %6, i32 1
  br label %5

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 120
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = add i32 %2, -1
  %16 = getelementptr i8, ptr %6, i32 2
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %31, %14
  %19 = phi ptr [ %37, %31 ], [ %16, %14 ]
  %20 = phi i32 [ %36, %31 ], [ 0, %14 ]
  %21 = phi ptr [ %19, %31 ], [ %6, %14 ]
  %22 = phi ptr [ %35, %31 ], [ %1, %14 ]
  %23 = load i8, ptr %19, align 1
  %24 = tail call i32 @hex_to_bin(i8 noundef zeroext %23) #13
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %82, label %26

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %21, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = tail call i32 @hex_to_bin(i8 noundef zeroext %28) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %82, label %31

31:                                               ; preds = %26
  %32 = shl i32 %24, 4
  %33 = or i32 %29, %32
  %34 = trunc i32 %33 to i8
  %35 = getelementptr i8, ptr %22, i32 1
  store i8 %34, ptr %22, align 1
  %36 = add nuw nsw i32 %20, 1
  %37 = getelementptr i8, ptr %19, i32 2
  %38 = icmp eq i32 %36, %15
  br i1 %38, label %82, label %18

39:                                               ; preds = %10, %5
  %40 = add i32 %2, -1
  %41 = call i32 @llvm.smax.i32(i32 %40, i32 0)
  br label %42

42:                                               ; preds = %75, %39
  %43 = phi i8 [ %7, %39 ], [ %81, %75 ]
  %44 = phi ptr [ %1, %39 ], [ %80, %75 ]
  %45 = phi ptr [ %6, %39 ], [ %79, %75 ]
  %46 = phi i32 [ 0, %39 ], [ %78, %75 ]
  switch i8 %43, label %47 [
    i8 32, label %87
    i8 10, label %87
    i8 0, label %87
  ]

47:                                               ; preds = %42
  %48 = icmp eq i32 %46, %41
  br i1 %48, label %87, label %49

49:                                               ; preds = %47
  %50 = icmp eq i8 %43, 92
  br i1 %50, label %51, label %75

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %45, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, -8
  %55 = icmp eq i8 %54, 48
  %56 = icmp ult i8 %53, 52
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = getelementptr i8, ptr %45, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, -8
  %62 = icmp eq i8 %61, 48
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %45, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, -8
  %67 = icmp eq i8 %66, 48
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = shl i8 %53, 6
  %70 = shl i8 %60, 3
  %71 = xor i8 %70, -128
  %72 = or i8 %71, %69
  %73 = add nsw i8 %65, -48
  %74 = or i8 %72, %73
  br label %75

75:                                               ; preds = %68, %63, %58, %51, %49
  %76 = phi i8 [ %74, %68 ], [ 92, %63 ], [ 92, %58 ], [ 92, %51 ], [ %43, %49 ]
  %77 = phi ptr [ %64, %68 ], [ %45, %63 ], [ %45, %58 ], [ %45, %51 ], [ %45, %49 ]
  store i8 %76, ptr %44, align 1
  %78 = add nuw i32 %46, 1
  %79 = getelementptr i8, ptr %77, i32 1
  %80 = getelementptr i8, ptr %44, i32 1
  %81 = load i8, ptr %79, align 1
  br label %42

82:                                               ; preds = %31, %26, %18, %14
  %83 = phi ptr [ %1, %14 ], [ %22, %26 ], [ %22, %18 ], [ %35, %31 ]
  %84 = phi i32 [ 0, %14 ], [ %20, %26 ], [ %20, %18 ], [ %15, %31 ]
  %85 = phi ptr [ %16, %14 ], [ %19, %26 ], [ %19, %18 ], [ %37, %31 ]
  %86 = load i8, ptr %85, align 1
  br label %87

87:                                               ; preds = %82, %47, %42, %42, %42
  %88 = phi i8 [ %86, %82 ], [ %43, %47 ], [ %43, %42 ], [ %43, %42 ], [ %43, %42 ]
  %89 = phi ptr [ %83, %82 ], [ %44, %47 ], [ %44, %42 ], [ %44, %42 ], [ %44, %42 ]
  %90 = phi ptr [ %85, %82 ], [ %45, %47 ], [ %45, %42 ], [ %45, %42 ], [ %45, %42 ]
  %91 = phi i32 [ %84, %82 ], [ %46, %42 ], [ %46, %42 ], [ %46, %42 ], [ %41, %47 ]
  switch i8 %88, label %99 [
    i8 32, label %92
    i8 0, label %97
    i8 10, label %97
  ]

92:                                               ; preds = %92, %87
  %93 = phi ptr [ %94, %92 ], [ %90, %87 ]
  %94 = getelementptr i8, ptr %93, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 32
  br i1 %96, label %92, label %97

97:                                               ; preds = %92, %87, %87
  %98 = phi ptr [ %90, %87 ], [ %90, %87 ], [ %94, %92 ]
  store ptr %98, ptr %0, align 4
  store i8 0, ptr %89, align 1
  br label %99

99:                                               ; preds = %97, %87
  %100 = phi i32 [ %91, %97 ], [ -1, %87 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cache_seq_start_rcu(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = add i64 %3, -1
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = lshr i64 %6, 32
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.hlist_head, ptr %12, i32 %10
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %8
  %17 = trunc i64 %6 to i32
  br label %22

18:                                               ; preds = %22
  %19 = add i32 %24, -1
  %20 = load volatile ptr, ptr %23, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %16
  %23 = phi ptr [ %20, %18 ], [ %14, %16 ]
  %24 = phi i32 [ %19, %18 ], [ %17, %16 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %18

26:                                               ; preds = %18, %8
  %27 = and i64 %6, -4294967296
  %28 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %35, %26
  %31 = phi i32 [ %10, %26 ], [ %33, %35 ]
  %32 = phi i64 [ %27, %26 ], [ %36, %35 ]
  %33 = add i32 %31, 1
  %34 = icmp ult i32 %33, %29
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = add i64 %32, 4294967296
  %37 = getelementptr %struct.hlist_head, ptr %12, i32 %33
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %30, label %40

40:                                               ; preds = %35
  %41 = add i64 %32, 4294967297
  store i64 %41, ptr %1, align 8
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr %struct.hlist_head, ptr %42, i32 %33
  %44 = load volatile ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %40, %30, %22, %2
  %46 = phi ptr [ %44, %40 ], [ inttoptr (i32 1 to ptr), %2 ], [ null, %30 ], [ %23, %22 ]
  ret ptr %46
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cache_seq_next_rcu(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #5 {
  %4 = load i64, ptr %2, align 8
  %5 = lshr i64 %4, 32
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = add i32 %6, 1
  %15 = add i64 %4, 4294967296
  br label %19

16:                                               ; preds = %10
  %17 = add i64 %4, 1
  store i64 %17, ptr %2, align 8
  %18 = load volatile ptr, ptr %1, align 8
  br label %45

19:                                               ; preds = %13, %3
  %20 = phi i64 [ %15, %13 ], [ %4, %3 ]
  %21 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %22 = and i64 %20, -4294967296
  %23 = getelementptr inbounds %struct.cache_detail, ptr %8, i32 0, i32 1
  store i64 %22, ptr %2, align 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cache_detail, ptr %8, i32 0, i32 2
  br label %28

28:                                               ; preds = %35, %26
  %29 = phi i32 [ %21, %26 ], [ %36, %35 ]
  %30 = phi i64 [ %22, %26 ], [ %37, %35 ]
  %31 = load ptr, ptr %27, align 8
  %32 = getelementptr %struct.hlist_head, ptr %31, i32 %29
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = add nsw i32 %29, 1
  %37 = add i64 %30, 4294967296
  store i64 %37, ptr %2, align 8
  %38 = load i32, ptr %23, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %28, label %45

40:                                               ; preds = %28
  %41 = or i64 %30, 1
  store i64 %41, ptr %2, align 8
  %42 = load ptr, ptr %27, align 8
  %43 = getelementptr %struct.hlist_head, ptr %42, i32 %29
  %44 = load volatile ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %40, %35, %19, %16
  %46 = phi ptr [ %44, %40 ], [ %18, %16 ], [ null, %19 ], [ null, %35 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_seq_stop_rcu(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cache_initialize() local_unnamed_addr #6 section ".init.text" {
  store i32 -32, ptr @cache_cleaner, align 4
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @cache_cleaner, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @cache_cleaner, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @cache_cleaner, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @cache_cleaner, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @do_cache_clean, ptr getelementptr inbounds (%struct.delayed_work, ptr @cache_cleaner, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @cache_cleaner, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_cache_clean(ptr nocapture noundef readnone %0) #0 {
  %2 = load volatile ptr, ptr @cache_list, align 4
  %3 = icmp eq ptr %2, @cache_list
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @cache_clean()
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 @round_jiffies_relative(i32 noundef 3000) #13
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ 5, %4 ]
  %11 = load ptr, ptr @system_power_efficient_wq, align 4
  %12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef nonnull @cache_cleaner, i32 noundef %10) #13
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cache_register_net(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 20
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 20, i32 1
  store ptr %4, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cache_list_lock) #13
  %6 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 21
  store volatile i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 22
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 23
  store i64 -1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr @cache_list, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %14 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 17, i32 1
  store ptr @cache_list, ptr %14, align 4
  store volatile ptr %11, ptr @cache_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %15 = load i16, ptr @cache_list_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @cache_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %17 = load ptr, ptr @system_power_efficient_wq, align 4
  %18 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %17, ptr noundef nonnull @cache_cleaner, i32 noundef 0) #13
  %19 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %20 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 37
  %21 = load volatile ptr, ptr %20, align 64
  %22 = getelementptr [0 x ptr], ptr %21, i32 0, i32 %19
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %24 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %23, align 4
  %27 = tail call ptr @proc_mkdir(ptr noundef %25, ptr noundef %26) #13
  %28 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 24
  store ptr %27, ptr %28, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %2
  %31 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.4, i16 noundef zeroext -32384, ptr noundef nonnull %27, ptr noundef nonnull @cache_flush_proc_ops, ptr noundef %0) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %33
  %42 = load ptr, ptr %28, align 8
  %43 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.5, i16 noundef zeroext -32384, ptr noundef %42, ptr noundef nonnull @cache_channel_proc_ops, ptr noundef %0) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %28, align 8
  %51 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.6, i16 noundef zeroext -32512, ptr noundef %50, ptr noundef nonnull @content_proc_ops, ptr noundef %0) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %41, %30
  %54 = load ptr, ptr %28, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @proc_remove(ptr noundef nonnull %54) #13
  store ptr null, ptr %28, align 8
  br label %57

57:                                               ; preds = %56, %53, %2
  tail call void @sunrpc_destroy_cache_detail(ptr noundef %0)
  br label %58

58:                                               ; preds = %57, %49, %45
  %59 = phi i32 [ -12, %57 ], [ 0, %49 ], [ 0, %45 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_unregister_net(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @proc_remove(ptr noundef nonnull %4) #13
  store ptr null, ptr %3, align 8
  br label %7

7:                                                ; preds = %6, %2
  tail call void @sunrpc_destroy_cache_detail(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cache_create_net(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef 128, i32 noundef 3264) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %10, label %12, !prof !17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 2
  store ptr null, ptr %11, align 8
  br label %23

12:                                               ; preds = %5
  %13 = extractvalue { i32, i1 } %8, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #15
  %15 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  %16 = icmp eq ptr %14, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  store ptr null, ptr %14, align 64
  %21 = load i32, ptr %6, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %24, label %31

23:                                               ; preds = %12, %10
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %33

24:                                               ; preds = %24, %20
  %25 = phi i32 [ %28, %24 ], [ 1, %20 ]
  %26 = load ptr, ptr %15, align 8
  %27 = getelementptr %struct.hlist_head, ptr %26, i32 %25
  store ptr null, ptr %27, align 4
  %28 = add nuw nsw i32 %25, 1
  %29 = load i32, ptr %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %24, label %31

31:                                               ; preds = %24, %20, %17
  %32 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 25
  store ptr %1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %23, %2
  %34 = phi ptr [ inttoptr (i32 -12 to ptr), %23 ], [ %3, %31 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_destroy_net(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_read_pipefs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_inode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @cache_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_write_pipefs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_inode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @cache_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_poll_pipefs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_inode, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void %11(ptr noundef %0, ptr noundef nonnull @queue_wait, ptr noundef nonnull %1) #13
  br label %14

14:                                               ; preds = %13, %10, %2
  %15 = icmp eq ptr %8, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %17 = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 20
  %18 = icmp eq ptr %8, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %25, %24 ], [ %8, %16 ]
  %21 = getelementptr inbounds %struct.cache_queue, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, %17
  br i1 %26, label %27, label %19

27:                                               ; preds = %24, %19, %16
  %28 = phi i32 [ 260, %16 ], [ 260, %24 ], [ 325, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %29 = load i16, ptr @queue_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %31

31:                                               ; preds = %27, %14
  %32 = phi i32 [ %28, %27 ], [ 260, %14 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_ioctl_pipefs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 21531
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %41

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rpc_inode, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %14 = getelementptr inbounds %struct.cache_detail, ptr %13, i32 0, i32 20
  %15 = icmp eq ptr %5, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %27, %9
  %17 = phi ptr [ %28, %27 ], [ %5, %9 ]
  %18 = getelementptr inbounds %struct.cache_queue, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cache_request, ptr %17, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cache_reader, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  br label %30

27:                                               ; preds = %16
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %30, label %16

30:                                               ; preds = %27, %21, %9
  %31 = phi i32 [ %26, %21 ], [ 0, %9 ], [ 0, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %32 = load i16, ptr @queue_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %34 = inttoptr i32 %2 to ptr
  %35 = tail call ptr @llvm.thread.pointer() #13
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #16, !srcloc !36
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  %40 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %34, i32 %31, i32 -1090519041) #13, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  br label %41

41:                                               ; preds = %30, %3
  %42 = phi i32 [ %40, %30 ], [ -22, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_open_pipefs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @cache_open(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_release_pipefs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @cache_release(ptr noundef %1, ptr noundef %4)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @content_open_pipefs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #13
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @cache_content_op) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  tail call void @module_put(ptr noundef %13) #13
  br label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.seq_file, ptr %16, i32 0, i32 11
  store ptr %4, ptr %17, align 8
  br label %18

18:                                               ; preds = %14, %12, %6, %2
  %19 = phi i32 [ %10, %12 ], [ 0, %14 ], [ -13, %6 ], [ -13, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @content_release_pipefs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #13
  %6 = load ptr, ptr %4, align 8
  tail call void @module_put(ptr noundef %6) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_flush_pipefs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca [22 x i8], align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rpc_inode, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %6, i8 0, i32 22, i1 false) #13, !annotation !9
  %11 = getelementptr inbounds %struct.cache_detail, ptr %10, i32 0, i32 16
  %12 = load i64, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %5) #13
  %13 = load i64, ptr %5, align 8
  %14 = add i64 %13, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 22, ptr noundef nonnull @.str.7, i64 noundef %14) #13
  %16 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %15) #13
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %6) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_flush_pipefs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_inode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @write_flush(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @open_flush_pipefs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #13
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #13
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ %10, %9 ], [ -13, %6 ], [ -13, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @release_flush_pipefs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  tail call void @module_put(ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunrpc_cache_register_pipefs(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = tail call ptr @rpc_create_cache_dir(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 24
  store ptr %5, ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create_cache_dir(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sunrpc_cache_unregister_pipefs(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @rpc_remove_cache_dir(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_remove_cache_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sunrpc_cache_unhash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  store volatile ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %5, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  store volatile ptr null, ptr %4, align 4
  %13 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %17 = load i16, ptr %3, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call fastcc void @cache_fresh_unlocked(ptr noundef %1, ptr noundef %0) #13
  %19 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %26 = load i64, ptr %25, align 8
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i64 %24, ptr %25, align 8
  br label %29

29:                                               ; preds = %28, %22, %12
  %30 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #13, !srcloc !10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #13, !srcloc !23
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %42, label %37, !prof !12

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #13
  br label %42

38:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void %31(ptr noundef %19) #13
  br label %42

39:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %40 = load i16, ptr %3, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %42

42:                                               ; preds = %39, %38, %37, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cache_entry_expired(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cache_entry_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cache_entry_make_negative(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cache_revisit_request(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = ptrtoint ptr %0 to i32
  %4 = lshr i32 %3, 4
  %5 = lshr i32 %3, 13
  %6 = xor i32 %4, %5
  %7 = and i32 %6, 511
  store volatile ptr %2, ptr %2, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @cache_defer_lock) #13
  %9 = getelementptr [512 x %struct.hlist_head], ptr @cache_defer_hash, i32 0, i32 %7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %41, %1
  %13 = phi ptr [ %14, %41 ], [ %10, %1 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cache_deferred_req, ptr %13, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  store volatile ptr %14, ptr %20, align 4
  %23 = icmp eq ptr %14, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  store volatile ptr %20, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %22
  store ptr null, ptr %13, align 4
  store ptr null, ptr %19, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = getelementptr inbounds %struct.cache_deferred_req, ptr %13, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cache_deferred_req, ptr %13, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %29, ptr %33, align 4
  store volatile ptr %28, ptr %28, align 4
  %35 = load i32, ptr @cache_defer_cnt, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr @cache_defer_cnt, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %28, ptr %39, align 4
  store ptr %38, ptr %28, align 4
  %40 = getelementptr inbounds %struct.cache_deferred_req, ptr %13, i32 0, i32 1, i32 1
  store ptr %2, ptr %40, align 4
  store volatile ptr %28, ptr %2, align 8
  br label %41

41:                                               ; preds = %37, %12
  %42 = icmp eq ptr %14, null
  br i1 %42, label %43, label %12

43:                                               ; preds = %41, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %44 = load i16, ptr @cache_defer_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @cache_defer_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %46 = load volatile ptr, ptr %2, align 8
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %59, label %48

48:                                               ; preds = %48, %43
  %49 = phi ptr [ %57, %48 ], [ %46, %43 ]
  %50 = getelementptr i8, ptr %49, i32 -8
  %51 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %49, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store volatile ptr %49, ptr %49, align 4
  store ptr %49, ptr %51, align 4
  %55 = getelementptr i8, ptr %49, i32 16
  %56 = load ptr, ptr %55, align 4
  call void %56(ptr noundef %50, i32 noundef 0) #13
  %57 = load volatile ptr, ptr %2, align 8
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %59, label %48

59:                                               ; preds = %48, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cache_restart_thread(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.thread_deferred_req, ptr %0, i32 0, i32 1
  tail call void @complete(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_escape_mem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cache_entry_upcall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cache_entry_no_listener(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @open_flush_procfs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #13
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #13
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ %10, %9 ], [ -13, %6 ], [ -13, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_flush_procfs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca [22 x i8], align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %6, i8 0, i32 22, i1 false) #13, !annotation !9
  %11 = getelementptr inbounds %struct.cache_detail, ptr %10, i32 0, i32 16
  %12 = load i64, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %5) #13
  %13 = load i64, ptr %5, align 8
  %14 = add i64 %13, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 22, ptr noundef nonnull @.str.7, i64 noundef %14) #13
  %16 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %15) #13
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %6) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_flush_procfs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @write_flush(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @release_flush_procfs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  tail call void @module_put(ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_flush(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca [20 x i8], align 1
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  %8 = load i64, ptr %2, align 8
  %9 = icmp ne i64 %8, 0
  %10 = icmp ugt i32 %1, 19
  %11 = or i1 %10, %9
  br i1 %11, label %66, label %12

12:                                               ; preds = %4
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #17, !srcloc !40
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23, !prof !12

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #13
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #16, !srcloc !36
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #13, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %22, %16 ], [ %1, %12 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !12

26:                                               ; preds = %23
  %27 = sub i32 %1, %24
  %28 = getelementptr i8, ptr %6, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %24, i1 false) #13
  br label %66

29:                                               ; preds = %23
  %30 = getelementptr [20 x i8], ptr %6, i32 0, i32 %1
  store i8 0, ptr %30, align 1
  %31 = call i32 @simple_strtoul(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #13
  %32 = load ptr, ptr %7, align 4
  %33 = load i8, ptr %32, align 1
  switch i8 %33, label %66 [
    i8 0, label %34
    i8 10, label %34
  ]

34:                                               ; preds = %29, %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %5) #13
  %35 = call i64 @ktime_get_real_seconds() #13
  %36 = load i64, ptr %5, align 8
  %37 = sub i64 %35, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %38 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 16
  %39 = load i64, ptr %38, align 8
  %40 = icmp slt i64 %39, %37
  %41 = add i64 %39, 1
  %42 = select i1 %40, i64 %37, i64 %41
  store i64 %42, ptr %38, align 8
  %43 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 18
  store i64 %42, ptr %43, align 8
  %44 = call fastcc i32 @cache_clean() #13
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %49, %34
  %47 = call fastcc i32 @cache_clean() #13
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %57, label %53

49:                                               ; preds = %49, %34
  %50 = call i32 @__cond_resched() #13
  %51 = call fastcc i32 @cache_clean() #13
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %46, label %49

53:                                               ; preds = %53, %46
  %54 = call i32 @__cond_resched() #13
  %55 = call fastcc i32 @cache_clean() #13
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %53

57:                                               ; preds = %53, %46
  %58 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 12
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call void %59() #13
  br label %62

62:                                               ; preds = %61, %57
  %63 = zext i32 %1 to i64
  %64 = load i64, ptr %2, align 8
  %65 = add i64 %64, %63
  store i64 %65, ptr %2, align 8
  br label %66

66:                                               ; preds = %62, %29, %26, %4
  %67 = phi i32 [ %1, %62 ], [ -22, %4 ], [ -22, %29 ], [ -14, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_open_procfs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @cache_open(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_read_procfs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @cache_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_write_procfs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @cache_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_release_procfs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @cache_release(ptr noundef %1, ptr noundef %4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_poll_procfs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void %11(ptr noundef %0, ptr noundef nonnull @queue_wait, ptr noundef nonnull %1) #13
  br label %14

14:                                               ; preds = %13, %10, %2
  %15 = icmp eq ptr %8, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %17 = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 20
  %18 = icmp eq ptr %8, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %25, %24 ], [ %8, %16 ]
  %21 = getelementptr inbounds %struct.cache_queue, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, %17
  br i1 %26, label %27, label %19

27:                                               ; preds = %24, %19, %16
  %28 = phi i32 [ 260, %16 ], [ 260, %24 ], [ 325, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %29 = load i16, ptr @queue_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %31

31:                                               ; preds = %27, %14
  %32 = phi i32 [ %28, %27 ], [ 260, %14 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_ioctl_procfs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 21531
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %41

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %14 = getelementptr inbounds %struct.cache_detail, ptr %13, i32 0, i32 20
  %15 = icmp eq ptr %5, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %27, %9
  %17 = phi ptr [ %28, %27 ], [ %5, %9 ]
  %18 = getelementptr inbounds %struct.cache_queue, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cache_request, ptr %17, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cache_reader, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  br label %30

27:                                               ; preds = %16
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %30, label %16

30:                                               ; preds = %27, %21, %9
  %31 = phi i32 [ %26, %21 ], [ 0, %9 ], [ 0, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %32 = load i16, ptr @queue_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %34 = inttoptr i32 %2 to ptr
  %35 = tail call ptr @llvm.thread.pointer() #13
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #16, !srcloc !36
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  %40 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %34, i32 %31, i32 -1090519041) #13, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  br label %41

41:                                               ; preds = %30, %3
  %42 = phi i32 [ %40, %30 ], [ -22, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cache_open(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 8
  %7 = tail call zeroext i1 @try_module_get(ptr noundef %6) #13
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #13
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 16) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8
  tail call void @module_put(ptr noundef %19) #13
  br label %40

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.cache_reader, ptr %16, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cache_queue, ptr %16, i32 0, i32 1
  store i32 1, ptr %22, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %23 = getelementptr inbounds %struct.cache_detail, ptr %2, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %16, ptr %25, align 4
  store ptr %24, ptr %16, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %23, ptr %26, align 4
  store volatile ptr %16, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %27 = load i16, ptr @queue_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %29 = load i32, ptr %10, align 8
  br label %30

30:                                               ; preds = %20, %8
  %31 = phi i32 [ %29, %20 ], [ %11, %8 ]
  %32 = phi ptr [ %16, %20 ], [ null, %8 ]
  %33 = and i32 %31, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cache_detail, ptr %2, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #13, !srcloc !10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #13, !srcloc !41
  br label %38

38:                                               ; preds = %35, %30
  %39 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %32, ptr %39, align 8
  br label %40

40:                                               ; preds = %38, %18, %5, %3
  %41 = phi i32 [ 0, %38 ], [ -12, %18 ], [ -13, %5 ], [ -13, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cache_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %188, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  tail call void @down_write(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 20
  %15 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = getelementptr inbounds %struct.cache_reader, ptr %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 7
  %18 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 18
  %19 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 5
  br label %20

20:                                               ; preds = %183, %10
  %21 = phi i32 [ %2, %10 ], [ %137, %183 ]
  call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %22 = load ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, %14
  br i1 %23, label %36, label %24

24:                                               ; preds = %29, %20
  %25 = phi ptr [ %34, %29 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.cache_queue, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %25, ptr %30, align 4
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %8, ptr %33, align 4
  store ptr %32, ptr %8, align 4
  store ptr %25, ptr %15, align 4
  store volatile ptr %8, ptr %25, align 4
  %34 = load ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %36, label %24

36:                                               ; preds = %29, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %37 = load i16, ptr @queue_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call void @up_write(ptr noundef %13) #13
  %39 = load i32, ptr %16, align 4
  %40 = icmp ne i32 %39, 0
  %41 = load i1, ptr @cache_read.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %188, !prof !17

44:                                               ; preds = %36
  store i1 true, ptr @cache_read.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 835, i32 noundef 9, ptr noundef null) #13
  br label %188

45:                                               ; preds = %24
  %46 = load i32, ptr %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %45
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %53 = load i16, ptr @queue_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %55 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %59 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 4096, ptr %6, align 4
  %61 = load ptr, ptr %17, align 4
  %62 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  call void %61(ptr noundef %3, ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %64 = load i32, ptr %6, align 4
  %65 = icmp slt i32 %64, 0
  %66 = sub i32 4096, %64
  %67 = select i1 %65, i32 -7, i32 %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %130, label %69

69:                                               ; preds = %58
  store i32 %67, ptr %55, align 4
  br label %70

70:                                               ; preds = %69, %52
  %71 = phi i32 [ %66, %69 ], [ %56, %52 ]
  %72 = load i32, ptr %16, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.cache_head, ptr %76, i32 0, i32 4
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %82 = load ptr, ptr %15, align 4
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  %85 = load ptr, ptr %25, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %8, ptr %86, align 4
  store ptr %85, ptr %8, align 4
  store ptr %25, ptr %15, align 4
  store volatile ptr %8, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %87 = load i16, ptr @queue_lock, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %130

89:                                               ; preds = %74, %70
  %90 = add i32 %72, %21
  %91 = icmp ugt i32 %90, %71
  %92 = sub i32 %71, %72
  %93 = select i1 %91, i32 %92, i32 %21
  %94 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %72
  %97 = icmp slt i32 %93, 0
  %98 = load i1, ptr @check_copy_size.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !17

101:                                              ; preds = %89
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %102

102:                                              ; preds = %101, %89
  br i1 %97, label %130, label %103, !prof !17

103:                                              ; preds = %102
  %104 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %93, i32 -1090519040) #17, !srcloc !42
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = tail call ptr @llvm.thread.pointer() #13
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %110 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %109) #16, !srcloc !36
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #13, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  %113 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %96, i32 noundef %93) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #13, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  br label %114

114:                                              ; preds = %107, %103
  %115 = phi i32 [ %113, %107 ], [ %93, %103 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, ptr %16, align 4
  %119 = add i32 %118, %93
  store i32 %119, ptr %16, align 4
  %120 = load i32, ptr %55, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %117
  store i32 0, ptr %16, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %123 = load ptr, ptr %15, align 4
  %124 = load ptr, ptr %8, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  %126 = load ptr, ptr %25, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %8, ptr %127, align 4
  store ptr %126, ptr %8, align 4
  store ptr %25, ptr %15, align 4
  store volatile ptr %8, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %128 = load i16, ptr @queue_lock, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %130

130:                                              ; preds = %122, %114, %102, %81, %58
  %131 = phi i32 [ 0, %122 ], [ -11, %81 ], [ -14, %114 ], [ %67, %58 ], [ -14, %102 ]
  %132 = phi i32 [ %93, %122 ], [ %21, %81 ], [ %93, %114 ], [ %21, %58 ], [ %93, %102 ]
  %133 = load i32, ptr %16, align 4
  br label %134

134:                                              ; preds = %130, %117
  %135 = phi i32 [ %133, %130 ], [ %119, %117 ]
  %136 = phi i32 [ %131, %130 ], [ 0, %117 ]
  %137 = phi i32 [ %132, %130 ], [ %93, %117 ]
  %138 = icmp eq i32 %135, 0
  br i1 %138, label %139, label %183

139:                                              ; preds = %134
  call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %140 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, -1
  store i32 %142, ptr %140, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %180

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.cache_head, ptr %146, i32 0, i32 4
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %25, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %153, ptr %155, align 4
  store volatile ptr %154, ptr %153, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %152, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %156 = load i16, ptr @queue_lock, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %158 = load ptr, ptr %145, align 4
  %159 = getelementptr inbounds %struct.cache_head, ptr %158, i32 0, i32 3
  %160 = load volatile i32, ptr %159, align 4
  %161 = icmp ult i32 %160, 3
  br i1 %161, label %162, label %168

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.cache_head, ptr %158, i32 0, i32 1
  %164 = load i64, ptr %163, align 8
  %165 = load i64, ptr %18, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i64 %164, ptr %18, align 8
  br label %168

168:                                              ; preds = %167, %162, %151
  %169 = load ptr, ptr %19, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %159) #13, !srcloc !10
  %170 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %159, ptr %159, i32 1, ptr elementtype(i32) %159) #13, !srcloc !23
  %171 = extractvalue { i32, i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = icmp sgt i32 %171, 0
  br i1 %174, label %177, label %175, !prof !12

175:                                              ; preds = %173
  call void @refcount_warn_saturate(ptr noundef %159, i32 noundef 3) #13
  br label %177

176:                                              ; preds = %168
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %169(ptr noundef %159) #13
  br label %177

177:                                              ; preds = %176, %175, %173
  %178 = getelementptr inbounds %struct.cache_request, ptr %25, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  call void @kfree(ptr noundef %179) #13
  call void @kfree(ptr noundef %25) #13
  br label %183

180:                                              ; preds = %144, %139
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %181 = load i16, ptr @queue_lock, align 4
  %182 = add i16 %181, 1
  store i16 %182, ptr @queue_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %183

183:                                              ; preds = %180, %177, %134
  %184 = icmp eq i32 %136, -11
  br i1 %184, label %20, label %185

185:                                              ; preds = %183
  call void @up_write(ptr noundef %13) #13
  %186 = icmp eq i32 %136, 0
  %187 = select i1 %186, i32 %137, i32 %136
  br label %188

188:                                              ; preds = %185, %44, %36, %4
  %189 = phi i32 [ %187, %185 ], [ 0, %4 ], [ 0, %44 ], [ 0, %36 ]
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cache_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cache_detail, ptr %3, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 24
  tail call void @down_write(ptr noundef %11) #13
  %12 = icmp ugt i32 %2, 32767
  br i1 %12, label %43, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %2, 1
  %15 = tail call noalias ptr @kvmalloc_node(i32 noundef %14, i32 noundef 3264, i32 noundef -1) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %17
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #17, !srcloc !40
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31, !prof !12

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #13
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #16, !srcloc !36
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  %29 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #13, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !38
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !12

31:                                               ; preds = %23, %19
  %32 = phi i32 [ %29, %23 ], [ %2, %19 ]
  %33 = sub i32 %2, %32
  %34 = getelementptr i8, ptr %15, i32 %33
  tail call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %32, i1 false) #13
  br label %41

35:                                               ; preds = %23
  %36 = getelementptr i8, ptr %15, i32 %2
  store i8 0, ptr %36, align 1
  %37 = load ptr, ptr %5, align 8
  %38 = tail call i32 %37(ptr noundef %3, ptr noundef nonnull %15, i32 noundef %2) #13
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %2, i32 %38
  br label %41

41:                                               ; preds = %35, %31, %17
  %42 = phi i32 [ %40, %35 ], [ -22, %17 ], [ -14, %31 ]
  tail call void @kvfree(ptr noundef nonnull %15) #13
  br label %43

43:                                               ; preds = %41, %13, %8
  %44 = phi i32 [ %42, %41 ], [ -12, %13 ], [ -22, %8 ]
  tail call void @up_write(ptr noundef %11) #13
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi i32 [ %44, %43 ], [ -22, %4 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cache_release(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @queue_lock) #13
  %8 = getelementptr inbounds %struct.cache_reader, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 20
  %13 = icmp eq ptr %5, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %23, %11
  %15 = phi ptr [ %24, %23 ], [ %5, %11 ]
  %16 = getelementptr inbounds %struct.cache_queue, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cache_request, ptr %15, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  br label %26

23:                                               ; preds = %14
  %24 = load ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, %12
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %19, %11
  store i32 0, ptr %8, align 4
  br label %27

27:                                               ; preds = %26, %7
  %28 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %32 = load i16, ptr @queue_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @queue_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  store ptr null, ptr %4, align 8
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %34

34:                                               ; preds = %27, %2
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #13, !srcloc !10
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #13, !srcloc !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %3) #13
  %42 = call i64 @ktime_get_real_seconds() #13
  %43 = load i64, ptr %3, align 8
  %44 = sub i64 %42, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %45 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 22
  store i64 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load ptr, ptr %1, align 8
  call void @module_put(ptr noundef %47) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @content_open_procfs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #13
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @cache_content_op) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  tail call void @module_put(ptr noundef %13) #13
  br label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.seq_file, ptr %16, i32 0, i32 11
  store ptr %4, ptr %17, align 8
  br label %18

18:                                               ; preds = %14, %12, %6, %2
  %19 = phi i32 [ %10, %12 ], [ 0, %14 ], [ -13, %6 ], [ -13, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @content_release_procfs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #13
  %6 = load ptr, ptr %4, align 8
  tail call void @module_put(ptr noundef %6) #13
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @c_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %5, ptr noundef null) #13
  br label %68

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !17

16:                                               ; preds = %11
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 2, %11 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #13
  br label %22

22:                                               ; preds = %20, %16
  %23 = tail call i32 @cache_check(ptr noundef %5, ptr noundef %1, ptr noundef null)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #13
  br label %64

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @getboottime64(ptr noundef nonnull %3) #13
  %29 = call i64 @ktime_get_real_seconds() #13
  %30 = load i64, ptr %3, align 8
  %31 = sub i64 %29, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 4
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 16
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %26
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #13
  br label %45

45:                                               ; preds = %44, %38, %33
  %46 = load volatile i32, ptr %12, align 4
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, ptr %27, align 8
  %50 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 18
  %51 = load i64, ptr %50, align 8
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i64 %49, ptr %50, align 8
  br label %54

54:                                               ; preds = %53, %48, %45
  %55 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !10
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !23
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = icmp sgt i32 %58, 0
  br i1 %61, label %64, label %62, !prof !12

62:                                               ; preds = %60
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #13
  br label %64

63:                                               ; preds = %54
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void %56(ptr noundef %12) #13
  br label %64

64:                                               ; preds = %63, %62, %60, %25
  %65 = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 %66(ptr noundef %0, ptr noundef %5, ptr noundef %1) #13
  br label %68

68:                                               ; preds = %64, %7
  %69 = phi i32 [ %10, %7 ], [ %67, %64 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind readnone }

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
!8 = !{i64 2149193435}
!9 = !{!"auto-init"}
!10 = !{i64 872127, i64 2148362098, i64 2148362124, i64 2148362171, i64 2148362193, i64 2148362221, i64 2148362241}
!11 = !{i64 858190, i64 858214, i64 858235, i64 858252, i64 858269}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149193652}
!14 = !{i64 2158160783}
!15 = !{i64 2158160943}
!16 = !{i64 2148374971, i64 2148375003, i64 2148375032, i64 2148375066, i64 2148375097, i64 2148375120}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2149040731}
!19 = !{i64 2149036555}
!20 = !{i64 2149036630, i64 2149036657, i64 2149036704, i64 2149036726, i64 2149036754, i64 2149036774}
!21 = !{i64 2149063734}
!22 = !{i64 2148475193}
!23 = !{i64 2148377328, i64 2148377360, i64 2148377389, i64 2148377423, i64 2148377454, i64 2148377477}
!24 = !{i64 2149800707}
!25 = !{i64 2149298800}
!26 = !{i64 2158356779}
!27 = !{i64 2158198812}
!28 = !{i64 2158198970}
!29 = !{i64 2158216042}
!30 = !{i64 2158216214}
!31 = !{i64 2158358796}
!32 = !{i64 2158181855}
!33 = !{i64 2158182013}
!34 = !{i64 2158233572}
!35 = !{i64 2158233740}
!36 = !{i64 3501898}
!37 = !{i64 3502095}
!38 = !{i64 2150987374}
!39 = !{i64 2158407737, i64 2158408017, i64 2158408351, i64 2158408685}
!40 = !{i64 2151005786, i64 2151005811}
!41 = !{i64 2148373513, i64 2148373539, i64 2148373568, i64 2148373602, i64 2148373633, i64 2148373656}
!42 = !{i64 2151006364, i64 2151006389}
!43 = !{i64 2148375870, i64 2148375896, i64 2148375925, i64 2148375959, i64 2148375990, i64 2148376013}
