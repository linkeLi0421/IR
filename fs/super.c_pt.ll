; ModuleID = '/llk/IR/fs/super.c_pt.bc'
source_filename = "../fs/super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deactivate_locked_super:\09\09\09\09\09"
module asm "\09.asciz \09\22deactivate_locked_super\22\09\09\09\09\09"
module asm "__kstrtabns_deactivate_locked_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deactivate_super:\09\09\09\09\09"
module asm "\09.asciz \09\22deactivate_super\22\09\09\09\09\09"
module asm "__kstrtabns_deactivate_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_shutdown_super:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_shutdown_super\22\09\09\09\09\09"
module asm "__kstrtabns_generic_shutdown_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sget_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22sget_fc\22\09\09\09\09\09"
module asm "__kstrtabns_sget_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sget:\09\09\09\09\09"
module asm "\09.asciz \09\22sget\22\09\09\09\09\09"
module asm "__kstrtabns_sget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drop_super:\09\09\09\09\09"
module asm "\09.asciz \09\22drop_super\22\09\09\09\09\09"
module asm "__kstrtabns_drop_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drop_super_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22drop_super_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_drop_super_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iterate_supers_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iterate_supers_type\22\09\09\09\09\09"
module asm "__kstrtabns_iterate_supers_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22get_anon_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_get_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_anon_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_free_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22set_anon_super\22\09\09\09\09\09"
module asm "__kstrtabns_set_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_anon_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_litter_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_litter_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_litter_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_anon_super_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22set_anon_super_fc\22\09\09\09\09\09"
module asm "__kstrtabns_set_anon_super_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_super:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_super\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_nodev\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_single:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_single\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_single_reconf:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_single_reconf\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_single_reconf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_mount_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_block_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_block_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_block_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_nodev\22\09\09\09\09\09"
module asm "__kstrtabns_mount_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_single:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_single\22\09\09\09\09\09"
module asm "__kstrtabns_mount_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_tree\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_super_setup_bdi_name:\09\09\09\09\09"
module asm "\09.asciz \09\22super_setup_bdi_name\22\09\09\09\09\09"
module asm "__kstrtabns_super_setup_bdi_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_super_setup_bdi:\09\09\09\09\09"
module asm "\09.asciz \09\22super_setup_bdi\22\09\09\09\09\09"
module asm "__kstrtabns_super_setup_bdi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freeze_super:\09\09\09\09\09"
module asm "\09.asciz \09\22freeze_super\22\09\09\09\09\09"
module asm "__kstrtabns_freeze_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thaw_super:\09\09\09\09\09"
module asm "\09.asciz \09\22thaw_super\22\09\09\09\09\09"
module asm "__kstrtabns_thaw_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.46, %struct.list_head, %struct.list_head, %union.anon.47 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.44 }
%union.anon.44 = type { i64 }
%union.anon.46 = type { %struct.list_head }
%union.anon.47 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.35, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.36, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.37, ptr, %struct.address_space, %struct.list_head, %union.anon.42, i32, i32, ptr, ptr }
%union.anon.35 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.36 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.37 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.42 = type { ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.__va_list = type { ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@sb_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_deactivate_locked_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_deactivate_locked_super = external dso_local constant [0 x i8], align 1
@__ksymtab_deactivate_locked_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deactivate_locked_super to i32), ptr @__kstrtab_deactivate_locked_super, ptr @__kstrtabns_deactivate_locked_super }, section "___ksymtab+deactivate_locked_super", align 4
@__kstrtab_deactivate_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_deactivate_super = external dso_local constant [0 x i8], align 1
@__ksymtab_deactivate_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deactivate_super to i32), ptr @__kstrtab_deactivate_super, ptr @__kstrtabns_deactivate_super }, section "___ksymtab+deactivate_super", align 4
@.str = private unnamed_addr constant [87 x i8] c"VFS: Busy inodes after unmount of %s. Self-destruct in 5 seconds.  Have a nice day...\0A\00", align 1
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@__kstrtab_generic_shutdown_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_shutdown_super = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_shutdown_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_shutdown_super to i32), ptr @__kstrtab_generic_shutdown_super, ptr @__kstrtabns_generic_shutdown_super }, section "___ksymtab+generic_shutdown_super", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@super_blocks = internal global %struct.list_head { ptr @super_blocks, ptr @super_blocks }, align 4
@__kstrtab_sget_fc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sget_fc = external dso_local constant [0 x i8], align 1
@__ksymtab_sget_fc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sget_fc to i32), ptr @__kstrtab_sget_fc, ptr @__kstrtabns_sget_fc }, section "___ksymtab+sget_fc", align 4
@__kstrtab_sget = external dso_local constant [0 x i8], align 1
@__kstrtabns_sget = external dso_local constant [0 x i8], align 1
@__ksymtab_sget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sget to i32), ptr @__kstrtab_sget, ptr @__kstrtabns_sget }, section "___ksymtab+sget", align 4
@__kstrtab_drop_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_drop_super = external dso_local constant [0 x i8], align 1
@__ksymtab_drop_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drop_super to i32), ptr @__kstrtab_drop_super, ptr @__kstrtabns_drop_super }, section "___ksymtab+drop_super", align 4
@__kstrtab_drop_super_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_drop_super_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_drop_super_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drop_super_exclusive to i32), ptr @__kstrtab_drop_super_exclusive, ptr @__kstrtabns_drop_super_exclusive }, section "___ksymtab+drop_super_exclusive", align 4
@__kstrtab_iterate_supers_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iterate_supers_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iterate_supers_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iterate_supers_type to i32), ptr @__kstrtab_iterate_supers_type, ptr @__kstrtabns_iterate_supers_type }, section "___ksymtab+iterate_supers_type", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"fs/super.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"forced remount of a %s fs returned %i\0A\00", align 1
@unnamed_dev_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_get_anon_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_anon_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_get_anon_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_anon_bdev to i32), ptr @__kstrtab_get_anon_bdev, ptr @__kstrtabns_get_anon_bdev }, section "___ksymtab+get_anon_bdev", align 4
@__kstrtab_free_anon_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_anon_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_anon_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_anon_bdev to i32), ptr @__kstrtab_free_anon_bdev, ptr @__kstrtabns_free_anon_bdev }, section "___ksymtab+free_anon_bdev", align 4
@__kstrtab_set_anon_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_anon_super = external dso_local constant [0 x i8], align 1
@__ksymtab_set_anon_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_anon_super to i32), ptr @__kstrtab_set_anon_super, ptr @__kstrtabns_set_anon_super }, section "___ksymtab+set_anon_super", align 4
@__kstrtab_kill_anon_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_anon_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_anon_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_anon_super to i32), ptr @__kstrtab_kill_anon_super, ptr @__kstrtabns_kill_anon_super }, section "___ksymtab+kill_anon_super", align 4
@__kstrtab_kill_litter_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_litter_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_litter_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_litter_super to i32), ptr @__kstrtab_kill_litter_super, ptr @__kstrtabns_kill_litter_super }, section "___ksymtab+kill_litter_super", align 4
@__kstrtab_set_anon_super_fc = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_anon_super_fc = external dso_local constant [0 x i8], align 1
@__ksymtab_set_anon_super_fc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_anon_super_fc to i32), ptr @__kstrtab_set_anon_super_fc, ptr @__kstrtabns_set_anon_super_fc }, section "___ksymtab+set_anon_super_fc", align 4
@__kstrtab_vfs_get_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_super = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_super to i32), ptr @__kstrtab_vfs_get_super, ptr @__kstrtabns_vfs_get_super }, section "___ksymtab+vfs_get_super", align 4
@__kstrtab_get_tree_nodev = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_nodev = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_nodev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_nodev to i32), ptr @__kstrtab_get_tree_nodev, ptr @__kstrtabns_get_tree_nodev }, section "___ksymtab+get_tree_nodev", align 4
@__kstrtab_get_tree_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_single = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_single to i32), ptr @__kstrtab_get_tree_single, ptr @__kstrtabns_get_tree_single }, section "___ksymtab+get_tree_single", align 4
@__kstrtab_get_tree_single_reconf = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_single_reconf = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_single_reconf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_single_reconf to i32), ptr @__kstrtab_get_tree_single_reconf, ptr @__kstrtabns_get_tree_single_reconf }, section "___ksymtab+get_tree_single_reconf", align 4
@__kstrtab_get_tree_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_keyed to i32), ptr @__kstrtab_get_tree_keyed, ptr @__kstrtabns_get_tree_keyed }, section "___ksymtab+get_tree_keyed", align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"No source specified\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: Can't open blockdev\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%pg: Can't mount, blockdev is frozen\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%pg: Can't mount, would change RO state\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%pg\00", align 1
@__kstrtab_get_tree_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_bdev to i32), ptr @__kstrtab_get_tree_bdev, ptr @__kstrtabns_get_tree_bdev }, section "___ksymtab+get_tree_bdev", align 4
@__kstrtab_mount_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_bdev to i32), ptr @__kstrtab_mount_bdev, ptr @__kstrtabns_mount_bdev }, section "___ksymtab+mount_bdev", align 4
@kill_block_super.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kill_block_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_block_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_block_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_block_super to i32), ptr @__kstrtab_kill_block_super, ptr @__kstrtabns_kill_block_super }, section "___ksymtab+kill_block_super", align 4
@__kstrtab_mount_nodev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_nodev = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_nodev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_nodev to i32), ptr @__kstrtab_mount_nodev, ptr @__kstrtabns_mount_nodev }, section "___ksymtab+mount_nodev", align 4
@__kstrtab_mount_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_single = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_single to i32), ptr @__kstrtab_mount_single, ptr @__kstrtabns_mount_single }, section "___ksymtab+mount_single", align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"\013Filesystem %s get_tree() didn't set fc->root\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"%s set sb->s_maxbytes to negative value (%lld)\0A\00", align 1
@__kstrtab_vfs_get_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_tree to i32), ptr @__kstrtab_vfs_get_tree, ptr @__kstrtabns_vfs_get_tree }, section "___ksymtab+vfs_get_tree", align 4
@__kstrtab_super_setup_bdi_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_super_setup_bdi_name = external dso_local constant [0 x i8], align 1
@__ksymtab_super_setup_bdi_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @super_setup_bdi_name to i32), ptr @__kstrtab_super_setup_bdi_name, ptr @__kstrtabns_super_setup_bdi_name }, section "___ksymtab+super_setup_bdi_name", align 4
@super_setup_bdi.bdi_seq = internal global %struct.atomic_t zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"%.28s-%ld\00", align 1
@__kstrtab_super_setup_bdi = external dso_local constant [0 x i8], align 1
@__kstrtabns_super_setup_bdi = external dso_local constant [0 x i8], align 1
@__ksymtab_super_setup_bdi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @super_setup_bdi to i32), ptr @__kstrtab_super_setup_bdi, ptr @__kstrtabns_super_setup_bdi }, section "___ksymtab+super_setup_bdi", align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"\013VFS:Filesystem freeze failed\0A\00", align 1
@__kstrtab_freeze_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_freeze_super = external dso_local constant [0 x i8], align 1
@__ksymtab_freeze_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freeze_super to i32), ptr @__kstrtab_freeze_super, ptr @__kstrtabns_freeze_super }, section "___ksymtab+freeze_super", align 4
@__kstrtab_thaw_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_thaw_super = external dso_local constant [0 x i8], align 1
@__ksymtab_thaw_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thaw_super to i32), ptr @__kstrtab_thaw_super, ptr @__kstrtabns_thaw_super }, section "___ksymtab+thaw_super", align 4
@alloc_super.default_op = internal constant %struct.super_operations zeroinitializer, align 4
@alloc_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"&s->s_umount\00", align 1
@alloc_super.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"&s->s_writers.wait_unfrozen\00", align 1
@alloc_super.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"&s->s_sync_lock\00", align 1
@alloc_super.__key.17 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"&s->s_vfs_rename_mutex\00", align 1
@alloc_super.__key.19 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"&s->s_dquot.dqio_sem\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"sb_writers\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"sb_pagefaults\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"sb_internal\00", align 1
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [28 x i8] c"Emergency Remount complete\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"\014Emergency Thaw complete\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"\013VFS:Filesystem thaw failed\0A\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_deactivate_locked_super, ptr @__ksymtab_deactivate_super, ptr @__ksymtab_drop_super, ptr @__ksymtab_drop_super_exclusive, ptr @__ksymtab_free_anon_bdev, ptr @__ksymtab_freeze_super, ptr @__ksymtab_generic_shutdown_super, ptr @__ksymtab_get_anon_bdev, ptr @__ksymtab_get_tree_bdev, ptr @__ksymtab_get_tree_keyed, ptr @__ksymtab_get_tree_nodev, ptr @__ksymtab_get_tree_single, ptr @__ksymtab_get_tree_single_reconf, ptr @__ksymtab_iterate_supers_type, ptr @__ksymtab_kill_anon_super, ptr @__ksymtab_kill_block_super, ptr @__ksymtab_kill_litter_super, ptr @__ksymtab_mount_bdev, ptr @__ksymtab_mount_nodev, ptr @__ksymtab_mount_single, ptr @__ksymtab_set_anon_super, ptr @__ksymtab_set_anon_super_fc, ptr @__ksymtab_sget, ptr @__ksymtab_sget_fc, ptr @__ksymtab_super_setup_bdi, ptr @__ksymtab_super_setup_bdi_name, ptr @__ksymtab_thaw_super, ptr @__ksymtab_vfs_get_super, ptr @__ksymtab_vfs_get_tree], section "llvm.metadata"
@switch.table.vfs_get_super = private unnamed_addr constant [4 x ptr] [ptr @test_single_super, ptr @test_single_super, ptr @test_keyed_super, ptr null], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_super(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %2 = load i16, ptr @sb_lock, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__put_super(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %7, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 48
  %12 = load ptr, ptr %11, align 16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !12

14:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 290, i32 noundef 9, ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 49
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !12

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 291, i32 noundef 9, ptr noundef null) #10
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 19
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %25, label %24, !prof !12

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 38
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 50
  tail call void @call_rcu(ptr noundef %28, ptr noundef nonnull @destroy_super_rcu) #10
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @deactivate_locked_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 32
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !15
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 40
  tail call void @unregister_shrinker(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.file_system_type, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 48
  tail call void @list_lru_destroy(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 49
  tail call void @list_lru_destroy(ptr noundef %13) #10
  tail call void @put_filesystem(ptr noundef %3) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %14 = load i16, ptr @sb_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_write(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @deactivate_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #10, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, i32 -1, ptr elementtype(i32) %2) #10, !srcloc !18
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  br label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %8) #10
  tail call void @deactivate_locked_super(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trylock_super(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %3 = tail call i32 @down_read_trylock(ptr noundef %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 23, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 536870912
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %9, %5
  tail call void @up_read(ptr noundef %2) #10
  br label %19

19:                                               ; preds = %18, %13, %1
  %20 = phi i1 [ true, %13 ], [ false, %18 ], [ false, %1 ]
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_shutdown_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  tail call void @shrink_dcache_for_umount(ptr noundef %0) #10
  %8 = tail call i32 @sync_filesystem(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -1073741825
  store i32 %11, ptr %9, align 4
  tail call void @evict_inodes(ptr noundef %0) #10
  tail call void @fsnotify_sb_delete(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 45
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @destroy_workqueue(ptr noundef nonnull %13) #10
  store ptr null, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #10
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 56
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %26) #11
  br label %28

28:                                               ; preds = %25, %21, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 23
  %30 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 23, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 4
  store volatile ptr %34, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  store volatile ptr %31, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  store ptr null, ptr %29, align 4
  store ptr null, ptr %30, align 4
  br label %39

39:                                               ; preds = %38, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %40 = load i16, ptr @sb_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %42 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_write(ptr noundef %42) #10
  %43 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, @noop_backing_dev_info
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 512
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  tail call void @bdi_unregister(ptr noundef %44) #10
  %52 = load ptr, ptr %43, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi ptr [ %52, %51 ], [ %44, %46 ]
  tail call void @bdi_put(ptr noundef %54) #10
  store ptr @noop_backing_dev_info, ptr %43, align 8
  br label %55

55:                                               ; preds = %53, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_for_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evict_inodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_sb_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mount_capable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file_system_type, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 21) #10
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ %13, %10 ], [ %9, %8 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sget_fc(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ @init_user_ns, %3 ]
  %13 = icmp eq ptr %1, null
  %14 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  br label %16

16:                                               ; preds = %40, %11
  %17 = phi ptr [ %45, %40 ], [ null, %11 ]
  br label %18

18:                                               ; preds = %100, %16
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  br i1 %13, label %38, label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.file_system_type, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -128
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %31, %19
  %28 = phi ptr [ %35, %31 ], [ %24, %19 ]
  %29 = tail call i32 %1(ptr noundef nonnull %28, ptr noundef %0) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 23
  %33 = load ptr, ptr %32, align 64
  %34 = icmp eq ptr %33, null
  %35 = getelementptr i8, ptr %33, i32 -128
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %27

38:                                               ; preds = %31, %19, %18
  %39 = icmp eq ptr %17, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %41 = load i16, ptr @sb_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %43 = load ptr, ptr %14, align 4
  %44 = load i32, ptr %15, align 4
  %45 = tail call fastcc ptr @alloc_super(ptr noundef %43, i32 noundef %44)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %104, label %16

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  store ptr %49, ptr %50, align 4
  %51 = tail call i32 %2(ptr noundef nonnull %17, ptr noundef %0) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %47
  store ptr null, ptr %50, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %54 = load i16, ptr @sb_lock, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %56 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 14
  tail call void @up_write(ptr noundef %56) #10
  %57 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 48
  tail call void @list_lru_destroy(ptr noundef %57) #10
  %58 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 49
  tail call void @list_lru_destroy(ptr noundef %58) #10
  %59 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 38
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #10
  %61 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 40
  tail call void @free_prealloced_shrinker(ptr noundef %61) #10
  %62 = getelementptr %struct.super_block, ptr %17, i32 0, i32 26, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %62) #10
  %63 = getelementptr %struct.super_block, ptr %17, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_free_rwsem(ptr noundef %63) #10
  %64 = getelementptr %struct.super_block, ptr %17, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %64) #10
  tail call void @kfree(ptr noundef nonnull %17) #10
  %65 = inttoptr i32 %51 to ptr
  br label %104

66:                                               ; preds = %47
  store ptr null, ptr %48, align 4
  %67 = load ptr, ptr %14, align 4
  %68 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 5
  store ptr %67, ptr %68, align 32
  %69 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 15
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 11
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, ptr %71, align 8
  %74 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %75 = load ptr, ptr %67, align 4
  %76 = tail call i32 @strlcpy(ptr noundef %74, ptr noundef %75, i32 noundef 32) #10
  %77 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  store ptr %17, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  store ptr @super_blocks, ptr %17, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %17, ptr %77, align 4
  %79 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 23
  %80 = load ptr, ptr %68, align 32
  %81 = getelementptr inbounds %struct.file_system_type, ptr %80, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  store volatile ptr %82, ptr %79, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.hlist_node, ptr %82, i32 0, i32 1
  store volatile ptr %79, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %66
  store volatile ptr %79, ptr %81, align 4
  %87 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 23, i32 1
  store volatile ptr %81, ptr %87, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %88 = load i16, ptr @sb_lock, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %90 = load ptr, ptr %68, align 32
  %91 = tail call ptr @get_filesystem(ptr noundef %90) #10
  %92 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 40
  tail call void @register_shrinker_prepared(ptr noundef %92) #10
  br label %104

93:                                               ; preds = %27
  %94 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 47
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %12, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %98 = load i16, ptr @sb_lock, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call fastcc void @destroy_unused_super(ptr noundef %17)
  br label %104

100:                                              ; preds = %93
  %101 = tail call fastcc i32 @grab_super(ptr noundef nonnull %28)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %18, label %103

103:                                              ; preds = %100
  tail call fastcc void @destroy_unused_super(ptr noundef %17)
  br label %104

104:                                              ; preds = %103, %97, %86, %53, %40
  %105 = phi ptr [ inttoptr (i32 -16 to ptr), %97 ], [ %28, %103 ], [ %65, %53 ], [ %17, %86 ], [ inttoptr (i32 -12 to ptr), %40 ]
  ret ptr %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_super(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 1052096, i32 noundef 896) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 19
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 19, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 47
  store ptr @init_user_ns, ptr %9, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 14
  tail call void @__init_rwsem(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @alloc_super.__key) #10
  tail call void @down_write(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 12
  %12 = getelementptr %struct.super_block, ptr %4, i32 0, i32 26, i32 2, i32 0
  %13 = tail call i32 @__percpu_init_rwsem(ptr noundef %12, ptr noundef nonnull @.str.21, ptr noundef %11) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %6
  %16 = getelementptr %struct.super_block, ptr %4, i32 0, i32 26, i32 2, i32 1
  %17 = tail call i32 @__percpu_init_rwsem(ptr noundef %16, ptr noundef nonnull @.str.22, ptr noundef %11) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %15
  %20 = getelementptr %struct.super_block, ptr %4, i32 0, i32 26, i32 2, i32 2
  %21 = tail call i32 @__percpu_init_rwsem(ptr noundef %20, ptr noundef nonnull @.str.23, ptr noundef %11) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 26, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %24, ptr noundef nonnull @.str.14, ptr noundef nonnull @alloc_super.__key.13) #10
  %25 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 21
  store ptr @noop_backing_dev_info, ptr %25, align 8
  %26 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  store i32 %1, ptr %26, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = icmp eq ptr %27, @init_user_ns
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 11
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 4
  store i32 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 23
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 23, i32 1
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 18
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 52
  tail call void @__mutex_init(ptr noundef %37, ptr noundef nonnull @.str.16, ptr noundef nonnull @alloc_super.__key.15) #10
  %38 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 56
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 56, i32 1
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 55
  store i32 0, ptr %40, align 64
  %41 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 58
  store volatile ptr %41, ptr %41, align 8
  %42 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 58, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 57
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 15
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 16
  store volatile i32 1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 37
  tail call void @__mutex_init(ptr noundef %46, ptr noundef nonnull @.str.18, ptr noundef nonnull @alloc_super.__key.17) #10
  %47 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 25, i32 1
  tail call void @__init_rwsem(ptr noundef %47, ptr noundef nonnull @.str.20, ptr noundef nonnull @alloc_super.__key.19) #10
  %48 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 4
  store i64 2147483647, ptr %48, align 8
  %49 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 6
  store ptr @alloc_super.default_op, ptr %49, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 28
  store i32 1000000000, ptr %50, align 32
  %51 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 29
  store i64 -9223372036854775808, ptr %51, align 8
  %52 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 30
  store i64 9223372036854775807, ptr %52, align 16
  %53 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 40
  %54 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 40, i32 3
  store i32 2, ptr %54, align 8
  %55 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 40, i32 1
  store ptr @super_cache_scan, ptr %55, align 8
  store ptr @super_cache_count, ptr %53, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 40, i32 2
  store i32 1024, ptr %56, align 4
  %57 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 40, i32 4
  store i32 6, ptr %57, align 4
  %58 = tail call i32 @prealloc_shrinker(ptr noundef %53) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %33
  %61 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 48
  %62 = tail call i32 @__list_lru_init(ptr noundef %61, i1 noundef zeroext true, ptr noundef null, ptr noundef %53) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 49
  %66 = tail call i32 @__list_lru_init(ptr noundef %65, i1 noundef zeroext true, ptr noundef null, ptr noundef %53) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64, %60, %33, %19, %15, %6
  tail call void @up_write(ptr noundef %10) #10
  %69 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 48
  tail call void @list_lru_destroy(ptr noundef %69) #10
  %70 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 49
  tail call void @list_lru_destroy(ptr noundef %70) #10
  %71 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 38
  %72 = load ptr, ptr %71, align 4
  tail call void @kfree(ptr noundef %72) #10
  %73 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 40
  tail call void @free_prealloced_shrinker(ptr noundef %73) #10
  tail call void @percpu_free_rwsem(ptr noundef %12) #10
  %74 = getelementptr %struct.super_block, ptr %4, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_free_rwsem(ptr noundef %74) #10
  %75 = getelementptr %struct.super_block, ptr %4, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %75) #10
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %76

76:                                               ; preds = %68, %64, %2
  %77 = phi ptr [ null, %68 ], [ null, %2 ], [ %4, %64 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_unused_super(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_write(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 48
  tail call void @list_lru_destroy(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 49
  tail call void @list_lru_destroy(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 38
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 40
  tail call void @free_prealloced_shrinker(ptr noundef %9) #10
  %10 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %10) #10
  %11 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_free_rwsem(ptr noundef %11) #10
  %12 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %12) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_shrinker_prepared(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @grab_super(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %5 = load i16, ptr @sb_lock, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 536870912
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 1, ptr elementtype(i32) %13) #10, !srcloc !18
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %18 = load i16, ptr @sb_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %23

20:                                               ; preds = %12, %1
  tail call void @up_write(ptr noundef %7) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %21 = load i16, ptr @sb_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 1, %17 ], [ 0, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sget(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 8
  %8 = and i32 %3, -67108865
  br label %9

9:                                                ; preds = %42, %5
  %10 = phi ptr [ %45, %42 ], [ null, %5 ]
  br label %11

11:                                               ; preds = %29, %9
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  br i1 %6, label %40, label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -128
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %33, %12
  %19 = phi ptr [ %37, %33 ], [ %15, %12 ]
  %20 = tail call i32 %1(ptr noundef nonnull %19, ptr noundef %4) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 47
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @init_user_ns
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %27 = load i16, ptr @sb_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call fastcc void @destroy_unused_super(ptr noundef %10)
  br label %81

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @grab_super(ptr noundef nonnull %19)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %11, label %32

32:                                               ; preds = %29
  tail call fastcc void @destroy_unused_super(ptr noundef %10)
  br label %81

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 23
  %35 = load ptr, ptr %34, align 64
  %36 = icmp eq ptr %35, null
  %37 = getelementptr i8, ptr %35, i32 -128
  %38 = icmp eq ptr %37, null
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %18

40:                                               ; preds = %33, %12, %11
  %41 = icmp eq ptr %10, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %43 = load i16, ptr @sb_lock, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %45 = tail call fastcc ptr @alloc_super(ptr noundef %0, i32 noundef %8)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %81, label %9

47:                                               ; preds = %40
  %48 = tail call i32 %2(ptr noundef nonnull %10, ptr noundef %4) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %51 = load i16, ptr @sb_lock, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %53 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 14
  tail call void @up_write(ptr noundef %53) #10
  %54 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 48
  tail call void @list_lru_destroy(ptr noundef %54) #10
  %55 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 49
  tail call void @list_lru_destroy(ptr noundef %55) #10
  %56 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 38
  %57 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %57) #10
  %58 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 40
  tail call void @free_prealloced_shrinker(ptr noundef %58) #10
  %59 = getelementptr %struct.super_block, ptr %10, i32 0, i32 26, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %59) #10
  %60 = getelementptr %struct.super_block, ptr %10, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_free_rwsem(ptr noundef %60) #10
  %61 = getelementptr %struct.super_block, ptr %10, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %61) #10
  tail call void @kfree(ptr noundef nonnull %10) #10
  %62 = inttoptr i32 %48 to ptr
  br label %81

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 5
  store ptr %0, ptr %64, align 32
  %65 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %66 = load ptr, ptr %0, align 4
  %67 = tail call i32 @strlcpy(ptr noundef %65, ptr noundef %66, i32 noundef 32) #10
  %68 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  store ptr @super_blocks, ptr %10, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %10, ptr %68, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 23
  %71 = load ptr, ptr %7, align 4
  store volatile ptr %71, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  store volatile ptr %70, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %63
  store volatile ptr %70, ptr %7, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 23, i32 1
  store volatile ptr %7, ptr %76, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %77 = load i16, ptr @sb_lock, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %79 = tail call ptr @get_filesystem(ptr noundef %0) #10
  %80 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 40
  tail call void @register_shrinker_prepared(ptr noundef %80) #10
  br label %81

81:                                               ; preds = %75, %50, %42, %32, %26
  %82 = phi ptr [ inttoptr (i32 -16 to ptr), %26 ], [ %19, %32 ], [ %62, %50 ], [ %10, %75 ], [ inttoptr (i32 -12 to ptr), %42 ]
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drop_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_read(ptr noundef %2) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %3 = load i16, ptr @sb_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drop_super_exclusive(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_write(ptr noundef %2) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %3 = load i16, ptr @sb_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iterate_supers(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %3 = load ptr, ptr @super_blocks, align 4
  %4 = icmp eq ptr %3, @super_blocks
  br i1 %4, label %37, label %5

5:                                                ; preds = %30, %2
  %6 = phi ptr [ %32, %30 ], [ %3, %2 ]
  %7 = phi ptr [ %31, %30 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 23, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %15 = load i16, ptr @sb_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %17 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 14
  tail call void @down_read(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 13
  %19 = load ptr, ptr %18, align 64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 536870912
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void %0(ptr noundef %6, ptr noundef %1) #10
  br label %27

27:                                               ; preds = %26, %21, %11
  tail call void @up_read(ptr noundef %17) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %28 = icmp eq ptr %7, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call fastcc void @__put_super(ptr noundef nonnull %7)
  br label %30

30:                                               ; preds = %29, %27, %5
  %31 = phi ptr [ %7, %5 ], [ %6, %29 ], [ %6, %27 ]
  %32 = load ptr, ptr %6, align 4
  %33 = icmp eq ptr %32, @super_blocks
  br i1 %33, label %34, label %5

34:                                               ; preds = %30
  %35 = icmp eq ptr %31, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call fastcc void @__put_super(ptr noundef nonnull %31)
  br label %37

37:                                               ; preds = %36, %34, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %38 = load i16, ptr @sb_lock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iterate_supers_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %4 = getelementptr inbounds %struct.file_system_type, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -128
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %39, label %10

10:                                               ; preds = %31, %3
  %11 = phi ptr [ %35, %31 ], [ %7, %3 ]
  %12 = phi ptr [ %11, %31 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %16 = load i16, ptr @sb_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %18 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 14
  tail call void @down_read(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 13
  %20 = load ptr, ptr %19, align 64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 536870912
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void %1(ptr noundef nonnull %11, ptr noundef %2) #10
  br label %28

28:                                               ; preds = %27, %22, %10
  tail call void @up_read(ptr noundef %18) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %29 = icmp eq ptr %12, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call fastcc void @__put_super(ptr noundef nonnull %12)
  br label %31

31:                                               ; preds = %30, %28
  %32 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 23
  %33 = load ptr, ptr %32, align 64
  %34 = icmp eq ptr %33, null
  %35 = getelementptr i8, ptr %33, i32 -128
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %10

38:                                               ; preds = %31
  tail call fastcc void @__put_super(ptr noundef nonnull %11)
  br label %39

39:                                               ; preds = %38, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %40 = load i16, ptr @sb_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_super(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %4 = load ptr, ptr @super_blocks, align 4
  %5 = icmp eq ptr %4, @super_blocks
  br i1 %5, label %38, label %6

6:                                                ; preds = %36, %3
  %7 = phi ptr [ %37, %36 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 23, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %19 = load i16, ptr @sb_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %21 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 14
  tail call void @down_read(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13
  %23 = load ptr, ptr %22, align 64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 536870912
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25, %15
  tail call void @up_read(ptr noundef %21) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %7)
  %31 = load ptr, ptr @super_blocks, align 4
  %32 = icmp eq ptr %31, @super_blocks
  br i1 %32, label %38, label %36

33:                                               ; preds = %11, %6
  %34 = load ptr, ptr %7, align 4
  %35 = icmp eq ptr %34, @super_blocks
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %34, %33 ], [ %31, %30 ]
  br label %6

38:                                               ; preds = %33, %30, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %39 = load i16, ptr @sb_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %41

41:                                               ; preds = %38, %25, %1
  %42 = phi ptr [ null, %38 ], [ null, %1 ], [ %7, %25 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_active_super(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %15, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %4 = load ptr, ptr @super_blocks, align 4
  %5 = icmp eq ptr %4, @super_blocks
  br i1 %5, label %23, label %6

6:                                                ; preds = %20, %3
  %7 = phi ptr [ %21, %20 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 23, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @grab_super(ptr noundef %7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %3, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 14
  tail call void @up_write(ptr noundef %19) #10
  br label %26

20:                                               ; preds = %11, %6
  %21 = load ptr, ptr %7, align 4
  %22 = icmp eq ptr %21, @super_blocks
  br i1 %22, label %23, label %6

23:                                               ; preds = %20, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %24 = load i16, ptr @sb_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %26

26:                                               ; preds = %23, %18, %1
  %27 = phi ptr [ %7, %18 ], [ null, %23 ], [ null, %1 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @user_get_super(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %3 = load ptr, ptr @super_blocks, align 4
  %4 = icmp eq ptr %3, @super_blocks
  br i1 %4, label %44, label %5

5:                                                ; preds = %42, %2
  %6 = phi ptr [ %43, %42 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 23, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %18 = load i16, ptr @sb_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %20 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 14
  br i1 %1, label %21, label %22

21:                                               ; preds = %14
  tail call void @down_write(ptr noundef %20) #10
  br label %23

22:                                               ; preds = %14
  tail call void @down_read(ptr noundef %20) #10
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 13
  %25 = load ptr, ptr %24, align 64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 536870912
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 14
  br i1 %1, label %34, label %35

34:                                               ; preds = %32
  tail call void @up_write(ptr noundef %33) #10
  br label %36

35:                                               ; preds = %32
  tail call void @up_read(ptr noundef %33) #10
  br label %36

36:                                               ; preds = %35, %34
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  tail call fastcc void @__put_super(ptr noundef %6)
  %37 = load ptr, ptr @super_blocks, align 4
  %38 = icmp eq ptr %37, @super_blocks
  br i1 %38, label %44, label %42

39:                                               ; preds = %10, %5
  %40 = load ptr, ptr %6, align 4
  %41 = icmp eq ptr %40, @super_blocks
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %40, %39 ], [ %37, %36 ]
  br label %5

44:                                               ; preds = %39, %36, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %45 = load i16, ptr @sb_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %47

47:                                               ; preds = %44, %27
  %48 = phi ptr [ null, %44 ], [ %6, %27 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reconfigure_super(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -41943122
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %16 = load i32, ptr %15, align 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %105

18:                                               ; preds = %14
  %19 = and i32 %11, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = and i32 %7, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 4
  %30 = load i8, ptr %29, align 8, !range !20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 17
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 4
  %38 = load i8, ptr %37, align 8, !range !20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %105

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 12
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %105

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 46
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @shrink_dcache_sb(ptr noundef %5) #10
  br label %68

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 14
  tail call void @up_write(ptr noundef %56) #10
  tail call void @group_pin_kill(ptr noundef %51) #10
  tail call void @down_write(ptr noundef %56) #10
  %57 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13
  %58 = load ptr, ptr %57, align 64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %105, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %15, align 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %105

63:                                               ; preds = %45, %40, %24, %18
  tail call void @shrink_dcache_sb(ptr noundef %5) #10
  br label %74

64:                                               ; preds = %60
  %65 = load i32, ptr %46, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  tail call void @shrink_dcache_sb(ptr noundef %5) #10
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %54
  br i1 %9, label %71, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 43
  store i32 1, ptr %70, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !21
  br label %74

71:                                               ; preds = %68
  %72 = tail call i32 @sb_prepare_remount_readonly(ptr noundef %5) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %71, %69, %64, %63
  %75 = phi i1 [ false, %63 ], [ true, %69 ], [ true, %71 ], [ false, %64 ]
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.fs_context_operations, ptr %76, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %74
  %81 = tail call i32 %78(ptr noundef %0) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  br i1 %9, label %103, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 5
  %86 = load ptr, ptr %85, align 32
  %87 = load ptr, ptr %86, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 911, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %87, i32 noundef %81) #10
  br label %88

88:                                               ; preds = %84, %80, %74
  %89 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %10, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, ptr %6, align 4
  %95 = and i32 %94, %91
  %96 = or i32 %95, %93
  store volatile i32 %96, ptr %89, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !22
  %97 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 43
  store i32 0, ptr %97, align 4
  br i1 %75, label %98, label %105

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 20
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  tail call void @invalidate_bdev(ptr noundef nonnull %100) #10
  br label %105

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 43
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %103, %102, %98, %88, %71, %60, %55, %40, %32, %28, %14, %1
  %106 = phi i32 [ %81, %103 ], [ -22, %1 ], [ -16, %14 ], [ -13, %40 ], [ 0, %55 ], [ -16, %60 ], [ %72, %71 ], [ 0, %102 ], [ 0, %98 ], [ 0, %88 ], [ -13, %28 ], [ -13, %32 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @group_pin_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_prepare_remount_readonly(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @emergency_remount() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 16) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  store i32 -32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 2
  store ptr @do_emergency_remount, ptr %7, align 4
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef nonnull %2) #10
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_emergency_remount(ptr noundef %0) #0 {
  tail call fastcc void @__iterate_supers(ptr noundef nonnull @do_emergency_remount_callback)
  tail call void @kfree(ptr noundef %0) #10
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @emergency_thaw_all() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 16) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  store i32 -32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 2
  store ptr @do_thaw_all, ptr %7, align 4
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef nonnull %2) #10
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_thaw_all(ptr noundef %0) #0 {
  tail call fastcc void @__iterate_supers(ptr noundef nonnull @do_thaw_all_callback)
  tail call void @kfree(ptr noundef %0) #10
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_anon_bdev(ptr nocapture noundef writeonly %0) #0 {
  %2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #10
  %3 = icmp eq i32 %2, -28
  %4 = select i1 %3, i32 -24, i32 %2
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 %4, ptr %0, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 0, %6 ], [ %4, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_anon_bdev(i32 noundef %0) #0 {
  %2 = and i32 %0, 1048575
  tail call void @ida_free(ptr noundef nonnull @unnamed_dev_ida, i32 noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_anon_super(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #0 {
  %3 = tail call i32 @ida_alloc_range(ptr noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #10
  %4 = icmp eq i32 %3, -28
  %5 = select i1 %4, i32 -24, i32 %3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  store i32 %5, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %7 ], [ %5, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kill_anon_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  tail call void @generic_shutdown_super(ptr noundef %0)
  %4 = and i32 %3, 1048575
  tail call void @ida_free(ptr noundef nonnull @unnamed_dev_ida, i32 noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kill_litter_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @d_genocide(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  tail call void @generic_shutdown_super(ptr noundef %0) #10
  %9 = and i32 %8, 1048575
  tail call void @ida_free(ptr noundef nonnull @unnamed_dev_ida, i32 noundef %9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_anon_super_fc(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #0 {
  %3 = tail call i32 @ida_alloc_range(ptr noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #10
  %4 = icmp eq i32 %3, -28
  %5 = select i1 %4, i32 -24, i32 %3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  store i32 %5, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %7 ], [ %5, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_get_super(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp ult i32 %1, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1131, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds [4 x ptr], ptr @switch.table.vfs_get_super, i32 0, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @set_anon_super_fc)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %9 to i32
  br label %41

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 13
  %15 = load ptr, ptr %14, align 64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call i32 %2(ptr noundef %9, ptr noundef %0) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 1073741824
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr %14, align 64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %27) #10
  br label %28

28:                                               ; preds = %26, %20
  %29 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %24, ptr %29, align 4
  br label %41

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %15, ptr %32, align 4
  %33 = icmp eq i32 %1, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = tail call i32 @reconfigure_super(ptr noundef %0)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load ptr, ptr %32, align 4
  tail call void @dput(ptr noundef %38) #10
  store ptr null, ptr %32, align 4
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi i32 [ %35, %37 ], [ %18, %17 ]
  tail call void @deactivate_locked_super(ptr noundef %9)
  br label %41

41:                                               ; preds = %39, %34, %30, %28, %11
  %42 = phi i32 [ %12, %11 ], [ %40, %39 ], [ 0, %30 ], [ 0, %34 ], [ 0, %28 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @test_single_super(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @test_keyed_super(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tree_nodev(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef null, ptr noundef nonnull @set_anon_super_fc) #10
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = tail call i32 %1(ptr noundef %3, ptr noundef %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1073741824
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr %8, align 64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %20, %14
  %23 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %18, ptr %23, align 4
  br label %28

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %9, ptr %26, align 4
  br label %28

27:                                               ; preds = %11
  tail call void @deactivate_locked_super(ptr noundef %3) #10
  br label %28

28:                                               ; preds = %27, %24, %22, %5
  %29 = phi i32 [ %6, %5 ], [ %12, %27 ], [ 0, %24 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tree_single(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef nonnull @test_single_super, ptr noundef nonnull @set_anon_super_fc) #10
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = tail call i32 %1(ptr noundef %3, ptr noundef %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1073741824
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr %8, align 64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %20, %14
  %23 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %18, ptr %23, align 4
  br label %28

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %9, ptr %26, align 4
  br label %28

27:                                               ; preds = %11
  tail call void @deactivate_locked_super(ptr noundef %3) #10
  br label %28

28:                                               ; preds = %27, %24, %22, %5
  %29 = phi i32 [ %6, %5 ], [ %12, %27 ], [ 0, %24 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tree_single_reconf(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @vfs_get_super(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tree_keyed(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  store ptr %2, ptr %4, align 4
  %5 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef nonnull @test_keyed_super, ptr noundef nonnull @set_anon_super_fc) #10
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i32
  br label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call i32 %1(ptr noundef %5, ptr noundef %0) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %10, align 64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %23) #10
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %20, ptr %25, align 4
  br label %30

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %11, ptr %28, align 4
  br label %30

29:                                               ; preds = %13
  tail call void @deactivate_locked_super(ptr noundef %5) #10
  br label %30

30:                                               ; preds = %29, %26, %24, %7
  %31 = phi i32 [ %8, %7 ], [ %14, %29 ], [ 0, %26 ], [ 0, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tree_bdev(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 131, i32 129
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %13, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3) #10
  br label %86

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @blkdev_get_by_path(ptr noundef nonnull %9, i32 noundef %7, ptr noundef %16) #10
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %21, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.4, ptr noundef %22) #10
  %23 = ptrtoint ptr %17 to i32
  br label %86

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 19
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  tail call void @mutex_unlock(ptr noundef %25) #10
  %30 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %31, ptr noundef null, i8 noundef zeroext 119, ptr noundef nonnull @.str.5, ptr noundef %17) #10
  tail call void @blkdev_put(ptr noundef %17, i32 noundef %7) #10
  br label %86

32:                                               ; preds = %24
  %33 = load i32, ptr %3, align 4
  %34 = or i32 %33, 268435456
  store i32 %34, ptr %3, align 4
  %35 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 4
  store ptr %17, ptr %35, align 4
  %36 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef nonnull @test_bdev_super_fc, ptr noundef nonnull @set_bdev_super_fc)
  tail call void @mutex_unlock(ptr noundef %25) #10
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  tail call void @blkdev_put(ptr noundef %17, i32 noundef %7) #10
  %39 = ptrtoint ptr %36 to i32
  br label %86

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 13
  %42 = load ptr, ptr %41, align 64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %3, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, %45
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %53, ptr noundef null, i8 noundef zeroext 119, ptr noundef nonnull @.str.6, ptr noundef %17) #10
  tail call void @deactivate_locked_super(ptr noundef %36)
  tail call void @blkdev_put(ptr noundef %17, i32 noundef %7) #10
  br label %86

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 14
  tail call void @up_write(ptr noundef %55) #10
  tail call void @blkdev_put(ptr noundef %17, i32 noundef %7) #10
  tail call void @down_write(ptr noundef %55) #10
  br label %75

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 36
  store i32 %7, ptr %57, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 33
  %59 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %58, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %17)
  %60 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 19
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 1, %64
  %66 = tail call i32 @sb_set_blocksize(ptr noundef %36, i32 noundef %65) #10
  %67 = tail call i32 %1(ptr noundef %36, ptr noundef %0) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  tail call void @deactivate_locked_super(ptr noundef %36)
  br label %86

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, 1073741824
  store i32 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 8
  store ptr %36, ptr %74, align 8
  br label %75

75:                                               ; preds = %70, %54
  %76 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79, !prof !12

79:                                               ; preds = %75
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

80:                                               ; preds = %75
  %81 = load ptr, ptr %41, align 64
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %84) #10
  br label %85

85:                                               ; preds = %83, %80
  store ptr %81, ptr %76, align 4
  br label %86

86:                                               ; preds = %85, %69, %51, %38, %29, %19, %11
  %87 = phi i32 [ %23, %19 ], [ -16, %29 ], [ %39, %38 ], [ -16, %51 ], [ 0, %85 ], [ %67, %69 ], [ -22, %11 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @test_bdev_super_fc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_bdev_super_fc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.backing_dev_info, ptr %12, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !25
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !26

17:                                               ; preds = %2
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !12

21:                                               ; preds = %17, %2
  %22 = phi i32 [ 2, %2 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #10
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  store ptr %12, ptr %24, align 8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 17
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 11
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 8
  store i32 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %23
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mount_bdev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 131, i32 129
  %9 = tail call ptr @blkdev_get_by_path(ptr noundef %2, i32 noundef %8, ptr noundef %0) #10
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %67, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 19
  %14 = load i32, ptr %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %62

17:                                               ; preds = %11
  %18 = or i32 %1, 268435456
  %19 = tail call ptr @sget(ptr noundef %0, ptr noundef nonnull @test_bdev_super, ptr noundef nonnull @set_bdev_super, i32 noundef %18, ptr noundef %9)
  tail call void @mutex_unlock(ptr noundef %12) #10
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %60, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 13
  %23 = load ptr, ptr %22, align 64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %1
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void @deactivate_locked_super(ptr noundef %19)
  br label %62

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 14
  tail call void @up_write(ptr noundef %33) #10
  tail call void @blkdev_put(ptr noundef %9, i32 noundef %8) #10
  tail call void @down_write(ptr noundef %33) #10
  br label %55

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 36
  store i32 %8, ptr %35, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %9)
  %38 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 19
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  %44 = tail call i32 @sb_set_blocksize(ptr noundef %19, i32 noundef %43) #10
  %45 = lshr i32 %1, 15
  %46 = and i32 %45, 1
  %47 = tail call i32 %4(ptr noundef %19, ptr noundef %3, i32 noundef %46) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  tail call void @deactivate_locked_super(ptr noundef %19)
  br label %64

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 1073741824
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 8
  store ptr %19, ptr %54, align 8
  br label %55

55:                                               ; preds = %50, %32
  %56 = load ptr, ptr %22, align 64
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %59) #10
  br label %67

60:                                               ; preds = %17
  %61 = ptrtoint ptr %19 to i32
  br label %62

62:                                               ; preds = %60, %31, %16
  %63 = phi i32 [ -16, %16 ], [ %61, %60 ], [ -16, %31 ]
  tail call void @blkdev_put(ptr noundef %9, i32 noundef %8) #10
  br label %64

64:                                               ; preds = %62, %49
  %65 = phi i32 [ %63, %62 ], [ %47, %49 ]
  %66 = inttoptr i32 %65 to ptr
  br label %67

67:                                               ; preds = %64, %58, %55, %5
  %68 = phi ptr [ %66, %64 ], [ %9, %5 ], [ null, %55 ], [ %56, %58 ]
  ret ptr %68
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @test_bdev_super(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_bdev_super(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.backing_dev_info, ptr %10, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #10, !srcloc !14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #10, !srcloc !25
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !26

15:                                               ; preds = %2
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %15, %2
  %20 = phi i32 [ 2, %2 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  store ptr %10, ptr %22, align 8
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 17
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 11
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 8
  store i32 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %32, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kill_block_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 8
  store ptr null, ptr %6, align 8
  tail call void @generic_shutdown_super(ptr noundef %0)
  %7 = tail call i32 @sync_blockdev(ptr noundef %3) #10
  %8 = and i32 %5, 128
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @kill_block_super.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !26

13:                                               ; preds = %1
  store i1 true, ptr @kill_block_super.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1396, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %1
  %15 = or i32 %5, 128
  tail call void @blkdev_put(ptr noundef %3, i32 noundef %15) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mount_nodev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @sget(ptr noundef %0, ptr noundef null, ptr noundef nonnull @set_anon_super, i32 noundef %1, ptr noundef null)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = lshr i32 %1, 15
  %9 = and i32 %8, 1
  %10 = tail call i32 %3(ptr noundef %5, ptr noundef %2, i32 noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @deactivate_locked_super(ptr noundef %5)
  %13 = inttoptr i32 %10 to ptr
  br label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1073741824
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13
  %19 = load ptr, ptr %18, align 64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %22) #10
  br label %23

23:                                               ; preds = %21, %14, %12, %4
  %24 = phi ptr [ %13, %12 ], [ %5, %4 ], [ null, %14 ], [ %19, %21 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reconfigure_single(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 64
  %6 = tail call ptr @fs_context_for_reconfigure(ptr noundef %5, i32 noundef %1, i32 noundef 41943121) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = ptrtoint ptr %6 to i32
  br label %17

10:                                               ; preds = %3
  %11 = tail call i32 @parse_monolithic_mount_data(ptr noundef %6, ptr noundef %2) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @reconfigure_super(ptr noundef %6)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %13 ]
  tail call void @put_fs_context(ptr noundef %6) #10
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %9, %8 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_reconfigure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_monolithic_mount_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mount_single(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @sget(ptr noundef %0, ptr noundef nonnull @compare_single, ptr noundef nonnull @set_anon_super, i32 noundef %1, ptr noundef null)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = lshr i32 %1, 15
  %13 = and i32 %12, 1
  %14 = tail call i32 %3(ptr noundef %5, ptr noundef %2, i32 noundef %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %17, align 4
  br label %38

20:                                               ; preds = %7
  %21 = tail call ptr @fs_context_for_reconfigure(ptr noundef nonnull %9, i32 noundef %1, i32 noundef 41943121) #10
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %32

25:                                               ; preds = %20
  %26 = tail call i32 @parse_monolithic_mount_data(ptr noundef %21, ptr noundef %2) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @reconfigure_super(ptr noundef %21) #10
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %28 ]
  tail call void @put_fs_context(ptr noundef %21) #10
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !12

35:                                               ; preds = %32, %11
  %36 = phi i32 [ %33, %32 ], [ %14, %11 ]
  tail call void @deactivate_locked_super(ptr noundef %5)
  %37 = inttoptr i32 %36 to ptr
  br label %43

38:                                               ; preds = %32, %16
  %39 = load ptr, ptr %8, align 64
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %41, %38, %35, %4
  %44 = phi ptr [ %37, %35 ], [ %5, %4 ], [ null, %38 ], [ %39, %41 ]
  ret ptr %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @compare_single(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_get_tree(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.fs_context_operations, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %17) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1507, 0\0A.popsection", ""() #10, !srcloc !27
  unreachable

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 21
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !26

25:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1511, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %19
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !28
  %27 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 536870912
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 4
  %31 = load i64, ptr %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37, !prof !26

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1535, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %36, i64 noundef %31) #10
  br label %37

37:                                               ; preds = %33, %26, %5, %1
  %38 = phi i32 [ -16, %1 ], [ %9, %5 ], [ 0, %33 ], [ 0, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @super_setup_bdi_name(ptr nocapture noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !29
  %4 = tail call ptr @bdi_alloc(i32 noundef -1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %7 = load i32, ptr %3, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @bdi_register_va(ptr noundef nonnull %4, ptr noundef %1, [1 x i32] %8) #10
  call void @llvm.va_end(ptr nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call void @bdi_put(ptr noundef nonnull %4) #10
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, @noop_backing_dev_info
  br i1 %15, label %17, label %16, !prof !12

16:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1562, i32 noundef 9, ptr noundef null) #10
  br label %17

17:                                               ; preds = %16, %12
  store ptr %4, ptr %13, align 8
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = or i32 %19, 512
  store i32 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %17, %11, %2
  %22 = phi i32 [ %9, %11 ], [ 0, %17 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_register_va(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @super_setup_bdi(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 32
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @super_setup_bdi.bdi_seq) #10, !srcloc !14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @super_setup_bdi.bdi_seq, ptr nonnull @super_setup_bdi.bdi_seq, i32 1, ptr nonnull elementtype(i32) @super_setup_bdi.bdi_seq) #10, !srcloc !31
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %7 = tail call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %4, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freeze_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #10, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #10, !srcloc !33
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26
  %6 = load i32, ptr %5, align 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @deactivate_locked_super(ptr noundef %0)
  br label %43

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 536870912
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @up_write(ptr noundef %4) #10
  br label %43

15:                                               ; preds = %9
  %16 = and i32 %11, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 4, ptr %5, align 16
  tail call void @up_write(ptr noundef %4) #10
  br label %43

19:                                               ; preds = %15
  store i32 1, ptr %5, align 16
  tail call void @up_write(ptr noundef %4) #10
  %20 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2
  tail call void @percpu_down_write(ptr noundef %20) #10
  tail call void @down_write(ptr noundef %4) #10
  store i32 2, ptr %5, align 16
  %21 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_down_write(ptr noundef %21) #10
  %22 = tail call i32 @sync_filesystem(ptr noundef %0) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  store i32 0, ptr %5, align 16
  %25 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_up_write(ptr noundef %25) #10
  tail call void @percpu_up_write(ptr noundef %20) #10
  %26 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26, i32 1
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @deactivate_locked_super(ptr noundef %0)
  br label %43

27:                                               ; preds = %19
  store i32 3, ptr %5, align 16
  %28 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_down_write(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_operations, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = tail call i32 %32(ptr noundef %0) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  store i32 0, ptr %5, align 16
  %39 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_up_write(ptr noundef %39) #10
  %40 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_up_write(ptr noundef %40) #10
  tail call void @percpu_up_write(ptr noundef %20) #10
  %41 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26, i32 1
  tail call void @__wake_up(ptr noundef %41, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @deactivate_locked_super(ptr noundef %0)
  br label %43

42:                                               ; preds = %34, %27
  store i32 4, ptr %5, align 16
  tail call void @up_write(ptr noundef %4) #10
  br label %43

43:                                               ; preds = %42, %37, %24, %18, %14, %8
  %44 = phi i32 [ -16, %8 ], [ 0, %18 ], [ %22, %24 ], [ %35, %37 ], [ 0, %42 ], [ 0, %14 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thaw_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %2) #10
  %3 = tail call fastcc i32 @thaw_super_locked(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @thaw_super_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26
  %3 = load i32, ptr %2, align 16
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_write(ptr noundef %6) #10
  br label %31

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 0, ptr %2, align 16
  br label %29

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #11
  %24 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @up_write(ptr noundef %24) #10
  br label %31

25:                                               ; preds = %19, %13
  store i32 0, ptr %2, align 16
  %26 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26, i32 2
  %27 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void @percpu_up_write(ptr noundef %27) #10
  %28 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 1
  tail call void @percpu_up_write(ptr noundef %28) #10
  tail call void @percpu_up_write(ptr noundef %26) #10
  br label %29

29:                                               ; preds = %25, %12
  %30 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26, i32 1
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @deactivate_locked_super(ptr noundef %0)
  br label %31

31:                                               ; preds = %29, %22, %5
  %32 = phi i32 [ -22, %5 ], [ 0, %29 ], [ %20, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @destroy_super_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 8
  store i32 -32, ptr %2, align 32
  %3 = getelementptr i8, ptr %0, i32 12
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 16
  store ptr %3, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  store ptr @destroy_super_work, ptr %5, align 4
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @destroy_super_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -352
  tail call void @percpu_free_rwsem(ptr noundef %2) #10
  %3 = getelementptr i8, ptr %0, i32 -300
  tail call void @percpu_free_rwsem(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -248
  tail call void @percpu_free_rwsem(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 -736
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_free_rwsem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @super_cache_scan(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -660
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -592
  %9 = tail call i32 @down_read_trylock(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %83, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -528
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 -596
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %81, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 -608
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 536870912
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %81, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 -624
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_operations, ptr %26, i32 0, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 %28(ptr noundef %3, ptr noundef %1) #10
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %31, %30 ], [ 0, %24 ]
  %34 = getelementptr i8, ptr %0, i32 64
  %35 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @list_lru_count_one(ptr noundef %34, i32 noundef %36, ptr noundef %38) #10
  %40 = getelementptr i8, ptr %0, i32 60
  %41 = load i32, ptr %35, align 4
  %42 = load ptr, ptr %37, align 4
  %43 = tail call i32 @list_lru_count_one(ptr noundef %40, i32 noundef %41, ptr noundef %42) #10
  %44 = add i32 %33, 1
  %45 = add i32 %44, %39
  %46 = add i32 %45, %43
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 %46
  %49 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = freeze i32 %50
  %52 = freeze i32 %48
  %53 = udiv i32 %51, %52
  %54 = mul i32 %53, %52
  %55 = sub i32 %51, %54
  %56 = mul i32 %53, %43
  %57 = mul i32 %55, %43
  %58 = udiv i32 %57, %48
  %59 = mul i32 %53, %39
  %60 = mul i32 %55, %39
  %61 = udiv i32 %60, %48
  %62 = mul i32 %53, %33
  %63 = mul i32 %55, %33
  %64 = udiv i32 %63, %48
  %65 = add i32 %64, %62
  %66 = add i32 %56, 1
  %67 = add i32 %66, %58
  store i32 %67, ptr %49, align 4
  %68 = tail call i32 @prune_dcache_sb(ptr noundef %3, ptr noundef %1) #10
  %69 = add i32 %59, 1
  %70 = add i32 %69, %61
  store i32 %70, ptr %49, align 4
  %71 = tail call i32 @prune_icache_sb(ptr noundef %3, ptr noundef %1) #10
  %72 = add i32 %71, %68
  %73 = icmp eq i32 %65, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %32
  %75 = add i32 %65, 1
  store i32 %75, ptr %49, align 4
  %76 = load ptr, ptr %25, align 4
  %77 = getelementptr inbounds %struct.super_operations, ptr %76, i32 0, i32 21
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %3, ptr noundef %1) #10
  %80 = add i32 %79, %72
  br label %81

81:                                               ; preds = %74, %32, %19, %15, %11
  %82 = phi i32 [ -1, %19 ], [ -1, %15 ], [ -1, %11 ], [ %80, %74 ], [ %72, %32 ]
  tail call void @up_read(ptr noundef %8) #10
  br label %83

83:                                               ; preds = %81, %7, %2
  %84 = phi i32 [ -1, %2 ], [ -1, %7 ], [ %82, %81 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @super_cache_count(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -660
  %4 = getelementptr i8, ptr %0, i32 -608
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 536870912
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %9 = getelementptr i8, ptr %0, i32 -624
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %3, ptr noundef %1) #10
  br label %18

18:                                               ; preds = %16, %12, %8
  %19 = phi i32 [ %17, %16 ], [ 0, %12 ], [ 0, %8 ]
  %20 = getelementptr i8, ptr %0, i32 60
  %21 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @list_lru_count_one(ptr noundef %20, i32 noundef %22, ptr noundef %24) #10
  %26 = add i32 %25, %19
  %27 = getelementptr i8, ptr %0, i32 64
  %28 = load i32, ptr %21, align 4
  %29 = load ptr, ptr %23, align 4
  %30 = tail call i32 @list_lru_count_one(ptr noundef %27, i32 noundef %28, ptr noundef %29) #10
  %31 = add i32 %26, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %18
  %34 = freeze i32 %31
  %35 = udiv i32 %34, 100
  %36 = mul i32 %35, 100
  %37 = sub i32 %34, %36
  %38 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %39 = mul i32 %38, %35
  %40 = mul i32 %38, %37
  %41 = udiv i32 %40, 100
  %42 = add i32 %41, %39
  br label %43

43:                                               ; preds = %33, %18, %2
  %44 = phi i32 [ %42, %33 ], [ 0, %2 ], [ -2, %18 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prealloc_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prune_dcache_sb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prune_icache_sb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_prealloced_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__iterate_supers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %2 = load ptr, ptr @super_blocks, align 4
  %3 = icmp eq ptr %2, @super_blocks
  br i1 %3, label %25, label %4

4:                                                ; preds = %18, %1
  %5 = phi ptr [ %20, %18 ], [ %2, %1 ]
  %6 = phi ptr [ %19, %18 ], [ null, %1 ]
  %7 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 23, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %14 = load i16, ptr @sb_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void %0(ptr noundef %5) #10, !callees !35
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #10
  %16 = icmp eq ptr %6, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call fastcc void @__put_super(ptr noundef nonnull %6)
  br label %18

18:                                               ; preds = %17, %10, %4
  %19 = phi ptr [ %6, %4 ], [ %5, %17 ], [ %5, %10 ]
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, @super_blocks
  br i1 %21, label %22, label %4

22:                                               ; preds = %18
  %23 = icmp eq ptr %19, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call fastcc void @__put_super(ptr noundef nonnull %19)
  br label %25

25:                                               ; preds = %24, %22, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %26 = load i16, ptr @sb_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @sb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_emergency_remount_callback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 536870913
  %14 = icmp eq i32 %13, 536870912
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = tail call ptr @fs_context_for_reconfigure(ptr noundef nonnull %4, i32 noundef 134217729, i32 noundef 1) #10
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @parse_monolithic_mount_data(ptr noundef %16, ptr noundef null) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @reconfigure_super(ptr noundef %16)
  br label %23

23:                                               ; preds = %21, %18
  tail call void @put_fs_context(ptr noundef %16) #10
  br label %24

24:                                               ; preds = %23, %15, %10, %6, %1
  tail call void @up_write(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_thaw_all_callback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  tail call void @down_write(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 536870912
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  tail call void @emergency_thaw_bdev(ptr noundef %0) #10
  %12 = tail call fastcc i32 @thaw_super_locked(ptr noundef %0)
  br label %14

13:                                               ; preds = %6, %1
  tail call void @up_write(ptr noundef %2) #10
  br label %14

14:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_thaw_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2148968803}
!9 = !{i64 2148964627}
!10 = !{i64 2148964702, i64 2148964729, i64 2148964776, i64 2148964798, i64 2148964826, i64 2148964846}
!11 = !{i64 2148991806}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148402264}
!14 = !{i64 800199, i64 2148290170, i64 2148290196, i64 2148290243, i64 2148290265, i64 2148290293, i64 2148290313}
!15 = !{i64 2148304626, i64 2148304658, i64 2148304687, i64 2148304721, i64 2148304752, i64 2148304775}
!16 = !{i64 2148402467}
!17 = !{i64 2148301092}
!18 = !{i64 786768, i64 786793, i64 786815, i64 786831, i64 786843, i64 786863, i64 786887, i64 786903, i64 786915}
!19 = !{i64 2148301218}
!20 = !{i8 0, i8 2}
!21 = !{i64 2153506578}
!22 = !{i64 2153509519}
!23 = !{i64 2153520861, i64 2153521337, i64 2153520898, i64 2153520954, i64 2153520988, i64 2153521012, i64 2153521053, i64 2153521074, i64 2153521102, i64 2153521136}
!24 = !{i64 2153533044, i64 2153533520, i64 2153533081, i64 2153533137, i64 2153533171, i64 2153533195, i64 2153533236, i64 2153533257, i64 2153533285, i64 2153533319}
!25 = !{i64 2148303043, i64 2148303075, i64 2148303104, i64 2148303138, i64 2148303169, i64 2148303192}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2153541606, i64 2153542082, i64 2153541643, i64 2153541699, i64 2153541733, i64 2153541757, i64 2153541798, i64 2153541819, i64 2153541847, i64 2153541881}
!28 = !{i64 2153542919}
!29 = !{!"auto-init"}
!30 = !{i64 2148399431}
!31 = !{i64 2148302269, i64 2148302301, i64 2148302330, i64 2148302364, i64 2148302395, i64 2148302418}
!32 = !{i64 2148399634}
!33 = !{i64 2148301585, i64 2148301611, i64 2148301640, i64 2148301674, i64 2148301705, i64 2148301728}
!34 = !{i64 2153459028}
!35 = !{ptr @do_emergency_remount_callback, ptr @do_thaw_all_callback}
