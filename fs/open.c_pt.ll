; ModuleID = '/llk/IR/fs/open.c_pt.bc'
source_filename = "../fs/open.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_truncate\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fallocate:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fallocate\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fallocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_open:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_open\22\09\09\09\09\09"
module asm "__kstrtabns_finish_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_no_open:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_no_open\22\09\09\09\09\09"
module asm "__kstrtabns_finish_no_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_path:\09\09\09\09\09"
module asm "\09.asciz \09\22file_path\22\09\09\09\09\09"
module asm "__kstrtabns_file_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dentry_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dentry_open\22\09\09\09\09\09"
module asm "__kstrtabns_dentry_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_with_fake_path:\09\09\09\09\09"
module asm "\09.asciz \09\22open_with_fake_path\22\09\09\09\09\09"
module asm "__kstrtabns_open_with_fake_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filp_open:\09\09\09\09\09"
module asm "\09.asciz \09\22filp_open\22\09\09\09\09\09"
module asm "__kstrtabns_filp_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_open_root:\09\09\09\09\09"
module asm "\09.asciz \09\22file_open_root\22\09\09\09\09\09"
module asm "__kstrtabns_file_open_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22filp_close\22\09\09\09\09\09"
module asm "__kstrtabns_filp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_open\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nonseekable_open:\09\09\09\09\09"
module asm "\09.asciz \09\22nonseekable_open\22\09\09\09\09\09"
module asm "__kstrtabns_nonseekable_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stream_open:\09\09\09\09\09"
module asm "\09.asciz \09\22stream_open\22\09\09\09\09\09"
module asm "__kstrtabns_stream_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.100, %struct.list_head, %struct.list_head, %union.anon.101 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.98 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { %struct.list_head }
%union.anon.101 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.94, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.95, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.96, ptr, %struct.address_space, %struct.list_head, %union.anon.97, i32, i32, ptr, ptr }
%union.anon.94 = type { i32 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%union.anon.95 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.96 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.97 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.68, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.68 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.open_how = type { i64, i64, i64 }
%struct.open_flags = type { i32, i16, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.callback_head }

@__kstrtab_vfs_truncate = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_truncate = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_truncate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_truncate to i32), ptr @__kstrtab_vfs_truncate, ptr @__kstrtabns_vfs_truncate }, section "___ksymtab_gpl+vfs_truncate", align 4
@__kstrtab_vfs_fallocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fallocate = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fallocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fallocate to i32), ptr @__kstrtab_vfs_fallocate, ptr @__kstrtabns_vfs_fallocate }, section "___ksymtab_gpl+vfs_fallocate", align 4
@__kstrtab_finish_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_open = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_open to i32), ptr @__kstrtab_finish_open, ptr @__kstrtabns_finish_open }, section "___ksymtab+finish_open", align 4
@__kstrtab_finish_no_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_no_open = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_no_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_no_open to i32), ptr @__kstrtab_finish_no_open, ptr @__kstrtabns_finish_no_open }, section "___ksymtab+finish_no_open", align 4
@__kstrtab_file_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_path = external dso_local constant [0 x i8], align 1
@__ksymtab_file_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_path to i32), ptr @__kstrtab_file_path, ptr @__kstrtabns_file_path }, section "___ksymtab+file_path", align 4
@__kstrtab_dentry_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dentry_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dentry_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dentry_open to i32), ptr @__kstrtab_dentry_open, ptr @__kstrtabns_dentry_open }, section "___ksymtab+dentry_open", align 4
@__kstrtab_open_with_fake_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_with_fake_path = external dso_local constant [0 x i8], align 1
@__ksymtab_open_with_fake_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_with_fake_path to i32), ptr @__kstrtab_open_with_fake_path, ptr @__kstrtabns_open_with_fake_path }, section "___ksymtab+open_with_fake_path", align 4
@.str = private unnamed_addr constant [5 x i8] c"\04\02\06\06\00", align 1
@__kstrtab_filp_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_filp_open = external dso_local constant [0 x i8], align 1
@__ksymtab_filp_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filp_open to i32), ptr @__kstrtab_filp_open, ptr @__kstrtabns_filp_open }, section "___ksymtab+filp_open", align 4
@__kstrtab_file_open_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_open_root = external dso_local constant [0 x i8], align 1
@__ksymtab_file_open_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_open_root to i32), ptr @__kstrtab_file_open_root, ptr @__kstrtabns_file_open_root }, section "___ksymtab+file_open_root", align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\013VFS: Close: file count is 0\0A\00", align 1
@__kstrtab_filp_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_filp_close = external dso_local constant [0 x i8], align 1
@__ksymtab_filp_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filp_close to i32), ptr @__kstrtab_filp_close, ptr @__kstrtabns_filp_close }, section "___ksymtab+filp_close", align 4
@__kstrtab_generic_file_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_open = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_open to i32), ptr @__kstrtab_generic_file_open, ptr @__kstrtabns_generic_file_open }, section "___ksymtab+generic_file_open", align 4
@__kstrtab_nonseekable_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_nonseekable_open = external dso_local constant [0 x i8], align 1
@__ksymtab_nonseekable_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nonseekable_open to i32), ptr @__kstrtab_nonseekable_open, ptr @__kstrtabns_nonseekable_open }, section "___ksymtab+nonseekable_open", align 4
@__kstrtab_stream_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_stream_open = external dso_local constant [0 x i8], align 1
@__ksymtab_stream_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stream_open to i32), ptr @__kstrtab_stream_open, ptr @__kstrtabns_stream_open }, section "___ksymtab+stream_open", align 4
@__cap_empty_set = external dso_local local_unnamed_addr constant %struct.kernel_cap_struct, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@do_dentry_open.empty_fops = internal constant %struct.file_operations zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"fs/open.c\00", align 1
@do_dentry_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_dentry_open, ptr @__ksymtab_file_open_root, ptr @__ksymtab_file_path, ptr @__ksymtab_filp_close, ptr @__ksymtab_filp_open, ptr @__ksymtab_finish_no_open, ptr @__ksymtab_finish_open, ptr @__ksymtab_generic_file_open, ptr @__ksymtab_nonseekable_open, ptr @__ksymtab_open_with_fake_path, ptr @__ksymtab_stream_open, ptr @__ksymtab_vfs_fallocate, ptr @__ksymtab_vfs_truncate], section "llvm.metadata"

@sys_truncate = dso_local alias i32 (ptr, i32), ptr @__se_sys_truncate
@sys_ftruncate = dso_local alias i32 (i32, i32), ptr @__se_sys_ftruncate
@sys_truncate64 = dso_local alias i32 (ptr, i64), ptr @__se_sys_truncate64
@sys_ftruncate64 = dso_local alias i32 (i32, i64), ptr @__se_sys_ftruncate64
@sys_fallocate = dso_local alias i32 (i32, i32, i64, i64), ptr @__se_sys_fallocate
@sys_faccessat = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_faccessat
@sys_faccessat2 = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_faccessat2
@sys_access = dso_local alias i32 (ptr, i32), ptr @__se_sys_access
@sys_chdir = dso_local alias i32 (ptr), ptr @__se_sys_chdir
@sys_fchdir = dso_local alias i32 (i32), ptr @__se_sys_fchdir
@sys_chroot = dso_local alias i32 (ptr), ptr @__se_sys_chroot
@sys_fchmod = dso_local alias i32 (i32, i16), ptr @__se_sys_fchmod
@sys_fchmodat = dso_local alias i32 (i32, ptr, i16), ptr @__se_sys_fchmodat
@sys_chmod = dso_local alias i32 (ptr, i16), ptr @__se_sys_chmod
@sys_fchownat = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_fchownat
@sys_chown = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_chown
@sys_lchown = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_lchown
@sys_fchown = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fchown
@sys_open = dso_local alias i32 (ptr, i32, i16), ptr @__se_sys_open
@sys_openat = dso_local alias i32 (i32, ptr, i32, i16), ptr @__se_sys_openat
@sys_openat2 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_openat2
@sys_creat = dso_local alias i32 (ptr, i16), ptr @__se_sys_creat
@sys_close = dso_local alias i32 (i32), ptr @__se_sys_close
@sys_close_range = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_close_range

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_truncate(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.iattr, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i32 80, i1 false), !annotation !9
  %7 = icmp slt i64 %2, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 4
  store i64 %2, ptr %9, align 8
  %10 = or i32 %3, 8
  store i32 %10, ptr %6, align 8
  %11 = icmp eq ptr %4, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 8
  store ptr %4, ptr %13, align 8
  %14 = or i32 %3, 8200
  store i32 %14, ptr %6, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ %10, %8 ]
  %17 = tail call i32 @dentry_needs_remove_privs(ptr noundef %1) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = or i32 %17, %16
  %23 = or i32 %22, 512
  store i32 %23, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 24
  tail call void @down_write(ptr noundef %27) #12
  %28 = call i32 @notify_change(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef null) #12
  %29 = load ptr, ptr %25, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 24
  call void @up_write(ptr noundef %30) #12
  br label %31

31:                                               ; preds = %24, %15, %5
  %32 = phi i32 [ %28, %24 ], [ -22, %5 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #12
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dentry_needs_remove_privs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_truncate(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, -4096
  switch i16 %8, label %9 [
    i16 16384, label %52
    i16 -32768, label %10
  ]

9:                                                ; preds = %2
  br label %52

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 @mnt_want_write(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %18 = tail call i32 @inode_permission(ptr noundef %17, ptr noundef %6, i32 noundef 2) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 37
  %27 = load volatile i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %37, %25
  %29 = phi i32 [ %27, %25 ], [ %38, %37 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %49, label %31, !prof !11

31:                                               ; preds = %28
  %32 = add nuw i32 %29, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !13
  br label %33

33:                                               ; preds = %33, %31
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 %29, i32 %32, ptr elementtype(i32) %26) #12, !srcloc !14
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33
  %38 = extractvalue { i32, i32 } %34, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %39 = icmp eq i32 %38, %29
  br i1 %39, label %40, label %28, !prof !16

40:                                               ; preds = %37
  %41 = tail call fastcc i32 @break_lease(ptr noundef %6, i32 noundef 1)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 4
  %45 = tail call i32 @do_truncate(ptr noundef %17, ptr noundef %44, i64 noundef %1, i32 noundef 0, ptr noundef null)
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %43 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !13
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #12, !srcloc !17
  br label %49

49:                                               ; preds = %46, %28, %20, %14
  %50 = phi i32 [ %18, %14 ], [ -1, %20 ], [ %47, %46 ], [ -26, %28 ]
  %51 = load ptr, ptr %0, align 4
  tail call void @mnt_drop_write(ptr noundef %51) #12
  br label %52

52:                                               ; preds = %49, %10, %9, %2
  %53 = phi i32 [ -22, %9 ], [ -21, %2 ], [ %12, %10 ], [ %50, %49 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @break_lease(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file_lock_context, ptr %4, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file_lock_context, ptr %4, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %6
  %15 = tail call i32 @__break_lease(ptr noundef %0, i32 noundef %1, i32 noundef 32) #12
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_sys_truncate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef null) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @vfs_truncate(ptr noundef nonnull %3, i64 noundef %1)
  call void @path_put(ptr noundef nonnull %3) #12
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %8 ]
  %12 = icmp eq i32 %11, -116
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 33, ptr noundef nonnull %3, ptr noundef null) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @vfs_truncate(ptr noundef nonnull %3, i64 noundef %1)
  call void @path_put(ptr noundef nonnull %3) #12
  br label %18

18:                                               ; preds = %16, %13, %10, %2
  %19 = phi i32 [ -22, %2 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_truncate(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = sext i32 %1 to i64
  %5 = tail call i32 @do_sys_truncate(ptr noundef %3, i64 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_sys_ftruncate(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.iattr, align 8
  %5 = icmp slt i64 %1, 0
  br i1 %5, label %117, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !20
  %8 = and i32 %7, -4
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %117, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, -32768
  br i1 %22, label %23, label %112

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %112, label %28

28:                                               ; preds = %23
  %29 = icmp ne i32 %2, 0
  %30 = and i1 %29, %15
  %31 = icmp ugt i64 %1, 2147483647
  %32 = and i1 %31, %30
  br i1 %32, label %112, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %112

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.super_block, ptr %42, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58, !prof !16

46:                                               ; preds = %40
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !24
  %48 = getelementptr %struct.super_block, ptr %42, i32 0, i32 26, i32 2, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #10, !srcloc !25
  %54 = add i32 %53, %50
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #12, !srcloc !26
  br label %60

58:                                               ; preds = %40
  %59 = tail call zeroext i1 @__percpu_down_read(ptr noundef %43, i1 noundef zeroext false) #12
  br label %60

60:                                               ; preds = %58, %46
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %61 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.vfsmount, ptr %62, i32 0, i32 3
  %64 = load volatile ptr, ptr %63, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false) #12, !annotation !9
  %65 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 4
  store i64 %1, ptr %65, align 8
  %66 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 8
  store ptr %9, ptr %66, align 8
  store i32 8296, ptr %4, align 8
  %67 = tail call i32 @dentry_needs_remove_privs(ptr noundef %17) #12
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %60
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = or i32 %67, 8808
  store i32 %72, ptr %4, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = load ptr, ptr %18, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 24
  tail call void @down_write(ptr noundef %75) #12
  %76 = call i32 @notify_change(ptr noundef %64, ptr noundef %17, ptr noundef nonnull %4, ptr noundef null) #12
  %77 = load ptr, ptr %18, align 8
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 24
  call void @up_write(ptr noundef %78) #12
  br label %79

79:                                               ; preds = %73, %60
  %80 = phi i32 [ %76, %73 ], [ %67, %60 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #12
  %81 = load ptr, ptr %41, align 4
  %82 = getelementptr %struct.super_block, ptr %81, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %83 = load volatile i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97, !prof !16

85:                                               ; preds = %79
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !24
  %87 = getelementptr %struct.super_block, ptr %81, i32 0, i32 26, i32 2, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = call i32 @llvm.read_register.i32(metadata !0) #12
  %91 = inttoptr i32 %90 to ptr
  %92 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %91) #10, !srcloc !25
  %93 = add i32 %92, %89
  %94 = inttoptr i32 %93 to ptr
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -1
  store i32 %96, ptr %94, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %86) #12, !srcloc !26
  br label %111

97:                                               ; preds = %79
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !24
  %99 = getelementptr %struct.super_block, ptr %81, i32 0, i32 26, i32 2, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = call i32 @llvm.read_register.i32(metadata !0) #12
  %103 = inttoptr i32 %102 to ptr
  %104 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #10, !srcloc !25
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %106, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #12, !srcloc !26
  %109 = getelementptr %struct.super_block, ptr %81, i32 0, i32 26, i32 2, i32 0, i32 2
  %110 = call i32 @rcuwait_wake_up(ptr noundef %109) #12
  br label %111

111:                                              ; preds = %97, %85
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  br label %112

112:                                              ; preds = %111, %33, %28, %23, %11
  %113 = phi i32 [ -22, %28 ], [ -1, %33 ], [ %80, %111 ], [ -22, %23 ], [ -22, %11 ]
  %114 = and i32 %7, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @fput(ptr noundef nonnull %9) #12
  br label %117

117:                                              ; preds = %116, %112, %6, %3
  %118 = phi i32 [ -22, %3 ], [ -9, %6 ], [ %113, %112 ], [ %113, %116 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ftruncate(i32 noundef %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = tail call i32 @do_sys_ftruncate(i32 noundef %0, i64 noundef %3, i32 noundef 1) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_truncate64(i32 noundef %0, i64 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = tail call i32 @do_sys_truncate(ptr noundef %3, i64 noundef %1) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ftruncate64(i32 noundef %0, i64 noundef %1) #0 {
  %3 = tail call i32 @do_sys_ftruncate(i32 noundef %0, i64 noundef %1, i32 noundef 0) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fallocate(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp slt i64 %2, 0
  %8 = icmp slt i64 %3, 1
  %9 = or i1 %7, %8
  br i1 %9, label %83, label %10

10:                                               ; preds = %4
  %11 = and i32 %1, -124
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %1, 18
  %14 = icmp eq i32 %13, 18
  %15 = or i1 %12, %14
  %16 = and i32 %1, 3
  %17 = icmp eq i32 %16, 2
  %18 = or i1 %17, %15
  br i1 %18, label %83, label %19

19:                                               ; preds = %10
  %20 = and i32 %1, 8
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %1, -9
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %19
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, -33
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %25
  %32 = and i32 %1, 64
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %1, -66
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %37
  %43 = icmp ult i32 %1, 2
  %44 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %43, i1 true, i1 %47
  %49 = and i32 %45, 8
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %83

52:                                               ; preds = %42
  %53 = and i32 %45, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i16, ptr %6, align 8
  %57 = and i16 %56, -4096
  switch i16 %57, label %59 [
    i16 4096, label %83
    i16 16384, label %58
    i16 -32768, label %60
    i16 24576, label %60
  ]

58:                                               ; preds = %55
  br label %83

59:                                               ; preds = %55
  br label %83

60:                                               ; preds = %55, %55
  %61 = add nuw i64 %3, %2
  %62 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 4
  %65 = load i64, ptr %64, align 8
  %66 = icmp sgt i64 %61, %65
  %67 = icmp slt i64 %61, 0
  %68 = or i1 %67, %66
  br i1 %68, label %83, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.file_operations, ptr %71, i32 0, i32 27
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %69
  tail call fastcc void @file_start_write(ptr noundef %0)
  %76 = load ptr, ptr %70, align 4
  %77 = getelementptr inbounds %struct.file_operations, ptr %76, i32 0, i32 27
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  tail call fastcc void @fsnotify_modify(ptr noundef %0)
  br label %82

82:                                               ; preds = %81, %75
  tail call fastcc void @file_end_write(ptr noundef %0)
  br label %83

83:                                               ; preds = %82, %69, %60, %59, %58, %55, %52, %42, %37, %31, %25, %19, %10, %4
  %84 = phi i32 [ -21, %58 ], [ %79, %82 ], [ -19, %59 ], [ -22, %4 ], [ -95, %10 ], [ -22, %19 ], [ -22, %25 ], [ -22, %31 ], [ -9, %37 ], [ -26, %52 ], [ -29, %55 ], [ -27, %60 ], [ -95, %69 ], [ -1, %42 ]
  ret i32 %84
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @file_start_write(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -32768
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !16

13:                                               ; preds = %7
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !24
  %15 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10, !srcloc !25
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #12, !srcloc !26
  br label %27

25:                                               ; preds = %7
  %26 = tail call zeroext i1 @__percpu_down_read(ptr noundef %10, i1 noundef zeroext false) #12
  br label %27

27:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_modify(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 67108864
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 42
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %6
  %18 = load i16, ptr %11, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, 16384
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 8
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 1073741826, %21 ], [ 2, %17 ]
  %27 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @__fsnotify_parent(ptr noundef %9, i32 noundef %26, ptr noundef %7, i32 noundef 1) #12
  br label %35

32:                                               ; preds = %25, %21
  %33 = phi i32 [ %26, %25 ], [ 1073741826, %21 ]
  %34 = tail call i32 @fsnotify(i32 noundef %33, ptr noundef %7, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %11, i32 noundef 0) #12
  br label %35

35:                                               ; preds = %32, %30, %6, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @file_end_write(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -32768
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !16

13:                                               ; preds = %7
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !24
  %15 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10, !srcloc !25
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #12, !srcloc !26
  br label %39

25:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !24
  %27 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #10, !srcloc !25
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #12, !srcloc !26
  %37 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 2
  %38 = tail call i32 @rcuwait_wake_up(ptr noundef %37) #12
  br label %39

39:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_fallocate(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !31
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @vfs_fallocate(ptr noundef nonnull %7, i32 noundef %1, i64 noundef %2, i64 noundef %3)
  %11 = and i32 %5, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fput(ptr noundef nonnull %7) #12
  br label %14

14:                                               ; preds = %13, %9, %4
  %15 = phi i32 [ -9, %4 ], [ %10, %9 ], [ %10, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fallocate(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !34
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @vfs_fallocate(ptr noundef nonnull %7, i32 noundef %1, i64 noundef %2, i64 noundef %3) #12
  %11 = and i32 %5, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fput(ptr noundef nonnull %7) #12
  br label %14

14:                                               ; preds = %13, %9, %4
  %15 = phi i32 [ -9, %4 ], [ %10, %9 ], [ %10, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_faccessat(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @do_faccessat(i32 noundef %0, ptr noundef %4, i32 noundef %2, i32 noundef 0) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_faccessat2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call fastcc i32 @do_faccessat(i32 noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_access(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = tail call fastcc i32 @do_faccessat(i32 noundef -100, ptr noundef %3, i32 noundef %1, i32 noundef 0) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chdir(i32 noundef %0) #0 {
  %2 = alloca %struct.path, align 8
  %3 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %5 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %3, i32 noundef 3, ptr noundef nonnull %2, ptr noundef null) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.vfsmount, ptr %8, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @inode_permission(ptr noundef %10, ptr noundef %13, i32 noundef 65) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 89
  %19 = load ptr, ptr %18, align 64
  call void @set_fs_pwd(ptr noundef %19, ptr noundef nonnull %2) #12
  br label %20

20:                                               ; preds = %16, %7
  call void @path_put(ptr noundef nonnull %2) #12
  %21 = icmp eq i32 %14, -116
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %3, i32 noundef 35, ptr noundef nonnull %2, ptr noundef null) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.vfsmount, ptr %26, i32 0, i32 3
  %28 = load volatile ptr, ptr %27, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @inode_permission(ptr noundef %28, ptr noundef %31, i32 noundef 65) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 89
  %37 = load ptr, ptr %36, align 64
  call void @set_fs_pwd(ptr noundef %37, ptr noundef nonnull %2) #12
  br label %38

38:                                               ; preds = %34, %25
  call void @path_put(ptr noundef nonnull %2) #12
  br label %39

39:                                               ; preds = %38, %22, %20, %1
  %40 = phi i32 [ %5, %1 ], [ %14, %20 ], [ %23, %22 ], [ %32, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchdir(i32 noundef %0) #0 {
  %2 = tail call i32 @__fdget_raw(i32 noundef %0) #12, !noalias !37
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 7340032
  %11 = icmp eq i32 %10, 2097152
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vfsmount, ptr %14, i32 0, i32 3
  %16 = load volatile ptr, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %17 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @inode_permission(ptr noundef %16, ptr noundef %18, i32 noundef 65) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 89
  %24 = load ptr, ptr %23, align 64
  tail call void @set_fs_pwd(ptr noundef %24, ptr noundef %13) #12
  br label %25

25:                                               ; preds = %21, %12, %6
  %26 = phi i32 [ %19, %12 ], [ 0, %21 ], [ -20, %6 ]
  %27 = and i32 %2, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @fput(ptr noundef nonnull %4) #12
  br label %30

30:                                               ; preds = %29, %25, %1
  %31 = phi i32 [ -9, %1 ], [ %26, %25 ], [ %26, %29 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chroot(i32 noundef %0) #0 {
  %2 = alloca %struct.path, align 8
  %3 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %5 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %3, i32 noundef 3, ptr noundef nonnull %2, ptr noundef null) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.vfsmount, ptr %8, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @inode_permission(ptr noundef %10, ptr noundef %13, i32 noundef 65) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 18) #12
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = tail call ptr @llvm.thread.pointer() #12
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 89
  %21 = load ptr, ptr %20, align 64
  call void @set_fs_root(ptr noundef %21, ptr noundef nonnull %2) #12
  br label %22

22:                                               ; preds = %18, %16, %7
  %23 = phi i32 [ %14, %7 ], [ 0, %18 ], [ -1, %16 ]
  call void @path_put(ptr noundef nonnull %2) #12
  %24 = icmp eq i32 %23, -116
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %3, i32 noundef 35, ptr noundef nonnull %2, ptr noundef null) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.vfsmount, ptr %29, i32 0, i32 3
  %31 = load volatile ptr, ptr %30, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @inode_permission(ptr noundef %31, ptr noundef %34, i32 noundef 65) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 18) #12
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = tail call ptr @llvm.thread.pointer() #12
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 89
  %42 = load ptr, ptr %41, align 64
  call void @set_fs_root(ptr noundef %42, ptr noundef nonnull %2) #12
  br label %43

43:                                               ; preds = %39, %37, %28
  %44 = phi i32 [ %35, %28 ], [ 0, %39 ], [ -1, %37 ]
  call void @path_put(ptr noundef nonnull %2) #12
  br label %45

45:                                               ; preds = %43, %25, %22, %1
  %46 = phi i32 [ %5, %1 ], [ %23, %22 ], [ %26, %25 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @chmod_common(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.iattr, align 8
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !9
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @mnt_want_write(ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  %14 = and i16 %1, 4095
  %15 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 1
  br label %16

16:                                               ; preds = %41, %12
  call void @down_write(ptr noundef %13) #12
  %17 = load i16, ptr %8, align 8
  %18 = and i16 %17, -4096
  %19 = or i16 %18, %14
  store i16 %19, ptr %15, align 4
  store i32 65, ptr %4, align 8
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.vfsmount, ptr %20, i32 0, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %23 = load ptr, ptr %5, align 4
  %24 = call i32 @notify_change(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  call void @up_write(ptr noundef %13) #12
  %25 = load ptr, ptr %3, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %16
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !40
  %28 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 40
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3
  %33 = load volatile ptr, ptr %32, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31
  %40 = call i32 @__break_lease(ptr noundef nonnull %25, i32 noundef 1, i32 noundef 4) #12
  br label %41

41:                                               ; preds = %39, %35, %27
  %42 = phi i32 [ %40, %39 ], [ 0, %35 ], [ 0, %27 ]
  %43 = load ptr, ptr %3, align 4
  call void @iput(ptr noundef %43) #12
  store ptr null, ptr %3, align 4
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %16, label %45

45:                                               ; preds = %41, %16
  %46 = phi i32 [ %42, %41 ], [ %24, %16 ]
  %47 = load ptr, ptr %0, align 4
  call void @mnt_drop_write(ptr noundef %47) #12
  br label %48

48:                                               ; preds = %45, %2
  %49 = phi i32 [ %46, %45 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fchmod(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %4 = tail call i32 @chmod_common(ptr noundef %3, i16 noundef zeroext %1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchmod(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !41
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %1 to i16
  %9 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  %10 = tail call i32 @chmod_common(ptr noundef %9, i16 noundef zeroext %8) #12
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fput(ptr noundef nonnull %5) #12
  br label %14

14:                                               ; preds = %13, %7, %2
  %15 = phi i32 [ -9, %2 ], [ %10, %7 ], [ %10, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchmodat(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = inttoptr i32 %1 to ptr
  %6 = trunc i32 %2 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !9
  %7 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %5, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @chmod_common(ptr noundef nonnull %4, i16 noundef zeroext %6) #12
  call void @path_put(ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, -116
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %5, i32 noundef 33, ptr noundef nonnull %4, ptr noundef null) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @chmod_common(ptr noundef nonnull %4, i16 noundef zeroext %6) #12
  call void @path_put(ptr noundef nonnull %4) #12
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %7, %3 ], [ %10, %9 ], [ %13, %12 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chmod(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.path, align 8
  %4 = inttoptr i32 %0 to ptr
  %5 = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !9
  %6 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %4, i32 noundef 1, ptr noundef nonnull %3, ptr noundef null) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = call i32 @chmod_common(ptr noundef nonnull %3, i16 noundef zeroext %5) #12
  call void @path_put(ptr noundef nonnull %3) #12
  %10 = icmp eq i32 %9, -116
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %4, i32 noundef 33, ptr noundef nonnull %3, ptr noundef null) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @chmod_common(ptr noundef nonnull %3, i16 noundef zeroext %5) #12
  call void @path_put(ptr noundef nonnull %3) #12
  br label %16

16:                                               ; preds = %14, %11, %8, %2
  %17 = phi i32 [ %6, %2 ], [ %9, %8 ], [ %12, %11 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @chown_common(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.iattr, align 8
  %6 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false), !annotation !9
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.vfsmount, ptr %10, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %13 = icmp eq i32 %1, -1
  %14 = icmp eq i32 %2, -1
  %15 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  %16 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 2
  %17 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 3
  br label %18

18:                                               ; preds = %50, %3
  store i32 64, ptr %5, align 8
  br i1 %13, label %20, label %19

19:                                               ; preds = %18
  store i32 66, ptr %5, align 8
  store i32 %1, ptr %16, align 8
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i32 [ 66, %19 ], [ 64, %18 ]
  br i1 %14, label %24, label %22

22:                                               ; preds = %20
  %23 = or i32 %21, 4
  store i32 %23, ptr %5, align 8
  store i32 %2, ptr %17, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ]
  %26 = load i16, ptr %9, align 8
  %27 = and i16 %26, -4096
  %28 = icmp eq i16 %27, 16384
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = or i32 %25, 22528
  store i32 %30, ptr %5, align 8
  br label %31

31:                                               ; preds = %29, %24
  call void @down_write(ptr noundef %15) #12
  %32 = load ptr, ptr %6, align 4
  %33 = call i32 @notify_change(ptr noundef %12, ptr noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  call void @up_write(ptr noundef %15) #12
  %34 = load ptr, ptr %4, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !40
  %37 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 40
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.file_lock_context, ptr %38, i32 0, i32 3
  %42 = load volatile ptr, ptr %41, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file_lock_context, ptr %38, i32 0, i32 3, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %41
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %40
  %49 = call i32 @__break_lease(ptr noundef nonnull %34, i32 noundef 1, i32 noundef 4) #12
  br label %50

50:                                               ; preds = %48, %44, %36
  %51 = phi i32 [ %49, %48 ], [ 0, %44 ], [ 0, %36 ]
  %52 = load ptr, ptr %4, align 4
  call void @iput(ptr noundef %52) #12
  store ptr null, ptr %4, align 4
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %18, label %54

54:                                               ; preds = %50, %31
  %55 = phi i32 [ %51, %50 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_fchownat(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !9
  %7 = and i32 %4, -4353
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = lshr i32 %4, 8
  %11 = and i32 %10, 1
  %12 = shl nuw nsw i32 %4, 2
  %13 = and i32 %12, 16384
  %14 = or i32 %11, %13
  %15 = xor i32 %14, 1
  %16 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %15, ptr noundef nonnull %6, ptr noundef null) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %9
  %19 = or i32 %15, 32
  br label %23

20:                                               ; preds = %31
  %21 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %19, ptr noundef nonnull %6, ptr noundef null) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %15, %18 ], [ %19, %20 ]
  %25 = load ptr, ptr %6, align 8
  %26 = call i32 @mnt_want_write(ptr noundef %25) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @chown_common(ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3)
  %30 = load ptr, ptr %6, align 8
  call void @mnt_drop_write(ptr noundef %30) #12
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %26, %23 ], [ %29, %28 ]
  call void @path_put(ptr noundef nonnull %6) #12
  %33 = icmp eq i32 %32, -116
  %34 = and i32 %24, 32
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %35, %33
  br i1 %36, label %20, label %37

37:                                               ; preds = %31, %20, %9, %5
  %38 = phi i32 [ -22, %5 ], [ %16, %9 ], [ %21, %20 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchownat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = tail call i32 @do_fchownat(i32 noundef %0, ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chown(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef 0) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lchown(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef 256) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fchown(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @mnt_want_write_file(ptr noundef %0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %8 = tail call i32 @chown_common(ptr noundef %7, i32 noundef %1, i32 noundef %2)
  tail call void @mnt_drop_write_file(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ %4, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_fchown(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !44
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @mnt_want_write_file(ptr noundef nonnull %6) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1
  %13 = tail call i32 @chown_common(ptr noundef %12, i32 noundef %1, i32 noundef %2) #12
  tail call void @mnt_drop_write_file(ptr noundef nonnull %6) #12
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %13, %11 ], [ %9, %8 ]
  %16 = and i32 %4, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fput(ptr noundef nonnull %6) #12
  br label %19

19:                                               ; preds = %18, %14, %3
  %20 = phi i32 [ -9, %3 ], [ %15, %14 ], [ %15, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchown(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !47
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @mnt_want_write_file(ptr noundef nonnull %6) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1
  %13 = tail call i32 @chown_common(ptr noundef %12, i32 noundef %1, i32 noundef %2) #12
  tail call void @mnt_drop_write_file(ptr noundef nonnull %6) #12
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %13, %11 ], [ %9, %8 ]
  %16 = and i32 %4, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fput(ptr noundef nonnull %6) #12
  br label %19

19:                                               ; preds = %18, %14, %3
  %20 = phi i32 [ -9, %3 ], [ %15, %14 ], [ %15, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @finish_open(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !16

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/open.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 916, 0\0A.popsection", ""() #12, !srcloc !50
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @do_dentry_open(ptr noundef %0, ptr noundef %12, ptr noundef %2)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_dentry_open(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  tail call void @path_get(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  store ptr %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 11
  %10 = tail call i32 @errseq_sample(ptr noundef %9) #12
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 18
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 44
  %17 = tail call i32 @errseq_sample(ptr noundef %16) #12
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 19
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  br i1 %22, label %26, label %24, !prof !16

24:                                               ; preds = %3
  store i32 540672, ptr %23, align 8
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  store ptr @do_dentry_open.empty_fops, ptr %25, align 4
  br label %201

26:                                               ; preds = %3
  %27 = load i32, ptr %23, align 8
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %1, align 8
  %32 = and i16 %31, -4096
  switch i16 %32, label %33 [
    i16 8192, label %57
    i16 24576, label %57
    i16 4096, label %57
    i16 -16384, label %57
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  %35 = load volatile i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %45, %33
  %37 = phi i32 [ %35, %33 ], [ %46, %45 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %199, label %39, !prof !11

39:                                               ; preds = %36
  %40 = add nuw i32 %37, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #12, !srcloc !13
  br label %41

41:                                               ; preds = %41, %39
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 %37, i32 %40, ptr elementtype(i32) %34) #12, !srcloc !14
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41
  %46 = extractvalue { i32, i32 } %42, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %47 = icmp eq i32 %46, %37
  br i1 %47, label %48, label %36, !prof !16

48:                                               ; preds = %45
  %49 = load ptr, ptr %4, align 8
  %50 = tail call i32 @__mnt_want_write(ptr noundef %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !16

52:                                               ; preds = %48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #12, !srcloc !13
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #12, !srcloc !17
  br label %199

54:                                               ; preds = %48
  %55 = load i32, ptr %23, align 8
  %56 = or i32 %55, 65536
  store i32 %56, ptr %23, align 8
  br label %57

57:                                               ; preds = %54, %30, %30, %30, %30, %26
  %58 = phi i32 [ %27, %30 ], [ %27, %30 ], [ %27, %30 ], [ %27, %30 ], [ %56, %54 ], [ %27, %26 ]
  %59 = load i16, ptr %1, align 8
  %60 = and i16 %59, -4096
  switch i16 %60, label %63 [
    i16 -32768, label %61
    i16 16384, label %61
  ]

61:                                               ; preds = %57, %57
  %62 = or i32 %58, 32768
  store i32 %62, ptr %23, align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 39
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 4
  %69 = tail call zeroext i1 @try_module_get(ptr noundef %68) #12
  br i1 %69, label %72, label %70

70:                                               ; preds = %67, %63
  %71 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  store ptr null, ptr %71, align 4
  br label %76

72:                                               ; preds = %67
  %73 = load ptr, ptr %64, align 8
  %74 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %78, !prof !11

76:                                               ; preds = %72, %70
  %77 = phi ptr [ %71, %70 ], [ %74, %72 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 806, i32 noundef 9, ptr noundef null) #12
  br label %184

78:                                               ; preds = %72
  %79 = load ptr, ptr %5, align 8
  %80 = load i32, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %81 = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 40
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %95, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.file_lock_context, ptr %82, i32 0, i32 3
  %86 = load volatile ptr, ptr %85, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %87 = icmp eq ptr %86, %85
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.file_lock_context, ptr %82, i32 0, i32 3, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %85
  br i1 %91, label %95, label %92

92:                                               ; preds = %88, %84
  %93 = tail call i32 @__break_lease(ptr noundef %79, i32 noundef %80, i32 noundef 32) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %175

95:                                               ; preds = %92, %88, %78
  %96 = load i32, ptr %23, align 8
  %97 = or i32 %96, 28
  store i32 %97, ptr %23, align 8
  %98 = icmp eq ptr %2, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load ptr, ptr %74, align 4
  %101 = getelementptr inbounds %struct.file_operations, ptr %100, i32 0, i32 14
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99, %95
  %105 = phi ptr [ %102, %99 ], [ %2, %95 ]
  %106 = tail call i32 %105(ptr noundef %1, ptr noundef %0) #12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %175

108:                                              ; preds = %104
  %109 = load i32, ptr %23, align 8
  br label %110

110:                                              ; preds = %108, %99
  %111 = phi i32 [ %109, %108 ], [ %97, %99 ]
  %112 = or i32 %111, 524288
  store i32 %112, ptr %23, align 8
  %113 = and i32 %111, 3
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #12, !srcloc !13
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %116, ptr %116, i32 1, ptr elementtype(i32) %116) #12, !srcloc !51
  %118 = load i32, ptr %23, align 8
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i32 [ %118, %115 ], [ %112, %110 ]
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %74, align 4
  %125 = getelementptr inbounds %struct.file_operations, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.file_operations, ptr %124, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132, !prof !11

132:                                              ; preds = %128, %123
  %133 = or i32 %120, 131072
  store i32 %133, ptr %23, align 8
  br label %134

134:                                              ; preds = %132, %128, %119
  %135 = phi i32 [ %133, %132 ], [ %120, %128 ], [ %120, %119 ]
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %74, align 4
  %140 = getelementptr inbounds %struct.file_operations, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.file_operations, ptr %139, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147, !prof !11

147:                                              ; preds = %143, %138
  %148 = or i32 %135, 262144
  store i32 %148, ptr %23, align 8
  br label %149

149:                                              ; preds = %147, %143, %134
  %150 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  store i32 0, ptr %150, align 4
  %151 = load i32, ptr %19, align 4
  %152 = and i32 %151, -961
  store i32 %152, ptr %19, align 4
  %153 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13
  %154 = load ptr, ptr %8, align 8
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.inode, ptr %155, i32 0, i32 9
  %157 = load ptr, ptr %156, align 8
  tail call void @file_ra_state_init(ptr noundef %153, ptr noundef %157) #12
  %158 = load i32, ptr %19, align 4
  %159 = and i32 %158, 65536
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %149
  %162 = load ptr, ptr %8, align 8
  %163 = getelementptr inbounds %struct.address_space, ptr %162, i32 0, i32 9
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %201, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.address_space_operations, ptr %164, i32 0, i32 12
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %201, label %170

170:                                              ; preds = %166, %149
  %171 = load i32, ptr %23, align 8
  %172 = and i32 %171, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %201, label %174

174:                                              ; preds = %170
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !52
  br label %201

175:                                              ; preds = %104, %92
  %176 = phi i32 [ %93, %92 ], [ %106, %104 ]
  %177 = icmp sgt i32 %176, 0
  %178 = load i1, ptr @do_dentry_open.__already_done, align 1
  %179 = xor i1 %178, true
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %182, !prof !11

181:                                              ; preds = %175
  store i1 true, ptr @do_dentry_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 880, i32 noundef 9, ptr noundef null) #12
  br label %183

182:                                              ; preds = %175
  br i1 %177, label %183, label %184

183:                                              ; preds = %182, %181
  br label %184

184:                                              ; preds = %183, %182, %76
  %185 = phi ptr [ %74, %183 ], [ %74, %182 ], [ %77, %76 ]
  %186 = phi i32 [ -22, %183 ], [ %176, %182 ], [ -19, %76 ]
  %187 = load ptr, ptr %185, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = load ptr, ptr %187, align 4
  tail call void @module_put(ptr noundef %190) #12
  br label %191

191:                                              ; preds = %189, %184
  %192 = load i32, ptr %23, align 8
  %193 = and i32 %192, 65536
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %196) #12, !srcloc !13
  %197 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %196, ptr %196, i32 1, ptr elementtype(i32) %196) #12, !srcloc !17
  %198 = load ptr, ptr %4, align 8
  tail call void @__mnt_drop_write(ptr noundef %198) #12
  br label %199

199:                                              ; preds = %195, %191, %52, %36
  %200 = phi i32 [ %186, %195 ], [ %186, %191 ], [ %50, %52 ], [ -26, %36 ]
  tail call void @path_put(ptr noundef %4) #12
  store ptr null, ptr %4, align 8
  store ptr null, ptr %12, align 4
  store ptr null, ptr %5, align 8
  br label %201

201:                                              ; preds = %199, %174, %170, %166, %161, %24
  %202 = phi i32 [ 0, %24 ], [ %200, %199 ], [ -22, %166 ], [ -22, %161 ], [ 0, %174 ], [ 0, %170 ]
  ret i32 %202
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @finish_no_open(ptr nocapture noundef writeonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  store ptr %1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @file_path(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %5 = tail call ptr @d_path(ptr noundef %4, ptr noundef %1, i32 noundef %2) #12
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %0, align 4
  store i64 %4, ptr %3, align 8
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @do_dentry_open(ptr noundef %1, ptr noundef %8, ptr noundef null)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dentry_open(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/open.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 971, 0\0A.popsection", ""() #12, !srcloc !53
  unreachable

7:                                                ; preds = %3
  %8 = tail call ptr @alloc_empty_file(i32 noundef %1, ptr noundef %2) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 1
  %12 = load i64, ptr %0, align 4
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call fastcc i32 @do_dentry_open(ptr noundef %8, ptr noundef %16, ptr noundef null) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  tail call void @fput(ptr noundef %8) #12
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %7
  %22 = phi ptr [ %8, %7 ], [ %20, %19 ], [ %8, %10 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_empty_file(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @open_with_fake_path(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @alloc_empty_file_noaccount(i32 noundef %1, ptr noundef %3) #12
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  %9 = load i64, ptr %0, align 4
  store i64 %9, ptr %8, align 8
  %10 = tail call fastcc i32 @do_dentry_open(ptr noundef %5, ptr noundef %2, ptr noundef null)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @fput(ptr noundef %5) #12
  %13 = inttoptr i32 %10 to ptr
  br label %14

14:                                               ; preds = %12, %7, %4
  %15 = phi ptr [ %5, %4 ], [ %13, %12 ], [ %5, %7 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_empty_file_noaccount(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @build_open_how(ptr noalias nocapture sret(%struct.open_how) align 8 %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = and i32 %1, 8388547
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %0, align 8
  %6 = getelementptr inbounds %struct.open_how, ptr %0, i32 0, i32 1
  %7 = and i16 %2, 4095
  %8 = zext i16 %7 to i64
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.open_how, ptr %0, i32 0, i32 2
  store i64 0, ptr %9, align 8
  %10 = and i64 %5, 2097152
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = and i64 %5, 2670592
  store i64 %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i64 [ %13, %12 ], [ %5, %3 ]
  %16 = and i64 %15, 4194368
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 0, ptr %6, align 8
  br label %19

19:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @build_open_flags(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 3
  %6 = getelementptr [5 x i8], ptr @.str, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i64 %3, -67633153
  %10 = and i64 %3, -75497412
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %110

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.open_how, ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = icmp ugt i64 %14, 63
  %16 = and i64 %14, 24
  %17 = icmp eq i64 %16, 24
  %18 = or i1 %15, %17
  br i1 %18, label %110, label %19

19:                                               ; preds = %12
  %20 = and i64 %3, 4194368
  %21 = icmp eq i64 %20, 0
  %22 = getelementptr inbounds %struct.open_how, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  br i1 %21, label %29, label %24

24:                                               ; preds = %19
  %25 = icmp ult i64 %23, 4096
  br i1 %25, label %26, label %110

26:                                               ; preds = %24
  %27 = trunc i64 %23 to i16
  %28 = or i16 %27, -32768
  br label %31

29:                                               ; preds = %19
  %30 = icmp eq i64 %23, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %29, %26
  %32 = phi i16 [ %28, %26 ], [ 0, %29 ]
  %33 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 1
  store i16 %32, ptr %33, align 4
  %34 = and i64 %3, 4194304
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = and i64 %3, 4210752
  %38 = icmp ne i64 %37, 4210688
  %39 = and i32 %8, 2
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %110, label %42

42:                                               ; preds = %36, %31
  %43 = and i64 %3, 2097152
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = and i64 %3, -69779457
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %8, %42 ], [ 0, %45 ]
  %50 = lshr i64 %3, 8
  %51 = and i64 %50, 4096
  %52 = or i64 %51, %9
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %1, align 4
  %54 = lshr i32 %4, 8
  %55 = and i32 %54, 2
  %56 = lshr i32 %4, 7
  %57 = and i32 %56, 8
  %58 = or i32 %57, %55
  %59 = or i32 %58, %49
  %60 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = lshr i32 %53, 13
  %62 = and i32 %61, 256
  %63 = xor i32 %62, 256
  %64 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 3
  store i32 %63, ptr %64, align 4
  %65 = and i64 %3, 64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %48
  %68 = or i32 %63, 512
  store i32 %68, ptr %64, align 4
  %69 = and i64 %3, 128
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = or i32 %63, 1536
  store i32 %72, ptr %64, align 4
  %73 = or i64 %52, 32768
  %74 = trunc i64 %73 to i32
  %75 = lshr i32 %74, 13
  br label %76

76:                                               ; preds = %71, %67, %48
  %77 = phi i32 [ %61, %67 ], [ %75, %71 ], [ %61, %48 ]
  %78 = phi i32 [ %53, %67 ], [ %74, %71 ], [ %53, %48 ]
  %79 = phi i64 [ %52, %67 ], [ %73, %71 ], [ %52, %48 ]
  %80 = and i32 %77, 2
  %81 = lshr i32 %78, 15
  %82 = and i32 %81, 1
  %83 = or i32 %82, %80
  %84 = load i64, ptr %13, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 18
  %87 = and i32 %86, 262144
  %88 = or i32 %83, %87
  %89 = shl i32 %85, 16
  %90 = and i32 %89, 131072
  %91 = or i32 %88, %90
  %92 = shl i32 %85, 14
  %93 = and i32 %92, 65536
  %94 = or i32 %91, %93
  %95 = and i32 %89, 524288
  %96 = or i32 %94, %95
  %97 = and i32 %89, 1048576
  %98 = or i32 %96, %97
  %99 = xor i32 %98, 1
  %100 = and i64 %84, 32
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %76
  %103 = and i64 %79, 4211264
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = or i32 %99, 2097152
  br label %107

107:                                              ; preds = %105, %76
  %108 = phi i32 [ %106, %105 ], [ %99, %76 ]
  %109 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 4
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %107, %102, %45, %36, %29, %24, %12, %2
  %111 = phi i32 [ 0, %107 ], [ -22, %2 ], [ -22, %12 ], [ -22, %24 ], [ -22, %29 ], [ -22, %36 ], [ -22, %45 ], [ -11, %102 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @file_open_name(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.open_flags, align 4
  %5 = alloca %struct.open_how, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = and i32 %1, 8388547
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %5, align 8, !alias.scope !54
  %8 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 1
  %9 = and i16 %2, 4095
  %10 = zext i16 %9 to i64
  store i64 %10, ptr %8, align 8, !alias.scope !54
  %11 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 2
  store i64 0, ptr %11, align 8, !alias.scope !54
  %12 = and i64 %7, 2097152
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = and i64 %7, 2670592
  store i64 %15, ptr %5, align 8, !alias.scope !54
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i64 [ %15, %14 ], [ %7, %3 ]
  %18 = and i64 %17, 4194368
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 0, ptr %8, align 8, !alias.scope !54
  br label %21

21:                                               ; preds = %20, %16
  %22 = call i32 @build_open_flags(ptr noundef nonnull %5, ptr noundef nonnull %4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = inttoptr i32 %22 to ptr
  br label %28

26:                                               ; preds = %21
  %27 = call ptr @do_filp_open(i32 noundef -100, ptr noundef %0, ptr noundef nonnull %4) #12
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_filp_open(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @filp_open(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.open_flags, align 4
  %5 = alloca %struct.open_how, align 8
  %6 = tail call ptr @getname_kernel(ptr noundef %0) #12
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #12, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %9 = and i32 %1, 8388547
  %10 = zext i32 %9 to i64
  store i64 %10, ptr %5, align 8, !alias.scope !57
  %11 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 1
  %12 = and i16 %2, 4095
  %13 = zext i16 %12 to i64
  store i64 %13, ptr %11, align 8, !alias.scope !57
  %14 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 2
  store i64 0, ptr %14, align 8, !alias.scope !57
  %15 = and i64 %10, 2097152
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = and i64 %10, 2670592
  store i64 %18, ptr %5, align 8, !alias.scope !57
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i64 [ %18, %17 ], [ %10, %8 ]
  %21 = and i64 %20, 4194368
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, ptr %11, align 8, !alias.scope !57
  br label %24

24:                                               ; preds = %23, %19
  %25 = call i32 @build_open_flags(ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = inttoptr i32 %25 to ptr
  br label %31

29:                                               ; preds = %24
  %30 = call ptr @do_filp_open(i32 noundef -100, ptr noundef %6, ptr noundef nonnull %4) #12
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  call void @putname(ptr noundef %6) #12
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi ptr [ %6, %3 ], [ %32, %31 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @file_open_root(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.open_flags, align 4
  %6 = alloca %struct.open_how, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %7 = and i32 %2, 8388547
  %8 = zext i32 %7 to i64
  store i64 %8, ptr %6, align 8, !alias.scope !60
  %9 = getelementptr inbounds %struct.open_how, ptr %6, i32 0, i32 1
  %10 = and i16 %3, 4095
  %11 = zext i16 %10 to i64
  store i64 %11, ptr %9, align 8, !alias.scope !60
  %12 = getelementptr inbounds %struct.open_how, ptr %6, i32 0, i32 2
  store i64 0, ptr %12, align 8, !alias.scope !60
  %13 = and i64 %8, 2097152
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = and i64 %8, 2670592
  store i64 %16, ptr %6, align 8, !alias.scope !60
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi i64 [ %16, %15 ], [ %8, %4 ]
  %19 = and i64 %18, 4194368
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, ptr %9, align 8, !alias.scope !60
  br label %22

22:                                               ; preds = %21, %17
  %23 = call i32 @build_open_flags(ptr noundef nonnull %6, ptr noundef nonnull %5)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = inttoptr i32 %23 to ptr
  br label %29

27:                                               ; preds = %22
  %28 = call ptr @do_file_open_root(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #12
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_file_open_root(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_sys_open(i32 noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.open_how, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = and i32 %2, 8388547
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %5, align 8, !alias.scope !63
  %8 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 1
  %9 = and i16 %3, 4095
  %10 = zext i16 %9 to i64
  store i64 %10, ptr %8, align 8, !alias.scope !63
  %11 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 2
  store i64 0, ptr %11, align 8, !alias.scope !63
  %12 = and i64 %7, 2097152
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = and i64 %7, 2670592
  store i64 %15, ptr %5, align 8, !alias.scope !63
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i64 [ %15, %14 ], [ %7, %4 ]
  %18 = and i64 %17, 4194368
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 0, ptr %8, align 8, !alias.scope !63
  br label %21

21:                                               ; preds = %20, %16
  %22 = call fastcc i32 @do_sys_openat2(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_sys_openat2(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.open_flags, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  %5 = call i32 @build_open_flags(ptr noundef %2, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  %8 = tail call ptr @getname(ptr noundef %1) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %65

12:                                               ; preds = %7
  %13 = load i64, ptr %2, align 8
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 @get_unused_fd_flags(i32 noundef %14) #12
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  %18 = call ptr @do_filp_open(i32 noundef %0, ptr noundef %8, ptr noundef nonnull %4) #12
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @put_unused_fd(i32 noundef %15) #12
  %21 = ptrtoint ptr %18 to i32
  br label %63

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 32, i32 4128
  %28 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 67108864
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1
  %34 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 42
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %32
  %44 = load i16, ptr %37, align 8
  %45 = and i16 %44, -4096
  %46 = icmp eq i16 %45, 16384
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = or i32 %27, 1073741824
  %49 = load i32, ptr %35, align 8
  %50 = and i32 %49, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %48, %47 ], [ %27, %43 ]
  %54 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, %35
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = call i32 @__fsnotify_parent(ptr noundef %35, i32 noundef %53, ptr noundef %33, i32 noundef 1) #12
  br label %62

59:                                               ; preds = %52, %47
  %60 = phi i32 [ %53, %52 ], [ %48, %47 ]
  %61 = call i32 @fsnotify(i32 noundef %60, ptr noundef %33, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %37, i32 noundef 0) #12
  br label %62

62:                                               ; preds = %59, %57, %32, %22
  call void @fd_install(i32 noundef %15, ptr noundef %18) #12
  br label %63

63:                                               ; preds = %62, %20, %12
  %64 = phi i32 [ %15, %12 ], [ %21, %20 ], [ %15, %62 ]
  call void @putname(ptr noundef %8) #12
  br label %65

65:                                               ; preds = %63, %10, %3
  %66 = phi i32 [ %11, %10 ], [ %64, %63 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_open(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.open_how, align 8
  %5 = trunc i32 %2 to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %6 = and i32 %1, 8388547
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %4, align 8, !alias.scope !66
  %8 = getelementptr inbounds %struct.open_how, ptr %4, i32 0, i32 1
  %9 = and i16 %5, 4095
  %10 = zext i16 %9 to i64
  store i64 %10, ptr %8, align 8, !alias.scope !66
  %11 = getelementptr inbounds %struct.open_how, ptr %4, i32 0, i32 2
  store i64 0, ptr %11, align 8, !alias.scope !66
  %12 = and i64 %7, 2097152
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = and i64 %7, 2670592
  store i64 %15, ptr %4, align 8, !alias.scope !66
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i64 [ %15, %14 ], [ %7, %3 ]
  %18 = and i64 %17, 4194368
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 0, ptr %8, align 8, !alias.scope !66
  br label %21

21:                                               ; preds = %20, %16
  %22 = inttoptr i32 %0 to ptr
  %23 = call fastcc i32 @do_sys_openat2(i32 noundef -100, ptr noundef %22, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_openat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.open_how, align 8
  %6 = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %7 = and i32 %2, 8388547
  %8 = zext i32 %7 to i64
  store i64 %8, ptr %5, align 8, !alias.scope !69
  %9 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 1
  %10 = and i16 %6, 4095
  %11 = zext i16 %10 to i64
  store i64 %11, ptr %9, align 8, !alias.scope !69
  %12 = getelementptr inbounds %struct.open_how, ptr %5, i32 0, i32 2
  store i64 0, ptr %12, align 8, !alias.scope !69
  %13 = and i64 %8, 2097152
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = and i64 %8, 2670592
  store i64 %16, ptr %5, align 8, !alias.scope !69
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi i64 [ %16, %15 ], [ %8, %4 ]
  %19 = and i64 %18, 4194368
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, ptr %9, align 8, !alias.scope !69
  br label %22

22:                                               ; preds = %21, %17
  %23 = inttoptr i32 %1 to ptr
  %24 = call fastcc i32 @do_sys_openat2(i32 noundef %0, ptr noundef %23, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_openat2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.open_how, align 8
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #12, !annotation !9
  %8 = icmp ult i32 %3, 24
  br i1 %8, label %36, label %9, !prof !11

9:                                                ; preds = %4
  %10 = icmp eq i32 %3, 24
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = add i32 %3, -24
  %13 = getelementptr i8, ptr %7, i32 24
  %14 = tail call i32 @check_zeroed_user(ptr noundef %13, i32 noundef %12) #12
  %15 = icmp slt i32 %14, 1
  %16 = icmp eq i32 %14, 0
  %17 = select i1 %16, i32 -7, i32 %14
  br i1 %15, label %36, label %18

18:                                               ; preds = %11, %9
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 24, i32 -1090519040) #13, !srcloc !72
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !16

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #12
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #10, !srcloc !73
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #12, !srcloc !74
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !75
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %7, i32 noundef 24) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !74
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !75
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !16

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 24, %18 ]
  %32 = sub i32 24, %31
  %33 = getelementptr i8, ptr %5, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #12
  br label %36

34:                                               ; preds = %22
  %35 = call fastcc i32 @do_sys_openat2(i32 noundef %0, ptr noundef %6, ptr noundef nonnull %5) #12
  br label %36

36:                                               ; preds = %34, %30, %11, %4
  %37 = phi i32 [ %35, %34 ], [ -22, %4 ], [ -14, %30 ], [ %17, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_creat(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.open_how, align 8
  %4 = inttoptr i32 %0 to ptr
  %5 = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  store i64 577, ptr %3, align 8, !alias.scope !76
  %6 = getelementptr inbounds %struct.open_how, ptr %3, i32 0, i32 1
  %7 = and i16 %5, 4095
  %8 = zext i16 %7 to i64
  store i64 %8, ptr %6, align 8, !alias.scope !76
  %9 = getelementptr inbounds %struct.open_how, ptr %3, i32 0, i32 2
  store i64 0, ptr %9, align 8, !alias.scope !76
  %10 = call fastcc i32 @do_sys_openat2(i32 noundef -100, ptr noundef %4, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filp_close(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %0, ptr noundef %1) #12
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 16384
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !16

22:                                               ; preds = %16
  tail call void @dnotify_flush(ptr noundef %0, ptr noundef %1) #12
  tail call void @locks_remove_posix(ptr noundef %0, ptr noundef %1) #12
  br label %23

23:                                               ; preds = %22, %16
  tail call void @fput(ptr noundef %0) #12
  br label %24

24:                                               ; preds = %23, %6
  %25 = phi i32 [ %17, %23 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dnotify_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_remove_posix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_close(i32 noundef %0) #0 {
  %2 = tail call i32 @close_fd(i32 noundef %0) #12
  %3 = add i32 %2, 516
  %4 = icmp ult i32 %3, 5
  %5 = trunc i32 %3 to i8
  %6 = lshr i8 29, %5
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 %2, i32 -4
  %10 = select i1 %4, i32 %9, i32 %2
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_close_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__close_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_vhangup() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @capable(i32 noundef 26) #12
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @tty_vhangup_self() #12
  br label %3

3:                                                ; preds = %2, %0
  %4 = phi i32 [ 0, %2 ], [ -1, %0 ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup_self() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_open(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %10

10:                                               ; preds = %18, %7
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !79
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !80
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !81
  %20 = load i64, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !82
  %21 = load volatile i32, ptr %8, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %10

23:                                               ; preds = %18
  %24 = icmp sgt i64 %20, 2147483647
  br i1 %24, label %26, label %25

25:                                               ; preds = %23, %2
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ 0, %25 ], [ -75, %23 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nonseekable_open(ptr nocapture readnone %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -29
  store i32 %5, ptr %3, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @stream_open(ptr nocapture readnone %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2129949
  %6 = or i32 %5, 2097152
  store i32 %6, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_faccessat(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !9
  %6 = icmp ult i32 %2, 8
  %7 = and i32 %3, -4865
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %101

10:                                               ; preds = %4
  %11 = lshr i32 %3, 8
  %12 = and i32 %11, 1
  %13 = shl nuw nsw i32 %3, 2
  %14 = and i32 %13, 16384
  %15 = or i32 %12, %14
  %16 = xor i32 %15, 1
  %17 = and i32 %3, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %10
  %20 = tail call ptr @prepare_creds() #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %101, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 7
  %24 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 8
  %27 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %26, align 4
  %29 = tail call ptr @llvm.thread.pointer() #12
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 83
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = icmp eq i32 %25, 0
  %38 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 12
  %39 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 11
  %40 = select i1 %37, ptr %39, ptr @__cap_empty_set
  %41 = load i64, ptr %40, align 4
  store i64 %41, ptr %38, align 4
  br label %42

42:                                               ; preds = %36, %22
  %43 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 24
  store i32 1, ptr %43, align 4
  %44 = tail call ptr @override_creds(ptr noundef nonnull %20) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #12, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #12, !srcloc !84
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !85
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void @__put_cred(ptr noundef nonnull %20) #12
  br label %49

49:                                               ; preds = %48, %42
  %50 = icmp eq ptr %44, null
  br i1 %50, label %101, label %51

51:                                               ; preds = %49, %10
  %52 = phi ptr [ null, %10 ], [ %44, %49 ]
  %53 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %16, ptr noundef nonnull %5, ptr noundef null) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %57 = and i32 %2, 1
  %58 = icmp eq i32 %57, 0
  %59 = or i32 %2, 16
  %60 = and i32 %2, 2
  %61 = icmp eq i32 %60, 0
  %62 = or i32 %16, 32
  br label %66

63:                                               ; preds = %91
  %64 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %62, ptr noundef nonnull %5, ptr noundef null) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %63, %55
  %67 = phi i32 [ %16, %55 ], [ %62, %63 ]
  %68 = load ptr, ptr %56, align 4
  %69 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8
  br i1 %58, label %77, label %71

71:                                               ; preds = %66
  %72 = load i16, ptr %70, align 8
  %73 = and i16 %72, -4096
  %74 = icmp eq i16 %73, -32768
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call zeroext i1 @path_noexec(ptr noundef nonnull %5) #12
  br i1 %76, label %91, label %77

77:                                               ; preds = %75, %71, %66
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.vfsmount, ptr %78, i32 0, i32 3
  %80 = load volatile ptr, ptr %79, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %81 = call i32 @inode_permission(ptr noundef %80, ptr noundef %70, i32 noundef %59) #12
  %82 = icmp ne i32 %81, 0
  %83 = or i1 %82, %61
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load i16, ptr %70, align 8
  %86 = and i16 %85, -4096
  switch i16 %86, label %87 [
    i16 8192, label %91
    i16 24576, label %91
    i16 4096, label %91
    i16 -16384, label %91
  ]

87:                                               ; preds = %84
  %88 = load ptr, ptr %5, align 8
  %89 = call zeroext i1 @__mnt_is_readonly(ptr noundef %88) #12
  %90 = select i1 %89, i32 -30, i32 0
  br label %91

91:                                               ; preds = %87, %84, %84, %84, %84, %77, %75
  %92 = phi i32 [ -13, %75 ], [ %81, %77 ], [ 0, %84 ], [ 0, %84 ], [ 0, %84 ], [ 0, %84 ], [ %90, %87 ]
  call void @path_put(ptr noundef nonnull %5) #12
  %93 = icmp eq i32 %92, -116
  %94 = and i32 %67, 32
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %95, %93
  br i1 %96, label %63, label %97

97:                                               ; preds = %91, %63, %51
  %98 = phi i32 [ %53, %51 ], [ %92, %91 ], [ %64, %63 ]
  %99 = icmp eq ptr %52, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void @revert_creds(ptr noundef nonnull %52) #12
  br label %101

101:                                              ; preds = %100, %97, %49, %19, %4
  %102 = phi i32 [ -22, %4 ], [ -12, %49 ], [ %98, %100 ], [ %98, %97 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @close_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__close_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

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
!10 = !{i64 2151762865}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148502623}
!13 = !{i64 887811, i64 2148377782, i64 2148377808, i64 2148377855, i64 2148377877, i64 2148377905, i64 2148377925}
!14 = !{i64 873874, i64 873898, i64 873919, i64 873936, i64 873953}
!15 = !{i64 2148502823}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148391554, i64 2148391580, i64 2148391609, i64 2148391643, i64 2148391674, i64 2148391697}
!18 = !{i64 2151873313}
!19 = !{i64 2148166833}
!20 = !{!21}
!21 = distinct !{!21, !22, !"fdget: argument 0"}
!22 = distinct !{!22, !"fdget"}
!23 = !{i64 2151699805}
!24 = !{i64 793489, i64 793550}
!25 = !{i64 812189}
!26 = !{i64 796506}
!27 = !{i64 2151707422}
!28 = !{i64 2151715887}
!29 = !{i64 2151724198}
!30 = !{i64 2151732416}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: argument 0"}
!33 = distinct !{!33, !"fdget"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"fdget: argument 0"}
!36 = distinct !{!36, !"fdget"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"fdget_raw: argument 0"}
!39 = distinct !{!39, !"fdget_raw"}
!40 = !{i64 2151873611}
!41 = !{!42}
!42 = distinct !{!42, !43, !"fdget: argument 0"}
!43 = distinct !{!43, !"fdget"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"fdget: argument 0"}
!46 = distinct !{!46, !"fdget"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"fdget: argument 0"}
!49 = distinct !{!49, !"fdget"}
!50 = !{i64 2154559229, i64 2154559703, i64 2154559266, i64 2154559322, i64 2154559356, i64 2154559380, i64 2154559421, i64 2154559442, i64 2154559470, i64 2154559504}
!51 = !{i64 2148389197, i64 2148389223, i64 2148389252, i64 2148389286, i64 2148389317, i64 2148389340}
!52 = !{i64 2154557743}
!53 = !{i64 2154563584, i64 2154564058, i64 2154563621, i64 2154563677, i64 2154563711, i64 2154563735, i64 2154563776, i64 2154563797, i64 2154563825, i64 2154563859}
!54 = !{!55}
!55 = distinct !{!55, !56, !"build_open_how: argument 0"}
!56 = distinct !{!56, !"build_open_how"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"build_open_how: argument 0"}
!59 = distinct !{!59, !"build_open_how"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"build_open_how: argument 0"}
!62 = distinct !{!62, !"build_open_how"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"build_open_how: argument 0"}
!65 = distinct !{!65, !"build_open_how"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"build_open_how: argument 0"}
!68 = distinct !{!68, !"build_open_how"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"build_open_how: argument 0"}
!71 = distinct !{!71, !"build_open_how"}
!72 = !{i64 2151535229, i64 2151535254}
!73 = !{i64 4031341}
!74 = !{i64 4031538}
!75 = !{i64 2151516817}
!76 = !{!77}
!77 = distinct !{!77, !78, !"build_open_how: argument 0"}
!78 = distinct !{!78, !"build_open_how"}
!79 = !{i64 2151850150}
!80 = !{i64 2151849992}
!81 = !{i64 2151850294}
!82 = !{i64 2149283871}
!83 = !{i64 2148489876}
!84 = !{i64 2148392238, i64 2148392270, i64 2148392299, i64 2148392333, i64 2148392364, i64 2148392387}
!85 = !{i64 2148490079}
