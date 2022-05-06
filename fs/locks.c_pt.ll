; ModuleID = '/llk/IR/fs/locks.c_pt.bc'
source_filename = "../fs/locks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_alloc_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_alloc_lock\22\09\09\09\09\09"
module asm "__kstrtabns_locks_alloc_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_release_private:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_release_private\22\09\09\09\09\09"
module asm "__kstrtabns_locks_release_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_free_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_free_lock\22\09\09\09\09\09"
module asm "__kstrtabns_locks_free_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_init_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_init_lock\22\09\09\09\09\09"
module asm "__kstrtabns_locks_init_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_copy_conflock:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_copy_conflock\22\09\09\09\09\09"
module asm "__kstrtabns_locks_copy_conflock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_copy_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_copy_lock\22\09\09\09\09\09"
module asm "__kstrtabns_locks_copy_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_delete_block:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_delete_block\22\09\09\09\09\09"
module asm "__kstrtabns_locks_delete_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_test_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_test_lock\22\09\09\09\09\09"
module asm "__kstrtabns_posix_test_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_lock_file:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_lock_file\22\09\09\09\09\09"
module asm "__kstrtabns_posix_lock_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lease_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22lease_modify\22\09\09\09\09\09"
module asm "__kstrtabns_lease_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___break_lease:\09\09\09\09\09"
module asm "\09.asciz \09\22__break_lease\22\09\09\09\09\09"
module asm "__kstrtabns___break_lease:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lease_get_mtime:\09\09\09\09\09"
module asm "\09.asciz \09\22lease_get_mtime\22\09\09\09\09\09"
module asm "__kstrtabns_lease_get_mtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_setlease:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_setlease\22\09\09\09\09\09"
module asm "__kstrtabns_generic_setlease:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lease_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22lease_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_lease_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lease_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22lease_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_lease_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_setlease:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_setlease\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_setlease:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_lock_inode_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_lock_inode_wait\22\09\09\09\09\09"
module asm "__kstrtabns_locks_lock_inode_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_test_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_test_lock\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_test_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_lock_file:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_lock_file\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_lock_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_remove_posix:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_remove_posix\22\09\09\09\09\09"
module asm "__kstrtabns_locks_remove_posix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_cancel_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_cancel_lock\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_cancel_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.73, %struct.trace_event, ptr, ptr, %union.anon.74, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.lockdep_map = type {}
%struct.trace_print_flags = type { i32, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.hlist_head = type { ptr }
%struct.file_lock_list_struct = type { %struct.spinlock, %struct.hlist_head }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.trace_event_raw_locks_get_lock_context = type { %struct.trace_entry, i32, i32, i8, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_filelock_lock = type { %struct.trace_entry, ptr, i32, i32, ptr, ptr, i32, i32, i8, i64, i64, i32, [0 x i8] }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.trace_event_raw_filelock_lease = type { %struct.trace_entry, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_generic_add_lease = type { %struct.trace_entry, i32, i32, i32, i32, i32, ptr, i32, i8, [0 x i8] }
%struct.trace_event_raw_leases_conflict = type { %struct.trace_entry, ptr, ptr, i32, i32, i8, i8, i8, [0 x i8] }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file_lock_operations = type { ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.78, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.78 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, ptr, ptr, %struct.callback_head }
%struct.flock64 = type { i16, i16, i64, i64, i32 }
%struct.flock = type { i16, i16, i32, i32, i32 }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [12 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [44 x i8] }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.locks_iterator = type { i32, i64 }

@__tpstrtab_locks_get_lock_context = internal constant [23 x i8] c"locks_get_lock_context\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_locks_get_lock_context = dso_local global %struct.static_call_key { ptr @__traceiter_locks_get_lock_context }, align 4
@__tracepoint_locks_get_lock_context = dso_local global %struct.tracepoint { ptr @__tpstrtab_locks_get_lock_context, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_locks_get_lock_context, ptr null, ptr @__traceiter_locks_get_lock_context, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_locks_get_lock_context = internal constant ptr @__tracepoint_locks_get_lock_context, section "__tracepoints_ptrs", align 4
@__tpstrtab_posix_lock_inode = internal constant [17 x i8] c"posix_lock_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_posix_lock_inode = dso_local global %struct.static_call_key { ptr @__traceiter_posix_lock_inode }, align 4
@__tracepoint_posix_lock_inode = dso_local global %struct.tracepoint { ptr @__tpstrtab_posix_lock_inode, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_posix_lock_inode, ptr null, ptr @__traceiter_posix_lock_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_posix_lock_inode = internal constant ptr @__tracepoint_posix_lock_inode, section "__tracepoints_ptrs", align 4
@__tpstrtab_fcntl_setlk = internal constant [12 x i8] c"fcntl_setlk\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fcntl_setlk = dso_local global %struct.static_call_key { ptr @__traceiter_fcntl_setlk }, align 4
@__tracepoint_fcntl_setlk = dso_local global %struct.tracepoint { ptr @__tpstrtab_fcntl_setlk, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fcntl_setlk, ptr null, ptr @__traceiter_fcntl_setlk, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fcntl_setlk = internal constant ptr @__tracepoint_fcntl_setlk, section "__tracepoints_ptrs", align 4
@__tpstrtab_locks_remove_posix = internal constant [19 x i8] c"locks_remove_posix\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_locks_remove_posix = dso_local global %struct.static_call_key { ptr @__traceiter_locks_remove_posix }, align 4
@__tracepoint_locks_remove_posix = dso_local global %struct.tracepoint { ptr @__tpstrtab_locks_remove_posix, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_locks_remove_posix, ptr null, ptr @__traceiter_locks_remove_posix, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_locks_remove_posix = internal constant ptr @__tracepoint_locks_remove_posix, section "__tracepoints_ptrs", align 4
@__tpstrtab_flock_lock_inode = internal constant [17 x i8] c"flock_lock_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_flock_lock_inode = dso_local global %struct.static_call_key { ptr @__traceiter_flock_lock_inode }, align 4
@__tracepoint_flock_lock_inode = dso_local global %struct.tracepoint { ptr @__tpstrtab_flock_lock_inode, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_flock_lock_inode, ptr null, ptr @__traceiter_flock_lock_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_flock_lock_inode = internal constant ptr @__tracepoint_flock_lock_inode, section "__tracepoints_ptrs", align 4
@__tpstrtab_break_lease_noblock = internal constant [20 x i8] c"break_lease_noblock\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_break_lease_noblock = dso_local global %struct.static_call_key { ptr @__traceiter_break_lease_noblock }, align 4
@__tracepoint_break_lease_noblock = dso_local global %struct.tracepoint { ptr @__tpstrtab_break_lease_noblock, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_break_lease_noblock, ptr null, ptr @__traceiter_break_lease_noblock, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_break_lease_noblock = internal constant ptr @__tracepoint_break_lease_noblock, section "__tracepoints_ptrs", align 4
@__tpstrtab_break_lease_block = internal constant [18 x i8] c"break_lease_block\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_break_lease_block = dso_local global %struct.static_call_key { ptr @__traceiter_break_lease_block }, align 4
@__tracepoint_break_lease_block = dso_local global %struct.tracepoint { ptr @__tpstrtab_break_lease_block, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_break_lease_block, ptr null, ptr @__traceiter_break_lease_block, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_break_lease_block = internal constant ptr @__tracepoint_break_lease_block, section "__tracepoints_ptrs", align 4
@__tpstrtab_break_lease_unblock = internal constant [20 x i8] c"break_lease_unblock\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_break_lease_unblock = dso_local global %struct.static_call_key { ptr @__traceiter_break_lease_unblock }, align 4
@__tracepoint_break_lease_unblock = dso_local global %struct.tracepoint { ptr @__tpstrtab_break_lease_unblock, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_break_lease_unblock, ptr null, ptr @__traceiter_break_lease_unblock, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_break_lease_unblock = internal constant ptr @__tracepoint_break_lease_unblock, section "__tracepoints_ptrs", align 4
@__tpstrtab_generic_delete_lease = internal constant [21 x i8] c"generic_delete_lease\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_generic_delete_lease = dso_local global %struct.static_call_key { ptr @__traceiter_generic_delete_lease }, align 4
@__tracepoint_generic_delete_lease = dso_local global %struct.tracepoint { ptr @__tpstrtab_generic_delete_lease, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_generic_delete_lease, ptr null, ptr @__traceiter_generic_delete_lease, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_generic_delete_lease = internal constant ptr @__tracepoint_generic_delete_lease, section "__tracepoints_ptrs", align 4
@__tpstrtab_time_out_leases = internal constant [16 x i8] c"time_out_leases\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_time_out_leases = dso_local global %struct.static_call_key { ptr @__traceiter_time_out_leases }, align 4
@__tracepoint_time_out_leases = dso_local global %struct.tracepoint { ptr @__tpstrtab_time_out_leases, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_time_out_leases, ptr null, ptr @__traceiter_time_out_leases, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_time_out_leases = internal constant ptr @__tracepoint_time_out_leases, section "__tracepoints_ptrs", align 4
@__tpstrtab_generic_add_lease = internal constant [18 x i8] c"generic_add_lease\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_generic_add_lease = dso_local global %struct.static_call_key { ptr @__traceiter_generic_add_lease }, align 4
@__tracepoint_generic_add_lease = dso_local global %struct.tracepoint { ptr @__tpstrtab_generic_add_lease, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_generic_add_lease, ptr null, ptr @__traceiter_generic_add_lease, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_generic_add_lease = internal constant ptr @__tracepoint_generic_add_lease, section "__tracepoints_ptrs", align 4
@__tpstrtab_leases_conflict = internal constant [16 x i8] c"leases_conflict\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_leases_conflict = dso_local global %struct.static_call_key { ptr @__traceiter_leases_conflict }, align 4
@__tracepoint_leases_conflict = dso_local global %struct.tracepoint { ptr @__tpstrtab_leases_conflict, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_leases_conflict, ptr null, ptr @__traceiter_leases_conflict, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_leases_conflict = internal constant ptr @__tracepoint_leases_conflict, section "__tracepoints_ptrs", align 4
@str__filelock__trace_system_name = internal constant [9 x i8] c"filelock\00", align 1
@trace_event_fields_locks_get_lock_context = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.71 { %struct.anon.72 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.71 { %struct.anon.72 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.71 { %struct.anon.72 { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.71 { %struct.anon.72 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_locks_get_lock_context = internal global %struct.trace_event_class { ptr @str__filelock__trace_system_name, ptr @trace_event_raw_event_locks_get_lock_context, ptr @perf_trace_locks_get_lock_context, ptr @trace_event_reg, ptr @trace_event_fields_locks_get_lock_context, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_locks_get_lock_context, i64 24), ptr getelementptr (i8, ptr @event_class_locks_get_lock_context, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_locks_get_lock_context = internal global %struct.trace_event_functions { ptr @trace_raw_output_locks_get_lock_context, ptr null, ptr null, ptr null }, align 4
@print_fmt_locks_get_lock_context = internal global [237 x i8] c"\22dev=0x%x:0x%x ino=0x%lx type=%s ctx=%p\22, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, __print_symbolic(REC->type, { 0, \22F_RDLCK\22 }, { 1, \22F_WRLCK\22 }, { 2, \22F_UNLCK\22 }), REC->ctx\00", align 1
@event_locks_get_lock_context = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_locks_get_lock_context, %union.anon.73 { ptr @__tracepoint_locks_get_lock_context }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_locks_get_lock_context }, ptr @print_fmt_locks_get_lock_context, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_locks_get_lock_context = internal global ptr @event_locks_get_lock_context, section "_ftrace_events", align 4
@trace_event_fields_filelock_lock = internal global [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.71 { %struct.anon.72 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.71 { %struct.anon.72 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.71 { %struct.anon.72 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.71 { %struct.anon.72 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.71 { %struct.anon.72 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.71 { %struct.anon.72 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.71 { %struct.anon.72 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.71 { %struct.anon.72 { ptr @.str.25, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.71 { %struct.anon.72 { ptr @.str.27, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.71 { %struct.anon.72 { ptr @.str.28, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.71 { %struct.anon.72 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_filelock_lock = internal global %struct.trace_event_class { ptr @str__filelock__trace_system_name, ptr @trace_event_raw_event_filelock_lock, ptr @perf_trace_filelock_lock, ptr @trace_event_reg, ptr @trace_event_fields_filelock_lock, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_filelock_lock, i64 24), ptr getelementptr (i8, ptr @event_class_filelock_lock, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_filelock_lock = internal global %struct.trace_event_functions { ptr @trace_raw_output_filelock_lock, ptr null, ptr null, ptr null }, align 4
@print_fmt_filelock_lock = internal global [685 x i8] c"\22fl=%p dev=0x%x:0x%x ino=0x%lx fl_blocker=%p fl_owner=%p fl_pid=%u fl_flags=%s fl_type=%s fl_start=%lld fl_end=%lld ret=%d\22, REC->fl, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, REC->fl_blocker, REC->fl_owner, REC->fl_pid, __print_flags(REC->fl_flags, \22|\22, { 1, \22FL_POSIX\22 }, { 2, \22FL_FLOCK\22 }, { 4, \22FL_DELEG\22 }, { 8, \22FL_ACCESS\22 }, { 16, \22FL_EXISTS\22 }, { 32, \22FL_LEASE\22 }, { 64, \22FL_CLOSE\22 }, { 128, \22FL_SLEEP\22 }, { 256, \22FL_DOWNGRADE_PENDING\22 }, { 512, \22FL_UNLOCK_PENDING\22 }, { 1024, \22FL_OFDLCK\22 }), __print_symbolic(REC->fl_type, { 0, \22F_RDLCK\22 }, { 1, \22F_WRLCK\22 }, { 2, \22F_UNLCK\22 }), REC->fl_start, REC->fl_end, REC->ret\00", align 1
@event_posix_lock_inode = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lock, %union.anon.73 { ptr @__tracepoint_posix_lock_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lock }, ptr @print_fmt_filelock_lock, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_posix_lock_inode = internal global ptr @event_posix_lock_inode, section "_ftrace_events", align 4
@event_fcntl_setlk = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lock, %union.anon.73 { ptr @__tracepoint_fcntl_setlk }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lock }, ptr @print_fmt_filelock_lock, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fcntl_setlk = internal global ptr @event_fcntl_setlk, section "_ftrace_events", align 4
@event_locks_remove_posix = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lock, %union.anon.73 { ptr @__tracepoint_locks_remove_posix }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lock }, ptr @print_fmt_filelock_lock, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_locks_remove_posix = internal global ptr @event_locks_remove_posix, section "_ftrace_events", align 4
@event_flock_lock_inode = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lock, %union.anon.73 { ptr @__tracepoint_flock_lock_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lock }, ptr @print_fmt_filelock_lock, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_flock_lock_inode = internal global ptr @event_flock_lock_inode, section "_ftrace_events", align 4
@trace_event_fields_filelock_lease = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.71 { %struct.anon.72 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.71 { %struct.anon.72 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.71 { %struct.anon.72 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.71 { %struct.anon.72 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.71 { %struct.anon.72 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.71 { %struct.anon.72 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.71 { %struct.anon.72 { ptr @.str.25, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.71 { %struct.anon.72 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.71 { %struct.anon.72 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_filelock_lease = internal global %struct.trace_event_class { ptr @str__filelock__trace_system_name, ptr @trace_event_raw_event_filelock_lease, ptr @perf_trace_filelock_lease, ptr @trace_event_reg, ptr @trace_event_fields_filelock_lease, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_filelock_lease, i64 24), ptr getelementptr (i8, ptr @event_class_filelock_lease, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_filelock_lease = internal global %struct.trace_event_functions { ptr @trace_raw_output_filelock_lease, ptr null, ptr null, ptr null }, align 4
@print_fmt_filelock_lease = internal global [675 x i8] c"\22fl=%p dev=0x%x:0x%x ino=0x%lx fl_blocker=%p fl_owner=%p fl_flags=%s fl_type=%s fl_break_time=%lu fl_downgrade_time=%lu\22, REC->fl, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, REC->fl_blocker, REC->fl_owner, __print_flags(REC->fl_flags, \22|\22, { 1, \22FL_POSIX\22 }, { 2, \22FL_FLOCK\22 }, { 4, \22FL_DELEG\22 }, { 8, \22FL_ACCESS\22 }, { 16, \22FL_EXISTS\22 }, { 32, \22FL_LEASE\22 }, { 64, \22FL_CLOSE\22 }, { 128, \22FL_SLEEP\22 }, { 256, \22FL_DOWNGRADE_PENDING\22 }, { 512, \22FL_UNLOCK_PENDING\22 }, { 1024, \22FL_OFDLCK\22 }), __print_symbolic(REC->fl_type, { 0, \22F_RDLCK\22 }, { 1, \22F_WRLCK\22 }, { 2, \22F_UNLCK\22 }), REC->fl_break_time, REC->fl_downgrade_time\00", align 1
@event_break_lease_noblock = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lease, %union.anon.73 { ptr @__tracepoint_break_lease_noblock }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lease }, ptr @print_fmt_filelock_lease, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_break_lease_noblock = internal global ptr @event_break_lease_noblock, section "_ftrace_events", align 4
@event_break_lease_block = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lease, %union.anon.73 { ptr @__tracepoint_break_lease_block }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lease }, ptr @print_fmt_filelock_lease, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_break_lease_block = internal global ptr @event_break_lease_block, section "_ftrace_events", align 4
@event_break_lease_unblock = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lease, %union.anon.73 { ptr @__tracepoint_break_lease_unblock }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lease }, ptr @print_fmt_filelock_lease, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_break_lease_unblock = internal global ptr @event_break_lease_unblock, section "_ftrace_events", align 4
@event_generic_delete_lease = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lease, %union.anon.73 { ptr @__tracepoint_generic_delete_lease }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lease }, ptr @print_fmt_filelock_lease, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_generic_delete_lease = internal global ptr @event_generic_delete_lease, section "_ftrace_events", align 4
@event_time_out_leases = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filelock_lease, %union.anon.73 { ptr @__tracepoint_time_out_leases }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filelock_lease }, ptr @print_fmt_filelock_lease, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_time_out_leases = internal global ptr @event_time_out_leases, section "_ftrace_events", align 4
@trace_event_fields_generic_add_lease = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.71 { %struct.anon.72 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.71 { %struct.anon.72 { ptr @.str.47, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.71 { %struct.anon.72 { ptr @.str.48, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.71 { %struct.anon.72 { ptr @.str.49, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.71 { %struct.anon.72 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.71 { %struct.anon.72 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.71 { %struct.anon.72 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.71 { %struct.anon.72 { ptr @.str.25, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_generic_add_lease = internal global %struct.trace_event_class { ptr @str__filelock__trace_system_name, ptr @trace_event_raw_event_generic_add_lease, ptr @perf_trace_generic_add_lease, ptr @trace_event_reg, ptr @trace_event_fields_generic_add_lease, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_generic_add_lease, i64 24), ptr getelementptr (i8, ptr @event_class_generic_add_lease, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_generic_add_lease = internal global %struct.trace_event_functions { ptr @trace_raw_output_generic_add_lease, ptr null, ptr null, ptr null }, align 4
@print_fmt_generic_add_lease = internal global [614 x i8] c"\22dev=0x%x:0x%x ino=0x%lx wcount=%d rcount=%d icount=%d fl_owner=%p fl_flags=%s fl_type=%s\22, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, REC->wcount, REC->rcount, REC->icount, REC->fl_owner, __print_flags(REC->fl_flags, \22|\22, { 1, \22FL_POSIX\22 }, { 2, \22FL_FLOCK\22 }, { 4, \22FL_DELEG\22 }, { 8, \22FL_ACCESS\22 }, { 16, \22FL_EXISTS\22 }, { 32, \22FL_LEASE\22 }, { 64, \22FL_CLOSE\22 }, { 128, \22FL_SLEEP\22 }, { 256, \22FL_DOWNGRADE_PENDING\22 }, { 512, \22FL_UNLOCK_PENDING\22 }, { 1024, \22FL_OFDLCK\22 }), __print_symbolic(REC->fl_type, { 0, \22F_RDLCK\22 }, { 1, \22F_WRLCK\22 }, { 2, \22F_UNLCK\22 })\00", align 1
@event_generic_add_lease = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_generic_add_lease, %union.anon.73 { ptr @__tracepoint_generic_add_lease }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_generic_add_lease }, ptr @print_fmt_generic_add_lease, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_generic_add_lease = internal global ptr @event_generic_add_lease, section "_ftrace_events", align 4
@trace_event_fields_leases_conflict = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.51, %union.anon.71 { %struct.anon.72 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.71 { %struct.anon.72 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.71 { %struct.anon.72 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.71 { %struct.anon.72 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.71 { %struct.anon.72 { ptr @.str.56, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.71 { %struct.anon.72 { ptr @.str.57, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.71 { %struct.anon.72 { ptr @.str.59, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_leases_conflict = internal global %struct.trace_event_class { ptr @str__filelock__trace_system_name, ptr @trace_event_raw_event_leases_conflict, ptr @perf_trace_leases_conflict, ptr @trace_event_reg, ptr @trace_event_fields_leases_conflict, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_leases_conflict, i64 24), ptr getelementptr (i8, ptr @event_class_leases_conflict, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_leases_conflict = internal global %struct.trace_event_functions { ptr @trace_raw_output_leases_conflict, ptr null, ptr null, ptr null }, align 4
@print_fmt_leases_conflict = internal global [863 x i8] c"\22conflict %d: lease=%p fl_flags=%s fl_type=%s; breaker=%p fl_flags=%s fl_type=%s\22, REC->conflict, REC->lease, __print_flags(REC->l_fl_flags, \22|\22, { 1, \22FL_POSIX\22 }, { 2, \22FL_FLOCK\22 }, { 4, \22FL_DELEG\22 }, { 8, \22FL_ACCESS\22 }, { 16, \22FL_EXISTS\22 }, { 32, \22FL_LEASE\22 }, { 64, \22FL_CLOSE\22 }, { 128, \22FL_SLEEP\22 }, { 256, \22FL_DOWNGRADE_PENDING\22 }, { 512, \22FL_UNLOCK_PENDING\22 }, { 1024, \22FL_OFDLCK\22 }), __print_symbolic(REC->l_fl_type, { 0, \22F_RDLCK\22 }, { 1, \22F_WRLCK\22 }, { 2, \22F_UNLCK\22 }), REC->breaker, __print_flags(REC->b_fl_flags, \22|\22, { 1, \22FL_POSIX\22 }, { 2, \22FL_FLOCK\22 }, { 4, \22FL_DELEG\22 }, { 8, \22FL_ACCESS\22 }, { 16, \22FL_EXISTS\22 }, { 32, \22FL_LEASE\22 }, { 64, \22FL_CLOSE\22 }, { 128, \22FL_SLEEP\22 }, { 256, \22FL_DOWNGRADE_PENDING\22 }, { 512, \22FL_UNLOCK_PENDING\22 }, { 1024, \22FL_OFDLCK\22 }), __print_symbolic(REC->b_fl_type, { 0, \22F_RDLCK\22 }, { 1, \22F_WRLCK\22 }, { 2, \22F_UNLCK\22 })\00", align 1
@event_leases_conflict = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_leases_conflict, %union.anon.73 { ptr @__tracepoint_leases_conflict }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_leases_conflict }, ptr @print_fmt_leases_conflict, ptr null, %union.anon.74 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_leases_conflict = internal global ptr @event_leases_conflict, section "_ftrace_events", align 4
@__initcall__kmod_locks__305_121_init_fs_locks_sysctlsearly = internal global ptr @init_fs_locks_sysctls, section ".initcallearly.init", align 4
@flctx_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@filelock_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_locks_alloc_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_alloc_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_alloc_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_alloc_lock to i32), ptr @__kstrtab_locks_alloc_lock, ptr @__kstrtabns_locks_alloc_lock }, section "___ksymtab_gpl+locks_alloc_lock", align 4
@__kstrtab_locks_release_private = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_release_private = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_release_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_release_private to i32), ptr @__kstrtab_locks_release_private, ptr @__kstrtabns_locks_release_private }, section "___ksymtab_gpl+locks_release_private", align 4
@__kstrtab_locks_free_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_free_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_free_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_free_lock to i32), ptr @__kstrtab_locks_free_lock, ptr @__kstrtabns_locks_free_lock }, section "___ksymtab+locks_free_lock", align 4
@__kstrtab_locks_init_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_init_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_init_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_init_lock to i32), ptr @__kstrtab_locks_init_lock, ptr @__kstrtabns_locks_init_lock }, section "___ksymtab+locks_init_lock", align 4
@__kstrtab_locks_copy_conflock = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_copy_conflock = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_copy_conflock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_copy_conflock to i32), ptr @__kstrtab_locks_copy_conflock, ptr @__kstrtabns_locks_copy_conflock }, section "___ksymtab+locks_copy_conflock", align 4
@locks_copy_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [11 x i8] c"fs/locks.c\00", align 1
@__kstrtab_locks_copy_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_copy_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_copy_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_copy_lock to i32), ptr @__kstrtab_locks_copy_lock, ptr @__kstrtabns_locks_copy_lock }, section "___ksymtab+locks_copy_lock", align 4
@blocked_lock_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_locks_delete_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_delete_block = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_delete_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_delete_block to i32), ptr @__kstrtab_locks_delete_block, ptr @__kstrtabns_locks_delete_block }, section "___ksymtab+locks_delete_block", align 4
@__kstrtab_posix_test_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_test_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_test_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_test_lock to i32), ptr @__kstrtab_posix_test_lock, ptr @__kstrtabns_posix_test_lock }, section "___ksymtab+posix_test_lock", align 4
@__kstrtab_posix_lock_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_lock_file = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_lock_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_lock_file to i32), ptr @__kstrtab_posix_lock_file, ptr @__kstrtabns_posix_lock_file }, section "___ksymtab+posix_lock_file", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013locks_delete_lock: fasync == %p\0A\00", align 1
@__kstrtab_lease_modify = external dso_local constant [0 x i8], align 1
@__kstrtabns_lease_modify = external dso_local constant [0 x i8], align 1
@__ksymtab_lease_modify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lease_modify to i32), ptr @__kstrtab_lease_modify, ptr @__kstrtabns_lease_modify }, section "___ksymtab+lease_modify", align 4
@__break_lease.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@file_rwsem = internal global %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @file_rwsem, i64 12), ptr getelementptr (i8, ptr @file_rwsem, i64 12) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_file_rwsem, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @file_rwsem, i64 40), ptr getelementptr (i8, ptr @file_rwsem, i64 40) } }, %struct.atomic_t zeroinitializer }, align 4
@lease_break_time = internal global i32 45, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___break_lease = external dso_local constant [0 x i8], align 1
@__kstrtabns___break_lease = external dso_local constant [0 x i8], align 1
@__ksymtab___break_lease = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__break_lease to i32), ptr @__kstrtab___break_lease, ptr @__kstrtabns___break_lease }, section "___ksymtab+__break_lease", align 4
@__kstrtab_lease_get_mtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_lease_get_mtime = external dso_local constant [0 x i8], align 1
@__ksymtab_lease_get_mtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lease_get_mtime to i32), ptr @__kstrtab_lease_get_mtime, ptr @__kstrtabns_lease_get_mtime }, section "___ksymtab+lease_get_mtime", align 4
@generic_setlease.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_generic_setlease = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_setlease = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_setlease = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_setlease to i32), ptr @__kstrtab_generic_setlease, ptr @__kstrtabns_generic_setlease }, section "___ksymtab+generic_setlease", align 4
@lease_notifier_chain = internal global %struct.srcu_notifier_head zeroinitializer, align 4
@__kstrtab_lease_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_lease_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_lease_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lease_register_notifier to i32), ptr @__kstrtab_lease_register_notifier, ptr @__kstrtabns_lease_register_notifier }, section "___ksymtab_gpl+lease_register_notifier", align 4
@__kstrtab_lease_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_lease_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_lease_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lease_unregister_notifier to i32), ptr @__kstrtab_lease_unregister_notifier, ptr @__kstrtabns_lease_unregister_notifier }, section "___ksymtab_gpl+lease_unregister_notifier", align 4
@__kstrtab_vfs_setlease = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_setlease = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_setlease = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_setlease to i32), ptr @__kstrtab_vfs_setlease, ptr @__kstrtabns_vfs_setlease }, section "___ksymtab_gpl+vfs_setlease", align 4
@__kstrtab_locks_lock_inode_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_lock_inode_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_lock_inode_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_lock_inode_wait to i32), ptr @__kstrtab_locks_lock_inode_wait, ptr @__kstrtabns_locks_lock_inode_wait }, section "___ksymtab+locks_lock_inode_wait", align 4
@__kstrtab_vfs_test_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_test_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_test_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_test_lock to i32), ptr @__kstrtab_vfs_test_lock, ptr @__kstrtabns_vfs_test_lock }, section "___ksymtab_gpl+vfs_test_lock", align 4
@__kstrtab_vfs_lock_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_lock_file = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_lock_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_lock_file to i32), ptr @__kstrtab_vfs_lock_file, ptr @__kstrtabns_vfs_lock_file }, section "___ksymtab_gpl+vfs_lock_file", align 4
@fcntl_setlk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fcntl_setlk64.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_locks_remove_posix = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_remove_posix = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_remove_posix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_remove_posix to i32), ptr @__kstrtab_locks_remove_posix, ptr @__kstrtabns_locks_remove_posix }, section "___ksymtab+locks_remove_posix", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FLOCK\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"LEASE\00", align 1
@__kstrtab_vfs_cancel_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_cancel_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_cancel_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_cancel_lock to i32), ptr @__kstrtab_vfs_cancel_lock, ptr @__kstrtabns_vfs_cancel_lock }, section "___ksymtab_gpl+vfs_cancel_lock", align 4
@__initcall__kmod_locks__334_2857_proc_locks_init5 = internal global ptr @proc_locks_init, section ".initcall5.init", align 4
@__initcall__kmod_locks__335_2880_filelock_init1 = internal global ptr @filelock_init, section ".initcall1.init", align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"i_ino\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"dev_t\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"s_dev\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"struct file_lock_context *\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"dev=0x%x:0x%x ino=0x%lx type=%s ctx=%p\0A\00", align 1
@trace_raw_output_locks_get_lock_context.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"F_RDLCK\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"F_WRLCK\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"F_UNLCK\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"struct file_lock *\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"fl\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fl_blocker\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"fl_owner_t\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"fl_owner\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"fl_pid\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"fl_flags\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"fl_type\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"loff_t\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"fl_start\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"fl_end\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.31 = private unnamed_addr constant [123 x i8] c"fl=%p dev=0x%x:0x%x ino=0x%lx fl_blocker=%p fl_owner=%p fl_pid=%u fl_flags=%s fl_type=%s fl_start=%lld fl_end=%lld ret=%d\0A\00", align 1
@trace_raw_output_filelock_lock.__flags = internal constant [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.32 }, %struct.trace_print_flags { i32 2, ptr @.str.33 }, %struct.trace_print_flags { i32 4, ptr @.str.34 }, %struct.trace_print_flags { i32 8, ptr @.str.35 }, %struct.trace_print_flags { i32 16, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 64, ptr @.str.38 }, %struct.trace_print_flags { i32 128, ptr @.str.39 }, %struct.trace_print_flags { i32 256, ptr @.str.40 }, %struct.trace_print_flags { i32 512, ptr @.str.41 }, %struct.trace_print_flags { i32 1024, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"FL_POSIX\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"FL_FLOCK\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"FL_DELEG\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"FL_ACCESS\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"FL_EXISTS\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"FL_LEASE\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"FL_CLOSE\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"FL_SLEEP\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"FL_DOWNGRADE_PENDING\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"FL_UNLOCK_PENDING\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"FL_OFDLCK\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@trace_raw_output_filelock_lock.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"fl_break_time\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"fl_downgrade_time\00", align 1
@.str.46 = private unnamed_addr constant [120 x i8] c"fl=%p dev=0x%x:0x%x ino=0x%lx fl_blocker=%p fl_owner=%p fl_flags=%s fl_type=%s fl_break_time=%lu fl_downgrade_time=%lu\0A\00", align 1
@trace_raw_output_filelock_lease.__flags = internal constant [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.32 }, %struct.trace_print_flags { i32 2, ptr @.str.33 }, %struct.trace_print_flags { i32 4, ptr @.str.34 }, %struct.trace_print_flags { i32 8, ptr @.str.35 }, %struct.trace_print_flags { i32 16, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 64, ptr @.str.38 }, %struct.trace_print_flags { i32 128, ptr @.str.39 }, %struct.trace_print_flags { i32 256, ptr @.str.40 }, %struct.trace_print_flags { i32 512, ptr @.str.41 }, %struct.trace_print_flags { i32 1024, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_filelock_lease.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.47 = private unnamed_addr constant [7 x i8] c"wcount\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"rcount\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"icount\00", align 1
@.str.50 = private unnamed_addr constant [90 x i8] c"dev=0x%x:0x%x ino=0x%lx wcount=%d rcount=%d icount=%d fl_owner=%p fl_flags=%s fl_type=%s\0A\00", align 1
@trace_raw_output_generic_add_lease.__flags = internal constant [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.32 }, %struct.trace_print_flags { i32 2, ptr @.str.33 }, %struct.trace_print_flags { i32 4, ptr @.str.34 }, %struct.trace_print_flags { i32 8, ptr @.str.35 }, %struct.trace_print_flags { i32 16, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 64, ptr @.str.38 }, %struct.trace_print_flags { i32 128, ptr @.str.39 }, %struct.trace_print_flags { i32 256, ptr @.str.40 }, %struct.trace_print_flags { i32 512, ptr @.str.41 }, %struct.trace_print_flags { i32 1024, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_generic_add_lease.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"lease\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"breaker\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"l_fl_flags\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"b_fl_flags\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"l_fl_type\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"b_fl_type\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.60 = private unnamed_addr constant [81 x i8] c"conflict %d: lease=%p fl_flags=%s fl_type=%s; breaker=%p fl_flags=%s fl_type=%s\0A\00", align 1
@trace_raw_output_leases_conflict.__flags = internal constant [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.32 }, %struct.trace_print_flags { i32 2, ptr @.str.33 }, %struct.trace_print_flags { i32 4, ptr @.str.34 }, %struct.trace_print_flags { i32 8, ptr @.str.35 }, %struct.trace_print_flags { i32 16, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 64, ptr @.str.38 }, %struct.trace_print_flags { i32 128, ptr @.str.39 }, %struct.trace_print_flags { i32 256, ptr @.str.40 }, %struct.trace_print_flags { i32 512, ptr @.str.41 }, %struct.trace_print_flags { i32 1024, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_leases_conflict.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_leases_conflict.__flags.61 = internal constant [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.32 }, %struct.trace_print_flags { i32 2, ptr @.str.33 }, %struct.trace_print_flags { i32 4, ptr @.str.34 }, %struct.trace_print_flags { i32 8, ptr @.str.35 }, %struct.trace_print_flags { i32 16, ptr @.str.36 }, %struct.trace_print_flags { i32 32, ptr @.str.37 }, %struct.trace_print_flags { i32 64, ptr @.str.38 }, %struct.trace_print_flags { i32 128, ptr @.str.39 }, %struct.trace_print_flags { i32 256, ptr @.str.40 }, %struct.trace_print_flags { i32 512, ptr @.str.41 }, %struct.trace_print_flags { i32 1024, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_leases_conflict.symbols.62 = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.63 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@locks_sysctls = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.65, ptr @leases_enable, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.66, ptr @lease_break_time, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.64 = private unnamed_addr constant [14 x i8] c"locks_sysctls\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"leases-enable\00", align 1
@leases_enable = internal global i32 1, align 4
@.str.66 = private unnamed_addr constant [17 x i8] c"lease-break-time\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"\014Leaked locks on dev=0x%x:0x%x ino=0x%lx:\0A\00", align 1
@.str.68 = private unnamed_addr constant [56 x i8] c"\014%s: fl_owner=%p fl_flags=0x%x fl_type=0x%x fl_pid=%u\0A\00", align 1
@locks_init_lock_heads.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"&fl->fl_wait\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@blocked_hash = internal global [128 x %struct.hlist_head] zeroinitializer, align 4
@file_lock_list = internal global %struct.file_lock_list_struct zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@lease_manager_ops = internal constant %struct.lock_manager_operations { ptr null, ptr null, ptr null, ptr null, ptr @lease_break_callback, ptr @lease_modify, ptr @lease_setup, ptr null }, align 4
@__percpu_rwsem_rc_file_rwsem = internal global i32 0, section ".data..percpu", align 4
@generic_add_lease.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__do_sys_flock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = private unnamed_addr constant [104 x i8] c"\014Attempt to set a LOCK_MAND lock via flock(2). This support has been removed and the request ignored.\0A\00", align 1
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@.str.72 = private unnamed_addr constant [95 x i8] c"\014Leaked %s lock on dev=0x%x:0x%x ino=0x%lx  fl_owner=%p fl_flags=0x%x fl_type=0x%x fl_pid=%u\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"lock:\09\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"%lld: \00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"ACCESS\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"OFDLCK\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"POSIX \00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"*NOINODE*\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"ADVISORY \00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"FLOCK  ADVISORY  \00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"DELEG  \00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"LEASE  \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"BREAKING  \00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"ACTIVE    \00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"BREAKER   \00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"UNKNOWN UNKNOWN  \00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"UNLCK\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"%d %02x:%02x:%lu \00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"%d <none>:0 \00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"%Ld EOF\0A\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"%Ld %Ld\0A\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"0 EOF\0A\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"locks\00", align 1
@locks_seq_operations = internal constant %struct.seq_operations { ptr @locks_start, ptr @locks_stop, ptr @locks_next, ptr @locks_show }, align 4
@.str.100 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"file_lock_ctx\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"file_lock_cache\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [77 x ptr] [ptr @__event_break_lease_block, ptr @__event_break_lease_noblock, ptr @__event_break_lease_unblock, ptr @__event_fcntl_setlk, ptr @__event_flock_lock_inode, ptr @__event_generic_add_lease, ptr @__event_generic_delete_lease, ptr @__event_leases_conflict, ptr @__event_locks_get_lock_context, ptr @__event_locks_remove_posix, ptr @__event_posix_lock_inode, ptr @__event_time_out_leases, ptr @__initcall__kmod_locks__305_121_init_fs_locks_sysctlsearly, ptr @__initcall__kmod_locks__334_2857_proc_locks_init5, ptr @__initcall__kmod_locks__335_2880_filelock_init1, ptr @__ksymtab___break_lease, ptr @__ksymtab_generic_setlease, ptr @__ksymtab_lease_get_mtime, ptr @__ksymtab_lease_modify, ptr @__ksymtab_lease_register_notifier, ptr @__ksymtab_lease_unregister_notifier, ptr @__ksymtab_locks_alloc_lock, ptr @__ksymtab_locks_copy_conflock, ptr @__ksymtab_locks_copy_lock, ptr @__ksymtab_locks_delete_block, ptr @__ksymtab_locks_free_lock, ptr @__ksymtab_locks_init_lock, ptr @__ksymtab_locks_lock_inode_wait, ptr @__ksymtab_locks_release_private, ptr @__ksymtab_locks_remove_posix, ptr @__ksymtab_posix_lock_file, ptr @__ksymtab_posix_test_lock, ptr @__ksymtab_vfs_cancel_lock, ptr @__ksymtab_vfs_lock_file, ptr @__ksymtab_vfs_setlease, ptr @__ksymtab_vfs_test_lock, ptr @__tracepoint_break_lease_block, ptr @__tracepoint_break_lease_noblock, ptr @__tracepoint_break_lease_unblock, ptr @__tracepoint_fcntl_setlk, ptr @__tracepoint_flock_lock_inode, ptr @__tracepoint_generic_add_lease, ptr @__tracepoint_generic_delete_lease, ptr @__tracepoint_leases_conflict, ptr @__tracepoint_locks_get_lock_context, ptr @__tracepoint_locks_remove_posix, ptr @__tracepoint_posix_lock_inode, ptr @__tracepoint_ptr_break_lease_block, ptr @__tracepoint_ptr_break_lease_noblock, ptr @__tracepoint_ptr_break_lease_unblock, ptr @__tracepoint_ptr_fcntl_setlk, ptr @__tracepoint_ptr_flock_lock_inode, ptr @__tracepoint_ptr_generic_add_lease, ptr @__tracepoint_ptr_generic_delete_lease, ptr @__tracepoint_ptr_leases_conflict, ptr @__tracepoint_ptr_locks_get_lock_context, ptr @__tracepoint_ptr_locks_remove_posix, ptr @__tracepoint_ptr_posix_lock_inode, ptr @__tracepoint_ptr_time_out_leases, ptr @__tracepoint_time_out_leases, ptr @event_break_lease_block, ptr @event_break_lease_noblock, ptr @event_break_lease_unblock, ptr @event_class_filelock_lease, ptr @event_class_filelock_lock, ptr @event_class_generic_add_lease, ptr @event_class_leases_conflict, ptr @event_class_locks_get_lock_context, ptr @event_fcntl_setlk, ptr @event_flock_lock_inode, ptr @event_generic_add_lease, ptr @event_generic_delete_lease, ptr @event_leases_conflict, ptr @event_locks_get_lock_context, ptr @event_locks_remove_posix, ptr @event_posix_lock_inode, ptr @event_time_out_leases], section "llvm.metadata"

@sys_flock = dso_local alias i32 (i32, i32), ptr @__se_sys_flock

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_locks_get_lock_context(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_locks_get_lock_context, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_posix_lock_inode(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_posix_lock_inode, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fcntl_setlk(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fcntl_setlk, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_locks_remove_posix(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_locks_remove_posix, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_flock_lock_inode(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_flock_lock_inode, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_break_lease_noblock(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_noblock, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_break_lease_block(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_block, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_break_lease_unblock(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_unblock, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_generic_delete_lease(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_delete_lease, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_time_out_leases(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_time_out_leases, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_generic_add_lease(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_add_lease, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_leases_conflict(ptr nocapture readnone %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_locks_get_lock_context(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %16, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %16, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = trunc i32 %2 to i8
  %28 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %16, i32 0, i32 3
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %16, i32 0, i32 4
  store ptr %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %30

30:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_locks_get_lock_context(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %22, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %22, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = trunc i32 %2 to i8
  %44 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %22, i32 0, i32 3
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %22, i32 0, i32 4
  store ptr %3, ptr %45, align 4
  %46 = load i32, ptr %6, align 4
  %47 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %14, ptr noundef null) #13
  br label %48

48:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_filelock_lock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %56, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 64) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %2, null
  %20 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 1
  store ptr %2, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 3
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  br i1 %19, label %49, label %29

29:                                               ; preds = %18
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 5
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 7
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 8
  store i8 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 12
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 9
  store i64 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 13
  %48 = load i64, ptr %47, align 8
  br label %52

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 4
  %51 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 9
  store i64 0, ptr %51, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(17) %50, i8 0, i64 17, i1 false)
  br label %52

52:                                               ; preds = %49, %29
  %53 = phi i64 [ %48, %29 ], [ 0, %49 ]
  %54 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 10
  store i64 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %16, i32 0, i32 11
  store i32 %3, ptr %55, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %56

56:                                               ; preds = %52, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_filelock_lock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %74, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = icmp eq ptr %2, null
  %36 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 1
  store ptr %2, ptr %36, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 3
  store i32 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  br i1 %35, label %65, label %45

45:                                               ; preds = %24
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 5
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 8
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 6
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 7
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %58 = load i8, ptr %57, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 8
  store i8 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 12
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 9
  store i64 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 13
  %64 = load i64, ptr %63, align 8
  br label %68

65:                                               ; preds = %24
  %66 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 4
  %67 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 9
  store i64 0, ptr %67, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(17) %66, i8 0, i64 17, i1 false)
  br label %68

68:                                               ; preds = %65, %45
  %69 = phi i64 [ %64, %45 ], [ 0, %65 ]
  %70 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 10
  store i64 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %22, i32 0, i32 11
  store i32 %3, ptr %71, align 8
  %72 = load i32, ptr %6, align 4
  %73 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 68, i32 noundef %72, ptr noundef %0, i64 noundef 1, ptr noundef %73, ptr noundef %14, ptr noundef null) #13
  br label %74

74:                                               ; preds = %68, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_filelock_lease(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %13, label %51, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 44) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %14
  %18 = icmp eq ptr %2, null
  %19 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 1
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  br i1 %18, label %45, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 5
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 7
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 8
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  br label %48

45:                                               ; preds = %17
  %46 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 4
  %47 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 8
  store i32 0, ptr %47, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %46, i8 0, i64 13, i1 false)
  br label %48

48:                                               ; preds = %45, %28
  %49 = phi i32 [ %44, %28 ], [ 0, %45 ]
  %50 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %15, i32 0, i32 9
  store i32 %49, ptr %50, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %51

51:                                               ; preds = %48, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_filelock_lease(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = icmp eq ptr %2, null
  %35 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 1
  store ptr %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  br i1 %34, label %61, label %44

44:                                               ; preds = %23
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 5
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 7
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 15
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 8
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 16
  %60 = load i32, ptr %59, align 8
  br label %64

61:                                               ; preds = %23
  %62 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 4
  %63 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 8
  store i32 0, ptr %63, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %62, i8 0, i64 13, i1 false)
  br label %64

64:                                               ; preds = %61, %44
  %65 = phi i32 [ %60, %44 ], [ 0, %61 ]
  %66 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %21, i32 0, i32 9
  store i32 %65, ptr %66, align 4
  %67 = load i32, ptr %5, align 4
  %68 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %67, ptr noundef %0, i64 noundef 1, ptr noundef %68, ptr noundef %13, ptr noundef null) #13
  br label %69

69:                                               ; preds = %64, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_generic_add_lease(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %13, label %44, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  %27 = load volatile i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %30 = load volatile i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 35
  %33 = load volatile i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 6
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 7
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %15, i32 0, i32 8
  store i8 %42, ptr %43, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %44

44:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_generic_add_lease(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  %43 = load volatile i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %46 = load volatile i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 35
  %49 = load volatile i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 6
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 7
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %58 = load i8, ptr %57, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %21, i32 0, i32 8
  store i8 %58, ptr %59, align 4
  %60 = load i32, ptr %5, align 4
  %61 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %60, ptr noundef %0, i64 noundef 1, ptr noundef %61, ptr noundef %13, ptr noundef null) #13
  br label %62

62:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_leases_conflict(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %15, label %35, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 28) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 1
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 5
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 2
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 4
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 7
  %32 = load i8, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 6
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %17, i32 0, i32 7
  store i8 %6, ptr %34, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %35

35:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_leases_conflict(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #8, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %19, %4
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 1
  store ptr %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %41 = load i8, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 5
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 2
  store ptr %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 7
  %48 = load i8, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 6
  store i8 %48, ptr %49, align 1
  %50 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %23, i32 0, i32 7
  store i8 %7, ptr %50, align 2
  %51 = load i32, ptr %6, align 4
  %52 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %15, ptr noundef null) #13
  br label %53

53:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_locks_sysctls() #3 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.63, ptr noundef nonnull @locks_sysctls, ptr noundef nonnull @.str.64) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_free_lock_context(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !10

5:                                                ; preds = %1
  tail call fastcc void @locks_check_ctx_lists(ptr noundef %0)
  %6 = load ptr, ptr @flctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_check_ctx_lists(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %15, !prof !10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %15, !prof !10

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %27, label %15, !prof !10

15:                                               ; preds = %11, %7, %1
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 20
  %21 = and i32 %19, 1048575
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %20, i32 noundef %21, i32 noundef %23) #14
  tail call fastcc void @locks_dump_ctx_list(ptr noundef %4, ptr noundef nonnull @.str.3)
  %25 = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 2
  tail call fastcc void @locks_dump_ctx_list(ptr noundef %25, ptr noundef nonnull @.str.2)
  %26 = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3
  tail call fastcc void @locks_dump_ctx_list(ptr noundef %26, ptr noundef nonnull @.str.4)
  br label %27

27:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @locks_alloc_lock() #0 {
  %1 = load ptr, ptr @filelock_cache, align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3520) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 2
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 2, i32 1
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 4
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 4, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  br label %14

14:                                               ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_release_private(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 10, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !10

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %21, label %20, !prof !10

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !10

25:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.file_lock_operations, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %34, %30
  store ptr null, ptr %27, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 18
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.lock_manager_operations, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  tail call void %42(ptr noundef %46) #13
  store ptr null, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %40
  store ptr null, ptr %37, align 8
  br label %48

48:                                               ; preds = %47, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_free_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 10, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !10

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %21, label %20, !prof !10

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !10

25:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.file_lock_operations, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %34, %30
  store ptr null, ptr %27, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 18
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.lock_manager_operations, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  tail call void %42(ptr noundef %46) #13
  store ptr null, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %40
  store ptr null, ptr %37, align 8
  br label %48

48:                                               ; preds = %47, %36
  %49 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_init_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %8, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_copy_conflock(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 8
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 6
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 12
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 13
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 18
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 18
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 17
  store ptr null, ptr %25, align 4
  %26 = load ptr, ptr %22, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 4
  %33 = tail call ptr %29(ptr noundef %32) #13
  br label %34

34:                                               ; preds = %31, %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_copy_lock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %4, null
  %6 = load i1, ptr @locks_copy_lock.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %2
  store i1 true, ptr @locks_copy_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 355, i32 noundef 9, ptr noundef null) #13
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 8
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 6
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 12
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 13
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 18
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 18
  store ptr %31, ptr %32, align 8
  store ptr null, ptr %3, align 4
  %33 = load ptr, ptr %30, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %10
  %36 = load ptr, ptr %33, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %11, align 4
  %40 = tail call ptr %36(ptr noundef %39) #13
  br label %41

41:                                               ; preds = %38, %35, %10
  %42 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %17, align 4
  %44 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %3, align 4
  %46 = load ptr, ptr %44, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %46, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void %49(ptr noundef %0, ptr noundef %1) #13
  br label %52

52:                                               ; preds = %51, %48, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @locks_delete_block(ptr noundef %0) #0 {
  %2 = load volatile ptr, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %65, label %8

8:                                                ; preds = %4, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %9 = load ptr, ptr %0, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 -2, i32 0
  %12 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %46, label %15

15:                                               ; preds = %43, %8
  %16 = phi ptr [ %44, %43 ], [ %13, %8 ]
  %17 = getelementptr i8, ptr %16, i32 -28
  %18 = getelementptr i8, ptr %16, i32 -16
  %19 = getelementptr i8, ptr %16, i32 -12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
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

28:                                               ; preds = %27, %15
  %29 = getelementptr i8, ptr %16, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %29, align 4
  %33 = getelementptr i8, ptr %16, i32 76
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.lock_manager_operations, ptr %34, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %17) #13
  br label %43

41:                                               ; preds = %36, %28
  %42 = getelementptr i8, ptr %16, i32 28
  tail call void @__wake_up(ptr noundef %42, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %43

43:                                               ; preds = %41, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  store volatile ptr null, ptr %17, align 8
  %44 = load volatile ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, %12
  br i1 %45, label %46, label %15

46:                                               ; preds = %43, %8
  %47 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2
  %48 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 4
  store volatile ptr %52, ptr %49, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  store volatile ptr %49, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  store ptr null, ptr %47, align 4
  store ptr null, ptr %48, align 4
  br label %57

57:                                               ; preds = %56, %46
  %58 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4
  %59 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store volatile ptr %58, ptr %58, align 4
  store ptr %58, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  store volatile ptr null, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %63 = load i16, ptr @blocked_lock_lock, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr @blocked_lock_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %65

65:                                               ; preds = %57, %4
  %66 = phi i32 [ %11, %57 ], [ -2, %4 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @posix_test_lock(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 40
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file_lock_context, ptr %6, i32 0, i32 2
  %10 = load volatile ptr, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.file_lock_context, ptr %6, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  store i8 2, ptr %17, align 4
  br label %84

18:                                               ; preds = %12, %8
  tail call void @_raw_spin_lock(ptr noundef nonnull %6) #13
  %19 = load ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, %9
  br i1 %20, label %79, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %25 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %26 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  br label %27

27:                                               ; preds = %49, %21
  %28 = phi ptr [ %19, %21 ], [ %50, %49 ]
  %29 = getelementptr i8, ptr %28, i32 32
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %23, %30
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = load i64, ptr %24, align 8
  %34 = getelementptr i8, ptr %28, i32 68
  %35 = load i64, ptr %34, align 8
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %28, i32 76
  %39 = load i64, ptr %38, align 8
  %40 = load i64, ptr %25, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %28, i32 40
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr %26, align 4
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %37, %32, %27
  %50 = load ptr, ptr %28, align 4
  %51 = icmp eq ptr %50, %9
  br i1 %51, label %79, label %27

52:                                               ; preds = %46, %42
  %53 = getelementptr i8, ptr %28, i32 32
  %54 = getelementptr i8, ptr %28, i32 68
  %55 = getelementptr i8, ptr %28, i32 76
  %56 = getelementptr i8, ptr %28, i32 40
  store ptr %30, ptr %22, align 4
  %57 = getelementptr i8, ptr %28, i32 44
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  store ptr null, ptr %60, align 4
  %61 = getelementptr i8, ptr %28, i32 36
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  store i32 %62, ptr %63, align 8
  %64 = load i8, ptr %56, align 4
  store i8 %64, ptr %26, align 4
  %65 = load i64, ptr %54, align 8
  store i64 %65, ptr %25, align 8
  %66 = load i64, ptr %55, align 8
  store i64 %66, ptr %24, align 8
  %67 = getelementptr i8, ptr %28, i32 100
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 18
  store ptr %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 17
  store ptr null, ptr %70, align 4
  %71 = load ptr, ptr %67, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %52
  %74 = load ptr, ptr %71, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %53, align 4
  %78 = tail call ptr %74(ptr noundef %77) #13
  br label %81

79:                                               ; preds = %49, %18
  %80 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  store i8 2, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %76, %73, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %82 = load i16, ptr %6, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %84

84:                                               ; preds = %81, %16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @posix_locks_conflict(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 13
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %12 = load i64, ptr %11, align 8
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 12
  %18 = load i64, ptr %17, align 8
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  br label %28

28:                                               ; preds = %24, %20, %14, %8, %2
  %29 = phi i1 [ false, %2 ], [ false, %14 ], [ true, %20 ], [ %27, %24 ], [ false, %8 ]
  ret i1 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_lock_file(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @posix_lock_inode(ptr noundef %5, ptr noundef %1, ptr noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @posix_lock_inode(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = call fastcc ptr @locks_get_lock_context(ptr noundef %0, i32 noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i8, ptr %6, align 4
  %13 = icmp eq i8 %12, 2
  %14 = select i1 %13, i32 0, i32 -12
  br label %754

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load i8, ptr %6, align 4
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 9223372036854775807
  br i1 %30, label %59, label %31

31:                                               ; preds = %27, %23, %20
  %32 = load ptr, ptr @filelock_cache, align 4
  %33 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %32, i32 noundef 3520) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 2
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 2, i32 1
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 1
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 1, i32 1
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 3
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 3, i32 1
  store ptr %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 4
  store volatile ptr %42, ptr %42, align 4
  %43 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 4, i32 1
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.file_lock, ptr %33, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %44, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  br label %45

45:                                               ; preds = %35, %31
  %46 = load ptr, ptr @filelock_cache, align 4
  %47 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %46, i32 noundef 3520) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 2
  store ptr null, ptr %50, align 4
  %51 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 2, i32 1
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 1
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 1, i32 1
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 3
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 3, i32 1
  store ptr %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 4
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 4, i32 1
  store ptr %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.file_lock, ptr %47, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %58, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  br label %59

59:                                               ; preds = %49, %45, %27, %15
  %60 = phi ptr [ null, %15 ], [ null, %27 ], [ null, %45 ], [ %47, %49 ]
  %61 = phi ptr [ null, %15 ], [ null, %27 ], [ %33, %45 ], [ %33, %49 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %62 = load volatile i32, ptr @file_rwsem, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75, !prof !10

64:                                               ; preds = %59
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %66 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = call i32 @llvm.read_register.i32(metadata !0) #13
  %69 = inttoptr i32 %68 to ptr
  %70 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #8, !srcloc !12
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #13, !srcloc !29
  br label %77

75:                                               ; preds = %59
  %76 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %77

77:                                               ; preds = %75, %64
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %9) #13
  %78 = load i8, ptr %6, align 4
  %79 = icmp eq i8 %78, 2
  br i1 %79, label %233, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.file_lock_context, ptr %9, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %233, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %88 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %89 = icmp eq i8 %78, 1
  br label %90

90:                                               ; preds = %110, %84
  %91 = phi ptr [ %82, %84 ], [ %111, %110 ]
  %92 = getelementptr i8, ptr %91, i32 32
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %86, %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %87, align 8
  %97 = getelementptr i8, ptr %91, i32 68
  %98 = load i64, ptr %97, align 8
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %91, i32 76
  %102 = load i64, ptr %101, align 8
  %103 = load i64, ptr %88, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %91, i32 40
  %107 = load i8, ptr %106, align 4
  %108 = icmp eq i8 %107, 1
  %109 = select i1 %108, i1 true, i1 %89
  br i1 %109, label %113, label %110

110:                                              ; preds = %105, %100, %95, %90
  %111 = load ptr, ptr %91, align 4
  %112 = icmp eq ptr %111, %81
  br i1 %112, label %233, label %90

113:                                              ; preds = %105
  %114 = getelementptr i8, ptr %91, i32 32
  %115 = getelementptr i8, ptr %91, i32 -4
  %116 = icmp eq ptr %2, null
  br i1 %116, label %147, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %91, i32 40
  %119 = getelementptr i8, ptr %91, i32 76
  %120 = getelementptr i8, ptr %91, i32 68
  %121 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  store ptr %93, ptr %121, align 4
  %122 = getelementptr i8, ptr %91, i32 44
  %123 = load i32, ptr %122, align 8
  %124 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 8
  store i32 %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 11
  store ptr null, ptr %125, align 4
  %126 = getelementptr i8, ptr %91, i32 36
  %127 = load i32, ptr %126, align 8
  %128 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  store i32 %127, ptr %128, align 8
  %129 = load i8, ptr %118, align 4
  %130 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  store i8 %129, ptr %130, align 4
  %131 = load i64, ptr %120, align 8
  %132 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 12
  store i64 %131, ptr %132, align 8
  %133 = load i64, ptr %119, align 8
  %134 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 13
  store i64 %133, ptr %134, align 8
  %135 = getelementptr i8, ptr %91, i32 100
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 18
  store ptr %136, ptr %137, align 8
  %138 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 17
  store ptr null, ptr %138, align 4
  %139 = load ptr, ptr %135, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %117
  %142 = load ptr, ptr %139, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %114, align 4
  %146 = call ptr %142(ptr noundef %145) #13
  br label %147

147:                                              ; preds = %144, %141, %117, %113
  %148 = load i32, ptr %16, align 8
  %149 = and i32 %148, 128
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %594, label %151

151:                                              ; preds = %147
  call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %152 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 3
  %153 = load volatile ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %152
  br i1 %154, label %186, label %155

155:                                              ; preds = %183, %151
  %156 = phi ptr [ %184, %183 ], [ %153, %151 ]
  %157 = getelementptr i8, ptr %156, i32 -28
  %158 = getelementptr i8, ptr %156, i32 -16
  %159 = getelementptr i8, ptr %156, i32 -12
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %155
  %163 = load ptr, ptr %158, align 4
  store volatile ptr %163, ptr %160, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.hlist_node, ptr %163, i32 0, i32 1
  store volatile ptr %160, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %162
  store ptr null, ptr %158, align 4
  store ptr null, ptr %159, align 4
  br label %168

168:                                              ; preds = %167, %155
  %169 = getelementptr i8, ptr %156, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %156, align 4
  %172 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  store ptr %170, ptr %172, align 4
  store volatile ptr %171, ptr %170, align 4
  store volatile ptr %156, ptr %156, align 4
  store ptr %156, ptr %169, align 4
  %173 = getelementptr i8, ptr %156, i32 76
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.lock_manager_operations, ptr %174, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void %178(ptr noundef %157) #13
  br label %183

181:                                              ; preds = %176, %168
  %182 = getelementptr i8, ptr %156, i32 28
  call void @__wake_up(ptr noundef %182, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %183

183:                                              ; preds = %181, %180
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  store volatile ptr null, ptr %157, align 8
  %184 = load volatile ptr, ptr %152, align 4
  %185 = icmp eq ptr %184, %152
  br i1 %185, label %186, label %155

186:                                              ; preds = %183, %151
  %187 = load i32, ptr %16, align 8
  %188 = and i32 %187, 1024
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %228

190:                                              ; preds = %186
  %191 = load ptr, ptr %114, align 4
  br label %192

192:                                              ; preds = %222, %190
  %193 = phi ptr [ %226, %222 ], [ %191, %190 ]
  %194 = phi i32 [ %223, %222 ], [ 0, %190 ]
  %195 = ptrtoint ptr %193 to i32
  %196 = mul i32 %195, 1640531527
  %197 = lshr i32 %196, 25
  %198 = getelementptr [128 x %struct.hlist_head], ptr @blocked_hash, i32 0, i32 %197
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  %201 = getelementptr i8, ptr %199, i32 -12
  %202 = icmp eq ptr %201, null
  %203 = or i1 %200, %202
  br i1 %203, label %228, label %204

204:                                              ; preds = %213, %192
  %205 = phi ptr [ %217, %213 ], [ %201, %192 ]
  %206 = getelementptr inbounds %struct.file_lock, ptr %205, i32 0, i32 5
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, %193
  br i1 %208, label %209, label %213

209:                                              ; preds = %209, %204
  %210 = phi ptr [ %211, %209 ], [ %205, %204 ]
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %220, label %209

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.file_lock, ptr %205, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  %217 = getelementptr i8, ptr %215, i32 -12
  %218 = icmp eq ptr %217, null
  %219 = or i1 %216, %218
  br i1 %219, label %228, label %204

220:                                              ; preds = %209
  %221 = icmp eq i32 %194, 11
  br i1 %221, label %228, label %222

222:                                              ; preds = %220
  %223 = add nuw nsw i32 %194, 1
  %224 = load ptr, ptr %85, align 4
  %225 = getelementptr inbounds %struct.file_lock, ptr %210, i32 0, i32 5
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %229, label %192

228:                                              ; preds = %220, %213, %192, %186
  call fastcc void @__locks_insert_block(ptr noundef %115, ptr noundef %1, ptr noundef nonnull @posix_locks_conflict)
  br label %229

229:                                              ; preds = %228, %222
  %230 = phi i32 [ 1, %228 ], [ -35, %222 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %231 = load i16, ptr @blocked_lock_lock, align 4
  %232 = add i16 %231, 1
  store i16 %232, ptr @blocked_lock_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %594

233:                                              ; preds = %110, %80, %77
  %234 = load i32, ptr %16, align 8
  %235 = and i32 %234, 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %594

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.file_lock_context, ptr %9, i32 0, i32 2
  %239 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  br label %240

240:                                              ; preds = %244, %237
  %241 = phi ptr [ %238, %237 ], [ %242, %244 ]
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, %238
  br i1 %243, label %473, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %239, align 4
  %246 = getelementptr i8, ptr %242, i32 32
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %245, %247
  br i1 %248, label %249, label %240

249:                                              ; preds = %244
  %250 = icmp eq ptr %242, %238
  br i1 %250, label %473, label %251

251:                                              ; preds = %453, %249
  %252 = phi ptr [ %457, %453 ], [ %1, %249 ]
  %253 = phi ptr [ %258, %453 ], [ %242, %249 ]
  %254 = phi ptr [ %456, %453 ], [ %61, %249 ]
  %255 = phi ptr [ %455, %453 ], [ null, %249 ]
  %256 = phi i1 [ %454, %453 ], [ false, %249 ]
  %257 = getelementptr i8, ptr %253, i32 -4
  %258 = load ptr, ptr %253, align 4
  %259 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 5
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr i8, ptr %253, i32 32
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %260, %262
  br i1 %263, label %264, label %459

264:                                              ; preds = %251
  %265 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 7
  %266 = load i8, ptr %265, align 4
  %267 = getelementptr i8, ptr %253, i32 40
  %268 = load i8, ptr %267, align 4
  %269 = icmp eq i8 %266, %268
  %270 = getelementptr i8, ptr %253, i32 76
  %271 = load i64, ptr %270, align 8
  %272 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 12
  %273 = load i64, ptr %272, align 8
  br i1 %269, label %274, label %327

274:                                              ; preds = %264
  %275 = add i64 %273, -1
  %276 = icmp slt i64 %271, %275
  br i1 %276, label %453, label %277

277:                                              ; preds = %274
  %278 = getelementptr i8, ptr %253, i32 68
  %279 = load i64, ptr %278, align 8
  %280 = add i64 %279, -1
  %281 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 13
  %282 = load i64, ptr %281, align 8
  %283 = icmp sgt i64 %280, %282
  br i1 %283, label %459, label %284

284:                                              ; preds = %277
  %285 = icmp sgt i64 %279, %273
  br i1 %285, label %286, label %288

286:                                              ; preds = %284
  store i64 %273, ptr %278, align 8
  %287 = load i64, ptr %281, align 8
  br label %290

288:                                              ; preds = %284
  store i64 %279, ptr %272, align 8
  %289 = load i64, ptr %270, align 8
  br label %290

290:                                              ; preds = %288, %286
  %291 = phi i64 [ %282, %288 ], [ %287, %286 ]
  %292 = phi i64 [ %289, %288 ], [ %271, %286 ]
  %293 = icmp slt i64 %292, %291
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i64 %291, ptr %270, align 8
  br label %296

295:                                              ; preds = %290
  store i64 %292, ptr %281, align 8
  br label %296

296:                                              ; preds = %295, %294
  br i1 %256, label %297, label %453

297:                                              ; preds = %296
  %298 = getelementptr i8, ptr %253, i32 8
  %299 = getelementptr i8, ptr %253, i32 12
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %320, label %302

302:                                              ; preds = %297
  %303 = getelementptr i8, ptr %253, i32 48
  %304 = load i32, ptr %303, align 4
  %305 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %304
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, ptrtoint (ptr @file_lock_list to i32)
  %308 = inttoptr i32 %307 to ptr
  call void @_raw_spin_lock(ptr noundef %308) #13
  %309 = load ptr, ptr %299, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %317, label %311

311:                                              ; preds = %302
  %312 = load ptr, ptr %298, align 4
  store volatile ptr %312, ptr %309, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.hlist_node, ptr %312, i32 0, i32 1
  store volatile ptr %309, ptr %315, align 4
  br label %316

316:                                              ; preds = %314, %311
  store ptr null, ptr %298, align 4
  store ptr null, ptr %299, align 4
  br label %317

317:                                              ; preds = %316, %302
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %318 = load i16, ptr %308, align 4
  %319 = add i16 %318, 1
  store i16 %319, ptr %308, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %320

320:                                              ; preds = %317, %297
  %321 = getelementptr i8, ptr %253, i32 4
  %322 = load ptr, ptr %321, align 4
  %323 = load ptr, ptr %253, align 4
  %324 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %322, ptr %324, align 4
  store volatile ptr %323, ptr %322, align 4
  store volatile ptr %253, ptr %253, align 4
  store ptr %253, ptr %321, align 4
  call fastcc void @locks_wake_up_blocks(ptr noundef %257) #13
  %325 = load ptr, ptr %4, align 8
  %326 = getelementptr inbounds %struct.list_head, ptr %325, i32 0, i32 1
  store ptr %253, ptr %326, align 4
  store ptr %325, ptr %253, align 4
  store ptr %4, ptr %321, align 4
  store volatile ptr %253, ptr %4, align 8
  br label %453

327:                                              ; preds = %264
  %328 = icmp slt i64 %271, %273
  br i1 %328, label %453, label %329

329:                                              ; preds = %327
  %330 = getelementptr i8, ptr %253, i32 68
  %331 = load i64, ptr %330, align 8
  %332 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 13
  %333 = load i64, ptr %332, align 8
  %334 = icmp sgt i64 %331, %333
  br i1 %334, label %459, label %335

335:                                              ; preds = %329
  %336 = icmp eq i8 %266, 2
  %337 = select i1 %336, i1 true, i1 %256
  %338 = icmp slt i64 %331, %273
  %339 = select i1 %338, ptr %257, ptr %255
  %340 = icmp sgt i64 %271, %333
  br i1 %340, label %465, label %341

341:                                              ; preds = %335
  br i1 %338, label %453, label %342

342:                                              ; preds = %341
  br i1 %337, label %343, label %374

343:                                              ; preds = %342
  %344 = getelementptr i8, ptr %253, i32 8
  %345 = getelementptr i8, ptr %253, i32 12
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %367, label %348

348:                                              ; preds = %343
  %349 = getelementptr i8, ptr %253, i32 48
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %350
  %352 = load i32, ptr %351, align 4
  %353 = add i32 %352, ptrtoint (ptr @file_lock_list to i32)
  %354 = inttoptr i32 %353 to ptr
  call void @_raw_spin_lock(ptr noundef %354) #13
  %355 = load ptr, ptr %345, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %363, label %357

357:                                              ; preds = %348
  %358 = load ptr, ptr %344, align 4
  store volatile ptr %358, ptr %355, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %362, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.hlist_node, ptr %358, i32 0, i32 1
  store volatile ptr %355, ptr %361, align 4
  br label %362

362:                                              ; preds = %360, %357
  store ptr null, ptr %344, align 4
  store ptr null, ptr %345, align 4
  br label %363

363:                                              ; preds = %362, %348
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %364 = load i16, ptr %354, align 4
  %365 = add i16 %364, 1
  store i16 %365, ptr %354, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %366 = load ptr, ptr %253, align 4
  br label %367

367:                                              ; preds = %363, %343
  %368 = phi ptr [ %258, %343 ], [ %366, %363 ]
  %369 = getelementptr i8, ptr %253, i32 4
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.list_head, ptr %368, i32 0, i32 1
  store ptr %370, ptr %371, align 4
  store volatile ptr %368, ptr %370, align 4
  store volatile ptr %253, ptr %253, align 4
  store ptr %253, ptr %369, align 4
  call fastcc void @locks_wake_up_blocks(ptr noundef %257) #13
  %372 = load ptr, ptr %4, align 8
  %373 = getelementptr inbounds %struct.list_head, ptr %372, i32 0, i32 1
  store ptr %253, ptr %373, align 4
  store ptr %372, ptr %253, align 4
  store ptr %4, ptr %369, align 4
  store volatile ptr %253, ptr %4, align 8
  br label %453

374:                                              ; preds = %342
  %375 = icmp eq ptr %254, null
  br i1 %375, label %594, label %376

376:                                              ; preds = %374
  call void @locks_copy_lock(ptr noundef nonnull %254, ptr noundef %252)
  %377 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 3
  %378 = load volatile ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, %377
  br i1 %379, label %401, label %380

380:                                              ; preds = %376
  call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %381 = getelementptr inbounds %struct.file_lock, ptr %254, i32 0, i32 3
  %382 = load volatile ptr, ptr %377, align 4
  %383 = icmp eq ptr %382, %377
  br i1 %383, label %390, label %384

384:                                              ; preds = %380
  %385 = load ptr, ptr %381, align 4
  %386 = getelementptr inbounds %struct.file_lock, ptr %252, i32 0, i32 3, i32 1
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.list_head, ptr %382, i32 0, i32 1
  store ptr %381, ptr %388, align 4
  store ptr %382, ptr %381, align 4
  store ptr %385, ptr %387, align 4
  %389 = getelementptr inbounds %struct.list_head, ptr %385, i32 0, i32 1
  store ptr %387, ptr %389, align 4
  store volatile ptr %377, ptr %377, align 4
  store ptr %377, ptr %386, align 4
  br label %390

390:                                              ; preds = %384, %380
  %391 = load ptr, ptr %381, align 4
  %392 = icmp eq ptr %391, %381
  br i1 %392, label %398, label %393

393:                                              ; preds = %393, %390
  %394 = phi ptr [ %396, %393 ], [ %391, %390 ]
  %395 = getelementptr i8, ptr %394, i32 -28
  store ptr %254, ptr %395, align 8
  %396 = load ptr, ptr %394, align 4
  %397 = icmp eq ptr %396, %381
  br i1 %397, label %398, label %393

398:                                              ; preds = %393, %390
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %399 = load i16, ptr @blocked_lock_lock, align 4
  %400 = add i16 %399, 1
  store i16 %400, ptr @blocked_lock_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %401

401:                                              ; preds = %398, %376
  %402 = getelementptr inbounds %struct.file_lock, ptr %254, i32 0, i32 1
  %403 = getelementptr %struct.list_head, ptr %253, i32 0, i32 1
  %404 = load ptr, ptr %403, align 4
  store ptr %402, ptr %403, align 4
  store ptr %253, ptr %402, align 4
  %405 = getelementptr inbounds %struct.file_lock, ptr %254, i32 0, i32 1, i32 1
  store ptr %404, ptr %405, align 4
  store volatile ptr %402, ptr %404, align 4
  %406 = call i32 @llvm.read_register.i32(metadata !0) #13
  %407 = inttoptr i32 %406 to ptr
  %408 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %407) #8, !srcloc !12
  %409 = add i32 %408, ptrtoint (ptr @file_lock_list to i32)
  %410 = inttoptr i32 %409 to ptr
  call void @_raw_spin_lock(ptr noundef %410) #13
  %411 = tail call ptr @llvm.thread.pointer() #13
  %412 = getelementptr inbounds %struct.thread_info, ptr %411, i32 0, i32 2
  %413 = load i32, ptr %412, align 8
  %414 = getelementptr inbounds %struct.file_lock, ptr %254, i32 0, i32 9
  store i32 %413, ptr %414, align 4
  %415 = getelementptr inbounds %struct.file_lock, ptr %254, i32 0, i32 2
  %416 = getelementptr inbounds %struct.file_lock_list_struct, ptr %410, i32 0, i32 1
  %417 = load ptr, ptr %416, align 4
  store volatile ptr %417, ptr %415, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %401
  %420 = getelementptr inbounds %struct.hlist_node, ptr %417, i32 0, i32 1
  store volatile ptr %415, ptr %420, align 4
  br label %421

421:                                              ; preds = %419, %401
  store volatile ptr %415, ptr %416, align 4
  %422 = getelementptr inbounds %struct.file_lock, ptr %254, i32 0, i32 2, i32 1
  store volatile ptr %416, ptr %422, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %423 = load i16, ptr %410, align 4
  %424 = add i16 %423, 1
  store i16 %424, ptr %410, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %425 = getelementptr i8, ptr %253, i32 8
  %426 = getelementptr i8, ptr %253, i32 12
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %447, label %429

429:                                              ; preds = %421
  %430 = getelementptr i8, ptr %253, i32 48
  %431 = load i32, ptr %430, align 4
  %432 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %431
  %433 = load i32, ptr %432, align 4
  %434 = add i32 %433, ptrtoint (ptr @file_lock_list to i32)
  %435 = inttoptr i32 %434 to ptr
  call void @_raw_spin_lock(ptr noundef %435) #13
  %436 = load ptr, ptr %426, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %444, label %438

438:                                              ; preds = %429
  %439 = load ptr, ptr %425, align 4
  store volatile ptr %439, ptr %436, align 4
  %440 = icmp eq ptr %439, null
  br i1 %440, label %443, label %441

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.hlist_node, ptr %439, i32 0, i32 1
  store volatile ptr %436, ptr %442, align 4
  br label %443

443:                                              ; preds = %441, %438
  store ptr null, ptr %425, align 4
  store ptr null, ptr %426, align 4
  br label %444

444:                                              ; preds = %443, %429
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %445 = load i16, ptr %435, align 4
  %446 = add i16 %445, 1
  store i16 %446, ptr %435, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %447

447:                                              ; preds = %444, %421
  %448 = load ptr, ptr %403, align 4
  %449 = load ptr, ptr %253, align 4
  %450 = getelementptr inbounds %struct.list_head, ptr %449, i32 0, i32 1
  store ptr %448, ptr %450, align 4
  store volatile ptr %449, ptr %448, align 4
  store volatile ptr %253, ptr %253, align 4
  store ptr %253, ptr %403, align 4
  call fastcc void @locks_wake_up_blocks(ptr noundef %257) #13
  %451 = load ptr, ptr %4, align 8
  %452 = getelementptr inbounds %struct.list_head, ptr %451, i32 0, i32 1
  store ptr %253, ptr %452, align 4
  store ptr %451, ptr %253, align 4
  store ptr %4, ptr %403, align 4
  store volatile ptr %253, ptr %4, align 8
  br label %453

453:                                              ; preds = %447, %367, %341, %327, %320, %296, %274
  %454 = phi i1 [ %256, %274 ], [ true, %320 ], [ %256, %327 ], [ true, %367 ], [ true, %447 ], [ %337, %341 ], [ true, %296 ]
  %455 = phi ptr [ %255, %274 ], [ %255, %320 ], [ %255, %327 ], [ %255, %367 ], [ %339, %447 ], [ %257, %341 ], [ %255, %296 ]
  %456 = phi ptr [ %254, %274 ], [ %254, %320 ], [ %254, %327 ], [ %254, %367 ], [ null, %447 ], [ %254, %341 ], [ %254, %296 ]
  %457 = phi ptr [ %252, %274 ], [ %252, %320 ], [ %252, %327 ], [ %252, %367 ], [ %254, %447 ], [ %252, %341 ], [ %257, %296 ]
  %458 = icmp eq ptr %258, %238
  br i1 %458, label %459, label %251

459:                                              ; preds = %453, %329, %277, %251
  %460 = phi i1 [ %454, %453 ], [ %256, %251 ], [ %256, %329 ], [ %256, %277 ]
  %461 = phi ptr [ %455, %453 ], [ %255, %251 ], [ %255, %329 ], [ %255, %277 ]
  %462 = phi ptr [ %456, %453 ], [ %254, %251 ], [ %254, %329 ], [ %254, %277 ]
  %463 = phi ptr [ %238, %453 ], [ %253, %251 ], [ %253, %329 ], [ %253, %277 ]
  %464 = phi ptr [ %457, %453 ], [ %252, %251 ], [ %252, %329 ], [ %252, %277 ]
  br i1 %460, label %583, label %473

465:                                              ; preds = %335
  %466 = icmp eq ptr %257, null
  br i1 %466, label %471, label %467

467:                                              ; preds = %465
  %468 = icmp ne ptr %339, %257
  %469 = icmp ne ptr %60, null
  %470 = select i1 %468, i1 true, i1 %469
  br i1 %470, label %472, label %594

471:                                              ; preds = %465
  br i1 %337, label %583, label %487

472:                                              ; preds = %467
  br i1 %337, label %544, label %487

473:                                              ; preds = %459, %249, %240
  %474 = phi ptr [ %464, %459 ], [ %1, %249 ], [ %1, %240 ]
  %475 = phi ptr [ %463, %459 ], [ %238, %249 ], [ %238, %240 ]
  %476 = phi ptr [ %462, %459 ], [ %61, %249 ], [ %61, %240 ]
  %477 = phi ptr [ %461, %459 ], [ null, %249 ], [ null, %240 ]
  %478 = getelementptr inbounds %struct.file_lock, ptr %474, i32 0, i32 7
  %479 = load i8, ptr %478, align 4
  %480 = icmp eq i8 %479, 2
  br i1 %480, label %481, label %487

481:                                              ; preds = %473
  %482 = getelementptr inbounds %struct.file_lock, ptr %474, i32 0, i32 6
  %483 = load i32, ptr %482, align 8
  %484 = and i32 %483, 16
  %485 = icmp eq i32 %484, 0
  %486 = select i1 %485, i32 0, i32 -2
  br label %594

487:                                              ; preds = %473, %472, %471
  %488 = phi i1 [ true, %473 ], [ false, %472 ], [ %466, %471 ]
  %489 = phi ptr [ %477, %473 ], [ %339, %472 ], [ %339, %471 ]
  %490 = phi ptr [ null, %473 ], [ %257, %472 ], [ null, %471 ]
  %491 = phi ptr [ %474, %473 ], [ %252, %472 ], [ %252, %471 ]
  %492 = phi ptr [ %475, %473 ], [ %253, %472 ], [ %253, %471 ]
  %493 = phi ptr [ %476, %473 ], [ %254, %472 ], [ %254, %471 ]
  %494 = icmp eq ptr %493, null
  br i1 %494, label %594, label %495

495:                                              ; preds = %487
  call void @locks_copy_lock(ptr noundef nonnull %493, ptr noundef %491)
  %496 = getelementptr inbounds %struct.file_lock, ptr %491, i32 0, i32 3
  %497 = load volatile ptr, ptr %496, align 4
  %498 = icmp eq ptr %497, %496
  br i1 %498, label %520, label %499

499:                                              ; preds = %495
  call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %500 = getelementptr inbounds %struct.file_lock, ptr %493, i32 0, i32 3
  %501 = load volatile ptr, ptr %496, align 4
  %502 = icmp eq ptr %501, %496
  br i1 %502, label %509, label %503

503:                                              ; preds = %499
  %504 = load ptr, ptr %500, align 4
  %505 = getelementptr inbounds %struct.file_lock, ptr %491, i32 0, i32 3, i32 1
  %506 = load ptr, ptr %505, align 4
  %507 = getelementptr inbounds %struct.list_head, ptr %501, i32 0, i32 1
  store ptr %500, ptr %507, align 4
  store ptr %501, ptr %500, align 4
  store ptr %504, ptr %506, align 4
  %508 = getelementptr inbounds %struct.list_head, ptr %504, i32 0, i32 1
  store ptr %506, ptr %508, align 4
  store volatile ptr %496, ptr %496, align 4
  store ptr %496, ptr %505, align 4
  br label %509

509:                                              ; preds = %503, %499
  %510 = load ptr, ptr %500, align 4
  %511 = icmp eq ptr %510, %500
  br i1 %511, label %517, label %512

512:                                              ; preds = %512, %509
  %513 = phi ptr [ %515, %512 ], [ %510, %509 ]
  %514 = getelementptr i8, ptr %513, i32 -28
  store ptr %493, ptr %514, align 8
  %515 = load ptr, ptr %513, align 4
  %516 = icmp eq ptr %515, %500
  br i1 %516, label %517, label %512

517:                                              ; preds = %512, %509
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %518 = load i16, ptr @blocked_lock_lock, align 4
  %519 = add i16 %518, 1
  store i16 %519, ptr @blocked_lock_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %520

520:                                              ; preds = %517, %495
  %521 = getelementptr inbounds %struct.file_lock, ptr %493, i32 0, i32 1
  %522 = getelementptr inbounds %struct.list_head, ptr %492, i32 0, i32 1
  %523 = load ptr, ptr %522, align 4
  store ptr %521, ptr %522, align 4
  store ptr %492, ptr %521, align 4
  %524 = getelementptr inbounds %struct.file_lock, ptr %493, i32 0, i32 1, i32 1
  store ptr %523, ptr %524, align 4
  store volatile ptr %521, ptr %523, align 4
  %525 = call i32 @llvm.read_register.i32(metadata !0) #13
  %526 = inttoptr i32 %525 to ptr
  %527 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %526) #8, !srcloc !12
  %528 = add i32 %527, ptrtoint (ptr @file_lock_list to i32)
  %529 = inttoptr i32 %528 to ptr
  call void @_raw_spin_lock(ptr noundef %529) #13
  %530 = tail call ptr @llvm.thread.pointer() #13
  %531 = getelementptr inbounds %struct.thread_info, ptr %530, i32 0, i32 2
  %532 = load i32, ptr %531, align 8
  %533 = getelementptr inbounds %struct.file_lock, ptr %493, i32 0, i32 9
  store i32 %532, ptr %533, align 4
  %534 = getelementptr inbounds %struct.file_lock, ptr %493, i32 0, i32 2
  %535 = getelementptr inbounds %struct.file_lock_list_struct, ptr %529, i32 0, i32 1
  %536 = load ptr, ptr %535, align 4
  store volatile ptr %536, ptr %534, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %540, label %538

538:                                              ; preds = %520
  %539 = getelementptr inbounds %struct.hlist_node, ptr %536, i32 0, i32 1
  store volatile ptr %534, ptr %539, align 4
  br label %540

540:                                              ; preds = %538, %520
  store volatile ptr %534, ptr %535, align 4
  %541 = getelementptr inbounds %struct.file_lock, ptr %493, i32 0, i32 2, i32 1
  store volatile ptr %535, ptr %541, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %542 = load i16, ptr %529, align 4
  %543 = add i16 %542, 1
  store i16 %543, ptr %529, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br i1 %488, label %583, label %544

544:                                              ; preds = %540, %472
  %545 = phi ptr [ %491, %540 ], [ %252, %472 ]
  %546 = phi ptr [ %493, %540 ], [ %257, %472 ]
  %547 = phi ptr [ null, %540 ], [ %254, %472 ]
  %548 = phi ptr [ %489, %540 ], [ %339, %472 ]
  %549 = phi ptr [ %490, %540 ], [ %257, %472 ]
  %550 = icmp eq ptr %548, %549
  br i1 %550, label %551, label %576

551:                                              ; preds = %544
  call void @locks_copy_lock(ptr noundef %60, ptr noundef nonnull %548)
  %552 = getelementptr inbounds %struct.file_lock, ptr %546, i32 0, i32 1
  %553 = getelementptr inbounds %struct.file_lock, ptr %60, i32 0, i32 1
  %554 = getelementptr inbounds %struct.file_lock, ptr %546, i32 0, i32 1, i32 1
  %555 = load ptr, ptr %554, align 4
  store ptr %553, ptr %554, align 4
  store ptr %552, ptr %553, align 4
  %556 = getelementptr inbounds %struct.file_lock, ptr %60, i32 0, i32 1, i32 1
  store ptr %555, ptr %556, align 8
  store volatile ptr %553, ptr %555, align 4
  %557 = call i32 @llvm.read_register.i32(metadata !0) #13
  %558 = inttoptr i32 %557 to ptr
  %559 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %558) #8, !srcloc !12
  %560 = add i32 %559, ptrtoint (ptr @file_lock_list to i32)
  %561 = inttoptr i32 %560 to ptr
  call void @_raw_spin_lock(ptr noundef %561) #13
  %562 = tail call ptr @llvm.thread.pointer() #13
  %563 = getelementptr inbounds %struct.thread_info, ptr %562, i32 0, i32 2
  %564 = load i32, ptr %563, align 8
  %565 = getelementptr inbounds %struct.file_lock, ptr %60, i32 0, i32 9
  store i32 %564, ptr %565, align 4
  %566 = getelementptr inbounds %struct.file_lock, ptr %60, i32 0, i32 2
  %567 = getelementptr inbounds %struct.file_lock_list_struct, ptr %561, i32 0, i32 1
  %568 = load ptr, ptr %567, align 4
  store volatile ptr %568, ptr %566, align 4
  %569 = icmp eq ptr %568, null
  br i1 %569, label %572, label %570

570:                                              ; preds = %551
  %571 = getelementptr inbounds %struct.hlist_node, ptr %568, i32 0, i32 1
  store volatile ptr %566, ptr %571, align 4
  br label %572

572:                                              ; preds = %570, %551
  store volatile ptr %566, ptr %567, align 4
  %573 = getelementptr inbounds %struct.file_lock, ptr %60, i32 0, i32 2, i32 1
  store volatile ptr %567, ptr %573, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %574 = load i16, ptr %561, align 4
  %575 = add i16 %574, 1
  store i16 %575, ptr %561, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %576

576:                                              ; preds = %572, %544
  %577 = phi ptr [ %60, %572 ], [ %548, %544 ]
  %578 = phi ptr [ null, %572 ], [ %60, %544 ]
  %579 = getelementptr inbounds %struct.file_lock, ptr %545, i32 0, i32 13
  %580 = load i64, ptr %579, align 8
  %581 = add i64 %580, 1
  %582 = getelementptr inbounds %struct.file_lock, ptr %549, i32 0, i32 12
  store i64 %581, ptr %582, align 8
  call fastcc void @locks_wake_up_blocks(ptr noundef nonnull %549)
  br label %583

583:                                              ; preds = %576, %540, %471, %459
  %584 = phi ptr [ %545, %576 ], [ %491, %540 ], [ %464, %459 ], [ %252, %471 ]
  %585 = phi ptr [ %547, %576 ], [ null, %540 ], [ %462, %459 ], [ %254, %471 ]
  %586 = phi ptr [ %577, %576 ], [ %489, %540 ], [ %461, %459 ], [ %339, %471 ]
  %587 = phi ptr [ %578, %576 ], [ %60, %540 ], [ %60, %459 ], [ %60, %471 ]
  %588 = icmp eq ptr %586, null
  br i1 %588, label %594, label %589

589:                                              ; preds = %583
  %590 = getelementptr inbounds %struct.file_lock, ptr %584, i32 0, i32 12
  %591 = load i64, ptr %590, align 8
  %592 = add i64 %591, -1
  %593 = getelementptr inbounds %struct.file_lock, ptr %586, i32 0, i32 13
  store i64 %592, ptr %593, align 8
  call fastcc void @locks_wake_up_blocks(ptr noundef nonnull %586)
  br label %594

594:                                              ; preds = %589, %583, %487, %481, %467, %374, %233, %229, %147
  %595 = phi i32 [ %230, %229 ], [ -11, %147 ], [ 0, %233 ], [ 0, %589 ], [ 0, %583 ], [ -37, %467 ], [ %486, %481 ], [ -37, %487 ], [ -37, %374 ]
  %596 = phi ptr [ %60, %229 ], [ %60, %147 ], [ %60, %233 ], [ %587, %589 ], [ %587, %583 ], [ null, %467 ], [ %60, %481 ], [ %60, %487 ], [ %60, %374 ]
  %597 = phi ptr [ %61, %229 ], [ %61, %147 ], [ %61, %233 ], [ %585, %589 ], [ %585, %583 ], [ %254, %467 ], [ %476, %481 ], [ null, %487 ], [ null, %374 ]
  %598 = phi ptr [ %1, %229 ], [ %1, %147 ], [ %1, %233 ], [ %584, %589 ], [ %584, %583 ], [ %252, %467 ], [ %474, %481 ], [ %491, %487 ], [ %252, %374 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %599 = load i16, ptr %9, align 4
  %600 = add i16 %599, 1
  store i16 %600, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %601 = load volatile i32, ptr @file_rwsem, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %614, !prof !10

603:                                              ; preds = %594
  %604 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %605 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %606 = ptrtoint ptr %605 to i32
  %607 = call i32 @llvm.read_register.i32(metadata !0) #13
  %608 = inttoptr i32 %607 to ptr
  %609 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %608) #8, !srcloc !12
  %610 = add i32 %609, %606
  %611 = inttoptr i32 %610 to ptr
  %612 = load i32, ptr %611, align 4
  %613 = add i32 %612, -1
  store i32 %613, ptr %611, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %604) #13, !srcloc !29
  br label %626

614:                                              ; preds = %594
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %615 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %616 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %617 = ptrtoint ptr %616 to i32
  %618 = call i32 @llvm.read_register.i32(metadata !0) #13
  %619 = inttoptr i32 %618 to ptr
  %620 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %619) #8, !srcloc !12
  %621 = add i32 %620, %617
  %622 = inttoptr i32 %621 to ptr
  %623 = load i32, ptr %622, align 4
  %624 = add i32 %623, -1
  store i32 %624, ptr %622, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %615) #13, !srcloc !29
  %625 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %626

626:                                              ; preds = %614, %603
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  %627 = icmp eq ptr %597, null
  br i1 %627, label %677, label %628

628:                                              ; preds = %626
  %629 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 10, i32 1
  %630 = load volatile ptr, ptr %629, align 4
  %631 = icmp eq ptr %630, %629
  br i1 %631, label %633, label %632, !prof !10

632:                                              ; preds = %628
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 1
  %635 = load volatile ptr, ptr %634, align 4
  %636 = icmp eq ptr %635, %634
  br i1 %636, label %638, label %637, !prof !10

637:                                              ; preds = %633
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 3
  %640 = load volatile ptr, ptr %639, align 4
  %641 = icmp eq ptr %640, %639
  br i1 %641, label %643, label %642, !prof !10

642:                                              ; preds = %638
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

643:                                              ; preds = %638
  %644 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 4
  %645 = load volatile ptr, ptr %644, align 4
  %646 = icmp eq ptr %645, %644
  br i1 %646, label %648, label %647, !prof !10

647:                                              ; preds = %643
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

648:                                              ; preds = %643
  %649 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 2, i32 1
  %650 = load ptr, ptr %649, align 4
  %651 = icmp eq ptr %650, null
  br i1 %651, label %653, label %652, !prof !10

652:                                              ; preds = %648
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

653:                                              ; preds = %648
  %654 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 17
  %655 = load ptr, ptr %654, align 4
  %656 = icmp eq ptr %655, null
  br i1 %656, label %663, label %657

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.file_lock_operations, ptr %655, i32 0, i32 1
  %659 = load ptr, ptr %658, align 4
  %660 = icmp eq ptr %659, null
  br i1 %660, label %662, label %661

661:                                              ; preds = %657
  call void %659(ptr noundef nonnull %597) #13
  br label %662

662:                                              ; preds = %661, %657
  store ptr null, ptr %654, align 4
  br label %663

663:                                              ; preds = %662, %653
  %664 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 18
  %665 = load ptr, ptr %664, align 8
  %666 = icmp eq ptr %665, null
  br i1 %666, label %675, label %667

667:                                              ; preds = %663
  %668 = getelementptr inbounds %struct.lock_manager_operations, ptr %665, i32 0, i32 1
  %669 = load ptr, ptr %668, align 4
  %670 = icmp eq ptr %669, null
  br i1 %670, label %674, label %671

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.file_lock, ptr %597, i32 0, i32 5
  %673 = load ptr, ptr %672, align 4
  call void %669(ptr noundef %673) #13
  store ptr null, ptr %672, align 4
  br label %674

674:                                              ; preds = %671, %667
  store ptr null, ptr %664, align 8
  br label %675

675:                                              ; preds = %674, %663
  %676 = load ptr, ptr @filelock_cache, align 4
  call void @kmem_cache_free(ptr noundef %676, ptr noundef nonnull %597) #13
  br label %677

677:                                              ; preds = %675, %626
  %678 = icmp eq ptr %596, null
  br i1 %678, label %728, label %679

679:                                              ; preds = %677
  %680 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 10, i32 1
  %681 = load volatile ptr, ptr %680, align 4
  %682 = icmp eq ptr %681, %680
  br i1 %682, label %684, label %683, !prof !10

683:                                              ; preds = %679
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

684:                                              ; preds = %679
  %685 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 1
  %686 = load volatile ptr, ptr %685, align 4
  %687 = icmp eq ptr %686, %685
  br i1 %687, label %689, label %688, !prof !10

688:                                              ; preds = %684
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

689:                                              ; preds = %684
  %690 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 3
  %691 = load volatile ptr, ptr %690, align 4
  %692 = icmp eq ptr %691, %690
  br i1 %692, label %694, label %693, !prof !10

693:                                              ; preds = %689
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 4
  %696 = load volatile ptr, ptr %695, align 4
  %697 = icmp eq ptr %696, %695
  br i1 %697, label %699, label %698, !prof !10

698:                                              ; preds = %694
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

699:                                              ; preds = %694
  %700 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 2, i32 1
  %701 = load ptr, ptr %700, align 4
  %702 = icmp eq ptr %701, null
  br i1 %702, label %704, label %703, !prof !10

703:                                              ; preds = %699
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

704:                                              ; preds = %699
  %705 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 17
  %706 = load ptr, ptr %705, align 4
  %707 = icmp eq ptr %706, null
  br i1 %707, label %714, label %708

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.file_lock_operations, ptr %706, i32 0, i32 1
  %710 = load ptr, ptr %709, align 4
  %711 = icmp eq ptr %710, null
  br i1 %711, label %713, label %712

712:                                              ; preds = %708
  call void %710(ptr noundef nonnull %596) #13
  br label %713

713:                                              ; preds = %712, %708
  store ptr null, ptr %705, align 4
  br label %714

714:                                              ; preds = %713, %704
  %715 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 18
  %716 = load ptr, ptr %715, align 8
  %717 = icmp eq ptr %716, null
  br i1 %717, label %726, label %718

718:                                              ; preds = %714
  %719 = getelementptr inbounds %struct.lock_manager_operations, ptr %716, i32 0, i32 1
  %720 = load ptr, ptr %719, align 4
  %721 = icmp eq ptr %720, null
  br i1 %721, label %725, label %722

722:                                              ; preds = %718
  %723 = getelementptr inbounds %struct.file_lock, ptr %596, i32 0, i32 5
  %724 = load ptr, ptr %723, align 4
  call void %720(ptr noundef %724) #13
  store ptr null, ptr %723, align 4
  br label %725

725:                                              ; preds = %722, %718
  store ptr null, ptr %715, align 8
  br label %726

726:                                              ; preds = %725, %714
  %727 = load ptr, ptr @filelock_cache, align 4
  call void @kmem_cache_free(ptr noundef %727, ptr noundef nonnull %596) #13
  br label %728

728:                                              ; preds = %726, %677
  call fastcc void @locks_dispose_list(ptr noundef nonnull %4)
  %729 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_posix_lock_inode, i32 0, i32 1), align 4
  %730 = icmp sgt i32 %729, 0
  br i1 %730, label %731, label %754

731:                                              ; preds = %728
  %732 = tail call ptr @llvm.thread.pointer() #13
  %733 = getelementptr inbounds %struct.thread_info, ptr %732, i32 0, i32 2
  %734 = load i32, ptr %733, align 8
  %735 = lshr i32 %734, 5
  %736 = getelementptr i32, ptr @__cpu_online_mask, i32 %735
  %737 = load volatile i32, ptr %736, align 4
  %738 = and i32 %734, 31
  %739 = shl nuw i32 1, %738
  %740 = and i32 %739, %737
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %754, label %742

742:                                              ; preds = %731
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %743 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_posix_lock_inode, i32 0, i32 7), align 4
  %744 = icmp eq ptr %743, null
  br i1 %744, label %753, label %745

745:                                              ; preds = %745, %742
  %746 = phi ptr [ %750, %745 ], [ %743, %742 ]
  %747 = load volatile ptr, ptr %746, align 4
  %748 = getelementptr inbounds %struct.tracepoint_func, ptr %746, i32 0, i32 1
  %749 = load ptr, ptr %748, align 4
  call void %747(ptr noundef %749, ptr noundef %0, ptr noundef %598, i32 noundef %595) #13
  %750 = getelementptr %struct.tracepoint_func, ptr %746, i32 1
  %751 = load ptr, ptr %750, align 4
  %752 = icmp eq ptr %751, null
  br i1 %752, label %753, label %745

753:                                              ; preds = %745, %742
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %754

754:                                              ; preds = %753, %731, %728, %11
  %755 = phi i32 [ %14, %11 ], [ %595, %728 ], [ %595, %731 ], [ %595, %753 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %755
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lease_modify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  store i8 %6, ptr %7, align 4
  switch i32 %1, label %19 [
    i32 2, label %11
    i32 0, label %8
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  br label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -513
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 6
  %18 = and i32 %16, -257
  store i32 %18, ptr %17, align 8
  br label %19

19:                                               ; preds = %15, %5
  tail call fastcc void @locks_wake_up_blocks(ptr noundef %0)
  %20 = icmp eq i32 %1, 2
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  tail call void @f_delown(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 11, i32 5
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 14
  %27 = tail call i32 @fasync_helper(i32 noundef 0, ptr noundef %25, i32 noundef 0, ptr noundef %26) #13
  %28 = load ptr, ptr %26, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %28) #14
  store ptr null, ptr %26, align 8
  br label %32

32:                                               ; preds = %30, %21
  tail call fastcc void @locks_delete_lock_ctx(ptr noundef %0, ptr noundef %2)
  br label %33

33:                                               ; preds = %32, %19, %3
  %34 = phi i32 [ 0, %32 ], [ 0, %19 ], [ -22, %3 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_wake_up_blocks(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %6 = load volatile ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %39, label %8

8:                                                ; preds = %36, %5
  %9 = phi ptr [ %37, %36 ], [ %6, %5 ]
  %10 = getelementptr i8, ptr %9, i32 -28
  %11 = getelementptr i8, ptr %9, i32 -16
  %12 = getelementptr i8, ptr %9, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 4
  store volatile ptr %16, ptr %13, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  store volatile ptr %13, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %15
  store ptr null, ptr %11, align 4
  store ptr null, ptr %12, align 4
  br label %21

21:                                               ; preds = %20, %8
  %22 = getelementptr i8, ptr %9, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %22, align 4
  %26 = getelementptr i8, ptr %9, i32 76
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.lock_manager_operations, ptr %27, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %10) #13
  br label %36

34:                                               ; preds = %29, %21
  %35 = getelementptr i8, ptr %9, i32 28
  tail call void @__wake_up(ptr noundef %35, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %36

36:                                               ; preds = %34, %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  store volatile ptr null, ptr %10, align 8
  %37 = load volatile ptr, ptr %2, align 4
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %39, label %8

39:                                               ; preds = %36, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %40 = load i16, ptr @blocked_lock_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @blocked_lock_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %42

42:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f_delown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_delete_lock_ctx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @file_lock_list to i32)
  %13 = inttoptr i32 %12 to ptr
  tail call void @_raw_spin_lock(ptr noundef %13) #13
  %14 = load ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %3, align 4
  store volatile ptr %17, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  store volatile ptr %14, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  store ptr null, ptr %3, align 4
  store ptr null, ptr %4, align 4
  br label %22

22:                                               ; preds = %21, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %23 = load i16, ptr %13, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %25

25:                                               ; preds = %22, %2
  %26 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %27, align 4
  tail call fastcc void @locks_wake_up_blocks(ptr noundef %0) #13
  %31 = icmp eq ptr %1, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %26, ptr %34, align 4
  store ptr %33, ptr %26, align 4
  store ptr %1, ptr %27, align 4
  store volatile ptr %26, ptr %1, align 4
  br label %82

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 10, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %40, label %39, !prof !10

39:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

40:                                               ; preds = %35
  %41 = load volatile ptr, ptr %26, align 4
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %44, label %43, !prof !10

43:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 3
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %49, label %48, !prof !10

48:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 4
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %54, label %53, !prof !10

53:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

54:                                               ; preds = %49
  %55 = load ptr, ptr %4, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !10

57:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.file_lock_operations, ptr %60, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void %64(ptr noundef %0) #13
  br label %67

67:                                               ; preds = %66, %62
  store ptr null, ptr %59, align 4
  br label %68

68:                                               ; preds = %67, %58
  %69 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 18
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.lock_manager_operations, ptr %70, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  tail call void %74(ptr noundef %78) #13
  store ptr null, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %72
  store ptr null, ptr %69, align 8
  br label %80

80:                                               ; preds = %79, %68
  %81 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %81, ptr noundef %0) #13
  br label %82

82:                                               ; preds = %80, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__break_lease(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = and i32 %1, 3
  %7 = icmp eq i32 %6, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  %9 = xor i1 %7, true
  %10 = zext i1 %9 to i32
  %11 = call fastcc ptr @lease_alloc(ptr noundef null, i32 noundef %10)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = ptrtoint ptr %11 to i32
  br label %435

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 6
  store i32 %2, ptr %16, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %18 = load volatile ptr, ptr %17, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i1, ptr @__break_lease.__already_done, align 1
  br i1 %21, label %385, label %22, !prof !10

22:                                               ; preds = %20
  store i1 true, ptr @__break_lease.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1447, i32 noundef 9, ptr noundef null) #13
  br label %385

23:                                               ; preds = %15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %24 = load volatile i32, ptr @file_rwsem, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37, !prof !10

26:                                               ; preds = %23
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %28 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = inttoptr i32 %30 to ptr
  %32 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #8, !srcloc !12
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #13, !srcloc !29
  br label %39

37:                                               ; preds = %23
  %38 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %39

39:                                               ; preds = %37, %26
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %18) #13
  call fastcc void @time_out_leases(ptr noundef %0, ptr noundef nonnull %4)
  %40 = call fastcc zeroext i1 @any_leases_conflict(ptr noundef %0, ptr noundef %11)
  br i1 %40, label %41, label %355

41:                                               ; preds = %39
  %42 = load i32, ptr @lease_break_time, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = mul i32 %42, 100
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 1, i32 %47
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i32 [ 0, %41 ], [ %49, %44 ]
  %52 = getelementptr inbounds %struct.file_lock_context, ptr %18, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %167, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 7
  br label %57

57:                                               ; preds = %165, %55
  %58 = phi ptr [ %53, %55 ], [ %60, %165 ]
  %59 = getelementptr i8, ptr %58, i32 -4
  %60 = load ptr, ptr %58, align 4
  %61 = getelementptr i8, ptr %58, i32 100
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.lock_manager_operations, ptr %62, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = call zeroext i1 %64(ptr noundef %59) #13
  br i1 %67, label %165, label %68

68:                                               ; preds = %66, %57
  %69 = load i32, ptr %16, align 8
  %70 = getelementptr i8, ptr %58, i32 36
  %71 = load i32, ptr %70, align 8
  %72 = xor i32 %71, %69
  %73 = and i32 %72, 2048
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = and i32 %69, 4
  %77 = icmp eq i32 %76, 0
  %78 = and i32 %71, 32
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = getelementptr i8, ptr %58, i32 40
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %56, align 4
  %87 = icmp eq i8 %86, 1
  br label %88

88:                                               ; preds = %85, %81, %75, %68
  %89 = phi i1 [ false, %68 ], [ false, %75 ], [ true, %81 ], [ %87, %85 ]
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = tail call ptr @llvm.thread.pointer() #13
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %92
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %104 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 7), align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %106, %103
  %107 = phi ptr [ %111, %106 ], [ %104, %103 ]
  %108 = load volatile ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.tracepoint_func, ptr %107, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  call void %108(ptr noundef %110, i1 noundef zeroext %89, ptr noundef %59, ptr noundef %11) #13
  %111 = getelementptr %struct.tracepoint_func, ptr %107, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %106

114:                                              ; preds = %106, %103
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  br i1 %89, label %116, label %165

115:                                              ; preds = %92, %88
  br i1 %89, label %116, label %165

116:                                              ; preds = %115, %114
  %117 = load i32, ptr %70, align 8
  br i1 %7, label %124, label %118

118:                                              ; preds = %116
  %119 = and i32 %117, 512
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %118
  %122 = or i32 %117, 512
  store i32 %122, ptr %70, align 8
  %123 = getelementptr i8, ptr %58, i32 88
  store i32 %51, ptr %123, align 4
  br label %130

124:                                              ; preds = %116
  %125 = and i32 %117, 768
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = or i32 %117, 256
  store i32 %128, ptr %70, align 8
  %129 = getelementptr i8, ptr %58, i32 92
  store i32 %51, ptr %129, align 8
  br label %130

130:                                              ; preds = %127, %121
  %131 = load ptr, ptr %61, align 8
  %132 = getelementptr inbounds %struct.lock_manager_operations, ptr %131, i32 0, i32 4
  %133 = load ptr, ptr %132, align 4
  %134 = call zeroext i1 %133(ptr noundef %59) #13
  br i1 %134, label %135, label %165

135:                                              ; preds = %130
  %136 = getelementptr i8, ptr %58, i32 8
  %137 = getelementptr i8, ptr %58, i32 12
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %158, label %140

140:                                              ; preds = %135
  %141 = getelementptr i8, ptr %58, i32 48
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, ptrtoint (ptr @file_lock_list to i32)
  %146 = inttoptr i32 %145 to ptr
  call void @_raw_spin_lock(ptr noundef %146) #13
  %147 = load ptr, ptr %137, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %140
  %150 = load ptr, ptr %136, align 4
  store volatile ptr %150, ptr %147, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.hlist_node, ptr %150, i32 0, i32 1
  store volatile ptr %147, ptr %153, align 4
  br label %154

154:                                              ; preds = %152, %149
  store ptr null, ptr %136, align 4
  store ptr null, ptr %137, align 4
  br label %155

155:                                              ; preds = %154, %140
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %156 = load i16, ptr %146, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %146, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %158

158:                                              ; preds = %155, %135
  %159 = getelementptr i8, ptr %58, i32 4
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %58, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  store ptr %160, ptr %162, align 4
  store volatile ptr %161, ptr %160, align 4
  store volatile ptr %58, ptr %58, align 4
  store ptr %58, ptr %159, align 4
  call fastcc void @locks_wake_up_blocks(ptr noundef %59) #13
  %163 = load ptr, ptr %4, align 8
  %164 = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  store ptr %58, ptr %164, align 4
  store ptr %163, ptr %58, align 4
  store ptr %4, ptr %159, align 4
  store volatile ptr %58, ptr %4, align 8
  br label %165

165:                                              ; preds = %158, %130, %124, %118, %115, %114, %66
  %166 = icmp eq ptr %60, %52
  br i1 %166, label %167, label %57

167:                                              ; preds = %165, %50
  %168 = load volatile ptr, ptr %52, align 4
  %169 = icmp eq ptr %168, %52
  br i1 %169, label %355, label %170

170:                                              ; preds = %167
  %171 = and i32 %1, 2048
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 4
  %175 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 10
  br label %202

176:                                              ; preds = %170
  %177 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_noblock, i32 0, i32 1), align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %355

179:                                              ; preds = %176
  %180 = tail call ptr @llvm.thread.pointer() #13
  %181 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 8
  %183 = lshr i32 %182, 5
  %184 = getelementptr i32, ptr @__cpu_online_mask, i32 %183
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %182, 31
  %187 = shl nuw i32 1, %186
  %188 = and i32 %187, %185
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %355, label %190

190:                                              ; preds = %179
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  %191 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_noblock, i32 0, i32 7), align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %193, %190
  %194 = phi ptr [ %198, %193 ], [ %191, %190 ]
  %195 = load volatile ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.tracepoint_func, ptr %194, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  call void %195(ptr noundef %197, ptr noundef %0, ptr noundef %11) #13
  %198 = getelementptr %struct.tracepoint_func, ptr %194, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %193

201:                                              ; preds = %193, %190
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br label %355

202:                                              ; preds = %353, %173
  %203 = phi ptr [ %354, %353 ], [ %168, %173 ]
  %204 = getelementptr i8, ptr %203, i32 -4
  %205 = getelementptr i8, ptr %203, i32 88
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %202
  %209 = load volatile i32, ptr @jiffies, align 64
  %210 = sub i32 %206, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %202
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i32 [ 1, %212 ], [ %210, %208 ]
  call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  call fastcc void @__locks_insert_block(ptr noundef %204, ptr noundef %11, ptr noundef nonnull @leases_conflict) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %215 = load i16, ptr @blocked_lock_lock, align 4
  %216 = add i16 %215, 1
  store i16 %216, ptr @blocked_lock_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %217 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_block, i32 0, i32 1), align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %242

219:                                              ; preds = %213
  %220 = tail call ptr @llvm.thread.pointer() #13
  %221 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 8
  %223 = lshr i32 %222, 5
  %224 = getelementptr i32, ptr @__cpu_online_mask, i32 %223
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %222, 31
  %227 = shl nuw i32 1, %226
  %228 = and i32 %227, %225
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %242, label %230

230:                                              ; preds = %219
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  %231 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_block, i32 0, i32 7), align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %241, label %233

233:                                              ; preds = %233, %230
  %234 = phi ptr [ %238, %233 ], [ %231, %230 ]
  %235 = load volatile ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.tracepoint_func, ptr %234, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  call void %235(ptr noundef %237, ptr noundef %0, ptr noundef %11) #13
  %238 = getelementptr %struct.tracepoint_func, ptr %234, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %233

241:                                              ; preds = %233, %230
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  br label %242

242:                                              ; preds = %241, %219, %213
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %243 = load i16, ptr %18, align 4
  %244 = add i16 %243, 1
  store i16 %244, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %245 = load volatile i32, ptr @file_rwsem, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %258, !prof !10

247:                                              ; preds = %242
  %248 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %249 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %250 = ptrtoint ptr %249 to i32
  %251 = call i32 @llvm.read_register.i32(metadata !0) #13
  %252 = inttoptr i32 %251 to ptr
  %253 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %252) #8, !srcloc !12
  %254 = add i32 %253, %250
  %255 = inttoptr i32 %254 to ptr
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, -1
  store i32 %257, ptr %255, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %248) #13, !srcloc !29
  br label %270

258:                                              ; preds = %242
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %259 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %260 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %261 = ptrtoint ptr %260 to i32
  %262 = call i32 @llvm.read_register.i32(metadata !0) #13
  %263 = inttoptr i32 %262 to ptr
  %264 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %263) #8, !srcloc !12
  %265 = add i32 %264, %261
  %266 = inttoptr i32 %265 to ptr
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, -1
  store i32 %268, ptr %266, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %259) #13, !srcloc !29
  %269 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %270

270:                                              ; preds = %258, %247
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @locks_dispose_list(ptr noundef nonnull %4)
  %271 = load volatile ptr, ptr %174, align 4
  %272 = icmp eq ptr %271, %174
  br i1 %272, label %302, label %273

273:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #13
  %274 = call i32 @prepare_to_wait_event(ptr noundef %175, ptr noundef nonnull %5, i32 noundef 1) #13
  %275 = load volatile ptr, ptr %174, align 4
  %276 = icmp eq ptr %275, %174
  %277 = xor i1 %276, true
  %278 = icmp ne i32 %214, 0
  %279 = select i1 %277, i1 true, i1 %278
  %280 = select i1 %279, i32 %214, i32 1
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %276, i1 true, i1 %281
  br i1 %282, label %298, label %283

283:                                              ; preds = %287, %273
  %284 = phi i32 [ %295, %287 ], [ %280, %273 ]
  %285 = phi i32 [ %289, %287 ], [ %274, %273 ]
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %283
  %288 = call i32 @schedule_timeout(i32 noundef %284) #13
  %289 = call i32 @prepare_to_wait_event(ptr noundef %175, ptr noundef nonnull %5, i32 noundef 1) #13
  %290 = load volatile ptr, ptr %174, align 4
  %291 = icmp eq ptr %290, %174
  %292 = xor i1 %291, true
  %293 = icmp ne i32 %288, 0
  %294 = select i1 %292, i1 true, i1 %293
  %295 = select i1 %294, i32 %288, i32 1
  %296 = icmp eq i32 %295, 0
  %297 = select i1 %291, i1 true, i1 %296
  br i1 %297, label %298, label %283

298:                                              ; preds = %287, %273
  %299 = phi i32 [ %280, %273 ], [ %295, %287 ]
  call void @finish_wait(ptr noundef %175, ptr noundef nonnull %5) #13
  br label %300

300:                                              ; preds = %298, %283
  %301 = phi i32 [ %299, %298 ], [ %285, %283 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  br label %302

302:                                              ; preds = %300, %270
  %303 = phi i32 [ %214, %270 ], [ %301, %300 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %304 = load volatile i32, ptr @file_rwsem, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %317, !prof !10

306:                                              ; preds = %302
  %307 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %308 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %309 = ptrtoint ptr %308 to i32
  %310 = call i32 @llvm.read_register.i32(metadata !0) #13
  %311 = inttoptr i32 %310 to ptr
  %312 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %311) #8, !srcloc !12
  %313 = add i32 %312, %309
  %314 = inttoptr i32 %313 to ptr
  %315 = load i32, ptr %314, align 4
  %316 = add i32 %315, 1
  store i32 %316, ptr %314, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %307) #13, !srcloc !29
  br label %319

317:                                              ; preds = %302
  %318 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %319

319:                                              ; preds = %317, %306
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %18) #13
  %320 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_unblock, i32 0, i32 1), align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %345

322:                                              ; preds = %319
  %323 = tail call ptr @llvm.thread.pointer() #13
  %324 = getelementptr inbounds %struct.thread_info, ptr %323, i32 0, i32 2
  %325 = load i32, ptr %324, align 8
  %326 = lshr i32 %325, 5
  %327 = getelementptr i32, ptr @__cpu_online_mask, i32 %326
  %328 = load volatile i32, ptr %327, align 4
  %329 = and i32 %325, 31
  %330 = shl nuw i32 1, %329
  %331 = and i32 %330, %328
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %345, label %333

333:                                              ; preds = %322
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !43
  %334 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_break_lease_unblock, i32 0, i32 7), align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %344, label %336

336:                                              ; preds = %336, %333
  %337 = phi ptr [ %341, %336 ], [ %334, %333 ]
  %338 = load volatile ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.tracepoint_func, ptr %337, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  call void %338(ptr noundef %340, ptr noundef %0, ptr noundef %11) #13
  %341 = getelementptr %struct.tracepoint_func, ptr %337, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %336

344:                                              ; preds = %336, %333
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !44
  br label %345

345:                                              ; preds = %344, %322, %319
  %346 = call i32 @locks_delete_block(ptr noundef %11)
  %347 = icmp sgt i32 %303, -1
  br i1 %347, label %348, label %355

348:                                              ; preds = %345
  %349 = icmp eq i32 %303, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %348
  call fastcc void @time_out_leases(ptr noundef %0, ptr noundef nonnull %4)
  br label %351

351:                                              ; preds = %350, %348
  %352 = call fastcc zeroext i1 @any_leases_conflict(ptr noundef %0, ptr noundef %11)
  br i1 %352, label %353, label %355

353:                                              ; preds = %351
  %354 = load ptr, ptr %52, align 4
  br label %202

355:                                              ; preds = %351, %345, %201, %179, %176, %167, %39
  %356 = phi i32 [ 0, %167 ], [ 0, %39 ], [ -11, %176 ], [ -11, %179 ], [ -11, %201 ], [ 0, %351 ], [ %303, %345 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %357 = load i16, ptr %18, align 4
  %358 = add i16 %357, 1
  store i16 %358, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %359 = load volatile i32, ptr @file_rwsem, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %372, !prof !10

361:                                              ; preds = %355
  %362 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %363 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %364 = ptrtoint ptr %363 to i32
  %365 = call i32 @llvm.read_register.i32(metadata !0) #13
  %366 = inttoptr i32 %365 to ptr
  %367 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %366) #8, !srcloc !12
  %368 = add i32 %367, %364
  %369 = inttoptr i32 %368 to ptr
  %370 = load i32, ptr %369, align 4
  %371 = add i32 %370, -1
  store i32 %371, ptr %369, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %362) #13, !srcloc !29
  br label %384

372:                                              ; preds = %355
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %373 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %374 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %375 = ptrtoint ptr %374 to i32
  %376 = call i32 @llvm.read_register.i32(metadata !0) #13
  %377 = inttoptr i32 %376 to ptr
  %378 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %377) #8, !srcloc !12
  %379 = add i32 %378, %375
  %380 = inttoptr i32 %379 to ptr
  %381 = load i32, ptr %380, align 4
  %382 = add i32 %381, -1
  store i32 %382, ptr %380, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %373) #13, !srcloc !29
  %383 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %384

384:                                              ; preds = %372, %361
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @locks_dispose_list(ptr noundef nonnull %4)
  br label %385

385:                                              ; preds = %384, %22, %20
  %386 = phi i32 [ %356, %384 ], [ 0, %22 ], [ 0, %20 ]
  %387 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 10, i32 1
  %388 = load volatile ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, %387
  br i1 %389, label %391, label %390, !prof !10

390:                                              ; preds = %385
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 1
  %393 = load volatile ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, %392
  br i1 %394, label %396, label %395, !prof !10

395:                                              ; preds = %391
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 3
  %398 = load volatile ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, %397
  br i1 %399, label %401, label %400, !prof !10

400:                                              ; preds = %396
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 4
  %403 = load volatile ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, %402
  br i1 %404, label %406, label %405, !prof !10

405:                                              ; preds = %401
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 2, i32 1
  %408 = load ptr, ptr %407, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %411, label %410, !prof !10

410:                                              ; preds = %406
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

411:                                              ; preds = %406
  %412 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 17
  %413 = load ptr, ptr %412, align 4
  %414 = icmp eq ptr %413, null
  br i1 %414, label %421, label %415

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.file_lock_operations, ptr %413, i32 0, i32 1
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419

419:                                              ; preds = %415
  call void %417(ptr noundef %11) #13
  br label %420

420:                                              ; preds = %419, %415
  store ptr null, ptr %412, align 4
  br label %421

421:                                              ; preds = %420, %411
  %422 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 18
  %423 = load ptr, ptr %422, align 8
  %424 = icmp eq ptr %423, null
  br i1 %424, label %433, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.lock_manager_operations, ptr %423, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %432, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.file_lock, ptr %11, i32 0, i32 5
  %431 = load ptr, ptr %430, align 4
  call void %427(ptr noundef %431) #13
  store ptr null, ptr %430, align 4
  br label %432

432:                                              ; preds = %429, %425
  store ptr null, ptr %422, align 8
  br label %433

433:                                              ; preds = %432, %421
  %434 = load ptr, ptr @filelock_cache, align 4
  call void @kmem_cache_free(ptr noundef %434, ptr noundef %11) #13
  br label %435

435:                                              ; preds = %433, %13
  %436 = phi i32 [ %14, %13 ], [ %386, %433 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %436
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lease_alloc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @filelock_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 2
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 2, i32 1
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 4
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 4, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %16 = icmp ult i32 %1, 3
  br i1 %16, label %17, label %31

17:                                               ; preds = %6
  %18 = trunc i32 %1 to i8
  %19 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 7
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 5
  store ptr %0, ptr %20, align 4
  %21 = tail call ptr @llvm.thread.pointer() #13
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 53
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 8
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 11
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 6
  store i32 32, ptr %26, align 8
  %27 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 12
  store i64 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 13
  store i64 9223372036854775807, ptr %28, align 8
  %29 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 17
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 18
  store ptr @lease_manager_ops, ptr %30, align 8
  br label %76

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 10, i32 1
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

36:                                               ; preds = %31
  %37 = load volatile ptr, ptr %9, align 4
  %38 = icmp eq ptr %37, %9
  br i1 %38, label %40, label %39, !prof !10

39:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

40:                                               ; preds = %36
  %41 = load volatile ptr, ptr %11, align 4
  %42 = icmp eq ptr %41, %11
  br i1 %42, label %44, label %43, !prof !10

43:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

44:                                               ; preds = %40
  %45 = load volatile ptr, ptr %13, align 4
  %46 = icmp eq ptr %45, %13
  br i1 %46, label %48, label %47, !prof !10

47:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

48:                                               ; preds = %44
  %49 = load ptr, ptr %8, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !10

51:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.file_lock_operations, ptr %54, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void %58(ptr noundef nonnull %4) #13
  br label %61

61:                                               ; preds = %60, %56
  store ptr null, ptr %53, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 18
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.lock_manager_operations, ptr %64, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  tail call void %68(ptr noundef %72) #13
  store ptr null, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %66
  store ptr null, ptr %63, align 8
  br label %74

74:                                               ; preds = %73, %62
  %75 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %75, ptr noundef nonnull %4) #13
  br label %76

76:                                               ; preds = %74, %17, %2
  %77 = phi ptr [ inttoptr (i32 -22 to ptr), %74 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %4, %17 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @time_out_leases(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_lock_context, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %76, label %8

8:                                                ; preds = %74, %2
  %9 = phi ptr [ %11, %74 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load ptr, ptr %9, align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_time_out_leases, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = tail call ptr @llvm.thread.pointer() #13
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  %26 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_time_out_leases, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %33, %28 ], [ %26, %25 ]
  %30 = load volatile ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tracepoint_func, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %30(ptr noundef %32, ptr noundef %0, ptr noundef %10) #13
  %33 = getelementptr %struct.tracepoint_func, ptr %29, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  br label %37

37:                                               ; preds = %36, %14, %8
  %38 = getelementptr i8, ptr %9, i32 92
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = sub i32 %39, %42
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %9, i32 40
  store i8 0, ptr %46, align 4
  %47 = getelementptr i8, ptr %9, i32 36
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, -257
  store i32 %49, ptr %47, align 8
  tail call fastcc void @locks_wake_up_blocks(ptr noundef %10) #13
  br label %50

50:                                               ; preds = %45, %41, %37
  %51 = getelementptr i8, ptr %9, i32 88
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = sub i32 %52, %55
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %9, i32 40
  store i8 2, ptr %59, align 4
  %60 = getelementptr i8, ptr %9, i32 36
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, -769
  store i32 %62, ptr %60, align 8
  tail call fastcc void @locks_wake_up_blocks(ptr noundef %10) #13
  %63 = getelementptr i8, ptr %9, i32 64
  %64 = load ptr, ptr %63, align 4
  tail call void @f_delown(ptr noundef %64) #13
  %65 = getelementptr inbounds %struct.file, ptr %64, i32 0, i32 11, i32 5
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr i8, ptr %9, i32 84
  %68 = tail call i32 @fasync_helper(i32 noundef 0, ptr noundef %66, i32 noundef 0, ptr noundef %67) #13
  %69 = load ptr, ptr %67, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %58
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %69) #14
  store ptr null, ptr %67, align 8
  br label %73

73:                                               ; preds = %71, %58
  tail call fastcc void @locks_delete_lock_ctx(ptr noundef %10, ptr noundef %1) #13
  br label %74

74:                                               ; preds = %73, %54, %50
  %75 = icmp eq ptr %11, %5
  br i1 %75, label %76, label %8

76:                                               ; preds = %74, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @any_leases_conflict(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_lock_context, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %72, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  br label %11

11:                                               ; preds = %69, %8
  %12 = phi ptr [ %6, %8 ], [ %70, %69 ]
  %13 = getelementptr i8, ptr %12, i32 -4
  %14 = getelementptr i8, ptr %12, i32 100
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.lock_manager_operations, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call zeroext i1 %17(ptr noundef %13) #13
  br i1 %20, label %69, label %21

21:                                               ; preds = %19, %11
  %22 = load i32, ptr %9, align 8
  %23 = getelementptr i8, ptr %12, i32 36
  %24 = load i32, ptr %23, align 8
  %25 = xor i32 %24, %22
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = and i32 %22, 4
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %24, 32
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %12, i32 40
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %10, align 4
  %40 = icmp eq i8 %39, 1
  br label %41

41:                                               ; preds = %38, %34, %28, %21
  %42 = phi i1 [ false, %21 ], [ false, %28 ], [ true, %34 ], [ %40, %38 ]
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
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
  br i1 %55, label %68, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %57 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 7), align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %59, %56
  %60 = phi ptr [ %64, %59 ], [ %57, %56 ]
  %61 = load volatile ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tracepoint_func, ptr %60, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void %61(ptr noundef %63, i1 noundef zeroext %42, ptr noundef %13, ptr noundef %1) #13
  %64 = getelementptr %struct.tracepoint_func, ptr %60, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %56
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  br i1 %42, label %72, label %69

68:                                               ; preds = %45, %41
  br i1 %42, label %72, label %69

69:                                               ; preds = %68, %67, %19
  %70 = load ptr, ptr %12, align 4
  %71 = icmp eq ptr %70, %5
  br i1 %71, label %72, label %11

72:                                               ; preds = %69, %68, %67, %2
  %73 = phi i1 [ false, %2 ], [ true, %67 ], [ false, %69 ], [ true, %68 ]
  ret i1 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @leases_conflict(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.lock_manager_operations, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i1 %6(ptr noundef %0) #13
  br i1 %9, label %59, label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = xor i32 %14, %12
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = and i32 %12, 4
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %14, 32
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 1
  br label %32

32:                                               ; preds = %28, %24, %18, %10
  %33 = phi i1 [ false, %10 ], [ false, %18 ], [ true, %24 ], [ %31, %28 ]
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #13
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %48 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_leases_conflict, i32 0, i32 7), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %55, %50 ], [ %48, %47 ]
  %52 = load volatile ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tracepoint_func, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %52(ptr noundef %54, i1 noundef zeroext %33, ptr noundef %0, ptr noundef %1) #13
  %55 = getelementptr %struct.tracepoint_func, ptr %51, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %50

58:                                               ; preds = %50, %47
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  br label %59

59:                                               ; preds = %58, %36, %32, %8
  %60 = phi i1 [ false, %8 ], [ %33, %32 ], [ %33, %36 ], [ %33, %58 ]
  ret i1 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_dispose_list(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %60, label %4

4:                                                ; preds = %56, %1
  %5 = phi ptr [ %58, %56 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %7, align 4
  %11 = getelementptr i8, ptr %5, i32 56
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %15, label %14, !prof !10

14:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

15:                                               ; preds = %4
  %16 = load volatile ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %5, i32 16
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %24, label %23, !prof !10

23:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %5, i32 24
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %5, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !10

33:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %5, i32 96
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.file_lock_operations, ptr %36, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef %6) #13
  br label %43

43:                                               ; preds = %42, %38
  store ptr null, ptr %35, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = getelementptr i8, ptr %5, i32 100
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.lock_manager_operations, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %5, i32 32
  %54 = load ptr, ptr %53, align 4
  tail call void %50(ptr noundef %54) #13
  store ptr null, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %48
  store ptr null, ptr %45, align 8
  br label %56

56:                                               ; preds = %55, %44
  %57 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef %6) #13
  %58 = load volatile ptr, ptr %0, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %4

60:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lease_get_mtime(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %5 = load volatile ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file_lock_context, ptr %5, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file_lock_context, ptr %5, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %31, label %15

15:                                               ; preds = %11, %7
  tail call void @_raw_spin_lock(ptr noundef nonnull %5) #13
  %16 = load volatile ptr, ptr %8, align 4
  %17 = icmp eq ptr %16, %8
  %18 = getelementptr i8, ptr %16, i32 -4
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %16, i32 40
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %25 = load i16, ptr %5, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br i1 %24, label %27, label %31

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %31

28:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %29 = load i16, ptr %5, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %31

31:                                               ; preds = %28, %27, %21, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_getlease(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 40
  %7 = load volatile ptr, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3
  %11 = load volatile ptr, ptr %10, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %84, label %17

17:                                               ; preds = %13, %9
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %18 = load volatile i32, ptr @file_rwsem, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31, !prof !10

20:                                               ; preds = %17
  %21 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %22 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = call i32 @llvm.read_register.i32(metadata !0) #13
  %25 = inttoptr i32 %24 to ptr
  %26 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #8, !srcloc !12
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #13, !srcloc !29
  br label %33

31:                                               ; preds = %17
  %32 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %33

33:                                               ; preds = %31, %20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %7) #13
  call fastcc void @time_out_leases(ptr noundef %4, ptr noundef nonnull %2)
  br label %34

34:                                               ; preds = %38, %33
  %35 = phi ptr [ %10, %33 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %10
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 64
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %34

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %36, i32 36
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 512
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = and i32 %44, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %36, i32 40
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  br label %54

54:                                               ; preds = %50, %47, %42, %34
  %55 = phi i32 [ %53, %50 ], [ 2, %42 ], [ 0, %47 ], [ 2, %34 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %56 = load i16, ptr %7, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %58 = load volatile i32, ptr @file_rwsem, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71, !prof !10

60:                                               ; preds = %54
  %61 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %62 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = call i32 @llvm.read_register.i32(metadata !0) #13
  %65 = inttoptr i32 %64 to ptr
  %66 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #8, !srcloc !12
  %67 = add i32 %66, %63
  %68 = inttoptr i32 %67 to ptr
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #13, !srcloc !29
  br label %83

71:                                               ; preds = %54
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %72 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %73 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = call i32 @llvm.read_register.i32(metadata !0) #13
  %76 = inttoptr i32 %75 to ptr
  %77 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #8, !srcloc !12
  %78 = add i32 %77, %74
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %79, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #13, !srcloc !29
  %82 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %83

83:                                               ; preds = %71, %60
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @locks_dispose_list(ptr noundef nonnull %2)
  br label %84

84:                                               ; preds = %83, %13, %1
  %85 = phi i32 [ 2, %13 ], [ %55, %83 ], [ 2, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_setlease(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.list_head, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 83
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = tail call zeroext i1 @capable(i32 noundef 28) #13
  br i1 %18, label %19, label %350

19:                                               ; preds = %17, %4
  %20 = load i16, ptr %8, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, -32768
  br i1 %22, label %23, label %350

23:                                               ; preds = %19
  switch i32 %1, label %350 [
    i32 2, label %24
    i32 0, label %157
    i32 1, label %157
  ]

24:                                               ; preds = %23
  %25 = load ptr, ptr %3, align 4
  %26 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr %6, ptr %6, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %27, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 40
  %29 = load volatile ptr, ptr %28, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_delete_lease, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %155, label %44

44:                                               ; preds = %34
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !50
  %45 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_delete_lease, i32 0, i32 7), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %52, %47 ], [ %45, %44 ]
  %49 = load volatile ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tracepoint_func, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  call void %49(ptr noundef %51, ptr noundef %26, ptr noundef null) #13
  %52 = getelementptr %struct.tracepoint_func, ptr %48, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47

55:                                               ; preds = %47, %44
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  br label %155

56:                                               ; preds = %24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %57 = load volatile i32, ptr @file_rwsem, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70, !prof !10

59:                                               ; preds = %56
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %61 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = call i32 @llvm.read_register.i32(metadata !0) #13
  %64 = inttoptr i32 %63 to ptr
  %65 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #8, !srcloc !12
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #13, !srcloc !29
  br label %72

70:                                               ; preds = %56
  %71 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %72

72:                                               ; preds = %70, %59
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %29) #13
  %73 = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %90, label %76

76:                                               ; preds = %85, %72
  %77 = phi ptr [ %86, %85 ], [ %74, %72 ]
  %78 = getelementptr i8, ptr %77, i32 64
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %77, i32 32
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %25
  br i1 %84, label %88, label %85

85:                                               ; preds = %81, %76
  %86 = load ptr, ptr %77, align 4
  %87 = icmp eq ptr %86, %73
  br i1 %87, label %90, label %76

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %77, i32 -4
  br label %90

90:                                               ; preds = %88, %85, %72
  %91 = phi ptr [ %77, %88 ], [ %73, %72 ], [ %73, %85 ]
  %92 = phi ptr [ %89, %88 ], [ null, %72 ], [ null, %85 ]
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_delete_lease, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %95
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !50
  %106 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_delete_lease, i32 0, i32 7), align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %108, %105
  %109 = phi ptr [ %113, %108 ], [ %106, %105 ]
  %110 = load volatile ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tracepoint_func, ptr %109, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  call void %110(ptr noundef %112, ptr noundef %26, ptr noundef %92) #13
  %113 = getelementptr %struct.tracepoint_func, ptr %109, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %108

116:                                              ; preds = %108, %105
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  br label %117

117:                                              ; preds = %116, %95, %90
  %118 = icmp eq ptr %92, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %117
  %120 = getelementptr i8, ptr %91, i32 100
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.lock_manager_operations, ptr %121, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 %123(ptr noundef nonnull %92, i32 noundef 2, ptr noundef nonnull %6) #13
  br label %125

125:                                              ; preds = %119, %117
  %126 = phi i32 [ %124, %119 ], [ -11, %117 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %127 = load i16, ptr %29, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %29, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %129 = load volatile i32, ptr @file_rwsem, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %142, !prof !10

131:                                              ; preds = %125
  %132 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %133 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = call i32 @llvm.read_register.i32(metadata !0) #13
  %136 = inttoptr i32 %135 to ptr
  %137 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #8, !srcloc !12
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, -1
  store i32 %141, ptr %139, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %132) #13, !srcloc !29
  br label %154

142:                                              ; preds = %125
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %143 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %144 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = call i32 @llvm.read_register.i32(metadata !0) #13
  %147 = inttoptr i32 %146 to ptr
  %148 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %147) #8, !srcloc !12
  %149 = add i32 %148, %145
  %150 = inttoptr i32 %149 to ptr
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, -1
  store i32 %152, ptr %150, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %143) #13, !srcloc !29
  %153 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %154

154:                                              ; preds = %142, %131
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @locks_dispose_list(ptr noundef nonnull %6) #13
  br label %155

155:                                              ; preds = %154, %55, %34, %31
  %156 = phi i32 [ %126, %154 ], [ -11, %31 ], [ -11, %34 ], [ -11, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %350

157:                                              ; preds = %23, %23
  %158 = load ptr, ptr %2, align 4
  %159 = getelementptr inbounds %struct.file_lock, ptr %158, i32 0, i32 18
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.lock_manager_operations, ptr %160, i32 0, i32 4
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i1, ptr @generic_setlease.__already_done, align 1
  br i1 %165, label %350, label %166, !prof !10

166:                                              ; preds = %164
  store i1 true, ptr @generic_setlease.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1840, i32 noundef 9, ptr noundef null) #13
  br label %350

167:                                              ; preds = %157
  %168 = load ptr, ptr %7, align 8
  %169 = getelementptr inbounds %struct.file_lock, ptr %158, i32 0, i32 6
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 4
  %172 = icmp eq i32 %171, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %173 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %173, align 4
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_add_lease, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 5
  %180 = getelementptr i32, ptr @__cpu_online_mask, i32 %179
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %178, 31
  %183 = shl nuw i32 1, %182
  %184 = and i32 %183, %181
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %176
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  %187 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_add_lease, i32 0, i32 7), align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %189, %186
  %190 = phi ptr [ %194, %189 ], [ %187, %186 ]
  %191 = load volatile ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.tracepoint_func, ptr %190, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  call void %191(ptr noundef %193, ptr noundef %168, ptr noundef %158) #13
  %194 = getelementptr %struct.tracepoint_func, ptr %190, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %189

197:                                              ; preds = %189, %186
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !53
  br label %198

198:                                              ; preds = %197, %176, %167
  %199 = call fastcc ptr @locks_get_lock_context(ptr noundef %168, i32 noundef %1) #13
  %200 = icmp eq ptr %199, null
  br i1 %200, label %348, label %201

201:                                              ; preds = %198
  br i1 %172, label %202, label %204

202:                                              ; preds = %201
  %203 = icmp eq i32 %1, 1
  br label %213

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.inode, ptr %168, i32 0, i32 24
  %206 = call i32 @down_write_trylock(ptr noundef %205) #13
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %348, label %208

208:                                              ; preds = %204
  %209 = icmp eq i32 %1, 1
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  call void @up_write(ptr noundef %205) #13
  %211 = load i1, ptr @generic_add_lease.__already_done, align 1
  br i1 %211, label %348, label %212, !prof !10

212:                                              ; preds = %210
  store i1 true, ptr @generic_add_lease.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1693, i32 noundef 9, ptr noundef null) #13
  br label %348

213:                                              ; preds = %208, %202
  %214 = phi i1 [ %203, %202 ], [ false, %208 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %215 = load volatile i32, ptr @file_rwsem, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %228, !prof !10

217:                                              ; preds = %213
  %218 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %219 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %220 = ptrtoint ptr %219 to i32
  %221 = call i32 @llvm.read_register.i32(metadata !0) #13
  %222 = inttoptr i32 %221 to ptr
  %223 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %222) #8, !srcloc !12
  %224 = add i32 %223, %220
  %225 = inttoptr i32 %224 to ptr
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %225, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %218) #13, !srcloc !29
  br label %230

228:                                              ; preds = %213
  %229 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %230

230:                                              ; preds = %228, %217
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %199) #13
  call fastcc void @time_out_leases(ptr noundef %168, ptr noundef nonnull %5) #13
  %231 = load i32, ptr %169, align 8
  %232 = load ptr, ptr %7, align 8
  %233 = and i32 %231, 2052
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %230
  switch i32 %1, label %256 [
    i32 0, label %236
    i32 1, label %240
  ]

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.inode, ptr %232, i32 0, i32 37
  %238 = load volatile i32, ptr %237, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %310, label %256

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 2
  %244 = icmp eq i32 %243, 0
  %245 = xor i1 %244, true
  %246 = zext i1 %245 to i32
  %247 = getelementptr inbounds %struct.inode, ptr %232, i32 0, i32 37
  %248 = load volatile i32, ptr %247, align 4
  %249 = icmp eq i32 %248, %246
  br i1 %249, label %250, label %310

250:                                              ; preds = %240
  %251 = and i32 %242, 1
  %252 = select i1 %244, i32 %251, i32 0
  %253 = getelementptr inbounds %struct.inode, ptr %232, i32 0, i32 38
  %254 = load volatile i32, ptr %253, align 4
  %255 = icmp eq i32 %254, %252
  br i1 %255, label %256, label %310

256:                                              ; preds = %250, %236, %235, %230
  %257 = getelementptr inbounds %struct.file_lock_context, ptr %199, i32 0, i32 3
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, %257
  br i1 %259, label %293, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.file_lock, ptr %158, i32 0, i32 5
  br label %262

262:                                              ; preds = %280, %260
  %263 = phi ptr [ %258, %260 ], [ %282, %280 ]
  %264 = phi ptr [ null, %260 ], [ %281, %280 ]
  %265 = getelementptr i8, ptr %263, i32 64
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %0
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = getelementptr i8, ptr %263, i32 -4
  %270 = getelementptr i8, ptr %263, i32 32
  %271 = load ptr, ptr %270, align 4
  %272 = load ptr, ptr %261, align 4
  %273 = icmp eq ptr %271, %272
  br i1 %273, label %280, label %274

274:                                              ; preds = %268, %262
  br i1 %214, label %310, label %275

275:                                              ; preds = %274
  %276 = getelementptr i8, ptr %263, i32 36
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 512
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %310

280:                                              ; preds = %275, %268
  %281 = phi ptr [ %264, %275 ], [ %269, %268 ]
  %282 = load ptr, ptr %263, align 4
  %283 = icmp eq ptr %282, %257
  br i1 %283, label %284, label %262

284:                                              ; preds = %280
  %285 = icmp eq ptr %281, null
  br i1 %285, label %293, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.file_lock, ptr %281, i32 0, i32 18
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr inbounds %struct.lock_manager_operations, ptr %288, i32 0, i32 5
  %290 = load ptr, ptr %289, align 4
  %291 = call i32 %290(ptr noundef nonnull %281, i32 noundef %1, ptr noundef nonnull %5) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %301, label %310

293:                                              ; preds = %284, %256
  %294 = load i32, ptr @leases_enable, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %293
  call fastcc void @locks_insert_lock_ctx(ptr noundef %158, ptr noundef %257) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !54
  %297 = load i32, ptr %169, align 8
  %298 = call fastcc i32 @check_conflicting_open(ptr noundef %0, i32 noundef %1, i32 noundef %297) #13
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %296
  call fastcc void @locks_unlink_lock_ctx(ptr noundef %158) #13
  br label %310

301:                                              ; preds = %296, %286
  %302 = phi ptr [ %281, %286 ], [ null, %296 ]
  %303 = phi ptr [ %281, %286 ], [ %158, %296 ]
  %304 = getelementptr inbounds %struct.file_lock, ptr %303, i32 0, i32 18
  %305 = load ptr, ptr %304, align 8
  %306 = getelementptr inbounds %struct.lock_manager_operations, ptr %305, i32 0, i32 6
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %301
  call void %307(ptr noundef %303, ptr noundef %3) #13
  br label %310

310:                                              ; preds = %309, %301, %300, %293, %286, %275, %274, %250, %240, %236
  %311 = phi i32 [ %291, %286 ], [ 0, %309 ], [ 0, %301 ], [ %298, %300 ], [ -22, %293 ], [ -11, %240 ], [ -11, %250 ], [ -11, %236 ], [ -11, %274 ], [ -11, %275 ]
  %312 = phi ptr [ %281, %286 ], [ %302, %309 ], [ %302, %301 ], [ null, %300 ], [ null, %293 ], [ null, %240 ], [ null, %250 ], [ null, %236 ], [ %264, %274 ], [ %264, %275 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %313 = load i16, ptr %199, align 4
  %314 = add i16 %313, 1
  store i16 %314, ptr %199, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %315 = load volatile i32, ptr @file_rwsem, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %328, !prof !10

317:                                              ; preds = %310
  %318 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %319 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %320 = ptrtoint ptr %319 to i32
  %321 = call i32 @llvm.read_register.i32(metadata !0) #13
  %322 = inttoptr i32 %321 to ptr
  %323 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %322) #8, !srcloc !12
  %324 = add i32 %323, %320
  %325 = inttoptr i32 %324 to ptr
  %326 = load i32, ptr %325, align 4
  %327 = add i32 %326, -1
  store i32 %327, ptr %325, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %318) #13, !srcloc !29
  br label %340

328:                                              ; preds = %310
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %329 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %330 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %331 = ptrtoint ptr %330 to i32
  %332 = call i32 @llvm.read_register.i32(metadata !0) #13
  %333 = inttoptr i32 %332 to ptr
  %334 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %333) #8, !srcloc !12
  %335 = add i32 %334, %331
  %336 = inttoptr i32 %335 to ptr
  %337 = load i32, ptr %336, align 4
  %338 = add i32 %337, -1
  store i32 %338, ptr %336, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %329) #13, !srcloc !29
  %339 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %340

340:                                              ; preds = %328, %317
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @locks_dispose_list(ptr noundef nonnull %5) #13
  br i1 %172, label %343, label %341

341:                                              ; preds = %340
  %342 = getelementptr inbounds %struct.inode, ptr %168, i32 0, i32 24
  call void @up_write(ptr noundef %342) #13
  br label %343

343:                                              ; preds = %341, %340
  %344 = icmp ne i32 %311, 0
  %345 = icmp ne ptr %312, null
  %346 = select i1 %344, i1 true, i1 %345
  br i1 %346, label %348, label %347

347:                                              ; preds = %343
  store ptr null, ptr %2, align 4
  br label %348

348:                                              ; preds = %347, %343, %212, %210, %204, %198
  %349 = phi i32 [ -12, %198 ], [ -11, %204 ], [ -22, %212 ], [ -22, %210 ], [ 0, %347 ], [ %311, %343 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %350

350:                                              ; preds = %348, %166, %164, %155, %23, %19, %17
  %351 = phi i32 [ %349, %348 ], [ %156, %155 ], [ -13, %17 ], [ -22, %19 ], [ -37, %166 ], [ -37, %164 ], [ -22, %23 ]
  ret i32 %351
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lease_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @srcu_notifier_chain_register(ptr noundef nonnull @lease_notifier_chain, ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lease_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @srcu_notifier_chain_unregister(ptr noundef nonnull @lease_notifier_chain, ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_setlease(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  %6 = icmp eq i32 %1, 2
  %7 = or i1 %6, %5
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @srcu_notifier_call_chain(ptr noundef nonnull @lease_notifier_chain, i32 noundef %1, ptr noundef %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file_operations, ptr %13, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %21

19:                                               ; preds = %11
  %20 = tail call i32 @generic_setlease(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_setlease(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %1, ptr %6, align 4
  %7 = icmp eq i32 %2, 2
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 %12(ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef nonnull %6) #13
  br label %146

16:                                               ; preds = %8
  %17 = call i32 @generic_setlease(ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef nonnull %6) #13
  br label %146

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %19 = tail call fastcc ptr @lease_alloc(ptr noundef %1, i32 noundef %2) #13
  store ptr %19, ptr %4, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  br label %144

23:                                               ; preds = %18
  %24 = tail call ptr @fasync_alloc() #13
  store ptr %24, ptr %5, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 10, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 1
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 3
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %41, label %40, !prof !10

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 4
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %46, label %45, !prof !10

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 2, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !10

50:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 17
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.file_lock_operations, ptr %53, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void %57(ptr noundef %19) #13
  br label %60

60:                                               ; preds = %59, %55
  store ptr null, ptr %52, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 18
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.lock_manager_operations, ptr %63, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.file_lock, ptr %19, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  tail call void %67(ptr noundef %71) #13
  store ptr null, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %65
  store ptr null, ptr %62, align 8
  br label %73

73:                                               ; preds = %72, %61
  %74 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %74, ptr noundef %19) #13
  br label %144

75:                                               ; preds = %23
  %76 = getelementptr inbounds %struct.fasync_struct, ptr %24, i32 0, i32 2
  store i32 %0, ptr %76, align 4
  %77 = tail call i32 @srcu_notifier_call_chain(ptr noundef nonnull @lease_notifier_chain, i32 noundef %2, ptr noundef %19) #13
  %78 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.file_operations, ptr %79, i32 0, i32 26
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = call i32 %81(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br label %87

85:                                               ; preds = %75
  %86 = call i32 @generic_setlease(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load ptr, ptr %4, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %140, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 10, i32 1
  %93 = load volatile ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %96, label %95, !prof !10

95:                                               ; preds = %91
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 1
  %98 = load volatile ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %97
  br i1 %99, label %101, label %100, !prof !10

100:                                              ; preds = %96
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 3
  %103 = load volatile ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %102
  br i1 %104, label %106, label %105, !prof !10

105:                                              ; preds = %101
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 4
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %111, label %110, !prof !10

110:                                              ; preds = %106
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 2, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !10

115:                                              ; preds = %111
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 17
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.file_lock_operations, ptr %118, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void %122(ptr noundef nonnull %89) #13
  br label %125

125:                                              ; preds = %124, %120
  store ptr null, ptr %117, align 4
  br label %126

126:                                              ; preds = %125, %116
  %127 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 18
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.lock_manager_operations, ptr %128, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.file_lock, ptr %89, i32 0, i32 5
  %136 = load ptr, ptr %135, align 4
  call void %132(ptr noundef %136) #13
  store ptr null, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %130
  store ptr null, ptr %127, align 8
  br label %138

138:                                              ; preds = %137, %126
  %139 = load ptr, ptr @filelock_cache, align 4
  call void @kmem_cache_free(ptr noundef %139, ptr noundef nonnull %89) #13
  br label %140

140:                                              ; preds = %138, %87
  %141 = load ptr, ptr %5, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @fasync_free(ptr noundef nonnull %141) #13
  br label %144

144:                                              ; preds = %143, %140, %73, %21
  %145 = phi i32 [ %22, %21 ], [ -12, %73 ], [ %88, %143 ], [ %88, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %146

146:                                              ; preds = %144, %16, %14
  %147 = phi i32 [ %145, %144 ], [ %15, %14 ], [ %17, %16 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @locks_lock_inode_wait(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 3
  switch i32 %7, label %60 [
    i32 1, label %8
    i32 2, label %34
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 10
  br label %11

11:                                               ; preds = %31, %8
  %12 = call fastcc i32 @posix_lock_inode(ptr noundef %0, ptr noundef %1, ptr noundef null) #13
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  %15 = load volatile ptr, ptr %9, align 4
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #13, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #13
  %18 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 1) #13
  %19 = load volatile ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, %9
  br i1 %20, label %28, label %21

21:                                               ; preds = %24, %17
  %22 = phi i32 [ %25, %24 ], [ %18, %17 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  call void @schedule() #13
  %25 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 1) #13
  %26 = load volatile ptr, ptr %9, align 4
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %28, label %21

28:                                               ; preds = %24, %17
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %4) #13
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i32 [ 0, %28 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i32 [ 0, %14 ], [ %30, %29 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %11, label %61

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 10
  br label %37

37:                                               ; preds = %57, %34
  %38 = call fastcc i32 @flock_lock_inode(ptr noundef %0, ptr noundef %1) #13
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load volatile ptr, ptr %35, align 4
  %42 = icmp eq ptr %41, %35
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #13, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #13
  %44 = call i32 @prepare_to_wait_event(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #13
  %45 = load volatile ptr, ptr %35, align 4
  %46 = icmp eq ptr %45, %35
  br i1 %46, label %54, label %47

47:                                               ; preds = %50, %43
  %48 = phi i32 [ %51, %50 ], [ %44, %43 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  call void @schedule() #13
  %51 = call i32 @prepare_to_wait_event(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #13
  %52 = load volatile ptr, ptr %35, align 4
  %53 = icmp eq ptr %52, %35
  br i1 %53, label %54, label %47

54:                                               ; preds = %50, %43
  call void @finish_wait(ptr noundef %36, ptr noundef nonnull %3) #13
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i32 [ 0, %54 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  br label %57

57:                                               ; preds = %55, %40
  %58 = phi i32 [ 0, %40 ], [ %56, %55 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %37, label %61

60:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2022, 0\0A.popsection", ""() #13, !srcloc !55
  unreachable

61:                                               ; preds = %57, %37, %31, %11
  %62 = phi i32 [ %12, %11 ], [ %32, %31 ], [ %38, %37 ], [ %58, %57 ]
  %63 = call i32 @locks_delete_block(ptr noundef %1) #13
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_flock(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !56
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %120, label %7

7:                                                ; preds = %2
  %8 = and i32 %1, 4
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %1, -5
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %115, label %17

17:                                               ; preds = %12, %7
  %18 = and i32 %1, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i1, ptr @__do_sys_flock.__already_done, align 1
  br i1 %21, label %115, label %22, !prof !10

22:                                               ; preds = %20
  store i1 true, ptr @__do_sys_flock.__already_done, align 1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #14
  br label %115

24:                                               ; preds = %17
  switch i32 %10, label %52 [
    i32 1, label %27
    i32 2, label %25
    i32 8, label %26
  ]

25:                                               ; preds = %24
  br label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %25, %24
  %28 = phi i8 [ 0, %24 ], [ 1, %25 ], [ 2, %26 ]
  %29 = load ptr, ptr @filelock_cache, align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %29, i32 noundef 3520) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 2
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 2, i32 1
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 1
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 1, i32 1
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 3
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 3, i32 1
  store ptr %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 4
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 4, i32 1
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %41, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %42 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 11
  store ptr %5, ptr %42, align 4
  %43 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 5
  store ptr %5, ptr %43, align 4
  %44 = tail call ptr @llvm.thread.pointer() #13
  %45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 53
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 8
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 6
  store i32 2, ptr %48, align 8
  %49 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 7
  store i8 %28, ptr %49, align 4
  %50 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 13
  store i64 9223372036854775807, ptr %50, align 8
  %51 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %32, %27, %24
  %53 = phi ptr [ %30, %32 ], [ inttoptr (i32 -22 to ptr), %24 ], [ inttoptr (i32 -12 to ptr), %27 ]
  %54 = ptrtoint ptr %53 to i32
  br label %115

55:                                               ; preds = %32
  br i1 %9, label %56, label %57

56:                                               ; preds = %55
  store i32 130, ptr %48, align 8
  br label %57

57:                                               ; preds = %56, %55
  %58 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.file_operations, ptr %59, i32 0, i32 23
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = select i1 %9, i32 7, i32 6
  %65 = tail call i32 %61(ptr noundef nonnull %5, i32 noundef %64, ptr noundef nonnull %30) #13
  br label %70

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = tail call i32 @locks_lock_inode_wait(ptr noundef %68, ptr noundef nonnull %30) #13
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i32 [ %65, %63 ], [ %69, %66 ]
  %72 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 10, i32 1
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %76, label %75, !prof !10

75:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

76:                                               ; preds = %70
  %77 = load volatile ptr, ptr %35, align 4
  %78 = icmp eq ptr %77, %35
  br i1 %78, label %80, label %79, !prof !10

79:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

80:                                               ; preds = %76
  %81 = load volatile ptr, ptr %37, align 4
  %82 = icmp eq ptr %81, %37
  br i1 %82, label %84, label %83, !prof !10

83:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

84:                                               ; preds = %80
  %85 = load volatile ptr, ptr %39, align 4
  %86 = icmp eq ptr %85, %39
  br i1 %86, label %88, label %87, !prof !10

87:                                               ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

88:                                               ; preds = %84
  %89 = load ptr, ptr %34, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91, !prof !10

91:                                               ; preds = %88
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 17
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.file_lock_operations, ptr %94, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void %98(ptr noundef nonnull %30) #13
  br label %101

101:                                              ; preds = %100, %96
  store ptr null, ptr %93, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = getelementptr inbounds %struct.file_lock, ptr %30, i32 0, i32 18
  %104 = load ptr, ptr %103, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.lock_manager_operations, ptr %104, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %43, align 4
  tail call void %108(ptr noundef %111) #13
  store ptr null, ptr %43, align 4
  br label %112

112:                                              ; preds = %110, %106
  store ptr null, ptr %103, align 8
  br label %113

113:                                              ; preds = %112, %102
  %114 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %114, ptr noundef nonnull %30) #13
  br label %115

115:                                              ; preds = %113, %52, %22, %20, %12
  %116 = phi i32 [ %54, %52 ], [ %71, %113 ], [ -9, %12 ], [ 0, %22 ], [ 0, %20 ]
  %117 = and i32 %3, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  tail call void @fput(ptr noundef nonnull %5) #13
  br label %120

120:                                              ; preds = %119, %115, %2
  %121 = phi i32 [ -9, %2 ], [ %116, %115 ], [ %116, %119 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_test_lock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_operations, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef 5, ptr noundef %1) #13
  br label %11

10:                                               ; preds = %2
  tail call void @posix_test_lock(ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_getlk(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.flock64, align 8
  %5 = load ptr, ptr @filelock_cache, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %108, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 2, i32 1
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 4
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 4, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %18 = load i16, ptr %2, align 4
  %19 = icmp ult i16 %18, 2
  br i1 %19, label %20, label %62

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false) #13, !annotation !9
  store i16 %18, ptr %4, align 8
  %21 = getelementptr inbounds %struct.flock64, ptr %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.flock, ptr %2, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  store i16 %23, ptr %21, align 2
  %24 = getelementptr inbounds %struct.flock64, ptr %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.flock, ptr %2, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, ptr %24, align 8
  %28 = getelementptr inbounds %struct.flock64, ptr %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.flock, ptr %2, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, ptr %28, align 8
  %32 = call fastcc i32 @flock64_to_posix_lock(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %20
  %35 = icmp eq i32 %1, 36
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.flock, ptr %2, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 6
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 1024
  store i32 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 5
  store ptr %0, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.file_operations, ptr %47, i32 0, i32 19
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call void @posix_test_lock(ptr noundef %0, ptr noundef nonnull %6) #13
  br label %55

52:                                               ; preds = %45
  %53 = tail call i32 %49(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %6) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %51
  %56 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 7
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %2, align 4
  %59 = icmp eq i8 %57, 2
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call fastcc i32 @posix_lock_to_flock(ptr noundef %2, ptr noundef nonnull %6)
  br label %62

62:                                               ; preds = %60, %55, %52, %36, %20, %8
  %63 = phi i32 [ %32, %20 ], [ -22, %36 ], [ %53, %52 ], [ %61, %60 ], [ 0, %55 ], [ -22, %8 ]
  %64 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 10, i32 1
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %68, label %67, !prof !10

67:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

68:                                               ; preds = %62
  %69 = load volatile ptr, ptr %11, align 4
  %70 = icmp eq ptr %69, %11
  br i1 %70, label %72, label %71, !prof !10

71:                                               ; preds = %68
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

72:                                               ; preds = %68
  %73 = load volatile ptr, ptr %13, align 4
  %74 = icmp eq ptr %73, %13
  br i1 %74, label %76, label %75, !prof !10

75:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

76:                                               ; preds = %72
  %77 = load volatile ptr, ptr %15, align 4
  %78 = icmp eq ptr %77, %15
  br i1 %78, label %80, label %79, !prof !10

79:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

80:                                               ; preds = %76
  %81 = load ptr, ptr %10, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !10

83:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 17
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.file_lock_operations, ptr %86, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef nonnull %6) #13
  br label %93

93:                                               ; preds = %92, %88
  store ptr null, ptr %85, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 18
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.lock_manager_operations, ptr %96, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  tail call void %100(ptr noundef %104) #13
  store ptr null, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %98
  store ptr null, ptr %95, align 8
  br label %106

106:                                              ; preds = %105, %94
  %107 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %107, ptr noundef nonnull %6) #13
  br label %108

108:                                              ; preds = %106, %3
  %109 = phi i32 [ %63, %106 ], [ -12, %3 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @posix_lock_to_flock(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = tail call ptr @task_active_pid_ns(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %4, @init_pid_ns
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %16 = load i32, ptr %10, align 8
  %17 = tail call ptr @find_pid_ns(i32 noundef %16, ptr noundef nonnull @init_pid_ns) #13
  %18 = tail call i32 @pid_nr_ns(ptr noundef %17, ptr noundef %4) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !60
  br label %19

19:                                               ; preds = %15, %13, %9, %2
  %20 = phi i32 [ %18, %15 ], [ -1, %2 ], [ 0, %9 ], [ %11, %13 ]
  %21 = getelementptr inbounds %struct.flock, ptr %0, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %23 = load i64, ptr %22, align 8
  %24 = icmp sgt i64 %23, 2147483647
  br i1 %24, label %47, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, -2147483648
  %29 = icmp ult i64 %28, 9223372034707292159
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = trunc i64 %23 to i32
  %32 = getelementptr inbounds %struct.flock, ptr %0, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = load i64, ptr %26, align 8
  %34 = icmp eq i64 %33, 9223372036854775807
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %22, align 8
  %37 = sub i64 %33, %36
  %38 = trunc i64 %37 to i32
  %39 = add i32 %38, 1
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ %39, %35 ], [ 0, %30 ]
  %42 = getelementptr inbounds %struct.flock, ptr %0, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.flock, ptr %0, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %0, align 4
  br label %47

47:                                               ; preds = %40, %25, %19
  %48 = phi i32 [ 0, %40 ], [ -75, %19 ], [ -75, %25 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_lock_file(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %1, ptr noundef %2) #13
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc i32 @posix_lock_inode(ptr noundef %14, ptr noundef %2, ptr noundef %3) #13
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_setlk(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.flock64, align 8
  %6 = load ptr, ptr @filelock_cache, align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %190, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 2
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 2, i32 1
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 3
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 3, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 4
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 4, i32 1
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %18, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #13, !annotation !9
  %21 = load i16, ptr %3, align 4
  store i16 %21, ptr %5, align 8
  %22 = getelementptr inbounds %struct.flock64, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.flock, ptr %3, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  store i16 %24, ptr %22, align 2
  %25 = getelementptr inbounds %struct.flock64, ptr %5, i32 0, i32 2
  %26 = getelementptr inbounds %struct.flock, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, ptr %25, align 8
  %29 = getelementptr inbounds %struct.flock64, ptr %5, i32 0, i32 3
  %30 = getelementptr inbounds %struct.flock, ptr %3, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, ptr %29, align 8
  %33 = call fastcc i32 @flock64_to_posix_lock(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %118

35:                                               ; preds = %9
  %36 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 7
  %37 = load i8, ptr %36, align 4
  switch i8 %37, label %52 [
    i8 0, label %38
    i8 1, label %45
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %118, label %52

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 8
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %118, label %52

52:                                               ; preds = %45, %38, %35
  switch i32 %2, label %78 [
    i32 37, label %56
    i32 38, label %65
    i32 7, label %53
  ]

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  br label %74

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.flock, ptr %3, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = or i32 %62, 1024
  store i32 %63, ptr %61, align 8
  %64 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 5
  store ptr %1, ptr %64, align 4
  br label %78

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.flock, ptr %3, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 6
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 1024
  %73 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 5
  store ptr %1, ptr %73, align 4
  br label %74

74:                                               ; preds = %69, %53
  %75 = phi i32 [ %55, %53 ], [ %72, %69 ]
  %76 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 6
  %77 = or i32 %75, 128
  store i32 %77, ptr %76, align 8
  br label %78

78:                                               ; preds = %74, %60, %52
  %79 = phi i32 [ %2, %52 ], [ 7, %74 ], [ 6, %60 ]
  %80 = tail call fastcc i32 @do_lock_file_wait(ptr noundef %1, i32 noundef %79, ptr noundef nonnull %7)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load i8, ptr %36, align 4
  %84 = icmp eq i8 %83, 2
  br i1 %84, label %118, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 6
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 1024
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %85
  %91 = tail call ptr @llvm.thread.pointer() #13
  %92 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 90
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.files_struct, ptr %93, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %94) #13
  %95 = getelementptr inbounds %struct.files_struct, ptr %93, i32 0, i32 3
  %96 = load volatile ptr, ptr %95, align 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %97, %0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %97) #13, !srcloc !61
  %101 = and i32 %100, %0
  %102 = getelementptr inbounds %struct.fdtable, ptr %96, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr ptr, ptr %103, i32 %101
  %105 = load volatile ptr, ptr %104, align 4
  br label %106

106:                                              ; preds = %99, %90
  %107 = phi ptr [ %105, %99 ], [ null, %90 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %108 = load i16, ptr %94, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %94, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %110 = icmp eq ptr %107, %1
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  store i8 2, ptr %36, align 4
  %112 = tail call fastcc i32 @do_lock_file_wait(ptr noundef %1, i32 noundef %79, ptr noundef nonnull %7)
  %113 = icmp ne i32 %112, 0
  %114 = load i1, ptr @fcntl_setlk.__already_done, align 1
  %115 = xor i1 %114, true
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %118, !prof !11

117:                                              ; preds = %111
  store i1 true, ptr @fcntl_setlk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2379, i32 noundef 9, ptr noundef null) #13
  br label %118

118:                                              ; preds = %117, %111, %106, %85, %82, %78, %65, %56, %45, %38, %9
  %119 = phi i32 [ %33, %9 ], [ %80, %78 ], [ 0, %85 ], [ 0, %82 ], [ -22, %65 ], [ -22, %56 ], [ 0, %106 ], [ -9, %117 ], [ -9, %111 ], [ -9, %38 ], [ -9, %45 ]
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fcntl_setlk, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %118
  %123 = tail call ptr @llvm.thread.pointer() #13
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !62
  %134 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fcntl_setlk, i32 0, i32 7), align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %144, label %136

136:                                              ; preds = %136, %133
  %137 = phi ptr [ %141, %136 ], [ %134, %133 ]
  %138 = load volatile ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.tracepoint_func, ptr %137, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  tail call void %138(ptr noundef %140, ptr noundef %20, ptr noundef %7, i32 noundef %119) #13
  %141 = getelementptr %struct.tracepoint_func, ptr %137, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %136

144:                                              ; preds = %136, %133
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !63
  br label %145

145:                                              ; preds = %144, %122, %118
  %146 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 10, i32 1
  %147 = load volatile ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %150, label %149, !prof !10

149:                                              ; preds = %145
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

150:                                              ; preds = %145
  %151 = load volatile ptr, ptr %12, align 4
  %152 = icmp eq ptr %151, %12
  br i1 %152, label %154, label %153, !prof !10

153:                                              ; preds = %150
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

154:                                              ; preds = %150
  %155 = load volatile ptr, ptr %14, align 4
  %156 = icmp eq ptr %155, %14
  br i1 %156, label %158, label %157, !prof !10

157:                                              ; preds = %154
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

158:                                              ; preds = %154
  %159 = load volatile ptr, ptr %16, align 4
  %160 = icmp eq ptr %159, %16
  br i1 %160, label %162, label %161, !prof !10

161:                                              ; preds = %158
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

162:                                              ; preds = %158
  %163 = load ptr, ptr %11, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165, !prof !10

165:                                              ; preds = %162
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 17
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.file_lock_operations, ptr %168, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  tail call void %172(ptr noundef %7) #13
  br label %175

175:                                              ; preds = %174, %170
  store ptr null, ptr %167, align 4
  br label %176

176:                                              ; preds = %175, %166
  %177 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 18
  %178 = load ptr, ptr %177, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.lock_manager_operations, ptr %178, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.file_lock, ptr %7, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  tail call void %182(ptr noundef %186) #13
  store ptr null, ptr %185, align 4
  br label %187

187:                                              ; preds = %184, %180
  store ptr null, ptr %177, align 8
  br label %188

188:                                              ; preds = %187, %176
  %189 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %189, ptr noundef %7) #13
  br label %190

190:                                              ; preds = %188, %4
  %191 = phi i32 [ %119, %188 ], [ -37, %4 ]
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_lock_file_wait(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 4
  %8 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 10
  br label %9

9:                                                ; preds = %39, %3
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 %12(ptr noundef %0, i32 noundef %1, ptr noundef %2) #13
  br label %19

16:                                               ; preds = %9
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc i32 @posix_lock_inode(ptr noundef %17, ptr noundef %2, ptr noundef null) #13
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load volatile ptr, ptr %7, align 4
  %24 = icmp eq ptr %23, %7
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #13
  %26 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 1) #13
  %27 = load volatile ptr, ptr %7, align 4
  %28 = icmp eq ptr %27, %7
  br i1 %28, label %36, label %29

29:                                               ; preds = %32, %25
  %30 = phi i32 [ %33, %32 ], [ %26, %25 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  call void @schedule() #13
  %33 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 1) #13
  %34 = load volatile ptr, ptr %7, align 4
  %35 = icmp eq ptr %34, %7
  br i1 %35, label %36, label %29

36:                                               ; preds = %32, %25
  call void @finish_wait(ptr noundef %8, ptr noundef nonnull %4) #13
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ 0, %36 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %39

39:                                               ; preds = %37, %22
  %40 = phi i32 [ 0, %22 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %9, label %42

42:                                               ; preds = %39, %19
  %43 = phi i32 [ %20, %19 ], [ %40, %39 ]
  %44 = call i32 @locks_delete_block(ptr noundef %2)
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_getlk64(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @filelock_cache, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3520) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %95, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 2, i32 1
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 3
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 4
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %16, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %17 = load i16, ptr %2, align 8
  %18 = icmp ult i16 %17, 2
  br i1 %18, label %19, label %49

19:                                               ; preds = %7
  %20 = tail call fastcc i32 @flock64_to_posix_lock(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = icmp eq i32 %1, 36
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.flock64, ptr %2, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %30, 1024
  store i32 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 5
  store ptr %0, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.file_operations, ptr %35, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @posix_test_lock(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %43

40:                                               ; preds = %33
  %41 = tail call i32 %37(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %5) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %39
  %44 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 7
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %2, align 8
  %47 = icmp eq i8 %45, 2
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call fastcc void @posix_lock_to_flock64(ptr noundef %2, ptr noundef nonnull %5)
  br label %49

49:                                               ; preds = %48, %43, %40, %24, %19, %7
  %50 = phi i32 [ %20, %19 ], [ -22, %24 ], [ %41, %40 ], [ 0, %48 ], [ 0, %43 ], [ -22, %7 ]
  %51 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 10, i32 1
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %55, label %54, !prof !10

54:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

55:                                               ; preds = %49
  %56 = load volatile ptr, ptr %10, align 4
  %57 = icmp eq ptr %56, %10
  br i1 %57, label %59, label %58, !prof !10

58:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

59:                                               ; preds = %55
  %60 = load volatile ptr, ptr %12, align 4
  %61 = icmp eq ptr %60, %12
  br i1 %61, label %63, label %62, !prof !10

62:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

63:                                               ; preds = %59
  %64 = load volatile ptr, ptr %14, align 4
  %65 = icmp eq ptr %64, %14
  br i1 %65, label %67, label %66, !prof !10

66:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

67:                                               ; preds = %63
  %68 = load ptr, ptr %9, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !10

70:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.file_lock_operations, ptr %73, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void %77(ptr noundef nonnull %5) #13
  br label %80

80:                                               ; preds = %79, %75
  store ptr null, ptr %72, align 4
  br label %81

81:                                               ; preds = %80, %71
  %82 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 18
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.lock_manager_operations, ptr %83, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.file_lock, ptr %5, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  tail call void %87(ptr noundef %91) #13
  store ptr null, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %85
  store ptr null, ptr %82, align 8
  br label %93

93:                                               ; preds = %92, %81
  %94 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %94, ptr noundef nonnull %5) #13
  br label %95

95:                                               ; preds = %93, %3
  %96 = phi i32 [ %50, %93 ], [ -12, %3 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @flock64_to_posix_lock(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.flock64, ptr %2, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  switch i32 %6, label %79 [
    i32 0, label %28
    i32 1, label %7
    i32 2, label %10
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %9 = load i64, ptr %8, align 8
  br label %28

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 22
  %14 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  br label %15

15:                                               ; preds = %23, %10
  %16 = load volatile i32, ptr %13, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !65
  %20 = load volatile i32, ptr %13, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %16, %15 ], [ %20, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !66
  %25 = load i64, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %26 = load volatile i32, ptr %13, align 4
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %28, label %15

28:                                               ; preds = %23, %7, %3
  %29 = phi i64 [ %9, %7 ], [ 0, %3 ], [ %25, %23 ]
  %30 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.flock64, ptr %2, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %34 = sub i64 9223372036854775807, %29
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %79, label %36

36:                                               ; preds = %28
  %37 = add i64 %29, %32
  store i64 %37, ptr %33, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %79, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.flock64, ptr %2, i32 0, i32 3
  %41 = load i64, ptr %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %41, -1
  %45 = sub nuw nsw i64 9223372036854775807, %37
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %79, label %47

47:                                               ; preds = %43
  %48 = add nuw i64 %44, %37
  %49 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  store i64 %48, ptr %49, align 8
  br label %62

50:                                               ; preds = %39
  %51 = icmp slt i64 %41, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %50
  %53 = add nsw i64 %41, %37
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %52
  %56 = add nsw i64 %37, -1
  %57 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  store i64 %56, ptr %57, align 8
  %58 = load i64, ptr %40, align 8
  %59 = add i64 %58, %37
  store i64 %59, ptr %33, align 8
  br label %62

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  store i64 9223372036854775807, ptr %61, align 8
  br label %62

62:                                               ; preds = %60, %55, %47
  %63 = tail call ptr @llvm.thread.pointer() #13
  %64 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 90
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 53
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  store ptr %0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  store i32 1, ptr %71, align 8
  %72 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 17
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 18
  store ptr null, ptr %73, align 8
  %74 = load i16, ptr %2, align 8
  %75 = icmp ult i16 %74, 3
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = trunc i16 %74 to i8
  %78 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  store i8 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %62, %52, %43, %36, %28, %3
  %80 = phi i32 [ -22, %3 ], [ -75, %28 ], [ -22, %36 ], [ -75, %43 ], [ -22, %52 ], [ 0, %76 ], [ -22, %62 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @posix_lock_to_flock64(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = tail call ptr @task_active_pid_ns(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %4, @init_pid_ns
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %16 = load i32, ptr %10, align 8
  %17 = tail call ptr @find_pid_ns(i32 noundef %16, ptr noundef nonnull @init_pid_ns) #13
  %18 = tail call i32 @pid_nr_ns(ptr noundef %17, ptr noundef %4) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !60
  br label %19

19:                                               ; preds = %15, %13, %9, %2
  %20 = phi i32 [ %18, %15 ], [ -1, %2 ], [ 0, %9 ], [ %11, %13 ]
  %21 = getelementptr inbounds %struct.flock64, ptr %0, i32 0, i32 4
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.flock64, ptr %0, i32 0, i32 2
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 9223372036854775807
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i64, ptr %22, align 8
  %30 = add nsw i64 %26, 1
  %31 = sub i64 %30, %29
  br label %32

32:                                               ; preds = %28, %19
  %33 = phi i64 [ %31, %28 ], [ 0, %19 ]
  %34 = getelementptr inbounds %struct.flock64, ptr %0, i32 0, i32 3
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.flock64, ptr %0, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_setlk64(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @filelock_cache, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %149, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 2, i32 1
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 4
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 4, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %18 = tail call fastcc i32 @flock64_to_posix_lock(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %103

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 7
  %22 = load i8, ptr %21, align 4
  switch i8 %22, label %37 [
    i8 0, label %23
    i8 1, label %30
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %103, label %37

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %103, label %37

37:                                               ; preds = %30, %23, %20
  switch i32 %2, label %63 [
    i32 37, label %41
    i32 38, label %50
    i32 14, label %38
  ]

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 6
  %40 = load i32, ptr %39, align 8
  br label %59

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.flock64, ptr %3, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = or i32 %47, 1024
  store i32 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 5
  store ptr %1, ptr %49, align 4
  br label %63

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.flock64, ptr %3, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %103

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 6
  %56 = load i32, ptr %55, align 8
  %57 = or i32 %56, 1024
  %58 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 5
  store ptr %1, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %38
  %60 = phi i32 [ %40, %38 ], [ %57, %54 ]
  %61 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 6
  %62 = or i32 %60, 128
  store i32 %62, ptr %61, align 8
  br label %63

63:                                               ; preds = %59, %45, %37
  %64 = phi i32 [ %2, %37 ], [ 14, %59 ], [ 13, %45 ]
  %65 = tail call fastcc i32 @do_lock_file_wait(ptr noundef %1, i32 noundef %64, ptr noundef nonnull %6)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load i8, ptr %21, align 4
  %69 = icmp eq i8 %68, 2
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 6
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %70
  %76 = tail call ptr @llvm.thread.pointer() #13
  %77 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 90
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.files_struct, ptr %78, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %79) #13
  %80 = getelementptr inbounds %struct.files_struct, ptr %78, i32 0, i32 3
  %81 = load volatile ptr, ptr %80, align 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, %0
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %82) #13, !srcloc !61
  %86 = and i32 %85, %0
  %87 = getelementptr inbounds %struct.fdtable, ptr %81, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr ptr, ptr %88, i32 %86
  %90 = load volatile ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %84, %75
  %92 = phi ptr [ %90, %84 ], [ null, %75 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %93 = load i16, ptr %79, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %95 = icmp eq ptr %92, %1
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  store i8 2, ptr %21, align 4
  %97 = tail call fastcc i32 @do_lock_file_wait(ptr noundef %1, i32 noundef %64, ptr noundef nonnull %6)
  %98 = icmp ne i32 %97, 0
  %99 = load i1, ptr @fcntl_setlk64.__already_done, align 1
  %100 = xor i1 %99, true
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %103, !prof !11

102:                                              ; preds = %96
  store i1 true, ptr @fcntl_setlk64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2502, i32 noundef 9, ptr noundef null) #13
  br label %103

103:                                              ; preds = %102, %96, %91, %70, %67, %63, %50, %41, %30, %23, %8
  %104 = phi i32 [ %18, %8 ], [ %65, %63 ], [ 0, %70 ], [ 0, %67 ], [ -22, %50 ], [ -22, %41 ], [ 0, %91 ], [ -9, %102 ], [ -9, %96 ], [ -9, %23 ], [ -9, %30 ]
  %105 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 10, i32 1
  %106 = load volatile ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %109, label %108, !prof !10

108:                                              ; preds = %103
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

109:                                              ; preds = %103
  %110 = load volatile ptr, ptr %11, align 4
  %111 = icmp eq ptr %110, %11
  br i1 %111, label %113, label %112, !prof !10

112:                                              ; preds = %109
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

113:                                              ; preds = %109
  %114 = load volatile ptr, ptr %13, align 4
  %115 = icmp eq ptr %114, %13
  br i1 %115, label %117, label %116, !prof !10

116:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

117:                                              ; preds = %113
  %118 = load volatile ptr, ptr %15, align 4
  %119 = icmp eq ptr %118, %15
  br i1 %119, label %121, label %120, !prof !10

120:                                              ; preds = %117
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

121:                                              ; preds = %117
  %122 = load ptr, ptr %10, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124, !prof !10

124:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 17
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.file_lock_operations, ptr %127, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void %131(ptr noundef nonnull %6) #13
  br label %134

134:                                              ; preds = %133, %129
  store ptr null, ptr %126, align 4
  br label %135

135:                                              ; preds = %134, %125
  %136 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 18
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.lock_manager_operations, ptr %137, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.file_lock, ptr %6, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  tail call void %141(ptr noundef %145) #13
  store ptr null, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %139
  store ptr null, ptr %136, align 8
  br label %147

147:                                              ; preds = %146, %135
  %148 = load ptr, ptr @filelock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %148, ptr noundef nonnull %6) #13
  br label %149

149:                                              ; preds = %147, %4
  %150 = phi i32 [ %104, %147 ], [ -37, %4 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_remove_posix(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.file_lock, align 8
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 40
  %7 = load volatile ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %77, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %77, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false) #13
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 3
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 3, i32 1
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 4
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 4, i32 1
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %20, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %21 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 7
  store i8 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 6
  store i32 65, ptr %22, align 8
  %23 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 12
  store i64 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 13
  store i64 9223372036854775807, ptr %24, align 8
  %25 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 5
  store ptr %1, ptr %25, align 4
  %26 = tail call ptr @llvm.thread.pointer() #13
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 53
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 8
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 11
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 17
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 18
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %13
  %39 = call i32 %36(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %3) #13
  br label %43

40:                                               ; preds = %13
  %41 = load ptr, ptr %4, align 8
  %42 = call fastcc i32 @posix_lock_inode(ptr noundef %41, ptr noundef nonnull %3, ptr noundef null) #13
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ]
  %45 = load ptr, ptr %31, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.file_lock_operations, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void %49(ptr noundef nonnull %3) #13
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_locks_remove_posix, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %55
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  %66 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_locks_remove_posix, i32 0, i32 7), align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %68, %65
  %69 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %70 = load volatile ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tracepoint_func, ptr %69, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  call void %70(ptr noundef %72, ptr noundef %5, ptr noundef nonnull %3, i32 noundef %44) #13
  %73 = getelementptr %struct.tracepoint_func, ptr %69, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68

76:                                               ; preds = %68, %65
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  br label %77

77:                                               ; preds = %76, %55, %52, %9, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_remove_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.file_lock, align 8
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 40
  %7 = load volatile ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %255, label %9

9:                                                ; preds = %1
  tail call void @locks_remove_posix(ptr noundef %0, ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %49, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false) #13
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 3
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 4
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 4, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %21, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  %22 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 11
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 5
  store ptr %0, ptr %23, align 4
  %24 = tail call ptr @llvm.thread.pointer() #13
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 53
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 8
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 6
  %29 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 7
  store i8 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 13
  store i64 9223372036854775807, ptr %30, align 8
  store i32 66, ptr %28, align 8
  %31 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.file_operations, ptr %32, i32 0, i32 23
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %14
  %37 = call i32 %34(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %3) #13
  br label %40

38:                                               ; preds = %14
  %39 = call fastcc i32 @flock_lock_inode(ptr noundef %10, ptr noundef nonnull %3) #13
  br label %40

40:                                               ; preds = %38, %36
  %41 = getelementptr inbounds %struct.file_lock, ptr %3, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file_lock_operations, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void %46(ptr noundef nonnull %3) #13
  br label %49

49:                                               ; preds = %48, %44, %40, %9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %155, label %54

54:                                               ; preds = %49
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %55 = load volatile i32, ptr @file_rwsem, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68, !prof !10

57:                                               ; preds = %54
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %59 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = call i32 @llvm.read_register.i32(metadata !0) #13
  %62 = inttoptr i32 %61 to ptr
  %63 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #8, !srcloc !12
  %64 = add i32 %63, %60
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #13, !srcloc !29
  br label %70

68:                                               ; preds = %54
  %69 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %70

70:                                               ; preds = %68, %57
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %7) #13
  %71 = load ptr, ptr %51, align 4
  %72 = icmp eq ptr %71, %51
  br i1 %72, label %126, label %73

73:                                               ; preds = %124, %70
  %74 = phi ptr [ %76, %124 ], [ %71, %70 ]
  %75 = getelementptr i8, ptr %74, i32 -4
  %76 = load ptr, ptr %74, align 4
  %77 = getelementptr i8, ptr %74, i32 64
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %80, label %124

80:                                               ; preds = %73
  %81 = getelementptr i8, ptr %74, i32 40
  store i8 2, ptr %81, align 4
  %82 = getelementptr i8, ptr %74, i32 36
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, -769
  store i32 %84, ptr %82, align 8
  call fastcc void @locks_wake_up_blocks(ptr noundef %75) #13
  %85 = load ptr, ptr %77, align 4
  call void @f_delown(ptr noundef %85) #13
  %86 = getelementptr inbounds %struct.file, ptr %85, i32 0, i32 11, i32 5
  store i32 0, ptr %86, align 4
  %87 = load ptr, ptr %77, align 4
  %88 = getelementptr i8, ptr %74, i32 84
  %89 = call i32 @fasync_helper(i32 noundef 0, ptr noundef %87, i32 noundef 0, ptr noundef %88) #13
  %90 = load ptr, ptr %88, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %80
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %90) #14
  store ptr null, ptr %88, align 8
  br label %94

94:                                               ; preds = %92, %80
  %95 = getelementptr i8, ptr %74, i32 8
  %96 = getelementptr i8, ptr %74, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %117, label %99

99:                                               ; preds = %94
  %100 = getelementptr i8, ptr %74, i32 48
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, ptrtoint (ptr @file_lock_list to i32)
  %105 = inttoptr i32 %104 to ptr
  call void @_raw_spin_lock(ptr noundef %105) #13
  %106 = load ptr, ptr %96, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = load ptr, ptr %95, align 4
  store volatile ptr %109, ptr %106, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.hlist_node, ptr %109, i32 0, i32 1
  store volatile ptr %106, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %108
  store ptr null, ptr %95, align 4
  store ptr null, ptr %96, align 4
  br label %114

114:                                              ; preds = %113, %99
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %115 = load i16, ptr %105, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %105, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %117

117:                                              ; preds = %114, %94
  %118 = getelementptr i8, ptr %74, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %74, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 4
  store volatile ptr %120, ptr %119, align 4
  store volatile ptr %74, ptr %74, align 4
  store ptr %74, ptr %118, align 4
  call fastcc void @locks_wake_up_blocks(ptr noundef %75) #13
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %74, ptr %123, align 4
  store ptr %122, ptr %74, align 4
  store ptr %2, ptr %118, align 4
  store volatile ptr %74, ptr %2, align 8
  br label %124

124:                                              ; preds = %117, %73
  %125 = icmp eq ptr %76, %51
  br i1 %125, label %126, label %73

126:                                              ; preds = %124, %70
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %127 = load i16, ptr %7, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %129 = load volatile i32, ptr @file_rwsem, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %142, !prof !10

131:                                              ; preds = %126
  %132 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %133 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = call i32 @llvm.read_register.i32(metadata !0) #13
  %136 = inttoptr i32 %135 to ptr
  %137 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #8, !srcloc !12
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, -1
  store i32 %141, ptr %139, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %132) #13, !srcloc !29
  br label %154

142:                                              ; preds = %126
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %143 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %144 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = call i32 @llvm.read_register.i32(metadata !0) #13
  %147 = inttoptr i32 %146 to ptr
  %148 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %147) #8, !srcloc !12
  %149 = add i32 %148, %145
  %150 = inttoptr i32 %149 to ptr
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, -1
  store i32 %152, ptr %150, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %143) #13, !srcloc !29
  %153 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %154

154:                                              ; preds = %142, %131
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  call fastcc void @locks_dispose_list(ptr noundef nonnull %2) #13
  br label %155

155:                                              ; preds = %154, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @_raw_spin_lock(ptr noundef nonnull %7) #13
  %156 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %156
  br i1 %158, label %188, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %4, align 8
  %161 = getelementptr inbounds %struct.inode, ptr %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.inode, ptr %160, i32 0, i32 10
  br label %163

163:                                              ; preds = %185, %159
  %164 = phi ptr [ %157, %159 ], [ %186, %185 ]
  %165 = getelementptr i8, ptr %164, i32 64
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, %0
  br i1 %167, label %168, label %185

168:                                              ; preds = %163
  %169 = load ptr, ptr %161, align 4
  %170 = getelementptr inbounds %struct.super_block, ptr %169, i32 0, i32 1
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 20
  %173 = and i32 %171, 1048575
  %174 = load i32, ptr %162, align 4
  %175 = getelementptr i8, ptr %164, i32 32
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr i8, ptr %164, i32 36
  %178 = load i32, ptr %177, align 8
  %179 = getelementptr i8, ptr %164, i32 40
  %180 = load i8, ptr %179, align 4
  %181 = zext i8 %180 to i32
  %182 = getelementptr i8, ptr %164, i32 44
  %183 = load i32, ptr %182, align 8
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.2, i32 noundef %172, i32 noundef %173, i32 noundef %174, ptr noundef %176, i32 noundef %178, i32 noundef %181, i32 noundef %183) #14
  br label %185

185:                                              ; preds = %168, %163
  %186 = load ptr, ptr %164, align 4
  %187 = icmp eq ptr %186, %156
  br i1 %187, label %188, label %163

188:                                              ; preds = %185, %155
  %189 = load ptr, ptr %11, align 4
  %190 = icmp eq ptr %189, %11
  br i1 %190, label %220, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %4, align 8
  %193 = getelementptr inbounds %struct.inode, ptr %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.inode, ptr %192, i32 0, i32 10
  br label %195

195:                                              ; preds = %217, %191
  %196 = phi ptr [ %189, %191 ], [ %218, %217 ]
  %197 = getelementptr i8, ptr %196, i32 64
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, %0
  br i1 %199, label %200, label %217

200:                                              ; preds = %195
  %201 = load ptr, ptr %193, align 4
  %202 = getelementptr inbounds %struct.super_block, ptr %201, i32 0, i32 1
  %203 = load i32, ptr %202, align 8
  %204 = lshr i32 %203, 20
  %205 = and i32 %203, 1048575
  %206 = load i32, ptr %194, align 4
  %207 = getelementptr i8, ptr %196, i32 32
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr i8, ptr %196, i32 36
  %210 = load i32, ptr %209, align 8
  %211 = getelementptr i8, ptr %196, i32 40
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i32
  %214 = getelementptr i8, ptr %196, i32 44
  %215 = load i32, ptr %214, align 8
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.3, i32 noundef %204, i32 noundef %205, i32 noundef %206, ptr noundef %208, i32 noundef %210, i32 noundef %213, i32 noundef %215) #14
  br label %217

217:                                              ; preds = %200, %195
  %218 = load ptr, ptr %196, align 4
  %219 = icmp eq ptr %218, %11
  br i1 %219, label %220, label %195

220:                                              ; preds = %217, %188
  %221 = load ptr, ptr %51, align 4
  %222 = icmp eq ptr %221, %51
  br i1 %222, label %252, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr %4, align 8
  %225 = getelementptr inbounds %struct.inode, ptr %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.inode, ptr %224, i32 0, i32 10
  br label %227

227:                                              ; preds = %249, %223
  %228 = phi ptr [ %221, %223 ], [ %250, %249 ]
  %229 = getelementptr i8, ptr %228, i32 64
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, %0
  br i1 %231, label %232, label %249

232:                                              ; preds = %227
  %233 = load ptr, ptr %225, align 4
  %234 = getelementptr inbounds %struct.super_block, ptr %233, i32 0, i32 1
  %235 = load i32, ptr %234, align 8
  %236 = lshr i32 %235, 20
  %237 = and i32 %235, 1048575
  %238 = load i32, ptr %226, align 4
  %239 = getelementptr i8, ptr %228, i32 32
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr i8, ptr %228, i32 36
  %242 = load i32, ptr %241, align 8
  %243 = getelementptr i8, ptr %228, i32 40
  %244 = load i8, ptr %243, align 4
  %245 = zext i8 %244 to i32
  %246 = getelementptr i8, ptr %228, i32 44
  %247 = load i32, ptr %246, align 8
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.4, i32 noundef %236, i32 noundef %237, i32 noundef %238, ptr noundef %240, i32 noundef %242, i32 noundef %245, i32 noundef %247) #14
  br label %249

249:                                              ; preds = %232, %227
  %250 = load ptr, ptr %228, align 4
  %251 = icmp eq ptr %250, %51
  br i1 %251, label %252, label %227

252:                                              ; preds = %249, %220
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %253 = load i16, ptr %7, align 4
  %254 = add i16 %253, 1
  store i16 %254, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %255

255:                                              ; preds = %252, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_cancel_lock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_operations, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef 1029, ptr noundef %1) #13
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_fd_locks(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 40
  %7 = load volatile ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %86, label %9

9:                                                ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull %7) #13
  %10 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %33, label %13

13:                                               ; preds = %29, %9
  %14 = phi i32 [ %30, %29 ], [ 0, %9 ]
  %15 = phi ptr [ %31, %29 ], [ %11, %9 ]
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = getelementptr i8, ptr %15, i32 64
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %15, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %2
  %24 = icmp eq ptr %22, %1
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = add i32 %14, 1
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.73) #13
  %28 = sext i32 %27 to i64
  tail call fastcc void @lock_get_status(ptr noundef %0, ptr noundef %16, i64 noundef %28, ptr noundef nonnull @.str.74, i32 noundef 0) #13
  br label %29

29:                                               ; preds = %26, %20, %13
  %30 = phi i32 [ %27, %26 ], [ %14, %20 ], [ %14, %13 ]
  %31 = load ptr, ptr %15, align 4
  %32 = icmp eq ptr %31, %10
  br i1 %32, label %33, label %13

33:                                               ; preds = %29, %9
  %34 = phi i32 [ 0, %9 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %58, label %38

38:                                               ; preds = %54, %33
  %39 = phi i32 [ %55, %54 ], [ %34, %33 ]
  %40 = phi ptr [ %56, %54 ], [ %36, %33 ]
  %41 = getelementptr i8, ptr %40, i32 -4
  %42 = getelementptr i8, ptr %40, i32 64
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %40, i32 32
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %2
  %49 = icmp eq ptr %47, %1
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = add i32 %39, 1
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.73) #13
  %53 = sext i32 %52 to i64
  tail call fastcc void @lock_get_status(ptr noundef %0, ptr noundef %41, i64 noundef %53, ptr noundef nonnull @.str.74, i32 noundef 0) #13
  br label %54

54:                                               ; preds = %51, %45, %38
  %55 = phi i32 [ %52, %51 ], [ %39, %45 ], [ %39, %38 ]
  %56 = load ptr, ptr %40, align 4
  %57 = icmp eq ptr %56, %35
  br i1 %57, label %58, label %38

58:                                               ; preds = %54, %33
  %59 = phi i32 [ %34, %33 ], [ %55, %54 ]
  %60 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %83, label %63

63:                                               ; preds = %79, %58
  %64 = phi i32 [ %80, %79 ], [ %59, %58 ]
  %65 = phi ptr [ %81, %79 ], [ %61, %58 ]
  %66 = getelementptr i8, ptr %65, i32 -4
  %67 = getelementptr i8, ptr %65, i32 64
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = getelementptr i8, ptr %65, i32 32
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %2
  %74 = icmp eq ptr %72, %1
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = add i32 %64, 1
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.73) #13
  %78 = sext i32 %77 to i64
  tail call fastcc void @lock_get_status(ptr noundef %0, ptr noundef %66, i64 noundef %78, ptr noundef nonnull @.str.74, i32 noundef 0) #13
  br label %79

79:                                               ; preds = %76, %70, %63
  %80 = phi i32 [ %77, %76 ], [ %64, %70 ], [ %64, %63 ]
  %81 = load ptr, ptr %65, align 4
  %82 = icmp eq ptr %81, %60
  br i1 %82, label %83, label %63

83:                                               ; preds = %79, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %84 = load i16, ptr %7, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %86

86:                                               ; preds = %83, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_locks_init() #3 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.99, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @locks_seq_operations, i32 noundef 16, ptr noundef null) #13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @filelock_init() #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.101, i32 noundef 28, i32 noundef 0, i32 noundef 262144, ptr noundef null) #13
  store ptr %1, ptr @flctx_cache, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.102, i32 noundef 128, i32 noundef 0, i32 noundef 262144, ptr noundef null) #13
  store ptr %2, ptr @filelock_cache, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %6, %0
  %7 = phi i32 [ %13, %6 ], [ %3, %0 ]
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @file_lock_list to i32)
  %11 = inttoptr i32 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file_lock_list_struct, ptr %11, i32 0, i32 1
  store ptr null, ptr %12, align 4
  %13 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #15
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %6, label %16

16:                                               ; preds = %6, %0
  tail call void @srcu_init_notifier_head(ptr noundef nonnull @lease_notifier_chain) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_locks_get_lock_context(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 20
  %14 = and i32 %12, 1048575
  %15 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %5, i32 0, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_locks_get_lock_context.symbols) #13
  %21 = getelementptr inbounds %struct.trace_event_raw_locks_get_lock_context, ptr %5, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %13, i32 noundef %14, i32 noundef %16, ptr noundef %20, ptr noundef %22) #13
  %23 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_filelock_lock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 20
  %16 = and i32 %14, 1048575
  %17 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 7
  %26 = load i32, ptr %25, align 8
  %27 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %26, ptr noundef nonnull @trace_raw_output_filelock_lock.__flags) #13
  %28 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 8
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %30, ptr noundef nonnull @trace_raw_output_filelock_lock.symbols) #13
  %32 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 9
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 10
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_filelock_lock, ptr %5, i32 0, i32 11
  %37 = load i32, ptr %36, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %12, i32 noundef %15, i32 noundef %16, i32 noundef %18, ptr noundef %20, ptr noundef %22, i32 noundef %24, ptr noundef %27, ptr noundef %31, i64 noundef %33, i64 noundef %35, i32 noundef %37) #13
  %38 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %39

39:                                               ; preds = %8, %3
  %40 = phi i32 [ %38, %8 ], [ %6, %3 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_filelock_lease(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 20
  %16 = and i32 %14, 1048575
  %17 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %24, ptr noundef nonnull @trace_raw_output_filelock_lease.__flags) #13
  %26 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %28, ptr noundef nonnull @trace_raw_output_filelock_lease.symbols) #13
  %30 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_filelock_lease, ptr %5, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %12, i32 noundef %15, i32 noundef %16, i32 noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef %25, ptr noundef %29, i32 noundef %31, i32 noundef %33) #13
  %34 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %35

35:                                               ; preds = %8, %3
  %36 = phi i32 [ %34, %8 ], [ %6, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_generic_add_lease(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 20
  %14 = and i32 %12, 1048575
  %15 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %26, ptr noundef nonnull @trace_raw_output_generic_add_lease.__flags) #13
  %28 = getelementptr inbounds %struct.trace_event_raw_generic_add_lease, ptr %5, i32 0, i32 8
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %30, ptr noundef nonnull @trace_raw_output_generic_add_lease.symbols) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %24, ptr noundef %27, ptr noundef %31) #13
  %32 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %33

33:                                               ; preds = %8, %3
  %34 = phi i32 [ %32, %8 ], [ %6, %3 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_leases_conflict(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 7
  %12 = load i8, ptr %11, align 2, !range !73
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %17, ptr noundef nonnull @trace_raw_output_leases_conflict.__flags) #13
  %19 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %21, ptr noundef nonnull @trace_raw_output_leases_conflict.symbols) #13
  %23 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %26, ptr noundef nonnull @trace_raw_output_leases_conflict.__flags.61) #13
  %28 = getelementptr inbounds %struct.trace_event_raw_leases_conflict, ptr %5, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %30, ptr noundef nonnull @trace_raw_output_leases_conflict.symbols.62) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %13, ptr noundef %15, ptr noundef %18, ptr noundef %22, ptr noundef %24, ptr noundef %27, ptr noundef %31) #13
  %32 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %33

33:                                               ; preds = %8, %3
  %34 = phi i32 [ %32, %8 ], [ %6, %3 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_dump_ctx_list(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %19, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %17, %5 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 36
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %6, i32 40
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %6, i32 44
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %1, ptr noundef %8, i32 noundef %10, i32 noundef %13, i32 noundef %15) #14
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %5

19:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @locks_get_lock_context(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %4 = load volatile ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %30, !prof !11

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 2
  br i1 %7, label %30, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr @flctx_cache, align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  store i32 0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.file_lock_context, ptr %10, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file_lock_context, ptr %10, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.file_lock_context, ptr %10, i32 0, i32 2
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_lock_context, ptr %10, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.file_lock_context, ptr %10, i32 0, i32 3
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.file_lock_context, ptr %10, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !75
  %19 = ptrtoint ptr %10 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #13, !srcloc !76
  br label %20

20:                                               ; preds = %20, %12
  %21 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 %19) #13, !srcloc !77
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !78
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @flctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef nonnull %10) #13
  %29 = load volatile ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !79
  br label %30

30:                                               ; preds = %27, %24, %8, %6, %2
  %31 = phi ptr [ %4, %2 ], [ null, %6 ], [ %29, %27 ], [ %10, %24 ], [ null, %8 ]
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_locks_get_lock_context, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
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
  br i1 %44, label %57, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %46 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_locks_get_lock_context, i32 0, i32 7), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %53, %48 ], [ %46, %45 ]
  %50 = load volatile ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tracepoint_func, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %50(ptr noundef %52, ptr noundef %0, i32 noundef %1, ptr noundef %31) #13
  %53 = getelementptr %struct.tracepoint_func, ptr %49, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %48

56:                                               ; preds = %48, %45
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !81
  br label %57

57:                                               ; preds = %56, %34, %30
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__locks_insert_block(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 746, 0\0A.popsection", ""() #13, !srcloc !82
  unreachable

8:                                                ; preds = %15, %3
  %9 = phi ptr [ %0, %3 ], [ %16, %15 ]
  %10 = getelementptr inbounds %struct.file_lock, ptr %9, i32 0, i32 3
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -28
  %17 = tail call zeroext i1 %2(ptr noundef %16, ptr noundef %1) #13, !callees !83
  br i1 %17, label %8, label %11

18:                                               ; preds = %11
  store ptr %9, ptr %1, align 8
  %19 = getelementptr inbounds %struct.file_lock, ptr %9, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %4, ptr %19, align 4
  store ptr %10, ptr %4, align 4
  %21 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 4, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %4, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file_lock, ptr %9, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1025
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = mul i32 %30, 1640531527
  %32 = lshr i32 %31, 25
  %33 = getelementptr [128 x %struct.hlist_head], ptr @blocked_hash, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  store volatile ptr %34, ptr %27, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  store volatile ptr %27, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %26
  store volatile ptr %27, ptr %33, align 4
  %39 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 2, i32 1
  store volatile ptr %33, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %18
  %41 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 3
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %75, label %44

44:                                               ; preds = %72, %40
  %45 = phi ptr [ %73, %72 ], [ %42, %40 ]
  %46 = getelementptr i8, ptr %45, i32 -28
  %47 = getelementptr i8, ptr %45, i32 -16
  %48 = getelementptr i8, ptr %45, i32 -12
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %47, align 4
  store volatile ptr %52, ptr %49, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  store volatile ptr %49, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  store ptr null, ptr %47, align 4
  store ptr null, ptr %48, align 4
  br label %57

57:                                               ; preds = %56, %44
  %58 = getelementptr i8, ptr %45, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %45, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store volatile ptr %45, ptr %45, align 4
  store ptr %45, ptr %58, align 4
  %62 = getelementptr i8, ptr %45, i32 76
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.lock_manager_operations, ptr %63, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void %67(ptr noundef %46) #13
  br label %72

70:                                               ; preds = %65, %57
  %71 = getelementptr i8, ptr %45, i32 28
  tail call void @__wake_up(ptr noundef %71, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %72

72:                                               ; preds = %70, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  store volatile ptr null, ptr %46, align 8
  %73 = load volatile ptr, ptr %41, align 4
  %74 = icmp eq ptr %73, %41
  br i1 %74, label %75, label %44

75:                                               ; preds = %72, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_insert_lock_ctx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %3, ptr %4, align 4
  store ptr %1, ptr %3, align 4
  %6 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  store volatile ptr %3, ptr %5, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = add i32 %9, ptrtoint (ptr @file_lock_list to i32)
  %11 = inttoptr i32 %10 to ptr
  tail call void @_raw_spin_lock(ptr noundef %11) #13
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 9
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.file_lock_list_struct, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store volatile ptr %18, ptr %16, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %16, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %2
  store volatile ptr %16, ptr %17, align 4
  %23 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %17, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %24 = load i16, ptr %11, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @locks_unlink_lock_ctx(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @file_lock_list to i32)
  %12 = inttoptr i32 %11 to ptr
  tail call void @_raw_spin_lock(ptr noundef %12) #13
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr %2, align 4
  store volatile ptr %16, ptr %13, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  store volatile ptr %13, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %15
  store ptr null, ptr %2, align 4
  store ptr null, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %22 = load i16, ptr %12, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %26, align 4
  tail call fastcc void @locks_wake_up_blocks(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @lease_break_callback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 14
  tail call void @kill_fasync(ptr noundef %2, i32 noundef 29, i32 noundef 3) #13
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lease_setup(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.fasync_struct, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 14
  %9 = tail call ptr @fasync_insert_entry(i32 noundef %7, ptr noundef %4, ptr noundef %8, ptr noundef %5) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store ptr null, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 62
  %15 = load ptr, ptr %14, align 64
  tail call void @__f_setown(ptr noundef %4, ptr noundef %15, i32 noundef 1, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fasync_insert_entry(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_setown(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @check_conflicting_open(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %2, 2052
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  switch i32 %1, label %31 [
    i32 0, label %9
    i32 1, label %14
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 37
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %12, i32 -11, i32 0
  br label %31

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 37
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = and i32 %16, 1
  %26 = select i1 %18, i32 %25, i32 0
  %27 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %26
  %30 = select i1 %29, i32 0, i32 -11
  br label %31

31:                                               ; preds = %24, %14, %9, %8, %3
  %32 = phi i32 [ %13, %9 ], [ 0, %3 ], [ 0, %8 ], [ -11, %14 ], [ %30, %24 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fasync_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fasync_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @flock_lock_inode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = call fastcc ptr @locks_get_lock_context(ptr noundef %0, i32 noundef %7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i8, ptr %5, align 4
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %309

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -2
  br label %309

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i8, ptr %5, align 4
  %26 = icmp eq i8 %25, 2
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @filelock_cache, align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 3520) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %309, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 2
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 2, i32 1
  store ptr null, ptr %33, align 8
  %34 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 1
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 1, i32 1
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 3
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 3, i32 1
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 4
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 4, i32 1
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.file_lock, ptr %29, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %40, ptr noundef nonnull @.str.69, ptr noundef nonnull @locks_init_lock_heads.__key) #13
  br label %41

41:                                               ; preds = %31, %24, %19
  %42 = phi ptr [ null, %19 ], [ %29, %31 ], [ null, %24 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %43 = load volatile i32, ptr @file_rwsem, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56, !prof !10

45:                                               ; preds = %41
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %47 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = call i32 @llvm.read_register.i32(metadata !0) #13
  %50 = inttoptr i32 %49 to ptr
  %51 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #8, !srcloc !12
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #13, !srcloc !29
  br label %58

56:                                               ; preds = %41
  %57 = call zeroext i1 @__percpu_down_read(ptr noundef nonnull @file_rwsem, i1 noundef zeroext false) #13
  br label %58

58:                                               ; preds = %56, %45
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @_raw_spin_lock(ptr noundef nonnull %8) #13
  %59 = load i32, ptr %20, align 8
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %119

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 1
  %64 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  br label %65

65:                                               ; preds = %69, %62
  %66 = phi ptr [ %63, %62 ], [ %67, %69 ]
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %63
  br i1 %68, label %110, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %64, align 4
  %71 = getelementptr i8, ptr %67, i32 64
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %65

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %67, i32 -4
  %76 = load i8, ptr %5, align 4
  %77 = getelementptr i8, ptr %67, i32 40
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %76, %78
  br i1 %79, label %202, label %80

80:                                               ; preds = %74
  %81 = getelementptr i8, ptr %67, i32 8
  %82 = getelementptr i8, ptr %67, i32 12
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %103, label %85

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %67, i32 48
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, ptrtoint (ptr @file_lock_list to i32)
  %91 = inttoptr i32 %90 to ptr
  call void @_raw_spin_lock(ptr noundef %91) #13
  %92 = load ptr, ptr %82, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = load ptr, ptr %81, align 4
  store volatile ptr %95, ptr %92, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.hlist_node, ptr %95, i32 0, i32 1
  store volatile ptr %92, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %94
  store ptr null, ptr %81, align 4
  store ptr null, ptr %82, align 4
  br label %100

100:                                              ; preds = %99, %85
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %101 = load i16, ptr %91, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %91, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %103

103:                                              ; preds = %100, %80
  %104 = getelementptr i8, ptr %67, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %67, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %107, align 4
  store volatile ptr %106, ptr %105, align 4
  store volatile ptr %67, ptr %67, align 4
  store ptr %67, ptr %104, align 4
  call fastcc void @locks_wake_up_blocks(ptr noundef %75) #13
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  store ptr %67, ptr %109, align 4
  store ptr %108, ptr %67, align 4
  store ptr %3, ptr %104, align 4
  store volatile ptr %67, ptr %3, align 8
  br label %110

110:                                              ; preds = %103, %65
  %111 = load i8, ptr %5, align 4
  %112 = icmp eq i8 %111, 2
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, ptr %20, align 8
  %115 = and i32 %114, 16
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %68, i32 -2, i32 0
  %118 = select i1 %116, i32 0, i32 %117
  br label %202

119:                                              ; preds = %110, %58
  %120 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, %120
  br i1 %122, label %149, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  %125 = load ptr, ptr %124, align 4
  br label %126

126:                                              ; preds = %138, %123
  %127 = phi ptr [ %121, %123 ], [ %139, %138 ]
  %128 = getelementptr i8, ptr %127, i32 64
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %125, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = getelementptr i8, ptr %127, i32 40
  %133 = load i8, ptr %132, align 4
  %134 = icmp eq i8 %133, 1
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i8, ptr %5, align 4
  %137 = icmp eq i8 %136, 1
  br i1 %137, label %141, label %138

138:                                              ; preds = %135, %126
  %139 = load ptr, ptr %127, align 4
  %140 = icmp eq ptr %139, %120
  br i1 %140, label %149, label %126

141:                                              ; preds = %135, %131
  %142 = load i32, ptr %20, align 8
  %143 = and i32 %142, 128
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %202, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %127, i32 -4
  call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  call fastcc void @__locks_insert_block(ptr noundef %146, ptr noundef %1, ptr noundef nonnull @flock_locks_conflict) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %147 = load i16, ptr @blocked_lock_lock, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr @blocked_lock_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %202

149:                                              ; preds = %138, %119
  %150 = load i32, ptr %20, align 8
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %202

153:                                              ; preds = %149
  call void @locks_copy_lock(ptr noundef %42, ptr noundef %1)
  %154 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 3
  %155 = load volatile ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, %154
  br i1 %156, label %178, label %157

157:                                              ; preds = %153
  call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %158 = getelementptr inbounds %struct.file_lock, ptr %42, i32 0, i32 3
  %159 = load volatile ptr, ptr %154, align 4
  %160 = icmp eq ptr %159, %154
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %158, align 4
  %163 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 3, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %158, ptr %165, align 4
  store ptr %159, ptr %158, align 4
  store ptr %162, ptr %164, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %164, ptr %166, align 4
  store volatile ptr %154, ptr %154, align 4
  store ptr %154, ptr %163, align 4
  br label %167

167:                                              ; preds = %161, %157
  %168 = load ptr, ptr %158, align 4
  %169 = icmp eq ptr %168, %158
  br i1 %169, label %175, label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %173, %170 ], [ %168, %167 ]
  %172 = getelementptr i8, ptr %171, i32 -28
  store ptr %42, ptr %172, align 8
  %173 = load ptr, ptr %171, align 4
  %174 = icmp eq ptr %173, %158
  br i1 %174, label %175, label %170

175:                                              ; preds = %170, %167
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %176 = load i16, ptr @blocked_lock_lock, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr @blocked_lock_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %178

178:                                              ; preds = %175, %153
  %179 = getelementptr inbounds %struct.file_lock, ptr %42, i32 0, i32 1
  %180 = getelementptr inbounds %struct.file_lock_context, ptr %8, i32 0, i32 1, i32 1
  %181 = load ptr, ptr %180, align 4
  store ptr %179, ptr %180, align 4
  store ptr %120, ptr %179, align 4
  %182 = getelementptr inbounds %struct.file_lock, ptr %42, i32 0, i32 1, i32 1
  store ptr %181, ptr %182, align 8
  store volatile ptr %179, ptr %181, align 4
  %183 = call i32 @llvm.read_register.i32(metadata !0) #13
  %184 = inttoptr i32 %183 to ptr
  %185 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %184) #8, !srcloc !12
  %186 = add i32 %185, ptrtoint (ptr @file_lock_list to i32)
  %187 = inttoptr i32 %186 to ptr
  call void @_raw_spin_lock(ptr noundef %187) #13
  %188 = tail call ptr @llvm.thread.pointer() #13
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = getelementptr inbounds %struct.file_lock, ptr %42, i32 0, i32 9
  store i32 %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.file_lock, ptr %42, i32 0, i32 2
  %193 = getelementptr inbounds %struct.file_lock_list_struct, ptr %187, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  store volatile ptr %194, ptr %192, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %178
  %197 = getelementptr inbounds %struct.hlist_node, ptr %194, i32 0, i32 1
  store volatile ptr %192, ptr %197, align 4
  br label %198

198:                                              ; preds = %196, %178
  store volatile ptr %192, ptr %193, align 4
  %199 = getelementptr inbounds %struct.file_lock, ptr %42, i32 0, i32 2, i32 1
  store volatile ptr %193, ptr %199, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %200 = load i16, ptr %187, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %187, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %202

202:                                              ; preds = %198, %149, %145, %141, %113, %74
  %203 = phi i32 [ 1, %145 ], [ -11, %141 ], [ 0, %149 ], [ 0, %198 ], [ 0, %74 ], [ %118, %113 ]
  %204 = phi ptr [ %42, %145 ], [ %42, %141 ], [ %42, %149 ], [ null, %198 ], [ %42, %74 ], [ %42, %113 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %205 = load i16, ptr %8, align 4
  %206 = add i16 %205, 1
  store i16 %206, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %207 = load volatile i32, ptr @file_rwsem, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %220, !prof !10

209:                                              ; preds = %202
  %210 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %211 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %212 = ptrtoint ptr %211 to i32
  %213 = call i32 @llvm.read_register.i32(metadata !0) #13
  %214 = inttoptr i32 %213 to ptr
  %215 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %214) #8, !srcloc !12
  %216 = add i32 %215, %212
  %217 = inttoptr i32 %216 to ptr
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, -1
  store i32 %219, ptr %217, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %210) #13, !srcloc !29
  br label %232

220:                                              ; preds = %202
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %221 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !28
  %222 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 1), align 4
  %223 = ptrtoint ptr %222 to i32
  %224 = call i32 @llvm.read_register.i32(metadata !0) #13
  %225 = inttoptr i32 %224 to ptr
  %226 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %225) #8, !srcloc !12
  %227 = add i32 %226, %223
  %228 = inttoptr i32 %227 to ptr
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, -1
  store i32 %230, ptr %228, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %221) #13, !srcloc !29
  %231 = call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @file_rwsem, i32 0, i32 2)) #13
  br label %232

232:                                              ; preds = %220, %209
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  %233 = icmp eq ptr %204, null
  br i1 %233, label %283, label %234

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 10, i32 1
  %236 = load volatile ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, %235
  br i1 %237, label %239, label %238, !prof !10

238:                                              ; preds = %234
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 1
  %241 = load volatile ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, %240
  br i1 %242, label %244, label %243, !prof !10

243:                                              ; preds = %239
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 3
  %246 = load volatile ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, %245
  br i1 %247, label %249, label %248, !prof !10

248:                                              ; preds = %244
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 4
  %251 = load volatile ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, %250
  br i1 %252, label %254, label %253, !prof !10

253:                                              ; preds = %249
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 2, i32 1
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258, !prof !10

258:                                              ; preds = %254
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 17
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.file_lock_operations, ptr %261, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  call void %265(ptr noundef nonnull %204) #13
  br label %268

268:                                              ; preds = %267, %263
  store ptr null, ptr %260, align 4
  br label %269

269:                                              ; preds = %268, %259
  %270 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 18
  %271 = load ptr, ptr %270, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %281, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.lock_manager_operations, ptr %271, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.file_lock, ptr %204, i32 0, i32 5
  %279 = load ptr, ptr %278, align 4
  call void %275(ptr noundef %279) #13
  store ptr null, ptr %278, align 4
  br label %280

280:                                              ; preds = %277, %273
  store ptr null, ptr %270, align 8
  br label %281

281:                                              ; preds = %280, %269
  %282 = load ptr, ptr @filelock_cache, align 4
  call void @kmem_cache_free(ptr noundef %282, ptr noundef nonnull %204) #13
  br label %283

283:                                              ; preds = %281, %232
  call fastcc void @locks_dispose_list(ptr noundef nonnull %3)
  %284 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_flock_lock_inode, i32 0, i32 1), align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %309

286:                                              ; preds = %283
  %287 = tail call ptr @llvm.thread.pointer() #13
  %288 = getelementptr inbounds %struct.thread_info, ptr %287, i32 0, i32 2
  %289 = load i32, ptr %288, align 8
  %290 = lshr i32 %289, 5
  %291 = getelementptr i32, ptr @__cpu_online_mask, i32 %290
  %292 = load volatile i32, ptr %291, align 4
  %293 = and i32 %289, 31
  %294 = shl nuw i32 1, %293
  %295 = and i32 %294, %292
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %309, label %297

297:                                              ; preds = %286
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  %298 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_flock_lock_inode, i32 0, i32 7), align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %308, label %300

300:                                              ; preds = %300, %297
  %301 = phi ptr [ %305, %300 ], [ %298, %297 ]
  %302 = load volatile ptr, ptr %301, align 4
  %303 = getelementptr inbounds %struct.tracepoint_func, ptr %301, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  call void %302(ptr noundef %304, ptr noundef %0, ptr noundef %1, i32 noundef %203) #13
  %305 = getelementptr %struct.tracepoint_func, ptr %301, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %300

308:                                              ; preds = %300, %297
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  br label %309

309:                                              ; preds = %308, %286, %283, %27, %13, %10
  %310 = phi i32 [ %18, %13 ], [ -12, %10 ], [ %203, %283 ], [ %203, %286 ], [ %203, %308 ], [ -12, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %310
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @flock_locks_conflict(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 1
  br label %16

16:                                               ; preds = %12, %8, %2
  %17 = phi i1 [ false, %2 ], [ true, %8 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_get_status(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %14, @init_pid_ns
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %26 = load i32, ptr %20, align 8
  %27 = tail call ptr @find_pid_ns(i32 noundef %26, ptr noundef nonnull @init_pid_ns) #13
  %28 = tail call i32 @pid_nr_ns(ptr noundef %27, ptr noundef %14) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !60
  br label %29

29:                                               ; preds = %25, %23, %19, %5
  %30 = phi i32 [ %28, %25 ], [ -1, %5 ], [ 0, %19 ], [ %21, %23 ]
  %31 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ null, %29 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i64 noundef %2) #13
  %39 = icmp eq i32 %4, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = add i32 %4, -1
  %42 = tail call i32 @strlen(ptr noundef %3)
  %43 = add i32 %41, %42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %43, ptr noundef %3) #13
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, ptr %15, align 8
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = and i32 %45, 8
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %45, 1024
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @.str.79, ptr @.str.78
  %54 = select i1 %50, ptr %53, ptr @.str.77
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %54) #13
  %55 = icmp eq ptr %38, null
  %56 = select i1 %55, ptr @.str.81, ptr @.str.82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef nonnull %56) #13
  br label %78

57:                                               ; preds = %44
  %58 = and i32 %45, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.83) #13
  br label %78

61:                                               ; preds = %57
  %62 = and i32 %45, 2084
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = and i32 %45, 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr @.str.85, ptr @.str.84
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %67) #13
  %68 = load i32, ptr %15, align 8
  %69 = and i32 %68, 768
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.86) #13
  br label %78

72:                                               ; preds = %64
  %73 = load ptr, ptr %31, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.87) #13
  br label %78

76:                                               ; preds = %72
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.88) #13
  br label %78

77:                                               ; preds = %61
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.89) #13
  br label %78

78:                                               ; preds = %77, %76, %75, %71, %60, %48
  %79 = load i32, ptr %15, align 8
  %80 = and i32 %79, 2084
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = and i32 %79, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = and i32 %79, 256
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85, %78
  %89 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %90 = load i8, ptr %89, align 4
  %91 = icmp eq i8 %90, 1
  %92 = icmp eq i8 %90, 0
  %93 = select i1 %92, ptr @.str.92, ptr @.str.93
  %94 = select i1 %91, ptr @.str.91, ptr %93
  br label %95

95:                                               ; preds = %88, %85, %82
  %96 = phi ptr [ @.str.93, %82 ], [ @.str.92, %85 ], [ %94, %88 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef nonnull %96) #13
  %97 = icmp eq ptr %38, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 20
  %104 = and i32 %102, 1048575
  %105 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 10
  %106 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.94, i32 noundef %30, i32 noundef %103, i32 noundef %104, i32 noundef %106) #13
  br label %108

107:                                              ; preds = %95
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, i32 noundef %30) #13
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i32, ptr %15, align 8
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %114 = load i64, ptr %113, align 8
  %115 = icmp eq i64 %114, 9223372036854775807
  %116 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %117 = load i64, ptr %116, align 8
  br i1 %115, label %118, label %119

118:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.96, i64 noundef %117) #13
  br label %121

119:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.97, i64 noundef %117, i64 noundef %114) #13
  br label %121

120:                                              ; preds = %108
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.98) #13
  br label %121

121:                                              ; preds = %120, %119, %118
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @locks_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = add i64 %5, 1
  %7 = getelementptr inbounds %struct.locks_iterator, ptr %4, i32 0, i32 1
  store i64 %6, ptr %7, align 8
  tail call void @percpu_down_write(ptr noundef nonnull @file_rwsem) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @blocked_lock_lock) #13
  %8 = load i64, ptr %1, align 8
  %9 = tail call ptr @seq_hlist_start_percpu(ptr noundef getelementptr inbounds (%struct.file_lock_list_struct, ptr @file_lock_list, i32 0, i32 1), ptr noundef %4, i64 noundef %8) #13
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @locks_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %3 = load i16, ptr @blocked_lock_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @blocked_lock_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  tail call void @percpu_up_write(ptr noundef nonnull @file_rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @locks_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.locks_iterator, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  %9 = tail call ptr @seq_hlist_next_percpu(ptr noundef %1, ptr noundef getelementptr inbounds (%struct.file_lock_list_struct, ptr @file_lock_list, i32 0, i32 1), ptr noundef %5, ptr noundef %2) #13
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @locks_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 -12
  %15 = getelementptr i8, ptr %1, i32 28
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %1, i32 36
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %90, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %13, @init_pid_ns
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %26 = load i32, ptr %20, align 8
  %27 = tail call ptr @find_pid_ns(i32 noundef %26, ptr noundef nonnull @init_pid_ns) #13
  %28 = tail call i32 @pid_nr_ns(ptr noundef %27, ptr noundef %13) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !60
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq ptr %14, null
  %31 = or i1 %29, %30
  br i1 %31, label %90, label %34

32:                                               ; preds = %23, %2
  %33 = icmp eq ptr %14, null
  br i1 %33, label %90, label %34

34:                                               ; preds = %32, %25
  %35 = getelementptr inbounds %struct.locks_iterator, ptr %4, i32 0, i32 1
  br label %36

36:                                               ; preds = %86, %34
  %37 = phi ptr [ %14, %34 ], [ %88, %86 ]
  %38 = phi i32 [ 0, %34 ], [ %87, %86 ]
  %39 = icmp eq i32 %38, 0
  %40 = load i64, ptr %35, align 8
  br i1 %39, label %42, label %41

41:                                               ; preds = %36
  tail call fastcc void @lock_get_status(ptr noundef %0, ptr noundef nonnull %37, i64 noundef %40, ptr noundef nonnull @.str.100, i32 noundef %38)
  br label %43

42:                                               ; preds = %36
  tail call fastcc void @lock_get_status(ptr noundef %0, ptr noundef nonnull %37, i64 noundef %40, ptr noundef nonnull @.str.74, i32 noundef 0)
  br label %43

43:                                               ; preds = %42, %41
  %44 = getelementptr inbounds %struct.file_lock, ptr %37, i32 0, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load volatile ptr, ptr %44, align 4
  %49 = icmp eq ptr %48, %44
  %50 = getelementptr i8, ptr %48, i32 -28
  %51 = add i32 %38, 1
  br i1 %49, label %90, label %86

52:                                               ; preds = %43
  %53 = load ptr, ptr %37, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.file_lock, ptr %37, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 -28
  %59 = getelementptr inbounds %struct.file_lock, ptr %53, i32 0, i32 3
  %60 = icmp eq ptr %57, %59
  %61 = icmp eq ptr %58, %37
  %62 = or i1 %60, %61
  %63 = icmp eq ptr %58, null
  %64 = or i1 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %55, %52
  br label %66

66:                                               ; preds = %83, %65
  %67 = phi ptr [ %72, %83 ], [ %53, %65 ]
  %68 = phi i32 [ %71, %83 ], [ %38, %65 ]
  %69 = icmp eq ptr %67, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = add i32 %68, -1
  %72 = load ptr, ptr %67, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.file_lock, ptr %67, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 -28
  %78 = getelementptr inbounds %struct.file_lock, ptr %72, i32 0, i32 3
  %79 = icmp eq ptr %76, %78
  %80 = icmp eq ptr %77, %67
  %81 = or i1 %79, %80
  %82 = select i1 %81, ptr null, ptr %77
  br label %83

83:                                               ; preds = %74, %70
  %84 = phi ptr [ null, %70 ], [ %82, %74 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %66, label %86

86:                                               ; preds = %83, %55, %47
  %87 = phi i32 [ %51, %47 ], [ %38, %55 ], [ %71, %83 ]
  %88 = phi ptr [ %50, %47 ], [ %58, %55 ], [ %84, %83 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %36

90:                                               ; preds = %86, %66, %47, %32, %25, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_percpu(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next_percpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init_notifier_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!12 = !{i64 699824}
!13 = !{i64 2154645988, i64 2154646463, i64 2154646025, i64 2154646081, i64 2154646115, i64 2154646139, i64 2154646180, i64 2154646201, i64 2154646229, i64 2154646263}
!14 = !{i64 2154647003, i64 2154647478, i64 2154647040, i64 2154647096, i64 2154647130, i64 2154647154, i64 2154647195, i64 2154647216, i64 2154647244, i64 2154647278}
!15 = !{i64 2154648042, i64 2154648517, i64 2154648079, i64 2154648135, i64 2154648169, i64 2154648193, i64 2154648234, i64 2154648255, i64 2154648283, i64 2154648317}
!16 = !{i64 2154649077, i64 2154649552, i64 2154649114, i64 2154649170, i64 2154649204, i64 2154649228, i64 2154649269, i64 2154649290, i64 2154649318, i64 2154649352}
!17 = !{i64 2154650100, i64 2154650575, i64 2154650137, i64 2154650193, i64 2154650227, i64 2154650251, i64 2154650292, i64 2154650313, i64 2154650341, i64 2154650375}
!18 = !{i64 2154688751}
!19 = !{i64 2154680369}
!20 = !{i64 2154690950}
!21 = !{i64 2148942512}
!22 = !{i64 2148938336}
!23 = !{i64 2148938411, i64 2148938438, i64 2148938485, i64 2148938507, i64 2148938535, i64 2148938555}
!24 = !{i64 2148965515}
!25 = !{i64 2154705436}
!26 = !{i64 2147959457}
!27 = !{i64 2151209739}
!28 = !{i64 681124, i64 681185}
!29 = !{i64 684141}
!30 = !{i64 2151217356}
!31 = !{i64 2151225821}
!32 = !{i64 2151234132}
!33 = !{i64 2151242350}
!34 = !{i64 2153718364}
!35 = !{i64 2153718536}
!36 = !{i64 2154767349}
!37 = !{i64 2153891660}
!38 = !{i64 2153891850}
!39 = !{i64 2153788312}
!40 = !{i64 2153788480}
!41 = !{i64 2153804838}
!42 = !{i64 2153805002}
!43 = !{i64 2153821332}
!44 = !{i64 2153821500}
!45 = !{i64 2153858537}
!46 = !{i64 2153858697}
!47 = !{i64 2154783810}
!48 = !{i64 2154795256}
!49 = !{i64 2154809193}
!50 = !{i64 2153837972}
!51 = !{i64 2153838142}
!52 = !{i64 2153874847}
!53 = !{i64 2153875011}
!54 = !{i64 2154803206}
!55 = !{i64 2154821753, i64 2154822229, i64 2154821790, i64 2154821846, i64 2154821880, i64 2154821904, i64 2154821945, i64 2154821966, i64 2154821994, i64 2154822028}
!56 = !{!57}
!57 = distinct !{!57, !58, !"fdget: argument 0"}
!58 = distinct !{!58, !"fdget"}
!59 = !{i64 2149033567}
!60 = !{i64 2149033784}
!61 = !{i64 445450, i64 445467, i64 2147929537}
!62 = !{i64 2153734729}
!63 = !{i64 2153734891}
!64 = !{i64 2151364145}
!65 = !{i64 2151363987}
!66 = !{i64 2151364289}
!67 = !{i64 2149598053}
!68 = !{i64 2154848591}
!69 = !{i64 2153751090}
!70 = !{i64 2153751266}
!71 = !{i64 2154861641}
!72 = !{i64 2154889557}
!73 = !{i8 0, i8 2}
!74 = !{i64 2154626846}
!75 = !{i64 2154628439}
!76 = !{i64 775446, i64 2148265417, i64 2148265443, i64 2148265490, i64 2148265512, i64 2148265540, i64 2148265560}
!77 = !{i64 786820, i64 786841, i64 786864, i64 786883, i64 786902}
!78 = !{i64 2154628826}
!79 = !{i64 2154634669}
!80 = !{i64 2153697389}
!81 = !{i64 2153697577}
!82 = !{i64 2154694896, i64 2154695371, i64 2154694933, i64 2154694989, i64 2154695023, i64 2154695047, i64 2154695088, i64 2154695109, i64 2154695137, i64 2154695171}
!83 = !{ptr @flock_locks_conflict, ptr @leases_conflict, ptr @posix_locks_conflict}
!84 = !{i64 2153767753}
!85 = !{i64 2153767925}
