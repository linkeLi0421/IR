; ModuleID = '/llk/IR/security/keys/keyring.c_pt.bc'
source_filename = "../security/keys/keyring.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_keyring:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_keyring\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_keyring:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_search:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_search\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_search:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_restrict:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_restrict\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_restrict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_link:\09\09\09\09\09"
module asm "\09.asciz \09\22key_link\22\09\09\09\09\09"
module asm "__kstrtabns_key_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22key_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_key_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_move:\09\09\09\09\09"
module asm "\09.asciz \09\22key_move\22\09\09\09\09\09"
module asm "__kstrtabns_key_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_clear\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.assoc_array_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, %struct.rw_semaphore, ptr, ptr, %union.anon.3, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.4, %union.anon.94, ptr }
%union.anon.0 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.5, ptr, ptr, ptr }
%union.anon.5 = type { i32 }
%union.anon.94 = type { %union.key_payload }
%struct.key_restriction = type { ptr, ptr, ptr }
%struct.keyring_read_iterator_context = type { i32, i32, ptr }
%struct.anon.6 = type { i16, [2 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.78, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.78 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type {}
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.anon.98 = type { ptr, ptr, i32 }
%struct.assoc_array_shortcut = type { ptr, i32, i32, ptr, [0 x i32] }
%struct.assoc_array_node = type { ptr, i8, [16 x ptr], i32 }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.assoc_array_edit = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [1 x ptr], ptr, [16 x ptr], ptr, ptr, i32, [2 x %struct.anon.96], [1 x %struct.anon.97], [17 x i8] }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, i8 }

@keyring_name_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"keyring\00", align 1
@key_type_keyring = dso_local global %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr @keyring_preparse, ptr @keyring_free_preparse, ptr @keyring_instantiate, ptr null, ptr null, ptr null, ptr @keyring_revoke, ptr @keyring_destroy, ptr @keyring_describe, ptr @keyring_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__kstrtab_key_type_keyring = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_keyring = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_keyring = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_keyring to i32), ptr @__kstrtab_key_type_keyring, ptr @__kstrtabns_key_type_keyring }, section "___ksymtab+key_type_keyring", align 4
@key_set_index_key.default_domain_tag = internal global %struct.key_tag { %struct.callback_head zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, i8 0 }, align 4
@__kstrtab_keyring_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_alloc to i32), ptr @__kstrtab_keyring_alloc, ptr @__kstrtabns_keyring_alloc }, section "___ksymtab+keyring_alloc", align 4
@__kstrtab_keyring_search = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_search = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_search = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_search to i32), ptr @__kstrtab_keyring_search, ptr @__kstrtabns_keyring_search }, section "___ksymtab+keyring_search", align 4
@keyring_serialise_restrict_sem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @keyring_serialise_restrict_sem, i64 16), ptr getelementptr (i8, ptr @keyring_serialise_restrict_sem, i64 16) } }, align 4
@__kstrtab_keyring_restrict = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_restrict = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_restrict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_restrict to i32), ptr @__kstrtab_keyring_restrict, ptr @__kstrtabns_keyring_restrict }, section "___ksymtab+keyring_restrict", align 4
@keyring_assoc_array_ops = internal constant %struct.assoc_array_ops { ptr @keyring_get_key_chunk, ptr @keyring_get_object_key_chunk, ptr @keyring_compare_object, ptr @keyring_diff_objects, ptr @keyring_free_object }, align 4
@keyring_serialise_link_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @keyring_serialise_link_lock, i64 12), ptr getelementptr (i8, ptr @keyring_serialise_link_lock, i64 12) } }, align 4
@__kstrtab_key_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_link = external dso_local constant [0 x i8], align 1
@__ksymtab_key_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_link to i32), ptr @__kstrtab_key_link, ptr @__kstrtabns_key_link }, section "___ksymtab+key_link", align 4
@__kstrtab_key_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_key_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_unlink to i32), ptr @__kstrtab_key_unlink, ptr @__kstrtabns_key_unlink }, section "___ksymtab+key_unlink", align 4
@__kstrtab_key_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_move = external dso_local constant [0 x i8], align 1
@__ksymtab_key_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_move to i32), ptr @__kstrtab_key_move, ptr @__kstrtabns_key_move }, section "___ksymtab+key_move", align 4
@__kstrtab_keyring_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_clear to i32), ptr @__kstrtab_keyring_clear, ptr @__kstrtabns_keyring_clear }, section "___ksymtab+keyring_clear", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"[anon]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c": %lu\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c": empty\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_key_link, ptr @__ksymtab_key_move, ptr @__ksymtab_key_type_keyring, ptr @__ksymtab_key_unlink, ptr @__ksymtab_keyring_alloc, ptr @__ksymtab_keyring_clear, ptr @__ksymtab_keyring_restrict, ptr @__ksymtab_keyring_search], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_free_user_ns(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_write_lock(ptr noundef nonnull @keyring_name_lock) #19
  %2 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 10, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @keyring_name_lock, i32 0) #19, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !12
  %7 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  tail call void @key_put(ptr noundef %8) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @keyring_preparse(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @keyring_free_preparse(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyring_instantiate(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 1
  switch i8 %9, label %10 [
    i8 0, label %14
    i8 46, label %14
  ]

10:                                               ; preds = %8
  tail call void @_raw_write_lock(ptr noundef nonnull @keyring_name_lock) #19
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 10, i32 1), align 4
  store ptr %11, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 10, i32 1), align 4
  store ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 10), ptr %11, align 4
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %11, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @keyring_name_lock, i32 0) #19, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !12
  br label %14

14:                                               ; preds = %10, %8, %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keyring_revoke(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %3 = tail call ptr @assoc_array_clear(ptr noundef %2, ptr noundef nonnull @keyring_assoc_array_ops) #19
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %3) #19
  br label %8

8:                                                ; preds = %7, %5
  %9 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef 0) #19
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keyring_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  tail call void @_raw_write_lock(ptr noundef nonnull @keyring_name_lock) #19
  %6 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load volatile ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %10, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @keyring_name_lock, i32 0) #19, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !12
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.key_restriction, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @key_put(ptr noundef %23) #19
  tail call void @kfree(ptr noundef nonnull %19) #19
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  tail call void @assoc_array_destroy(ptr noundef %25, ptr noundef nonnull @keyring_assoc_array_ops) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keyring_describe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.1, ptr %4
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %8 = load volatile i16, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %12) #19
  br label %16

15:                                               ; preds = %10
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.3) #19
  br label %16

16:                                               ; preds = %15, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyring_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.keyring_read_iterator_context, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = and i32 %2, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = icmp ne ptr %1, null
  %9 = icmp ne i32 %2, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %4, i32 0, i32 2
  store ptr %1, ptr %12, align 4
  store i32 %2, ptr %4, align 4
  %13 = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %4, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %15 = call i32 @assoc_array_iterate(ptr noundef %14, ptr noundef nonnull @keyring_read_iterator, ptr noundef nonnull %4) #19
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 2
  br label %21

21:                                               ; preds = %17, %11, %3
  %22 = phi i32 [ %20, %17 ], [ -22, %3 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_set_index_key(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 2)
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.anon.6, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %7, ptr align 1 %9, i32 %6, i1 false)
  %10 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %15, label %30

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.key_type, ptr %14, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @llvm.thread.pointer() #19
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 92
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 16
  br label %28

28:                                               ; preds = %20, %15
  %29 = phi ptr [ %27, %20 ], [ @key_set_index_key.default_domain_tag, %15 ]
  store ptr %29, ptr %10, align 4
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi ptr [ %11, %1 ], [ %29, %28 ]
  %32 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %33 = zext i16 %4 to i32
  %34 = ptrtoint ptr %14 to i32
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i32 %33, 13
  %37 = zext i32 %36 to i64
  %38 = mul nuw nsw i64 %35, %37
  %39 = lshr i64 %38, 32
  %40 = and i64 %38, 4294967295
  %41 = mul nuw nsw i64 %40, 9207
  %42 = mul nuw nsw i64 %39, 39543763894272
  %43 = add nuw nsw i64 %42, %41
  %44 = ptrtoint ptr %31 to i32
  %45 = lshr i64 %43, 32
  %46 = zext i32 %44 to i64
  %47 = mul nuw nsw i64 %45, %46
  %48 = and i64 %43, 4294967295
  %49 = mul nuw i64 %48, %46
  %50 = shl i64 %47, 32
  %51 = add i64 %50, %49
  %52 = lshr i64 %47, 32
  %53 = add i64 %51, %52
  %54 = lshr i64 %53, 32
  %55 = mul nuw nsw i64 %54, 9207
  %56 = and i64 %53, 4294967295
  %57 = mul nuw nsw i64 %56, 9207
  %58 = mul i64 %54, 39543763894272
  %59 = add i64 %58, %57
  %60 = lshr i64 %55, 32
  %61 = add i64 %59, %60
  %62 = icmp eq i16 %4, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %63, %30
  %64 = phi i32 [ %69, %63 ], [ %33, %30 ]
  %65 = phi i64 [ %87, %63 ], [ %61, %30 ]
  %66 = phi ptr [ %68, %63 ], [ %32, %30 ]
  %67 = tail call i32 @llvm.smin.i32(i32 %64, i32 4) #19
  store i32 0, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %2, ptr align 1 %66, i32 %67, i1 false) #19
  %68 = getelementptr i8, ptr %66, i32 %67
  %69 = sub i32 %64, %67
  %70 = load i32, ptr %2, align 4
  %71 = lshr i64 %65, 32
  %72 = zext i32 %70 to i64
  %73 = mul nuw i64 %71, %72
  %74 = and i64 %65, 4294967295
  %75 = mul nuw i64 %74, %72
  %76 = shl i64 %73, 32
  %77 = add i64 %76, %75
  %78 = lshr i64 %73, 32
  %79 = add i64 %77, %78
  %80 = lshr i64 %79, 32
  %81 = mul nuw nsw i64 %80, 9207
  %82 = and i64 %79, 4294967295
  %83 = mul nuw nsw i64 %82, 9207
  %84 = mul i64 %80, 39543763894272
  %85 = add i64 %84, %83
  %86 = lshr i64 %81, 32
  %87 = add i64 %85, %86
  %88 = icmp slt i32 %69, 1
  br i1 %88, label %89, label %63

89:                                               ; preds = %63, %30
  %90 = phi i64 [ %61, %30 ], [ %87, %63 ]
  %91 = lshr i64 %90, 32
  %92 = xor i64 %91, %90
  %93 = trunc i64 %92 to i32
  %94 = icmp ne ptr %14, @key_type_keyring
  %95 = and i32 %93, 15
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = lshr i32 %93, 28
  %100 = or i32 %99, %93
  %101 = or i32 %100, 1
  br label %107

102:                                              ; preds = %89
  %103 = select i1 %94, i1 true, i1 %96
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = mul i32 %93, 17
  %106 = and i32 %105, -16
  br label %107

107:                                              ; preds = %104, %102, %98
  %108 = phi i32 [ %101, %98 ], [ %106, %104 ], [ %93, %102 ]
  store i32 %108, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @key_put_tag(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.key_tag, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #19, !srcloc !15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #19, !srcloc !16
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %12, label %8, !prof !17

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #19
  br label %12

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %10 = icmp eq ptr %0, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @kvfree_call_rcu(ptr noundef nonnull %0, ptr noundef null) #19
  br label %12

12:                                               ; preds = %11, %9, %8, %6
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_remove_domain(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.key_tag, ptr %0, i32 0, i32 2
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.key_tag, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #19, !srcloc !15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #19, !srcloc !16
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %13, label %9, !prof !17

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #19
  br label %13

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %11 = icmp eq ptr %0, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %0, ptr noundef null) #19
  br label %14

13:                                               ; preds = %9, %7
  tail call void @key_schedule_gc_links() #19
  br label %14

14:                                               ; preds = %13, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_schedule_gc_links() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @keyring_alloc(ptr noundef %0, [1 x i32] %1, [1 x i32] %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = tail call ptr @key_alloc(ptr noundef nonnull @key_type_keyring, ptr noundef %0, [1 x i32] %1, [1 x i32] %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #19
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @key_instantiate_and_link(ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef null) #19
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  tail call void @key_put(ptr noundef %9) #19
  %15 = inttoptr i32 %12 to ptr
  br label %16

16:                                               ; preds = %14, %11, %8
  %17 = phi ptr [ %9, %8 ], [ %15, %14 ], [ %9, %11 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @restrict_link_reject(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @key_default_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @keyring_search_rcu(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 4
  store ptr @keyring_search_iterator, ptr %3, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 6
  %6 = trunc i32 %4 to i8
  %7 = and i8 %6, 1
  store i8 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 7
  store ptr inttoptr (i32 -11 to ptr), ptr %8, align 8
  %9 = and i32 %4, -2
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 15, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, @key_type_keyring
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @key_task_permission(ptr noundef %0, ptr noundef %21, i32 noundef 4) #19
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = inttoptr i32 %22 to ptr
  br label %46

26:                                               ; preds = %19, %14
  %27 = tail call i64 @ktime_get_real_seconds() #19
  %28 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 8
  store i64 %27, ptr %28, align 8
  %29 = tail call fastcc zeroext i1 @search_nested_keyrings(ptr noundef %10, ptr noundef %1)
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load ptr, ptr %8, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = and i32 %32, -2
  %34 = inttoptr i32 %33 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #19, !srcloc !15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #19, !srcloc !19
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !20

38:                                               ; preds = %30
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !17

42:                                               ; preds = %38, %30
  %43 = phi i32 [ 2, %30 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %43) #19
  br label %44

44:                                               ; preds = %42, %38, %26
  %45 = load ptr, ptr %8, align 8
  br label %46

46:                                               ; preds = %44, %24, %2
  %47 = phi ptr [ %45, %44 ], [ %25, %24 ], [ inttoptr (i32 -20 to ptr), %2 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyring_search_iterator(ptr noundef %0, ptr noundef %1) #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 14
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 13
  %9 = load volatile i16, ptr %8, align 8
  %10 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 6
  %22 = load volatile i64, ptr %21, align 8
  %23 = and i32 %7, 34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %20
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 8
  %29 = load i64, ptr %28, align 8
  %30 = icmp slt i64 %29, %22
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = and i32 %17, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %70, label %73

34:                                               ; preds = %27, %25, %15
  %35 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call zeroext i1 %36(ptr noundef %5, ptr noundef %35) #19
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load i32, ptr %16, align 8
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 6
  %44 = load i8, ptr %43, align 4, !range !21
  %45 = zext i8 %44 to i32
  %46 = or i32 %4, %45
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @key_task_permission(ptr noundef %47, ptr noundef %49, i32 noundef 4) #19
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %16, align 8
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi i32 [ %53, %52 ], [ %39, %38 ]
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  %58 = icmp slt i16 %9, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = sext i16 %9 to i32
  %62 = inttoptr i32 %61 to ptr
  br label %70

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 6
  %65 = load i8, ptr %64, align 4, !range !21
  %66 = zext i8 %65 to i32
  %67 = or i32 %4, %66
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 7
  store ptr %68, ptr %69, align 8
  br label %76

70:                                               ; preds = %60, %42, %31, %20
  %71 = phi ptr [ %62, %60 ], [ inttoptr (i32 -128 to ptr), %20 ], [ inttoptr (i32 -127 to ptr), %31 ], [ inttoptr (i32 -13 to ptr), %42 ]
  %72 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 7
  store ptr %71, ptr %72, align 8
  br label %73

73:                                               ; preds = %70, %31
  %74 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 5
  %75 = load i32, ptr %74, align 8
  br label %76

76:                                               ; preds = %73, %63, %34, %2
  %77 = phi i32 [ %75, %73 ], [ 1, %63 ], [ 0, %2 ], [ 0, %34 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @search_nested_keyrings(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [6 x %struct.anon.98], align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !22
  %4 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 3
  switch i32 %6, label %8 [
    i32 3, label %7
    i32 0, label %7
  ]

7:                                                ; preds = %2, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #19, !srcloc !23
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @key_set_index_key(ptr noundef %1)
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 2, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  %17 = ptrtoint ptr %0 to i32
  br i1 %16, label %45, label %18

18:                                               ; preds = %13
  %19 = and i32 %17, -4
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 15, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 15, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 15, i32 0, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = icmp eq i16 %34, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = zext i16 %34 to i32
  %40 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 15, i32 0, i32 4
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %9, align 4
  %43 = tail call i32 @bcmp(ptr %41, ptr %42, i32 %39) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38, %13
  %46 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 5
  store i32 2, ptr %46, align 8
  %47 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, @key_type_keyring
  %52 = or i32 %17, 2
  %53 = inttoptr i32 %52 to ptr
  %54 = select i1 %51, ptr %53, ptr %0
  %55 = tail call i32 %48(ptr noundef %54, ptr noundef %1) #19
  switch i32 %55, label %56 [
    i32 1, label %226
    i32 2, label %252
  ]

56:                                               ; preds = %45, %38, %32, %26, %18
  %57 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 5
  store i32 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 4
  %59 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 6
  %60 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 1
  br label %61

61:                                               ; preds = %177, %56
  %62 = phi i32 [ 0, %56 ], [ %182, %177 ]
  %63 = phi ptr [ %0, %56 ], [ %178, %177 ]
  %64 = getelementptr inbounds %struct.key, ptr %63, i32 0, i32 14
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 34
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %214

68:                                               ; preds = %61
  %69 = load i32, ptr %14, align 4
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.key, ptr %63, i32 0, i32 16, i32 0, i32 0, i32 2
  br i1 %70, label %72, label %78

72:                                               ; preds = %68
  %73 = tail call ptr @assoc_array_find(ptr noundef %71, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %1) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %58, align 4
  %77 = tail call i32 %76(ptr noundef nonnull %73, ptr noundef %1) #19
  br label %81

78:                                               ; preds = %68
  %79 = load ptr, ptr %58, align 4
  %80 = tail call i32 @assoc_array_iterate(ptr noundef %71, ptr noundef %79, ptr noundef %1) #19
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %80, %78 ], [ %77, %75 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %226

84:                                               ; preds = %81, %72
  %85 = load i32, ptr %4, align 8
  %86 = and i32 %85, 64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %214, label %88

88:                                               ; preds = %84
  %89 = load volatile ptr, ptr %71, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %214, label %91

91:                                               ; preds = %88
  %92 = ptrtoint ptr %89 to i32
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = and i32 %92, -4
  %96 = inttoptr i32 %95 to ptr
  br i1 %94, label %108, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %96, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %214

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %96, i32 0, i32 3
  %104 = load volatile ptr, ptr %103, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = and i32 %105, -4
  %107 = inttoptr i32 %106 to ptr
  br label %135

108:                                              ; preds = %91
  %109 = getelementptr inbounds %struct.assoc_array_node, ptr %96, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %135, label %116

114:                                              ; preds = %152
  %115 = ptrtoint ptr %148 to i32
  br label %116

116:                                              ; preds = %114, %108
  %117 = phi i32 [ %111, %108 ], [ %115, %114 ]
  %118 = phi i32 [ %62, %108 ], [ %137, %114 ]
  %119 = phi ptr [ %63, %108 ], [ %139, %114 ]
  %120 = and i32 %117, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = and i32 %117, -4
  %124 = inttoptr i32 %123 to ptr
  %125 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %124, i32 0, i32 3
  %126 = load volatile ptr, ptr %125, align 4
  %127 = ptrtoint ptr %126 to i32
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130, !prof !17

130:                                              ; preds = %122
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 763, 0\0A.popsection", ""() #19, !srcloc !24
  unreachable

131:                                              ; preds = %122, %116
  %132 = phi i32 [ %127, %122 ], [ %117, %116 ]
  %133 = and i32 %132, -4
  %134 = inttoptr i32 %133 to ptr
  br label %135

135:                                              ; preds = %217, %131, %108, %102
  %136 = phi i32 [ %225, %217 ], [ 0, %108 ], [ 0, %131 ], [ 0, %102 ]
  %137 = phi i32 [ %218, %217 ], [ %62, %108 ], [ %118, %131 ], [ %62, %102 ]
  %138 = phi ptr [ %222, %217 ], [ %96, %108 ], [ %134, %131 ], [ %107, %102 ]
  %139 = phi ptr [ %220, %217 ], [ %63, %108 ], [ %119, %131 ], [ %63, %102 ]
  %140 = icmp sgt i32 %137, 5
  br label %141

141:                                              ; preds = %205, %135
  %142 = phi i32 [ %212, %205 ], [ %136, %135 ]
  %143 = phi ptr [ %209, %205 ], [ %138, %135 ]
  %144 = icmp slt i32 %142, 16
  br i1 %144, label %145, label %186

145:                                              ; preds = %183, %141
  %146 = phi i32 [ %184, %183 ], [ %142, %141 ]
  %147 = getelementptr %struct.assoc_array_node, ptr %143, i32 0, i32 2, i32 %146
  %148 = load volatile ptr, ptr %147, align 4
  %149 = ptrtoint ptr %148 to i32
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %143, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %114

155:                                              ; preds = %152, %145
  %156 = and i32 %149, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %183, label %158

158:                                              ; preds = %155
  %159 = and i32 %149, -4
  %160 = load i32, ptr %4, align 8
  br i1 %140, label %161, label %166

161:                                              ; preds = %158
  %162 = and i32 %160, 16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %214, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 7
  store ptr inttoptr (i32 -40 to ptr), ptr %165, align 8
  br label %252

166:                                              ; preds = %158
  %167 = and i32 %160, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i8, ptr %59, align 4, !range !21
  %171 = zext i8 %170 to i32
  %172 = or i32 %159, %171
  %173 = inttoptr i32 %172 to ptr
  %174 = load ptr, ptr %60, align 4
  %175 = tail call i32 @key_task_permission(ptr noundef %173, ptr noundef %174, i32 noundef 4) #19
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %169, %166
  %178 = inttoptr i32 %159 to ptr
  %179 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %137
  store ptr %139, ptr %179, align 4
  %180 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %137, i32 1
  store ptr %143, ptr %180, align 4
  %181 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %137, i32 2
  store i32 %146, ptr %181, align 4
  %182 = add nsw i32 %137, 1
  br label %61

183:                                              ; preds = %169, %155
  %184 = add i32 %146, 1
  %185 = icmp eq i32 %184, 16
  br i1 %185, label %186, label %145

186:                                              ; preds = %183, %141
  %187 = load volatile ptr, ptr %143, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %213, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.assoc_array_node, ptr %143, i32 0, i32 1
  %191 = load i8, ptr %190, align 4
  %192 = zext i8 %191 to i32
  %193 = ptrtoint ptr %187 to i32
  %194 = and i32 %193, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %189
  %197 = and i32 %193, -4
  %198 = inttoptr i32 %197 to ptr
  %199 = load volatile ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %213, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %198, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = ptrtoint ptr %199 to i32
  br label %205

205:                                              ; preds = %201, %189
  %206 = phi i32 [ %204, %201 ], [ %193, %189 ]
  %207 = phi i32 [ %203, %201 ], [ %192, %189 ]
  %208 = and i32 %206, -4
  %209 = inttoptr i32 %208 to ptr
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  %212 = add i32 %207, 1
  br i1 %211, label %213, label %141

213:                                              ; preds = %205, %196, %186
  br label %214

214:                                              ; preds = %213, %161, %97, %88, %84, %61
  %215 = phi i32 [ %62, %61 ], [ %137, %161 ], [ %62, %97 ], [ %62, %88 ], [ %62, %84 ], [ %137, %213 ]
  %216 = icmp slt i32 %215, 1
  br i1 %216, label %252, label %217

217:                                              ; preds = %214
  %218 = add nsw i32 %215, -1
  %219 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %218
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %218, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %218, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, 1
  br label %135

226:                                              ; preds = %81, %45
  %227 = phi i32 [ 0, %45 ], [ %62, %81 ]
  %228 = phi ptr [ %0, %45 ], [ %63, %81 ]
  %229 = load i32, ptr %4, align 8
  %230 = and i32 %229, 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 7
  %234 = load ptr, ptr %233, align 8
  %235 = ptrtoint ptr %234 to i32
  %236 = and i32 %235, -2
  %237 = inttoptr i32 %236 to ptr
  %238 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 8
  %239 = load i64, ptr %238, align 8
  %240 = getelementptr inbounds %struct.key, ptr %237, i32 0, i32 7
  store i64 %239, ptr %240, align 8
  %241 = load i64, ptr %238, align 8
  %242 = getelementptr inbounds %struct.key, ptr %228, i32 0, i32 7
  store i64 %241, ptr %242, align 8
  %243 = icmp sgt i32 %227, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %244, %232
  %245 = phi i32 [ %247, %244 ], [ %227, %232 ]
  %246 = load i64, ptr %238, align 8
  %247 = add nsw i32 %245, -1
  %248 = getelementptr [6 x %struct.anon.98], ptr %3, i32 0, i32 %247
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.key, ptr %249, i32 0, i32 7
  store i64 %246, ptr %250, align 8
  %251 = icmp ugt i32 %245, 1
  br i1 %251, label %244, label %252

252:                                              ; preds = %244, %232, %226, %214, %164, %45
  %253 = phi i1 [ false, %164 ], [ false, %45 ], [ true, %226 ], [ true, %232 ], [ true, %244 ], [ false, %214 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  ret i1 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @keyring_search(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.keyring_search_context, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.keyring_index_key, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %7 = tail call i32 @strlen(ptr noundef %2)
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.keyring_index_key, ptr %5, i32 0, i32 2
  store ptr %1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.keyring_index_key, ptr %5, i32 0, i32 4
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 1
  %12 = tail call ptr @llvm.thread.pointer() #19
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 83
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2
  store ptr @key_default_cmp, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2, i32 1
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 3
  store i32 2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 5
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 7
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 8
  store i64 0, ptr %21, align 8
  br i1 %3, label %22, label %23

22:                                               ; preds = %4
  store i32 66, ptr %18, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = getelementptr inbounds %struct.key_type, ptr %1, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = call i32 %25(ptr noundef %15) #19
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = inttoptr i32 %28 to ptr
  br label %38

32:                                               ; preds = %27, %23
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %33 = call ptr @keyring_search_rcu(ptr noundef %0, ptr noundef nonnull %5)
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %34 = getelementptr inbounds %struct.key_type, ptr %1, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void %35(ptr noundef %15) #19
  br label %38

38:                                               ; preds = %37, %32, %30
  %39 = phi ptr [ %31, %30 ], [ %33, %37 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #19
  ret ptr %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyring_restrict(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 15, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @key_type_keyring
  br i1 %9, label %10, label %70

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 12) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  store ptr @restrict_link_reject, ptr %14, align 8
  br label %28

17:                                               ; preds = %10
  %18 = tail call ptr @key_type_lookup(ptr noundef nonnull %1) #19
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = ptrtoint ptr %18 to i32
  br label %70

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  %27 = tail call ptr %24(ptr noundef %2) #19
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi ptr [ %18, %26 ], [ null, %16 ]
  %30 = phi ptr [ %27, %26 ], [ %14, %16 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %12
  %33 = phi ptr [ %30, %28 ], [ inttoptr (i32 -12 to ptr), %12 ]
  %34 = phi ptr [ %29, %28 ], [ null, %12 ]
  %35 = ptrtoint ptr %33 to i32
  br label %65

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 3
  tail call void @down_write(ptr noundef %37) #19
  tail call void @down_write(ptr noundef nonnull @keyring_serialise_restrict_sem) #19
  %38 = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = icmp eq ptr %30, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %54, %41
  %44 = phi ptr [ %56, %54 ], [ %30, %41 ]
  %45 = getelementptr inbounds %struct.key_restriction, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.key, ptr %46, i32 0, i32 15, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, @key_type_keyring
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = icmp eq ptr %46, %6
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.key, ptr %46, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %43

58:                                               ; preds = %54, %48, %43, %41
  store ptr %30, ptr %38, align 4
  br label %59

59:                                               ; preds = %58, %52, %36
  %60 = phi i1 [ false, %58 ], [ true, %36 ], [ true, %52 ]
  %61 = phi i32 [ 0, %58 ], [ -17, %36 ], [ -35, %52 ]
  tail call void @up_write(ptr noundef nonnull @keyring_serialise_restrict_sem) #19
  tail call void @up_write(ptr noundef %37) #19
  br i1 %60, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.key_restriction, ptr %30, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void @key_put(ptr noundef %64) #19
  tail call void @kfree(ptr noundef %30) #19
  br label %65

65:                                               ; preds = %62, %59, %32, %22
  %66 = phi ptr [ %34, %32 ], [ %29, %62 ], [ %29, %59 ], [ %18, %22 ]
  %67 = phi i32 [ %35, %32 ], [ %61, %62 ], [ 0, %59 ], [ -2, %22 ]
  %68 = icmp eq ptr %66, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @key_type_put(ptr noundef nonnull %66) #19
  br label %70

70:                                               ; preds = %69, %65, %20, %3
  %71 = phi i32 [ %21, %20 ], [ -20, %3 ], [ %67, %69 ], [ %67, %65 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_type_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_type_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_key_to_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -2
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 16, i32 0, i32 0, i32 2
  %7 = tail call ptr @assoc_array_find(ptr noundef %6, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = ptrtoint ptr %7 to i32
  %11 = and i32 %10, -4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #19, !srcloc !15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #19, !srcloc !19
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !20

21:                                               ; preds = %17
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !17

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 2, %17 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %26) #19
  br label %27

27:                                               ; preds = %25, %21
  %28 = and i32 %3, 1
  %29 = or i32 %11, %28
  %30 = inttoptr i32 %29 to ptr
  br label %31

31:                                               ; preds = %27, %9, %2
  %32 = phi ptr [ %30, %27 ], [ null, %2 ], [ null, %9 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_keyring_by_name(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  tail call void @_raw_read_lock(ptr noundef nonnull @keyring_name_lock) #19
  %5 = load ptr, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 10), align 4
  %6 = icmp eq ptr %5, getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 10)
  br i1 %6, label %65, label %7

7:                                                ; preds = %62, %4
  %8 = phi ptr [ %63, %62 ], [ %5, %4 ]
  %9 = getelementptr i8, ptr %8, i32 -116
  %10 = getelementptr i8, ptr %8, i32 -72
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.key_user, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %62, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %8, i32 -24
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %8, i32 -4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  br i1 %1, label %26, label %30

26:                                               ; preds = %25
  %27 = load volatile i32, ptr %16, align 4
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %62, label %36

30:                                               ; preds = %25
  %31 = tail call ptr @llvm.thread.pointer() #19
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 83
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @key_task_permission(ptr noundef %9, ptr noundef %33, i32 noundef 4) #19
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %30, %26
  %37 = load volatile i32, ptr %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %49, %36
  %40 = phi i32 [ %47, %49 ], [ %37, %36 ]
  %41 = add i32 %40, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #19, !srcloc !15
  br label %42

42:                                               ; preds = %42, %39
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %40, i32 %41, ptr elementtype(i32) %9) #19, !srcloc !27
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %42

46:                                               ; preds = %42
  %47 = extractvalue { i32, i32 } %43, 1
  %48 = icmp eq i32 %47, %40
  br i1 %48, label %51, label %49, !prof !17

49:                                               ; preds = %46
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %51, label %39

51:                                               ; preds = %49, %46, %36
  %52 = phi i32 [ 0, %36 ], [ 0, %49 ], [ %40, %46 ]
  %53 = add i32 %52, 1
  %54 = or i32 %53, %52
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %57, label %56, !prof !17

56:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 0) #19
  br label %57

57:                                               ; preds = %56, %51
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = tail call i64 @ktime_get_real_seconds() #19
  %61 = getelementptr i8, ptr %8, i32 -52
  store i64 %60, ptr %61, align 8
  br label %65

62:                                               ; preds = %57, %30, %26, %20, %15, %7
  %63 = load ptr, ptr %8, align 4
  %64 = icmp eq ptr %63, getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 10)
  br i1 %64, label %65, label %7

65:                                               ; preds = %62, %59, %4
  %66 = phi ptr [ %9, %59 ], [ inttoptr (i32 -126 to ptr), %4 ], [ inttoptr (i32 -126 to ptr), %62 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @keyring_name_lock) #19, !srcloc !15
  %67 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @keyring_name_lock) #19, !srcloc !29
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  br label %71

71:                                               ; preds = %70, %65
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  br label %72

72:                                               ; preds = %71, %2
  %73 = phi ptr [ %66, %71 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__key_link_lock(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @key_type_keyring
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @key_type_keyring
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %12

12:                                               ; preds = %11, %6, %2
  %13 = phi i32 [ -20, %2 ], [ 0, %11 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__key_move_lock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @key_type_keyring
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @key_type_keyring
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = icmp ult ptr %0, %1
  %13 = select i1 %12, ptr %0, ptr %1
  %14 = select i1 %12, ptr %1, ptr %0
  %15 = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 3
  tail call void @down_write(ptr noundef %15) #19
  %16 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 3
  tail call void @down_write(ptr noundef %16) #19
  %17 = getelementptr inbounds %struct.keyring_index_key, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @key_type_keyring
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %21

21:                                               ; preds = %20, %11, %7, %3
  %22 = phi i32 [ -20, %7 ], [ -20, %3 ], [ 0, %20 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__key_link_begin(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8, !prof !20

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #19, !srcloc !31
  unreachable

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !17

11:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1303, 0\0A.popsection", ""() #19, !srcloc !32
  unreachable

12:                                               ; preds = %8
  store ptr null, ptr %2, align 4
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %19 = tail call ptr @assoc_array_insert(ptr noundef %18, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %1, ptr noundef null) #19
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %19 to i32
  br label %36

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.assoc_array_edit, ptr %19, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %30, 4
  %32 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef %31) #19
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %23
  store ptr %19, ptr %2, align 4
  br label %36

35:                                               ; preds = %27
  tail call void @assoc_array_cancel_edit(ptr noundef %19) #19
  br label %36

36:                                               ; preds = %35, %34, %21, %12
  %37 = phi i32 [ 0, %34 ], [ -128, %12 ], [ %22, %21 ], [ %32, %35 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_cancel_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__key_link_check_live_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.keyring_search_context, align 8
  %4 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @key_type_keyring
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  %8 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds i8, ptr %3, i32 52
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef align 8 dereferenceable(20) %8, i32 20, i1 false) #19
  %10 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 2
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 3
  store i32 93, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 4
  store ptr @keyring_detect_cycle_iterator, ptr %16, align 4
  %17 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 5
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 7
  %19 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 8
  store i64 0, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %20 = call fastcc zeroext i1 @search_nested_keyrings(ptr noundef %1, ptr noundef nonnull %3) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %21 = load ptr, ptr %18, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = icmp eq ptr %21, inttoptr (i32 -11 to ptr)
  %24 = select i1 %23, i32 0, i32 %22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  br label %25

25:                                               ; preds = %7, %2
  %26 = phi i32 [ %24, %7 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__key_link(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #19, !srcloc !15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #19, !srcloc !19
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !20

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !17

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %12) #19
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, @key_type_keyring
  %18 = ptrtoint ptr %1 to i32
  %19 = or i32 %18, 2
  %20 = inttoptr i32 %19 to ptr
  %21 = select i1 %17, ptr %20, ptr %1
  tail call void @assoc_array_insert_set_object(ptr noundef %14, ptr noundef %21) #19
  %22 = load ptr, ptr %2, align 4
  tail call void @assoc_array_apply_edit(ptr noundef %22) #19
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_insert_set_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_apply_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__key_link_end(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !20

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1388, 0\0A.popsection", ""() #19, !srcloc !33
  unreachable

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.assoc_array_edit, ptr %2, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -4
  %19 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef %18) #19
  br label %20

20:                                               ; preds = %14, %10
  tail call void @assoc_array_cancel_edit(ptr noundef nonnull %2) #19
  br label %21

21:                                               ; preds = %20, %8
  %22 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @up_write(ptr noundef %22) #19
  %23 = load ptr, ptr %4, align 4
  %24 = icmp eq ptr %23, @key_type_keyring
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.keyring_search_context, align 8
  %4 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @key_type_keyring
  br i1 %7, label %8, label %117

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @key_type_keyring
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !20

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #19, !srcloc !31
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %26 = tail call ptr @assoc_array_insert(ptr noundef %25, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %4, ptr noundef null) #19
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.assoc_array_edit, ptr %26, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = add nuw nsw i32 %35, 4
  %37 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef %36) #19
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  tail call void @assoc_array_cancel_edit(ptr noundef %26) #19
  br label %94

40:                                               ; preds = %24
  %41 = ptrtoint ptr %26 to i32
  %42 = icmp slt ptr %26, null
  br i1 %42, label %94, label %43

43:                                               ; preds = %40, %32, %28
  %44 = phi ptr [ null, %40 ], [ %26, %32 ], [ %26, %28 ]
  %45 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %46, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %10, align 8
  %53 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16
  %54 = getelementptr inbounds %struct.key_restriction, ptr %46, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %49(ptr noundef %0, ptr noundef %52, ptr noundef %53, ptr noundef %55) #19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %51, %48, %43
  %59 = load ptr, ptr %10, align 8
  %60 = icmp eq ptr %59, @key_type_keyring
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  %62 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15
  %63 = getelementptr inbounds i8, ptr %3, i32 52
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %63, i8 0, i32 12, i1 false) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef align 8 dereferenceable(20) %62, i32 20, i1 false) #19
  %64 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 1
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2
  store ptr null, ptr %65, align 8
  %66 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 1
  store ptr %0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 2
  store ptr null, ptr %67, align 8
  %68 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 3
  store i32 93, ptr %69, align 8
  %70 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 4
  store ptr @keyring_detect_cycle_iterator, ptr %70, align 4
  %71 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 5
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 7
  %73 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 8
  store i64 0, ptr %73, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %74 = call fastcc zeroext i1 @search_nested_keyrings(ptr noundef %1, ptr noundef nonnull %3) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %75 = load ptr, ptr %72, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  switch i32 %76, label %94 [
    i32 -11, label %77
    i32 0, label %77
  ]

77:                                               ; preds = %61, %61, %58
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #19, !srcloc !15
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #19, !srcloc !19
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !20

81:                                               ; preds = %77
  %82 = add i32 %79, 1
  %83 = or i32 %82, %79
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %87, label %85, !prof !17

85:                                               ; preds = %81, %77
  %86 = phi i32 [ 2, %77 ], [ 1, %81 ]
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %86) #19
  br label %87

87:                                               ; preds = %85, %81
  %88 = load ptr, ptr %10, align 8
  %89 = icmp eq ptr %88, @key_type_keyring
  %90 = ptrtoint ptr %1 to i32
  %91 = or i32 %90, 2
  %92 = inttoptr i32 %91 to ptr
  %93 = select i1 %89, ptr %92, ptr %1
  call void @assoc_array_insert_set_object(ptr noundef %44, ptr noundef %93) #19
  call void @assoc_array_apply_edit(ptr noundef %44) #19
  br label %94

94:                                               ; preds = %87, %61, %51, %40, %39, %19
  %95 = phi ptr [ null, %40 ], [ null, %87 ], [ null, %19 ], [ null, %39 ], [ %44, %51 ], [ %44, %61 ]
  %96 = phi i32 [ %41, %40 ], [ 0, %87 ], [ -128, %19 ], [ %37, %39 ], [ %56, %51 ], [ %76, %61 ]
  %97 = load ptr, ptr %10, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100, !prof !20

99:                                               ; preds = %94
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1388, 0\0A.popsection", ""() #19, !srcloc !33
  unreachable

100:                                              ; preds = %94
  %101 = icmp eq ptr %95, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.assoc_array_edit, ptr %95, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = add nsw i32 %109, -4
  %111 = call i32 @key_payload_reserve(ptr noundef %0, i32 noundef %110) #19
  br label %112

112:                                              ; preds = %106, %102
  call void @assoc_array_cancel_edit(ptr noundef nonnull %95) #19
  br label %113

113:                                              ; preds = %112, %100
  call void @up_write(ptr noundef %9) #19
  %114 = load ptr, ptr %10, align 4
  %115 = icmp eq ptr %114, @key_type_keyring
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @mutex_unlock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %117

117:                                              ; preds = %116, %113, %2
  %118 = phi i32 [ -20, %2 ], [ %96, %113 ], [ %96, %116 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_unlink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @key_type_keyring
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15
  %10 = tail call ptr @assoc_array_delete(ptr noundef %8, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %9) #19
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = icmp eq ptr %10, null
  br i1 %13, label %22, label %16

14:                                               ; preds = %6
  %15 = ptrtoint ptr %10 to i32
  br label %22

16:                                               ; preds = %12
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %10) #19
  %17 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, -4
  %21 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef %20) #19
  br label %22

22:                                               ; preds = %16, %14, %12
  %23 = phi i32 [ 0, %16 ], [ %15, %14 ], [ -2, %12 ]
  tail call void @up_write(ptr noundef %7) #19
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ -20, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.keyring_search_context, align 8
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %162, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, @key_type_keyring
  br i1 %11, label %12, label %162

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 15, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, @key_type_keyring
  br i1 %15, label %16, label %162

16:                                               ; preds = %12
  %17 = icmp ult ptr %1, %2
  %18 = select i1 %17, ptr %1, ptr %2
  %19 = select i1 %17, ptr %2, ptr %1
  %20 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 3
  tail call void @down_write(ptr noundef %20) #19
  %21 = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 3
  tail call void @down_write(ptr noundef %21) #19
  %22 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @key_type_keyring
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %26

26:                                               ; preds = %25, %16
  %27 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 2
  %28 = tail call ptr @assoc_array_delete(ptr noundef %27, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %8) #19
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %28, null
  br i1 %31, label %132, label %35

32:                                               ; preds = %26
  %33 = ptrtoint ptr %28 to i32
  %34 = icmp slt ptr %28, null
  br i1 %34, label %132, label %35

35:                                               ; preds = %32, %30
  %36 = phi ptr [ null, %32 ], [ %28, %30 ]
  %37 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %41, !prof !20

40:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #19, !srcloc !31
  unreachable

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 14
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %132

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 16, i32 0, i32 0, i32 2
  %48 = tail call ptr @assoc_array_insert(ptr noundef %47, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %8, ptr noundef null) #19
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.assoc_array_edit, ptr %48, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 12
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = add nuw nsw i32 %57, 4
  %59 = tail call i32 @key_payload_reserve(ptr noundef %2, i32 noundef %58) #19
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  tail call void @assoc_array_cancel_edit(ptr noundef %48) #19
  br label %132

62:                                               ; preds = %46
  %63 = ptrtoint ptr %48 to i32
  %64 = icmp slt ptr %48, null
  br i1 %64, label %132, label %65

65:                                               ; preds = %62, %54, %50
  %66 = phi ptr [ null, %62 ], [ %48, %54 ], [ %48, %50 ]
  %67 = getelementptr inbounds %struct.assoc_array_edit, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  %70 = and i32 %3, 1
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %71, %69
  br i1 %72, label %73, label %132

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %75, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %22, align 8
  %82 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %83 = getelementptr inbounds %struct.key_restriction, ptr %75, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %78(ptr noundef %2, ptr noundef %81, ptr noundef %82, ptr noundef %84) #19
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %132, label %87

87:                                               ; preds = %80, %77, %73
  %88 = load ptr, ptr %22, align 8
  %89 = icmp eq ptr %88, @key_type_keyring
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #19
  %91 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 15
  %92 = getelementptr inbounds i8, ptr %5, i32 52
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %92, i8 0, i32 12, i1 false) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef align 8 dereferenceable(20) %91, i32 20, i1 false) #19
  %93 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 1
  store ptr null, ptr %93, align 4
  %94 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2, i32 1
  store ptr %2, ptr %95, align 4
  %96 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2, i32 2
  store ptr null, ptr %96, align 8
  %97 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 2, i32 3
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 3
  store i32 93, ptr %98, align 8
  %99 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 4
  store ptr @keyring_detect_cycle_iterator, ptr %99, align 4
  %100 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 5
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 7
  %102 = getelementptr inbounds %struct.keyring_search_context, ptr %5, i32 0, i32 8
  store i64 0, ptr %102, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %103 = call fastcc zeroext i1 @search_nested_keyrings(ptr noundef %0, ptr noundef nonnull %5) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %104 = load ptr, ptr %101, align 8
  %105 = icmp eq ptr %104, inttoptr (i32 -11 to ptr)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #19
  br i1 %105, label %109, label %106

106:                                              ; preds = %90
  %107 = ptrtoint ptr %104 to i32
  %108 = icmp slt ptr %104, null
  br i1 %108, label %132, label %109

109:                                              ; preds = %106, %90, %87
  %110 = phi i32 [ %107, %106 ], [ 0, %87 ], [ 0, %90 ]
  call void @assoc_array_apply_edit(ptr noundef %36) #19
  %111 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 12
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = add nsw i32 %113, -4
  %115 = call i32 @key_payload_reserve(ptr noundef %1, i32 noundef %114) #19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #19, !srcloc !15
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #19, !srcloc !19
  %117 = extractvalue { i32, i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119, !prof !20

119:                                              ; preds = %109
  %120 = add i32 %117, 1
  %121 = or i32 %120, %117
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %125, label %123, !prof !17

123:                                              ; preds = %119, %109
  %124 = phi i32 [ 2, %109 ], [ 1, %119 ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %124) #19
  br label %125

125:                                              ; preds = %123, %119
  %126 = load ptr, ptr %22, align 8
  %127 = icmp eq ptr %126, @key_type_keyring
  %128 = ptrtoint ptr %0 to i32
  %129 = or i32 %128, 2
  %130 = inttoptr i32 %129 to ptr
  %131 = select i1 %127, ptr %130, ptr %0
  call void @assoc_array_insert_set_object(ptr noundef %66, ptr noundef %131) #19
  call void @assoc_array_apply_edit(ptr noundef %66) #19
  br label %132

132:                                              ; preds = %125, %106, %80, %65, %62, %61, %41, %32, %30
  %133 = phi ptr [ null, %32 ], [ %36, %62 ], [ %36, %80 ], [ %36, %106 ], [ null, %125 ], [ %36, %65 ], [ null, %30 ], [ %36, %41 ], [ %36, %61 ]
  %134 = phi ptr [ null, %32 ], [ null, %62 ], [ %66, %80 ], [ %66, %106 ], [ null, %125 ], [ %66, %65 ], [ null, %30 ], [ null, %41 ], [ null, %61 ]
  %135 = phi i32 [ %33, %32 ], [ %63, %62 ], [ %85, %80 ], [ %107, %106 ], [ %110, %125 ], [ -17, %65 ], [ -2, %30 ], [ -128, %41 ], [ %59, %61 ]
  %136 = load ptr, ptr %22, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139, !prof !20

138:                                              ; preds = %132
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1388, 0\0A.popsection", ""() #19, !srcloc !33
  unreachable

139:                                              ; preds = %132
  %140 = icmp eq ptr %134, null
  br i1 %140, label %152, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.assoc_array_edit, ptr %134, i32 0, i32 6
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 12
  %147 = load i16, ptr %146, align 2
  %148 = zext i16 %147 to i32
  %149 = add nsw i32 %148, -4
  %150 = call i32 @key_payload_reserve(ptr noundef %2, i32 noundef %149) #19
  br label %151

151:                                              ; preds = %145, %141
  call void @assoc_array_cancel_edit(ptr noundef nonnull %134) #19
  br label %152

152:                                              ; preds = %151, %139
  %153 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 3
  call void @up_write(ptr noundef %153) #19
  %154 = load ptr, ptr %22, align 4
  %155 = icmp eq ptr %154, @key_type_keyring
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  call void @mutex_unlock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %157

157:                                              ; preds = %156, %152
  %158 = icmp eq ptr %133, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %157
  call void @assoc_array_cancel_edit(ptr noundef nonnull %133) #19
  br label %160

160:                                              ; preds = %159, %157
  %161 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 3
  call void @up_write(ptr noundef %161) #19
  br label %162

162:                                              ; preds = %160, %12, %7, %4
  %163 = phi i32 [ 0, %4 ], [ %135, %160 ], [ -20, %12 ], [ -20, %7 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyring_clear(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @key_type_keyring
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %8 = tail call ptr @assoc_array_clear(ptr noundef %7, ptr noundef nonnull @keyring_assoc_array_ops) #19
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %17

12:                                               ; preds = %5
  %13 = icmp eq ptr %8, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %8) #19
  br label %15

15:                                               ; preds = %14, %12
  %16 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef 0) #19
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %11, %10 ], [ 0, %15 ]
  tail call void @up_write(ptr noundef %6) #19
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ %18, %17 ], [ -20, %1 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_clear(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @keyring_gc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %9 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %10 = call i32 @assoc_array_iterate(ptr noundef %9, ptr noundef nonnull @keyring_gc_check_iterator, ptr noundef nonnull %3) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  call void @down_write(ptr noundef %13) #19
  %14 = call i32 @assoc_array_gc(ptr noundef %9, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef nonnull @keyring_gc_select_iterator, ptr noundef nonnull %3) #19
  call void @up_write(ptr noundef %13) #19
  br label %15

15:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @assoc_array_iterate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @keyring_gc_check_iterator(ptr noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 33
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = icmp slt i64 %13, 1
  %15 = icmp sgt i64 %13, %11
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.key_tag, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 4, !range !21
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %17, %10, %2
  %24 = phi i32 [ 1, %2 ], [ %22, %17 ], [ 1, %10 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @assoc_array_gc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @keyring_gc_select_iterator(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 33
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = icmp slt i64 %13, 1
  %15 = icmp sgt i64 %13, %11
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.key_tag, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 4, !range !21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #19, !srcloc !15
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #19, !srcloc !19
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !20

29:                                               ; preds = %25
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !17

33:                                               ; preds = %29, %25
  %34 = phi i32 [ 2, %25 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %34) #19
  br label %35

35:                                               ; preds = %33, %29, %23, %17, %10, %2
  %36 = phi i1 [ false, %17 ], [ true, %23 ], [ true, %29 ], [ true, %33 ], [ false, %2 ], [ false, %10 ]
  ret i1 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @keyring_restriction_gc(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.key_restriction, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 3
  tail call void @down_write(ptr noundef %13) #19
  %14 = load ptr, ptr %5, align 4
  store ptr @restrict_link_reject, ptr %14, align 4
  %15 = getelementptr inbounds %struct.key_restriction, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @key_put(ptr noundef %16) #19
  store ptr null, ptr %15, align 4
  %17 = getelementptr inbounds %struct.key_restriction, ptr %14, i32 0, i32 2
  store ptr null, ptr %17, align 4
  tail call void @up_write(ptr noundef %13) #19
  br label %18

18:                                               ; preds = %12, %8, %4, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @keyring_read_iterator(ptr noundef %0, ptr nocapture noundef %1) #12 {
  %3 = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = ptrtoint ptr %0 to i32
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i32, ptr %14, i32 1
  store ptr %15, ptr %13, align 4
  store i32 %12, ptr %14, align 4
  %16 = load i32, ptr %3, align 4
  %17 = add i32 %16, 4
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi i32 [ 0, %7 ], [ 1, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @keyring_compare_object(ptr noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = zext i16 %19 to i32
  %25 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @bcmp(ptr %26, ptr %28, i32 %24)
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %23, %17, %11, %2
  %32 = phi i1 [ false, %17 ], [ false, %11 ], [ false, %2 ], [ %30, %23 ]
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @keyring_get_key_chunk(ptr nocapture noundef readonly %0, i32 noundef %1) #14 {
  %3 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = sdiv i32 %1, 32
  switch i32 %6, label %19 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  br label %54

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %54

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %54

19:                                               ; preds = %2
  %20 = icmp ult i16 %4, 3
  br i1 %20, label %54, label %21

21:                                               ; preds = %19
  %22 = icmp ugt i16 %4, 6
  %23 = add nsw i32 %5, -2
  %24 = select i1 %22, i32 4, i32 %23
  %25 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 2
  %28 = shl nsw i32 %6, 2
  %29 = add nsw i32 %28, -16
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sgt i32 %24, 1
  br i1 %33, label %34, label %54

34:                                               ; preds = %21
  %35 = getelementptr i8, ptr %30, i32 1
  %36 = shl nuw nsw i32 %32, 8
  %37 = load i8, ptr %35, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = icmp eq i32 %24, 2
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %35, i32 1
  %43 = shl nuw nsw i32 %39, 8
  %44 = load i8, ptr %42, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = icmp sgt i32 %24, 3
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = getelementptr i8, ptr %42, i32 1
  %50 = shl nuw i32 %46, 8
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  br label %54

54:                                               ; preds = %48, %41, %34, %21, %19, %15, %11, %9, %7
  %55 = phi i32 [ %18, %15 ], [ %14, %11 ], [ %10, %9 ], [ %8, %7 ], [ 0, %19 ], [ %32, %21 ], [ %39, %34 ], [ %46, %41 ], [ %53, %48 ]
  ret i32 %55
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @keyring_get_object_key_chunk(ptr noundef %0, i32 noundef %1) #14 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = sdiv i32 %1, 32
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %15
    i32 3, label %19
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load i32, ptr %6, align 4
  br label %58

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %58

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %58

23:                                               ; preds = %2
  %24 = icmp ult i16 %7, 3
  br i1 %24, label %58, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i16 %7, 6
  %27 = add nsw i32 %8, -2
  %28 = select i1 %26, i32 4, i32 %27
  %29 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 2
  %32 = shl nsw i32 %9, 2
  %33 = add nsw i32 %32, -16
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sgt i32 %28, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %25
  %39 = getelementptr i8, ptr %34, i32 1
  %40 = shl nuw nsw i32 %36, 8
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %40, %42
  %44 = icmp eq i32 %28, 2
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %39, i32 1
  %47 = shl nuw nsw i32 %43, 8
  %48 = load i8, ptr %46, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = icmp sgt i32 %28, 3
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %46, i32 1
  %54 = shl nuw i32 %50, 8
  %55 = load i8, ptr %53, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  br label %58

58:                                               ; preds = %52, %45, %38, %25, %23, %19, %15, %13, %10
  %59 = phi i32 [ %22, %19 ], [ %18, %15 ], [ %14, %13 ], [ %12, %10 ], [ 0, %23 ], [ %36, %25 ], [ %43, %38 ], [ %50, %45 ], [ %57, %52 ]
  ret i32 %59
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @keyring_diff_objects(ptr noundef %0, ptr nocapture noundef readonly %1) #15 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  %16 = trunc i32 %12 to i16
  br i1 %15, label %17, label %56

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = icmp eq ptr %19, %22
  br i1 %24, label %25, label %56

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = icmp eq ptr %27, %30
  br i1 %32, label %33, label %56

33:                                               ; preds = %25
  %34 = icmp ult i16 %16, 3
  br i1 %34, label %63, label %35

35:                                               ; preds = %33
  %36 = and i32 %12, 65535
  %37 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.keyring_index_key, ptr %1, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %48, %35
  %42 = phi i32 [ 2, %35 ], [ %49, %48 ]
  %43 = getelementptr i8, ptr %38, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr i8, ptr %40, i32 %42
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = add nuw nsw i32 %42, 1
  %50 = icmp eq i32 %49, %36
  br i1 %50, label %63, label %41

51:                                               ; preds = %41
  %52 = zext i8 %46 to i32
  %53 = zext i8 %44 to i32
  %54 = shl i32 %42, 3
  %55 = add i32 %54, 128
  br label %56

56:                                               ; preds = %51, %25, %17, %10, %2
  %57 = phi i32 [ %7, %2 ], [ %12, %10 ], [ %20, %17 ], [ %28, %25 ], [ %53, %51 ]
  %58 = phi i32 [ %8, %2 ], [ %14, %10 ], [ %23, %17 ], [ %31, %25 ], [ %52, %51 ]
  %59 = phi i32 [ 0, %2 ], [ 32, %10 ], [ 64, %17 ], [ 96, %25 ], [ %55, %51 ]
  %60 = xor i32 %58, %57
  %61 = tail call i32 @llvm.cttz.i32(i32 %60, i1 false) #19, !range !34
  %62 = add i32 %61, %59
  br label %63

63:                                               ; preds = %56, %48, %33
  %64 = phi i32 [ %62, %56 ], [ -1, %33 ], [ -1, %48 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keyring_free_object(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  tail call void @key_put(ptr noundef %4) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @keyring_detect_cycle_iterator(ptr noundef %0, ptr nocapture noundef %1) #17 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.keyring_search_context, ptr %1, i32 0, i32 7
  store ptr inttoptr (i32 -35 to ptr), ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(2) }

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
!8 = !{i64 2149218953}
!9 = !{i64 1722167}
!10 = !{i64 2149207700}
!11 = !{i64 2149207775, i64 2149207802, i64 2149207849, i64 2149207871, i64 2149207899, i64 2149207919}
!12 = !{i64 2149256922}
!13 = !{i64 2150770074}
!14 = !{i64 2148248025}
!15 = !{i64 581517, i64 2148083083, i64 2148083109, i64 2148083156, i64 2148083178, i64 2148083206, i64 2148083226}
!16 = !{i64 2148150160, i64 2148150192, i64 2148150221, i64 2148150255, i64 2148150286, i64 2148150309}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149285791}
!19 = !{i64 2148147803, i64 2148147835, i64 2148147864, i64 2148147898, i64 2148147929, i64 2148147952}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i8 0, i8 2}
!22 = !{!"auto-init"}
!23 = !{i64 2153828102, i64 2153828590, i64 2153828139, i64 2153828195, i64 2153828229, i64 2153828253, i64 2153828294, i64 2153828315, i64 2153828343, i64 2153828377}
!24 = !{i64 2153839157, i64 2153839645, i64 2153839194, i64 2153839250, i64 2153839284, i64 2153839308, i64 2153839349, i64 2153839370, i64 2153839398, i64 2153839432}
!25 = !{i64 2148985677}
!26 = !{i64 2148985894}
!27 = !{i64 567580, i64 567604, i64 567625, i64 567642, i64 567659}
!28 = !{i64 2149219758}
!29 = !{i64 1723182, i64 1723205, i64 1723225, i64 1723249, i64 1723265}
!30 = !{i64 2149257361}
!31 = !{i64 2153864284, i64 2153864773, i64 2153864321, i64 2153864377, i64 2153864411, i64 2153864435, i64 2153864476, i64 2153864497, i64 2153864525, i64 2153864559}
!32 = !{i64 2153865345, i64 2153865834, i64 2153865382, i64 2153865438, i64 2153865472, i64 2153865496, i64 2153865537, i64 2153865558, i64 2153865586, i64 2153865620}
!33 = !{i64 2153867504, i64 2153867993, i64 2153867541, i64 2153867597, i64 2153867631, i64 2153867655, i64 2153867696, i64 2153867717, i64 2153867745, i64 2153867779}
!34 = !{i32 0, i32 33}
