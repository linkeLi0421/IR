; ModuleID = '/llk/IR/net/core/net_namespace.c_pt.bc'
source_filename = "../net/core/net_namespace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_namespace_list:\09\09\09\09\09"
module asm "\09.asciz \09\22net_namespace_list\22\09\09\09\09\09"
module asm "__kstrtabns_net_namespace_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22net_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns_net_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22init_net\22\09\09\09\09\09"
module asm "__kstrtabns_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pernet_ops_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22pernet_ops_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns_pernet_ops_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_peernet2id_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22peernet2id_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_peernet2id_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_peernet2id:\09\09\09\09\09"
module asm "\09.asciz \09\22peernet2id\22\09\09\09\09\09"
module asm "__kstrtabns_peernet2id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_net_ns_by_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22get_net_ns_by_pid\22\09\09\09\09\09"
module asm "__kstrtabns_get_net_ns_by_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pernet_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pernet_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_register_pernet_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pernet_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pernet_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pernet_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pernet_device:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pernet_device\22\09\09\09\09\09"
module asm "__kstrtabns_register_pernet_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pernet_device:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pernet_device\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pernet_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.107, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.130, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.130 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.gen_cookie = type { ptr, [60 x i8], %struct.atomic64_t, %struct.atomic64_t, [48 x i8] }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type {}
%struct.pcpu_gen_cookie = type { %struct.local_t, i64 }
%struct.local_t = type { %struct.atomic_t }
%struct.nla_policy = type { i8, i8, i16, %union.anon.51 }
%union.anon.51 = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.net_fill_args = type { i32, i32, i32, i32, i32, i8, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.103, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.25, %union.anon.28, %union.anon.29, [48 x i8], %union.anon.30, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, ptr, %union.anon.27 }
%union.anon.27 = type { ptr }
%union.anon.28 = type { ptr }
%union.anon.29 = type { i64 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32, ptr }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.34, i32, i32, i32, i16, i16, %union.anon.36, %union.anon.37, %union.anon.38, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.34 = type { i32 }
%union.anon.36 = type { i32 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.rtnl_net_dump_cb = type { ptr, ptr, ptr, %struct.net_fill_args, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.anon.132 = type { i32, %struct.callback_head }

@net_namespace_list = dso_local global %struct.list_head { ptr @net_namespace_list, ptr @net_namespace_list }, align 4
@__kstrtab_net_namespace_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_namespace_list = external dso_local constant [0 x i8], align 1
@__ksymtab_net_namespace_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_namespace_list to i32), ptr @__kstrtab_net_namespace_list, ptr @__kstrtabns_net_namespace_list }, section "___ksymtab_gpl+net_namespace_list", align 4
@net_rwsem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @net_rwsem, i64 16), ptr getelementptr (i8, ptr @net_rwsem, i64 16) } }, align 4
@__kstrtab_net_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab_net_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_rwsem to i32), ptr @__kstrtab_net_rwsem, ptr @__kstrtabns_net_rwsem }, section "___ksymtab_gpl+net_rwsem", align 4
@init_net_key_domain = internal global %struct.key_tag { %struct.callback_head zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, i8 0 }, align 4
@init_net = dso_local global %struct.net { %struct.refcount_struct zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.llist_node zeroinitializer, ptr @init_net_key_domain, ptr null, ptr null, %struct.idr zeroinitializer, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr null, i32 0, %struct.refcount_struct { %struct.atomic_t { i32 1 } } }, %struct.ref_tracker_dir zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_net, i64 96), ptr getelementptr (i8, ptr @init_net, i64 96) }, ptr null, ptr null, %struct.ctl_table_set zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, i32 0, ptr null, %struct.list_head zeroinitializer, %struct.netns_core zeroinitializer, %struct.netns_mib zeroinitializer, %struct.netns_packet zeroinitializer, %struct.netns_unix zeroinitializer, %struct.netns_nexthop zeroinitializer, [40 x i8] undef, %struct.netns_ipv4 zeroinitializer, %struct.netns_ipv6 zeroinitializer, ptr null, %struct.netns_bpf zeroinitializer, [28 x i8] undef, %struct.netns_xfrm zeroinitializer, i64 0, %struct.netns_can zeroinitializer, ptr null, ptr null, [32 x i8] undef }, align 64
@__kstrtab_init_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_net = external dso_local constant [0 x i8], align 1
@__ksymtab_init_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_net to i32), ptr @__kstrtab_init_net, ptr @__kstrtabns_init_net }, section "___ksymtab+init_net", align 4
@pernet_ops_rwsem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pernet_ops_rwsem, i64 16), ptr getelementptr (i8, ptr @pernet_ops_rwsem, i64 16) } }, align 4
@__kstrtab_pernet_ops_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns_pernet_ops_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab_pernet_ops_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pernet_ops_rwsem to i32), ptr @__kstrtab_pernet_ops_rwsem, ptr @__kstrtabns_pernet_ops_rwsem }, section "___ksymtab_gpl+pernet_ops_rwsem", align 4
@__kstrtab_peernet2id_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_peernet2id_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_peernet2id_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @peernet2id_alloc to i32), ptr @__kstrtab_peernet2id_alloc, ptr @__kstrtabns_peernet2id_alloc }, section "___ksymtab_gpl+peernet2id_alloc", align 4
@__kstrtab_peernet2id = external dso_local constant [0 x i8], align 1
@__kstrtabns_peernet2id = external dso_local constant [0 x i8], align 1
@__ksymtab_peernet2id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @peernet2id to i32), ptr @__kstrtab_peernet2id, ptr @__kstrtabns_peernet2id }, section "___ksymtab+peernet2id", align 4
@__initcall__kmod_net_namespace__424_381_net_defaults_init1 = internal global ptr @net_defaults_init, section ".initcall1.init", align 4
@__kstrtab_get_net_ns_by_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_net_ns_by_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_get_net_ns_by_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_net_ns_by_pid to i32), ptr @__kstrtab_get_net_ns_by_pid, ptr @__kstrtabns_get_net_ns_by_pid }, section "___ksymtab_gpl+get_net_ns_by_pid", align 4
@__initcall__kmod_net_namespace__428_1126_net_ns_init0 = internal global ptr @net_ns_init, section ".initcall0.init", align 4
@first_device = internal unnamed_addr global ptr @pernet_list, align 4
@__kstrtab_register_pernet_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pernet_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pernet_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pernet_subsys to i32), ptr @__kstrtab_register_pernet_subsys, ptr @__kstrtabns_register_pernet_subsys }, section "___ksymtab_gpl+register_pernet_subsys", align 4
@__kstrtab_unregister_pernet_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pernet_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pernet_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pernet_subsys to i32), ptr @__kstrtab_unregister_pernet_subsys, ptr @__kstrtabns_unregister_pernet_subsys }, section "___ksymtab_gpl+unregister_pernet_subsys", align 4
@pernet_list = internal global %struct.list_head { ptr @pernet_list, ptr @pernet_list }, align 4
@__kstrtab_register_pernet_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pernet_device = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pernet_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pernet_device to i32), ptr @__kstrtab_register_pernet_device, ptr @__kstrtabns_register_pernet_device }, section "___ksymtab_gpl+register_pernet_device", align 4
@__kstrtab_unregister_pernet_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pernet_device = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pernet_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pernet_device to i32), ptr @__kstrtab_unregister_pernet_device, ptr @__kstrtabns_unregister_pernet_device }, section "___ksymtab_gpl+unregister_pernet_device", align 4
@net_defaults_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @net_defaults_init_net, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot initialize net default settings\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not allocate generic netns\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not setup the initial network namespace\00", align 1
@init_net_initialized = internal unnamed_addr global i1 false, align 1
@net_ns_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @net_ns_net_init, ptr null, ptr @net_ns_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Could not register network namespace subsystems\00", align 1
@max_gen_ptrs = internal unnamed_addr global i32 13, align 4
@net_cookie = internal global %struct.gen_cookie { ptr @__net_cookie, [60 x i8] undef, %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, [48 x i8] undef }, align 64
@setup_net.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"&net->ipv4.ra_mutex\00", align 1
@__net_cookie = internal global %struct.pcpu_gen_cookie zeroinitializer, section ".data..percpu", align 16
@rtnl_net_policy = internal constant [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy zeroinitializer], align 4
@rtnl_net_newid.__msg = internal constant [16 x i8] c"nsid is missing\00", align 1
@rtnl_net_newid.__msg.7 = internal constant [32 x i8] c"Peer netns reference is missing\00", align 1
@rtnl_net_newid.__msg.8 = internal constant [32 x i8] c"Peer netns reference is invalid\00", align 1
@rtnl_net_newid.__msg.9 = internal constant [39 x i8] c"Peer netns already has a nsid assigned\00", align 1
@rtnl_net_newid.__msg.10 = internal constant [35 x i8] c"The specified nsid is already used\00", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@rtnl_net_getid.__msg = internal constant [32 x i8] c"Peer netns reference is missing\00", align 1
@rtnl_net_getid.__msg.11 = internal constant [32 x i8] c"Peer netns reference is invalid\00", align 1
@rtnl_net_getid.__msg.12 = internal constant [34 x i8] c"Target netns reference is invalid\00", align 1
@rtnl_net_valid_getid_req.__msg = internal constant [50 x i8] c"Unsupported attribute in peer netns getid request\00", align 1
@rtnl_valid_dump_net_req.__msg = internal constant [36 x i8] c"Invalid target network namespace id\00", align 1
@rtnl_valid_dump_net_req.__msg.13 = internal constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@net_generic_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_net_namespace__424_381_net_defaults_init1, ptr @__initcall__kmod_net_namespace__428_1126_net_ns_init0, ptr @__ksymtab_get_net_ns_by_pid, ptr @__ksymtab_init_net, ptr @__ksymtab_net_namespace_list, ptr @__ksymtab_net_rwsem, ptr @__ksymtab_peernet2id, ptr @__ksymtab_peernet2id_alloc, ptr @__ksymtab_pernet_ops_rwsem, ptr @__ksymtab_register_pernet_device, ptr @__ksymtab_register_pernet_subsys, ptr @__ksymtab_unregister_pernet_device, ptr @__ksymtab_unregister_pernet_subsys], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @peernet2id_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 13
  %10 = tail call i32 @idr_for_each(ptr noundef %9, ptr noundef nonnull @net_eq_idr, ptr noundef %1) #13
  %11 = icmp eq i32 %10, -1
  %12 = icmp sgt i32 %10, 0
  %13 = select i1 %12, i32 %10, i32 -1
  %14 = select i1 %11, i32 0, i32 %13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #13
  br label %24

17:                                               ; preds = %7
  %18 = icmp eq ptr %1, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #13
  br label %24

20:                                               ; preds = %17
  %21 = tail call i32 @idr_alloc(ptr noundef %9, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call fastcc void @rtnl_net_notifyid(ptr noundef %0, i32 noundef %21, i32 noundef 0, ptr noundef null, i32 noundef %2)
  br label %24

24:                                               ; preds = %23, %20, %19, %16, %3
  %25 = phi i32 [ %14, %16 ], [ %21, %23 ], [ -1, %19 ], [ -1, %3 ], [ -1, %20 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtnl_net_notifyid(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.net_fill_args, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  %7 = getelementptr inbounds i8, ptr %6, i32 20
  store i32 0, ptr %7, align 4, !annotation !9
  store i32 %2, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_fill_args, ptr %6, i32 0, i32 1
  %9 = icmp eq ptr %3, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %12, %10 ], [ 0, %5 ]
  store i32 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.net_fill_args, ptr %6, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.net_fill_args, ptr %6, i32 0, i32 3
  store i32 88, ptr %16, align 4
  %17 = getelementptr inbounds %struct.net_fill_args, ptr %6, i32 0, i32 4
  store i32 %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.net_fill_args, ptr %6, i32 0, i32 6
  store i32 0, ptr %18, align 4
  %19 = tail call ptr @__alloc_skb(i32 noundef 36, i32 noundef %4, i32 noundef 0, i32 noundef -1) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = call fastcc i32 @rtnl_net_fill(ptr noundef nonnull %19, ptr noundef nonnull %6)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @rtnl_notify(ptr noundef nonnull %19, ptr noundef %0, i32 noundef %2, i32 noundef 28, ptr noundef %3, i32 noundef %4) #13
  br label %28

25:                                               ; preds = %21
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #13
  br label %26

26:                                               ; preds = %25, %13
  %27 = phi i32 [ %22, %25 ], [ -12, %13 ]
  tail call void @rtnl_set_sk_err(ptr noundef %0, i32 noundef 28, i32 noundef %27) #13
  br label %28

28:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @peernet2id(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 13
  %4 = tail call i32 @idr_for_each(ptr noundef %3, ptr noundef nonnull @net_eq_idr, ptr noundef %1) #13
  %5 = icmp eq i32 %4, -1
  %6 = icmp sgt i32 %4, 0
  %7 = select i1 %6, i32 %4, i32 -1
  %8 = select i1 %5, i32 0, i32 %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @peernet_has_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 13
  %4 = tail call i32 @idr_for_each(ptr noundef %3, ptr noundef nonnull @net_eq_idr, ptr noundef %1) #13
  %5 = icmp eq i32 %4, -1
  %6 = icmp sgt i32 %4, 0
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %7 = or i1 %5, %6
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_net_ns_by_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 13
  %6 = tail call ptr @idr_find(ptr noundef %5, i32 noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @net_defaults_init() #3 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @net_defaults_ops)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #14
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_net_ns_by_pid(i32 noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %2 = tail call ptr @find_task_by_vpid(i32 noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %11, %9 ], [ inttoptr (i32 -3 to ptr), %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %14 = load i16, ptr %5, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi ptr [ %13, %12 ], [ inttoptr (i32 -3 to ptr), %1 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @net_ns_init() #3 section ".init.text" {
  %1 = load i32, ptr @max_gen_ptrs, align 4
  %2 = shl i32 %1, 2
  %3 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #14
  unreachable

6:                                                ; preds = %0
  %7 = load i32, ptr @max_gen_ptrs, align 4
  store i32 %7, ptr %3, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  store volatile ptr %3, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  %8 = tail call fastcc i32 @setup_net() #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #14
  unreachable

11:                                               ; preds = %6
  store i1 true, ptr @init_net_initialized, align 1
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  %12 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @net_ns_ops)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #14
  unreachable

15:                                               ; preds = %11
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 88, ptr noundef nonnull @rtnl_net_newid, ptr noundef null, i32 noundef 1) #13
  tail call void @rtnl_register(i32 noundef 0, i32 noundef 90, ptr noundef nonnull @rtnl_net_getid, ptr noundef nonnull @rtnl_net_dumpid, i32 noundef 1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_pernet_subsys(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  %2 = load ptr, ptr @first_device, align 4
  %3 = tail call fastcc i32 @register_pernet_operations(ptr noundef %2, ptr noundef %0)
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @register_pernet_operations(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pernet_operations, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @ida_alloc_range(ptr noundef nonnull @net_generic_ids, i32 noundef 3, i32 noundef -1, i32 noundef 3264) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 4
  store i32 %7, ptr %10, align 4
  %11 = load i32, ptr @max_gen_ptrs, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  %15 = tail call i32 @llvm.umax.i32(i32 %11, i32 %14)
  store i32 %15, ptr @max_gen_ptrs, align 4
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i1, ptr @init_net_initialized, align 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %1, ptr %19, align 4
  store ptr %0, ptr %1, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %1, ptr %20, align 4
  br label %30

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @ops_init(ptr noundef %1) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  tail call void @rcu_barrier() #13
  %26 = load ptr, ptr %3, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 4
  tail call void @ida_free(ptr noundef nonnull @net_generic_ids, i32 noundef %29) #13
  br label %30

30:                                               ; preds = %28, %25, %22, %18, %6
  %31 = phi i32 [ %7, %6 ], [ %23, %25 ], [ %23, %28 ], [ 0, %22 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_pernet_subsys(ptr nocapture noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  tail call fastcc void @unregister_pernet_operations(ptr noundef %0)
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unregister_pernet_operations(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load i1, ptr @init_net_initialized, align 1
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  br label %77

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), ptr %10, align 4
  store ptr %2, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8, i32 1), align 8
  store volatile ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), ptr %2, align 8
  %11 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  call void %12(ptr noundef nonnull @init_net) #13
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %23, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %18, i32 -36
  call void %19(ptr noundef %20) #13
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %14, %9
  call void @synchronize_rcu() #13
  %24 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 -36
  call void %25(ptr noundef %31) #13
  %32 = call i32 @__cond_resched() #13
  %33 = load ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %30
  %36 = phi ptr [ %40, %35 ], [ %33, %30 ]
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr i8, ptr %36, i32 -36
  call void %37(ptr noundef %38) #13
  %39 = call i32 @__cond_resched() #13
  %40 = load ptr, ptr %36, align 4
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %42, label %35

42:                                               ; preds = %35, %30, %27, %23
  %43 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void %44(ptr noundef nonnull %2) #13
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %2, align 8
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %53, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %60 = getelementptr i8, ptr %56, i32 1436
  %61 = load volatile ptr, ptr %60, align 64
  %62 = getelementptr [0 x ptr], ptr %61, i32 0, i32 %59
  %63 = load ptr, ptr %62, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call void @kfree(ptr noundef %63) #13
  %64 = load ptr, ptr %56, align 4
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %76, label %66

66:                                               ; preds = %66, %58
  %67 = phi ptr [ %74, %66 ], [ %64, %58 ]
  %68 = load ptr, ptr %52, align 4
  %69 = load i32, ptr %68, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %70 = getelementptr i8, ptr %67, i32 1436
  %71 = load volatile ptr, ptr %70, align 64
  %72 = getelementptr [0 x ptr], ptr %71, i32 0, i32 %69
  %73 = load ptr, ptr %72, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call void @kfree(ptr noundef %73) #13
  %74 = load ptr, ptr %67, align 4
  %75 = icmp eq ptr %74, %2
  br i1 %75, label %76, label %66

76:                                               ; preds = %66, %58, %55, %51, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %77

77:                                               ; preds = %76, %4
  call void @rcu_barrier() #13
  %78 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 4
  call void @ida_free(ptr noundef nonnull @net_generic_ids, i32 noundef %82) #13
  br label %83

83:                                               ; preds = %81, %77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_pernet_device(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  %2 = tail call fastcc i32 @register_pernet_operations(ptr noundef nonnull @pernet_list, ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr @first_device, align 4
  %5 = icmp eq ptr %4, @pernet_list
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store ptr %0, ptr @first_device, align 4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_pernet_device(ptr nocapture noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  %2 = load ptr, ptr @first_device, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr @first_device, align 4
  br label %6

6:                                                ; preds = %4, %1
  tail call fastcc void @unregister_pernet_operations(ptr noundef %0)
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @net_eq_idr(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 -1, i32 %0
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @net_defaults_init_net(ptr nocapture noundef writeonly %0) #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 1
  store i32 4096, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtnl_net_fill(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.net_fill_args, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_fill_args, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_fill_args, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = icmp slt i32 %22, 20
  br i1 %23, label %58, label %24, !prof !17

24:                                               ; preds = %15
  %25 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef %11) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %25, i32 16
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.net_fill_args, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 %30, ptr %4, align 4
  %31 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.net_fill_args, ptr %1, i32 0, i32 5
  %35 = load i8, ptr %34, align 4, !range !18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_fill_args, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 %39, ptr %3, align 4
  %40 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %33
  %43 = load ptr, ptr %18, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = ptrtoint ptr %25 to i32
  %46 = sub i32 %44, %45
  store i32 %46, ptr %25, align 4
  br label %58

47:                                               ; preds = %37, %27
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ugt ptr %49, %25
  br i1 %50, label %51, label %53, !prof !17

51:                                               ; preds = %47
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  %52 = load ptr, ptr %48, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %52, %51 ], [ %49, %47 ]
  %55 = ptrtoint ptr %25 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = sub i32 %55, %56
  call void @skb_trim(ptr noundef %0, i32 noundef %57) #13
  br label %58

58:                                               ; preds = %53, %42, %24, %15, %2
  %59 = phi i32 [ -90, %53 ], [ 0, %42 ], [ -90, %24 ], [ -90, %15 ], [ -90, %2 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @setup_net() unnamed_addr #3 section ".init.text" {
  %1 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  store ptr %1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %1, ptr %2, align 4
  store volatile i32 1, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  store volatile i32 1, ptr @init_net, align 64
  call void @get_random_bytes(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), i32 noundef 4) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %3 = load ptr, ptr @net_cookie, align 64
  %4 = ptrtoint ptr %3 to i32
  %5 = call i32 @llvm.read_register.i32(metadata !0) #13
  %6 = inttoptr i32 %5 to ptr
  %7 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #10, !srcloc !20
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !22
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #13, !srcloc !23
  %11 = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %25, !prof !25

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.pcpu_gen_cookie, ptr %9, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 4095
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22, !prof !17

18:                                               ; preds = %13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 2)) #13, !srcloc !22
  %19 = call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 2), ptr getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 2), i64 4096, ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 2)) #13, !srcloc !27
  %20 = extractvalue { i64, i32 } %19, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %21 = add i64 %20, -4096
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i64 [ %21, %18 ], [ %15, %13 ]
  %24 = add i64 %23, 1
  store i64 %24, ptr %14, align 8
  br label %28

25:                                               ; preds = %0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 3)) #13, !srcloc !22
  %26 = call { i64, i32 } asm sideeffect "@ atomic64_sub_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 3), ptr getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 3), i64 1, ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @net_cookie, i32 0, i32 3)) #13, !srcloc !30
  %27 = extractvalue { i64, i32 } %26, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i64 [ %24, %22 ], [ %27, %25 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !22
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #13, !srcloc !32
  store i64 %29, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 41), align 64
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  store i32 1, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  store ptr @init_user_ns, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  store i32 0, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13), align 4
  store i32 33554436, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13, i32 0, i32 1), align 64
  store ptr null, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13, i32 1), align 8
  store i32 0, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 5), align 4
  call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 9), ptr noundef nonnull @.str.5, ptr noundef nonnull @setup_net.__key) #13
  %31 = load ptr, ptr @pernet_list, align 4
  %32 = icmp eq ptr %31, @pernet_list
  br i1 %32, label %40, label %36

33:                                               ; preds = %36
  %34 = load ptr, ptr %37, align 4
  %35 = icmp eq ptr %34, @pernet_list
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %38 = call fastcc i32 @ops_init(ptr noundef %37)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %33

40:                                               ; preds = %33, %28
  %41 = phi i32 [ 0, %28 ], [ %38, %33 ]
  call void @down_write(ptr noundef nonnull @net_rwsem) #13
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @net_namespace_list, i32 0, i32 1), align 4
  store ptr @net_namespace_list, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 7), align 4
  store ptr %42, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 7, i32 1), align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !34
  store volatile ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 7), ptr %42, align 4
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 7), ptr getelementptr inbounds (%struct.list_head, ptr @net_namespace_list, i32 0, i32 1), align 4
  call void @up_write(ptr noundef nonnull @net_rwsem) #13
  br label %43

43:                                               ; preds = %144, %40
  %44 = phi i32 [ %38, %144 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret i32 %44

45:                                               ; preds = %36
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), ptr %47, align 4
  store ptr %46, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), align 4
  store ptr %1, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8, i32 1), align 8
  store volatile ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), ptr %1, align 8
  %48 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, @pernet_list
  br i1 %50, label %75, label %51

51:                                               ; preds = %73, %45
  %52 = phi ptr [ %74, %73 ], [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 8), %45 ]
  %53 = phi ptr [ %71, %73 ], [ %49, %45 ]
  %54 = getelementptr inbounds %struct.pernet_operations, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = icmp eq ptr %52, %1
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = getelementptr i8, ptr %52, i32 -36
  call void %55(ptr noundef %60) #13
  %61 = load ptr, ptr %52, align 4
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %69, label %63

63:                                               ; preds = %63, %59
  %64 = phi ptr [ %67, %63 ], [ %61, %59 ]
  %65 = load ptr, ptr %54, align 4
  %66 = getelementptr i8, ptr %64, i32 -36
  call void %65(ptr noundef %66) #13
  %67 = load ptr, ptr %64, align 4
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %69, label %63

69:                                               ; preds = %63, %59, %51
  %70 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, @pernet_list
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %1, align 8
  br label %51

75:                                               ; preds = %69, %45
  call void @synchronize_rcu() #13
  %76 = load ptr, ptr %48, align 4
  %77 = icmp eq ptr %76, @pernet_list
  br i1 %77, label %144, label %81

78:                                               ; preds = %106
  %79 = load ptr, ptr %48, align 4
  %80 = icmp eq ptr %79, @pernet_list
  br i1 %80, label %144, label %110

81:                                               ; preds = %106, %75
  %82 = phi ptr [ %108, %106 ], [ %76, %75 ]
  %83 = getelementptr inbounds %struct.pernet_operations, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  %86 = load ptr, ptr %1, align 8
  %87 = icmp eq ptr %86, %1
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %81
  %90 = getelementptr i8, ptr %86, i32 -36
  call void %84(ptr noundef %90) #13
  %91 = call i32 @__cond_resched() #13
  %92 = load ptr, ptr %86, align 4
  %93 = icmp eq ptr %92, %1
  br i1 %93, label %101, label %94

94:                                               ; preds = %94, %89
  %95 = phi ptr [ %99, %94 ], [ %92, %89 ]
  %96 = load ptr, ptr %83, align 4
  %97 = getelementptr i8, ptr %95, i32 -36
  call void %96(ptr noundef %97) #13
  %98 = call i32 @__cond_resched() #13
  %99 = load ptr, ptr %95, align 4
  %100 = icmp eq ptr %99, %1
  br i1 %100, label %101, label %94

101:                                              ; preds = %94, %89, %81
  %102 = getelementptr inbounds %struct.pernet_operations, ptr %82, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void %103(ptr noundef nonnull %1) #13
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, @pernet_list
  br i1 %109, label %78, label %81

110:                                              ; preds = %140, %78
  %111 = phi ptr [ %142, %140 ], [ %79, %78 ]
  %112 = getelementptr inbounds %struct.pernet_operations, ptr %111, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.pernet_operations, ptr %111, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  %119 = load ptr, ptr %1, align 8
  %120 = icmp eq ptr %119, %1
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %140, label %122

122:                                              ; preds = %115
  %123 = load i32, ptr %117, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %124 = getelementptr i8, ptr %119, i32 1436
  %125 = load volatile ptr, ptr %124, align 64
  %126 = getelementptr [0 x ptr], ptr %125, i32 0, i32 %123
  %127 = load ptr, ptr %126, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call void @kfree(ptr noundef %127) #13
  %128 = load ptr, ptr %119, align 4
  %129 = icmp eq ptr %128, %1
  br i1 %129, label %140, label %130

130:                                              ; preds = %130, %122
  %131 = phi ptr [ %138, %130 ], [ %128, %122 ]
  %132 = load ptr, ptr %116, align 4
  %133 = load i32, ptr %132, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %134 = getelementptr i8, ptr %131, i32 1436
  %135 = load volatile ptr, ptr %134, align 64
  %136 = getelementptr [0 x ptr], ptr %135, i32 0, i32 %133
  %137 = load ptr, ptr %136, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call void @kfree(ptr noundef %137) #13
  %138 = load ptr, ptr %131, align 4
  %139 = icmp eq ptr %138, %1
  br i1 %139, label %140, label %130

140:                                              ; preds = %130, %122, %115, %110
  %141 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, @pernet_list
  br i1 %143, label %144, label %110

144:                                              ; preds = %140, %78, %75
  call void @rcu_barrier() #13
  br label %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_net_newid(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [6 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 17
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %8 = icmp eq ptr %2, null
  br i1 %8, label %97, label %9

9:                                                ; preds = %7
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %97

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 20
  %12 = add i32 %5, -20
  %13 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 5, ptr noundef %11, i32 noundef %12, ptr noundef nonnull @rtnl_net_policy, i32 noundef 0, ptr noundef %2) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %97, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg) #13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %97, label %21

21:                                               ; preds = %19
  store ptr @rtnl_net_newid.__msg, ptr %2, align 4
  br label %97

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %17, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %26, i32 4
  %30 = load i32, ptr %29, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %31 = call ptr @find_task_by_vpid(i32 noundef %30) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %34 = load ptr, ptr %25, align 4
  br label %56

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 92
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nsproxy, ptr %38, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  br label %50

43:                                               ; preds = %22
  %44 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.7) #13
  %48 = icmp eq ptr %2, null
  br i1 %48, label %97, label %49

49:                                               ; preds = %47
  store ptr @rtnl_net_newid.__msg.7, ptr %2, align 4
  br label %97

50:                                               ; preds = %40, %35
  %51 = phi ptr [ %42, %40 ], [ inttoptr (i32 -3 to ptr), %35 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %52 = load i16, ptr %36, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %54 = load ptr, ptr %25, align 4
  %55 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %43, %33
  %57 = phi ptr [ %51, %50 ], [ inttoptr (i32 -3 to ptr), %33 ], [ inttoptr (i32 -22 to ptr), %43 ]
  %58 = phi ptr [ %54, %50 ], [ %34, %33 ], [ %45, %43 ]
  %59 = icmp eq ptr %2, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  %62 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %62, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.8) #13
  store ptr @rtnl_net_newid.__msg.8, ptr %2, align 4
  br label %64

63:                                               ; preds = %56
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.8) #13
  br label %64

64:                                               ; preds = %63, %60
  %65 = ptrtoint ptr %57 to i32
  br label %97

66:                                               ; preds = %50
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 5)) #13
  %67 = call i32 @idr_for_each(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13), ptr noundef nonnull @net_eq_idr, ptr noundef %51) #13
  %68 = icmp eq i32 %67, -1
  %69 = icmp sgt i32 %67, 0
  %70 = or i1 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 5)) #13
  %72 = icmp eq ptr %2, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %54, ptr %74, align 4
  %75 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %75, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.9) #13
  store ptr @rtnl_net_newid.__msg.9, ptr %2, align 4
  br label %97

76:                                               ; preds = %71
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.9) #13
  br label %97

77:                                               ; preds = %66
  %78 = icmp sgt i32 %24, -1
  %79 = add i32 %24, 1
  %80 = select i1 %78, i32 %24, i32 0
  %81 = select i1 %78, i32 %79, i32 0
  %82 = call i32 @idr_alloc(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13), ptr noundef %51, i32 noundef %80, i32 noundef %81, i32 noundef 2592) #13
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 5)) #13
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %86 = load i32, ptr %85, align 4
  call fastcc void @rtnl_net_notifyid(ptr noundef nonnull @init_net, i32 noundef %82, i32 noundef %86, ptr noundef %1, i32 noundef 3264)
  br label %97

87:                                               ; preds = %77
  %88 = icmp eq i32 %82, -28
  %89 = select i1 %88, i1 %78, i1 false
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = icmp eq ptr %2, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %90
  %93 = load ptr, ptr %16, align 4
  %94 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %95, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.10) #13
  store ptr @rtnl_net_newid.__msg.10, ptr %2, align 4
  br label %97

96:                                               ; preds = %90
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_newid.__msg.10) #13
  br label %97

97:                                               ; preds = %96, %92, %87, %84, %76, %73, %64, %49, %47, %21, %19, %10, %9, %7
  %98 = phi i32 [ %65, %64 ], [ %13, %10 ], [ -22, %21 ], [ -22, %19 ], [ -22, %49 ], [ -22, %47 ], [ 0, %84 ], [ %82, %87 ], [ -17, %76 ], [ -17, %73 ], [ -17, %96 ], [ -17, %92 ], [ -22, %9 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_net_getid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [6 x ptr], align 4
  %5 = alloca %struct.net_fill_args, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  %6 = getelementptr inbounds i8, ptr %5, i32 20
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.net_fill_args, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.net_fill_args, ptr %5, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.net_fill_args, ptr %5, i32 0, i32 3
  store i32 88, ptr %13, align 4
  %14 = getelementptr inbounds %struct.net_fill_args, ptr %5, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.net_fill_args, ptr %5, i32 0, i32 5
  %16 = getelementptr inbounds %struct.net_fill_args, ptr %5, i32 0, i32 6
  store i32 0, ptr %16, align 4
  %17 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #13
  %18 = load i32, ptr %1, align 4
  %19 = icmp ult i32 %18, 17
  br i1 %17, label %28, label %20

20:                                               ; preds = %3
  br i1 %19, label %21, label %24

21:                                               ; preds = %20
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %22 = icmp eq ptr %2, null
  br i1 %22, label %150, label %23

23:                                               ; preds = %21
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %150

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %1, i32 20
  %26 = add i32 %18, -20
  %27 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 5, ptr noundef %25, i32 noundef %26, ptr noundef nonnull @rtnl_net_policy, i32 noundef 0, ptr noundef %2) #13
  br label %47

28:                                               ; preds = %3
  br i1 %19, label %29, label %32

29:                                               ; preds = %28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %30 = icmp eq ptr %2, null
  br i1 %30, label %150, label %31

31:                                               ; preds = %29
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %150

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 20
  %34 = add i32 %18, -20
  %35 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 5, ptr noundef %33, i32 noundef %34, ptr noundef nonnull @rtnl_net_policy, i32 noundef 3, ptr noundef %2) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 4
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds ptr, ptr %4, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %39, i1 %42, i1 false
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_valid_getid_req.__msg) #13
  %45 = icmp eq ptr %2, null
  br i1 %45, label %150, label %46

46:                                               ; preds = %44
  store ptr @rtnl_net_valid_getid_req.__msg, ptr %2, align 4
  br label %150

47:                                               ; preds = %32, %24
  %48 = phi i32 [ %35, %32 ], [ %27, %24 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %150, label %50

50:                                               ; preds = %47, %37
  %51 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %52, i32 4
  %56 = load i32, ptr %55, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %57 = call ptr @find_task_by_vpid(i32 noundef %56) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %60) #13
  %61 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 92
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.nsproxy, ptr %62, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi ptr [ %66, %64 ], [ inttoptr (i32 -3 to ptr), %59 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %69 = load i16, ptr %60, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %71

71:                                               ; preds = %67, %54
  %72 = phi ptr [ %68, %67 ], [ inttoptr (i32 -3 to ptr), %54 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %92

73:                                               ; preds = %50
  %74 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %79, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %86 = call ptr @idr_find(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13), i32 noundef %83) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %81
  br label %92

89:                                               ; preds = %77
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_getid.__msg) #13
  %90 = icmp eq ptr %2, null
  br i1 %90, label %150, label %91

91:                                               ; preds = %89
  store ptr @rtnl_net_getid.__msg, ptr %2, align 4
  br label %150

92:                                               ; preds = %88, %85, %71
  %93 = phi ptr [ %51, %71 ], [ %78, %88 ], [ %78, %85 ]
  %94 = phi ptr [ %72, %71 ], [ inttoptr (i32 -2 to ptr), %88 ], [ %86, %85 ]
  %95 = load ptr, ptr %93, align 4
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %107

97:                                               ; preds = %92, %73
  %98 = phi ptr [ %95, %92 ], [ %75, %73 ]
  %99 = phi ptr [ %94, %92 ], [ inttoptr (i32 -22 to ptr), %73 ]
  %100 = icmp eq ptr %2, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %98, ptr %102, align 4
  %103 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %103, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_getid.__msg.11) #13
  store ptr @rtnl_net_getid.__msg.11, ptr %2, align 4
  br label %105

104:                                              ; preds = %97
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_getid.__msg.11) #13
  br label %105

105:                                              ; preds = %104, %101
  %106 = ptrtoint ptr %99 to i32
  br label %150

107:                                              ; preds = %92
  %108 = getelementptr inbounds [6 x ptr], ptr %4, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %133, label %111

111:                                              ; preds = %107
  %112 = getelementptr i8, ptr %109, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %115 = load ptr, ptr %114, align 8
  %116 = call ptr @rtnl_get_net_ns_capable(ptr noundef %115, i32 noundef %113) #13
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = icmp eq ptr %2, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %108, align 4
  %122 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %123, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_getid.__msg.12) #13
  store ptr @rtnl_net_getid.__msg.12, ptr %2, align 4
  br label %131

124:                                              ; preds = %118
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_net_getid.__msg.12) #13
  br label %131

125:                                              ; preds = %111
  store i8 1, ptr %15, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %126 = call i32 @idr_for_each(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 13), ptr noundef nonnull @net_eq_idr, ptr noundef %94) #13
  %127 = icmp eq i32 %126, -1
  %128 = icmp sgt i32 %126, 0
  %129 = select i1 %128, i32 %126, i32 -1
  %130 = select i1 %127, i32 0, i32 %129
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  store i32 %130, ptr %16, align 4
  br label %133

131:                                              ; preds = %124, %120
  %132 = ptrtoint ptr %116 to i32
  br label %150

133:                                              ; preds = %125, %107
  %134 = phi ptr [ @init_net, %107 ], [ %116, %125 ]
  %135 = call ptr @__alloc_skb(i32 noundef 36, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %150, label %137

137:                                              ; preds = %133
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %138 = getelementptr inbounds %struct.net, ptr %134, i32 0, i32 13
  %139 = call i32 @idr_for_each(ptr noundef %138, ptr noundef nonnull @net_eq_idr, ptr noundef %94) #13
  %140 = icmp eq i32 %139, -1
  %141 = icmp sgt i32 %139, 0
  %142 = select i1 %141, i32 %139, i32 -1
  %143 = select i1 %140, i32 0, i32 %142
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  store i32 %143, ptr %14, align 4
  %144 = call fastcc i32 @rtnl_net_fill(ptr noundef nonnull %135, ptr noundef nonnull %5)
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %137
  %147 = load i32, ptr %7, align 4
  %148 = call i32 @rtnl_unicast(ptr noundef nonnull %135, ptr noundef nonnull @init_net, i32 noundef %147) #13
  br label %150

149:                                              ; preds = %137
  call void @kfree_skb_reason(ptr noundef nonnull %135, i32 noundef 0) #13
  br label %150

150:                                              ; preds = %149, %146, %133, %131, %105, %91, %89, %47, %46, %44, %31, %29, %23, %21
  %151 = phi i32 [ %106, %105 ], [ %48, %47 ], [ -22, %91 ], [ -22, %89 ], [ -22, %46 ], [ -22, %44 ], [ -22, %23 ], [ -22, %21 ], [ -22, %31 ], [ -22, %29 ], [ %132, %131 ], [ %144, %149 ], [ %148, %146 ], [ -12, %133 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_net_dumpid(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [6 x ptr], align 4
  %4 = alloca %struct.rtnl_net_dump_cb, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  store i32 0, ptr %5, align 4, !annotation !9
  store ptr @init_net, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 1
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nlmsghdr, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3, i32 2
  store i32 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3, i32 3
  store i32 88, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3, i32 5
  %21 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 3, i32 6
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 4
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %4, i32 0, i32 5
  %24 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %27 = load i8, ptr %26, align 4, !range !18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %96, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #13, !annotation !9
  %34 = load i32, ptr %14, align 4
  %35 = icmp ult i32 %34, 17
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %37 = icmp eq ptr %33, null
  br i1 %37, label %89, label %38

38:                                               ; preds = %36
  store ptr @__nlmsg_parse.__msg, ptr %33, align 4
  br label %89

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %14, i32 20
  %41 = add i32 %34, -20
  %42 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 5, ptr noundef %40, i32 noundef %41, ptr noundef nonnull @rtnl_net_policy, i32 noundef 3, ptr noundef %33) #13
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %3, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %54

47:                                               ; preds = %77
  %48 = icmp eq ptr %33, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %74, align 4
  %51 = getelementptr inbounds %struct.netlink_ext_ack, ptr %33, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.netlink_ext_ack, ptr %33, i32 0, i32 2
  store ptr null, ptr %52, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_net_req.__msg) #13
  store ptr @rtnl_valid_dump_net_req.__msg, ptr %33, align 4
  br label %91

53:                                               ; preds = %47
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_net_req.__msg) #13
  br label %91

54:                                               ; preds = %83, %69, %65, %61, %44
  %55 = phi ptr [ %45, %44 ], [ %63, %61 ], [ %67, %65 ], [ %71, %69 ], [ %86, %83 ]
  %56 = icmp eq ptr %33, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.netlink_ext_ack, ptr %33, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  %59 = getelementptr inbounds %struct.netlink_ext_ack, ptr %33, i32 0, i32 2
  store ptr null, ptr %59, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_net_req.__msg.13) #13
  store ptr @rtnl_valid_dump_net_req.__msg.13, ptr %33, align 4
  br label %89

60:                                               ; preds = %54
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtnl_valid_dump_net_req.__msg.13) #13
  br label %89

61:                                               ; preds = %44
  %62 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %54

65:                                               ; preds = %61
  %66 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %54

69:                                               ; preds = %65
  %70 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %54

73:                                               ; preds = %69
  %74 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %75, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = call ptr @rtnl_get_net_ns_capable(ptr noundef %31, i32 noundef %79) #13
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %47, label %82

82:                                               ; preds = %77
  store i8 1, ptr %20, align 4
  store ptr @init_net, ptr %6, align 4
  store ptr %80, ptr %4, align 4
  br label %83

83:                                               ; preds = %82, %73
  %84 = phi ptr [ %80, %82 ], [ @init_net, %73 ]
  %85 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %54

88:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %96

89:                                               ; preds = %60, %57, %39, %38, %36
  %90 = phi i32 [ -22, %36 ], [ -22, %38 ], [ -22, %57 ], [ -22, %60 ], [ %42, %39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %108

91:                                               ; preds = %53, %49
  %92 = ptrtoint ptr %80 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %93 = icmp slt ptr %80, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %4, align 4
  br label %96

96:                                               ; preds = %94, %88, %2
  %97 = phi ptr [ %95, %94 ], [ @init_net, %2 ], [ %84, %88 ]
  %98 = phi i32 [ %92, %94 ], [ 0, %2 ], [ 0, %88 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %99 = getelementptr inbounds %struct.net, ptr %97, i32 0, i32 13
  %100 = call i32 @idr_for_each(ptr noundef %99, ptr noundef nonnull @rtnl_net_dumpid_one, ptr noundef nonnull %4) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %101 = load i32, ptr %22, align 4
  store i32 %101, ptr %24, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = phi i32 [ %92, %91 ], [ %98, %96 ]
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %107 = load i32, ptr %106, align 8
  br label %108

108:                                              ; preds = %105, %102, %89
  %109 = phi i32 [ %107, %105 ], [ %103, %102 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ops_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %17, !prof !17

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net_namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 91, 0\0A.popsection", ""() #13, !srcloc !35
  unreachable

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %14
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr [0 x ptr], ptr %18, i32 0, i32 %14
  store ptr %10, ptr %22, align 4
  br label %39

23:                                               ; preds = %17
  %24 = load i32, ptr @max_gen_ptrs, align 4
  %25 = shl i32 %24, 2
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr @max_gen_ptrs, align 4
  store i32 %29, ptr %26, align 64
  %30 = getelementptr [0 x ptr], ptr %26, i32 0, i32 3
  %31 = getelementptr [0 x ptr], ptr %18, i32 0, i32 3
  %32 = load i32, ptr %18, align 4
  %33 = shl i32 %32, 2
  %34 = add i32 %33, -12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %30, ptr align 4 %31, i32 %34, i1 false) #13
  %35 = getelementptr [0 x ptr], ptr %26, i32 0, i32 %14
  store ptr %10, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  store volatile ptr %26, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %36 = icmp eq ptr %18, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.anon.132, ptr %18, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %38, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %39

39:                                               ; preds = %37, %28, %21, %5, %1
  %40 = phi ptr [ null, %5 ], [ null, %1 ], [ %10, %21 ], [ %10, %37 ], [ %10, %28 ]
  %41 = getelementptr inbounds %struct.pernet_operations, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef nonnull @init_net) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %23
  %48 = phi i32 [ %45, %44 ], [ -12, %23 ]
  %49 = phi ptr [ %40, %44 ], [ %10, %23 ]
  tail call void @kfree(ptr noundef %49) #13
  br label %50

50:                                               ; preds = %47, %44, %39, %9
  %51 = phi i32 [ 0, %44 ], [ %48, %47 ], [ -12, %9 ], [ 0, %39 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @net_ns_net_init(ptr noundef %0) #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14
  store volatile i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %4 = tail call i32 @proc_alloc_inum(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @net_ns_net_exit(ptr nocapture noundef readonly %0) #11 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %3 = load i32, ptr %2, align 8
  tail call void @proc_free_inum(i32 noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_get_net_ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtnl_net_dumpid_one(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 3
  %11 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 3, i32 4
  store i32 %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 3, i32 5
  %13 = load i8, ptr %12, align 4, !range !18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 13
  %19 = tail call i32 @idr_for_each(ptr noundef %18, ptr noundef nonnull @net_eq_idr, ptr noundef %1) #13
  %20 = icmp eq i32 %19, -1
  %21 = icmp sgt i32 %19, 0
  %22 = select i1 %21, i32 %19, i32 -1
  %23 = select i1 %20, i32 0, i32 %22
  %24 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 3, i32 6
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %15, %9
  %26 = getelementptr inbounds %struct.rtnl_net_dump_cb, ptr %2, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call fastcc i32 @rtnl_net_fill(ptr noundef %27, ptr noundef %10)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %4, align 4
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i32 [ %31, %30 ], [ %5, %3 ]
  %34 = add i32 %33, 1
  store i32 %34, ptr %4, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i32 [ 0, %32 ], [ %28, %25 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }

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
!10 = !{i64 2149052137}
!11 = !{i64 2149052354}
!12 = !{i64 2148958885}
!13 = !{i64 2148954709}
!14 = !{i64 2148954784, i64 2148954811, i64 2148954858, i64 2148954880, i64 2148954908, i64 2148954928}
!15 = !{i64 2148981888}
!16 = !{i64 2155429245}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i8 0, i8 2}
!19 = !{i64 2155400760}
!20 = !{i64 498042}
!21 = !{i64 2148172896}
!22 = !{i64 573664, i64 2148063635, i64 2148063661, i64 2148063708, i64 2148063730, i64 2148063758, i64 2148063778}
!23 = !{i64 2148075734, i64 2148075766, i64 2148075795, i64 2148075829, i64 2148075860, i64 2148075883}
!24 = !{i64 2148173099}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148212368}
!27 = !{i64 2148087033, i64 2148087067, i64 2148087101, i64 2148087135, i64 2148087169, i64 2148087205, i64 2148087228}
!28 = !{i64 2148212573}
!29 = !{i64 2148215213}
!30 = !{i64 2148089519, i64 2148089553, i64 2148089587, i64 2148089621, i64 2148089655, i64 2148089691, i64 2148089714}
!31 = !{i64 2148215418}
!32 = !{i64 2148077407, i64 2148077433, i64 2148077462, i64 2148077496, i64 2148077527, i64 2148077550}
!33 = !{i64 2155400808}
!34 = !{i64 2149374773}
!35 = !{i64 2155376498, i64 2155376986, i64 2155376535, i64 2155376591, i64 2155376625, i64 2155376649, i64 2155376690, i64 2155376711, i64 2155376739, i64 2155376773}
!36 = !{i64 2155382658}
