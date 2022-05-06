; ModuleID = '/llk/IR/fs/ubifs/file.c_pt.bc'
source_filename = "../fs/ubifs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%union.anon.63 = type { i32 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.66 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.14, %union.anon.29, %struct.atomic_t }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.29 = type { %struct.atomic_t }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.file = type { %union.anon.60, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.60 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.23, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }
%struct.vm_fault = type { %struct.anon.25, i32, ptr, ptr, %union.anon.26, ptr, ptr, ptr, ptr, ptr }
%struct.anon.25 = type { ptr, i32, i32, i32 }
%union.anon.26 = type { i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ubifs_file_address_operations = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr @ubifs_writepage, ptr @ubifs_readpage, ptr null, ptr @ubifs_set_page_dirty, ptr null, ptr null, ptr @ubifs_write_begin, ptr @ubifs_write_end, ptr null, ptr @ubifs_invalidatepage, ptr @ubifs_releasepage, ptr null, ptr null, ptr @ubifs_migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ubifs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_setattr, ptr @ubifs_getattr, ptr @ubifs_listxattr, ptr null, ptr @ubifs_update_time, ptr null, ptr null, ptr null, ptr @ubifs_fileattr_set, ptr @ubifs_fileattr_get, [36 x i8] undef }, align 64
@ubifs_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @ubifs_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_setattr, ptr @ubifs_symlink_getattr, ptr @ubifs_listxattr, ptr null, ptr @ubifs_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@ubifs_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @ubifs_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_ioctl, ptr null, ptr @ubifs_file_mmap, i32 0, ptr @fscrypt_file_open, ptr null, ptr null, ptr @ubifs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [18 x i8] c"PagePrivate(page)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fs/ubifs/file.c\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot write page %lu of inode %lu, error %d\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fs/ubifs/key.h\00", align 1
@__const.release_new_page_budget.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 6, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"bu->buf_len > 0\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"bu->buf_len <= c->leb_size\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"ignoring error %d and skipping bulk-read\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"le64_to_cpu(dn->ch.sqnum) > ubifs_inode(inode)->creat_sqnum\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"bad data node (block %u, inode %lu)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"fs/ubifs/ubifs.h\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"!PageChecked(page)\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"!PagePrivate(page)\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"cannot read page %lu of inode %lu, error %d\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ret == 0\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"ubifs_inode(inode)->ui_size == inode->i_size\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"err == -ENOSPC\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"mutex_is_locked(&ui->ui_mutex)\00", align 1
@__const.allocate_budget.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@ubifs_file_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @ubifs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.ubifs_vm_page_mkwrite.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [49 x i8] c"out of space for mmapped file (inode number %lu)\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_setattr(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %92

14:                                               ; preds = %3
  %15 = tail call i32 @dbg_check_synced_i_size(ptr noundef %11, ptr noundef %7) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %92

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %17
  %24 = load i32, ptr %2, align 8
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %28 = load i64, ptr %27, align 8
  br i1 %26, label %35, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  %31 = load i64, ptr %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call fastcc i32 @do_truncation(ptr noundef %11, ptr noundef %7, ptr noundef %2)
  br label %92

35:                                               ; preds = %29, %23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %36 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %36, align 4, !annotation !8
  store i32 1048576, ptr %4, align 4
  %37 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i16
  %40 = add i16 %39, 7
  %41 = and i16 %40, 32760
  store i16 %41, ptr %36, align 4
  %42 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 2
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 3
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 4
  store i32 0, ptr %44, align 4
  %45 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %4) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %35
  %48 = load i32, ptr %2, align 8
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @truncate_setsize(ptr noundef %7, i64 noundef %28) #12
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 7
  call void @mutex_lock(ptr noundef %53) #12
  %54 = load i32, ptr %2, align 8
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %59 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %7) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %58, ptr noundef align 8 dereferenceable(16) %59, i32 16, i1 false) #12
  %60 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 11
  store i64 %61, ptr %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  call fastcc void @do_attr_changes(ptr noundef %7, ptr noundef %2) #12
  %64 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 6
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 1
  %67 = load i32, ptr %2, align 8
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 1, i32 2
  call void @__mark_inode_dirty(ptr noundef %7, i32 noundef %70) #12
  call void @mutex_unlock(ptr noundef %53) #12
  %71 = icmp eq i8 %66, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %4) #12
  br label %73

73:                                               ; preds = %72, %63
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79, %73
  %85 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.super_operations, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %88(ptr noundef %7, ptr noundef null) #12
  br label %90

90:                                               ; preds = %84, %79, %35
  %91 = phi i32 [ %45, %35 ], [ %89, %84 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %92

92:                                               ; preds = %90, %33, %17, %14, %3
  %93 = phi i32 [ %12, %3 ], [ %15, %14 ], [ -95, %17 ], [ %34, %33 ], [ %91, %90 ]
  ret i32 %93
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_synced_i_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_truncation(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 4095
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i32 16, i1 false)
  %13 = icmp eq i64 %10, 0
  %14 = select i1 %13, i32 1048576, i32 1048584
  store i32 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 1
  store i16 56, ptr %15, align 4
  %16 = call i32 @ubifs_budget_space(ptr noundef %0, ptr noundef nonnull %4) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = icmp ne i64 %9, 0
  %20 = icmp ne i32 %16, -28
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %101, label %22

22:                                               ; preds = %18, %3
  call void @truncate_setsize(ptr noundef %1, i64 noundef %9) #12
  %23 = icmp eq i32 %11, 0
  br i1 %23, label %87, label %24

24:                                               ; preds = %22
  %25 = lshr i64 %9, 12
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %28 = load ptr, ptr %27, align 8
  %29 = call ptr @pagecache_get_page(ptr noundef %28, i32 noundef %26, i32 noundef 2, i32 noundef 0) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !9

36:                                               ; preds = %31
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %31
  %39 = ptrtoint ptr %29 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %40
  %47 = load volatile i32, ptr %29, align 4
  %48 = and i32 %47, 8192
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51, !prof !10

50:                                               ; preds = %46
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1159) #12
  br label %51

51:                                               ; preds = %50, %46
  %52 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %29) #12
  %53 = call fastcc i32 @do_writepage(ptr noundef nonnull %29, i32 noundef %11)
  %54 = load volatile i32, ptr %32, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !9

57:                                               ; preds = %51
  %58 = add i32 %54, -1
  br label %61

59:                                               ; preds = %51
  %60 = ptrtoint ptr %29 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #12, !srcloc !12
  %65 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #12, !srcloc !13
  %66 = extractvalue { i32, i32 } %65, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  call void @__put_page(ptr noundef %63) #12
  br label %69

69:                                               ; preds = %68, %61
  %70 = icmp eq i32 %53, 0
  br i1 %70, label %87, label %94

71:                                               ; preds = %40
  call void @unlock_page(ptr noundef nonnull %29) #12
  %72 = load volatile i32, ptr %32, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !9

75:                                               ; preds = %71
  %76 = add i32 %72, -1
  br label %79

77:                                               ; preds = %71
  %78 = ptrtoint ptr %29 to i32
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #12, !srcloc !12
  %83 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #12, !srcloc !13
  %84 = extractvalue { i32, i32 } %83, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  call void @__put_page(ptr noundef %81) #12
  br label %87

87:                                               ; preds = %86, %79, %69, %24, %22
  %88 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %88) #12
  %89 = load i64, ptr %6, align 8
  %90 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %92 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %1) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %92, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %91, ptr noundef align 8 dereferenceable(16) %92, i32 16, i1 false)
  call fastcc void @do_attr_changes(ptr noundef %1, ptr noundef %2)
  %93 = call i32 @ubifs_jnl_truncate(ptr noundef %0, ptr noundef %1, i64 noundef %7, i64 noundef %9) #12
  call void @mutex_unlock(ptr noundef %88) #12
  br label %94

94:                                               ; preds = %87, %69
  %95 = phi i32 [ %93, %87 ], [ %53, %69 ]
  br i1 %17, label %96, label %97

96:                                               ; preds = %94
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %4) #12
  br label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 6
  %99 = load i8, ptr %98, align 4
  %100 = and i8 %99, -4
  store i8 %100, ptr %98, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !15
  br label %101

101:                                              ; preds = %97, %96, %18
  %102 = phi i32 [ %16, %18 ], [ %95, %97 ], [ %95, %96 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %11, i32 0, i32 81
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = tail call i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %20) #12
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22, %19
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_operations, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %7, ptr noundef null) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27, %22
  %36 = tail call i32 @ubifs_sync_wbufs_by_inode(ptr noundef %11, ptr noundef %7) #12
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi i32 [ %33, %27 ], [ %36, %35 ]
  tail call void @up_write(ptr noundef %20) #12
  br label %39

39:                                               ; preds = %37, %16, %4
  %40 = phi i32 [ %38, %37 ], [ 0, %4 ], [ %17, %16 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sync_wbufs_by_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_update_time(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @generic_update_time(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  ret i32 %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_update_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_writepage(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 22
  %11 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  br label %12

12:                                               ; preds = %20, %2
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %13, %12 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %22 = load i64, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %23 = load volatile i32, ptr %10, align 4
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %25, label %12

25:                                               ; preds = %20
  %26 = lshr i64 %22, 12
  %27 = trunc i64 %26 to i32
  %28 = trunc i64 %22 to i32
  %29 = and i32 %28, 4095
  %30 = load volatile i32, ptr %0, align 4
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1017) #12
  br label %34

34:                                               ; preds = %33, %25
  %35 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %27
  br i1 %37, label %87, label %38

38:                                               ; preds = %34
  %39 = icmp ne i32 %36, %27
  %40 = icmp ne i32 %29, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %43) #12
  %44 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 10
  %45 = load i64, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  %46 = load i16, ptr %43, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %48 = load i32, ptr %35, align 4
  %49 = icmp ult i32 %48, %27
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = zext i32 %48 to i64
  %52 = ashr i64 %45, 12
  %53 = icmp sgt i64 %52, %51
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.super_operations, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %5, ptr noundef null) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %54, %50
  %63 = tail call fastcc i32 @do_writepage(ptr noundef %0, i32 noundef 4096)
  br label %89

64:                                               ; preds = %42
  %65 = load i32, ptr @pgprot_kernel, align 4
  %66 = or i32 %65, 512
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %67 = tail call ptr @llvm.thread.pointer() #12
  %68 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 149
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %71 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %66) #12
  %72 = getelementptr i8, ptr %71, i32 %29
  %73 = sub nuw nsw i32 4096, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %73, i1 false)
  tail call void @flush_dcache_page(ptr noundef %0) #12
  tail call void @kunmap_local_indexed(ptr noundef %71) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %74 = load i32, ptr %68, align 8
  %75 = add i32 %74, -1
  store i32 %75, ptr %68, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %76 = icmp sgt i64 %22, %45
  br i1 %76, label %77, label %85

77:                                               ; preds = %64
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.super_operations, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef %5, ptr noundef null) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77, %64
  %86 = tail call fastcc i32 @do_writepage(ptr noundef %0, i32 noundef %29)
  br label %89

87:                                               ; preds = %77, %54, %38, %34
  %88 = phi i32 [ %60, %54 ], [ %83, %77 ], [ 0, %38 ], [ 0, %34 ]
  tail call void @unlock_page(ptr noundef %0) #12
  br label %89

89:                                               ; preds = %87, %85, %62
  %90 = phi i32 [ %88, %87 ], [ %63, %62 ], [ %86, %85 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  store i32 %12, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 30
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %222, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 7
  %21 = tail call i32 @mutex_trylock(ptr noundef %20) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %222, label %23

23:                                               ; preds = %19
  %24 = add i32 %14, 1
  %25 = icmp eq i32 %12, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 14
  store i32 1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %220, label %32

32:                                               ; preds = %26
  %33 = and i8 %29, -5
  store i8 %33, ptr %28, align 4
  br label %220

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 6
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 14
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %220, label %44

44:                                               ; preds = %39
  %45 = or i8 %36, 4
  store i8 %45, ptr %35, align 4
  br label %46

46:                                               ; preds = %44, %34
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 49
  %48 = tail call i32 @mutex_trylock(ptr noundef %47) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 50
  br label %58

52:                                               ; preds = %46
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 11328, i32 noundef 800) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %220, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bu_info, ptr %54, i32 0, i32 2
  store ptr null, ptr %57, align 8
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %51, %50 ], [ %54, %56 ]
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 48
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.bu_info, ptr %59, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %11, align 4
  %66 = icmp ult i32 %65, 536870912
  br i1 %66, label %68, label %67, !prof !9

67:                                               ; preds = %58
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 270) #12
  br label %68

68:                                               ; preds = %67, %58
  store i32 %64, ptr %59, align 8
  %69 = or i32 %65, 536870912
  %70 = getelementptr [2 x i32], ptr %59, i32 0, i32 1
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %11, align 4
  %72 = load ptr, ptr %4, align 4
  %73 = load ptr, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %74 = getelementptr inbounds %struct.bu_info, ptr %59, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  %77 = getelementptr inbounds %struct.address_space, ptr %72, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -73857
  %80 = or i32 %79, 73728
  %81 = tail call i32 @ubifs_tnc_get_bu_keys(ptr noundef %10, ptr noundef %59) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %210

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.bu_info, ptr %59, i32 0, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 14
  store i32 1, ptr %88, align 8
  %89 = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 6
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, -5
  store i8 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = getelementptr inbounds %struct.bu_info, ptr %59, i32 0, i32 6
  %94 = load i32, ptr %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %212, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bu_info, ptr %59, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %96
  br i1 %76, label %101, label %125

101:                                              ; preds = %100
  %102 = add i32 %98, -1
  %103 = getelementptr %struct.bu_info, ptr %59, i32 0, i32 1, i32 %102, i32 3
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr %struct.bu_info, ptr %59, i32 0, i32 1, i32 %102, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, %104
  %108 = getelementptr inbounds %struct.bu_info, ptr %59, i32 0, i32 1, i32 0, i32 3
  %109 = load i32, ptr %108, align 8
  %110 = sub i32 %107, %109
  store i32 %110, ptr %62, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %114, !prof !10

112:                                              ; preds = %101
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 759) #12
  %113 = load i32, ptr %62, align 4
  br label %114

114:                                              ; preds = %112, %101
  %115 = phi i32 [ %110, %101 ], [ %113, %112 ]
  %116 = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 75
  %117 = load i32, ptr %116, align 8
  %118 = icmp sgt i32 %115, %117
  br i1 %118, label %119, label %121, !prof !10

119:                                              ; preds = %114
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 760) #12
  %120 = load i32, ptr %62, align 4
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi i32 [ %120, %119 ], [ %115, %114 ]
  %123 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %122, i32 noundef 11328) #14
  store ptr %123, ptr %74, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %212, label %125

125:                                              ; preds = %121, %100
  %126 = tail call i32 @ubifs_tnc_bulk_read(ptr noundef %10, ptr noundef %59) #12
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %210

128:                                              ; preds = %125, %96
  %129 = call fastcc i32 @populate_page(ptr noundef %10, ptr noundef %1, ptr noundef %59, ptr noundef nonnull %3) #12
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %210

131:                                              ; preds = %128
  tail call void @unlock_page(ptr noundef %1) #12
  %132 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 22
  %133 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 13
  br label %134

134:                                              ; preds = %142, %131
  %135 = load volatile i32, ptr %132, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %138, %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %139 = load volatile i32, ptr %132, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %138

142:                                              ; preds = %138, %134
  %143 = phi i32 [ %135, %134 ], [ %139, %138 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %144 = load i64, ptr %133, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %145 = load volatile i32, ptr %132, align 4
  %146 = icmp eq i32 %145, %143
  br i1 %146, label %147, label %134

147:                                              ; preds = %142
  %148 = icmp eq i64 %144, 0
  br i1 %148, label %206, label %149

149:                                              ; preds = %147
  %150 = add i64 %144, 17592186044415
  %151 = lshr i64 %150, 12
  %152 = trunc i64 %151 to i32
  %153 = icmp sgt i32 %94, 1
  br i1 %153, label %154, label %201

154:                                              ; preds = %198, %149
  %155 = phi i32 [ %199, %198 ], [ 1, %149 ]
  %156 = add i32 %155, %71
  %157 = icmp ugt i32 %156, %152
  br i1 %157, label %201, label %158

158:                                              ; preds = %154
  %159 = tail call ptr @pagecache_get_page(ptr noundef %72, i32 noundef %156, i32 noundef 39, i32 noundef %80) #12
  %160 = icmp eq ptr %159, null
  br i1 %160, label %201, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.page, ptr %159, i32 0, i32 1
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166, !prof !9

166:                                              ; preds = %161
  %167 = add i32 %163, -1
  br label %170

168:                                              ; preds = %161
  %169 = ptrtoint ptr %159 to i32
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = inttoptr i32 %171 to ptr
  %173 = load volatile i32, ptr %172, align 4
  %174 = and i32 %173, 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %170
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  br label %179

177:                                              ; preds = %170
  %178 = call fastcc i32 @populate_page(ptr noundef %10, ptr noundef nonnull %159, ptr noundef %59, ptr noundef nonnull %3) #12
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi i32 [ 0, %176 ], [ %178, %177 ]
  tail call void @unlock_page(ptr noundef nonnull %159) #12
  %181 = load volatile i32, ptr %162, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184, !prof !9

184:                                              ; preds = %179
  %185 = add i32 %181, -1
  br label %188

186:                                              ; preds = %179
  %187 = ptrtoint ptr %159 to i32
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = inttoptr i32 %189 to ptr
  %191 = getelementptr inbounds %struct.page, ptr %190, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %191) #12, !srcloc !12
  %192 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %191, ptr %191, i32 1, ptr elementtype(i32) %191) #12, !srcloc !13
  %193 = extractvalue { i32, i32 } %192, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  tail call void @__put_page(ptr noundef %190) #12
  br label %196

196:                                              ; preds = %195, %188
  %197 = icmp eq i32 %180, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  %199 = add nuw nsw i32 %155, 1
  %200 = icmp eq i32 %199, %94
  br i1 %200, label %201, label %154

201:                                              ; preds = %198, %196, %158, %154, %149
  %202 = phi i32 [ 1, %149 ], [ %155, %196 ], [ %155, %158 ], [ %155, %154 ], [ %94, %198 ]
  %203 = add i32 %71, -1
  %204 = add i32 %203, %202
  %205 = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 13
  store i32 %204, ptr %205, align 4
  br label %206

206:                                              ; preds = %212, %210, %201, %147
  %207 = phi i1 [ true, %212 ], [ true, %210 ], [ false, %201 ], [ false, %147 ]
  br i1 %76, label %208, label %217

208:                                              ; preds = %206
  %209 = load ptr, ptr %74, align 8
  tail call void @kfree(ptr noundef %209) #12
  br label %217

210:                                              ; preds = %128, %125, %68
  %211 = phi i32 [ %81, %68 ], [ %126, %125 ], [ %129, %128 ]
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef %211) #12
  br label %206

212:                                              ; preds = %121, %92
  %213 = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 6
  %214 = load i8, ptr %213, align 4
  %215 = and i8 %214, -5
  store i8 %215, ptr %213, align 4
  %216 = getelementptr inbounds %struct.ubifs_inode, ptr %73, i32 0, i32 14
  store i32 0, ptr %216, align 8
  br label %206

217:                                              ; preds = %208, %206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br i1 %49, label %219, label %218

218:                                              ; preds = %217
  tail call void @mutex_unlock(ptr noundef %47) #12
  br label %221

219:                                              ; preds = %217
  tail call void @kfree(ptr noundef %59) #12
  br label %221

220:                                              ; preds = %52, %39, %32, %26
  tail call void @mutex_unlock(ptr noundef %20) #12
  br label %222

221:                                              ; preds = %219, %218
  tail call void @mutex_unlock(ptr noundef %20) #12
  br i1 %207, label %222, label %224

222:                                              ; preds = %221, %220, %19, %2
  %223 = tail call fastcc i32 @do_readpage(ptr noundef %1)
  tail call void @unlock_page(ptr noundef %1) #12
  br label %224

224:                                              ; preds = %222, %221
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_set_page_dirty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %0) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1459) #12
  br label %12

12:                                               ; preds = %11, %1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_write_begin(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readnone %6) #0 {
  %8 = alloca %struct.ubifs_budget_req, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = lshr i64 %2, 12
  %15 = trunc i64 %14 to i32
  %16 = zext i32 %3 to i64
  %17 = add i64 %16, %2
  %18 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %19 = load i64, ptr %18, align 8
  %20 = icmp sgt i64 %17, %19
  %21 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 11
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %19
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %7
  tail call void @ubifs_assert_failed(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 433) #12
  br label %25

25:                                               ; preds = %24, %7
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %13, i32 0, i32 81
  %27 = load i8, ptr %26, align 8
  %28 = and i8 %27, 3
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 434) #12
  %31 = load i8, ptr %26, align 8
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i8 [ %31, %30 ], [ %27, %25 ]
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %144, !prof !9

36:                                               ; preds = %32
  %37 = tail call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %15, i32 noundef %4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %144, label %39, !prof !10

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !9

44:                                               ; preds = %39
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %37 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  br label %92

55:                                               ; preds = %48
  %56 = and i64 %2, 4095
  %57 = icmp eq i64 %56, 0
  %58 = icmp eq i32 %3, 4096
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @_set_bit(i32 noundef 10, ptr noundef nonnull %37) #12
  br label %80

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @do_readpage(ptr noundef nonnull %37)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  tail call void @unlock_page(ptr noundef nonnull %37) #12
  %65 = load volatile i32, ptr %40, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !9

68:                                               ; preds = %64
  %69 = add i32 %65, -1
  br label %72

70:                                               ; preds = %64
  %71 = ptrtoint ptr %37 to i32
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #12, !srcloc !12
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #12, !srcloc !13
  %77 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %72
  tail call void @__put_page(ptr noundef %74) #12
  br label %144

80:                                               ; preds = %61, %60
  %81 = phi i32 [ 1, %60 ], [ 0, %61 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !29
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %37) #12
  %82 = load volatile i32, ptr %40, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85, !prof !9

85:                                               ; preds = %80
  %86 = add i32 %82, -1
  br label %89

87:                                               ; preds = %80
  %88 = ptrtoint ptr %37 to i32
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = inttoptr i32 %90 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %91) #12
  br label %92

92:                                               ; preds = %89, %54
  %93 = phi i32 [ 0, %54 ], [ %81, %89 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) @__const.allocate_budget.req, i32 20, i1 false) #12
  %94 = load volatile i32, ptr %37, align 4
  %95 = and i32 %94, 8192
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  br i1 %20, label %98, label %118

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %99) #12
  %100 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 6
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  store i32 1048577, ptr %8, align 4
  br label %119

105:                                              ; preds = %92
  %106 = load volatile i32, ptr %37, align 4
  %107 = and i32 %106, 1024
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 9, i32 5
  store i32 %109, ptr %8, align 4
  br i1 %20, label %110, label %119

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 6
  %113 = load i8, ptr %112, align 4
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = or i32 %109, 1048576
  store i32 %117, ptr %8, align 4
  br label %119

118:                                              ; preds = %98, %97
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #12
  br label %143

119:                                              ; preds = %116, %110, %105, %104
  %120 = call i32 @ubifs_budget_space(ptr noundef %13, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #12
  switch i32 %120, label %121 [
    i32 0, label %143
    i32 -28, label %122
  ], !prof !30

121:                                              ; preds = %119
  call void @ubifs_assert_failed(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 473) #12
  br label %122

122:                                              ; preds = %121, %119
  %123 = icmp eq i32 %93, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %122
  call void @_clear_bit(i32 noundef 10, ptr noundef nonnull %37) #12
  %125 = load volatile i32, ptr %40, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !9

128:                                              ; preds = %124
  %129 = add i32 %125, -1
  br label %132

130:                                              ; preds = %124
  %131 = ptrtoint ptr %37 to i32
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = inttoptr i32 %133 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %134) #12
  br label %135

135:                                              ; preds = %132, %122
  br i1 %20, label %136, label %141

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 7
  %138 = call zeroext i1 @mutex_is_locked(ptr noundef %137) #12
  br i1 %138, label %140, label %139, !prof !9

139:                                              ; preds = %136
  call void @ubifs_assert_failed(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 490) #12
  br label %140

140:                                              ; preds = %139, %136
  call void @mutex_unlock(ptr noundef %137) #12
  br label %141

141:                                              ; preds = %140, %135
  call void @unlock_page(ptr noundef nonnull %37) #12
  call fastcc void @put_page(ptr noundef nonnull %37)
  %142 = call fastcc i32 @write_begin_slow(ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %5, i32 noundef %4)
  br label %144

143:                                              ; preds = %119, %118
  store ptr %37, ptr %5, align 4
  br label %144

144:                                              ; preds = %143, %141, %79, %72, %36, %32
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ], [ -30, %32 ], [ -12, %36 ], [ %62, %72 ], [ %62, %79 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_write_end(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) #0 {
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = zext i32 %3 to i64
  %14 = add i64 %13, %2
  %15 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %16 = load i64, ptr %15, align 8
  %17 = icmp sgt i64 %14, %16
  %18 = icmp eq i32 %3, 4096
  %19 = icmp ult i32 %4, 4096
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %24, !prof !10

21:                                               ; preds = %7
  %22 = zext i1 %17 to i32
  tail call fastcc void @cancel_budget(ptr noundef %12, ptr noundef %5, ptr noundef %8, i32 noundef %22)
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %5) #12
  %23 = tail call fastcc i32 @do_readpage(ptr noundef %5)
  br label %44

24:                                               ; preds = %7
  %25 = load volatile i32, ptr %5, align 4
  %26 = and i32 %25, 8192
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  tail call void @_set_bit(i32 noundef 13, ptr noundef %5) #12
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 82
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #12, !srcloc !12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #12, !srcloc !31
  %31 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %5) #12
  br label %32

32:                                               ; preds = %28, %24
  br i1 %17, label %33, label %44

33:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %34 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !33
  store i64 %14, ptr %15, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !34
  %37 = load i32, ptr %34, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %39 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 11
  store i64 %14, ptr %39, align 8
  tail call void @__mark_inode_dirty(ptr noundef %8, i32 noundef 2) #12
  %40 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 7
  %41 = tail call zeroext i1 @mutex_is_locked(ptr noundef %40) #12
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 587) #12
  br label %43

43:                                               ; preds = %42, %33
  tail call void @mutex_unlock(ptr noundef %40) #12
  br label %44

44:                                               ; preds = %43, %32, %21
  %45 = phi i32 [ %23, %21 ], [ %4, %43 ], [ %4, %32 ]
  tail call void @unlock_page(ptr noundef %5) #12
  %46 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !9

50:                                               ; preds = %44
  %51 = add i32 %47, -1
  br label %54

52:                                               ; preds = %44
  %53 = ptrtoint ptr %5 to i32
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #12, !srcloc !12
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #12, !srcloc !13
  %59 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  tail call void @__put_page(ptr noundef %56) #12
  br label %62

62:                                               ; preds = %61, %54
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ubifs_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = load volatile i32, ptr %0, align 4
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1296) #12
  br label %17

17:                                               ; preds = %16, %3
  %18 = icmp ne i32 %1, 0
  %19 = icmp ult i32 %2, 4096
  %20 = or i1 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load volatile i32, ptr %0, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.release_new_page_budget.req, i32 20, i1 false) #12
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  br label %30

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %27 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 4
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 87, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false) #12
  %29 = load i32, ptr %28, align 8
  store i32 %29, ptr %27, align 4
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %30

30:                                               ; preds = %26, %25
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 82
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #12, !srcloc !12
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #12, !srcloc !36
  call void @_clear_bit(i32 noundef 13, ptr noundef %0) #12
  call void @_clear_bit(i32 noundef 10, ptr noundef %0) #12
  br label %33

33:                                               ; preds = %30, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_releasepage(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !9

14:                                               ; preds = %2
  %15 = add i32 %11, -1
  br label %18

16:                                               ; preds = %2
  %17 = ptrtoint ptr %0 to i32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = inttoptr i32 %19 to ptr
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load volatile i32, ptr %0, align 4
  %26 = and i32 %25, 8192
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !10

28:                                               ; preds = %24
  tail call void @ubifs_assert_failed(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1497) #12
  br label %29

29:                                               ; preds = %28, %24
  tail call void @ubifs_assert_failed(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1498) #12
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %0) #12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %0) #12
  br label %30

30:                                               ; preds = %29, %18
  %31 = phi i32 [ 1, %29 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @migrate_page_move_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %2) #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %1) #12
  br label %12

12:                                               ; preds = %11, %7
  %13 = icmp eq i32 %3, 3
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @migrate_page_copy(ptr noundef %1, ptr noundef %2) #12
  br label %16

15:                                               ; preds = %12
  tail call void @migrate_page_states(ptr noundef %1, ptr noundef %2) #12
  br label %16

16:                                               ; preds = %15, %14, %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @ubifs_get_link(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  br label %14

11:                                               ; preds = %3
  %12 = icmp eq ptr %0, null
  %13 = select i1 %12, ptr inttoptr (i32 -10 to ptr), ptr inttoptr (i32 -95 to ptr)
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %10, %8 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_symlink_getattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call i32 @ubifs_getattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #12
  %7 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 -95
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_write_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12, !annotation !8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 15
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 15, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, %14
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 16, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, %19
  br i1 %30, label %53, label %31

31:                                               ; preds = %27, %23, %17, %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %32, align 4, !annotation !8
  store i32 1048576, ptr %4, align 4
  %33 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 15
  %34 = load i32, ptr %33, align 4
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, 7
  %37 = and i16 %36, 32760
  store i16 %37, ptr %32, align 4
  %38 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 2
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 3
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = call i32 @ubifs_budget_space(ptr noundef %12, ptr noundef nonnull %4) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 7
  call void @mutex_lock(ptr noundef %44) #12
  %45 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %8) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef align 8 dereferenceable(16) %45, i32 16, i1 false) #12
  %46 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 1
  call void @__mark_inode_dirty(ptr noundef %8, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %44) #12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %53

51:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %53

52:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %55

53:                                               ; preds = %51, %50, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %54 = call i32 @generic_file_write_iter(ptr noundef %0, ptr noundef %1) #12
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ %54, %53 ], [ %41, %52 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_file_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @generic_file_mmap(ptr noundef %0, ptr noundef %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @ubifs_file_vm_ops, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fscrypt_file_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 -95
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_writepage(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ubifs_budget_req, align 4
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @set_page_writeback(ptr noundef %0) #12
  %14 = load i32, ptr %0, align 4
  %15 = lshr i32 %14, 30
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = icmp ne i32 %15, 3
  %19 = load i32, ptr @movable_zone, align 4
  %20 = icmp ne i32 %19, 2
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call ptr @page_address(ptr noundef %0) #12
  br label %26

24:                                               ; preds = %17, %2
  %25 = tail call ptr @kmap_high(ptr noundef %0) #12
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @llvm.smin.i32(i32 %1, i32 4096)
  %33 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %29, 536870912
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 270) #12
  br label %37

37:                                               ; preds = %36, %31
  store i32 %34, ptr %5, align 8
  %38 = or i32 %29, 536870912
  %39 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = call i32 @ubifs_jnl_write_data(ptr noundef %12, ptr noundef %8, ptr noundef nonnull %5, ptr noundef %27, i32 noundef %32) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !9

47:                                               ; preds = %42
  %48 = add i32 %44, -1
  br label %51

49:                                               ; preds = %42
  %50 = ptrtoint ptr %0 to i32
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = inttoptr i32 %52 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %53) #12
  %54 = load i32, ptr %28, align 4
  %55 = load i32, ptr %33, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef %54, i32 noundef %55, i32 noundef %40) #12
  call void @ubifs_ro_mode(ptr noundef %12, i32 noundef %40) #12
  br label %56

56:                                               ; preds = %51, %37, %26
  %57 = phi i32 [ 0, %37 ], [ %40, %51 ], [ 0, %26 ]
  %58 = load volatile i32, ptr %0, align 4
  %59 = and i32 %58, 8192
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62, !prof !10

61:                                               ; preds = %56
  call void @ubifs_assert_failed(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 943) #12
  br label %62

62:                                               ; preds = %61, %56
  %63 = load volatile i32, ptr %0, align 4
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @__const.release_new_page_budget.req, i32 20, i1 false) #12
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %71

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %68 = getelementptr inbounds %struct.ubifs_budget_req, ptr %3, i32 0, i32 4
  %69 = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 87, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false) #12
  %70 = load i32, ptr %69, align 8
  store i32 %70, ptr %68, align 4
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %71

71:                                               ; preds = %67, %66
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 82
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #12, !srcloc !12
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #12, !srcloc !36
  call void @_clear_bit(i32 noundef 13, ptr noundef %0) #12
  call void @_clear_bit(i32 noundef 10, ptr noundef %0) #12
  %74 = load i32, ptr %0, align 4
  %75 = lshr i32 %74, 30
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = icmp ne i32 %75, 3
  %79 = load i32, ptr @movable_zone, align 4
  %80 = icmp ne i32 %79, 2
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %71
  call void @kunmap_high(ptr noundef %0) #12
  br label %83

83:                                               ; preds = %82, %77
  call void @unlock_page(ptr noundef %0) #12
  call void @end_page_writeback(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %57
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !13
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #12
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_attr_changes(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr %1, align 8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ %3, %2 ]
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 8
  %19 = load i32, ptr %1, align 8
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ %19, %15 ], [ %12, %11 ]
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %26 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false)
  %27 = load i32, ptr %1, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %27, %24 ], [ %21, %20 ]
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %34 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %33, ptr noundef align 8 dereferenceable(16) %34, i32 16, i1 false)
  %35 = load i32, ptr %1, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %35, %32 ], [ %29, %28 ]
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %42 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef align 8 dereferenceable(16) %42, i32 16, i1 false)
  %43 = load i32, ptr %1, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %43, %40 ], [ %37, %36 ]
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = insertvalue [1 x i32] undef, i32 %52, 0
  %54 = tail call i32 @in_group_p([1 x i32] %53) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = tail call zeroext i1 @capable(i32 noundef 4) #12
  %58 = and i16 %50, -1025
  %59 = select i1 %57, i16 %50, i16 %58
  br label %60

60:                                               ; preds = %56, %48
  %61 = phi i16 [ %50, %48 ], [ %59, %56 ]
  store i16 %61, ptr %0, align 8
  br label %62

62:                                               ; preds = %60, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_truncate(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_write_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_readpage(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ubifs_key, align 8
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %13

13:                                               ; preds = %21, %1
  %14 = load volatile i32, ptr %11, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %18 = load volatile i32, ptr %11, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %14, %13 ], [ %18, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %23 = load i64, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %24 = load volatile i32, ptr %11, align 4
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %26, label %13

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %0, align 4
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 111) #12
  br label %31

31:                                               ; preds = %30, %26
  %32 = load volatile i32, ptr %0, align 4
  %33 = and i32 %32, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !9

35:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 112) #12
  %36 = load i32, ptr %0, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ %32, %31 ]
  %39 = lshr i32 %38, 30
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = icmp ne i32 %39, 3
  %43 = load i32, ptr @movable_zone, align 4
  %44 = icmp ne i32 %43, 2
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = tail call ptr @page_address(ptr noundef %0) #12
  br label %50

48:                                               ; preds = %41, %37
  %49 = tail call ptr @kmap_high(ptr noundef %0) #12
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %49, %48 ], [ %47, %46 ]
  %52 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = add i64 %23, 4095
  %55 = lshr i64 %54, 12
  %56 = trunc i64 %55 to i32
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  tail call void @_set_bit(i32 noundef 10, ptr noundef %0) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %51, i8 0, i32 4096, i1 false)
  br label %139

59:                                               ; preds = %50
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3136, i32 noundef 4144) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %159, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 27
  %66 = load ptr, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %67 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %53, 536870912
  br i1 %69, label %71, label %70, !prof !9

70:                                               ; preds = %63
  tail call void @ubifs_assert_failed(ptr noundef %66, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 270) #12
  br label %71

71:                                               ; preds = %70, %63
  store i32 %68, ptr %3, align 8
  %72 = or i32 %53, 536870912
  %73 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  %74 = call i32 @ubifs_tnc_locate(ptr noundef %66, ptr noundef nonnull %3, ptr noundef nonnull %61, ptr noundef null, ptr noundef null) #12
  switch i32 %74, label %130 [
    i32 0, label %76
    i32 -2, label %75
  ]

75:                                               ; preds = %71
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %51, i8 0, i32 4096, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @_set_bit(i32 noundef 10, ptr noundef %0) #12
  br label %138

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ubifs_ch, ptr %61, i32 0, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 1
  %80 = load i64, ptr %79, align 8
  %81 = icmp ugt i64 %78, %80
  br i1 %81, label %83, label %82, !prof !9

82:                                               ; preds = %76
  call void @ubifs_assert_failed(ptr noundef %66, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 63) #12
  br label %83

83:                                               ; preds = %82, %76
  %84 = getelementptr inbounds %struct.ubifs_data_node, ptr %61, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, -4097
  %87 = icmp ult i32 %86, -4096
  br i1 %87, label %115, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  call void @ubifs_assert_failed(ptr noundef %96, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 2129) #12
  br label %115

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.ubifs_ch, ptr %61, i32 0, i32 3
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, -48
  store i32 4096, ptr %2, align 4
  %101 = getelementptr inbounds %struct.ubifs_data_node, ptr %61, i32 0, i32 5
  %102 = getelementptr inbounds %struct.ubifs_data_node, ptr %61, i32 0, i32 3
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = call i32 @ubifs_decompress(ptr noundef %66, ptr noundef %101, i32 noundef %100, ptr noundef %51, ptr noundef nonnull %2, i32 noundef %104) #12
  %106 = icmp eq i32 %105, 0
  %107 = load i32, ptr %2, align 4
  %108 = icmp eq i32 %85, %107
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = icmp ult i32 %85, 4096
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = getelementptr i8, ptr %51, i32 %85
  %114 = sub nuw nsw i32 4096, %85
  call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %114, i1 false) #12
  br label %117

115:                                              ; preds = %97, %93, %83
  %116 = load i32, ptr %67, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %66, ptr noundef nonnull @.str.9, i32 noundef %53, i32 noundef %116) #12
  call void @ubifs_dump_node(ptr noundef %66, ptr noundef nonnull %61, i32 noundef 4144) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %131

117:                                              ; preds = %112, %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %118 = add nuw i32 %53, 1
  %119 = icmp eq i32 %118, %56
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i32, ptr %84, align 8
  %122 = trunc i64 %23 to i32
  %123 = and i32 %122, 4095
  %124 = icmp ne i32 %123, 0
  %125 = icmp sgt i32 %121, %123
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = getelementptr i8, ptr %51, i32 %123
  %129 = sub i32 %121, %123
  call void @llvm.memset.p0.i32(ptr align 1 %128, i8 0, i32 %129, i1 false)
  br label %138

130:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %131

131:                                              ; preds = %130, %115
  %132 = phi i32 [ -22, %115 ], [ %74, %130 ]
  %133 = load ptr, ptr %7, align 4
  %134 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 27
  %135 = load ptr, ptr %134, align 4
  %136 = load i32, ptr %52, align 4
  %137 = load i32, ptr %67, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %135, ptr noundef nonnull @.str.14, i32 noundef %136, i32 noundef %137, i32 noundef %132) #12
  br label %159

138:                                              ; preds = %127, %120, %117, %75
  call void @kfree(ptr noundef nonnull %61) #12
  br label %139

139:                                              ; preds = %138, %58
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !29
  call void @_set_bit(i32 noundef 2, ptr noundef %0) #12
  %140 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144, !prof !9

144:                                              ; preds = %139
  %145 = add i32 %141, -1
  br label %148

146:                                              ; preds = %139
  %147 = ptrtoint ptr %0 to i32
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = inttoptr i32 %149 to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %150) #12
  call void @flush_dcache_page(ptr noundef %0) #12
  %151 = load i32, ptr %0, align 4
  %152 = lshr i32 %151, 30
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %190, label %154

154:                                              ; preds = %148
  %155 = icmp ne i32 %152, 3
  %156 = load i32, ptr @movable_zone, align 4
  %157 = icmp ne i32 %156, 2
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %192, label %190

159:                                              ; preds = %131, %59
  %160 = phi i32 [ %132, %131 ], [ -12, %59 ]
  call void @kfree(ptr noundef %61) #12
  %161 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165, !prof !9

165:                                              ; preds = %159
  %166 = add i32 %162, -1
  br label %169

167:                                              ; preds = %159
  %168 = ptrtoint ptr %0 to i32
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = inttoptr i32 %170 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %171) #12
  %172 = load volatile i32, ptr %161, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175, !prof !9

175:                                              ; preds = %169
  %176 = add i32 %172, -1
  br label %179

177:                                              ; preds = %169
  %178 = ptrtoint ptr %0 to i32
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = inttoptr i32 %180 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %181) #12
  call void @flush_dcache_page(ptr noundef %0) #12
  %182 = load i32, ptr %0, align 4
  %183 = lshr i32 %182, 30
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = icmp ne i32 %183, 3
  %187 = load i32, ptr @movable_zone, align 4
  %188 = icmp ne i32 %187, 2
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %192, label %190

190:                                              ; preds = %185, %179, %154, %148
  %191 = phi i32 [ 0, %154 ], [ 0, %148 ], [ %160, %185 ], [ %160, %179 ]
  call void @kunmap_high(ptr noundef %0) #12
  br label %192

192:                                              ; preds = %190, %185, %154
  %193 = phi i32 [ 0, %154 ], [ %160, %185 ], [ %191, %190 ]
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_get_bu_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_bulk_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @populate_page(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr inbounds %struct.bu_info, ptr %2, i32 0, i32 1, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %13 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  br label %14

14:                                               ; preds = %22, %4
  %15 = load volatile i32, ptr %12, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %19 = load volatile i32, ptr %12, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %15, %14 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %24 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %25 = load volatile i32, ptr %12, align 4
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %27, label %14

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 4
  %29 = lshr i32 %28, 30
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = icmp ne i32 %29, 3
  %33 = load i32, ptr @movable_zone, align 4
  %34 = icmp ne i32 %33, 2
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = tail call ptr @page_address(ptr noundef %1) #12
  br label %40

38:                                               ; preds = %31, %27
  %39 = tail call ptr @kmap_high(ptr noundef %1) #12
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi ptr [ %39, %38 ], [ %37, %36 ]
  %42 = add i64 %24, 17592186044415
  %43 = lshr i64 %42, 12
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i64 %24, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, %44
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bu_info, ptr %2, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %53 = icmp slt i32 %6, %52
  br i1 %53, label %57, label %55

54:                                               ; preds = %46, %40
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %41, i8 0, i32 4096, i1 false)
  br label %134

55:                                               ; preds = %114, %50
  %56 = phi i32 [ %6, %50 ], [ %52, %114 ]
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %41, i8 0, i32 4096, i1 false)
  br label %118

57:                                               ; preds = %114, %50
  %58 = phi i32 [ %115, %114 ], [ %6, %50 ]
  %59 = getelementptr %struct.bu_info, ptr %2, i32 0, i32 1, i32 %58
  %60 = getelementptr [2 x i32], ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 536870911
  %63 = icmp eq i32 %62, %48
  br i1 %63, label %64, label %112

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.bu_info, ptr %2, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr %struct.bu_info, ptr %2, i32 0, i32 1, i32 %58, i32 3
  %68 = load i32, ptr %67, align 8
  %69 = sub i32 %68, %8
  %70 = getelementptr i8, ptr %66, i32 %69
  %71 = getelementptr inbounds %struct.ubifs_ch, ptr %70, i32 0, i32 2
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr inbounds %struct.ubifs_inode, ptr %11, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = icmp ugt i64 %72, %74
  br i1 %75, label %77, label %76, !prof !9

76:                                               ; preds = %64
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 641) #12
  br label %77

77:                                               ; preds = %76, %64
  %78 = getelementptr inbounds %struct.ubifs_data_node, ptr %70, i32 0, i32 2
  %79 = load i32, ptr %78, align 1
  %80 = add i32 %79, -4097
  %81 = icmp ult i32 %80, -4096
  br i1 %81, label %159, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ubifs_ch, ptr %70, i32 0, i32 3
  %84 = load i32, ptr %83, align 1
  store i32 4096, ptr %5, align 4
  %85 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 16384
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 27
  %93 = load ptr, ptr %92, align 4
  call void @ubifs_assert_failed(ptr noundef %93, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 2129) #12
  br label %159

94:                                               ; preds = %82
  %95 = add i32 %84, -48
  %96 = getelementptr inbounds %struct.ubifs_data_node, ptr %70, i32 0, i32 5
  %97 = getelementptr inbounds %struct.ubifs_data_node, ptr %70, i32 0, i32 3
  %98 = load i16, ptr %97, align 1
  %99 = zext i16 %98 to i32
  %100 = call i32 @ubifs_decompress(ptr noundef %0, ptr noundef %96, i32 noundef %95, ptr noundef %41, ptr noundef nonnull %5, i32 noundef %99) #12
  %101 = icmp eq i32 %100, 0
  %102 = load i32, ptr %5, align 4
  %103 = icmp eq i32 %79, %102
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %159

105:                                              ; preds = %94
  %106 = icmp ult i32 %79, 4096
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = getelementptr i8, ptr %41, i32 %79
  %109 = sub nuw nsw i32 4096, %79
  call void @llvm.memset.p0.i32(ptr align 1 %108, i8 0, i32 %109, i1 false)
  br label %110

110:                                              ; preds = %107, %105
  %111 = add nsw i32 %58, 1
  br label %118

112:                                              ; preds = %57
  %113 = icmp ult i32 %62, %48
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = add nsw i32 %58, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %116 = icmp eq i32 %115, %52
  br i1 %116, label %55, label %57

117:                                              ; preds = %112
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %41, i8 0, i32 4096, i1 false)
  br label %118

118:                                              ; preds = %117, %110, %55
  %119 = phi i32 [ %56, %55 ], [ %111, %110 ], [ %58, %117 ]
  %120 = phi i1 [ false, %55 ], [ true, %110 ], [ false, %117 ]
  %121 = phi i32 [ 0, %55 ], [ %79, %110 ], [ 0, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %122 = load i32, ptr %47, align 4
  %123 = icmp eq i32 %122, %44
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = trunc i64 %24 to i32
  %126 = and i32 %125, 4095
  %127 = icmp ne i32 %126, 0
  %128 = icmp ugt i32 %121, %126
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = getelementptr i8, ptr %41, i32 %126
  %132 = sub nsw i32 %121, %126
  call void @llvm.memset.p0.i32(ptr align 1 %131, i8 0, i32 %132, i1 false)
  br label %133

133:                                              ; preds = %130, %124, %118
  br i1 %120, label %136, label %134

134:                                              ; preds = %133, %54
  %135 = phi i32 [ %6, %54 ], [ %119, %133 ]
  call void @_set_bit(i32 noundef 10, ptr noundef %1) #12
  br label %136

136:                                              ; preds = %134, %133
  %137 = phi i32 [ %135, %134 ], [ %119, %133 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !29
  call void @_set_bit(i32 noundef 2, ptr noundef %1) #12
  %138 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142, !prof !9

142:                                              ; preds = %136
  %143 = add i32 %139, -1
  br label %146

144:                                              ; preds = %136
  %145 = ptrtoint ptr %1 to i32
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = inttoptr i32 %147 to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %148) #12
  call void @flush_dcache_page(ptr noundef %1) #12
  %149 = load i32, ptr %1, align 4
  %150 = lshr i32 %149, 30
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %157, label %152

152:                                              ; preds = %146
  %153 = icmp ne i32 %150, 3
  %154 = load i32, ptr @movable_zone, align 4
  %155 = icmp ne i32 %154, 2
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %152, %146
  call void @kunmap_high(ptr noundef %1) #12
  br label %158

158:                                              ; preds = %157, %152
  store i32 %137, ptr %3, align 4
  br label %193

159:                                              ; preds = %94, %89, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %160 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164, !prof !9

164:                                              ; preds = %159
  %165 = add i32 %161, -1
  br label %168

166:                                              ; preds = %159
  %167 = ptrtoint ptr %1 to i32
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = inttoptr i32 %169 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %170) #12
  %171 = load volatile i32, ptr %160, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174, !prof !9

174:                                              ; preds = %168
  %175 = add i32 %171, -1
  br label %178

176:                                              ; preds = %168
  %177 = ptrtoint ptr %1 to i32
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = inttoptr i32 %179 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %180) #12
  call void @flush_dcache_page(ptr noundef %1) #12
  %181 = load i32, ptr %1, align 4
  %182 = lshr i32 %181, 30
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = icmp ne i32 %182, 3
  %186 = load i32, ptr @movable_zone, align 4
  %187 = icmp ne i32 %186, 2
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %190, label %189

189:                                              ; preds = %184, %178
  call void @kunmap_high(ptr noundef %1) #12
  br label %190

190:                                              ; preds = %189, %184
  %191 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 10
  %192 = load i32, ptr %191, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %48, i32 noundef %192) #12
  br label %193

193:                                              ; preds = %190, %158
  %194 = phi i32 [ 0, %158 ], [ -22, %190 ]
  ret i32 %194
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_begin_slow(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ubifs_budget_req, align 4
  %7 = alloca %struct.ubifs_budget_req, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = lshr i64 %1, 12
  %14 = trunc i64 %13 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_vm_page_mkwrite.req, i32 20, i1 false)
  %15 = zext i32 %2 to i64
  %16 = add i64 %15, %1
  %17 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %18 = load i64, ptr %17, align 8
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1048580, ptr %7, align 4
  br label %21

21:                                               ; preds = %20, %5
  %22 = call i32 @ubifs_budget_space(ptr noundef %12, ptr noundef nonnull %7) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %100, !prof !9

24:                                               ; preds = %21
  %25 = call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef %14, i32 noundef %4) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %24
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %7) #12
  br label %100

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !9

33:                                               ; preds = %28
  %34 = add i32 %30, -1
  br label %37

35:                                               ; preds = %28
  %36 = ptrtoint ptr %25 to i32
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = inttoptr i32 %38 to ptr
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  br label %81

44:                                               ; preds = %37
  %45 = and i64 %1, 4095
  %46 = icmp eq i64 %45, 0
  %47 = icmp eq i32 %2, 4096
  %48 = and i1 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  call void @_set_bit(i32 noundef 10, ptr noundef nonnull %25) #12
  br label %70

50:                                               ; preds = %44
  %51 = call fastcc i32 @do_readpage(ptr noundef nonnull %25)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  call void @unlock_page(ptr noundef nonnull %25) #12
  %54 = load volatile i32, ptr %29, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !9

57:                                               ; preds = %53
  %58 = add i32 %54, -1
  br label %61

59:                                               ; preds = %53
  %60 = ptrtoint ptr %25 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #12, !srcloc !12
  %65 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #12, !srcloc !13
  %66 = extractvalue { i32, i32 } %65, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  call void @__put_page(ptr noundef %63) #12
  br label %69

69:                                               ; preds = %68, %61
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %7) #12
  br label %100

70:                                               ; preds = %50, %49
  call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !29
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %25) #12
  %71 = load volatile i32, ptr %29, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !9

74:                                               ; preds = %70
  %75 = add i32 %71, -1
  br label %78

76:                                               ; preds = %70
  %77 = ptrtoint ptr %25 to i32
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = inttoptr i32 %79 to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %80) #12
  br label %81

81:                                               ; preds = %78, %43
  %82 = load volatile i32, ptr %25, align 4
  %83 = and i32 %82, 8192
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @__const.release_new_page_budget.req, i32 20, i1 false) #12
  call void @ubifs_release_budget(ptr noundef %12, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br label %91

86:                                               ; preds = %81
  %87 = load volatile i32, ptr %25, align 4
  %88 = and i32 %87, 1024
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void @ubifs_convert_page_budget(ptr noundef %12) #12
  br label %91

91:                                               ; preds = %90, %86, %85
  br i1 %19, label %92, label %99

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 7
  call void @mutex_lock(ptr noundef %93) #12
  %94 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 6
  %95 = load i8, ptr %94, align 4
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  call void @ubifs_release_dirty_inode_budget(ptr noundef %12, ptr noundef %8) #12
  br label %99

99:                                               ; preds = %98, %92, %91
  store ptr %25, ptr %3, align 4
  br label %100

100:                                              ; preds = %99, %69, %27, %21
  %101 = phi i32 [ -12, %27 ], [ 0, %99 ], [ %51, %69 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #12
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_convert_page_budget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_dirty_inode_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cancel_budget(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = alloca %struct.ubifs_budget_req, align 4
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @ubifs_release_dirty_inode_budget(ptr noundef %0, ptr noundef %2) #12
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %16

16:                                               ; preds = %14, %4
  %17 = load volatile i32, ptr %1, align 4
  %18 = and i32 %17, 8192
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load volatile i32, ptr %1, align 4
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @__const.release_new_page_budget.req, i32 20, i1 false) #12
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br label %29

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  %26 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 4
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false) #12
  %28 = load i32, ptr %27, align 8
  store i32 %28, ptr %26, align 4
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  br label %29

29:                                               ; preds = %25, %24, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page_move_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_states(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_vm_page_mkwrite(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.ubifs_budget_req, align 4
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %12) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_vm_page_mkwrite.req, i32 20, i1 false)
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %16, i32 0, i32 81
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21, !prof !9

21:                                               ; preds = %1
  call void @ubifs_assert_failed(ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1519) #12
  %22 = load i8, ptr %17, align 8
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i8 [ %22, %21 ], [ %18, %1 ]
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %127, !prof !9

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 15
  %29 = load i64, ptr %28, align 8
  %30 = load i64, ptr %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 15, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, %29
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16, i32 1
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, %34
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %38, %32, %27
  store i32 1048580, ptr %4, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i1 [ false, %46 ], [ true, %42 ]
  %49 = call i32 @ubifs_budget_space(ptr noundef %16, ptr noundef nonnull %4) #12
  switch i32 %49, label %127 [
    i32 0, label %53
    i32 -28, label %50
  ], !prof !37

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %52) #12
  br label %127

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !9

58:                                               ; preds = %53
  %59 = add i32 %55, -1
  br label %62

60:                                               ; preds = %53
  %61 = ptrtoint ptr %7 to i32
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = inttoptr i32 %63 to ptr
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #12, !srcloc !12
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #12, !srcloc !38
  %70 = extractvalue { i32, i32, i32 } %69, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !39
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68, %62
  call void @__folio_lock(ptr noundef %64) #12
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %126, !prof !9

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 22
  %85 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  br label %86

86:                                               ; preds = %94, %80
  %87 = load volatile i32, ptr %84, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %90, %86
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %91 = load volatile i32, ptr %84, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %90

94:                                               ; preds = %90, %86
  %95 = phi i32 [ %87, %86 ], [ %91, %90 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %96 = load i64, ptr %85, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %97 = load volatile i32, ptr %84, align 4
  %98 = icmp eq i32 %97, %95
  br i1 %98, label %99, label %86

99:                                               ; preds = %94
  %100 = shl nuw nsw i64 %83, 12
  %101 = icmp sgt i64 %100, %96
  br i1 %101, label %126, label %102, !prof !10

102:                                              ; preds = %99
  %103 = load volatile i32, ptr %7, align 4
  %104 = and i32 %103, 8192
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.release_new_page_budget.req, i32 20, i1 false) #12
  call void @ubifs_release_budget(ptr noundef %16, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %116

107:                                              ; preds = %102
  %108 = load volatile i32, ptr %7, align 4
  %109 = and i32 %108, 1024
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  call void @ubifs_convert_page_budget(ptr noundef %16) #12
  br label %112

112:                                              ; preds = %111, %107
  call void @_set_bit(i32 noundef 13, ptr noundef %7) #12
  %113 = getelementptr inbounds %struct.ubifs_info, ptr %16, i32 0, i32 82
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #12, !srcloc !12
  %114 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #12, !srcloc !31
  %115 = call i32 @__set_page_dirty_nobuffers(ptr noundef %7) #12
  br label %116

116:                                              ; preds = %112, %106
  br i1 %48, label %125, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.ubifs_inode, ptr %12, i32 0, i32 7
  call void @mutex_lock(ptr noundef %118) #12
  %119 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %12) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %119, i32 16, i1 false)
  %120 = getelementptr inbounds %struct.ubifs_inode, ptr %12, i32 0, i32 6
  %121 = load i8, ptr %120, align 4
  %122 = and i8 %121, 1
  call void @__mark_inode_dirty(ptr noundef %12, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %118) #12
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  call void @ubifs_release_dirty_inode_budget(ptr noundef %16, ptr noundef %12) #12
  br label %125

125:                                              ; preds = %124, %117, %116
  call void @wait_for_stable_page(ptr noundef %7) #12
  br label %127

126:                                              ; preds = %99, %74
  call void @unlock_page(ptr noundef %7) #12
  call void @ubifs_release_budget(ptr noundef %16, ptr noundef nonnull %4) #12
  br label %127

127:                                              ; preds = %126, %125, %50, %47, %23
  %128 = phi i32 [ 2, %126 ], [ 512, %125 ], [ 2, %23 ], [ 2, %47 ], [ 2, %50 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148104637}
!12 = !{i64 501799, i64 2147991770, i64 2147991796, i64 2147991843, i64 2147991865, i64 2147991893, i64 2147991913}
!13 = !{i64 2148007023, i64 2148007055, i64 2148007084, i64 2148007118, i64 2148007149, i64 2148007172}
!14 = !{i64 2148104840}
!15 = !{i64 2153901700}
!16 = !{i64 2151404707}
!17 = !{i64 2151404549}
!18 = !{i64 2151404851}
!19 = !{i64 2149599094}
!20 = !{i64 2149120670}
!21 = !{i64 2149116494}
!22 = !{i64 2149116569, i64 2149116596, i64 2149116643, i64 2149116665, i64 2149116693, i64 2149116713}
!23 = !{i64 2149143673}
!24 = !{i64 2152583885}
!25 = !{i64 2151088231}
!26 = !{i64 2151088438}
!27 = !{i64 2152590571}
!28 = !{i64 2150287477}
!29 = !{i64 2150288498}
!30 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!31 = !{i64 2148003982, i64 2148004008, i64 2148004037, i64 2148004071, i64 2148004102, i64 2148004125}
!32 = !{i64 2151406489}
!33 = !{i64 2149599393}
!34 = !{i64 2149599694}
!35 = !{i64 2151414047}
!36 = !{i64 2148006339, i64 2148006365, i64 2148006394, i64 2148006428, i64 2148006459, i64 2148006482}
!37 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!38 = !{i64 2148012444, i64 2148012476, i64 2148012505, i64 2148012539, i64 2148012570, i64 2148012593}
!39 = !{i64 2148113760}
