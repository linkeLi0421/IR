; ModuleID = '/llk/IR/fs/namespace.c_pt.bc'
source_filename = "../fs/namespace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_kobj\22\09\09\09\09\09"
module asm "__kstrtabns_fs_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mnt_is_readonly:\09\09\09\09\09"
module asm "\09.asciz \09\22__mnt_is_readonly\22\09\09\09\09\09"
module asm "__kstrtabns___mnt_is_readonly:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mnt_want_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mnt_want_write\22\09\09\09\09\09"
module asm "__kstrtabns_mnt_want_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mnt_want_write_file:\09\09\09\09\09"
module asm "\09.asciz \09\22mnt_want_write_file\22\09\09\09\09\09"
module asm "__kstrtabns_mnt_want_write_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mnt_drop_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mnt_drop_write\22\09\09\09\09\09"
module asm "__kstrtabns_mnt_drop_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mnt_drop_write_file:\09\09\09\09\09"
module asm "\09.asciz \09\22mnt_drop_write_file\22\09\09\09\09\09"
module asm "__kstrtabns_mnt_drop_write_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_create_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_create_mount\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_create_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_mount\22\09\09\09\09\09"
module asm "__kstrtabns_fc_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_kern_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_kern_mount\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_kern_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_submount\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mntput:\09\09\09\09\09"
module asm "\09.asciz \09\22mntput\22\09\09\09\09\09"
module asm "__kstrtabns_mntput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mntget:\09\09\09\09\09"
module asm "\09.asciz \09\22mntget\22\09\09\09\09\09"
module asm "__kstrtabns_mntget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_path_is_mountpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22path_is_mountpoint\22\09\09\09\09\09"
module asm "__kstrtabns_path_is_mountpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_may_umount_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22may_umount_tree\22\09\09\09\09\09"
module asm "__kstrtabns_may_umount_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_may_umount:\09\09\09\09\09"
module asm "\09.asciz \09\22may_umount\22\09\09\09\09\09"
module asm "__kstrtabns_may_umount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clone_private_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22clone_private_mount\22\09\09\09\09\09"
module asm "__kstrtabns_clone_private_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mnt_set_expiry:\09\09\09\09\09"
module asm "\09.asciz \09\22mnt_set_expiry\22\09\09\09\09\09"
module asm "__kstrtabns_mnt_set_expiry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_mounts_for_expiry:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_mounts_for_expiry\22\09\09\09\09\09"
module asm "__kstrtabns_mark_mounts_for_expiry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_subtree:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_subtree\22\09\09\09\09\09"
module asm "__kstrtabns_mount_subtree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_path_is_under:\09\09\09\09\09"
module asm "\09.asciz \09\22path_is_under\22\09\09\09\09\09"
module asm "__kstrtabns_path_is_under:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kern_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22kern_mount\22\09\09\09\09\09"
module asm "__kstrtabns_kern_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kern_unmount:\09\09\09\09\09"
module asm "\09.asciz \09\22kern_unmount\22\09\09\09\09\09"
module asm "__kstrtabns_kern_unmount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kern_unmount_array:\09\09\09\09\09"
module asm "\09.asciz \09\22kern_unmount_array\22\09\09\09\09\09"
module asm "__kstrtabns_kern_unmount_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.79, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.98, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.99, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.98 = type { %struct.callback_head }
%union.anon.99 = type { %struct.hlist_node }
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
%struct.mnt_pcp = type { i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.91, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.92, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.93, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.92 = type { %struct.callback_head }
%union.anon.93 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.94 = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, ptr, %struct.hlist_head, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.84, %struct.list_head, %struct.list_head, %union.anon.85 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.84 = type { %struct.list_head }
%union.anon.85 = type { %struct.hlist_node }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.proc_mounts = type { ptr, %struct.path, ptr, %struct.mount }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.35 = type { %struct.callback_head }
%struct.mount_attr = type { i64, i64, i64, i64 }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__setup_str_set_mhash_entries = internal constant [15 x i8] c"mhash_entries=\00", section ".init.rodata", align 1
@__setup_set_mhash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_mhash_entries, ptr @set_mhash_entries, i32 0 }, section ".init.setup", align 4
@__setup_str_set_mphash_entries = internal constant [16 x i8] c"mphash_entries=\00", section ".init.rodata", align 1
@__setup_set_mphash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_mphash_entries, ptr @set_mphash_entries, i32 0 }, section ".init.setup", align 4
@fs_kobj = dso_local global ptr null, align 4
@__kstrtab_fs_kobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_kobj = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_kobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_kobj to i32), ptr @__kstrtab_fs_kobj, ptr @__kstrtabns_fs_kobj }, section "___ksymtab_gpl+fs_kobj", align 4
@mount_lock = dso_local global %struct.seqlock_t zeroinitializer, section ".data..cacheline_aligned", align 64
@mnt_group_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab___mnt_is_readonly = external dso_local constant [0 x i8], align 1
@__kstrtabns___mnt_is_readonly = external dso_local constant [0 x i8], align 1
@__ksymtab___mnt_is_readonly = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mnt_is_readonly to i32), ptr @__kstrtab___mnt_is_readonly, ptr @__kstrtabns___mnt_is_readonly }, section "___ksymtab_gpl+__mnt_is_readonly", align 4
@__kstrtab_mnt_want_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mnt_want_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mnt_want_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mnt_want_write to i32), ptr @__kstrtab_mnt_want_write, ptr @__kstrtabns_mnt_want_write }, section "___ksymtab_gpl+mnt_want_write", align 4
@__kstrtab_mnt_want_write_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_mnt_want_write_file = external dso_local constant [0 x i8], align 1
@__ksymtab_mnt_want_write_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mnt_want_write_file to i32), ptr @__kstrtab_mnt_want_write_file, ptr @__kstrtabns_mnt_want_write_file }, section "___ksymtab_gpl+mnt_want_write_file", align 4
@__kstrtab_mnt_drop_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mnt_drop_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mnt_drop_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mnt_drop_write to i32), ptr @__kstrtab_mnt_drop_write, ptr @__kstrtabns_mnt_drop_write }, section "___ksymtab_gpl+mnt_drop_write", align 4
@__kstrtab_mnt_drop_write_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_mnt_drop_write_file = external dso_local constant [0 x i8], align 1
@__ksymtab_mnt_drop_write_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mnt_drop_write_file to i32), ptr @__kstrtab_mnt_drop_write_file, ptr @__kstrtabns_mnt_drop_write_file }, section "___ksymtab+mnt_drop_write_file", align 4
@namespace_sem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @namespace_sem, i64 16), ptr getelementptr (i8, ptr @namespace_sem, i64 16) } }, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__kstrtab_vfs_create_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_create_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_create_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_create_mount to i32), ptr @__kstrtab_vfs_create_mount, ptr @__kstrtabns_vfs_create_mount }, section "___ksymtab+vfs_create_mount", align 4
@__kstrtab_fc_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_mount to i32), ptr @__kstrtab_fc_mount, ptr @__kstrtabns_fc_mount }, section "___ksymtab+fc_mount", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@__kstrtab_vfs_kern_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_kern_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_kern_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_kern_mount to i32), ptr @__kstrtab_vfs_kern_mount, ptr @__kstrtabns_vfs_kern_mount }, section "___ksymtab_gpl+vfs_kern_mount", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_vfs_submount = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_submount = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_submount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_submount to i32), ptr @__kstrtab_vfs_submount, ptr @__kstrtabns_vfs_submount }, section "___ksymtab_gpl+vfs_submount", align 4
@__kstrtab_mntput = external dso_local constant [0 x i8], align 1
@__kstrtabns_mntput = external dso_local constant [0 x i8], align 1
@__ksymtab_mntput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mntput to i32), ptr @__kstrtab_mntput, ptr @__kstrtabns_mntput }, section "___ksymtab+mntput", align 4
@__kstrtab_mntget = external dso_local constant [0 x i8], align 1
@__kstrtabns_mntget = external dso_local constant [0 x i8], align 1
@__ksymtab_mntget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mntget to i32), ptr @__kstrtab_mntget, ptr @__kstrtabns_mntget }, section "___ksymtab+mntget", align 4
@__kstrtab_path_is_mountpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_path_is_mountpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_path_is_mountpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @path_is_mountpoint to i32), ptr @__kstrtab_path_is_mountpoint, ptr @__kstrtabns_path_is_mountpoint }, section "___ksymtab+path_is_mountpoint", align 4
@mounts_op = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @m_start, ptr @m_stop, ptr @m_next, ptr @m_show }, align 4
@__kstrtab_may_umount_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_may_umount_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_may_umount_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @may_umount_tree to i32), ptr @__kstrtab_may_umount_tree, ptr @__kstrtabns_may_umount_tree }, section "___ksymtab+may_umount_tree", align 4
@__kstrtab_may_umount = external dso_local constant [0 x i8], align 1
@__kstrtabns_may_umount = external dso_local constant [0 x i8], align 1
@__ksymtab_may_umount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @may_umount to i32), ptr @__kstrtab_may_umount, ptr @__kstrtabns_may_umount }, section "___ksymtab+may_umount", align 4
@event = internal unnamed_addr global i64 0, align 8
@unmounted = internal global %struct.hlist_head zeroinitializer, align 4
@__kstrtab_clone_private_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_clone_private_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_clone_private_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clone_private_mount to i32), ptr @__kstrtab_clone_private_mount, ptr @__kstrtabns_clone_private_mount }, section "___ksymtab_gpl+clone_private_mount", align 4
@sysctl_mount_max = internal global i32 100000, section ".data..read_mostly", align 4
@__kstrtab_mnt_set_expiry = external dso_local constant [0 x i8], align 1
@__kstrtabns_mnt_set_expiry = external dso_local constant [0 x i8], align 1
@__ksymtab_mnt_set_expiry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mnt_set_expiry to i32), ptr @__kstrtab_mnt_set_expiry, ptr @__kstrtabns_mnt_set_expiry }, section "___ksymtab+mnt_set_expiry", align 4
@__kstrtab_mark_mounts_for_expiry = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_mounts_for_expiry = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_mounts_for_expiry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_mounts_for_expiry to i32), ptr @__kstrtab_mark_mounts_for_expiry, ptr @__kstrtabns_mark_mounts_for_expiry }, section "___ksymtab_gpl+mark_mounts_for_expiry", align 4
@__kstrtab_mount_subtree = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_subtree = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_subtree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_subtree to i32), ptr @__kstrtab_mount_subtree, ptr @__kstrtabns_mount_subtree }, section "___ksymtab+mount_subtree", align 4
@__kstrtab_path_is_under = external dso_local constant [0 x i8], align 1
@__kstrtabns_path_is_under = external dso_local constant [0 x i8], align 1
@__ksymtab_path_is_under = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @path_is_under to i32), ptr @__kstrtab_path_is_under, ptr @__kstrtabns_path_is_under }, section "___ksymtab+path_is_under", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mnt_cache\00", align 1
@mnt_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Mount-cache\00", align 1
@mhash_entries = internal unnamed_addr global i32 0, section ".init.data", align 4
@m_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@m_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@mount_hashtable = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Mountpoint-cache\00", align 1
@mphash_entries = internal unnamed_addr global i32 0, section ".init.data", align 4
@mp_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@mp_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@mountpoint_hashtable = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate mount hash table\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\014%s: sysfs_init error: %d\0A\00", align 1
@__func__.mnt_init = private unnamed_addr constant [9 x i8] c"mnt_init\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\014%s: kobj create error\0A\00", align 1
@__kstrtab_kern_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_kern_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_kern_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kern_mount to i32), ptr @__kstrtab_kern_mount, ptr @__kstrtabns_kern_mount }, section "___ksymtab_gpl+kern_mount", align 4
@__kstrtab_kern_unmount = external dso_local constant [0 x i8], align 1
@__kstrtabns_kern_unmount = external dso_local constant [0 x i8], align 1
@__ksymtab_kern_unmount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kern_unmount to i32), ptr @__kstrtab_kern_unmount, ptr @__kstrtabns_kern_unmount }, section "___ksymtab+kern_unmount", align 4
@__kstrtab_kern_unmount_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_kern_unmount_array = external dso_local constant [0 x i8], align 1
@__ksymtab_kern_unmount_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kern_unmount_array to i32), ptr @__kstrtab_kern_unmount_array, ptr @__kstrtabns_kern_unmount_array }, section "___ksymtab+kern_unmount_array", align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"mnt\00", align 1
@mntns_operations = dso_local constant %struct.proc_ns_operations { ptr @.str.9, ptr null, i32 131072, ptr @mntns_get, ptr @mntns_put, ptr @mntns_install, ptr @mntns_owner, ptr null }, align 4
@__initcall__kmod_namespace__272_4672_init_fs_namespace_sysctls5 = internal global ptr @init_fs_namespace_sysctls, section ".initcall5.init", align 4
@ex_mountpoints = internal global %struct.list_head { ptr @ex_mountpoints, ptr @ex_mountpoints }, align 4
@mnt_id_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"fs/namespace.c\00", align 1
@delayed_mntput_list = internal global %struct.llist_head zeroinitializer, align 4
@delayed_mntput_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @delayed_mntput_work, i64 4), ptr getelementptr (i8, ptr @delayed_mntput_work, i64 4) }, ptr @delayed_mntput }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ns_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@warn_mandlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [282 x i8] c"\014=======================================================\0AWARNING: The mand mount option has been deprecated and\0A         and is ignored by this kernel. Remove the mand\0A         option from the mount to silence this warning.\0A=======================================================\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"\014%s filesystem being %s at %s supports timestamps until %04ld (0x%llx)\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"remounted\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mounted\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@mount_too_revealing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Expected s_iflags to contain 0x%lx\0A\00", align 1
@mnt_ns_seq = internal global %struct.atomic64_t { i64 1 }, align 8
@alloc_mnt_ns.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"&new_ns->poll\00", align 1
@fscontext_fops = external dso_local constant %struct.file_operations, align 4
@.str.20 = private unnamed_addr constant [28 x i8] c"\014VFS: Mount too revealing\0A\00", align 1
@rootfs_fs_type = external dso_local global %struct.file_system_type, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Can't create rootfs\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Can't allocate initial namespace\00", align 1
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 64
@.str.24 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@fs_namespace_sysctls = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.26, ptr @sysctl_mount_max, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"fs_namespace_sysctls\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"mount-max\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_namespace__272_4672_init_fs_namespace_sysctls5, ptr @__ksymtab___mnt_is_readonly, ptr @__ksymtab_clone_private_mount, ptr @__ksymtab_fc_mount, ptr @__ksymtab_fs_kobj, ptr @__ksymtab_kern_mount, ptr @__ksymtab_kern_unmount, ptr @__ksymtab_kern_unmount_array, ptr @__ksymtab_mark_mounts_for_expiry, ptr @__ksymtab_may_umount, ptr @__ksymtab_may_umount_tree, ptr @__ksymtab_mnt_drop_write, ptr @__ksymtab_mnt_drop_write_file, ptr @__ksymtab_mnt_set_expiry, ptr @__ksymtab_mnt_want_write, ptr @__ksymtab_mnt_want_write_file, ptr @__ksymtab_mntget, ptr @__ksymtab_mntput, ptr @__ksymtab_mount_subtree, ptr @__ksymtab_path_is_mountpoint, ptr @__ksymtab_path_is_under, ptr @__ksymtab_vfs_create_mount, ptr @__ksymtab_vfs_kern_mount, ptr @__ksymtab_vfs_submount, ptr @__setup_set_mhash_entries, ptr @__setup_set_mphash_entries], section "llvm.metadata"

@sys_umount = dso_local alias i32 (ptr, i32), ptr @__se_sys_umount
@sys_open_tree = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_open_tree
@sys_mount = dso_local alias i32 (ptr, ptr, ptr, i32, ptr), ptr @__se_sys_mount
@sys_fsmount = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fsmount
@sys_move_mount = dso_local alias i32 (i32, ptr, i32, ptr, i32), ptr @__se_sys_move_mount
@sys_pivot_root = dso_local alias i32 (ptr, ptr), ptr @__se_sys_pivot_root
@sys_mount_setattr = dso_local alias i32 (i32, ptr, i32, ptr, i32), ptr @__se_sys_mount_setattr

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_mhash_entries(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = call i32 @simple_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #21
  store i32 %5, ptr @mhash_entries, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_mphash_entries(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = call i32 @simple_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #21
  store i32 %5, ptr @mphash_entries, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_release_group_id(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  tail call void @ida_free(ptr noundef nonnull @mnt_group_ida, i32 noundef %3) #21
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @mnt_get_count(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %3, %5 ], [ %18, %9 ]
  %11 = phi i32 [ 0, %5 ], [ %17, %9 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %8
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #22
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %9 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__mnt_is_readonly(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ true, %1 ], [ %12, %6 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mnt_want_write(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mnt_pcp, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #15, !srcloc !11
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #21, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  %14 = getelementptr i8, ptr %0, i32 8
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !15
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !16
  %23 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 43
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %29 = load i32, ptr %14, align 4
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32, %28, %22
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.mnt_pcp, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #15, !srcloc !11
  %46 = add i32 %45, %42
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  store i32 %49, ptr %47, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #21, !srcloc !12
  br label %50

50:                                               ; preds = %38, %32
  %51 = phi i32 [ -30, %38 ], [ 0, %32 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mnt_want_write(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.super_block, ptr %3, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19, !prof !20

7:                                                ; preds = %1
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %9 = getelementptr %struct.super_block, ptr %3, i32 0, i32 26, i32 2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #15, !srcloc !11
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #21, !srcloc !12
  br label %21

19:                                               ; preds = %1
  %20 = tail call zeroext i1 @__percpu_down_read(ptr noundef %4, i1 noundef zeroext false) #21
  br label %21

21:                                               ; preds = %19, %7
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %23 = getelementptr i8, ptr %0, i32 24
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mnt_pcp, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #15, !srcloc !11
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #21, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  %34 = getelementptr i8, ptr %0, i32 8
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %38, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !15
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !16
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %48 = load i32, ptr %34, align 4
  %49 = and i32 %48, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  br label %101

58:                                               ; preds = %51, %47, %42
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %60 = load ptr, ptr %23, align 4
  %61 = getelementptr inbounds %struct.mnt_pcp, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #15, !srcloc !11
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %67, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr %struct.super_block, ptr %70, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %72 = load volatile i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86, !prof !20

74:                                               ; preds = %58
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %76 = getelementptr %struct.super_block, ptr %70, i32 0, i32 26, i32 2, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #15, !srcloc !11
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  store i32 %85, ptr %83, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %75) #21, !srcloc !12
  br label %100

86:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !23
  %87 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %88 = getelementptr %struct.super_block, ptr %70, i32 0, i32 26, i32 2, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %92 = inttoptr i32 %91 to ptr
  %93 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %92) #15, !srcloc !11
  %94 = add i32 %93, %90
  %95 = inttoptr i32 %94 to ptr
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, -1
  store i32 %97, ptr %95, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #21, !srcloc !12
  %98 = getelementptr %struct.super_block, ptr %70, i32 0, i32 26, i32 2, i32 0, i32 2
  %99 = tail call i32 @rcuwait_wake_up(ptr noundef %98) #21
  br label %100

100:                                              ; preds = %86, %74
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  br label %101

101:                                              ; preds = %100, %57
  %102 = phi i32 [ 0, %57 ], [ -30, %100 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mnt_want_write_file(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %13, %8
  br label %72

21:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %23 = getelementptr i8, ptr %7, i32 24
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mnt_pcp, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #15, !srcloc !11
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #21, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  %34 = getelementptr i8, ptr %7, i32 8
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %38, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !15
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !16
  %43 = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 43
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %49 = load i32, ptr %34, align 4
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52, %48, %42
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %60 = load ptr, ptr %23, align 4
  %61 = getelementptr inbounds %struct.mnt_pcp, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #15, !srcloc !11
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %67, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #21, !srcloc !12
  br label %70

70:                                               ; preds = %58, %52
  %71 = phi i32 [ -30, %58 ], [ 0, %52 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  br label %72

72:                                               ; preds = %70, %20, %13
  %73 = phi i32 [ %71, %70 ], [ -30, %20 ], [ 0, %13 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mnt_want_write_file(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.super_block, ptr %5, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21, !prof !20

9:                                                ; preds = %1
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %11 = getelementptr %struct.super_block, ptr %5, i32 0, i32 26, i32 2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #15, !srcloc !11
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #21, !srcloc !12
  br label %23

21:                                               ; preds = %1
  %22 = tail call zeroext i1 @__percpu_down_read(ptr noundef %6, i1 noundef zeroext false) #21
  br label %23

23:                                               ; preds = %21, %9
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %24 = tail call i32 @__mnt_want_write_file(ptr noundef %0)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.super_block, ptr %29, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45, !prof !20

33:                                               ; preds = %26
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %35 = getelementptr %struct.super_block, ptr %29, i32 0, i32 26, i32 2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #15, !srcloc !11
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #21, !srcloc !12
  br label %59

45:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !23
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %47 = getelementptr %struct.super_block, ptr %29, i32 0, i32 26, i32 2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #15, !srcloc !11
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #21, !srcloc !12
  %57 = getelementptr %struct.super_block, ptr %29, i32 0, i32 26, i32 2, i32 0, i32 2
  %58 = tail call i32 @rcuwait_wake_up(ptr noundef %57) #21
  br label %59

59:                                               ; preds = %45, %33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  br label %60

60:                                               ; preds = %59, %23
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mnt_drop_write(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mnt_pcp, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #15, !srcloc !11
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_drop_write(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mnt_pcp, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #15, !srcloc !11
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %14 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.super_block, ptr %15, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31, !prof !20

19:                                               ; preds = %1
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %21 = getelementptr %struct.super_block, ptr %15, i32 0, i32 26, i32 2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #15, !srcloc !11
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #21, !srcloc !12
  br label %45

31:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !23
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %33 = getelementptr %struct.super_block, ptr %15, i32 0, i32 26, i32 2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #15, !srcloc !11
  %39 = add i32 %38, %35
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #21, !srcloc !12
  %43 = getelementptr %struct.super_block, ptr %15, i32 0, i32 26, i32 2, i32 0, i32 2
  %44 = tail call i32 @rcuwait_wake_up(ptr noundef %43) #21
  br label %45

45:                                               ; preds = %31, %19
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mnt_drop_write_file(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %10 = getelementptr i8, ptr %8, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mnt_pcp, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #15, !srcloc !11
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  br label %21

21:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_drop_write_file(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %10 = getelementptr i8, ptr %8, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mnt_pcp, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #15, !srcloc !11
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  br label %21

21:                                               ; preds = %6, %1
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.super_block, ptr %25, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41, !prof !20

29:                                               ; preds = %21
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %31 = getelementptr %struct.super_block, ptr %25, i32 0, i32 26, i32 2, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #15, !srcloc !11
  %37 = add i32 %36, %33
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #21, !srcloc !12
  br label %55

41:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !23
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %43 = getelementptr %struct.super_block, ptr %25, i32 0, i32 26, i32 2, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #15, !srcloc !11
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #21, !srcloc !12
  %53 = getelementptr %struct.super_block, ptr %25, i32 0, i32 26, i32 2, i32 0, i32 2
  %54 = tail call i32 @rcuwait_wake_up(ptr noundef %53) #21
  br label %55

55:                                               ; preds = %41, %29
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sb_prepare_remount_readonly(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 41
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %68

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %6 = load i32, ptr @mount_lock, align 64
  %7 = add i32 %6, 1
  store i32 %7, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %43, label %11

11:                                               ; preds = %40, %5
  %12 = phi ptr [ %41, %40 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 -36
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = or i32 %14, 512
  store i32 %18, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !28
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %12, i32 -20
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i32 [ %20, %22 ], [ %36, %26 ]
  %28 = phi i32 [ 0, %22 ], [ %35, %26 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %25
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.mnt_pcp, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %28
  %36 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef nonnull @__cpu_possible_mask) #22
  %37 = icmp ult i32 %36, %19
  br i1 %37, label %26, label %38

38:                                               ; preds = %26
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %38, %17, %11
  %41 = load ptr, ptr %12, align 4
  %42 = icmp eq ptr %41, %8
  br i1 %42, label %43, label %11

43:                                               ; preds = %40, %5
  %44 = load volatile i32, ptr %2, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 43
  store i32 1, ptr %47, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !29
  br label %48

48:                                               ; preds = %46, %43, %38
  %49 = phi i32 [ 0, %46 ], [ -16, %43 ], [ -16, %38 ]
  %50 = load ptr, ptr %8, align 4
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %63, label %52

52:                                               ; preds = %60, %48
  %53 = phi ptr [ %61, %60 ], [ %50, %48 ]
  %54 = getelementptr i8, ptr %53, i32 -36
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 512
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = and i32 %55, -513
  store i32 %59, ptr %54, align 4
  br label %60

60:                                               ; preds = %58, %52
  %61 = load ptr, ptr %53, align 4
  %62 = icmp eq ptr %61, %8
  br i1 %62, label %63, label %52

63:                                               ; preds = %60, %48
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %64 = load i32, ptr @mount_lock, align 64
  %65 = add i32 %64, 1
  store i32 %65, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %66 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %68

68:                                               ; preds = %63, %1
  %69 = phi i32 [ %49, %63 ], [ -16, %1 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__legitimize_mnt(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %3 = load volatile i32, ptr @mount_lock, align 64
  %4 = icmp eq i32 %3, %1
  br i1 %4, label %5, label %63

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %5
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %9 = getelementptr i8, ptr %0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #15, !srcloc !11
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #21, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %19 = load volatile i32, ptr @mount_lock, align 64
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %63, label %21, !prof !20

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 33554432
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %28 = load ptr, ptr %9, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #15, !srcloc !11
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #21, !srcloc !12
  br label %63

37:                                               ; preds = %21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %38 = load i32, ptr @mount_lock, align 64
  %39 = add i32 %38, 1
  store i32 %39, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %40 = load i32, ptr %22, align 4
  %41 = and i32 %40, 16777216
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43, !prof !20

43:                                               ; preds = %37
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %45 = load ptr, ptr %9, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #15, !srcloc !11
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #21, !srcloc !12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %54 = load i32, ptr @mount_lock, align 64
  %55 = add i32 %54, 1
  store i32 %55, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %56 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %63

58:                                               ; preds = %37
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %59 = load i32, ptr @mount_lock, align 64
  %60 = add i32 %59, 1
  store i32 %60, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %61 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %63

63:                                               ; preds = %58, %43, %26, %7, %5, %2
  %64 = phi i32 [ 1, %26 ], [ 1, %43 ], [ -1, %58 ], [ 1, %2 ], [ 0, %5 ], [ 0, %7 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @legitimize_mnt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @__legitimize_mnt(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5, !prof !20

5:                                                ; preds = %2
  %6 = icmp slt i32 %3, 0
  br i1 %6, label %7, label %17, !prof !37

7:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  %8 = icmp eq ptr %0, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = getelementptr i8, ptr %0, i32 140
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !20

14:                                               ; preds = %9
  store i32 0, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %9
  tail call fastcc void @mntput_no_expire(ptr noundef %10) #21
  br label %16

16:                                               ; preds = %15, %7
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  br label %17

17:                                               ; preds = %16, %5, %2
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mntput(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 140
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !20

8:                                                ; preds = %3
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %3
  tail call fastcc void @mntput_no_expire(ptr noundef %4)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__lookup_mnt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = ptrtoint ptr %0 to i32
  %4 = lshr i32 %3, 6
  %5 = ptrtoint ptr %1 to i32
  %6 = lshr i32 %5, 6
  %7 = add nuw nsw i32 %6, %4
  %8 = load i32, ptr @m_hash_shift, align 4
  %9 = lshr i32 %7, %8
  %10 = add nuw nsw i32 %9, %7
  %11 = load ptr, ptr @mount_hashtable, align 4
  %12 = load i32, ptr @m_hash_mask, align 4
  %13 = and i32 %10, %12
  %14 = getelementptr %struct.hlist_head, ptr %11, i32 %13
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %27, %2
  %18 = phi ptr [ %28, %27 ], [ %15, %2 ]
  %19 = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 3
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %17
  %28 = load volatile ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17

30:                                               ; preds = %27, %23, %2
  %31 = phi ptr [ null, %2 ], [ null, %27 ], [ %18, %23 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_mnt(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %51, %1
  %4 = load volatile i32, ptr @mount_lock, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !41
  %8 = load volatile i32, ptr @mount_lock, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !42
  %13 = load ptr, ptr %0, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = ptrtoint ptr %13 to i32
  %16 = lshr i32 %15, 6
  %17 = ptrtoint ptr %14 to i32
  %18 = lshr i32 %17, 6
  %19 = add nuw nsw i32 %18, %16
  %20 = load i32, ptr @m_hash_shift, align 4
  %21 = lshr i32 %19, %20
  %22 = add nuw nsw i32 %21, %19
  %23 = load ptr, ptr @mount_hashtable, align 4
  %24 = load i32, ptr @m_hash_mask, align 4
  %25 = and i32 %22, %24
  %26 = getelementptr %struct.hlist_head, ptr %23, i32 %25
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %39, %11
  %30 = phi ptr [ %40, %39 ], [ %27, %11 ]
  %31 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mount, ptr %32, i32 0, i32 3
  %34 = icmp eq ptr %33, %13
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %14
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %29
  %40 = load volatile ptr, ptr %30, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29

42:                                               ; preds = %39, %35, %11
  %43 = phi ptr [ null, %11 ], [ %30, %35 ], [ null, %39 ]
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 3
  %46 = select i1 %44, ptr null, ptr %45
  %47 = tail call i32 @__legitimize_mnt(ptr noundef %46, i32 noundef %12) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49, !prof !20

49:                                               ; preds = %42
  %50 = icmp slt i32 %47, 0
  br i1 %50, label %52, label %51, !prof !37

51:                                               ; preds = %61, %49
  br label %3

52:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  %53 = icmp eq ptr %46, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %46, i32 -16
  %56 = getelementptr i8, ptr %46, i32 140
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59, !prof !20

59:                                               ; preds = %54
  store i32 0, ptr %56, align 4
  br label %60

60:                                               ; preds = %59, %54
  tail call fastcc void @mntput_no_expire(ptr noundef %55) #21
  br label %61

61:                                               ; preds = %60, %52
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  br label %51

62:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__is_local_mountpoint(ptr noundef readnone %0) local_unnamed_addr #1 {
  %2 = tail call ptr @llvm.thread.pointer() #21
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 92
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @down_read(ptr noundef nonnull @namespace_sem) #21
  %7 = getelementptr inbounds %struct.mnt_namespace, ptr %6, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %7) #21
  %8 = getelementptr inbounds %struct.mnt_namespace, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %24, label %11

11:                                               ; preds = %21, %1
  %12 = phi ptr [ %22, %21 ], [ %9, %1 ]
  %13 = getelementptr i8, ptr %12, i32 -48
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %12, i32 -60
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %11
  %22 = load ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %11

24:                                               ; preds = %21, %17, %1
  %25 = phi i1 [ false, %1 ], [ true, %17 ], [ false, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %26 = load i16, ptr %7, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_set_mountpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.mountpoint, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %8 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #15, !srcloc !11
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #21, !srcloc !12
  %18 = getelementptr inbounds %struct.mountpoint, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 17
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 18
  %24 = getelementptr inbounds %struct.mountpoint, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  store volatile ptr %25, ptr %23, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  store volatile ptr %23, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %3
  store volatile ptr %23, ptr %24, align 4
  %30 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 18, i32 0, i32 1
  store volatile ptr %24, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_change_mountpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 7
  %9 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 7, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  %13 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 18
  %14 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 18, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %13, align 4
  store volatile ptr %18, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %15, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17
  store ptr null, ptr %13, align 4
  store ptr null, ptr %14, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 4
  store volatile ptr %28, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  store volatile ptr %25, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %27
  store volatile ptr null, ptr %24, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = getelementptr inbounds %struct.mountpoint, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %38 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #15, !srcloc !11
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #21, !srcloc !12
  %48 = getelementptr inbounds %struct.mountpoint, ptr %1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %4, align 4
  %51 = getelementptr inbounds %struct.mountpoint, ptr %1, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  store volatile ptr %52, ptr %13, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  store volatile ptr %13, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %33
  store volatile ptr %13, ptr %51, align 4
  store volatile ptr %51, ptr %14, align 4
  %57 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %50, align 4
  %59 = ptrtoint ptr %57 to i32
  %60 = lshr i32 %59, 6
  %61 = ptrtoint ptr %58 to i32
  %62 = lshr i32 %61, 6
  %63 = add nuw nsw i32 %62, %60
  %64 = load i32, ptr @m_hash_shift, align 4
  %65 = lshr i32 %63, %64
  %66 = add nuw nsw i32 %65, %63
  %67 = load ptr, ptr @mount_hashtable, align 4
  %68 = load i32, ptr @m_hash_mask, align 4
  %69 = and i32 %66, %68
  %70 = getelementptr %struct.hlist_head, ptr %67, i32 %69
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %2, align 4
  store volatile ptr %70, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  store volatile ptr %2, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  store volatile ptr %2, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %56
  %76 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 6, i32 1
  %78 = load ptr, ptr %77, align 4
  store ptr %8, ptr %77, align 4
  store ptr %76, ptr %8, align 4
  store ptr %78, ptr %9, align 4
  store volatile ptr %8, ptr %78, align 4
  %79 = getelementptr inbounds %struct.mountpoint, ptr %5, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %79, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.mountpoint, ptr %5, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.mountpoint, ptr %5, i32 0, i32 2
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89, !prof !20

89:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.dentry, ptr %85, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %91) #21
  %92 = load i32, ptr %85, align 8
  %93 = and i32 %92, -65537
  store i32 %93, ptr %85, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %94 = load i16, ptr %91, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @dput_to_list(ptr noundef %85, ptr noundef nonnull @ex_mountpoints) #21
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  store volatile ptr %96, ptr %98, align 4
  %99 = icmp eq ptr %96, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.hlist_node, ptr %96, i32 0, i32 1
  store volatile ptr %98, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %90
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %97, align 4
  tail call void @kfree(ptr noundef %5) #21
  br label %103

103:                                              ; preds = %102, %75
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %105 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %109 = inttoptr i32 %108 to ptr
  %110 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %109) #15, !srcloc !11
  %111 = add i32 %110, %107
  %112 = inttoptr i32 %111 to ptr
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, -1
  store i32 %114, ptr %112, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %104) #21, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_mountpoint(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 2
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !20

12:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %14) #21
  %15 = load i32, ptr %8, align 8
  %16 = and i32 %15, -65537
  store i32 %16, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %17 = load i16, ptr %14, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @dput_to_list(ptr noundef %8, ptr noundef nonnull @ex_mountpoints) #21
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store volatile ptr %19, ptr %21, align 4
  %22 = icmp eq ptr %19, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %21, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %13
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef %0) #21
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vfs_create_mount(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str, ptr %7
  %10 = tail call fastcc ptr @alloc_vfsmnt(ptr noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4194304
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 3, i32 2
  store i32 16384, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #21, !srcloc !45
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #21, !srcloc !46
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 3
  %29 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 3, i32 1
  store ptr %27, ptr %29, align 4
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %33) #21
  %34 = load ptr, ptr %29, align 4
  br label %35

35:                                               ; preds = %32, %19
  %36 = phi ptr [ %27, %19 ], [ %34, %32 ]
  store ptr %30, ptr %28, align 4
  %37 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 2
  store ptr %30, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 1
  store ptr %10, ptr %38, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 47
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, @init_user_ns
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 3, i32 3
  store ptr @init_user_ns, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %35
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %45 = load i32, ptr @mount_lock, align 64
  %46 = add i32 %45, 1
  store i32 %46, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %47 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 8
  %48 = load ptr, ptr %29, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 19
  %50 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 19, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %47, ptr %50, align 4
  store ptr %49, ptr %47, align 4
  %52 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 8, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %47, ptr %51, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %53 = load i32, ptr @mount_lock, align 64
  %54 = add i32 %53, 1
  store i32 %54, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %55 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %57

57:                                               ; preds = %44, %5, %1
  %58 = phi ptr [ %28, %44 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_vfsmnt(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @mnt_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3520) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mnt_id_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #21
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 22
  store i32 %6, ptr %9, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @kstrdup_const(ptr noundef nonnull %0, i32 noundef 4197568) #21
  %13 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 9
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %11, %8
  %16 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 4) #23
  %17 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 5
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %21 = load ptr, ptr %17, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #15, !srcloc !11
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #21, !srcloc !12
  store ptr null, ptr %3, align 8
  %30 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 7
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 7, i32 1
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 6
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 6, i32 1
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 10
  store volatile ptr %35, ptr %35, align 8
  %36 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 10, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 11
  store volatile ptr %37, ptr %37, align 8
  %38 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 11, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 12
  store volatile ptr %39, ptr %39, align 8
  %40 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 12, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 13
  store volatile ptr %41, ptr %41, align 8
  %42 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 13, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 14
  store volatile ptr %43, ptr %43, align 8
  %44 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 14, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 18
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 18, i32 0, i32 1
  store ptr null, ptr %46, align 8
  %47 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 19
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 19, i32 1
  store ptr %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 26
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 3, i32 3
  store ptr @init_user_ns, ptr %50, align 4
  br label %58

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree_const(ptr noundef %53) #21
  br label %54

54:                                               ; preds = %51, %11
  %55 = load i32, ptr %9, align 4
  tail call void @ida_free(ptr noundef nonnull @mnt_id_ida, i32 noundef %55) #21
  br label %56

56:                                               ; preds = %54, %5
  %57 = load ptr, ptr @mnt_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %3) #21
  br label %58

58:                                               ; preds = %56, %19, %1
  %59 = phi ptr [ null, %56 ], [ null, %1 ], [ %3, %19 ]
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fc_mount(ptr noundef %0) #1 {
  %2 = tail call i32 @vfs_get_tree(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 14
  tail call void @up_write(ptr noundef %9) #21
  %10 = tail call ptr @vfs_create_mount(ptr noundef %0)
  br label %13

11:                                               ; preds = %1
  %12 = inttoptr i32 %2 to ptr
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ %10, %4 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vfs_kern_mount(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @fs_context_for_mount(ptr noundef nonnull %0, i32 noundef %1) #21
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @strlen(ptr noundef nonnull %2)
  %13 = tail call i32 @vfs_parse_fs_string(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef %12) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11, %9
  %16 = tail call i32 @parse_monolithic_mount_data(ptr noundef %7, ptr noundef %3) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = tail call i32 @vfs_get_tree(ptr noundef %7) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 14
  tail call void @up_write(ptr noundef %26) #21
  %27 = tail call ptr @vfs_create_mount(ptr noundef %7) #21
  br label %33

28:                                               ; preds = %18
  %29 = inttoptr i32 %19 to ptr
  br label %33

30:                                               ; preds = %15, %11
  %31 = phi i32 [ %16, %15 ], [ %13, %11 ]
  %32 = inttoptr i32 %31 to ptr
  br label %33

33:                                               ; preds = %30, %28, %21
  %34 = phi ptr [ %32, %30 ], [ %29, %28 ], [ %27, %21 ]
  tail call void @put_fs_context(ptr noundef %7) #21
  br label %35

35:                                               ; preds = %33, %6, %4
  %36 = phi ptr [ %34, %33 ], [ inttoptr (i32 -22 to ptr), %4 ], [ %7, %6 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_mount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_monolithic_mount_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vfs_submount(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @init_user_ns
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @vfs_kern_mount(ptr noundef %1, i32 noundef 67108864, ptr noundef %2, ptr noundef %3)
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %11, %10 ], [ inttoptr (i32 -1 to ptr), %4 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mntput_no_expire(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  %4 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !37

7:                                                ; preds = %1
  %8 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %9 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = call i32 @llvm.read_register.i32(metadata !0) #21
  %13 = inttoptr i32 %12 to ptr
  %14 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #15, !srcloc !11
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  br label %104

19:                                               ; preds = %1
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %20 = load i32, ptr @mount_lock, align 64
  %21 = add i32 %20, 1
  store i32 %21, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !47
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %23 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = call i32 @llvm.read_register.i32(metadata !0) #21
  %27 = inttoptr i32 %26 to ptr
  %28 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #15, !srcloc !11
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #21, !srcloc !12
  %33 = call i32 @mnt_get_count(ptr noundef %0)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %19
  %36 = icmp slt i32 %33, 0
  br i1 %36, label %37, label %38, !prof !37

37:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1223, i32 noundef 9, ptr noundef null) #21
  br label %38

38:                                               ; preds = %37, %35
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %39 = load i32, ptr @mount_lock, align 64
  %40 = add i32 %39, 1
  store i32 %40, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %41 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %104

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16777216
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48, !prof !20

48:                                               ; preds = %43
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %49 = load i32, ptr @mount_lock, align 64
  %50 = add i32 %49, 1
  store i32 %50, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %51 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %104

53:                                               ; preds = %43
  %54 = or i32 %45, 16777216
  store i32 %54, ptr %44, align 4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  %55 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 8
  %56 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 8, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %60 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 6
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %78, label %63, !prof !20

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 26
  br label %65

65:                                               ; preds = %75, %63
  %66 = phi ptr [ %61, %63 ], [ %68, %75 ]
  %67 = getelementptr i8, ptr %66, i32 -52
  %68 = load ptr, ptr %66, align 4
  %69 = call fastcc ptr @unhash_mnt(ptr noundef %67)
  call fastcc void @__put_mountpoint(ptr noundef %69, ptr noundef nonnull %2)
  %70 = getelementptr i8, ptr %66, i32 72
  %71 = load ptr, ptr %64, align 4
  store volatile ptr %71, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  store volatile ptr %70, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %65
  store volatile ptr %70, ptr %64, align 4
  %76 = getelementptr i8, ptr %66, i32 76
  store volatile ptr %64, ptr %76, align 4
  %77 = icmp eq ptr %68, %60
  br i1 %77, label %78, label %65

78:                                               ; preds = %75, %53
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %79 = load i32, ptr @mount_lock, align 64
  %80 = add i32 %79, 1
  store i32 %80, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %81 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call void @shrink_dentry_list(ptr noundef nonnull %2) #21
  %83 = load i32, ptr %44, align 4
  %84 = and i32 %83, 16384
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %103, !prof !20

86:                                               ; preds = %78
  %87 = tail call ptr @llvm.thread.pointer() #21
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 2097152
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97, !prof !20

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 4
  %94 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr @__cleanup_mnt, ptr %94, align 4
  %95 = call i32 @task_work_add(ptr noundef %87, ptr noundef %93, i32 noundef 1) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92, %86
  %98 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 4
  %99 = call zeroext i1 @llist_add_batch(ptr noundef %98, ptr noundef %98, ptr noundef nonnull @delayed_mntput_list) #21
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load ptr, ptr @system_wq, align 4
  %102 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %101, ptr noundef nonnull @delayed_mntput_work, i32 noundef 1) #21
  br label %104

103:                                              ; preds = %78
  call fastcc void @cleanup_mnt(ptr noundef %0)
  br label %104

104:                                              ; preds = %103, %100, %97, %92, %48, %38, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mntget(ptr noundef readonly returned %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %5 = getelementptr i8, ptr %0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #15, !srcloc !11
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #21, !srcloc !12
  br label %15

15:                                               ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @path_is_mountpoint(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  br label %8

8:                                                ; preds = %52, %7
  %9 = load volatile i32, ptr @mount_lock, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !41
  %13 = load volatile i32, ptr @mount_lock, align 64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %9, %8 ], [ %13, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !42
  %18 = load ptr, ptr %0, align 4
  %19 = load ptr, ptr %2, align 4
  %20 = ptrtoint ptr %18 to i32
  %21 = lshr i32 %20, 6
  %22 = ptrtoint ptr %19 to i32
  %23 = lshr i32 %22, 6
  %24 = add nuw nsw i32 %23, %21
  %25 = load i32, ptr @m_hash_shift, align 4
  %26 = lshr i32 %24, %25
  %27 = add nuw nsw i32 %26, %24
  %28 = load ptr, ptr @mount_hashtable, align 4
  %29 = load i32, ptr @m_hash_mask, align 4
  %30 = and i32 %27, %29
  %31 = getelementptr %struct.hlist_head, ptr %28, i32 %30
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %44, %16
  %35 = phi ptr [ %45, %44 ], [ %32, %16 ]
  %36 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 3
  %39 = icmp eq ptr %38, %18
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %19
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %34
  %45 = load volatile ptr, ptr %35, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %34

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 3, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 33554432
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %47, %44, %16
  %53 = phi i1 [ %51, %47 ], [ false, %16 ], [ false, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %54 = load volatile i32, ptr @mount_lock, align 64
  %55 = icmp eq i32 %54, %17
  br i1 %55, label %56, label %8

56:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  br label %57

57:                                               ; preds = %56, %1
  %58 = phi i1 [ %53, %56 ], [ false, %1 ]
  ret i1 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mnt_clone_internal(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc ptr @clone_mnt(ptr noundef %3, ptr noundef %5, i32 noundef 16)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 3
  %10 = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 3, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 16384
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi ptr [ %9, %8 ], [ %6, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clone_mnt(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc ptr @alloc_vfsmnt(ptr noundef %7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %136, label %10

10:                                               ; preds = %3
  %11 = and i32 %2, 50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 23
  store i32 %15, ptr %16, align 4
  %17 = and i32 %2, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 23
  store i32 0, ptr %20, align 4
  %21 = and i32 %2, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %25

23:                                               ; preds = %13
  %24 = icmp eq i32 %15, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %16, %23 ], [ %20, %19 ]
  %27 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mnt_group_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %125, label %29

29:                                               ; preds = %25
  store i32 %27, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %23, %19, %13
  %31 = phi i1 [ true, %19 ], [ false, %29 ], [ false, %23 ], [ true, %13 ]
  %32 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 3
  %35 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 3, i32 2
  %36 = and i32 %33, -67125761
  store i32 %36, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #21, !srcloc !45
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #21, !srcloc !46
  %39 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 3
  %40 = load volatile ptr, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !48
  %41 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 3, i32 3
  store ptr @init_user_ns, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 3, i32 1
  store ptr %5, ptr %42, align 4
  %43 = icmp eq ptr %1, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %45) #21
  br label %46

46:                                               ; preds = %44, %30
  store ptr %1, ptr %34, align 4
  %47 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 2
  store ptr %1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 1
  store ptr %8, ptr %48, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %49 = load i32, ptr @mount_lock, align 64
  %50 = add i32 %49, 1
  store i32 %50, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %51 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 8
  %52 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 19
  %53 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 19, i32 1
  %54 = load ptr, ptr %53, align 4
  store ptr %51, ptr %53, align 4
  store ptr %52, ptr %51, align 4
  %55 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 8, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %51, ptr %54, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %56 = load i32, ptr @mount_lock, align 64
  %57 = add i32 %56, 1
  store i32 %57, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %58 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %60 = and i32 %2, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = and i32 %2, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %32, align 4
  %67 = and i32 %66, 4096
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65, %46
  %70 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 14
  %71 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %70, ptr %73, align 4
  store ptr %72, ptr %70, align 4
  %74 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 14, i32 1
  store ptr %71, ptr %74, align 4
  store volatile ptr %70, ptr %71, align 4
  %75 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 15
  store ptr %0, ptr %75, align 4
  %76 = load i32, ptr %35, align 4
  %77 = and i32 %76, -4097
  store i32 %77, ptr %35, align 4
  br label %109

78:                                               ; preds = %65, %62
  %79 = and i32 %2, 16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  br i1 %31, label %82, label %86

82:                                               ; preds = %81
  %83 = load i32, ptr %32, align 4
  %84 = and i32 %83, 4096
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82, %81
  %87 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 12
  %88 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 12
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %87, ptr %90, align 4
  store ptr %89, ptr %87, align 4
  %91 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 12, i32 1
  store ptr %88, ptr %91, align 4
  store volatile ptr %87, ptr %88, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 14
  %98 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 14
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %97, ptr %100, align 4
  store ptr %99, ptr %97, align 4
  %101 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 14, i32 1
  store ptr %98, ptr %101, align 4
  store volatile ptr %97, ptr %98, align 4
  %102 = load ptr, ptr %93, align 4
  br label %103

103:                                              ; preds = %96, %92
  %104 = phi ptr [ %102, %96 ], [ null, %92 ]
  %105 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 15
  store ptr %104, ptr %105, align 4
  br label %109

106:                                              ; preds = %78
  %107 = load i32, ptr %35, align 4
  %108 = and i32 %107, -4097
  store i32 %108, ptr %35, align 4
  br label %109

109:                                              ; preds = %106, %103, %69
  br i1 %31, label %114, label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %35, align 4
  %112 = and i32 %111, -12289
  %113 = or i32 %112, 4096
  store i32 %113, ptr %35, align 4
  br label %114

114:                                              ; preds = %110, %109
  %115 = and i32 %2, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 11
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 11
  %123 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  store ptr %119, ptr %122, align 4
  %124 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 11, i32 1
  store ptr %118, ptr %124, align 4
  store volatile ptr %122, ptr %118, align 4
  br label %136

125:                                              ; preds = %25
  %126 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 22
  %127 = load i32, ptr %126, align 4
  tail call void @ida_free(ptr noundef nonnull @mnt_id_ida, i32 noundef %127) #21
  %128 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 3, i32 3
  %129 = load volatile ptr, ptr %128, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !48
  %130 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 9
  %131 = load ptr, ptr %130, align 4
  tail call void @kfree_const(ptr noundef %131) #21
  %132 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  tail call void @free_percpu(ptr noundef %133) #21
  %134 = load ptr, ptr @mnt_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %134, ptr noundef nonnull %8) #21
  %135 = inttoptr i32 %27 to ptr
  br label %136

136:                                              ; preds = %125, %121, %117, %114, %3
  %137 = phi ptr [ %135, %125 ], [ %8, %117 ], [ %8, %121 ], [ %8, %114 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @m_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @down_read(ptr noundef nonnull @namespace_sem) #21
  %5 = load i64, ptr %1, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 2
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 3, i32 10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %15, %14 ], [ %8, %7 ]
  %18 = phi ptr [ %11, %14 ], [ %9, %7 ]
  %19 = getelementptr inbounds %struct.mnt_namespace, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %19) #21
  %20 = getelementptr inbounds %struct.mnt_namespace, ptr %17, i32 0, i32 2
  br label %21

21:                                               ; preds = %25, %16
  %22 = phi ptr [ %18, %16 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %20
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -48
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %21

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %23, i32 -72
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi ptr [ %31, %30 ], [ null, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %34 = load i16, ptr %19, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %36

36:                                               ; preds = %32, %10
  %37 = phi ptr [ %33, %32 ], [ null, %10 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m_stop(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mnt_namespace, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %6) #21
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 3, i32 10
  br i1 %7, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 10
  %11 = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 3, i32 10, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  %15 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 10, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %8, ptr %15, align 4
  store ptr %10, ptr %8, align 4
  store ptr %16, ptr %11, align 4
  store volatile ptr %8, ptr %16, align 4
  br label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 3, i32 10, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %18, align 4
  br label %22

22:                                               ; preds = %17, %9
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.mnt_namespace, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @m_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 10
  %10 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %10) #21
  %11 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 2
  br label %12

12:                                               ; preds = %16, %3
  %13 = phi ptr [ %9, %3 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -48
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %14, i32 -72
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %22, %21 ], [ null, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %25 = load i16, ptr %10, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 3
  %8 = tail call i32 %6(ptr noundef %0, ptr noundef %7) #21
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_cursor_del(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  tail call void @down_read(ptr noundef nonnull @namespace_sem) #21
  %3 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 10
  %5 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 10, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %9 = load i16, ptr %3, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @may_umount_tree(ptr noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !37

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1422, 0\0A.popsection", ""() #21, !srcloc !49
  unreachable

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %6 = load i32, ptr @mount_lock, align 64
  %7 = add i32 %6, 1
  store i32 %7, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %8 = icmp eq ptr %2, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %12 = icmp ult i32 %11, %10
  br label %13

13:                                               ; preds = %49, %9
  %14 = phi ptr [ %2, %9 ], [ %51, %49 ]
  %15 = phi i32 [ 0, %9 ], [ %35, %49 ]
  %16 = phi i32 [ 0, %9 ], [ %34, %49 ]
  br i1 %12, label %17, label %32

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ %11, %17 ], [ %30, %21 ]
  %23 = phi i32 [ 0, %17 ], [ %29, %21 ]
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %20
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %23
  %30 = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef nonnull @__cpu_possible_mask) #22
  %31 = icmp ult i32 %30, %10
  br i1 %31, label %21, label %32

32:                                               ; preds = %21, %13
  %33 = phi i32 [ 0, %13 ], [ %29, %21 ]
  %34 = add i32 %33, %16
  %35 = add i32 %15, 2
  %36 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %49

39:                                               ; preds = %42, %32
  %40 = phi ptr [ %46, %42 ], [ %14, %32 ]
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.mount, ptr %40, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mount, ptr %40, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 6
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %39, label %49

49:                                               ; preds = %42, %32
  %50 = phi ptr [ %37, %32 ], [ %44, %42 ]
  %51 = getelementptr i8, ptr %50, i32 -52
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %13

53:                                               ; preds = %49, %39, %5
  %54 = phi i32 [ 0, %5 ], [ %34, %39 ], [ %34, %49 ]
  %55 = phi i32 [ 0, %5 ], [ %35, %39 ], [ %35, %49 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %56 = load i32, ptr @mount_lock, align 64
  %57 = add i32 %56, 1
  store i32 %57, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %58 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %60 = icmp sle i32 %54, %55
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @may_umount(ptr noundef %0) #1 {
  tail call void @down_read(ptr noundef nonnull @namespace_sem) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %2 = load i32, ptr @mount_lock, align 64
  %3 = add i32 %2, 1
  store i32 %3, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = tail call i32 @propagate_mount_busy(ptr noundef %4, i32 noundef 2) #21
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %8 = load i32, ptr @mount_lock, align 64
  %9 = add i32 %8, 1
  store i32 %9, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %10 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @propagate_mount_busy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__detach_mounts(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %2 = load i32, ptr @mount_lock, align 64
  %3 = add i32 %2, 1
  store i32 %3, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %4 = ptrtoint ptr %0 to i32
  %5 = lshr i32 %4, 6
  %6 = load i32, ptr @mp_hash_shift, align 4
  %7 = lshr i32 %5, %6
  %8 = add nuw nsw i32 %7, %5
  %9 = load ptr, ptr @mountpoint_hashtable, align 4
  %10 = load i32, ptr @mp_hash_mask, align 4
  %11 = and i32 %8, %10
  %12 = getelementptr %struct.hlist_head, ptr %9, i32 %11
  br label %13

13:                                               ; preds = %17, %1
  %14 = phi ptr [ %12, %1 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %73, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mountpoint, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %13

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mountpoint, ptr %15, i32 0, i32 1
  %23 = getelementptr inbounds %struct.mountpoint, ptr %15, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = load i64, ptr @event, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr @event, align 8
  %28 = getelementptr inbounds %struct.mountpoint, ptr %15, i32 0, i32 2
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %46, %21
  %32 = phi ptr [ %47, %46 ], [ %29, %21 ]
  %33 = getelementptr i8, ptr %32, i32 -124
  %34 = getelementptr i8, ptr %32, i32 -100
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 134217728
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  tail call fastcc void @umount_mnt(ptr noundef %33)
  %39 = load ptr, ptr @unmounted, align 4
  store volatile ptr %39, ptr %32, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  store volatile ptr %32, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %38
  store volatile ptr %32, ptr @unmounted, align 4
  %44 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  store volatile ptr @unmounted, ptr %44, align 4
  br label %46

45:                                               ; preds = %31
  tail call fastcc void @umount_tree(ptr noundef %33, i32 noundef 4)
  br label %46

46:                                               ; preds = %45, %43
  %47 = load volatile ptr, ptr %28, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %31

49:                                               ; preds = %46
  %50 = load i32, ptr %23, align 4
  br label %51

51:                                               ; preds = %49, %21
  %52 = phi i32 [ %50, %49 ], [ %25, %21 ]
  %53 = add i32 %52, -1
  store i32 %53, ptr %23, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load ptr, ptr %22, align 4
  %57 = load volatile ptr, ptr %28, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !20

59:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %61) #21
  %62 = load i32, ptr %56, align 8
  %63 = and i32 %62, -65537
  store i32 %63, ptr %56, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %64 = load i16, ptr %61, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @dput_to_list(ptr noundef %56, ptr noundef nonnull @ex_mountpoints) #21
  %66 = load ptr, ptr %15, align 4
  %67 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  store volatile ptr %66, ptr %68, align 4
  %69 = icmp eq ptr %66, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.hlist_node, ptr %66, i32 0, i32 1
  store volatile ptr %68, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %60
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  tail call void @kfree(ptr noundef nonnull %15) #21
  br label %73

73:                                               ; preds = %72, %51, %13
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %74 = load i32, ptr @mount_lock, align 64
  %75 = add i32 %74, 1
  store i32 %75, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %76 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @namespace_unlock()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @umount_mnt(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 4
  store volatile ptr %15, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %12, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  store volatile ptr null, ptr %11, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18
  %22 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 4
  store volatile ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store ptr null, ptr %21, align 4
  store ptr null, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  store ptr null, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mountpoint, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.mountpoint, ptr %33, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mountpoint, ptr %33, i32 0, i32 2
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !20

44:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %46) #21
  %47 = load i32, ptr %40, align 8
  %48 = and i32 %47, -65537
  store i32 %48, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %49 = load i16, ptr %46, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @dput_to_list(ptr noundef %40, ptr noundef nonnull @ex_mountpoints) #21
  %51 = load ptr, ptr %33, align 4
  %52 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  store volatile ptr %51, ptr %53, align 4
  %54 = icmp eq ptr %51, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  store volatile ptr %53, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %45
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  tail call void @kfree(ptr noundef %33) #21
  br label %58

58:                                               ; preds = %57, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @umount_tree(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = and i32 %1, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @propagate_mount_unlock(ptr noundef %0) #21
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 8
  br label %12

12:                                               ; preds = %40, %30, %10
  %13 = phi ptr [ %11, %10 ], [ %20, %30 ], [ %20, %40 ]
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %53, label %44

15:                                               ; preds = %40, %8
  %16 = phi ptr [ %42, %40 ], [ %0, %8 ]
  %17 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 134217728
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 10
  %21 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 10, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %20, ptr %26, align 4
  store ptr %25, ptr %20, align 4
  store ptr %3, ptr %21, align 4
  store volatile ptr %20, ptr %3, align 8
  %27 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %40

30:                                               ; preds = %33, %15
  %31 = phi ptr [ %37, %33 ], [ %16, %15 ]
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %12, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 6
  %39 = icmp eq ptr %35, %38
  br i1 %39, label %30, label %40

40:                                               ; preds = %33, %15
  %41 = phi ptr [ %28, %15 ], [ %35, %33 ]
  %42 = getelementptr i8, ptr %41, i32 -52
  %43 = icmp eq ptr %42, null
  br i1 %43, label %12, label %15

44:                                               ; preds = %44, %12
  %45 = phi ptr [ %51, %44 ], [ %13, %12 ]
  %46 = getelementptr i8, ptr %45, i32 -20
  %47 = getelementptr i8, ptr %45, i32 -16
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %47, align 4
  %51 = load ptr, ptr %45, align 4
  %52 = icmp eq ptr %51, %3
  br i1 %52, label %53, label %44

53:                                               ; preds = %44, %12
  br i1 %6, label %56, label %54

54:                                               ; preds = %53
  %55 = call i32 @propagate_umount(ptr noundef nonnull %3) #21
  br label %56

56:                                               ; preds = %54, %53
  %57 = load volatile ptr, ptr %3, align 8
  %58 = icmp eq ptr %57, %3
  br i1 %58, label %149, label %59

59:                                               ; preds = %56
  %60 = and i32 %1, 1
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %1, 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %146, %59
  %65 = phi ptr [ %57, %59 ], [ %147, %146 ]
  %66 = getelementptr i8, ptr %65, i32 -72
  %67 = getelementptr i8, ptr %65, i32 8
  %68 = getelementptr i8, ptr %65, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %67, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  store volatile ptr %67, ptr %67, align 4
  store ptr %67, ptr %68, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %65, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %72, align 4
  %76 = getelementptr i8, ptr %65, i32 44
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.mnt_namespace, ptr %77, i32 0, i32 9
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, -1
  store i32 %82, ptr %80, align 8
  %83 = getelementptr inbounds %struct.mnt_namespace, ptr %77, i32 0, i32 8
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr @event, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  store i64 %85, ptr %83, align 8
  %88 = getelementptr inbounds %struct.mnt_namespace, ptr %77, i32 0, i32 7
  call void @__wake_up(ptr noundef %88, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %89

89:                                               ; preds = %87, %79, %64
  store ptr null, ptr %76, align 4
  br i1 %61, label %96, label %90

90:                                               ; preds = %89
  %91 = getelementptr i8, ptr %65, i32 -48
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 33554432
  store i32 %93, ptr %91, align 4
  %94 = getelementptr i8, ptr %65, i32 -64
  %95 = load ptr, ptr %94, align 4
  br label %111

96:                                               ; preds = %89
  %97 = getelementptr i8, ptr %65, i32 -64
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %66
  br i1 %99, label %137, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.mount, ptr %98, i32 0, i32 3, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 134217728
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %104, %63
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = getelementptr i8, ptr %65, i32 -48
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 8388608
  %110 = icmp eq i32 %109, 0
  br label %111

111:                                              ; preds = %106, %100, %90
  %112 = phi ptr [ %95, %90 ], [ %98, %100 ], [ %98, %106 ]
  %113 = phi i1 [ true, %90 ], [ %104, %100 ], [ %110, %106 ]
  %114 = getelementptr i8, ptr %65, i32 -64
  %115 = icmp eq ptr %112, %66
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %118 = getelementptr inbounds %struct.mount, ptr %112, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = call i32 @llvm.read_register.i32(metadata !0) #21
  %122 = inttoptr i32 %121 to ptr
  %123 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %122) #15, !srcloc !11
  %124 = add i32 %123, %120
  %125 = inttoptr i32 %124 to ptr
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, -1
  store i32 %127, ptr %125, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #21, !srcloc !12
  br i1 %113, label %135, label %128

128:                                              ; preds = %116
  %129 = getelementptr i8, ptr %65, i32 -20
  %130 = load ptr, ptr %114, align 4
  %131 = getelementptr inbounds %struct.mount, ptr %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.mount, ptr %130, i32 0, i32 6, i32 1
  %133 = load ptr, ptr %132, align 4
  store ptr %129, ptr %132, align 4
  store ptr %131, ptr %129, align 4
  %134 = getelementptr i8, ptr %65, i32 -16
  store ptr %133, ptr %134, align 4
  store volatile ptr %129, ptr %133, align 4
  call void @change_mnt_propagation(ptr noundef %66, i32 noundef 262144) #21
  br label %146

135:                                              ; preds = %116
  call fastcc void @umount_mnt(ptr noundef %66)
  br label %137

136:                                              ; preds = %111
  call void @change_mnt_propagation(ptr noundef %66, i32 noundef 262144) #21
  br i1 %113, label %138, label %146

137:                                              ; preds = %135, %96
  call void @change_mnt_propagation(ptr noundef %66, i32 noundef 262144) #21
  br label %138

138:                                              ; preds = %137, %136
  %139 = getelementptr i8, ptr %65, i32 52
  %140 = load ptr, ptr @unmounted, align 4
  store volatile ptr %140, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.hlist_node, ptr %140, i32 0, i32 1
  store volatile ptr %139, ptr %143, align 4
  br label %144

144:                                              ; preds = %142, %138
  store volatile ptr %139, ptr @unmounted, align 4
  %145 = getelementptr i8, ptr %65, i32 56
  store volatile ptr @unmounted, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %136, %128
  %147 = load volatile ptr, ptr %3, align 8
  %148 = icmp eq ptr %147, %3
  br i1 %148, label %149, label %64

149:                                              ; preds = %146, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @namespace_unlock() unnamed_addr #1 {
  %1 = alloca %struct.hlist_head, align 4
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr @unmounted, align 4
  store ptr %4, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %0
  store ptr null, ptr @unmounted, align 4
  %9 = load volatile ptr, ptr @ex_mountpoints, align 4
  %10 = icmp eq ptr %9, @ex_mountpoints
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ex_mountpoints, i32 0, i32 1), align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  store ptr %9, ptr %2, align 8
  store ptr %2, ptr %12, align 4
  store ptr %12, ptr %3, align 4
  store volatile ptr @ex_mountpoints, ptr @ex_mountpoints, align 4
  store ptr @ex_mountpoints, ptr getelementptr inbounds (%struct.list_head, ptr @ex_mountpoints, i32 0, i32 1), align 4
  br label %14

14:                                               ; preds = %11, %8
  call void @up_write(ptr noundef nonnull @namespace_sem) #21
  call void @shrink_dentry_list(ptr noundef nonnull %2) #21
  %15 = load volatile ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17, !prof !20

17:                                               ; preds = %14
  call void @synchronize_rcu_expedited() #21
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -124
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %45, label %23

23:                                               ; preds = %41, %17
  %24 = phi ptr [ %42, %41 ], [ %20, %17 ]
  %25 = getelementptr inbounds %struct.mount, ptr %24, i32 0, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mount, ptr %24, i32 0, i32 18, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store volatile ptr %26, ptr %28, align 4
  %29 = icmp eq ptr %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %23
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %33 = getelementptr inbounds %struct.mount, ptr %24, i32 0, i32 3
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.mount, ptr %24, i32 0, i32 24
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !20

39:                                               ; preds = %35
  store i32 0, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %35
  call fastcc void @mntput_no_expire(ptr noundef nonnull %24) #21
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr i8, ptr %26, i32 -124
  %43 = icmp eq ptr %42, null
  %44 = or i1 %29, %43
  br i1 %44, label %45, label %23

45:                                               ; preds = %41, %17, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @path_umount(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.list_head, align 8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mnt_namespace, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 21) #21
  br i1 %13, label %14, label %228

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %228

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %4, i32 100
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %27, label %228

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %4, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8388608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %228

32:                                               ; preds = %27
  %33 = and i32 %1, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call zeroext i1 @capable(i32 noundef 21) #21
  br i1 %36, label %37, label %228

37:                                               ; preds = %35, %32
  %38 = getelementptr i8, ptr %4, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = and i32 %1, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %88, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 89
  %44 = load ptr, ptr %43, align 64
  %45 = getelementptr inbounds %struct.fs_struct, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ne ptr %4, %46
  %48 = and i32 %1, 3
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %49, %47
  br i1 %50, label %51, label %228

51:                                               ; preds = %42
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %52 = load i32, ptr @mount_lock, align 64
  %53 = add i32 %52, 1
  store i32 %53, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %56 = icmp ult i32 %55, %54
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %4, i32 24
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %61

61:                                               ; preds = %61, %57
  %62 = phi i32 [ %55, %57 ], [ %70, %61 ]
  %63 = phi i32 [ 0, %57 ], [ %69, %61 ]
  %64 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %60
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, %63
  %70 = tail call i32 @cpumask_next(i32 noundef %62, ptr noundef nonnull @__cpu_possible_mask) #22
  %71 = icmp ult i32 %70, %54
  br i1 %71, label %61, label %72

72:                                               ; preds = %61
  %73 = icmp eq i32 %69, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %72, %51
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %75 = load i32, ptr @mount_lock, align 64
  %76 = add i32 %75, 1
  store i32 %76, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %77 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %228

79:                                               ; preds = %72
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %80 = load i32, ptr @mount_lock, align 64
  %81 = add i32 %80, 1
  store i32 %81, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %82 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %84 = getelementptr i8, ptr %4, i32 140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #21, !srcloc !45
  %85 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %84) #21, !srcloc !51
  %86 = extractvalue { i32, i32 } %85, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !52
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %228, label %88

88:                                               ; preds = %79, %37
  br i1 %34, label %96, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.super_operations, ptr %91, i32 0, i32 15
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  tail call void %93(ptr noundef %39) #21
  br label %96

96:                                               ; preds = %95, %89, %88
  %97 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 89
  %98 = load ptr, ptr %97, align 64
  %99 = getelementptr inbounds %struct.fs_struct, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %4, %100
  %102 = and i32 %1, 2
  %103 = icmp eq i32 %102, 0
  %104 = and i1 %103, %101
  br i1 %104, label %105, label %131

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 47
  %107 = load ptr, ptr %106, align 4
  %108 = tail call zeroext i1 @ns_capable(ptr noundef %107, i32 noundef 21) #21
  br i1 %108, label %109, label %228

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 14
  tail call void @down_write(ptr noundef %110) #21
  %111 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 10
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 13
  %117 = load ptr, ptr %116, align 64
  %118 = tail call ptr @fs_context_for_reconfigure(ptr noundef %117, i32 noundef 1, i32 noundef 1) #21
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = ptrtoint ptr %118 to i32
  br label %129

122:                                              ; preds = %115
  %123 = tail call i32 @parse_monolithic_mount_data(ptr noundef %118, ptr noundef null) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = tail call i32 @reconfigure_super(ptr noundef %118) #21
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i32 [ %123, %122 ], [ %126, %125 ]
  tail call void @put_fs_context(ptr noundef %118) #21
  br label %129

129:                                              ; preds = %127, %120, %109
  %130 = phi i32 [ 0, %109 ], [ %121, %120 ], [ %128, %127 ]
  tail call void @up_write(ptr noundef %110) #21
  br label %228

131:                                              ; preds = %96
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %132 = load i32, ptr @mount_lock, align 64
  %133 = add i32 %132, 1
  store i32 %133, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %134 = load i32, ptr %28, align 4
  %135 = and i32 %134, 8388608
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %222

137:                                              ; preds = %131
  %138 = load i64, ptr @event, align 8
  %139 = add i64 %138, 1
  store i64 %139, ptr @event, align 8
  br i1 %103, label %145, label %140

140:                                              ; preds = %137
  %141 = getelementptr i8, ptr %4, i32 56
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %141
  br i1 %143, label %222, label %144

144:                                              ; preds = %140
  tail call fastcc void @umount_tree(ptr noundef %5, i32 noundef 2) #21
  br label %222

145:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr %3, ptr %3, align 8
  %146 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %146, align 4
  br label %147

147:                                              ; preds = %197, %145
  %148 = phi i32 [ 0, %145 ], [ %198, %197 ]
  %149 = phi ptr [ %5, %145 ], [ %199, %197 ]
  %150 = getelementptr inbounds %struct.mount, ptr %149, i32 0, i32 6
  br label %151

151:                                              ; preds = %188, %147
  %152 = phi i32 [ %148, %147 ], [ %186, %188 ]
  %153 = phi ptr [ %150, %147 ], [ %189, %188 ]
  %154 = phi ptr [ %149, %147 ], [ %191, %188 ]
  %155 = load ptr, ptr %153, align 4
  %156 = getelementptr inbounds %struct.mount, ptr %154, i32 0, i32 6
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %185, label %158

158:                                              ; preds = %182, %151
  %159 = phi ptr [ %162, %182 ], [ %155, %151 ]
  %160 = phi i32 [ %183, %182 ], [ %152, %151 ]
  %161 = getelementptr i8, ptr %159, i32 -52
  %162 = load ptr, ptr %159, align 4
  %163 = getelementptr i8, ptr %159, i32 -28
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 256
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %158
  %168 = getelementptr i8, ptr %159, i32 -8
  %169 = load volatile ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %168
  br i1 %170, label %171, label %197

171:                                              ; preds = %167
  %172 = call i32 @propagate_mount_busy(ptr noundef %161, i32 noundef 1) #21
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = getelementptr i8, ptr %159, i32 28
  %176 = getelementptr i8, ptr %159, i32 32
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %175, align 4
  %179 = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  store ptr %177, ptr %179, align 4
  store volatile ptr %178, ptr %177, align 4
  %180 = load ptr, ptr %146, align 4
  store ptr %175, ptr %146, align 4
  store ptr %3, ptr %175, align 4
  store ptr %180, ptr %176, align 4
  store volatile ptr %175, ptr %180, align 4
  %181 = add i32 %160, 1
  br label %182

182:                                              ; preds = %174, %171, %158
  %183 = phi i32 [ %160, %158 ], [ %160, %171 ], [ %181, %174 ]
  %184 = icmp eq ptr %162, %156
  br i1 %184, label %185, label %158

185:                                              ; preds = %182, %151
  %186 = phi i32 [ %152, %151 ], [ %183, %182 ]
  %187 = icmp eq ptr %154, %5
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.mount, ptr %154, i32 0, i32 7
  %190 = getelementptr inbounds %struct.mount, ptr %154, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  br label %151

192:                                              ; preds = %185
  %193 = icmp eq i32 %186, 0
  br i1 %193, label %214, label %194

194:                                              ; preds = %192
  %195 = load volatile ptr, ptr %3, align 8
  %196 = icmp eq ptr %195, %3
  br i1 %196, label %197, label %200

197:                                              ; preds = %211, %194, %167
  %198 = phi i32 [ 0, %194 ], [ %160, %167 ], [ 0, %211 ]
  %199 = phi ptr [ %5, %194 ], [ %161, %167 ], [ %5, %211 ]
  br label %147

200:                                              ; preds = %211, %194
  %201 = phi ptr [ %212, %211 ], [ %195, %194 ]
  %202 = getelementptr i8, ptr %201, i32 -80
  %203 = getelementptr i8, ptr %201, i32 36
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %200
  %207 = load i64, ptr @event, align 8
  %208 = add i64 %207, 1
  store i64 %208, ptr @event, align 8
  %209 = getelementptr inbounds %struct.mnt_namespace, ptr %204, i32 0, i32 8
  store i64 %208, ptr %209, align 8
  %210 = getelementptr inbounds %struct.mnt_namespace, ptr %204, i32 0, i32 7
  call void @__wake_up(ptr noundef %210, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %211

211:                                              ; preds = %206, %200
  call fastcc void @umount_tree(ptr noundef %202, i32 noundef 3) #21
  %212 = load volatile ptr, ptr %3, align 8
  %213 = icmp eq ptr %212, %3
  br i1 %213, label %197, label %200

214:                                              ; preds = %192
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %215 = call i32 @propagate_mount_busy(ptr noundef %5, i32 noundef 2) #21
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = getelementptr i8, ptr %4, i32 56
  %219 = load volatile ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, %218
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  call fastcc void @umount_tree(ptr noundef %5, i32 noundef 3) #21
  br label %222

222:                                              ; preds = %221, %217, %214, %144, %140, %131
  %223 = phi i32 [ -22, %131 ], [ -16, %214 ], [ 0, %144 ], [ 0, %140 ], [ 0, %221 ], [ 0, %217 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %224 = load i32, ptr @mount_lock, align 64
  %225 = add i32 %224, 1
  store i32 %225, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %226 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call fastcc void @namespace_unlock() #21
  br label %228

228:                                              ; preds = %222, %129, %105, %79, %74, %42, %35, %27, %20, %14, %2
  %229 = phi i32 [ -16, %74 ], [ %223, %222 ], [ %130, %129 ], [ -22, %42 ], [ -11, %79 ], [ -1, %105 ], [ -1, %35 ], [ -22, %27 ], [ -22, %20 ], [ -22, %14 ], [ -1, %2 ]
  %230 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  call void @dput(ptr noundef %231) #21
  call fastcc void @mntput_no_expire(ptr noundef %5)
  ret i32 %229
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_umount(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !53
  %4 = icmp ult i32 %1, 16
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = inttoptr i32 %0 to ptr
  %7 = and i32 %1, 8
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 129, i32 128
  %10 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %6, i32 noundef %9, ptr noundef nonnull %3, ptr noundef null) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 @path_umount(ptr noundef nonnull %3, i32 noundef %1) #21
  br label %14

14:                                               ; preds = %12, %5, %2
  %15 = phi i32 [ %13, %12 ], [ -22, %2 ], [ %10, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @from_mnt_ns(ptr noundef readnone returned %0) local_unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @copy_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %213

11:                                               ; preds = %6, %3
  %12 = and i32 %2, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, @ns_dentry_operations
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @mntns_operations
  br i1 %21, label %213, label %22

22:                                               ; preds = %18, %14, %11
  %23 = tail call fastcc ptr @clone_mnt(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %213, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mount, ptr %23, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %213, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.mount, ptr %23, i32 0, i32 10
  %34 = getelementptr inbounds %struct.mount, ptr %23, i32 0, i32 10, i32 1
  br label %35

35:                                               ; preds = %198, %32
  %36 = phi ptr [ %30, %32 ], [ %201, %198 ]
  %37 = phi ptr [ %0, %32 ], [ %200, %198 ]
  %38 = phi ptr [ %23, %32 ], [ %199, %198 ]
  %39 = getelementptr i8, ptr %36, i32 -52
  %40 = getelementptr i8, ptr %36, i32 -40
  %41 = load ptr, ptr %40, align 4
  %42 = tail call zeroext i1 @is_subdir(ptr noundef %41, ptr noundef %1) #21
  %43 = xor i1 %42, true
  %44 = icmp eq ptr %39, null
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %198, label %46

46:                                               ; preds = %194, %35
  %47 = phi ptr [ %196, %194 ], [ %39, %35 ]
  %48 = phi ptr [ %179, %194 ], [ %37, %35 ]
  %49 = phi ptr [ %178, %194 ], [ %38, %35 ]
  br i1 %5, label %50, label %71

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 3, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 8192
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = and i32 %52, 8388608
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %203

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 6, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 6
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %177, label %63

63:                                               ; preds = %63, %58
  %64 = phi ptr [ %66, %63 ], [ %60, %58 ]
  %65 = getelementptr i8, ptr %64, i32 -4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %64, i32 -8
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %63

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %64, i32 -52
  br label %177

71:                                               ; preds = %50, %46
  br i1 %13, label %72, label %95

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dentry, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, @ns_dentry_operations
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.dentry, ptr %74, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, @mntns_operations
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 6, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 6
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %177, label %87

87:                                               ; preds = %87, %82
  %88 = phi ptr [ %90, %87 ], [ %84, %82 ]
  %89 = getelementptr i8, ptr %88, i32 -4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %88, i32 -8
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %87

93:                                               ; preds = %87
  %94 = getelementptr i8, ptr %88, i32 -52
  br label %177

95:                                               ; preds = %78, %72, %71
  %96 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %48, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %99, %95
  %100 = phi ptr [ %103, %99 ], [ %48, %95 ]
  %101 = phi ptr [ %105, %99 ], [ %49, %95 ]
  %102 = getelementptr inbounds %struct.mount, ptr %100, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.mount, ptr %101, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %103, %97
  br i1 %106, label %107, label %99

107:                                              ; preds = %99, %95
  %108 = phi ptr [ %49, %95 ], [ %105, %99 ]
  %109 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = tail call fastcc ptr @clone_mnt(ptr noundef nonnull %47, ptr noundef %110, i32 noundef %2)
  %112 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %203, label %113

113:                                              ; preds = %107
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %114 = load i32, ptr @mount_lock, align 64
  %115 = add i32 %114, 1
  store i32 %115, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %116 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 10
  %117 = load ptr, ptr %34, align 4
  store ptr %116, ptr %34, align 4
  store ptr %33, ptr %116, align 4
  %118 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 10, i32 1
  store ptr %117, ptr %118, align 4
  store volatile ptr %116, ptr %117, align 4
  %119 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 17
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.mountpoint, ptr %120, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  %124 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %125 = getelementptr inbounds %struct.mount, ptr %108, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = ptrtoint ptr %126 to i32
  %128 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %129 = inttoptr i32 %128 to ptr
  %130 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %129) #15, !srcloc !11
  %131 = add i32 %130, %127
  %132 = inttoptr i32 %131 to ptr
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #21, !srcloc !12
  %135 = getelementptr inbounds %struct.mountpoint, ptr %120, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 2
  store ptr %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 1
  store ptr %108, ptr %138, align 4
  %139 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 17
  store ptr %120, ptr %139, align 4
  %140 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 18
  %141 = getelementptr inbounds %struct.mountpoint, ptr %120, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  store volatile ptr %142, ptr %140, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %113
  %145 = getelementptr inbounds %struct.hlist_node, ptr %142, i32 0, i32 1
  store volatile ptr %140, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %113
  store volatile ptr %140, ptr %141, align 4
  %147 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 18, i32 0, i32 1
  store volatile ptr %141, ptr %147, align 4
  %148 = getelementptr inbounds %struct.mount, ptr %108, i32 0, i32 3
  %149 = load ptr, ptr %137, align 4
  %150 = ptrtoint ptr %148 to i32
  %151 = lshr i32 %150, 6
  %152 = ptrtoint ptr %149 to i32
  %153 = lshr i32 %152, 6
  %154 = add nuw nsw i32 %153, %151
  %155 = load i32, ptr @m_hash_shift, align 4
  %156 = lshr i32 %154, %155
  %157 = add nuw nsw i32 %156, %154
  %158 = load ptr, ptr @mount_hashtable, align 4
  %159 = load i32, ptr @m_hash_mask, align 4
  %160 = and i32 %157, %159
  %161 = getelementptr %struct.hlist_head, ptr %158, i32 %160
  %162 = load ptr, ptr %161, align 4
  store ptr %162, ptr %111, align 4
  %163 = getelementptr inbounds %struct.hlist_node, ptr %111, i32 0, i32 1
  store volatile ptr %161, ptr %163, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  store volatile ptr %111, ptr %161, align 4
  %164 = icmp eq ptr %162, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %146
  %166 = getelementptr inbounds %struct.hlist_node, ptr %162, i32 0, i32 1
  store volatile ptr %111, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %146
  %168 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 7
  %169 = getelementptr inbounds %struct.mount, ptr %108, i32 0, i32 6
  %170 = getelementptr inbounds %struct.mount, ptr %108, i32 0, i32 6, i32 1
  %171 = load ptr, ptr %170, align 4
  store ptr %168, ptr %170, align 4
  store ptr %169, ptr %168, align 4
  %172 = getelementptr inbounds %struct.mount, ptr %111, i32 0, i32 7, i32 1
  store ptr %171, ptr %172, align 4
  store volatile ptr %168, ptr %171, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %173 = load i32, ptr @mount_lock, align 64
  %174 = add i32 %173, 1
  store i32 %174, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %175 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %177

177:                                              ; preds = %167, %93, %82, %69, %58
  %178 = phi ptr [ %111, %167 ], [ %49, %58 ], [ %49, %69 ], [ %49, %82 ], [ %49, %93 ]
  %179 = phi ptr [ %47, %167 ], [ %48, %58 ], [ %48, %69 ], [ %48, %82 ], [ %48, %93 ]
  %180 = phi ptr [ %47, %167 ], [ %47, %58 ], [ %70, %69 ], [ %47, %82 ], [ %94, %93 ]
  %181 = getelementptr inbounds %struct.mount, ptr %180, i32 0, i32 6
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %181
  br i1 %183, label %184, label %194

184:                                              ; preds = %187, %177
  %185 = phi ptr [ %191, %187 ], [ %180, %177 ]
  %186 = icmp eq ptr %185, %39
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.mount, ptr %185, i32 0, i32 7
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.mount, ptr %185, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.mount, ptr %191, i32 0, i32 6
  %193 = icmp eq ptr %189, %192
  br i1 %193, label %184, label %194

194:                                              ; preds = %187, %177
  %195 = phi ptr [ %182, %177 ], [ %189, %187 ]
  %196 = getelementptr i8, ptr %195, i32 -52
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %46

198:                                              ; preds = %194, %184, %35
  %199 = phi ptr [ %38, %35 ], [ %178, %184 ], [ %178, %194 ]
  %200 = phi ptr [ %37, %35 ], [ %179, %184 ], [ %179, %194 ]
  %201 = load ptr, ptr %36, align 4
  %202 = icmp eq ptr %201, %29
  br i1 %202, label %213, label %35

203:                                              ; preds = %107, %55
  %204 = phi ptr [ %111, %107 ], [ inttoptr (i32 -1 to ptr), %55 ]
  %205 = icmp eq ptr %23, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %203
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %207 = load i32, ptr @mount_lock, align 64
  %208 = add i32 %207, 1
  store i32 %208, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  tail call fastcc void @umount_tree(ptr noundef nonnull %23, i32 noundef 1)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %209 = load i32, ptr @mount_lock, align 64
  %210 = add i32 %209, 1
  store i32 %210, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %211 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %212 = add i16 %211, 1
  store i16 %212, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %213

213:                                              ; preds = %206, %203, %198, %25, %22, %18, %6
  %214 = phi ptr [ %23, %22 ], [ %204, %206 ], [ %204, %203 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %18 ], [ %23, %25 ], [ %23, %198 ]
  ret ptr %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_subdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @collect_mounts(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 100
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call fastcc void @namespace_unlock()
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %2, i32 -16
  %14 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @copy_tree(ptr noundef %13, ptr noundef %15, i32 noundef 84)
  tail call fastcc void @namespace_unlock()
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %18 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 3
  %19 = select i1 %17, ptr %16, ptr %18
  br label %20

20:                                               ; preds = %12, %11
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %11 ], [ %19, %12 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dissolve_on_fput(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %2 = load i32, ptr @mount_lock, align 64
  %3 = add i32 %2, 1
  store i32 %3, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 100
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mnt_namespace, ptr %6, i32 0, i32 6
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @umount_tree(ptr noundef %4, i32 noundef 4)
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = phi ptr [ %6, %12 ], [ null, %1 ], [ null, %8 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %15 = load i32, ptr @mount_lock, align 64
  %16 = add i32 %15, 1
  store i32 %16, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %17 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @namespace_unlock()
  %19 = icmp eq ptr %14, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.mnt_namespace, ptr %14, i32 0, i32 6
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ns_common, ptr %14, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  tail call void @proc_free_inum(i32 noundef %26) #21
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.mnt_namespace, ptr %14, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void @dec_ucount(ptr noundef %29, i32 noundef 5) #21
  tail call void @kfree(ptr noundef nonnull %14) #21
  br label %30

30:                                               ; preds = %27, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_mnt_ns(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 6
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  tail call void @proc_free_inum(i32 noundef %7) #21
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @dec_ucount(ptr noundef %10, i32 noundef 5) #21
  tail call void @kfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drop_collected_mounts(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %2 = load i32, ptr @mount_lock, align 64
  %3 = add i32 %2, 1
  store i32 %3, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %4 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @umount_tree(ptr noundef %4, i32 noundef 0)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %5 = load i32, ptr @mount_lock, align 64
  %6 = add i32 %5, 1
  store i32 %6, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %7 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @namespace_unlock()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clone_private_mount(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -16
  tail call void @down_read(ptr noundef nonnull @namespace_sem) #21
  %4 = getelementptr i8, ptr %2, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %2, i32 100
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @llvm.thread.pointer() #21
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 92
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nsproxy, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %2, i32 28
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %38, label %23

23:                                               ; preds = %33, %17
  %24 = phi ptr [ %34, %33 ], [ %21, %17 ]
  %25 = getelementptr i8, ptr %24, i32 -40
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i1 @is_subdir(ptr noundef %26, ptr noundef %19) #21
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %24, i32 -28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8388608
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %24, align 4
  %35 = icmp eq ptr %34, %20
  br i1 %35, label %36, label %23

36:                                               ; preds = %33
  %37 = load ptr, ptr %18, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = phi ptr [ %37, %36 ], [ %19, %17 ]
  %40 = tail call fastcc ptr @clone_mnt(ptr noundef %3, ptr noundef %39, i32 noundef 16)
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mount, ptr %40, i32 0, i32 16
  store ptr inttoptr (i32 -22 to ptr), ptr %43, align 4
  %44 = getelementptr inbounds %struct.mount, ptr %40, i32 0, i32 3
  br label %46

45:                                               ; preds = %28, %8, %1
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  br label %46

46:                                               ; preds = %45, %42, %38
  %47 = phi ptr [ inttoptr (i32 -22 to ptr), %45 ], [ %44, %42 ], [ %40, %38 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iterate_mounts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 %0(ptr noundef %2, ptr noundef %1) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %2, i32 56
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -56
  %14 = tail call i32 %0(ptr noundef %13, ptr noundef %1) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %8, label %16

16:                                               ; preds = %12, %8, %3
  %17 = phi i32 [ %4, %3 ], [ 0, %8 ], [ %14, %12 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @count_mounts(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = load volatile i32, ptr @sysctl_mount_max, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %22, %2
  %6 = phi ptr [ %24, %22 ], [ %1, %2 ]
  %7 = phi i32 [ %8, %22 ], [ 0, %2 ]
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %22

12:                                               ; preds = %15, %5
  %13 = phi ptr [ %19, %15 ], [ %6, %5 ]
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 6
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %12, label %22

22:                                               ; preds = %15, %5
  %23 = phi ptr [ %10, %5 ], [ %17, %15 ]
  %24 = getelementptr i8, ptr %23, i32 -52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5

26:                                               ; preds = %22, %12, %2
  %27 = phi i32 [ 0, %2 ], [ %8, %12 ], [ %8, %22 ]
  %28 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = icmp ugt i32 %29, %32
  %34 = icmp ugt i32 %31, %32
  %35 = or i1 %33, %34
  %36 = icmp ult i32 %3, %32
  %37 = select i1 %35, i1 true, i1 %36
  %38 = sub i32 %3, %32
  %39 = icmp ugt i32 %27, %38
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %26
  %42 = add i32 %31, %27
  store i32 %42, ptr %30, align 4
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi i32 [ 0, %41 ], [ -28, %26 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_open_tree(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.path, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store i64 0, ptr %4, align 8, !annotation !53
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %2, -563458
  %9 = icmp ne i32 %8, 0
  %10 = and i32 %2, 32769
  %11 = icmp eq i32 %10, 32768
  %12 = or i1 %9, %11
  br i1 %12, label %167, label %13

13:                                               ; preds = %3
  %14 = and i32 %2, 2048
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 5, i32 1
  %17 = and i32 %2, 256
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, 4
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = shl nuw nsw i32 %2, 2
  %22 = and i32 %21, 16384
  %23 = or i32 %20, %22
  br i1 %7, label %33, label %24

24:                                               ; preds = %13
  %25 = tail call ptr @llvm.thread.pointer() #21
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 92
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nsproxy, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mnt_namespace, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = tail call zeroext i1 @ns_capable(ptr noundef %31, i32 noundef 21) #21
  br i1 %32, label %33, label %167

33:                                               ; preds = %24, %13
  %34 = and i32 %2, 524288
  %35 = tail call i32 @get_unused_fd_flags(i32 noundef %34) #21
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %167, label %37

37:                                               ; preds = %33
  %38 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %5, i32 noundef %23, ptr noundef nonnull %4, ptr noundef null) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !20

40:                                               ; preds = %37
  %41 = inttoptr i32 %38 to ptr
  br label %161

42:                                               ; preds = %37
  %43 = tail call ptr @llvm.thread.pointer() #21
  br i1 %7, label %155, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 92
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nsproxy, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mnt_namespace, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 83
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.cred, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = insertvalue [1 x i32] poison, i32 %54, 0
  %56 = call ptr @inc_ucount(ptr noundef %50, [1 x i32] %55, i32 noundef 5) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %159, label %58

58:                                               ; preds = %44
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %60 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 4197824, i32 noundef 80) #24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  call void @dec_ucount(ptr noundef nonnull %56, i32 noundef 5) #21
  br label %159

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ns_common, ptr %60, i32 0, i32 1
  store ptr @mntns_operations, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ns_common, ptr %60, i32 0, i32 3
  store volatile i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 2
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 2, i32 1
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %68, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_mnt_ns.__key) #21
  %69 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 3
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 4
  store ptr @init_user_ns, ptr %70, align 8
  %71 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 5
  store ptr %56, ptr %71, align 4
  %72 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %159, label %73

73:                                               ; preds = %63
  call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %74 = lshr i32 %2, 15
  %75 = and i32 %74, 1
  %76 = call fastcc ptr @__do_loopback(ptr noundef nonnull %4, i32 noundef %75) #21
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  call fastcc void @namespace_unlock() #21
  %79 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 6
  %80 = load i64, ptr %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ns_common, ptr %60, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  call void @proc_free_inum(i32 noundef %84) #21
  br label %85

85:                                               ; preds = %82, %78
  %86 = load ptr, ptr %71, align 4
  call void @dec_ucount(ptr noundef %86, i32 noundef 5) #21
  call void @kfree(ptr noundef nonnull %60) #21
  br label %159

87:                                               ; preds = %73
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %88 = load i32, ptr @mount_lock, align 64
  %89 = add i32 %88, 1
  store i32 %89, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %90 = icmp eq ptr %76, null
  br i1 %90, label %115, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 9
  br label %93

93:                                               ; preds = %111, %91
  %94 = phi ptr [ %76, %91 ], [ %113, %111 ]
  %95 = getelementptr inbounds %struct.mount, ptr %94, i32 0, i32 16
  store ptr %60, ptr %95, align 4
  %96 = load i32, ptr %92, align 8
  %97 = add i32 %96, 1
  store i32 %97, ptr %92, align 8
  %98 = getelementptr inbounds %struct.mount, ptr %94, i32 0, i32 6
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  br i1 %100, label %101, label %111

101:                                              ; preds = %104, %93
  %102 = phi ptr [ %108, %104 ], [ %94, %93 ]
  %103 = icmp eq ptr %102, %76
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.mount, ptr %102, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.mount, ptr %102, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.mount, ptr %108, i32 0, i32 6
  %110 = icmp eq ptr %106, %109
  br i1 %110, label %101, label %111

111:                                              ; preds = %104, %93
  %112 = phi ptr [ %99, %93 ], [ %106, %104 ]
  %113 = getelementptr i8, ptr %112, i32 -52
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %93

115:                                              ; preds = %111, %101, %87
  %116 = getelementptr inbounds %struct.mnt_namespace, ptr %60, i32 0, i32 1
  store ptr %76, ptr %116, align 8
  %117 = getelementptr inbounds %struct.mount, ptr %76, i32 0, i32 10
  %118 = getelementptr inbounds %struct.mount, ptr %76, i32 0, i32 10, i32 1
  %119 = load ptr, ptr %118, align 4
  store ptr %66, ptr %118, align 4
  store ptr %117, ptr %66, align 4
  store ptr %119, ptr %67, align 8
  store volatile ptr %66, ptr %119, align 4
  %120 = getelementptr inbounds %struct.mount, ptr %76, i32 0, i32 3
  %121 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %122 = getelementptr %struct.mount, ptr %76, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = call i32 @llvm.read_register.i32(metadata !0) #21
  %126 = inttoptr i32 %125 to ptr
  %127 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %126) #15, !srcloc !11
  %128 = add i32 %127, %124
  %129 = inttoptr i32 %128 to ptr
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #21, !srcloc !12
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %132 = load i32, ptr @mount_lock, align 64
  %133 = add i32 %132, 1
  store i32 %133, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %134 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call fastcc void @namespace_unlock() #21
  %136 = load ptr, ptr %4, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %115
  %139 = getelementptr i8, ptr %136, i32 -16
  %140 = getelementptr i8, ptr %136, i32 140
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143, !prof !20

143:                                              ; preds = %138
  store i32 0, ptr %140, align 4
  br label %144

144:                                              ; preds = %143, %138
  call fastcc void @mntput_no_expire(ptr noundef %139) #21
  br label %145

145:                                              ; preds = %144, %115
  store ptr %120, ptr %4, align 8
  %146 = load ptr, ptr %51, align 8
  %147 = call ptr @dentry_open(ptr noundef nonnull %4, i32 noundef 2097152, ptr noundef %146) #21
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load ptr, ptr %4, align 8
  call void @dissolve_on_fput(ptr noundef %150) #21
  br label %159

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.file, ptr %147, i32 0, i32 8
  %153 = load i32, ptr %152, align 8
  %154 = or i32 %153, 268435456
  store i32 %154, ptr %152, align 8
  br label %159

155:                                              ; preds = %42
  %156 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 83
  %157 = load ptr, ptr %156, align 8
  %158 = call ptr @dentry_open(ptr noundef nonnull %4, i32 noundef 2097152, ptr noundef %157) #21
  br label %159

159:                                              ; preds = %155, %151, %149, %85, %63, %62, %44
  %160 = phi ptr [ %158, %155 ], [ %76, %85 ], [ %147, %151 ], [ %147, %149 ], [ %60, %63 ], [ inttoptr (i32 -28 to ptr), %44 ], [ inttoptr (i32 -12 to ptr), %62 ]
  call void @path_put(ptr noundef nonnull %4) #21
  br label %161

161:                                              ; preds = %159, %40
  %162 = phi ptr [ %41, %40 ], [ %160, %159 ]
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  call void @put_unused_fd(i32 noundef %35) #21
  %165 = ptrtoint ptr %162 to i32
  br label %167

166:                                              ; preds = %161
  call void @fd_install(i32 noundef %35, ptr noundef %162) #21
  br label %167

167:                                              ; preds = %166, %164, %33, %24, %3
  %168 = phi i32 [ %165, %164 ], [ %35, %166 ], [ -22, %3 ], [ -1, %24 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @finish_automount(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %166, label %6

6:                                                ; preds = %2
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = ptrtoint ptr %0 to i32
  br label %166

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %14 = icmp ult i32 %13, %12
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i32 [ %13, %15 ], [ %28, %19 ]
  %21 = phi i32 [ 0, %15 ], [ %27, %19 ]
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %18
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %21
  %28 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #22
  %29 = icmp ult i32 %28, %12
  br i1 %29, label %19, label %30

30:                                               ; preds = %19
  %31 = icmp slt i32 %27, 2
  br i1 %31, label %32, label %33, !prof !37

32:                                               ; preds = %30, %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3048, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

33:                                               ; preds = %30
  %34 = getelementptr %struct.vfsmount, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.vfsmount, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load ptr, ptr %0, align 4
  %42 = icmp eq ptr %41, %4
  br i1 %42, label %146, label %43

43:                                               ; preds = %40, %33
  %44 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 24
  tail call void @down_write(ptr noundef %46) #21
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %47 = load i32, ptr %4, align 8
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %142, !prof !20

50:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = lshr i32 %52, 6
  %54 = ptrtoint ptr %4 to i32
  %55 = lshr i32 %54, 6
  %56 = add nuw nsw i32 %53, %55
  %57 = load i32, ptr @m_hash_shift, align 4
  %58 = lshr i32 %56, %57
  %59 = add nuw nsw i32 %58, %56
  %60 = load ptr, ptr @mount_hashtable, align 4
  %61 = load i32, ptr @m_hash_mask, align 4
  %62 = and i32 %59, %61
  %63 = getelementptr %struct.hlist_head, ptr %60, i32 %62
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %76, %50
  %67 = phi ptr [ %77, %76 ], [ %64, %50 ]
  %68 = getelementptr inbounds %struct.mount, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mount, ptr %69, i32 0, i32 3
  %71 = icmp eq ptr %70, %51
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.mount, ptr %67, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %4
  br i1 %75, label %79, label %76

76:                                               ; preds = %72, %66
  %77 = load volatile ptr, ptr %67, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %66

79:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  br label %142

80:                                               ; preds = %76, %50
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  %81 = tail call fastcc ptr @get_mountpoint(ptr noundef %4)
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = ptrtoint ptr %81 to i32
  br label %142

85:                                               ; preds = %80
  %86 = load ptr, ptr %1, align 4
  %87 = getelementptr inbounds %struct.vfsmount, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %86, i32 -16
  %90 = and i32 %88, -385897217
  %91 = or i32 %90, 256
  %92 = getelementptr i8, ptr %86, i32 100
  %93 = load ptr, ptr %92, align 4
  %94 = tail call ptr @llvm.thread.pointer() #21
  %95 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 92
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nsproxy, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %93, %98
  br i1 %99, label %102, label %100, !prof !20

100:                                              ; preds = %85
  %101 = icmp eq ptr %93, null
  br i1 %101, label %131, label %102

102:                                              ; preds = %100, %85
  %103 = getelementptr inbounds %struct.vfsmount, ptr %86, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %34, align 4
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load ptr, ptr %86, align 4
  %109 = load ptr, ptr %3, align 4
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %131, label %111

111:                                              ; preds = %107, %102
  %112 = load ptr, ptr %0, align 4
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 7340032
  %115 = icmp eq i32 %114, 6291456
  br i1 %115, label %131, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %0, i32 8
  store i32 %91, ptr %117, align 4
  %118 = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 10
  %119 = load i32, ptr %118, align 4
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.mountpoint, ptr %81, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 6291456
  %126 = icmp eq i32 %125, 2097152
  %127 = load i32, ptr %112, align 8
  %128 = and i32 %127, 6291456
  %129 = icmp eq i32 %128, 2097152
  %130 = xor i1 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %121, %116, %111, %107, %100
  %132 = phi i32 [ -20, %121 ], [ -22, %116 ], [ -22, %111 ], [ -16, %107 ], [ -22, %100 ]
  tail call fastcc void @unlock_mount(ptr noundef %81)
  br label %146

133:                                              ; preds = %121
  %134 = tail call fastcc i32 @attach_recursive_mnt(ptr noundef %11, ptr noundef %89, ptr noundef %81, i1 noundef zeroext false) #21
  tail call fastcc void @unlock_mount(ptr noundef %81)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146, !prof !20

136:                                              ; preds = %133
  %137 = getelementptr i8, ptr %0, i32 140
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140, !prof !20

140:                                              ; preds = %136
  store i32 0, ptr %137, align 4
  br label %141

141:                                              ; preds = %140, %136
  tail call fastcc void @mntput_no_expire(ptr noundef %11) #21
  br label %166

142:                                              ; preds = %83, %79, %43
  %143 = phi i32 [ 0, %79 ], [ %84, %83 ], [ -2, %43 ]
  tail call fastcc void @namespace_unlock()
  %144 = load ptr, ptr %44, align 8
  %145 = getelementptr inbounds %struct.inode, ptr %144, i32 0, i32 24
  tail call void @up_write(ptr noundef %145) #21
  br label %146

146:                                              ; preds = %142, %133, %131, %40
  %147 = phi i32 [ %143, %142 ], [ %134, %133 ], [ -40, %40 ], [ %132, %131 ]
  %148 = getelementptr i8, ptr %0, i32 64
  %149 = load volatile ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, %148
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %152 = getelementptr i8, ptr %0, i32 68
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %148, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %153, ptr %155, align 4
  store volatile ptr %154, ptr %153, align 4
  store volatile ptr %148, ptr %148, align 4
  store ptr %148, ptr %152, align 4
  tail call fastcc void @namespace_unlock()
  br label %156

156:                                              ; preds = %151, %146
  %157 = getelementptr i8, ptr %0, i32 140
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160, !prof !20

160:                                              ; preds = %156
  store i32 0, ptr %157, align 4
  br label %161

161:                                              ; preds = %160, %156
  tail call fastcc void @mntput_no_expire(ptr noundef %11) #21
  %162 = load i32, ptr %157, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164, !prof !20

164:                                              ; preds = %161
  store i32 0, ptr %157, align 4
  br label %165

165:                                              ; preds = %164, %161
  tail call fastcc void @mntput_no_expire(ptr noundef %11) #21
  br label %166

166:                                              ; preds = %165, %141, %8, %2
  %167 = phi i32 [ %9, %8 ], [ %147, %165 ], [ 0, %141 ], [ 0, %2 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_mountpoint(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %81

13:                                               ; preds = %46, %9, %5
  %14 = phi ptr [ null, %9 ], [ %47, %46 ], [ null, %5 ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %15 = ptrtoint ptr %0 to i32
  %16 = lshr i32 %15, 6
  %17 = load i32, ptr @mp_hash_shift, align 4
  %18 = lshr i32 %16, %17
  %19 = add nuw nsw i32 %18, %16
  %20 = load ptr, ptr @mountpoint_hashtable, align 4
  %21 = load i32, ptr @mp_hash_mask, align 4
  %22 = and i32 %19, %21
  %23 = getelementptr %struct.hlist_head, ptr %20, i32 %22
  br label %24

24:                                               ; preds = %28, %13
  %25 = phi ptr [ %23, %13 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mountpoint, ptr %26, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %24

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mountpoint, ptr %26, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %36 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %78

38:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %39 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %41 = icmp eq ptr %14, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %1
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 20) #24
  %45 = icmp eq ptr %44, null
  br i1 %45, label %81, label %46

46:                                               ; preds = %42, %38
  %47 = phi ptr [ %44, %42 ], [ %14, %38 ]
  %48 = tail call i32 @d_set_mounted(ptr noundef %0) #21
  %49 = icmp eq i32 %48, -16
  br i1 %49, label %13, label %50

50:                                               ; preds = %46
  %51 = inttoptr i32 %48 to ptr
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %54 = icmp eq ptr %0, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %56) #21
  br label %57

57:                                               ; preds = %55, %53
  %58 = getelementptr inbounds %struct.mountpoint, ptr %47, i32 0, i32 1
  store ptr %0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mountpoint, ptr %47, i32 0, i32 3
  store i32 1, ptr %59, align 4
  %60 = ptrtoint ptr %0 to i32
  %61 = lshr i32 %60, 6
  %62 = load i32, ptr @mp_hash_shift, align 4
  %63 = lshr i32 %61, %62
  %64 = add nuw nsw i32 %63, %61
  %65 = load ptr, ptr @mountpoint_hashtable, align 4
  %66 = load i32, ptr @mp_hash_mask, align 4
  %67 = and i32 %64, %66
  %68 = getelementptr %struct.hlist_head, ptr %65, i32 %67
  %69 = load ptr, ptr %68, align 4
  store volatile ptr %69, ptr %47, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.hlist_node, ptr %69, i32 0, i32 1
  store volatile ptr %47, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %57
  store volatile ptr %47, ptr %68, align 4
  %74 = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  store volatile ptr %68, ptr %74, align 4
  %75 = getelementptr inbounds %struct.mountpoint, ptr %47, i32 0, i32 2
  store ptr null, ptr %75, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %76 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %78

78:                                               ; preds = %73, %50, %32
  %79 = phi ptr [ %51, %50 ], [ %47, %73 ], [ %26, %32 ]
  %80 = phi ptr [ %47, %50 ], [ null, %73 ], [ %14, %32 ]
  tail call void @kfree(ptr noundef %80) #21
  br label %81

81:                                               ; preds = %78, %42, %9
  %82 = phi ptr [ %79, %78 ], [ inttoptr (i32 -2 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %42 ]
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unlock_mount(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %4 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !20

13:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %15) #21
  %16 = load i32, ptr %9, align 8
  %17 = and i32 %16, -65537
  store i32 %17, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @dput_to_list(ptr noundef %9, ptr noundef nonnull @ex_mountpoints) #21
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store volatile ptr %20, ptr %22, align 4
  %23 = icmp eq ptr %20, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %14
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @kfree(ptr noundef %0) #21
  br label %27

27:                                               ; preds = %26, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %28 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @namespace_unlock()
  %30 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 24
  tail call void @up_write(ptr noundef %32) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_set_expiry(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %3, ptr %4, align 4
  store ptr %1, ptr %3, align 4
  %6 = getelementptr i8, ptr %0, i32 68
  store ptr %5, ptr %6, align 4
  store volatile ptr %3, ptr %5, align 4
  tail call fastcc void @namespace_unlock()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_mounts_for_expiry(ptr noundef %0) #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %53, label %6

6:                                                ; preds = %1
  call void @down_write(ptr noundef nonnull @namespace_sem) #21
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %7 = load i32, ptr @mount_lock, align 64
  %8 = add i32 %7, 1
  store i32 %8, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %14

11:                                               ; preds = %32, %6
  %12 = load volatile ptr, ptr %2, align 8
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %48, label %34

14:                                               ; preds = %32, %6
  %15 = phi ptr [ %16, %32 ], [ %9, %6 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %15, i32 76
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #21, !srcloc !45
  %18 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %17) #21, !srcloc !51
  %19 = extractvalue { i32, i32 } %18, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !56
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %15, i32 -80
  %23 = call i32 @propagate_mount_busy(ptr noundef %22, i32 noundef 1) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %15, ptr %31, align 4
  store ptr %30, ptr %15, align 4
  store ptr %2, ptr %26, align 4
  store volatile ptr %15, ptr %2, align 8
  br label %32

32:                                               ; preds = %25, %21, %14
  %33 = icmp eq ptr %16, %0
  br i1 %33, label %11, label %14

34:                                               ; preds = %45, %11
  %35 = phi ptr [ %46, %45 ], [ %12, %11 ]
  %36 = getelementptr i8, ptr %35, i32 -80
  %37 = getelementptr i8, ptr %35, i32 36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i64, ptr @event, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr @event, align 8
  %43 = getelementptr inbounds %struct.mnt_namespace, ptr %38, i32 0, i32 8
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.mnt_namespace, ptr %38, i32 0, i32 7
  call void @__wake_up(ptr noundef %44, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %45

45:                                               ; preds = %40, %34
  call fastcc void @umount_tree(ptr noundef %36, i32 noundef 3)
  %46 = load volatile ptr, ptr %2, align 8
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %48, label %34

48:                                               ; preds = %45, %11
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %49 = load i32, ptr @mount_lock, align 64
  %50 = add i32 %49, 1
  store i32 %50, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %51 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call fastcc void @namespace_unlock()
  br label %53

53:                                               ; preds = %48, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @path_mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.path, align 8
  %7 = and i32 %3, -65536
  %8 = icmp eq i32 %7, -1058209792
  %9 = and i32 %3, 65535
  %10 = select i1 %8, i32 %9, i32 %3
  %11 = icmp eq ptr %4, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %4, i32 4095
  store i8 0, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %5
  %15 = icmp sgt i32 %10, -1
  br i1 %15, label %16, label %404

16:                                               ; preds = %14
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 92
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nsproxy, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mnt_namespace, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call zeroext i1 @ns_capable(ptr noundef %23, i32 noundef 21) #21
  br i1 %24, label %25, label %404

25:                                               ; preds = %16
  %26 = and i32 %10, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i1, ptr @warn_mandlock.__already_done, align 1
  br i1 %29, label %32, label %30, !prof !20

30:                                               ; preds = %28
  store i1 true, ptr @warn_mandlock.__already_done, align 1
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #25
  br label %32

32:                                               ; preds = %30, %28, %25
  %33 = and i32 %10, 1024
  %34 = lshr exact i32 %33, 5
  %35 = lshr i32 %10, 1
  %36 = and i32 %35, 1
  %37 = or i32 %34, %36
  %38 = and i32 %35, 2
  %39 = or i32 %37, %38
  %40 = and i32 %35, 4
  %41 = or i32 %39, %40
  %42 = lshr exact i32 %33, 7
  %43 = or i32 %41, %42
  %44 = lshr i32 %10, 7
  %45 = and i32 %44, 16
  %46 = or i32 %43, %45
  %47 = xor i32 %46, 32
  %48 = and i32 %10, 16777216
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %46, -41
  %51 = select i1 %49, i32 %47, i32 %50
  %52 = shl i32 %10, 6
  %53 = and i32 %52, 64
  %54 = and i32 %35, 128
  %55 = or i32 %54, %53
  %56 = or i32 %55, %51
  %57 = and i32 %10, 32
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %10, 18877472
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %68

61:                                               ; preds = %32
  %62 = and i32 %56, -57
  %63 = load ptr, ptr %1, align 4
  %64 = getelementptr inbounds %struct.vfsmount, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 56
  %67 = or i32 %66, %62
  br label %68

68:                                               ; preds = %61, %32
  %69 = phi i32 [ %67, %61 ], [ %56, %32 ]
  %70 = and i32 %10, 42041553
  %71 = and i32 %10, 4128
  %72 = icmp eq i32 %71, 4128
  br i1 %72, label %73, label %188

73:                                               ; preds = %68
  %74 = load ptr, ptr %1, align 4
  %75 = getelementptr %struct.vfsmount, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %74, i32 100
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %18, align 4
  %80 = getelementptr inbounds %struct.nsproxy, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %78, %81
  br i1 %82, label %83, label %404

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %74, align 4
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %404

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %74, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 4194304
  %92 = icmp ne i32 %91, 0
  %93 = and i32 %69, 64
  %94 = icmp eq i32 %93, 0
  %95 = and i1 %94, %92
  br i1 %95, label %404, label %96

96:                                               ; preds = %88
  %97 = and i32 %90, 2097152
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %69, 2
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %100, %98
  br i1 %101, label %404, label %102

102:                                              ; preds = %96
  %103 = and i32 %90, 1048576
  %104 = icmp ne i32 %103, 0
  %105 = and i32 %69, 1
  %106 = icmp eq i32 %105, 0
  %107 = and i1 %106, %104
  br i1 %107, label %404, label %108

108:                                              ; preds = %102
  %109 = and i32 %90, 524288
  %110 = icmp ne i32 %109, 0
  %111 = and i32 %69, 4
  %112 = icmp eq i32 %111, 0
  %113 = and i1 %112, %110
  br i1 %113, label %404, label %114

114:                                              ; preds = %108
  %115 = and i32 %90, 262144
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = xor i32 %90, %69
  %119 = and i32 %118, 56
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %404

121:                                              ; preds = %117, %114
  %122 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 14
  tail call void @down_read(ptr noundef %122) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %123 = load i32, ptr @mount_lock, align 64
  %124 = add i32 %123, 1
  store i32 %124, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %125 = lshr exact i32 %93, 6
  %126 = load i32, ptr %89, align 4
  %127 = and i32 %126, 64
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load ptr, ptr %75, align 4
  %131 = getelementptr inbounds %struct.super_block, ptr %130, i32 0, i32 10
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 1
  br label %134

134:                                              ; preds = %129, %121
  %135 = phi i32 [ 1, %121 ], [ %133, %129 ]
  %136 = icmp eq i32 %125, %135
  br i1 %136, label %171, label %137

137:                                              ; preds = %134
  br i1 %94, label %164, label %138

138:                                              ; preds = %137
  %139 = or i32 %126, 512
  store i32 %139, ptr %89, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !57
  %140 = load i32, ptr @nr_cpu_ids, align 4
  %141 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %142 = icmp ult i32 %141, %140
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = getelementptr i8, ptr %74, i32 24
  %145 = load ptr, ptr %144, align 4
  %146 = ptrtoint ptr %145 to i32
  br label %147

147:                                              ; preds = %147, %143
  %148 = phi i32 [ %141, %143 ], [ %157, %147 ]
  %149 = phi i32 [ 0, %143 ], [ %156, %147 ]
  %150 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, %146
  %153 = inttoptr i32 %152 to ptr
  %154 = getelementptr inbounds %struct.mnt_pcp, ptr %153, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, %149
  %157 = tail call i32 @cpumask_next(i32 noundef %148, ptr noundef nonnull @__cpu_possible_mask) #22
  %158 = icmp ult i32 %157, %140
  br i1 %158, label %147, label %159

159:                                              ; preds = %147
  %160 = icmp eq i32 %156, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %159, %138
  %162 = load i32, ptr %89, align 4
  %163 = or i32 %162, 64
  store i32 %163, ptr %89, align 4
  br label %166

164:                                              ; preds = %137
  %165 = and i32 %126, -65
  br label %171

166:                                              ; preds = %161, %159
  %167 = phi i1 [ false, %159 ], [ true, %161 ]
  %168 = phi i32 [ -16, %159 ], [ 0, %161 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !58
  %169 = load i32, ptr %89, align 4
  %170 = and i32 %169, -513
  store i32 %170, ptr %89, align 4
  br i1 %167, label %171, label %182

171:                                              ; preds = %166, %164, %134
  %172 = phi i32 [ %126, %134 ], [ %165, %164 ], [ %170, %166 ]
  %173 = and i32 %172, -256
  %174 = or i32 %173, %69
  store i32 %174, ptr %89, align 4
  %175 = load ptr, ptr %77, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177

177:                                              ; preds = %171
  %178 = load i64, ptr @event, align 8
  %179 = add i64 %178, 1
  store i64 %179, ptr @event, align 8
  %180 = getelementptr inbounds %struct.mnt_namespace, ptr %175, i32 0, i32 8
  store i64 %179, ptr %180, align 8
  %181 = getelementptr inbounds %struct.mnt_namespace, ptr %175, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %181, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %182

182:                                              ; preds = %177, %171, %166
  %183 = phi i32 [ %168, %166 ], [ 0, %171 ], [ 0, %177 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %184 = load i32, ptr @mount_lock, align 64
  %185 = add i32 %184, 1
  store i32 %185, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %186 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @up_read(ptr noundef %122) #21
  tail call fastcc void @mnt_warn_timestamp_expiry(ptr noundef %1, ptr noundef %74) #21
  br label %404

188:                                              ; preds = %68
  br i1 %58, label %268, label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr %1, align 4
  %191 = getelementptr inbounds %struct.vfsmount, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %190, i32 -16
  %194 = getelementptr i8, ptr %190, i32 100
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %18, align 4
  %197 = getelementptr inbounds %struct.nsproxy, ptr %196, i32 0, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %195, %198
  br i1 %199, label %200, label %404

200:                                              ; preds = %189
  %201 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = load ptr, ptr %190, align 4
  %204 = icmp eq ptr %202, %203
  br i1 %204, label %205, label %404

205:                                              ; preds = %200
  %206 = getelementptr i8, ptr %190, i32 8
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 4194304
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %69, 64
  %211 = icmp eq i32 %210, 0
  %212 = and i1 %211, %209
  br i1 %212, label %404, label %213

213:                                              ; preds = %205
  %214 = and i32 %207, 2097152
  %215 = icmp ne i32 %214, 0
  %216 = and i32 %69, 2
  %217 = icmp eq i32 %216, 0
  %218 = and i1 %217, %215
  br i1 %218, label %404, label %219

219:                                              ; preds = %213
  %220 = and i32 %207, 1048576
  %221 = icmp ne i32 %220, 0
  %222 = and i32 %69, 1
  %223 = icmp eq i32 %222, 0
  %224 = and i1 %223, %221
  br i1 %224, label %404, label %225

225:                                              ; preds = %219
  %226 = and i32 %207, 524288
  %227 = icmp ne i32 %226, 0
  %228 = and i32 %69, 4
  %229 = icmp eq i32 %228, 0
  %230 = and i1 %229, %227
  br i1 %230, label %404, label %231

231:                                              ; preds = %225
  %232 = and i32 %207, 262144
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = xor i32 %207, %69
  %236 = and i32 %235, 56
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %404

238:                                              ; preds = %234, %231
  %239 = tail call ptr @fs_context_for_reconfigure(ptr noundef %202, i32 noundef %70, i32 noundef 41943121) #21
  %240 = icmp ugt ptr %239, inttoptr (i32 -4096 to ptr)
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = ptrtoint ptr %239 to i32
  br label %404

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.fs_context, ptr %239, i32 0, i32 17
  %245 = load i32, ptr %244, align 4
  %246 = or i32 %245, 262144
  store i32 %246, ptr %244, align 4
  %247 = tail call i32 @parse_monolithic_mount_data(ptr noundef %239, ptr noundef %4) #21
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 14
  tail call void @down_write(ptr noundef %250) #21
  %251 = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 47
  %252 = load ptr, ptr %251, align 4
  %253 = tail call zeroext i1 @ns_capable(ptr noundef %252, i32 noundef 21) #21
  br i1 %253, label %254, label %264

254:                                              ; preds = %249
  %255 = tail call i32 @reconfigure_super(ptr noundef %239) #21
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %258 = load i32, ptr @mount_lock, align 64
  %259 = add i32 %258, 1
  store i32 %259, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  tail call fastcc void @set_mount_attributes(ptr noundef %193, i32 noundef %69) #21
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %260 = load i32, ptr @mount_lock, align 64
  %261 = add i32 %260, 1
  store i32 %261, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %262 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %264

264:                                              ; preds = %257, %254, %249
  %265 = phi i32 [ %255, %254 ], [ 0, %257 ], [ -1, %249 ]
  tail call void @up_write(ptr noundef %250) #21
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi i32 [ %247, %243 ], [ %265, %264 ]
  tail call fastcc void @mnt_warn_timestamp_expiry(ptr noundef %1, ptr noundef %190) #21
  tail call void @put_fs_context(ptr noundef %239) #21
  br label %404

268:                                              ; preds = %188
  %269 = and i32 %10, 4096
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %338, label %271

271:                                              ; preds = %268
  %272 = and i32 %10, 16384
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !53
  %273 = icmp eq ptr %0, null
  br i1 %273, label %336, label %274

274:                                              ; preds = %271
  %275 = load i8, ptr %0, align 1
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %336, label %277

277:                                              ; preds = %274
  %278 = call i32 @kern_path(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull %6) #21
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %336

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.dentry, ptr %282, i32 0, i32 8
  %284 = load ptr, ptr %283, align 8
  %285 = icmp eq ptr %284, @ns_dentry_operations
  br i1 %285, label %286, label %303

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.dentry, ptr %282, i32 0, i32 11
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, @mntns_operations
  br i1 %289, label %290, label %303

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.dentry, ptr %282, i32 0, i32 5
  %292 = load ptr, ptr %291, align 8
  %293 = getelementptr inbounds %struct.inode, ptr %292, i32 0, i32 47
  %294 = load ptr, ptr %293, align 4
  %295 = load ptr, ptr %18, align 4
  %296 = getelementptr inbounds %struct.nsproxy, ptr %295, i32 0, i32 3
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.mnt_namespace, ptr %297, i32 0, i32 6
  %299 = load i64, ptr %298, align 8
  %300 = getelementptr inbounds %struct.mnt_namespace, ptr %294, i32 0, i32 6
  %301 = load i64, ptr %300, align 8
  %302 = icmp ult i64 %299, %301
  br i1 %302, label %303, label %334

303:                                              ; preds = %290, %286, %280
  %304 = call fastcc ptr @lock_mount(ptr noundef %1) #21
  %305 = icmp ugt ptr %304, inttoptr (i32 -4096 to ptr)
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = ptrtoint ptr %304 to i32
  br label %334

308:                                              ; preds = %303
  %309 = load ptr, ptr %1, align 4
  %310 = getelementptr i8, ptr %309, i32 -16
  %311 = getelementptr i8, ptr %309, i32 100
  %312 = load ptr, ptr %311, align 4
  %313 = load ptr, ptr %18, align 4
  %314 = getelementptr inbounds %struct.nsproxy, ptr %313, i32 0, i32 3
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %312, %315
  br i1 %316, label %317, label %332

317:                                              ; preds = %308
  %318 = call fastcc ptr @__do_loopback(ptr noundef nonnull %6, i32 noundef %272) #21
  %319 = icmp ugt ptr %318, inttoptr (i32 -4096 to ptr)
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = ptrtoint ptr %318 to i32
  br label %332

322:                                              ; preds = %317
  %323 = call fastcc i32 @graft_tree(ptr noundef %318, ptr noundef %310, ptr noundef %304) #21
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %322
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %326 = load i32, ptr @mount_lock, align 64
  %327 = add i32 %326, 1
  store i32 %327, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  call fastcc void @umount_tree(ptr noundef %318, i32 noundef 1) #21
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %328 = load i32, ptr @mount_lock, align 64
  %329 = add i32 %328, 1
  store i32 %329, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %330 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %331 = add i16 %330, 1
  store i16 %331, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %332

332:                                              ; preds = %325, %322, %320, %308
  %333 = phi i32 [ %321, %320 ], [ %323, %325 ], [ 0, %322 ], [ -22, %308 ]
  call fastcc void @unlock_mount(ptr noundef %304) #21
  br label %334

334:                                              ; preds = %332, %306, %290
  %335 = phi i32 [ -22, %290 ], [ %307, %306 ], [ %333, %332 ]
  call void @path_put(ptr noundef nonnull %6) #21
  br label %336

336:                                              ; preds = %334, %277, %274, %271
  %337 = phi i32 [ %335, %334 ], [ -22, %274 ], [ -22, %271 ], [ %278, %277 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %404

338:                                              ; preds = %268
  %339 = and i32 %10, 1966080
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %397, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %1, align 4
  %343 = getelementptr i8, ptr %342, i32 -16
  %344 = and i32 %10, 16384
  %345 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = load ptr, ptr %342, align 4
  %348 = icmp eq ptr %346, %347
  br i1 %348, label %349, label %404

349:                                              ; preds = %341
  %350 = and i32 %10, -49153
  %351 = and i32 %10, -2015233
  %352 = icmp ne i32 %351, 0
  %353 = tail call i32 @llvm.ctpop.i32(i32 %350) #21, !range !59
  %354 = icmp ne i32 %353, 1
  %355 = icmp eq i32 %350, 0
  %356 = or i1 %352, %354
  %357 = or i1 %355, %356
  br i1 %357, label %404, label %358

358:                                              ; preds = %349
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %359 = icmp eq i32 %350, 1048576
  br i1 %359, label %360, label %364

360:                                              ; preds = %358
  %361 = icmp ne i32 %344, 0
  %362 = tail call fastcc i32 @invent_group_ids(ptr noundef %343, i1 noundef zeroext %361) #21
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %395

364:                                              ; preds = %360, %358
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %365 = load i32, ptr @mount_lock, align 64
  %366 = add i32 %365, 1
  store i32 %366, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %367 = icmp eq ptr %343, null
  br i1 %367, label %390, label %368

368:                                              ; preds = %364
  %369 = icmp eq i32 %344, 0
  br label %370

370:                                              ; preds = %386, %368
  %371 = phi ptr [ %343, %368 ], [ %388, %386 ]
  tail call void @change_mnt_propagation(ptr noundef nonnull %371, i32 noundef %350) #21
  br i1 %369, label %390, label %372

372:                                              ; preds = %370
  %373 = getelementptr inbounds %struct.mount, ptr %371, i32 0, i32 6
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, %373
  br i1 %375, label %376, label %386

376:                                              ; preds = %379, %372
  %377 = phi ptr [ %383, %379 ], [ %371, %372 ]
  %378 = icmp eq ptr %377, %343
  br i1 %378, label %390, label %379

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.mount, ptr %377, i32 0, i32 7
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr inbounds %struct.mount, ptr %377, i32 0, i32 1
  %383 = load ptr, ptr %382, align 4
  %384 = getelementptr inbounds %struct.mount, ptr %383, i32 0, i32 6
  %385 = icmp eq ptr %381, %384
  br i1 %385, label %376, label %386

386:                                              ; preds = %379, %372
  %387 = phi ptr [ %374, %372 ], [ %381, %379 ]
  %388 = getelementptr i8, ptr %387, i32 -52
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %370

390:                                              ; preds = %386, %376, %370, %364
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %391 = load i32, ptr @mount_lock, align 64
  %392 = add i32 %391, 1
  store i32 %392, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %393 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %394 = add i16 %393, 1
  store i16 %394, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %395

395:                                              ; preds = %390, %360
  %396 = phi i32 [ %362, %360 ], [ 0, %390 ]
  tail call fastcc void @namespace_unlock() #21
  br label %404

397:                                              ; preds = %338
  %398 = and i32 %10, 8192
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %402, label %400

400:                                              ; preds = %397
  %401 = tail call fastcc i32 @do_move_mount_old(ptr noundef %1, ptr noundef %0)
  br label %404

402:                                              ; preds = %397
  %403 = tail call fastcc i32 @do_new_mount(ptr noundef %1, ptr noundef %2, i32 noundef %70, i32 noundef %69, ptr noundef %0, ptr noundef %4)
  br label %404

404:                                              ; preds = %402, %400, %395, %349, %341, %336, %266, %241, %234, %225, %219, %213, %205, %200, %189, %182, %117, %108, %102, %96, %88, %83, %73, %16, %14
  %405 = phi i32 [ %337, %336 ], [ %401, %400 ], [ %403, %402 ], [ -22, %14 ], [ -1, %16 ], [ %183, %182 ], [ -22, %73 ], [ -22, %83 ], [ -1, %88 ], [ -1, %96 ], [ -1, %102 ], [ -1, %108 ], [ -1, %117 ], [ %242, %241 ], [ %267, %266 ], [ -22, %189 ], [ -22, %200 ], [ -1, %205 ], [ -1, %213 ], [ -1, %219 ], [ -1, %225 ], [ -1, %234 ], [ %396, %395 ], [ -22, %341 ], [ -22, %349 ]
  ret i32 %405
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_move_mount_old(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !53
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = call i32 @kern_path(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %3) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call fastcc i32 @do_move_mount(ptr noundef nonnull %3, ptr noundef %0)
  call void @path_put(ptr noundef nonnull %3) #21
  br label %13

13:                                               ; preds = %11, %8, %5, %2
  %14 = phi i32 [ %12, %11 ], [ -22, %5 ], [ -22, %2 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_new_mount(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 {
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %150, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @get_fs_type(ptr noundef nonnull %1) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %150, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.file_system_type, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @strchr(ptr noundef nonnull %1, i32 noundef 46)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %18, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @put_filesystem(ptr noundef nonnull %10) #21
  br label %150

25:                                               ; preds = %20, %17, %12
  %26 = phi ptr [ %21, %20 ], [ null, %17 ], [ null, %12 ]
  %27 = tail call ptr @fs_context_for_mount(ptr noundef nonnull %10, i32 noundef %2) #21
  tail call void @put_filesystem(ptr noundef nonnull %10) #21
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %27 to i32
  br label %150

31:                                               ; preds = %25
  %32 = icmp eq ptr %26, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = tail call i32 @strlen(ptr noundef nonnull %26)
  %35 = tail call i32 @vfs_parse_fs_string(ptr noundef %27, ptr noundef nonnull @.str.15, ptr noundef nonnull %26, i32 noundef %34) #21
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %35, %33 ], [ 0, %31 ]
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne ptr %4, null
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = tail call i32 @strlen(ptr noundef nonnull %4)
  %43 = tail call i32 @vfs_parse_fs_string(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %43, %41 ], [ %37, %36 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %148

47:                                               ; preds = %44
  %48 = tail call i32 @parse_monolithic_mount_data(ptr noundef %27, ptr noundef %5) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %148

50:                                               ; preds = %47
  %51 = tail call zeroext i1 @mount_capable(ptr noundef %27) #21
  br i1 %51, label %52, label %148

52:                                               ; preds = %50
  %53 = tail call i32 @vfs_get_tree(ptr noundef %27) #21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %148

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %3, ptr %7, align 4
  %56 = getelementptr inbounds %struct.fs_context, ptr %27, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = call fastcc zeroext i1 @mount_too_revealing(ptr noundef %59, ptr noundef nonnull %7) #21
  br i1 %60, label %61, label %62, !prof !37

61:                                               ; preds = %55
  tail call void @fc_drop_locked(ptr noundef %27) #21
  br label %146

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 14
  tail call void @up_write(ptr noundef %63) #21
  %64 = tail call ptr @vfs_create_mount(ptr noundef %27) #21
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = ptrtoint ptr %64 to i32
  br label %146

68:                                               ; preds = %62
  tail call fastcc void @mnt_warn_timestamp_expiry(ptr noundef %0, ptr noundef %64) #21
  %69 = tail call fastcc ptr @lock_mount(ptr noundef %0) #21
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = icmp eq ptr %64, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %71
  %74 = getelementptr i8, ptr %64, i32 -16
  %75 = getelementptr i8, ptr %64, i32 140
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78, !prof !20

78:                                               ; preds = %73
  store i32 0, ptr %75, align 4
  br label %79

79:                                               ; preds = %78, %73
  tail call fastcc void @mntput_no_expire(ptr noundef %74) #21
  br label %80

80:                                               ; preds = %79, %71
  %81 = ptrtoint ptr %69 to i32
  br label %146

82:                                               ; preds = %68
  %83 = getelementptr i8, ptr %64, i32 -16
  %84 = load i32, ptr %7, align 4
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr i8, ptr %85, i32 -16
  %87 = and i32 %84, -385896961
  %88 = getelementptr i8, ptr %85, i32 100
  %89 = load ptr, ptr %88, align 4
  %90 = tail call ptr @llvm.thread.pointer() #21
  %91 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 92
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nsproxy, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %89, %94
  br i1 %95, label %101, label %96, !prof !20

96:                                               ; preds = %82
  %97 = and i32 %84, 256
  %98 = icmp eq i32 %97, 0
  %99 = icmp eq ptr %89, null
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %132, label %101

101:                                              ; preds = %96, %82
  %102 = getelementptr inbounds %struct.vfsmount, ptr %85, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %64, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %103, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load ptr, ptr %85, align 4
  %109 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %108, %110
  br i1 %111, label %132, label %112

112:                                              ; preds = %107, %101
  %113 = load ptr, ptr %64, align 4
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 7340032
  %116 = icmp eq i32 %115, 6291456
  br i1 %116, label %132, label %117

117:                                              ; preds = %112
  %118 = getelementptr i8, ptr %64, i32 8
  store i32 %87, ptr %118, align 4
  %119 = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 10
  %120 = load i32, ptr %119, align 4
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.mountpoint, ptr %69, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 6291456
  %127 = icmp eq i32 %126, 2097152
  %128 = load i32, ptr %113, align 8
  %129 = and i32 %128, 6291456
  %130 = icmp eq i32 %129, 2097152
  %131 = xor i1 %127, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %122, %117, %112, %107, %96
  %133 = phi i32 [ -20, %122 ], [ -22, %117 ], [ -22, %112 ], [ -16, %107 ], [ -22, %96 ]
  tail call fastcc void @unlock_mount(ptr noundef %69) #21
  br label %137

134:                                              ; preds = %122
  %135 = tail call fastcc i32 @attach_recursive_mnt(ptr noundef %83, ptr noundef %86, ptr noundef %69, i1 noundef zeroext false) #21
  tail call fastcc void @unlock_mount(ptr noundef %69) #21
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134, %132
  %138 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %139 = icmp eq ptr %64, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = getelementptr i8, ptr %64, i32 140
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144, !prof !20

144:                                              ; preds = %140
  store i32 0, ptr %141, align 4
  br label %145

145:                                              ; preds = %144, %140
  tail call fastcc void @mntput_no_expire(ptr noundef %83) #21
  br label %146

146:                                              ; preds = %145, %137, %134, %80, %66, %61
  %147 = phi i32 [ -1, %61 ], [ %67, %66 ], [ %81, %80 ], [ %135, %134 ], [ %138, %137 ], [ %138, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %148

148:                                              ; preds = %146, %52, %50, %47, %44
  %149 = phi i32 [ %53, %52 ], [ %147, %146 ], [ -1, %50 ], [ %48, %47 ], [ %45, %44 ]
  tail call void @put_fs_context(ptr noundef %27) #21
  br label %150

150:                                              ; preds = %148, %29, %24, %9, %6
  %151 = phi i32 [ %30, %29 ], [ %149, %148 ], [ -22, %24 ], [ -22, %6 ], [ -19, %9 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !53
  %7 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %6, ptr noundef null) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 @path_mount(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  call void @path_put(ptr noundef nonnull %6) #21
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @copy_mnt_ns(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !37

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3446, 0\0A.popsection", ""() #21, !srcloc !60
  unreachable

7:                                                ; preds = %4
  %8 = and i32 %0, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21, !prof !20

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #21, !srcloc !45
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #21, !srcloc !61
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !37

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %196, label %19, !prof !20

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #21
  br label %196

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.mnt_namespace, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call fastcc ptr @alloc_mnt_ns(ptr noundef %2, i1 noundef zeroext false)
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %196, label %26

26:                                               ; preds = %21
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %27 = getelementptr inbounds %struct.mnt_namespace, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %2
  %30 = select i1 %29, i32 5, i32 37
  %31 = getelementptr inbounds %struct.mount, ptr %23, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @copy_tree(ptr noundef %23, ptr noundef %32, i32 noundef %30)
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call fastcc void @namespace_unlock()
  tail call fastcc void @free_mnt_ns(ptr noundef %24)
  br label %196

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %40 = load i32, ptr @mount_lock, align 64
  %41 = add i32 %40, 1
  store i32 %41, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  tail call fastcc void @lock_mnt_tree(ptr noundef %33)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %42 = load i32, ptr @mount_lock, align 64
  %43 = add i32 %42, 1
  store i32 %43, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %44 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %46

46:                                               ; preds = %39, %36
  %47 = getelementptr inbounds %struct.mnt_namespace, ptr %24, i32 0, i32 1
  store ptr %33, ptr %47, align 8
  %48 = getelementptr inbounds %struct.mnt_namespace, ptr %24, i32 0, i32 2
  %49 = getelementptr inbounds %struct.mount, ptr %33, i32 0, i32 10
  %50 = getelementptr inbounds %struct.mount, ptr %33, i32 0, i32 10, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %48, ptr %50, align 4
  store ptr %49, ptr %48, align 4
  %52 = getelementptr inbounds %struct.mnt_namespace, ptr %24, i32 0, i32 2, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %48, ptr %51, align 4
  %53 = icmp eq ptr %23, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  tail call fastcc void @namespace_unlock()
  br label %196

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.mnt_namespace, ptr %24, i32 0, i32 9
  %57 = icmp eq ptr %3, null
  %58 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 5
  %59 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 6
  br label %63

60:                                               ; preds = %173, %149
  %61 = phi ptr [ %131, %149 ], [ %174, %173 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %178, label %63

63:                                               ; preds = %60, %55
  %64 = phi ptr [ %33, %55 ], [ %147, %60 ]
  %65 = phi ptr [ %23, %55 ], [ %61, %60 ]
  %66 = phi ptr [ null, %55 ], [ %113, %60 ]
  %67 = phi ptr [ null, %55 ], [ %112, %60 ]
  %68 = getelementptr inbounds %struct.mount, ptr %64, i32 0, i32 16
  store ptr %24, ptr %68, align 4
  %69 = load i32, ptr %56, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %56, align 8
  br i1 %57, label %111, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.mount, ptr %65, i32 0, i32 3
  %73 = load ptr, ptr %58, align 4
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mount, ptr %64, i32 0, i32 3
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %80 = getelementptr %struct.mount, ptr %64, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = ptrtoint ptr %81 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #15, !srcloc !11
  %86 = add i32 %85, %82
  %87 = inttoptr i32 %86 to ptr
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #21, !srcloc !12
  br label %90

90:                                               ; preds = %78, %75
  store ptr %76, ptr %58, align 4
  br label %91

91:                                               ; preds = %90, %71
  %92 = phi ptr [ %72, %90 ], [ %67, %71 ]
  %93 = load ptr, ptr %59, align 4
  %94 = icmp eq ptr %72, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.mount, ptr %64, i32 0, i32 3
  %97 = icmp eq ptr %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %100 = getelementptr %struct.mount, ptr %64, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %104 = inttoptr i32 %103 to ptr
  %105 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %104) #15, !srcloc !11
  %106 = add i32 %105, %102
  %107 = inttoptr i32 %106 to ptr
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #21, !srcloc !12
  br label %110

110:                                              ; preds = %98, %95
  store ptr %96, ptr %59, align 4
  br label %111

111:                                              ; preds = %110, %91, %63
  %112 = phi ptr [ %92, %110 ], [ %92, %91 ], [ %67, %63 ]
  %113 = phi ptr [ %72, %110 ], [ %66, %91 ], [ %66, %63 ]
  %114 = getelementptr inbounds %struct.mount, ptr %65, i32 0, i32 6
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %114
  br i1 %116, label %117, label %127

117:                                              ; preds = %120, %111
  %118 = phi ptr [ %124, %120 ], [ %65, %111 ]
  %119 = icmp eq ptr %118, %23
  br i1 %119, label %130, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.mount, ptr %118, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.mount, ptr %118, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.mount, ptr %124, i32 0, i32 6
  %126 = icmp eq ptr %122, %125
  br i1 %126, label %117, label %127

127:                                              ; preds = %120, %111
  %128 = phi ptr [ %115, %111 ], [ %122, %120 ]
  %129 = getelementptr i8, ptr %128, i32 -52
  br label %130

130:                                              ; preds = %127, %117
  %131 = phi ptr [ %129, %127 ], [ null, %117 ]
  %132 = getelementptr inbounds %struct.mount, ptr %64, i32 0, i32 6
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, %132
  br i1 %134, label %135, label %145

135:                                              ; preds = %138, %130
  %136 = phi ptr [ %142, %138 ], [ %64, %130 ]
  %137 = icmp eq ptr %136, %33
  br i1 %137, label %178, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.mount, ptr %136, i32 0, i32 7
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.mount, ptr %136, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.mount, ptr %142, i32 0, i32 6
  %144 = icmp eq ptr %140, %143
  br i1 %144, label %135, label %145

145:                                              ; preds = %138, %130
  %146 = phi ptr [ %133, %130 ], [ %140, %138 ]
  %147 = getelementptr i8, ptr %146, i32 -52
  %148 = icmp eq ptr %147, null
  br i1 %148, label %178, label %149

149:                                              ; preds = %145
  %150 = getelementptr i8, ptr %146, i32 -36
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.mount, ptr %131, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %151
  br i1 %154, label %60, label %155

155:                                              ; preds = %173, %149
  %156 = phi ptr [ %174, %173 ], [ %131, %149 ]
  %157 = getelementptr inbounds %struct.mount, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, %157
  br i1 %159, label %160, label %170

160:                                              ; preds = %163, %155
  %161 = phi ptr [ %167, %163 ], [ %156, %155 ]
  %162 = icmp eq ptr %161, %23
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.mount, ptr %161, i32 0, i32 7
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.mount, ptr %161, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.mount, ptr %167, i32 0, i32 6
  %169 = icmp eq ptr %165, %168
  br i1 %169, label %160, label %170

170:                                              ; preds = %163, %155
  %171 = phi ptr [ %158, %155 ], [ %165, %163 ]
  %172 = getelementptr i8, ptr %171, i32 -52
  br label %173

173:                                              ; preds = %170, %160
  %174 = phi ptr [ %172, %170 ], [ null, %160 ]
  %175 = getelementptr inbounds %struct.mount, ptr %174, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, %151
  br i1 %177, label %60, label %155

178:                                              ; preds = %145, %135, %60
  tail call fastcc void @namespace_unlock()
  %179 = icmp eq ptr %112, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = getelementptr i8, ptr %112, i32 -16
  %182 = getelementptr i8, ptr %112, i32 140
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185, !prof !20

185:                                              ; preds = %180
  store i32 0, ptr %182, align 4
  br label %186

186:                                              ; preds = %185, %180
  tail call fastcc void @mntput_no_expire(ptr noundef %181) #21
  br label %187

187:                                              ; preds = %186, %178
  %188 = icmp eq ptr %113, null
  br i1 %188, label %196, label %189

189:                                              ; preds = %187
  %190 = getelementptr i8, ptr %113, i32 -16
  %191 = getelementptr i8, ptr %113, i32 140
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194, !prof !20

194:                                              ; preds = %189
  store i32 0, ptr %191, align 4
  br label %195

195:                                              ; preds = %194, %189
  tail call fastcc void @mntput_no_expire(ptr noundef %190) #21
  br label %196

196:                                              ; preds = %195, %187, %54, %35, %21, %19, %15
  %197 = phi ptr [ %33, %35 ], [ %24, %21 ], [ %24, %195 ], [ %24, %187 ], [ %1, %15 ], [ %1, %19 ], [ %24, %54 ]
  ret ptr %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_mnt_ns(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #21
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = tail call ptr @inc_ucount(ptr noundef %0, [1 x i32] %8, i32 noundef 5) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 4197824, i32 noundef 80) #24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @dec_ucount(ptr noundef nonnull %9, i32 noundef 5) #21
  br label %38

16:                                               ; preds = %11
  br i1 %1, label %28, label %17

17:                                               ; preds = %16
  store volatile i32 0, ptr %13, align 8
  %18 = getelementptr inbounds %struct.ns_common, ptr %13, i32 0, i32 2
  %19 = tail call i32 @proc_alloc_inum(ptr noundef %18) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %13) #21
  tail call void @dec_ucount(ptr noundef nonnull %9, i32 noundef 5) #21
  %22 = inttoptr i32 %19 to ptr
  br label %38

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ns_common, ptr %13, i32 0, i32 1
  store ptr @mntns_operations, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !62
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @mnt_ns_seq) #21, !srcloc !45
  %25 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @mnt_ns_seq, ptr nonnull @mnt_ns_seq, i64 1, ptr nonnull elementtype(i64) @mnt_ns_seq) #21, !srcloc !63
  %26 = extractvalue { i64, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !64
  %27 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 6
  store i64 %26, ptr %27, align 8
  br label %30

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ns_common, ptr %13, i32 0, i32 1
  store ptr @mntns_operations, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.ns_common, ptr %13, i32 0, i32 3
  store volatile i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 2
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 2, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_mnt_ns.__key) #21
  %35 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 3
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 4
  store ptr @init_user_ns, ptr %36, align 8
  %37 = getelementptr inbounds %struct.mnt_namespace, ptr %13, i32 0, i32 5
  store ptr %9, ptr %37, align 4
  br label %38

38:                                               ; preds = %30, %21, %15, %2
  %39 = phi ptr [ %13, %30 ], [ %22, %21 ], [ inttoptr (i32 -12 to ptr), %15 ], [ inttoptr (i32 -28 to ptr), %2 ]
  ret ptr %39
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_mnt_tree(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %37, %1
  %4 = phi ptr [ %39, %37 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 262144, i32 4456448
  %10 = shl i32 %6, 20
  %11 = and i32 %10, 2097152
  %12 = and i32 %10, 1048576
  %13 = shl i32 %6, 17
  %14 = and i32 %13, 524288
  %15 = or i32 %11, %6
  %16 = or i32 %15, %12
  %17 = or i32 %16, %14
  %18 = or i32 %17, %9
  %19 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  %22 = or i32 %18, 8388608
  %23 = select i1 %21, i32 %22, i32 %18
  store i32 %23, ptr %5, align 4
  %24 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %37

27:                                               ; preds = %30, %3
  %28 = phi ptr [ %34, %30 ], [ %4, %3 ]
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.mount, ptr %28, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mount, ptr %28, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mount, ptr %34, i32 0, i32 6
  %36 = icmp eq ptr %32, %35
  br i1 %36, label %27, label %37

37:                                               ; preds = %30, %3
  %38 = phi ptr [ %25, %3 ], [ %32, %30 ]
  %39 = getelementptr i8, ptr %38, i32 -52
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %3

41:                                               ; preds = %37, %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mount_subtree(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  %4 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !53
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = insertvalue [1 x i32] poison, i32 %9, 0
  %11 = tail call ptr @inc_ucount(ptr noundef nonnull @init_user_ns, [1 x i32] %10, i32 noundef 5) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 4197824, i32 noundef 80) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @dec_ucount(ptr noundef nonnull %11, i32 noundef 5) #21
  br label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ns_common, ptr %15, i32 0, i32 1
  store ptr @mntns_operations, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ns_common, ptr %15, i32 0, i32 3
  store volatile i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 2
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 2, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_mnt_ns.__key) #21
  %24 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 3
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 4
  store ptr @init_user_ns, ptr %25, align 8
  %26 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 5
  store ptr %11, ptr %26, align 4
  %27 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %37

28:                                               ; preds = %18, %17, %2
  %29 = phi ptr [ %15, %18 ], [ inttoptr (i32 -28 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %17 ]
  %30 = icmp eq ptr %0, null
  br i1 %30, label %71, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 140
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !20

35:                                               ; preds = %31
  store i32 0, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  tail call fastcc void @mntput_no_expire(ptr noundef %4) #21
  br label %71

37:                                               ; preds = %18
  %38 = getelementptr i8, ptr %0, i32 100
  store ptr %15, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 1
  store ptr %4, ptr %39, align 8
  %40 = getelementptr inbounds %struct.mnt_namespace, ptr %15, i32 0, i32 9
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8
  %43 = getelementptr i8, ptr %0, i32 56
  %44 = load ptr, ptr %21, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store ptr %44, ptr %43, align 4
  %46 = getelementptr i8, ptr %0, i32 60
  store ptr %21, ptr %46, align 4
  store volatile ptr %43, ptr %21, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = call i32 @vfs_path_lookup(ptr noundef %47, ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull %3) #21
  call void @put_mnt_ns(ptr noundef nonnull %15)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = inttoptr i32 %48 to ptr
  br label %71

52:                                               ; preds = %37
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.vfsmount, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #21, !srcloc !45
  %57 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #21, !srcloc !46
  %58 = load ptr, ptr %3, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = getelementptr i8, ptr %58, i32 -16
  %62 = getelementptr i8, ptr %58, i32 140
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65, !prof !20

65:                                               ; preds = %60
  store i32 0, ptr %62, align 4
  br label %66

66:                                               ; preds = %65, %60
  call fastcc void @mntput_no_expire(ptr noundef %61) #21
  br label %67

67:                                               ; preds = %66, %52
  %68 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 14
  call void @down_write(ptr noundef %68) #21
  %69 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %67, %50, %36, %28
  %72 = phi ptr [ %51, %50 ], [ %70, %67 ], [ %29, %28 ], [ %29, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_path_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_mnt_ns(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #21, !srcloc !45
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #21, !srcloc !66
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %27, label %8, !prof !20

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #21
  br label %27

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !67
  %10 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %12 = load i32, ptr @mount_lock, align 64
  %13 = add i32 %12, 1
  store i32 %13, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  tail call fastcc void @umount_tree(ptr noundef %11, i32 noundef 0) #21
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %14 = load i32, ptr @mount_lock, align 64
  %15 = add i32 %14, 1
  store i32 %15, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %16 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @namespace_unlock() #21
  %18 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 6
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  tail call void @proc_free_inum(i32 noundef %23) #21
  br label %24

24:                                               ; preds = %21, %9
  %25 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void @dec_ucount(ptr noundef %26, i32 noundef 5) #21
  tail call void @kfree(ptr noundef %0) #21
  br label %27

27:                                               ; preds = %24, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mount(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.path, align 8
  %7 = inttoptr i32 %0 to ptr
  %8 = inttoptr i32 %1 to ptr
  %9 = inttoptr i32 %4 to ptr
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = inttoptr i32 %2 to ptr
  %13 = tail call ptr @strndup_user(ptr noundef nonnull %12, i32 noundef 4096) #21
  %14 = ptrtoint ptr %13 to i32
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %85, label %16

16:                                               ; preds = %11, %5
  %17 = phi ptr [ %13, %11 ], [ null, %5 ]
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @strndup_user(ptr noundef nonnull %7, i32 noundef 4096) #21
  %21 = ptrtoint ptr %20 to i32
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %83, label %23

23:                                               ; preds = %19, %16
  %24 = phi ptr [ %20, %19 ], [ null, %16 ]
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 4096) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %26
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %9, i32 4096, i32 -1090519040) #26, !srcloc !68
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  %34 = tail call ptr @llvm.thread.pointer() #21
  br i1 %33, label %35, label %42, !prof !20

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #15, !srcloc !69
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #21, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !71
  %40 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %28, ptr noundef nonnull %9, i32 noundef 4096) #21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #21, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !71
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %70, label %42, !prof !20

42:                                               ; preds = %35, %30
  %43 = phi i32 [ %40, %35 ], [ 4096, %30 ]
  %44 = sub i32 4096, %43
  %45 = getelementptr i8, ptr %28, i32 %44
  tail call void @llvm.memset.p0.i32(ptr align 1 %45, i8 0, i32 %43, i1 false) #21
  %46 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  br label %47

47:                                               ; preds = %57, %42
  %48 = phi i32 [ %43, %42 ], [ %61, %57 ]
  %49 = phi i32 [ %44, %42 ], [ %62, %57 ]
  %50 = getelementptr i8, ptr %9, i32 %49
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #15, !srcloc !69
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #21, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !71
  %54 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %50, i32 -1090519041) #21, !srcloc !72
  %55 = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #21, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !71
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = extractvalue { i32, i32 } %54, 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr i8, ptr %28, i32 %49
  store i8 %59, ptr %60, align 1
  %61 = add i32 %48, -1
  %62 = add i32 %49, 1
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %70, label %47

64:                                               ; preds = %47
  %65 = icmp eq i32 %48, 4096
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  tail call void @kfree(ptr noundef nonnull %28) #21
  br label %67

67:                                               ; preds = %66, %26
  %68 = phi ptr [ inttoptr (i32 -12 to ptr), %26 ], [ inttoptr (i32 -14 to ptr), %66 ]
  %69 = ptrtoint ptr %68 to i32
  br label %81

70:                                               ; preds = %64, %57, %35
  %71 = ptrtoint ptr %28 to i32
  %72 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %81, label %73

73:                                               ; preds = %70, %23
  %74 = phi ptr [ %28, %70 ], [ null, %23 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !53
  %75 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %8, i32 noundef 1, ptr noundef nonnull %6, ptr noundef null) #21
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @path_mount(ptr noundef %24, ptr noundef nonnull %6, ptr noundef %17, i32 noundef %3, ptr noundef %74) #21
  call void @path_put(ptr noundef nonnull %6) #21
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %78, %77 ], [ %75, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @kfree(ptr noundef %74) #21
  br label %81

81:                                               ; preds = %79, %70, %67
  %82 = phi i32 [ %71, %70 ], [ %80, %79 ], [ %69, %67 ]
  call void @kfree(ptr noundef %24) #21
  br label %83

83:                                               ; preds = %81, %19
  %84 = phi i32 [ %21, %19 ], [ %82, %81 ]
  call void @kfree(ptr noundef %17) #21
  br label %85

85:                                               ; preds = %83, %11
  %86 = phi i32 [ %14, %11 ], [ %84, %83 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsmount(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.path, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store i64 0, ptr %4, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mnt_namespace, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 21) #21
  br i1 %13, label %14, label %173

14:                                               ; preds = %3
  %15 = icmp ult i32 %1, 2
  %16 = and i32 %2, -2097408
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %173

19:                                               ; preds = %14
  %20 = shl nuw nsw i32 %2, 6
  %21 = and i32 %20, 64
  %22 = lshr i32 %2, 1
  %23 = and i32 %22, 1
  %24 = or i32 %23, %21
  %25 = and i32 %22, 2
  %26 = or i32 %24, %25
  %27 = and i32 %22, 4
  %28 = or i32 %26, %27
  %29 = lshr i32 %2, 3
  %30 = and i32 %29, 16
  %31 = or i32 %28, %30
  %32 = lshr i32 %2, 14
  %33 = and i32 %32, 128
  %34 = or i32 %31, %33
  store i32 %34, ptr %5, align 4
  %35 = and i32 %2, 112
  switch i32 %35, label %173 [
    i32 32, label %40
    i32 16, label %36
    i32 0, label %38
  ]

36:                                               ; preds = %19
  %37 = or i32 %34, 8
  store i32 %37, ptr %5, align 4
  br label %40

38:                                               ; preds = %19
  %39 = or i32 %34, 32
  store i32 %39, ptr %5, align 4
  br label %40

40:                                               ; preds = %38, %36, %19
  %41 = tail call i32 @__fdget(i32 noundef %0) #21, !noalias !73
  %42 = and i32 %41, -4
  %43 = inttoptr i32 %42 to ptr
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %173, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, @fscontext_fops
  br i1 %48, label %49, label %168

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 15
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.fs_context, ptr %51, i32 0, i32 1
  %53 = tail call i32 @mutex_lock_interruptible(ptr noundef %52) #21
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %168, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.fs_context, ptr %51, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %166, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = call fastcc zeroext i1 @mount_too_revealing(ptr noundef %61, ptr noundef nonnull %5) #21
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #25
  br label %166

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.fs_context, ptr %51, i32 0, i32 17
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 65280
  %69 = icmp eq i32 %68, 512
  br i1 %69, label %70, label %166

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.fs_context, ptr %51, i32 0, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 64
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i1, ptr @warn_mandlock.__already_done, align 1
  br i1 %76, label %79, label %77, !prof !20

77:                                               ; preds = %75
  store i1 true, ptr @warn_mandlock.__already_done, align 1
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #25
  br label %79

79:                                               ; preds = %77, %75, %70
  %80 = tail call ptr @vfs_create_mount(ptr noundef %51) #21
  store ptr %80, ptr %4, align 8
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = ptrtoint ptr %80 to i32
  br label %166

84:                                               ; preds = %79
  %85 = load ptr, ptr %56, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.dentry, ptr %85, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %88) #21
  br label %89

89:                                               ; preds = %87, %84
  %90 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  store ptr %85, ptr %90, align 4
  %91 = load i32, ptr %5, align 4
  %92 = getelementptr inbounds %struct.vfsmount, ptr %80, i32 0, i32 2
  store i32 %91, ptr %92, align 4
  tail call void @vfs_clean_context(ptr noundef %51) #21
  %93 = load ptr, ptr %7, align 4
  %94 = getelementptr inbounds %struct.nsproxy, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.mnt_namespace, ptr %95, i32 0, i32 4
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.cred, ptr %99, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = insertvalue [1 x i32] poison, i32 %101, 0
  %103 = tail call ptr @inc_ucount(ptr noundef %97, [1 x i32] %102, i32 noundef 5) #21
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105

105:                                              ; preds = %89
  %106 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %107 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 4197824, i32 noundef 80) #24
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void @dec_ucount(ptr noundef nonnull %103, i32 noundef 5) #21
  br label %120

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ns_common, ptr %107, i32 0, i32 1
  store ptr @mntns_operations, ptr %111, align 4
  %112 = getelementptr inbounds %struct.ns_common, ptr %107, i32 0, i32 3
  store volatile i32 1, ptr %112, align 4
  %113 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 2
  store volatile ptr %113, ptr %113, align 4
  %114 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 2, i32 1
  store ptr %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %115, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_mnt_ns.__key) #21
  %116 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 3
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 4
  store ptr @init_user_ns, ptr %117, align 8
  %118 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 5
  store ptr %103, ptr %118, align 4
  %119 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %123

120:                                              ; preds = %110, %109, %89
  %121 = phi ptr [ %107, %110 ], [ inttoptr (i32 -28 to ptr), %89 ], [ inttoptr (i32 -12 to ptr), %109 ]
  %122 = ptrtoint ptr %121 to i32
  br label %164

123:                                              ; preds = %110
  %124 = getelementptr i8, ptr %80, i32 -16
  %125 = getelementptr i8, ptr %80, i32 100
  store ptr %107, ptr %125, align 4
  %126 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 1
  store ptr %124, ptr %126, align 8
  %127 = getelementptr inbounds %struct.mnt_namespace, ptr %107, i32 0, i32 9
  store i32 1, ptr %127, align 8
  %128 = getelementptr i8, ptr %80, i32 56
  %129 = load ptr, ptr %113, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %128, ptr %130, align 4
  store ptr %129, ptr %128, align 4
  %131 = getelementptr i8, ptr %80, i32 60
  store ptr %113, ptr %131, align 4
  store volatile ptr %128, ptr %113, align 4
  %132 = load ptr, ptr %4, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %123
  %135 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %136 = getelementptr i8, ptr %132, i32 24
  %137 = load ptr, ptr %136, align 4
  %138 = ptrtoint ptr %137 to i32
  %139 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %140 = inttoptr i32 %139 to ptr
  %141 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %140) #15, !srcloc !11
  %142 = add i32 %141, %138
  %143 = inttoptr i32 %142 to ptr
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #21, !srcloc !12
  br label %146

146:                                              ; preds = %134, %123
  %147 = getelementptr inbounds %struct.fs_context, ptr %51, i32 0, i32 8
  %148 = load ptr, ptr %147, align 4
  %149 = call ptr @dentry_open(ptr noundef nonnull %4, i32 noundef 2097152, ptr noundef %148) #21
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load ptr, ptr %4, align 8
  call void @dissolve_on_fput(ptr noundef %152) #21
  %153 = ptrtoint ptr %149 to i32
  br label %164

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 8
  %156 = load i32, ptr %155, align 8
  %157 = or i32 %156, 268435456
  store i32 %157, ptr %155, align 8
  %158 = shl nuw nsw i32 %1, 19
  %159 = and i32 %158, 524288
  %160 = call i32 @get_unused_fd_flags(i32 noundef %159) #21
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  call void @fd_install(i32 noundef %160, ptr noundef %149) #21
  br label %164

163:                                              ; preds = %154
  call void @fput(ptr noundef %149) #21
  br label %164

164:                                              ; preds = %163, %162, %151, %120
  %165 = phi i32 [ %122, %120 ], [ %153, %151 ], [ %160, %162 ], [ %160, %163 ]
  call void @path_put(ptr noundef nonnull %4) #21
  br label %166

166:                                              ; preds = %164, %82, %65, %63, %55
  %167 = phi i32 [ -1, %63 ], [ -16, %65 ], [ %83, %82 ], [ %165, %164 ], [ -22, %55 ]
  call void @mutex_unlock(ptr noundef %52) #21
  br label %168

168:                                              ; preds = %166, %49, %45
  %169 = phi i32 [ -22, %45 ], [ %53, %49 ], [ %167, %166 ]
  %170 = and i32 %41, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  call void @fput(ptr noundef nonnull %43) #21
  br label %173

173:                                              ; preds = %172, %168, %40, %19, %14, %3
  %174 = phi i32 [ -1, %3 ], [ -22, %14 ], [ -22, %19 ], [ -9, %40 ], [ %169, %168 ], [ %169, %172 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_move_mount(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.path, align 8
  %8 = inttoptr i32 %1 to ptr
  %9 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store i64 0, ptr %7, align 8, !annotation !53
  %10 = tail call ptr @llvm.thread.pointer() #21
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 92
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mnt_namespace, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call zeroext i1 @ns_capable(ptr noundef %16, i32 noundef 21) #21
  br i1 %17, label %18, label %162

18:                                               ; preds = %5
  %19 = and i32 %4, -376
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %162

21:                                               ; preds = %18
  %22 = and i32 %4, 1
  %23 = shl nuw nsw i32 %4, 1
  %24 = and i32 %23, 4
  %25 = or i32 %24, %22
  %26 = shl nuw nsw i32 %4, 12
  %27 = and i32 %26, 16384
  %28 = or i32 %25, %27
  %29 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %8, i32 noundef %28, ptr noundef nonnull %6, ptr noundef null) #21
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %162, label %31

31:                                               ; preds = %21
  %32 = lshr i32 %4, 4
  %33 = and i32 %32, 1
  %34 = lshr i32 %4, 3
  %35 = and i32 %34, 4
  %36 = or i32 %35, %33
  %37 = shl nuw nsw i32 %4, 8
  %38 = and i32 %37, 16384
  %39 = or i32 %36, %38
  %40 = call i32 @user_path_at_empty(i32 noundef %2, ptr noundef %9, i32 noundef %39, ptr noundef nonnull %7, ptr noundef null) #21
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %160, label %42

42:                                               ; preds = %31
  %43 = and i32 %4, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %156, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %6, align 8
  %47 = load ptr, ptr %7, align 8
  call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %48 = getelementptr i8, ptr %46, i32 100
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %52 = or i1 %50, %51
  br i1 %52, label %154, label %53

53:                                               ; preds = %45
  %54 = getelementptr i8, ptr %47, i32 100
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %58 = or i1 %56, %57
  br i1 %58, label %154, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mnt_namespace, ptr %49, i32 0, i32 4
  %61 = load ptr, ptr %60, align 8
  %62 = call zeroext i1 @ns_capable(ptr noundef %61, i32 noundef 21) #21
  br i1 %62, label %63, label %154

63:                                               ; preds = %59
  %64 = load ptr, ptr %54, align 4
  %65 = getelementptr inbounds %struct.mnt_namespace, ptr %64, i32 0, i32 4
  %66 = load ptr, ptr %65, align 8
  %67 = call zeroext i1 @ns_capable(ptr noundef %66, i32 noundef 21) #21
  br i1 %67, label %68, label %154

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %6, align 8
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %154

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %7, align 8
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %154

80:                                               ; preds = %74
  %81 = getelementptr i8, ptr %46, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %47, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %86, label %154

86:                                               ; preds = %80
  %87 = load ptr, ptr %47, align 4
  %88 = load ptr, ptr %46, align 4
  %89 = call zeroext i1 @is_subdir(ptr noundef %87, ptr noundef %88) #21
  br i1 %89, label %90, label %154

90:                                               ; preds = %86
  %91 = load ptr, ptr %47, align 4
  %92 = getelementptr i8, ptr %46, i32 28
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %108, label %95

95:                                               ; preds = %105, %90
  %96 = phi ptr [ %106, %105 ], [ %93, %90 ]
  %97 = getelementptr i8, ptr %96, i32 -40
  %98 = load ptr, ptr %97, align 4
  %99 = call zeroext i1 @is_subdir(ptr noundef %98, ptr noundef %91) #21
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %96, i32 -28
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 8388608
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %154

105:                                              ; preds = %100, %95
  %106 = load ptr, ptr %96, align 4
  %107 = icmp eq ptr %106, %92
  br i1 %107, label %108, label %95

108:                                              ; preds = %105, %90
  %109 = getelementptr i8, ptr %47, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 4096
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %154

113:                                              ; preds = %108
  %114 = getelementptr i8, ptr %47, i32 96
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %46, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 4096
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr i8, ptr %46, i32 96
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %121, label %125, label %126

125:                                              ; preds = %117
  br i1 %124, label %154, label %127

126:                                              ; preds = %117
  br i1 %124, label %136, label %127

127:                                              ; preds = %126, %125
  %128 = getelementptr i8, ptr %47, i32 88
  %129 = getelementptr inbounds %struct.mount, ptr %123, i32 0, i32 13
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %128, ptr %131, align 4
  store ptr %130, ptr %128, align 4
  %132 = getelementptr i8, ptr %47, i32 92
  store ptr %129, ptr %132, align 4
  store volatile ptr %128, ptr %129, align 4
  store ptr %123, ptr %114, align 4
  %133 = load i32, ptr %118, align 4
  %134 = and i32 %133, 4096
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %127, %126
  %137 = getelementptr i8, ptr %46, i32 136
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i8, ptr %47, i32 136
  store i32 %138, ptr %139, align 4
  %140 = getelementptr i8, ptr %47, i32 72
  %141 = getelementptr i8, ptr %46, i32 72
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  store ptr %140, ptr %143, align 4
  store ptr %142, ptr %140, align 4
  %144 = getelementptr i8, ptr %47, i32 76
  store ptr %141, ptr %144, align 4
  store volatile ptr %140, ptr %141, align 4
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %145 = load i32, ptr @mount_lock, align 64
  %146 = add i32 %145, 1
  store i32 %146, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %147 = load i32, ptr %109, align 4
  %148 = and i32 %147, -12289
  %149 = or i32 %148, 4096
  store i32 %149, ptr %109, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %150 = load i32, ptr @mount_lock, align 64
  %151 = add i32 %150, 1
  store i32 %151, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %152 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %154

154:                                              ; preds = %136, %127, %125, %113, %108, %100, %86, %80, %74, %68, %63, %59, %53, %45
  %155 = phi i32 [ -22, %68 ], [ -22, %74 ], [ -22, %80 ], [ -22, %108 ], [ -22, %113 ], [ -22, %125 ], [ -22, %86 ], [ -1, %63 ], [ -1, %59 ], [ -22, %53 ], [ -22, %45 ], [ 0, %136 ], [ 0, %127 ], [ -22, %100 ]
  call fastcc void @namespace_unlock() #21
  br label %158

156:                                              ; preds = %42
  %157 = call fastcc i32 @do_move_mount(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  call void @path_put(ptr noundef nonnull %7) #21
  br label %160

160:                                              ; preds = %158, %31
  %161 = phi i32 [ %40, %31 ], [ %159, %158 ]
  call void @path_put(ptr noundef nonnull %6) #21
  br label %162

162:                                              ; preds = %160, %21, %18, %5
  %163 = phi i32 [ %161, %160 ], [ -1, %5 ], [ -22, %18 ], [ %29, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_path_reachable(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %18, label %7

7:                                                ; preds = %12, %3
  %8 = phi ptr [ %10, %12 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 3
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %20 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i1 @is_subdir(ptr noundef %19, ptr noundef %21) #21
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi i1 [ %22, %18 ], [ false, %7 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @path_is_under(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %3, i32 -16
  br label %9

9:                                                ; preds = %14, %7
  %10 = phi ptr [ %12, %14 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 3
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 2
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @is_subdir(ptr noundef %21, ptr noundef %23) #21
  br label %25

25:                                               ; preds = %19, %9
  %26 = phi i1 [ %24, %19 ], [ false, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %27 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pivot_root(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.path, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store i64 0, ptr %4, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i64 0, ptr %5, align 8, !annotation !53
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mnt_namespace, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 21) #21
  br i1 %14, label %15, label %331

15:                                               ; preds = %2
  %16 = inttoptr i32 %0 to ptr
  %17 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %16, i32 noundef 3, ptr noundef nonnull %3, ptr noundef null) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %331

19:                                               ; preds = %15
  %20 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %6, i32 noundef 3, ptr noundef nonnull %4, ptr noundef null) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %329

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 89
  %24 = load ptr, ptr %23, align 64
  %25 = getelementptr inbounds %struct.fs_struct, ptr %24, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %25) #21
  %26 = getelementptr inbounds %struct.fs_struct, ptr %24, i32 0, i32 5
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %5, align 8
  call void @path_get(ptr noundef nonnull %5) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %28 = load i16, ptr %25, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %30 = call fastcc ptr @lock_mount(ptr noundef nonnull %4) #21
  %31 = ptrtoint ptr %30 to i32
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %327, label %33

33:                                               ; preds = %22
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr i8, ptr %34, i32 -16
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr i8, ptr %36, i32 -16
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr i8, ptr %38, i32 -16
  %40 = getelementptr i8, ptr %34, i32 -8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %36, i32 -8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %38, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4096
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %179

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.mount, ptr %41, i32 0, i32 3, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 4096
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %179

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 3, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %179

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %36, i32 100
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.nsproxy, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %60, %63
  br i1 %64, label %65, label %179

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %34, i32 100
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %60
  br i1 %68, label %69, label %179

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %34, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 8388608
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %179

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dentry, ptr %76, i32 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.dentry, ptr %76, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, %76
  br i1 %83, label %84, label %179

84:                                               ; preds = %80, %74
  %85 = icmp eq ptr %34, %36
  %86 = icmp eq ptr %38, %36
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %179, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %36, align 4
  %90 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp ne ptr %89, %91
  %93 = icmp eq ptr %43, %37
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %179, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %34, align 4
  %97 = icmp ne ptr %96, %76
  %98 = icmp eq ptr %41, %35
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %179, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %38, %34
  br i1 %103, label %115, label %104

104:                                              ; preds = %109, %100
  %105 = phi ptr [ %107, %109 ], [ %39, %100 ]
  %106 = getelementptr inbounds %struct.mount, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %105
  br i1 %108, label %179, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.mount, ptr %107, i32 0, i32 3
  %111 = icmp eq ptr %110, %34
  br i1 %111, label %112, label %104

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.mount, ptr %105, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  br label %115

115:                                              ; preds = %112, %100
  %116 = phi ptr [ %114, %112 ], [ %102, %100 ]
  %117 = call zeroext i1 @is_subdir(ptr noundef %116, ptr noundef %76) #21
  br i1 %117, label %118, label %179

118:                                              ; preds = %115
  %119 = load ptr, ptr %75, align 4
  %120 = load ptr, ptr %5, align 8
  %121 = icmp eq ptr %34, %120
  br i1 %121, label %133, label %122

122:                                              ; preds = %127, %118
  %123 = phi ptr [ %125, %127 ], [ %35, %118 ]
  %124 = getelementptr inbounds %struct.mount, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %123
  br i1 %126, label %179, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.mount, ptr %125, i32 0, i32 3
  %129 = icmp eq ptr %128, %120
  br i1 %129, label %130, label %122

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.mount, ptr %123, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %118
  %134 = phi ptr [ %132, %130 ], [ %119, %118 ]
  %135 = load ptr, ptr %90, align 4
  %136 = call zeroext i1 @is_subdir(ptr noundef %134, ptr noundef %135) #21
  br i1 %136, label %137, label %179

137:                                              ; preds = %133
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %138 = load i32, ptr @mount_lock, align 64
  %139 = add i32 %138, 1
  store i32 %139, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  call fastcc void @umount_mnt(ptr noundef %35) #21
  store ptr %37, ptr %42, align 4
  %140 = load ptr, ptr %36, align 4
  %141 = getelementptr i8, ptr %36, i32 -4
  store ptr %140, ptr %141, align 4
  %142 = getelementptr i8, ptr %36, i32 36
  %143 = getelementptr i8, ptr %36, i32 40
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %142, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %144, ptr %146, align 4
  store volatile ptr %145, ptr %144, align 4
  store volatile ptr %142, ptr %142, align 4
  store ptr %142, ptr %143, align 4
  %147 = getelementptr i8, ptr %36, i32 -12
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %137
  %151 = load ptr, ptr %37, align 4
  store volatile ptr %151, ptr %148, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.hlist_node, ptr %151, i32 0, i32 1
  store volatile ptr %148, ptr %154, align 4
  br label %155

155:                                              ; preds = %153, %150
  store volatile ptr null, ptr %147, align 4
  br label %156

156:                                              ; preds = %155, %137
  %157 = getelementptr i8, ptr %36, i32 108
  %158 = getelementptr i8, ptr %36, i32 112
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %157, align 4
  store volatile ptr %162, ptr %159, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.hlist_node, ptr %162, i32 0, i32 1
  store volatile ptr %159, ptr %165, align 4
  br label %166

166:                                              ; preds = %164, %161
  store ptr null, ptr %157, align 4
  store ptr null, ptr %158, align 4
  br label %167

167:                                              ; preds = %166, %156
  %168 = getelementptr i8, ptr %36, i32 104
  %169 = load ptr, ptr %168, align 4
  store ptr null, ptr %168, align 4
  %170 = getelementptr i8, ptr %36, i32 8
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 8388608
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = load i32, ptr %70, align 4
  %176 = or i32 %175, 8388608
  store i32 %176, ptr %70, align 4
  %177 = load i32, ptr %170, align 4
  %178 = and i32 %177, -8388609
  store i32 %178, ptr %170, align 4
  br label %181

179:                                              ; preds = %133, %122, %115, %104, %95, %88, %84, %80, %69, %65, %58, %53, %48, %33
  %180 = phi i32 [ -22, %53 ], [ -22, %48 ], [ -22, %33 ], [ -22, %65 ], [ -22, %58 ], [ -22, %69 ], [ -2, %80 ], [ -16, %84 ], [ -22, %88 ], [ -22, %95 ], [ -22, %115 ], [ -22, %133 ], [ -22, %122 ], [ -22, %104 ]
  call fastcc void @unlock_mount(ptr noundef %30) #21
  br label %327

181:                                              ; preds = %174, %167
  %182 = getelementptr inbounds %struct.mountpoint, ptr %30, i32 0, i32 3
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  %185 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %186 = getelementptr i8, ptr %38, i32 24
  %187 = load ptr, ptr %186, align 4
  %188 = ptrtoint ptr %187 to i32
  %189 = call i32 @llvm.read_register.i32(metadata !0) #21
  %190 = inttoptr i32 %189 to ptr
  %191 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #15, !srcloc !11
  %192 = add i32 %191, %188
  %193 = inttoptr i32 %192 to ptr
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %185) #21, !srcloc !12
  %196 = getelementptr inbounds %struct.mountpoint, ptr %30, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  store ptr %197, ptr %141, align 4
  store ptr %39, ptr %42, align 4
  store ptr %30, ptr %168, align 4
  %198 = getelementptr inbounds %struct.mountpoint, ptr %30, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  store volatile ptr %199, ptr %157, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %181
  %202 = getelementptr inbounds %struct.hlist_node, ptr %199, i32 0, i32 1
  store volatile ptr %157, ptr %202, align 4
  br label %203

203:                                              ; preds = %201, %181
  store volatile ptr %157, ptr %198, align 4
  store volatile ptr %198, ptr %158, align 4
  %204 = load ptr, ptr %141, align 4
  %205 = ptrtoint ptr %38 to i32
  %206 = lshr i32 %205, 6
  %207 = ptrtoint ptr %204 to i32
  %208 = lshr i32 %207, 6
  %209 = add nuw nsw i32 %208, %206
  %210 = load i32, ptr @m_hash_shift, align 4
  %211 = lshr i32 %209, %210
  %212 = add nuw nsw i32 %211, %209
  %213 = load ptr, ptr @mount_hashtable, align 4
  %214 = load i32, ptr @m_hash_mask, align 4
  %215 = and i32 %212, %214
  %216 = getelementptr %struct.hlist_head, ptr %213, i32 %215
  %217 = load ptr, ptr %216, align 4
  store ptr %217, ptr %37, align 4
  store volatile ptr %216, ptr %147, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  store volatile ptr %37, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %203
  %220 = getelementptr inbounds %struct.hlist_node, ptr %217, i32 0, i32 1
  store volatile ptr %37, ptr %220, align 4
  br label %221

221:                                              ; preds = %219, %203
  %222 = getelementptr i8, ptr %38, i32 28
  %223 = getelementptr i8, ptr %38, i32 32
  %224 = load ptr, ptr %223, align 4
  store ptr %142, ptr %223, align 4
  store ptr %222, ptr %142, align 4
  store ptr %224, ptr %143, align 4
  store volatile ptr %142, ptr %224, align 4
  %225 = getelementptr inbounds %struct.mountpoint, ptr %169, i32 0, i32 3
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %225, align 4
  %228 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %229 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 5
  %230 = load ptr, ptr %229, align 4
  %231 = ptrtoint ptr %230 to i32
  %232 = call i32 @llvm.read_register.i32(metadata !0) #21
  %233 = inttoptr i32 %232 to ptr
  %234 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %233) #15, !srcloc !11
  %235 = add i32 %234, %231
  %236 = inttoptr i32 %235 to ptr
  %237 = load i32, ptr %236, align 4
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %228) #21, !srcloc !12
  %239 = getelementptr inbounds %struct.mountpoint, ptr %169, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr i8, ptr %34, i32 -4
  store ptr %240, ptr %241, align 4
  store ptr %43, ptr %40, align 4
  %242 = getelementptr i8, ptr %34, i32 104
  store ptr %169, ptr %242, align 4
  %243 = getelementptr i8, ptr %34, i32 108
  %244 = getelementptr inbounds %struct.mountpoint, ptr %169, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  store volatile ptr %245, ptr %243, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %221
  %248 = getelementptr inbounds %struct.hlist_node, ptr %245, i32 0, i32 1
  store volatile ptr %243, ptr %248, align 4
  br label %249

249:                                              ; preds = %247, %221
  store volatile ptr %243, ptr %244, align 4
  %250 = getelementptr i8, ptr %34, i32 112
  store volatile ptr %244, ptr %250, align 4
  %251 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 3
  %252 = load ptr, ptr %241, align 4
  %253 = ptrtoint ptr %251 to i32
  %254 = lshr i32 %253, 6
  %255 = ptrtoint ptr %252 to i32
  %256 = lshr i32 %255, 6
  %257 = add nuw nsw i32 %256, %254
  %258 = load i32, ptr @m_hash_shift, align 4
  %259 = lshr i32 %257, %258
  %260 = add nuw nsw i32 %259, %257
  %261 = load ptr, ptr @mount_hashtable, align 4
  %262 = load i32, ptr @m_hash_mask, align 4
  %263 = and i32 %260, %262
  %264 = getelementptr %struct.hlist_head, ptr %261, i32 %263
  %265 = load ptr, ptr %264, align 4
  store ptr %265, ptr %35, align 4
  %266 = getelementptr i8, ptr %34, i32 -12
  store volatile ptr %264, ptr %266, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  store volatile ptr %35, ptr %264, align 4
  %267 = icmp eq ptr %265, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %249
  %269 = getelementptr inbounds %struct.hlist_node, ptr %265, i32 0, i32 1
  store volatile ptr %35, ptr %269, align 4
  br label %270

270:                                              ; preds = %268, %249
  %271 = getelementptr i8, ptr %34, i32 36
  %272 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 6
  %273 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 6, i32 1
  %274 = load ptr, ptr %273, align 4
  store ptr %271, ptr %273, align 4
  store ptr %272, ptr %271, align 4
  %275 = getelementptr i8, ptr %34, i32 40
  store ptr %274, ptr %275, align 4
  store volatile ptr %271, ptr %274, align 4
  %276 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %277 = load ptr, ptr %229, align 4
  %278 = ptrtoint ptr %277 to i32
  %279 = call i32 @llvm.read_register.i32(metadata !0) #21
  %280 = inttoptr i32 %279 to ptr
  %281 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %280) #15, !srcloc !11
  %282 = add i32 %281, %278
  %283 = inttoptr i32 %282 to ptr
  %284 = load i32, ptr %283, align 4
  %285 = add i32 %284, -1
  store i32 %285, ptr %283, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %276) #21, !srcloc !12
  %286 = load ptr, ptr %8, align 4
  %287 = getelementptr inbounds %struct.nsproxy, ptr %286, i32 0, i32 3
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %295, label %290

290:                                              ; preds = %270
  %291 = load i64, ptr @event, align 8
  %292 = add i64 %291, 1
  store i64 %292, ptr @event, align 8
  %293 = getelementptr inbounds %struct.mnt_namespace, ptr %288, i32 0, i32 8
  store i64 %292, ptr %293, align 8
  %294 = getelementptr inbounds %struct.mnt_namespace, ptr %288, i32 0, i32 7
  call void @__wake_up(ptr noundef %294, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %295

295:                                              ; preds = %290, %270
  %296 = getelementptr i8, ptr %34, i32 64
  %297 = getelementptr i8, ptr %34, i32 68
  %298 = load ptr, ptr %297, align 4
  %299 = load ptr, ptr %296, align 4
  %300 = getelementptr inbounds %struct.list_head, ptr %299, i32 0, i32 1
  store ptr %298, ptr %300, align 4
  store volatile ptr %299, ptr %298, align 4
  store volatile ptr %296, ptr %296, align 4
  store ptr %296, ptr %297, align 4
  %301 = load i32, ptr %225, align 4
  %302 = add i32 %301, -1
  store i32 %302, ptr %225, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %295
  %305 = load ptr, ptr %239, align 4
  %306 = load volatile ptr, ptr %244, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308, !prof !20

308:                                              ; preds = %304
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.dentry, ptr %305, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %310) #21
  %311 = load i32, ptr %305, align 8
  %312 = and i32 %311, -65537
  store i32 %312, ptr %305, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %313 = load i16, ptr %310, align 4
  %314 = add i16 %313, 1
  store i16 %314, ptr %310, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call void @dput_to_list(ptr noundef %305, ptr noundef nonnull @ex_mountpoints) #21
  %315 = load ptr, ptr %169, align 4
  %316 = getelementptr inbounds %struct.hlist_node, ptr %169, i32 0, i32 1
  %317 = load ptr, ptr %316, align 4
  store volatile ptr %315, ptr %317, align 4
  %318 = icmp eq ptr %315, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %309
  %320 = getelementptr inbounds %struct.hlist_node, ptr %315, i32 0, i32 1
  store volatile ptr %317, ptr %320, align 4
  br label %321

321:                                              ; preds = %319, %309
  store ptr inttoptr (i32 256 to ptr), ptr %169, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %316, align 4
  call void @kfree(ptr noundef %169) #21
  br label %322

322:                                              ; preds = %321, %295
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %323 = load i32, ptr @mount_lock, align 64
  %324 = add i32 %323, 1
  store i32 %324, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %325 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %326 = add i16 %325, 1
  store i16 %326, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call void @chroot_fs_refs(ptr noundef nonnull %5, ptr noundef nonnull %3) #21
  call fastcc void @unlock_mount(ptr noundef %30) #21
  call fastcc void @mntput_no_expire(ptr noundef %41) #21
  br label %327

327:                                              ; preds = %322, %179, %22
  %328 = phi i32 [ %31, %22 ], [ 0, %322 ], [ %180, %179 ]
  call void @path_put(ptr noundef nonnull %5) #21
  call void @path_put(ptr noundef nonnull %4) #21
  br label %329

329:                                              ; preds = %327, %19
  %330 = phi i32 [ %20, %19 ], [ %328, %327 ]
  call void @path_put(ptr noundef nonnull %3) #21
  br label %331

331:                                              ; preds = %329, %15, %2
  %332 = phi i32 [ -1, %2 ], [ %17, %15 ], [ %330, %329 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %332
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mount_setattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.mount_attr, align 8
  %8 = inttoptr i32 %1 to ptr
  %9 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false) #21, !annotation !53
  %10 = and i32 %2, -39169
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %461

12:                                               ; preds = %5
  %13 = icmp ugt i32 %4, 4096
  br i1 %13, label %461, label %14, !prof !37

14:                                               ; preds = %12
  %15 = icmp ult i32 %4, 32
  br i1 %15, label %461, label %16, !prof !37

16:                                               ; preds = %14
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 92
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nsproxy, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mnt_namespace, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call zeroext i1 @ns_capable(ptr noundef %23, i32 noundef 21) #21
  br i1 %24, label %25, label %461

25:                                               ; preds = %16
  %26 = tail call i32 @llvm.umin.i32(i32 %4, i32 32) #21
  %27 = icmp ugt i32 %4, 32
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = sub nuw nsw i32 %4, %26
  %30 = getelementptr i8, ptr %9, i32 %26
  %31 = tail call i32 @check_zeroed_user(ptr noundef %30, i32 noundef %29) #21
  %32 = icmp slt i32 %31, 1
  %33 = icmp eq i32 %31, 0
  %34 = select i1 %33, i32 -7, i32 %31
  br i1 %32, label %461, label %35

35:                                               ; preds = %28, %25
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %26, i32 -1090519040) #26, !srcloc !68
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46, !prof !20

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #15, !srcloc !69
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #21, !srcloc !70
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !71
  %44 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %9, i32 noundef %26) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #21, !srcloc !70
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !71
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !20

46:                                               ; preds = %39, %35
  %47 = phi i32 [ %44, %39 ], [ 32, %35 ]
  %48 = sub i32 %26, %47
  %49 = getelementptr i8, ptr %7, i32 %48
  call void @llvm.memset.p0.i32(ptr align 1 %49, i8 0, i32 %47, i1 false) #21
  br label %461

50:                                               ; preds = %39
  %51 = load i64, ptr %7, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.mount_attr, ptr %7, i32 0, i32 1
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mount_attr, ptr %7, i32 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %461, label %61

61:                                               ; preds = %57, %53, %50
  %62 = and i32 %2, 2048
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 5, i32 1
  %65 = and i32 %2, 256
  %66 = icmp eq i32 %65, 0
  %67 = and i32 %64, 4
  %68 = select i1 %66, i32 %64, i32 %67
  %69 = shl nuw nsw i32 %2, 2
  %70 = and i32 %69, 16384
  %71 = or i32 %68, %70
  %72 = lshr i32 %2, 15
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds %struct.mount_attr, ptr %7, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, -1966081
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %461

78:                                               ; preds = %61
  %79 = trunc i64 %75 to i32
  %80 = and i32 %79, 1966080
  %81 = call i32 @__sw_hweight32(i32 noundef %80) #21
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %461, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %74, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, ptr %7, align 8
  %87 = getelementptr inbounds %struct.mount_attr, ptr %7, i32 0, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = or i64 %88, %86
  %90 = and i64 %89, -3145984
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %461

92:                                               ; preds = %83
  %93 = trunc i64 %86 to i32
  %94 = shl i32 %93, 6
  %95 = and i32 %94, 64
  %96 = lshr i32 %93, 1
  %97 = and i32 %96, 1
  %98 = or i32 %97, %95
  %99 = and i32 %96, 2
  %100 = or i32 %98, %99
  %101 = and i32 %96, 4
  %102 = or i32 %100, %101
  %103 = lshr i32 %93, 3
  %104 = and i32 %103, 16
  %105 = or i32 %102, %104
  %106 = lshr i32 %93, 14
  %107 = and i32 %106, 128
  %108 = or i32 %105, %107
  %109 = trunc i64 %88 to i32
  %110 = shl i32 %109, 6
  %111 = and i32 %110, 64
  %112 = lshr i32 %109, 1
  %113 = and i32 %112, 1
  %114 = or i32 %113, %111
  %115 = and i32 %112, 2
  %116 = or i32 %114, %115
  %117 = and i32 %112, 4
  %118 = or i32 %116, %117
  %119 = lshr i32 %109, 3
  %120 = and i32 %119, 16
  %121 = or i32 %118, %120
  %122 = lshr i32 %109, 14
  %123 = and i32 %122, 128
  %124 = or i32 %121, %123
  %125 = trunc i64 %88 to i7
  %126 = and i7 %125, -16
  switch i7 %126, label %461 [
    i7 0, label %132
    i7 -16, label %127
  ]

127:                                              ; preds = %92
  %128 = or i32 %124, 40
  %129 = trunc i64 %86 to i7
  %130 = and i7 %129, -16
  switch i7 %130, label %461 [
    i7 0, label %135
    i7 16, label %131
    i7 32, label %138
  ]

131:                                              ; preds = %127
  br label %135

132:                                              ; preds = %92
  %133 = and i64 %86, 112
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %138, label %461

135:                                              ; preds = %131, %127
  %136 = phi i32 [ 8, %131 ], [ 32, %127 ]
  %137 = or i32 %136, %108
  br label %138

138:                                              ; preds = %135, %132, %127
  %139 = phi i32 [ %128, %127 ], [ %128, %135 ], [ %124, %132 ]
  %140 = phi i32 [ %108, %127 ], [ %137, %135 ], [ %108, %132 ]
  %141 = and i64 %89, 1048576
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %172, label %143

143:                                              ; preds = %138
  %144 = and i64 %88, 1048576
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %461

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.mount_attr, ptr %7, i32 0, i32 3
  %148 = load i64, ptr %147, align 8
  %149 = icmp ugt i64 %148, 2147483647
  br i1 %149, label %461, label %150

150:                                              ; preds = %146
  %151 = trunc i64 %148 to i32
  %152 = call ptr @fget(i32 noundef %151) #21
  %153 = icmp eq ptr %152, null
  br i1 %153, label %461, label %154

154:                                              ; preds = %150
  %155 = call zeroext i1 @proc_ns_file(ptr noundef nonnull %152) #21
  br i1 %155, label %156, label %169

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.file, ptr %152, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.inode, ptr %158, i32 0, i32 47
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.ns_common, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.proc_ns_operations, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 268435456
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = getelementptr i8, ptr %160, i32 -208
  %168 = icmp eq ptr %167, @init_user_ns
  br i1 %168, label %169, label %171

169:                                              ; preds = %166, %156, %154
  %170 = phi i32 [ -1, %166 ], [ -22, %156 ], [ -22, %154 ]
  call void @fput(ptr noundef nonnull %152) #21
  br label %461

171:                                              ; preds = %166
  call void @fput(ptr noundef nonnull %152) #21
  br label %172

172:                                              ; preds = %171, %138
  %173 = phi ptr [ null, %138 ], [ @init_user_ns, %171 ]
  %174 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %8, i32 noundef %71, ptr noundef nonnull %6, ptr noundef null) #21
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %461

176:                                              ; preds = %172
  %177 = load ptr, ptr %6, align 8
  %178 = getelementptr i8, ptr %177, i32 -16
  %179 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %177, align 4
  %182 = icmp eq ptr %180, %181
  br i1 %182, label %183, label %459

183:                                              ; preds = %176
  %184 = icmp eq i32 %85, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %183
  call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %186 = icmp eq i32 %85, 1048576
  br i1 %186, label %187, label %192

187:                                              ; preds = %185
  %188 = icmp ne i8 %73, 0
  %189 = call fastcc i32 @invent_group_ids(ptr noundef %178, i1 noundef zeroext %188) #21
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  call fastcc void @namespace_unlock() #21
  br label %459

192:                                              ; preds = %187, %185, %183
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %193 = load i32, ptr @mount_lock, align 64
  %194 = add i32 %193, 1
  store i32 %194, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %195 = getelementptr i8, ptr %177, i32 100
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  %198 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  %199 = or i1 %197, %198
  br i1 %199, label %420, label %200

200:                                              ; preds = %192
  %201 = getelementptr i8, ptr %177, i32 -8
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, %178
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  %205 = load ptr, ptr %18, align 4
  %206 = getelementptr inbounds %struct.nsproxy, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %196, %207
  br i1 %208, label %213, label %420

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.mnt_namespace, ptr %196, i32 0, i32 6
  %211 = load i64, ptr %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %420

213:                                              ; preds = %209, %204
  %214 = getelementptr i8, ptr %177, i32 8
  %215 = load i32, ptr %214, align 4
  %216 = xor i32 %139, -1
  %217 = and i32 %215, %216
  %218 = or i32 %217, %140
  %219 = and i32 %215, 4194304
  %220 = icmp ne i32 %219, 0
  %221 = and i32 %218, 64
  %222 = icmp eq i32 %221, 0
  %223 = and i1 %220, %222
  br i1 %223, label %420, label %224

224:                                              ; preds = %213
  %225 = and i32 %215, 2097152
  %226 = icmp ne i32 %225, 0
  %227 = and i32 %218, 2
  %228 = icmp eq i32 %227, 0
  %229 = and i1 %228, %226
  br i1 %229, label %420, label %230

230:                                              ; preds = %224
  %231 = and i32 %140, 64
  %232 = icmp eq i32 %231, 0
  %233 = icmp eq i8 %73, 0
  %234 = and i32 %215, 1048576
  %235 = icmp ne i32 %234, 0
  %236 = and i32 %218, 1
  %237 = icmp eq i32 %236, 0
  %238 = and i1 %237, %235
  br i1 %238, label %359, label %261

239:                                              ; preds = %352
  %240 = getelementptr i8, ptr %353, i32 -28
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, %216
  %243 = or i32 %242, %140
  %244 = and i32 %241, 4194304
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %243, 64
  %247 = icmp eq i32 %246, 0
  %248 = and i1 %245, %247
  br i1 %248, label %359, label %249

249:                                              ; preds = %239
  %250 = and i32 %241, 2097152
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %243, 2
  %253 = icmp eq i32 %252, 0
  %254 = and i1 %253, %251
  br i1 %254, label %359, label %255

255:                                              ; preds = %249
  %256 = and i32 %241, 1048576
  %257 = icmp ne i32 %256, 0
  %258 = and i32 %243, 1
  %259 = icmp eq i32 %258, 0
  %260 = and i1 %259, %257
  br i1 %260, label %359, label %261

261:                                              ; preds = %255, %230
  %262 = phi i32 [ %243, %255 ], [ %218, %230 ]
  %263 = phi i32 [ %241, %255 ], [ %215, %230 ]
  %264 = phi ptr [ %240, %255 ], [ %214, %230 ]
  %265 = phi ptr [ %266, %255 ], [ null, %230 ]
  %266 = phi ptr [ %354, %255 ], [ %178, %230 ]
  %267 = and i32 %263, 524288
  %268 = icmp ne i32 %267, 0
  %269 = and i32 %262, 4
  %270 = icmp eq i32 %269, 0
  %271 = and i1 %270, %268
  br i1 %271, label %359, label %272

272:                                              ; preds = %261
  %273 = and i32 %263, 262144
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %272
  %276 = xor i32 %263, %262
  %277 = and i32 %276, 56
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %359

279:                                              ; preds = %275, %272
  %280 = getelementptr inbounds %struct.mount, ptr %266, i32 0, i32 3, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.super_block, ptr %281, i32 0, i32 47
  %283 = load ptr, ptr %282, align 4
  br i1 %142, label %308, label %284

284:                                              ; preds = %279
  %285 = icmp eq ptr %173, %283
  br i1 %285, label %359, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.mount, ptr %266, i32 0, i32 3, i32 3
  %288 = load volatile ptr, ptr %287, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !48
  %289 = load ptr, ptr %280, align 4
  %290 = getelementptr inbounds %struct.super_block, ptr %289, i32 0, i32 47
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %288, %291
  br i1 %292, label %293, label %359

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.super_block, ptr %289, i32 0, i32 5
  %295 = load ptr, ptr %294, align 32
  %296 = getelementptr inbounds %struct.file_system_type, ptr %295, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = and i32 %297, 32
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %359, label %300

300:                                              ; preds = %293
  %301 = call zeroext i1 @ns_capable(ptr noundef %283, i32 noundef 21) #21
  br i1 %301, label %302, label %359

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.mount, ptr %266, i32 0, i32 16
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.mnt_namespace, ptr %304, i32 0, i32 6
  %306 = load i64, ptr %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %359

308:                                              ; preds = %302, %279
  br i1 %232, label %337, label %309

309:                                              ; preds = %308
  %310 = load i32, ptr %264, align 4
  %311 = and i32 %310, 64
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %337

313:                                              ; preds = %309
  %314 = or i32 %310, 512
  store i32 %314, ptr %264, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !57
  %315 = load i32, ptr @nr_cpu_ids, align 4
  %316 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %317 = icmp ult i32 %316, %315
  br i1 %317, label %318, label %337

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.mount, ptr %266, i32 0, i32 5
  %320 = load ptr, ptr %319, align 4
  %321 = ptrtoint ptr %320 to i32
  br label %322

322:                                              ; preds = %322, %318
  %323 = phi i32 [ %316, %318 ], [ %332, %322 ]
  %324 = phi i32 [ 0, %318 ], [ %331, %322 ]
  %325 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %323
  %326 = load i32, ptr %325, align 4
  %327 = add i32 %326, %321
  %328 = inttoptr i32 %327 to ptr
  %329 = getelementptr inbounds %struct.mnt_pcp, ptr %328, i32 0, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = add i32 %330, %324
  %332 = call i32 @cpumask_next(i32 noundef %323, ptr noundef nonnull @__cpu_possible_mask) #22
  %333 = icmp ult i32 %332, %315
  br i1 %333, label %322, label %334

334:                                              ; preds = %322
  %335 = icmp ne i32 %331, 0
  %336 = or i1 %335, %233
  br i1 %336, label %356, label %338

337:                                              ; preds = %313, %309, %308
  br i1 %233, label %359, label %338

338:                                              ; preds = %337, %334
  %339 = getelementptr inbounds %struct.mount, ptr %266, i32 0, i32 6
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, %339
  br i1 %341, label %342, label %352

342:                                              ; preds = %345, %338
  %343 = phi ptr [ %349, %345 ], [ %266, %338 ]
  %344 = icmp eq ptr %343, %178
  br i1 %344, label %359, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.mount, ptr %343, i32 0, i32 7
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.mount, ptr %343, i32 0, i32 1
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.mount, ptr %349, i32 0, i32 6
  %351 = icmp eq ptr %347, %350
  br i1 %351, label %342, label %352

352:                                              ; preds = %345, %338
  %353 = phi ptr [ %340, %338 ], [ %347, %345 ]
  %354 = getelementptr i8, ptr %353, i32 -52
  %355 = icmp eq ptr %354, null
  br i1 %355, label %359, label %239

356:                                              ; preds = %334
  %357 = xor i1 %335, true
  %358 = select i1 %335, i32 -16, i32 0
  br label %359

359:                                              ; preds = %356, %352, %342, %337, %302, %300, %293, %286, %284, %275, %261, %255, %249, %239, %230
  %360 = phi i1 [ %357, %356 ], [ false, %230 ], [ true, %342 ], [ true, %352 ], [ true, %337 ], [ false, %302 ], [ false, %300 ], [ false, %293 ], [ false, %286 ], [ false, %284 ], [ false, %275 ], [ false, %261 ], [ false, %255 ], [ false, %249 ], [ false, %239 ]
  %361 = phi i32 [ %358, %356 ], [ -1, %230 ], [ 0, %342 ], [ 0, %352 ], [ 0, %337 ], [ -22, %302 ], [ -1, %300 ], [ -22, %293 ], [ -1, %286 ], [ -22, %284 ], [ -1, %275 ], [ -1, %261 ], [ -1, %255 ], [ -1, %249 ], [ -1, %239 ]
  %362 = phi ptr [ %266, %356 ], [ null, %230 ], [ %266, %342 ], [ %266, %352 ], [ %266, %337 ], [ %265, %302 ], [ %265, %300 ], [ %265, %293 ], [ %265, %286 ], [ %265, %284 ], [ %265, %275 ], [ %265, %261 ], [ %266, %255 ], [ %266, %249 ], [ %266, %239 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %420, label %364

364:                                              ; preds = %359
  %365 = and i32 %140, 64
  %366 = icmp eq i32 %365, 0
  %367 = icmp eq i8 %73, 0
  br label %368

368:                                              ; preds = %407, %364
  %369 = phi ptr [ %409, %407 ], [ %178, %364 ]
  br i1 %360, label %370, label %378

370:                                              ; preds = %368
  br i1 %142, label %373, label %371

371:                                              ; preds = %370
  %372 = getelementptr inbounds %struct.mount, ptr %369, i32 0, i32 3, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !76
  store volatile ptr @init_user_ns, ptr %372, align 4
  br label %373

373:                                              ; preds = %371, %370
  %374 = getelementptr inbounds %struct.mount, ptr %369, i32 0, i32 3, i32 2
  %375 = load i32, ptr %374, align 4
  %376 = and i32 %375, %216
  %377 = or i32 %376, %140
  store volatile i32 %377, ptr %374, align 4
  br label %378

378:                                              ; preds = %373, %368
  br i1 %366, label %387, label %379

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.mount, ptr %369, i32 0, i32 3, i32 2
  %381 = load i32, ptr %380, align 4
  %382 = and i32 %381, 512
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %379
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !58
  %385 = load i32, ptr %380, align 4
  %386 = and i32 %385, -513
  store i32 %386, ptr %380, align 4
  br label %387

387:                                              ; preds = %384, %379, %378
  br i1 %360, label %388, label %390

388:                                              ; preds = %387
  br i1 %184, label %392, label %389

389:                                              ; preds = %388
  call void @change_mnt_propagation(ptr noundef %369, i32 noundef %85) #21
  br label %392

390:                                              ; preds = %387
  %391 = icmp eq ptr %369, %362
  br i1 %391, label %420, label %392

392:                                              ; preds = %390, %389, %388
  br i1 %367, label %411, label %393

393:                                              ; preds = %392
  %394 = getelementptr inbounds %struct.mount, ptr %369, i32 0, i32 6
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, %394
  br i1 %396, label %397, label %407

397:                                              ; preds = %400, %393
  %398 = phi ptr [ %404, %400 ], [ %369, %393 ]
  %399 = icmp eq ptr %398, %178
  br i1 %399, label %411, label %400

400:                                              ; preds = %397
  %401 = getelementptr inbounds %struct.mount, ptr %398, i32 0, i32 7
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.mount, ptr %398, i32 0, i32 1
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.mount, ptr %404, i32 0, i32 6
  %406 = icmp eq ptr %402, %405
  br i1 %406, label %397, label %407

407:                                              ; preds = %400, %393
  %408 = phi ptr [ %395, %393 ], [ %402, %400 ]
  %409 = getelementptr i8, ptr %408, i32 -52
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %368

411:                                              ; preds = %407, %397, %392
  br i1 %360, label %412, label %420

412:                                              ; preds = %411
  %413 = load ptr, ptr %195, align 4
  %414 = icmp eq ptr %413, null
  br i1 %414, label %420, label %415

415:                                              ; preds = %412
  %416 = load i64, ptr @event, align 8
  %417 = add i64 %416, 1
  store i64 %417, ptr @event, align 8
  %418 = getelementptr inbounds %struct.mnt_namespace, ptr %413, i32 0, i32 8
  store i64 %417, ptr %418, align 8
  %419 = getelementptr inbounds %struct.mnt_namespace, ptr %413, i32 0, i32 7
  call void @__wake_up(ptr noundef %419, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %420

420:                                              ; preds = %415, %412, %411, %390, %359, %224, %213, %209, %204, %192
  %421 = phi i32 [ %361, %359 ], [ %361, %411 ], [ 0, %412 ], [ 0, %415 ], [ -22, %192 ], [ -22, %209 ], [ -22, %204 ], [ -1, %213 ], [ -1, %224 ], [ %361, %390 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %422 = load i32, ptr @mount_lock, align 64
  %423 = add i32 %422, 1
  store i32 %423, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %424 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %425 = add i16 %424, 1
  store i16 %425, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br i1 %184, label %459, label %426

426:                                              ; preds = %420
  call fastcc void @namespace_unlock() #21
  %427 = icmp eq i32 %421, 0
  br i1 %427, label %459, label %428

428:                                              ; preds = %426
  %429 = icmp eq ptr %178, null
  br i1 %429, label %459, label %430

430:                                              ; preds = %455, %428
  %431 = phi ptr [ %457, %455 ], [ %178, %428 ]
  %432 = getelementptr inbounds %struct.mount, ptr %431, i32 0, i32 23
  %433 = load i32, ptr %432, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.mount, ptr %431, i32 0, i32 3, i32 2
  %437 = load i32, ptr %436, align 4
  %438 = and i32 %437, 4096
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %435
  call void @ida_free(ptr noundef nonnull @mnt_group_ida, i32 noundef %433) #21
  store i32 0, ptr %432, align 4
  br label %441

441:                                              ; preds = %440, %435, %430
  %442 = getelementptr inbounds %struct.mount, ptr %431, i32 0, i32 6
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, %442
  br i1 %444, label %445, label %455

445:                                              ; preds = %448, %441
  %446 = phi ptr [ %452, %448 ], [ %431, %441 ]
  %447 = icmp eq ptr %446, %178
  br i1 %447, label %459, label %448

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.mount, ptr %446, i32 0, i32 7
  %450 = load ptr, ptr %449, align 4
  %451 = getelementptr inbounds %struct.mount, ptr %446, i32 0, i32 1
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr inbounds %struct.mount, ptr %452, i32 0, i32 6
  %454 = icmp eq ptr %450, %453
  br i1 %454, label %445, label %455

455:                                              ; preds = %448, %441
  %456 = phi ptr [ %443, %441 ], [ %450, %448 ]
  %457 = getelementptr i8, ptr %456, i32 -52
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %430

459:                                              ; preds = %455, %445, %428, %426, %420, %191, %176
  %460 = phi i32 [ %189, %191 ], [ -22, %176 ], [ %421, %428 ], [ 0, %426 ], [ %421, %420 ], [ %421, %445 ], [ %421, %455 ]
  call void @path_put(ptr noundef nonnull %6) #21
  br label %461

461:                                              ; preds = %459, %172, %169, %150, %146, %143, %132, %127, %92, %83, %78, %61, %57, %46, %28, %16, %14, %12, %5
  %462 = phi i32 [ -22, %5 ], [ -7, %12 ], [ -22, %14 ], [ -1, %16 ], [ 0, %57 ], [ %170, %169 ], [ -14, %46 ], [ %34, %28 ], [ -9, %150 ], [ -22, %146 ], [ -22, %143 ], [ -22, %132 ], [ -22, %127 ], [ -22, %92 ], [ -22, %83 ], [ -22, %78 ], [ -22, %61 ], [ %174, %172 ], [ %460, %459 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %462
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mnt_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 168, i32 noundef 0, i32 noundef 270336, ptr noundef null) #21
  store ptr %1, ptr @mnt_cache, align 4
  %2 = load i32, ptr @mhash_entries, align 4
  %3 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef %2, i32 noundef 19, i32 noundef 4, ptr noundef nonnull @m_hash_shift, ptr noundef nonnull @m_hash_mask, i32 noundef 0, i32 noundef 0) #21
  store ptr %3, ptr @mount_hashtable, align 4
  %4 = load i32, ptr @mphash_entries, align 4
  %5 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %4, i32 noundef 19, i32 noundef 4, ptr noundef nonnull @mp_hash_shift, ptr noundef nonnull @mp_hash_mask, i32 noundef 0, i32 noundef 0) #21
  store ptr %5, ptr @mountpoint_hashtable, align 4
  %6 = load ptr, ptr @mount_hashtable, align 4
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #27
  unreachable

11:                                               ; preds = %0
  tail call void @kernfs_init() #21
  %12 = tail call i32 @sysfs_init() #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mnt_init, i32 noundef %12) #25
  br label %16

16:                                               ; preds = %14, %11
  %17 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.7, ptr noundef null) #21
  store ptr %17, ptr @fs_kobj, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mnt_init) #25
  br label %21

21:                                               ; preds = %19, %16
  %22 = tail call i32 @shmem_init() #21
  tail call void @init_rootfs() #25
  tail call fastcc void @init_mount_tree() #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @init_rootfs() local_unnamed_addr #12 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_mount_tree() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  %2 = tail call ptr @vfs_kern_mount(ptr noundef nonnull @rootfs_fs_type, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef null)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.22) #27
  unreachable

5:                                                ; preds = %0
  %6 = tail call fastcc ptr @alloc_mnt_ns(ptr noundef nonnull @init_user_ns, i1 noundef zeroext false)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.23) #27
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %2, i32 -16
  %11 = getelementptr i8, ptr %2, i32 100
  store ptr %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mnt_namespace, ptr %6, i32 0, i32 1
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mnt_namespace, ptr %6, i32 0, i32 9
  store i32 1, ptr %13, align 8
  %14 = getelementptr i8, ptr %2, i32 56
  %15 = getelementptr inbounds %struct.mnt_namespace, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %14, ptr %17, align 4
  store ptr %16, ptr %14, align 4
  %18 = getelementptr i8, ptr %2, i32 60
  store ptr %15, ptr %18, align 4
  store volatile ptr %14, ptr %15, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 92), align 4
  %20 = getelementptr inbounds %struct.nsproxy, ptr %19, i32 0, i32 3
  store ptr %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ns_common, ptr %6, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #21, !srcloc !45
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #21, !srcloc !61
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !37

25:                                               ; preds = %9
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !20

29:                                               ; preds = %25, %9
  %30 = phi i32 [ 2, %9 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #21
  br label %31

31:                                               ; preds = %29, %25
  store ptr %2, ptr %1, align 8
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 8388608
  store i32 %36, ptr %34, align 4
  %37 = tail call ptr @llvm.thread.pointer() #21
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 89
  %39 = load ptr, ptr %38, align 64
  call void @set_fs_pwd(ptr noundef %39, ptr noundef nonnull %1) #21
  %40 = load ptr, ptr %38, align 64
  call void @set_fs_root(ptr noundef %40, ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kern_mount(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @vfs_kern_mount(ptr noundef %0, i32 noundef 4194304, ptr noundef %2, ptr noundef null)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 100
  store ptr inttoptr (i32 -22 to ptr), ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kern_unmount(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr i8, ptr %0, i32 100
  store ptr null, ptr %7, align 4
  tail call void @synchronize_rcu() #21
  %8 = getelementptr i8, ptr %0, i32 140
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !20

11:                                               ; preds = %5
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %5
  tail call fastcc void @mntput_no_expire(ptr noundef %6) #21
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kern_unmount_array(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @synchronize_rcu_expedited() #21
  br label %31

5:                                                ; preds = %12, %2
  %6 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %8, i32 100
  store ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = add nuw i32 %6, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %5

15:                                               ; preds = %12
  tail call void @synchronize_rcu_expedited() #21
  br i1 %3, label %31, label %16

16:                                               ; preds = %28, %15
  %17 = phi i32 [ %29, %28 ], [ 0, %15 ]
  %18 = getelementptr ptr, ptr %0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %19, i32 -16
  %23 = getelementptr i8, ptr %19, i32 140
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !20

26:                                               ; preds = %21
  store i32 0, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %21
  tail call fastcc void @mntput_no_expire(ptr noundef %22) #21
  br label %28

28:                                               ; preds = %27, %16
  %29 = add nuw i32 %17, 1
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %16

31:                                               ; preds = %28, %15, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @our_mnt(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr i8, ptr %0, i32 100
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #21
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %3, %8
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @current_chrooted() local_unnamed_addr #1 {
  %1 = alloca %struct.path, align 8
  %2 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = tail call ptr @llvm.thread.pointer() #21
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 3
  store ptr %10, ptr %1, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  call void @path_get(ptr noundef nonnull %1) #21
  br label %13

13:                                               ; preds = %18, %0
  %14 = load ptr, ptr %12, align 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 @follow_down_one(ptr noundef nonnull %1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13

21:                                               ; preds = %18, %13
  %22 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 89
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr inbounds %struct.fs_struct, ptr %23, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.fs_struct, ptr %23, i32 0, i32 5
  %26 = load i64, ptr %25, align 4
  store i64 %26, ptr %2, align 8
  call void @path_get(ptr noundef nonnull %2) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %27 = load i16, ptr %24, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %24, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %29 = load ptr, ptr %2, align 8
  %30 = load ptr, ptr %1, align 8
  %31 = icmp ne ptr %29, %30
  %32 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %12, align 4
  %35 = icmp ne ptr %33, %34
  %36 = select i1 %31, i1 true, i1 %35
  call void @path_put(ptr noundef nonnull %2) #21
  call void @path_put(ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret i1 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mnt_may_suid(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 100
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #21
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %8, %13
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi i1 [ false, %1 ], [ %14, %6 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mntns_get(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 92
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ns_common, ptr %8, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #21, !srcloc !45
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #21, !srcloc !61
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !37

13:                                               ; preds = %6
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !20

17:                                               ; preds = %13, %6
  %18 = phi i32 [ 2, %6 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #21
  br label %19

19:                                               ; preds = %17, %13, %1
  %20 = phi ptr [ null, %1 ], [ %8, %13 ], [ %8, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %21 = load i16, ptr %2, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mntns_put(ptr noundef %0) #1 {
  tail call void @put_mnt_ns(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mntns_install(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca %struct.path, align 8
  %4 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !53
  %12 = getelementptr inbounds %struct.mnt_namespace, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 21) #21
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 18) #21
  br i1 %16, label %17, label %48

17:                                               ; preds = %15
  %18 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 21) #21
  br i1 %18, label %19, label %48

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.mnt_namespace, ptr %1, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #21, !srcloc !45
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #21, !srcloc !61
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !37

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !20

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #21
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  store ptr %1, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mnt_namespace, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mount, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @vfs_path_lookup(ptr noundef %43, ptr noundef %42, ptr noundef nonnull @.str.24, i32 noundef 32768, ptr noundef nonnull %3) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  store ptr %39, ptr %38, align 4
  call void @put_mnt_ns(ptr noundef %1)
  br label %48

47:                                               ; preds = %37
  call void @put_mnt_ns(ptr noundef %39)
  call void @set_fs_pwd(ptr noundef %7, ptr noundef nonnull %3) #21
  call void @set_fs_root(ptr noundef %7, ptr noundef nonnull %3) #21
  call void @path_put(ptr noundef nonnull %3) #21
  br label %48

48:                                               ; preds = %47, %46, %23, %19, %17, %15, %2
  %49 = phi i32 [ %44, %46 ], [ 0, %47 ], [ -1, %17 ], [ -1, %15 ], [ -1, %2 ], [ -22, %19 ], [ -22, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %49
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @mntns_owner(ptr nocapture noundef readonly %0) #14 {
  %2 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_namespace_sysctls() #0 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.7, ptr noundef nonnull @fs_namespace_sysctls, ptr noundef nonnull @.str.25) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__put_mountpoint(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mountpoint, ptr %0, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !20

13:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %15) #21
  %16 = load i32, ptr %9, align 8
  %17 = and i32 %16, -65537
  store i32 %17, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @dput_to_list(ptr noundef %9, ptr noundef %1) #21
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store volatile ptr %20, ptr %22, align 4
  %23 = icmp eq ptr %20, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %14
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @kfree(ptr noundef %0) #21
  br label %27

27:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput_to_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @unhash_mnt(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 4
  store volatile ptr %15, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %12, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  store volatile ptr null, ptr %11, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18
  %22 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 4
  store volatile ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store ptr null, ptr %21, align 4
  store ptr null, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  store ptr null, ptr %32, align 4
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dentry_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__cleanup_mnt(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -32
  tail call fastcc void @cleanup_mnt(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cleanup_mnt(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %3, %5 ], [ %19, %9 ]
  %11 = phi i32 [ 0, %5 ], [ %18, %9 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %8
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.mnt_pcp, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %11
  %19 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #22
  %20 = icmp ult i32 %19, %2
  br i1 %20, label %9, label %21

21:                                               ; preds = %9
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %24, label %23, !prof !20

23:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1164, i32 noundef 9, ptr noundef null) #21
  br label %24

24:                                               ; preds = %23, %21, %1
  %25 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 25
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !20

28:                                               ; preds = %24
  tail call void @mnt_pin_kill(ptr noundef %0) #21
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 26
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr i8, ptr %31, i32 -124
  %34 = icmp eq ptr %33, null
  %35 = or i1 %32, %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %54, %29
  %37 = phi ptr [ %55, %54 ], [ %33, %29 ]
  %38 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 18, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  store volatile ptr %39, ptr %41, align 4
  %42 = icmp eq ptr %39, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  store volatile ptr %41, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %36
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  %46 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 3
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !20

52:                                               ; preds = %48
  store i32 0, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %48
  tail call fastcc void @mntput_no_expire(ptr noundef nonnull %37) #21
  br label %54

54:                                               ; preds = %53, %45
  %55 = getelementptr i8, ptr %39, i32 -124
  %56 = icmp eq ptr %55, null
  %57 = or i1 %42, %56
  br i1 %57, label %58, label %36

58:                                               ; preds = %54, %29
  %59 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  tail call void @__fsnotify_vfsmount_delete(ptr noundef %59) #21
  %60 = load ptr, ptr %59, align 4
  tail call void @dput(ptr noundef %60) #21
  %61 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void @deactivate_super(ptr noundef %62) #21
  %63 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 22
  %64 = load i32, ptr %63, align 4
  tail call void @ida_free(ptr noundef nonnull @mnt_id_ida, i32 noundef %64) #21
  %65 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %65, ptr noundef nonnull @delayed_free_vfsmnt) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_mntput(ptr nocapture noundef readnone %0) #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !77
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @delayed_mntput_list) #21, !srcloc !45
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @delayed_mntput_list) #21, !srcloc !51
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = inttoptr i32 %3 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !78
  %5 = getelementptr i8, ptr %4, i32 -32
  %6 = icmp eq ptr %5, inttoptr (i32 -32 to ptr)
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %11, %7 ], [ %5, %1 ]
  %9 = phi ptr [ %10, %7 ], [ %4, %1 ]
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @cleanup_mnt(ptr noundef %8)
  %11 = getelementptr i8, ptr %10, i32 -32
  %12 = icmp eq ptr %11, inttoptr (i32 -32 to ptr)
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_pin_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_free_vfsmnt(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load volatile ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !48
  %5 = getelementptr i8, ptr %0, i32 36
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree_const(ptr noundef %6) #21
  %7 = getelementptr i8, ptr %0, i32 8
  %8 = load ptr, ptr %7, align 4
  tail call void @free_percpu(ptr noundef %8) #21
  %9 = load ptr, ptr @mnt_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fsnotify_vfsmount_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @propagate_mount_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @propagate_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_mnt_propagation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_reconfigure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__do_loopback(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr i8, ptr %3, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %3, i32 100
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @llvm.thread.pointer() #21
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 92
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nsproxy, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, @ns_dentry_operations
  br i1 %23, label %24, label %59

24:                                               ; preds = %18, %9
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %28, label %45

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %3, i32 28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %49, label %32

32:                                               ; preds = %42, %28
  %33 = phi ptr [ %43, %42 ], [ %30, %28 ]
  %34 = getelementptr i8, ptr %33, i32 -40
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i1 @is_subdir(ptr noundef %35, ptr noundef %27) #21
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %33, i32 -28
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 8388608
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37, %32
  %43 = load ptr, ptr %33, align 4
  %44 = icmp eq ptr %43, %29
  br i1 %44, label %47, label %32

45:                                               ; preds = %24
  %46 = tail call ptr @copy_tree(ptr noundef %4, ptr noundef %27, i32 noundef 64)
  br label %52

47:                                               ; preds = %42
  %48 = load ptr, ptr %26, align 4
  br label %49

49:                                               ; preds = %47, %28
  %50 = phi ptr [ %48, %47 ], [ %27, %28 ]
  %51 = tail call fastcc ptr @clone_mnt(ptr noundef %4, ptr noundef %50, i32 noundef 0)
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ %46, %45 ], [ %51, %49 ]
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.mount, ptr %53, i32 0, i32 3, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -8388609
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %52, %37, %18, %2
  %60 = phi ptr [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %18 ], [ %53, %55 ], [ %53, %52 ], [ inttoptr (i32 -22 to ptr), %37 ]
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d_set_mounted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @graft_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 6291456
  %15 = icmp eq i32 %14, 2097152
  %16 = load ptr, ptr %10, align 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 6291456
  %19 = icmp eq i32 %18, 2097152
  %20 = xor i1 %15, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %9
  %22 = tail call fastcc i32 @attach_recursive_mnt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  br label %23

23:                                               ; preds = %21, %9, %3
  %24 = phi i32 [ %22, %21 ], [ -22, %3 ], [ -20, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @attach_recursive_mnt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca %struct.hlist_head, align 4
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mnt_namespace, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call fastcc ptr @get_mountpoint(ptr noundef %16)
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = ptrtoint ptr %17 to i32
  br label %431

21:                                               ; preds = %4
  br i1 %3, label %63, label %22

22:                                               ; preds = %21
  %23 = load volatile i32, ptr @sysctl_mount_max, align 4
  %24 = icmp eq ptr %0, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %42, %22
  %26 = phi ptr [ %44, %42 ], [ %0, %22 ]
  %27 = phi i32 [ %28, %42 ], [ 0, %22 ]
  %28 = add i32 %27, 1
  %29 = getelementptr inbounds %struct.mount, ptr %26, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %42

32:                                               ; preds = %35, %25
  %33 = phi ptr [ %39, %35 ], [ %26, %25 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.mount, ptr %33, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mount, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mount, ptr %39, i32 0, i32 6
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %32, label %42

42:                                               ; preds = %35, %25
  %43 = phi ptr [ %30, %25 ], [ %37, %35 ]
  %44 = getelementptr i8, ptr %43, i32 -52
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %25

46:                                               ; preds = %42, %32, %22
  %47 = phi i32 [ 0, %22 ], [ %28, %32 ], [ %28, %42 ]
  %48 = getelementptr inbounds %struct.mnt_namespace, ptr %14, i32 0, i32 9
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.mnt_namespace, ptr %14, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = icmp ugt i32 %49, %52
  %54 = icmp ugt i32 %51, %52
  %55 = or i1 %53, %54
  %56 = icmp ult i32 %23, %52
  %57 = select i1 %55, i1 true, i1 %56
  %58 = sub i32 %23, %52
  %59 = icmp ugt i32 %47, %58
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %401, label %61

61:                                               ; preds = %46
  %62 = add i32 %51, %47
  store i32 %62, ptr %50, align 4
  br label %63

63:                                               ; preds = %61, %21
  %64 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 3, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 4096
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %104, label %68

68:                                               ; preds = %63
  %69 = tail call fastcc i32 @invent_group_ids(ptr noundef %0, i1 noundef zeroext true)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %401

71:                                               ; preds = %68
  %72 = call i32 @propagate_mnt(ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %5) #21
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %73 = load i32, ptr @mount_lock, align 64
  %74 = add i32 %73, 1
  store i32 %74, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load volatile ptr, ptr %5, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %366, label %357

79:                                               ; preds = %71
  %80 = icmp eq ptr %0, null
  br i1 %80, label %107, label %81

81:                                               ; preds = %100, %79
  %82 = phi ptr [ %102, %100 ], [ %0, %79 ]
  %83 = getelementptr inbounds %struct.mount, ptr %82, i32 0, i32 3, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, -12289
  %86 = or i32 %85, 4096
  store i32 %86, ptr %83, align 4
  %87 = getelementptr inbounds %struct.mount, ptr %82, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %90, label %100

90:                                               ; preds = %93, %81
  %91 = phi ptr [ %97, %93 ], [ %82, %81 ]
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %107, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.mount, ptr %91, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.mount, ptr %91, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.mount, ptr %97, i32 0, i32 6
  %99 = icmp eq ptr %95, %98
  br i1 %99, label %90, label %100

100:                                              ; preds = %93, %81
  %101 = phi ptr [ %88, %81 ], [ %95, %93 ]
  %102 = getelementptr i8, ptr %101, i32 -52
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %81

104:                                              ; preds = %63
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %105 = load i32, ptr @mount_lock, align 64
  %106 = add i32 %105, 1
  store i32 %106, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  br label %107

107:                                              ; preds = %104, %100, %90, %79
  br i1 %3, label %108, label %191

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  store ptr %0, ptr %109, align 4
  %110 = load ptr, ptr %15, align 4
  %111 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7
  %113 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %112, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %114, ptr %116, align 4
  store volatile ptr %115, ptr %114, align 4
  store volatile ptr %112, ptr %112, align 4
  store ptr %112, ptr %113, align 4
  %117 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %108
  %121 = load ptr, ptr %0, align 4
  store volatile ptr %121, ptr %118, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  store volatile ptr %118, ptr %124, align 4
  br label %125

125:                                              ; preds = %123, %120
  store volatile ptr null, ptr %117, align 4
  br label %126

126:                                              ; preds = %125, %108
  %127 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18
  %128 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %127, align 4
  store volatile ptr %132, ptr %129, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.hlist_node, ptr %132, i32 0, i32 1
  store volatile ptr %129, ptr %135, align 4
  br label %136

136:                                              ; preds = %134, %131
  store ptr null, ptr %127, align 4
  store ptr null, ptr %128, align 4
  br label %137

137:                                              ; preds = %136, %126
  %138 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 17
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  %142 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %143 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = call i32 @llvm.read_register.i32(metadata !0) #21
  %147 = inttoptr i32 %146 to ptr
  %148 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %147) #15, !srcloc !11
  %149 = add i32 %148, %145
  %150 = inttoptr i32 %149 to ptr
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %142) #21, !srcloc !12
  %153 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  store ptr %154, ptr %111, align 4
  store ptr %1, ptr %109, align 4
  store ptr %2, ptr %138, align 4
  %155 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  store volatile ptr %156, ptr %127, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %137
  %159 = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  store volatile ptr %127, ptr %159, align 4
  br label %160

160:                                              ; preds = %158, %137
  store volatile ptr %127, ptr %155, align 4
  store volatile ptr %155, ptr %128, align 4
  %161 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 3
  %162 = load ptr, ptr %111, align 4
  %163 = ptrtoint ptr %161 to i32
  %164 = lshr i32 %163, 6
  %165 = ptrtoint ptr %162 to i32
  %166 = lshr i32 %165, 6
  %167 = add nuw nsw i32 %166, %164
  %168 = load i32, ptr @m_hash_shift, align 4
  %169 = lshr i32 %167, %168
  %170 = add nuw nsw i32 %169, %167
  %171 = load ptr, ptr @mount_hashtable, align 4
  %172 = load i32, ptr @m_hash_mask, align 4
  %173 = and i32 %170, %172
  %174 = getelementptr %struct.hlist_head, ptr %171, i32 %173
  %175 = load ptr, ptr %174, align 4
  store ptr %175, ptr %0, align 4
  store volatile ptr %174, ptr %117, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  store volatile ptr %0, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.hlist_node, ptr %175, i32 0, i32 1
  store volatile ptr %0, ptr %178, align 4
  br label %179

179:                                              ; preds = %177, %160
  %180 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 6
  %181 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 6, i32 1
  %182 = load ptr, ptr %181, align 4
  store ptr %112, ptr %181, align 4
  store ptr %180, ptr %112, align 4
  store ptr %182, ptr %113, align 4
  store volatile ptr %112, ptr %182, align 4
  %183 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %229, label %186

186:                                              ; preds = %179
  %187 = load i64, ptr @event, align 8
  %188 = add i64 %187, 1
  store i64 %188, ptr @event, align 8
  %189 = getelementptr inbounds %struct.mnt_namespace, ptr %184, i32 0, i32 8
  store i64 %188, ptr %189, align 8
  %190 = getelementptr inbounds %struct.mnt_namespace, ptr %184, i32 0, i32 7
  call void @__wake_up(ptr noundef %190, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %229

191:                                              ; preds = %107
  %192 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.mnt_namespace, ptr %193, i32 0, i32 2
  %197 = getelementptr inbounds %struct.mnt_namespace, ptr %193, i32 0, i32 2, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %196, align 4
  %200 = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  store ptr %198, ptr %200, align 4
  store volatile ptr %199, ptr %198, align 4
  store volatile ptr %196, ptr %196, align 4
  store ptr %196, ptr %197, align 4
  br label %201

201:                                              ; preds = %195, %191
  %202 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 3
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %202, align 4
  %205 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !10
  %206 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 5
  %207 = load ptr, ptr %206, align 4
  %208 = ptrtoint ptr %207 to i32
  %209 = call i32 @llvm.read_register.i32(metadata !0) #21
  %210 = inttoptr i32 %209 to ptr
  %211 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %210) #15, !srcloc !11
  %212 = add i32 %211, %208
  %213 = inttoptr i32 %212 to ptr
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %205) #21, !srcloc !12
  %216 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  store ptr %217, ptr %218, align 4
  %219 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  store ptr %1, ptr %219, align 4
  %220 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 17
  store ptr %2, ptr %220, align 4
  %221 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18
  %222 = getelementptr inbounds %struct.mountpoint, ptr %2, i32 0, i32 2
  %223 = load ptr, ptr %222, align 4
  store volatile ptr %223, ptr %221, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %201
  %226 = getelementptr inbounds %struct.hlist_node, ptr %223, i32 0, i32 1
  store volatile ptr %221, ptr %226, align 4
  br label %227

227:                                              ; preds = %225, %201
  store volatile ptr %221, ptr %222, align 4
  %228 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 18, i32 0, i32 1
  store volatile ptr %222, ptr %228, align 4
  call fastcc void @commit_tree(ptr noundef %0)
  br label %229

229:                                              ; preds = %227, %186, %179
  %230 = load ptr, ptr %5, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %327, label %232

232:                                              ; preds = %322, %229
  %233 = phi ptr [ %234, %322 ], [ %230, %229 ]
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.hlist_node, ptr %233, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %243, label %238

238:                                              ; preds = %232
  store volatile ptr %234, ptr %236, align 4
  %239 = icmp eq ptr %234, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.hlist_node, ptr %234, i32 0, i32 1
  store volatile ptr %236, ptr %241, align 4
  br label %242

242:                                              ; preds = %240, %238
  store ptr null, ptr %233, align 4
  store ptr null, ptr %235, align 4
  br label %243

243:                                              ; preds = %242, %232
  %244 = getelementptr inbounds %struct.mount, ptr %233, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.mount, ptr %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.mount, ptr %233, i32 0, i32 2
  %248 = load ptr, ptr %247, align 4
  %249 = ptrtoint ptr %246 to i32
  %250 = lshr i32 %249, 6
  %251 = ptrtoint ptr %248 to i32
  %252 = lshr i32 %251, 6
  %253 = add nuw nsw i32 %252, %250
  %254 = load i32, ptr @m_hash_shift, align 4
  %255 = lshr i32 %253, %254
  %256 = add nuw nsw i32 %255, %253
  %257 = load ptr, ptr @mount_hashtable, align 4
  %258 = load i32, ptr @m_hash_mask, align 4
  %259 = and i32 %256, %258
  %260 = getelementptr %struct.hlist_head, ptr %257, i32 %259
  %261 = load volatile ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %277, label %263

263:                                              ; preds = %272, %243
  %264 = phi ptr [ %273, %272 ], [ %261, %243 ]
  %265 = getelementptr inbounds %struct.mount, ptr %264, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %245
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.mount, ptr %264, i32 0, i32 2
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, %248
  br i1 %271, label %275, label %272

272:                                              ; preds = %268, %263
  %273 = load volatile ptr, ptr %264, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %263

275:                                              ; preds = %268
  call void @mnt_change_mountpoint(ptr noundef nonnull %233, ptr noundef %17, ptr noundef nonnull %264)
  %276 = load ptr, ptr %244, align 4
  br label %277

277:                                              ; preds = %275, %272, %243
  %278 = phi ptr [ %245, %243 ], [ %276, %275 ], [ %245, %272 ]
  %279 = getelementptr inbounds %struct.mount, ptr %278, i32 0, i32 16
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.mnt_namespace, ptr %280, i32 0, i32 4
  %282 = load ptr, ptr %281, align 8
  %283 = icmp eq ptr %282, %12
  br i1 %283, label %322, label %284

284:                                              ; preds = %318, %277
  %285 = phi ptr [ %320, %318 ], [ %233, %277 ]
  %286 = getelementptr inbounds %struct.mount, ptr %285, i32 0, i32 3, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = and i32 %287, 64
  %289 = icmp eq i32 %288, 0
  %290 = select i1 %289, i32 262144, i32 4456448
  %291 = shl i32 %287, 20
  %292 = and i32 %291, 2097152
  %293 = and i32 %291, 1048576
  %294 = shl i32 %287, 17
  %295 = and i32 %294, 524288
  %296 = or i32 %292, %287
  %297 = or i32 %296, %293
  %298 = or i32 %297, %295
  %299 = or i32 %298, %290
  %300 = getelementptr inbounds %struct.mount, ptr %285, i32 0, i32 11
  %301 = load volatile ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, %300
  %303 = or i32 %299, 8388608
  %304 = select i1 %302, i32 %303, i32 %299
  store i32 %304, ptr %286, align 4
  %305 = getelementptr inbounds %struct.mount, ptr %285, i32 0, i32 6
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, %305
  br i1 %307, label %308, label %318

308:                                              ; preds = %311, %284
  %309 = phi ptr [ %315, %311 ], [ %285, %284 ]
  %310 = icmp eq ptr %309, %233
  br i1 %310, label %322, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.mount, ptr %309, i32 0, i32 7
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.mount, ptr %309, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.mount, ptr %315, i32 0, i32 6
  %317 = icmp eq ptr %313, %316
  br i1 %317, label %308, label %318

318:                                              ; preds = %311, %284
  %319 = phi ptr [ %306, %284 ], [ %313, %311 ]
  %320 = getelementptr i8, ptr %319, i32 -52
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %284

322:                                              ; preds = %318, %308, %277
  %323 = getelementptr inbounds %struct.mount, ptr %233, i32 0, i32 3, i32 2
  %324 = load i32, ptr %323, align 4
  %325 = and i32 %324, -8388609
  store i32 %325, ptr %323, align 4
  call fastcc void @commit_tree(ptr noundef nonnull %233)
  %326 = icmp eq ptr %234, null
  br i1 %326, label %327, label %232

327:                                              ; preds = %322, %229
  %328 = getelementptr inbounds %struct.mountpoint, ptr %17, i32 0, i32 3
  %329 = load i32, ptr %328, align 4
  %330 = add i32 %329, -1
  store i32 %330, ptr %328, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %352

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.mountpoint, ptr %17, i32 0, i32 1
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr inbounds %struct.mountpoint, ptr %17, i32 0, i32 2
  %336 = load volatile ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %339, label %338, !prof !20

338:                                              ; preds = %332
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.dentry, ptr %334, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %340) #21
  %341 = load i32, ptr %334, align 8
  %342 = and i32 %341, -65537
  store i32 %342, ptr %334, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %343 = load i16, ptr %340, align 4
  %344 = add i16 %343, 1
  store i16 %344, ptr %340, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call void @dput_to_list(ptr noundef %334, ptr noundef nonnull @ex_mountpoints) #21
  %345 = load ptr, ptr %17, align 4
  %346 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %347 = load ptr, ptr %346, align 4
  store volatile ptr %345, ptr %347, align 4
  %348 = icmp eq ptr %345, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %339
  %350 = getelementptr inbounds %struct.hlist_node, ptr %345, i32 0, i32 1
  store volatile ptr %347, ptr %350, align 4
  br label %351

351:                                              ; preds = %349, %339
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %346, align 4
  call void @kfree(ptr noundef %17) #21
  br label %352

352:                                              ; preds = %351, %327
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %353 = load i32, ptr @mount_lock, align 64
  %354 = add i32 %353, 1
  store i32 %354, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %355 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %356 = add i16 %355, 1
  store i16 %356, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %431

357:                                              ; preds = %357, %76
  %358 = phi ptr [ %364, %357 ], [ %77, %76 ]
  %359 = getelementptr inbounds %struct.mount, ptr %358, i32 0, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.mount, ptr %360, i32 0, i32 16
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.mnt_namespace, ptr %362, i32 0, i32 10
  store i32 0, ptr %363, align 4
  call fastcc void @umount_tree(ptr noundef nonnull %358, i32 noundef 1)
  %364 = load volatile ptr, ptr %5, align 4
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %357

366:                                              ; preds = %357, %76
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %367 = load i32, ptr @mount_lock, align 64
  %368 = add i32 %367, 1
  store i32 %368, ptr @mount_lock, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %369 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %370 = add i16 %369, 1
  store i16 %370, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %371 = icmp eq ptr %0, null
  br i1 %371, label %401, label %372

372:                                              ; preds = %397, %366
  %373 = phi ptr [ %399, %397 ], [ %0, %366 ]
  %374 = getelementptr inbounds %struct.mount, ptr %373, i32 0, i32 23
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.mount, ptr %373, i32 0, i32 3, i32 2
  %379 = load i32, ptr %378, align 4
  %380 = and i32 %379, 4096
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  call void @ida_free(ptr noundef nonnull @mnt_group_ida, i32 noundef %375) #21
  store i32 0, ptr %374, align 4
  br label %383

383:                                              ; preds = %382, %377, %372
  %384 = getelementptr inbounds %struct.mount, ptr %373, i32 0, i32 6
  %385 = load ptr, ptr %384, align 4
  %386 = icmp eq ptr %385, %384
  br i1 %386, label %387, label %397

387:                                              ; preds = %390, %383
  %388 = phi ptr [ %394, %390 ], [ %373, %383 ]
  %389 = icmp eq ptr %388, %0
  br i1 %389, label %401, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.mount, ptr %388, i32 0, i32 7
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.mount, ptr %388, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.mount, ptr %394, i32 0, i32 6
  %396 = icmp eq ptr %392, %395
  br i1 %396, label %387, label %397

397:                                              ; preds = %390, %383
  %398 = phi ptr [ %385, %383 ], [ %392, %390 ]
  %399 = getelementptr i8, ptr %398, i32 -52
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %372

401:                                              ; preds = %397, %387, %366, %68, %46
  %402 = phi i32 [ %69, %68 ], [ -28, %46 ], [ %72, %366 ], [ %72, %387 ], [ %72, %397 ]
  %403 = getelementptr inbounds %struct.mnt_namespace, ptr %14, i32 0, i32 10
  store i32 0, ptr %403, align 4
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %404 = getelementptr inbounds %struct.mountpoint, ptr %17, i32 0, i32 3
  %405 = load i32, ptr %404, align 4
  %406 = add i32 %405, -1
  store i32 %406, ptr %404, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %428

408:                                              ; preds = %401
  %409 = getelementptr inbounds %struct.mountpoint, ptr %17, i32 0, i32 1
  %410 = load ptr, ptr %409, align 4
  %411 = getelementptr inbounds %struct.mountpoint, ptr %17, i32 0, i32 2
  %412 = load volatile ptr, ptr %411, align 4
  %413 = icmp eq ptr %412, null
  br i1 %413, label %415, label %414, !prof !20

414:                                              ; preds = %408
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #21, !srcloc !44
  unreachable

415:                                              ; preds = %408
  %416 = getelementptr inbounds %struct.dentry, ptr %410, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %416) #21
  %417 = load i32, ptr %410, align 8
  %418 = and i32 %417, -65537
  store i32 %418, ptr %410, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %419 = load i16, ptr %416, align 4
  %420 = add i16 %419, 1
  store i16 %420, ptr %416, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  call void @dput_to_list(ptr noundef %410, ptr noundef nonnull @ex_mountpoints) #21
  %421 = load ptr, ptr %17, align 4
  %422 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %423 = load ptr, ptr %422, align 4
  store volatile ptr %421, ptr %423, align 4
  %424 = icmp eq ptr %421, null
  br i1 %424, label %427, label %425

425:                                              ; preds = %415
  %426 = getelementptr inbounds %struct.hlist_node, ptr %421, i32 0, i32 1
  store volatile ptr %423, ptr %426, align 4
  br label %427

427:                                              ; preds = %425, %415
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %422, align 4
  call void @kfree(ptr noundef %17) #21
  br label %428

428:                                              ; preds = %427, %401
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %429 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %430 = add i16 %429, 1
  store i16 %430, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %431

431:                                              ; preds = %428, %352, %19
  %432 = phi i32 [ %20, %19 ], [ %402, %428 ], [ 0, %352 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %432
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @invent_group_ids(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %70, label %4

4:                                                ; preds = %66, %2
  %5 = phi ptr [ %68, %66 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 3, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4096
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mnt_group_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #21
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = icmp eq ptr %5, %0
  br i1 %18, label %70, label %19

19:                                               ; preds = %47, %17
  %20 = phi ptr [ %48, %47 ], [ %0, %17 ]
  %21 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 23
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 3, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 4096
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @ida_free(ptr noundef nonnull @mnt_group_ida, i32 noundef %22) #21
  store i32 0, ptr %21, align 4
  br label %30

30:                                               ; preds = %29, %24, %19
  %31 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %44

34:                                               ; preds = %37, %30
  %35 = phi ptr [ %41, %37 ], [ %20, %30 ]
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mount, ptr %41, i32 0, i32 6
  %43 = icmp eq ptr %39, %42
  br i1 %43, label %34, label %44

44:                                               ; preds = %37, %30
  %45 = phi ptr [ %32, %30 ], [ %39, %37 ]
  %46 = getelementptr i8, ptr %45, i32 -52
  br label %47

47:                                               ; preds = %44, %34
  %48 = phi ptr [ %46, %44 ], [ null, %34 ]
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %70, label %19

50:                                               ; preds = %14
  store i32 %15, ptr %6, align 4
  br label %51

51:                                               ; preds = %50, %9, %4
  br i1 %1, label %52, label %70

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %56, label %66

56:                                               ; preds = %59, %52
  %57 = phi ptr [ %63, %59 ], [ %5, %52 ]
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mount, ptr %57, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mount, ptr %57, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mount, ptr %63, i32 0, i32 6
  %65 = icmp eq ptr %61, %64
  br i1 %65, label %56, label %66

66:                                               ; preds = %59, %52
  %67 = phi ptr [ %54, %52 ], [ %61, %59 ]
  %68 = getelementptr i8, ptr %67, i32 -52
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %4

70:                                               ; preds = %66, %56, %51, %47, %17, %2
  %71 = phi i32 [ %15, %17 ], [ 0, %2 ], [ %15, %47 ], [ 0, %56 ], [ 0, %66 ], [ 0, %51 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @propagate_mnt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @commit_tree(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %4, %0
  br i1 %8, label %9, label %10, !prof !37

9:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #21, !srcloc !79
  unreachable

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 10
  %12 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 10, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %2, ptr %12, align 4
  store ptr %11, ptr %2, align 8
  store ptr %13, ptr %5, align 4
  store volatile ptr %2, ptr %13, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %10
  %17 = phi ptr [ %19, %16 ], [ %14, %10 ]
  %18 = getelementptr i8, ptr %17, i32 44
  store ptr %7, ptr %18, align 4
  %19 = load ptr, ptr %17, align 4
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %10
  %22 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load volatile ptr, ptr %2, align 8
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %23, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %29, align 4
  store ptr %24, ptr %23, align 4
  store ptr %27, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 9
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 8
  store i32 0, ptr %32, align 4
  %37 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 3
  %38 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %37 to i32
  %41 = lshr i32 %40, 6
  %42 = ptrtoint ptr %39 to i32
  %43 = lshr i32 %42, 6
  %44 = add nuw nsw i32 %43, %41
  %45 = load i32, ptr @m_hash_shift, align 4
  %46 = lshr i32 %44, %45
  %47 = add nuw nsw i32 %46, %44
  %48 = load ptr, ptr @mount_hashtable, align 4
  %49 = load i32, ptr @m_hash_mask, align 4
  %50 = and i32 %47, %49
  %51 = getelementptr %struct.hlist_head, ptr %48, i32 %50
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %0, align 4
  %53 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  store volatile ptr %51, ptr %53, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !43
  store volatile ptr %0, ptr %51, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %31
  %56 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  store volatile ptr %0, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %31
  %58 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7
  %59 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 6
  %60 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %58, ptr %60, align 4
  store ptr %59, ptr %58, align 4
  %62 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 7, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %58, ptr %61, align 4
  %63 = icmp eq ptr %7, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load i64, ptr @event, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr @event, align 8
  %67 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 8
  store i64 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 7
  call void @__wake_up(ptr noundef %68, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %69

69:                                               ; preds = %64, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_mount_attributes(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -256
  %6 = or i32 %5, %1
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr @event, align 8
  %12 = add i64 %11, 1
  store i64 %12, ptr @event, align 8
  %13 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 8
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mnt_warn_timestamp_expiry(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.tm, align 4
  %4 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = tail call i64 @ktime_get_real_seconds() #21
  %17 = add i64 %16, 946080000
  %18 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 30
  %19 = load i64, ptr %18, align 16
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = inttoptr i32 %22 to ptr
  %26 = tail call ptr @d_path(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 4096) #21
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ inttoptr (i32 -12 to ptr), %21 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !53
  %29 = load i64, ptr %18, align 16
  call void @time64_to_tm(i64 noundef %29, i32 noundef 0, ptr noundef nonnull %3) #21
  %30 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 5
  %31 = load ptr, ptr %30, align 32
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %1, i32 100
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  %38 = select i1 %37, ptr @.str.14, ptr @.str.13
  %39 = getelementptr inbounds %struct.tm, ptr %3, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1900
  %42 = load i64, ptr %18, align 16
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %32, ptr noundef nonnull %38, ptr noundef %28, i32 noundef %41, i64 noundef %42) #25
  call void @free_pages(i32 noundef %22, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %44

44:                                               ; preds = %27, %15, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lock_mount(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @down_write(ptr noundef %6) #21
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38, !prof !20

10:                                               ; preds = %1
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %11 = tail call ptr @lookup_mnt(ptr noundef %0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %21, !prof !20

13:                                               ; preds = %31
  tail call void @down_write(ptr noundef nonnull @namespace_sem) #21
  %14 = tail call ptr @lookup_mnt(ptr noundef %0)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21, !prof !20

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %3, %10 ], [ %27, %13 ]
  %18 = tail call fastcc ptr @get_mountpoint(ptr noundef %17)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  tail call fastcc void @namespace_unlock()
  br label %38

21:                                               ; preds = %13, %10
  %22 = phi ptr [ %14, %13 ], [ %11, %10 ]
  tail call fastcc void @namespace_unlock()
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 24
  tail call void @up_write(ptr noundef %26) #21
  tail call void @path_put(ptr noundef %0) #21
  store ptr %22, ptr %0, align 4
  %27 = load ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %30) #21
  br label %31

31:                                               ; preds = %29, %21
  store ptr %27, ptr %2, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 24
  tail call void @down_write(ptr noundef %34) #21
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 256
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %13, label %38, !prof !20

38:                                               ; preds = %31, %20, %1
  %39 = phi ptr [ %17, %20 ], [ %3, %1 ], [ %27, %31 ]
  %40 = phi ptr [ %18, %20 ], [ inttoptr (i32 -2 to ptr), %1 ], [ inttoptr (i32 -2 to ptr), %31 ]
  %41 = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 24
  tail call void @up_write(ptr noundef %43) #21
  br label %44

44:                                               ; preds = %38, %16
  %45 = phi ptr [ %18, %16 ], [ %40, %38 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_move_mount(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @lock_mount(ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %105

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 -16
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr i8, ptr %10, i32 -16
  %12 = getelementptr i8, ptr %8, i32 -8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, %9
  %15 = getelementptr i8, ptr %8, i32 104
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %8, i32 100
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %10, i32 100
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @llvm.thread.pointer() #21
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 92
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %27, label %92

27:                                               ; preds = %7
  %28 = icmp eq ptr %18, null
  %29 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %30 = or i1 %28, %29
  br i1 %30, label %92, label %31

31:                                               ; preds = %27
  br i1 %14, label %32, label %34

32:                                               ; preds = %31
  %33 = icmp eq ptr %18, %20
  br i1 %33, label %38, label %92

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.mnt_namespace, ptr %18, i32 0, i32 6
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %34, %32
  %39 = getelementptr i8, ptr %8, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %8, align 4
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 6291456
  %53 = icmp eq i32 %52, 2097152
  %54 = load i32, ptr %45, align 8
  %55 = and i32 %54, 6291456
  %56 = icmp eq i32 %55, 2097152
  %57 = xor i1 %53, %56
  br i1 %57, label %92, label %58

58:                                               ; preds = %48
  br i1 %14, label %59, label %64

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 3, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %59, %58
  %65 = getelementptr i8, ptr %10, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 4096
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @tree_contains_unbindable(ptr noundef %9)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69, %64
  %73 = tail call fastcc zeroext i1 @check_for_nsfs_mounts(ptr noundef %9)
  br i1 %73, label %74, label %92

74:                                               ; preds = %79, %72
  %75 = phi ptr [ %77, %79 ], [ %11, %72 ]
  %76 = getelementptr inbounds %struct.mount, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %75
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = icmp eq ptr %75, %9
  br i1 %80, label %92, label %74

81:                                               ; preds = %74
  %82 = load ptr, ptr %1, align 4
  %83 = getelementptr i8, ptr %82, i32 -16
  %84 = tail call fastcc i32 @attach_recursive_mnt(ptr noundef %9, ptr noundef %83, ptr noundef %3, i1 noundef zeroext %14)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %8, i32 64
  %88 = getelementptr i8, ptr %8, i32 68
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  store volatile ptr %90, ptr %89, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %88, align 4
  br i1 %14, label %94, label %95

92:                                               ; preds = %81, %79, %72, %69, %59, %48, %43, %38, %34, %32, %27, %7
  %93 = phi i32 [ -22, %7 ], [ -22, %27 ], [ -22, %34 ], [ -22, %32 ], [ -40, %72 ], [ %84, %81 ], [ -22, %69 ], [ -22, %59 ], [ -22, %48 ], [ -22, %43 ], [ -22, %38 ], [ -40, %79 ]
  tail call fastcc void @unlock_mount(ptr noundef %3)
  br label %105

94:                                               ; preds = %86
  tail call fastcc void @put_mountpoint(ptr noundef %16)
  tail call fastcc void @unlock_mount(ptr noundef %3)
  tail call fastcc void @mntput_no_expire(ptr noundef %13)
  br label %105

95:                                               ; preds = %86
  tail call fastcc void @unlock_mount(ptr noundef %3)
  %96 = getelementptr inbounds %struct.mnt_namespace, ptr %18, i32 0, i32 6
  %97 = load i64, ptr %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ns_common, ptr %18, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  tail call void @proc_free_inum(i32 noundef %101) #21
  br label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds %struct.mnt_namespace, ptr %18, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  tail call void @dec_ucount(ptr noundef %104, i32 noundef 5) #21
  tail call void @kfree(ptr noundef %18) #21
  br label %105

105:                                              ; preds = %102, %94, %92, %5
  %106 = phi i32 [ %6, %5 ], [ 0, %94 ], [ 0, %102 ], [ %93, %92 ]
  ret i32 %106
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @tree_contains_unbindable(ptr noundef readonly %0) unnamed_addr #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %23, %1
  %4 = phi ptr [ %25, %23 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %23

13:                                               ; preds = %16, %9
  %14 = phi ptr [ %20, %16 ], [ %4, %9 ]
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 6
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %13, label %23

23:                                               ; preds = %16, %9
  %24 = phi ptr [ %11, %9 ], [ %18, %16 ]
  %25 = getelementptr i8, ptr %24, i32 -52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %3

27:                                               ; preds = %23, %13, %3, %1
  %28 = phi i32 [ 0, %1 ], [ 0, %13 ], [ 0, %23 ], [ 1, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_for_nsfs_mounts(ptr noundef readonly %0) unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #21
  %2 = load i32, ptr @mount_lock, align 64
  %3 = add i32 %2, 1
  store i32 %3, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !27
  %4 = icmp eq ptr %0, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %45, %1
  %6 = phi ptr [ %47, %45 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, @ns_dentry_operations
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @mntns_operations
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 47
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @llvm.thread.pointer() #21
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 92
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mnt_namespace, ptr %25, i32 0, i32 6
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mnt_namespace, ptr %20, i32 0, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %16, %12, %5
  %32 = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %45

35:                                               ; preds = %38, %31
  %36 = phi ptr [ %42, %38 ], [ %6, %31 ]
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.mount, ptr %36, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mount, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mount, ptr %42, i32 0, i32 6
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %35, label %45

45:                                               ; preds = %38, %31
  %46 = phi ptr [ %33, %31 ], [ %40, %38 ]
  %47 = getelementptr i8, ptr %46, i32 -52
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %5

49:                                               ; preds = %45, %35, %16, %1
  %50 = phi i1 [ true, %1 ], [ true, %35 ], [ true, %45 ], [ false, %16 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !30
  %51 = load i32, ptr @mount_lock, align 64
  %52 = add i32 %51, 1
  store i32 %52, ptr @mount_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %53 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  ret i1 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mount_capable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mount_too_revealing(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #21
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @init_user_ns
  br i1 %10, label %97, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11
  %17 = and i32 %13, 6
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i1, ptr @mount_too_revealing.__already_done, align 1
  br i1 %20, label %97, label %21, !prof !20

21:                                               ; preds = %19
  store i1 true, ptr @mount_too_revealing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 4555, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef 6) #21
  br label %97

22:                                               ; preds = %16
  %23 = load i32, ptr %1, align 4
  tail call void @down_read(ptr noundef nonnull @namespace_sem) #21
  %24 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.mnt_namespace, ptr %7, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %93, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 5
  %30 = and i32 %23, 64
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %90, %28
  %33 = phi ptr [ %26, %28 ], [ %91, %90 ]
  %34 = getelementptr i8, ptr %33, i32 -48
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %33, i32 -52
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 32
  %43 = load ptr, ptr %29, align 32
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %33, i32 -56
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 13
  %49 = load ptr, ptr %48, align 64
  %50 = icmp eq ptr %47, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 22
  %55 = and i32 %54, 4194304
  %56 = or i32 %55, %35
  %57 = and i32 %56, 4194304
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %58, i1 %31, i1 false
  br i1 %59, label %90, label %60

60:                                               ; preds = %51
  %61 = and i32 %35, 262144
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = xor i32 %35, %23
  %65 = and i32 %64, 56
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %63, %60
  %68 = getelementptr i8, ptr %33, i32 -28
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %86, label %71

71:                                               ; preds = %83, %67
  %72 = phi ptr [ %84, %83 ], [ %69, %67 ]
  %73 = getelementptr i8, ptr %72, i32 -28
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 8388608
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = getelementptr i8, ptr %72, i32 -40
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 8
  %82 = tail call zeroext i1 @is_empty_dir_inode(ptr noundef %81) #21
  br i1 %82, label %83, label %90

83:                                               ; preds = %77, %71
  %84 = load ptr, ptr %72, align 4
  %85 = icmp eq ptr %84, %68
  br i1 %85, label %86, label %71

86:                                               ; preds = %83, %67
  %87 = and i32 %56, 4456448
  %88 = load i32, ptr %1, align 4
  %89 = or i32 %88, %87
  store i32 %89, ptr %1, align 4
  br label %93

90:                                               ; preds = %77, %63, %51, %45, %38, %32
  %91 = load ptr, ptr %33, align 4
  %92 = icmp eq ptr %91, %25
  br i1 %92, label %93, label %32

93:                                               ; preds = %90, %86, %22
  %94 = phi i1 [ false, %86 ], [ true, %22 ], [ true, %90 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %95 = load i16, ptr %24, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call void @up_read(ptr noundef nonnull @namespace_sem) #21
  br label %97

97:                                               ; preds = %93, %21, %19, %11, %2
  %98 = phi i1 [ %94, %93 ], [ false, %2 ], [ false, %11 ], [ true, %21 ], [ true, %19 ]
  ret i1 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_drop_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_empty_dir_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfs_clean_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chroot_fs_refs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_ns_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind readnone }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold }

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
!9 = !{i64 2154355217}
!10 = !{i64 906692, i64 906753}
!11 = !{i64 925392}
!12 = !{i64 909709}
!13 = !{i64 2154355323}
!14 = !{i64 2154358562}
!15 = !{i64 2154358404}
!16 = !{i64 2154358701}
!17 = !{i64 2154355149}
!18 = !{i64 2154358772}
!19 = !{i64 2151299249}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2151306866}
!22 = !{i64 2151315331}
!23 = !{i64 2151323642}
!24 = !{i64 2151331860}
!25 = !{i64 2154365427}
!26 = !{i64 2154365475}
!27 = !{i64 2149648341}
!28 = !{i64 2154372231}
!29 = !{i64 2154372367}
!30 = !{i64 2149648642}
!31 = !{i64 2149169618}
!32 = !{i64 2149165442}
!33 = !{i64 2149165517, i64 2149165544, i64 2149165591, i64 2149165613, i64 2149165641, i64 2149165661}
!34 = !{i64 2149192621}
!35 = !{i64 2149648042}
!36 = !{i64 2154377170}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2149322539}
!39 = !{i64 2149322322}
!40 = !{i64 2149657410}
!41 = !{i64 2149657252}
!42 = !{i64 2149657554}
!43 = !{i64 2149427687}
!44 = !{i64 2154403924, i64 2154404403, i64 2154403961, i64 2154404017, i64 2154404051, i64 2154404075, i64 2154404116, i64 2154404137, i64 2154404165, i64 2154404199}
!45 = !{i64 1001014, i64 2148490985, i64 2148491011, i64 2148491058, i64 2148491080, i64 2148491108, i64 2148491128}
!46 = !{i64 2148502400, i64 2148502426, i64 2148502455, i64 2148502489, i64 2148502520, i64 2148502543}
!47 = !{i64 2154429726}
!48 = !{i64 2151362309}
!49 = !{i64 2154444453, i64 2154444933, i64 2154444490, i64 2154444546, i64 2154444580, i64 2154444604, i64 2154444645, i64 2154444666, i64 2154444694, i64 2154444728}
!50 = !{i64 2154456519}
!51 = !{i64 1009664, i64 1009681, i64 1009705, i64 1009731, i64 1009749}
!52 = !{i64 2154456836}
!53 = !{!"auto-init"}
!54 = !{i64 2154508508, i64 2154508988, i64 2154508545, i64 2154508601, i64 2154508635, i64 2154508659, i64 2154508700, i64 2154508721, i64 2154508749, i64 2154508783}
!55 = !{i64 2154516469}
!56 = !{i64 2154516786}
!57 = !{i64 2154368275}
!58 = !{i64 2154368577}
!59 = !{i32 0, i32 31}
!60 = !{i64 2154537090, i64 2154537570, i64 2154537127, i64 2154537183, i64 2154537217, i64 2154537241, i64 2154537282, i64 2154537303, i64 2154537331, i64 2154537365}
!61 = !{i64 2148503858, i64 2148503890, i64 2148503919, i64 2148503953, i64 2148503984, i64 2148504007}
!62 = !{i64 2148639718}
!63 = !{i64 2148514383, i64 2148514417, i64 2148514451, i64 2148514485, i64 2148514519, i64 2148514555, i64 2148514578}
!64 = !{i64 2148639923}
!65 = !{i64 2148604080}
!66 = !{i64 2148506215, i64 2148506247, i64 2148506276, i64 2148506310, i64 2148506341, i64 2148506364}
!67 = !{i64 2149929594}
!68 = !{i64 2151134673, i64 2151134698}
!69 = !{i64 3630785}
!70 = !{i64 3630982}
!71 = !{i64 2151116261}
!72 = !{i64 2154526162, i64 2154526442, i64 2154526776, i64 2154527110}
!73 = !{!74}
!74 = distinct !{!74, !75, !"fdget: argument 0"}
!75 = distinct !{!75, !"fdget"}
!76 = !{i64 2154594676}
!77 = !{i64 2149147463}
!78 = !{i64 2149147790}
!79 = !{i64 2154405391, i64 2154405870, i64 2154405428, i64 2154405484, i64 2154405518, i64 2154405542, i64 2154405583, i64 2154405604, i64 2154405632, i64 2154405666}
