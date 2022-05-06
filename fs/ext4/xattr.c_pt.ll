; ModuleID = '/llk/IR/fs/ext4/xattr.c_pt.bc'
source_filename = "../fs/ext4/xattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.ext4_xattr_ibody_find = type { %struct.ext4_xattr_search, %struct.ext4_iloc }
%struct.ext4_xattr_search = type { ptr, ptr, ptr, ptr, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.ext4_xattr_block_find = type { %struct.ext4_xattr_search, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i8, i8, i16, i32, i32, i32, [0 x i8] }
%struct.anon.87 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_xattr_header = type { i32, i32, i32, i32, i32, [3 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { i64 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_xattr_info = type { ptr, ptr, i32, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.41 }
%struct.llist_node = type { ptr }
%union.anon.41 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mb_cache_entry = type { %struct.list_head, %struct.hlist_bl_node, %struct.atomic_t, i32, i8, i64 }
%struct.jbd2_journal_handle = type { %union.anon.86, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.86 = type { ptr }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ext4_xattr_inode_array = type { i32, [0 x ptr] }

@ext4_xattr_user_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_trusted_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_hurd_handler = external dso_local constant %struct.xattr_handler, align 4
@ext4_xattr_handlers = dso_local local_unnamed_addr global [4 x ptr] [ptr @ext4_xattr_user_handler, ptr @ext4_xattr_trusted_handler, ptr @ext4_xattr_hurd_handler, ptr null], align 4
@__func__.ext4_xattr_ibody_get = private unnamed_addr constant [21 x i8] c"ext4_xattr_ibody_get\00", align 1
@__func__.ext4_get_inode_usage = private unnamed_addr constant [21 x i8] c"ext4_get_inode_usage\00", align 1
@__func__.ext4_xattr_ibody_find = private unnamed_addr constant [22 x i8] c"ext4_xattr_ibody_find\00", align 1
@__const.ext4_xattr_set_handle.is = private unnamed_addr constant %struct.ext4_xattr_ibody_find { %struct.ext4_xattr_search { ptr null, ptr null, ptr null, ptr null, i32 -61 }, %struct.ext4_iloc zeroinitializer }, align 4
@__const.ext4_xattr_set_handle.bs = private unnamed_addr constant %struct.ext4_xattr_block_find { %struct.ext4_xattr_search { ptr null, ptr null, ptr null, ptr null, i32 -61 }, ptr null }, align 4
@ext4_xattr_set_handle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"fs/ext4/xattr.c\00", align 1
@__func__.ext4_xattr_set = private unnamed_addr constant [15 x i8] c"ext4_xattr_set\00", align 1
@ext4_expand_extra_isize_ea.mnt_count = internal unnamed_addr global i32 0, align 4
@__func__.ext4_expand_extra_isize_ea = private unnamed_addr constant [27 x i8] c"ext4_expand_extra_isize_ea\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Unable to expand inode %lu. Delete some EAs or run e2fsck.\00", align 1
@__func__.ext4_xattr_delete_inode = private unnamed_addr constant [24 x i8] c"ext4_xattr_delete_inode\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ensure credits (error %d)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"inode loc (error %d)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"write access (error %d)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"block %llu read error\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"mark inode dirty (error %d)\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"corrupted in-inode xattr\00", align 1
@__func__.xattr_find_entry = private unnamed_addr constant [17 x i8] c"xattr_find_entry\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"corrupted xattr entries\00", align 1
@__func__.ext4_xattr_inode_get = private unnamed_addr constant [21 x i8] c"ext4_xattr_inode_get\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"ea_inode file size=%llu entry size=%zu\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"EA inode hash validation failed\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.ext4_xattr_block_get = private unnamed_addr constant [21 x i8] c"ext4_xattr_block_get\00", align 1
@__func__.ext4_xattr_ibody_list = private unnamed_addr constant [22 x i8] c"ext4_xattr_ibody_list\00", align 1
@ext4_xattr_handler_map = internal unnamed_addr constant [11 x ptr] [ptr null, ptr @ext4_xattr_user_handler, ptr null, ptr null, ptr @ext4_xattr_trusted_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext4_xattr_hurd_handler], align 4
@__func__.ext4_xattr_block_list = private unnamed_addr constant [22 x i8] c"ext4_xattr_block_list\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"corrupted xattr block %llu\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__func__.ext4_xattr_set_entry = private unnamed_addr constant [21 x i8] c"ext4_xattr_set_entry\00", align 1
@ext4_xattr_set_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"dec ref new_ea_inode err=%d\00", align 1
@ext4_xattr_inode_cache_find.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_inode_cache_find = private unnamed_addr constant [28 x i8] c"ext4_xattr_inode_cache_find\00", align 1
@ext4_xattr_inode_update_ref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"EA inode %lu ref_count=%lld\00", align 1
@ext4_xattr_inode_update_ref.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"EA inode %lu i_nlink=%u\00", align 1
@ext4_xattr_inode_update_ref.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ext4_xattr_inode_update_ref.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_inode_update_ref = private unnamed_addr constant [28 x i8] c"ext4_xattr_inode_update_ref\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"ext4_mark_iloc_dirty() failed ret=%d\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ext4_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_file_operations = external dso_local constant %struct.file_operations, align 4
@__func__.ext4_xattr_inode_create = private unnamed_addr constant [24 x i8] c"ext4_xattr_inode_create\00", align 1
@__func__.ext4_xattr_inode_write = private unnamed_addr constant [23 x i8] c"ext4_xattr_inode_write\00", align 1
@ext4_xattr_inode_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"ext4_getblk() return bh = NULL\00", align 1
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_xattr_get_block = private unnamed_addr constant [21 x i8] c"ext4_xattr_get_block\00", align 1
@__func__.ext4_xattr_block_find = private unnamed_addr constant [22 x i8] c"ext4_xattr_block_find\00", align 1
@__func__.ext4_xattr_block_set = private unnamed_addr constant [21 x i8] c"ext4_xattr_block_set\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"dec ref error=%d\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"bad block %llu\00", align 1
@__func__.ext4_xattr_block_cache_find = private unnamed_addr constant [28 x i8] c"ext4_xattr_block_cache_find\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"block %lu read error\00", align 1
@__func__.ext4_xattr_inode_inc_ref_all = private unnamed_addr constant [29 x i8] c"ext4_xattr_inode_inc_ref_all\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"inc ref error %d\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"cleanup ea_ino %u iget error %d\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"cleanup dec ref error %d\00", align 1
@__func__.ext4_xattr_update_super_block = private unnamed_addr constant [30 x i8] c"ext4_xattr_update_super_block\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__func__.ext4_xattr_inode_dec_ref_all = private unnamed_addr constant [29 x i8] c"ext4_xattr_inode_dec_ref_all\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Expand inode array err=%d\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Ensure credits err=%d\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Re-get write access err=%d\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"ea_inode dec ref err=%d\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"handle dirty metadata err=%d\00", align 1
@__func__.ext4_xattr_restart_fn = private unnamed_addr constant [22 x i8] c"ext4_xattr_restart_fn\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Handle metadata (error %d)\00", align 1
@__func__.ext4_xattr_inode_iget = private unnamed_addr constant [22 x i8] c"ext4_xattr_inode_iget\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"error while reading EA inode %lu err=%d\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"error while reading EA inode %lu is_bad_inode\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"EA inode %lu does not have EXT4_EA_INODE_FL flag\00", align 1
@__func__.ext4_xattr_release_block = private unnamed_addr constant [25 x i8] c"ext4_xattr_release_block\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_ibody_get(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -128
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %96, label %11

11:                                               ; preds = %5
  %12 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %6) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_iloc, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr i8, ptr %20, i32 128
  %22 = getelementptr i8, ptr %0, i32 476
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %20, i32 %31
  %33 = call fastcc i32 @__xattr_check_inode(ptr noundef %0, ptr noundef %25, ptr noundef %32, ptr noundef nonnull @__func__.ext4_xattr_ibody_get, i32 noundef 593)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %14
  %36 = getelementptr %struct.ext4_xattr_ibody_header, ptr %25, i32 1
  %37 = icmp eq ptr %2, null
  br i1 %37, label %91, label %38

38:                                               ; preds = %35
  %39 = call i32 @strlen(ptr noundef nonnull %2) #13
  %40 = load i32, ptr %36, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %91, label %42

42:                                               ; preds = %64, %38
  %43 = phi i32 [ %65, %64 ], [ %40, %38 ]
  %44 = phi ptr [ %48, %64 ], [ %36, %38 ]
  %45 = and i32 %43, 255
  %46 = add nuw nsw i32 %45, 19
  %47 = and i32 %46, 508
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = icmp ult ptr %48, %32
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8) #13
  br label %91

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = sub i32 %1, %54
  %56 = icmp eq i32 %54, %1
  %57 = sub i32 %39, %45
  %58 = select i1 %56, i32 %57, i32 %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 6
  %62 = call i32 @bcmp(ptr nonnull %2, ptr %61, i32 %39)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60, %51
  %65 = load i32, ptr %48, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %91, label %42

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 16777216
  br i1 %70, label %91, label %71, !prof !9

71:                                               ; preds = %67
  %72 = icmp eq ptr %3, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %71
  %74 = icmp ugt i32 %69, %4
  br i1 %74, label %91, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = call fastcc i32 @ext4_xattr_inode_get(ptr noundef %0, ptr noundef %44, ptr noundef nonnull %3, i32 noundef %69)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %91

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 2
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %36, i32 %85
  %87 = getelementptr i8, ptr %86, i32 %69
  %88 = icmp ugt ptr %87, %32
  br i1 %88, label %91, label %89, !prof !9

89:                                               ; preds = %82
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 1 %86, i32 %69, i1 false)
  br label %90

90:                                               ; preds = %89, %79, %71
  br label %91

91:                                               ; preds = %90, %82, %79, %73, %67, %64, %50, %38, %35, %14
  %92 = phi i32 [ %33, %14 ], [ -34, %67 ], [ -34, %73 ], [ %80, %79 ], [ %69, %90 ], [ -34, %82 ], [ -61, %38 ], [ -22, %35 ], [ -117, %50 ], [ -61, %64 ]
  %93 = load ptr, ptr %6, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @__brelse(ptr noundef nonnull %93) #13
  br label %96

96:                                               ; preds = %95, %91, %11, %5
  %97 = phi i32 [ -61, %5 ], [ %12, %11 ], [ %92, %91 ], [ %92, %95 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret i32 %97
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__xattr_check_inode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %2 to i32
  %7 = ptrtoint ptr %1 to i32
  %8 = sub i32 %6, %7
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %71, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 4
  %12 = icmp eq i32 %11, -368967680
  br i1 %12, label %13, label %71

13:                                               ; preds = %10
  %14 = getelementptr %struct.ext4_xattr_ibody_header, ptr %1, i32 1
  br label %15

15:                                               ; preds = %32, %13
  %16 = phi ptr [ %14, %13 ], [ %30, %32 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, ptr %14, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = ptrtoint ptr %14 to i32
  %24 = sub i32 %6, %23
  %25 = getelementptr i8, ptr %16, i32 4
  br label %36

26:                                               ; preds = %15
  %27 = and i32 %17, 255
  %28 = add nuw nsw i32 %27, 19
  %29 = and i32 %28, 508
  %30 = getelementptr i8, ptr %16, i32 %29
  %31 = icmp ult ptr %30, %2
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %16, i32 0, i32 6
  %34 = tail call i32 @strnlen(ptr noundef %33, i32 noundef %27) #13
  %35 = icmp eq i32 %34, %27
  br i1 %35, label %15, label %71

36:                                               ; preds = %64, %22
  %37 = phi i32 [ %20, %22 ], [ %69, %64 ]
  %38 = phi ptr [ %14, %22 ], [ %68, %64 ]
  %39 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 16777216
  br i1 %41, label %71, label %42

42:                                               ; preds = %36
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %38, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %38, i32 0, i32 2
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp slt i32 %24, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %14, i32 %51
  %55 = icmp ult ptr %54, %25
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = ptrtoint ptr %54 to i32
  %58 = sub i32 %6, %57
  %59 = icmp ugt i32 %40, %58
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = add nuw nsw i32 %40, 3
  %62 = and i32 %61, -4
  %63 = icmp ugt i32 %62, %58
  br i1 %63, label %71, label %64

64:                                               ; preds = %60, %44, %42
  %65 = and i32 %37, 255
  %66 = add nuw nsw i32 %65, 19
  %67 = and i32 %66, 508
  %68 = getelementptr i8, ptr %38, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %36

71:                                               ; preds = %60, %56, %53, %48, %36, %32, %26, %10, %5
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.7) #13
  br label %72

72:                                               ; preds = %71, %64, %19
  %73 = phi i32 [ -117, %71 ], [ 0, %19 ], [ 0, %64 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_get(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.anon.87, align 8
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 126
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %0, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store ptr null, ptr %6, align 4
  br label %118

20:                                               ; preds = %4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 22
  %23 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 13
  br label %24

24:                                               ; preds = %32, %20
  %25 = load volatile i32, ptr %22, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !11
  %29 = load volatile i32, ptr %22, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %25, %24 ], [ %29, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %34 = load i64, ptr %23, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %35 = load volatile i32, ptr %22, align 4
  %36 = icmp eq i32 %35, %33
  br i1 %36, label %37, label %24

37:                                               ; preds = %32
  %38 = zext i32 %3 to i64
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %48, %37
  %41 = load volatile i32, ptr %22, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !11
  %45 = load volatile i32, ptr %22, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %41, %40 ], [ %45, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %50 = load i64, ptr %23, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %51 = load volatile i32, ptr %22, align 4
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %53, label %40

53:                                               ; preds = %48
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %21, ptr noundef nonnull @__func__.ext4_xattr_inode_get, i32 noundef 485, ptr noundef nonnull @.str.9, i64 noundef %50, i32 noundef %3) #13
  br label %118

54:                                               ; preds = %37
  %55 = tail call fastcc i32 @ext4_xattr_inode_read(ptr noundef %21, ptr noundef %2, i32 noundef %3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %118

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %21, i32 -128
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %118

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 27
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 120
  %68 = load i32, ptr %67, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !8
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 119
  %70 = load ptr, ptr %69, align 8
  %71 = load i32, ptr %70, align 64
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %74, label %73, !prof !14

73:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

74:                                               ; preds = %62
  store ptr %70, ptr %5, align 8
  %75 = getelementptr inbounds %struct.anon.87, ptr %5, i32 0, i32 1
  store i32 %68, ptr %75, align 8
  %76 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78, !prof !14

78:                                               ; preds = %74
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

79:                                               ; preds = %74
  %80 = load i32, ptr %75, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %81 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 14
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = icmp eq ptr %1, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %85
  %88 = load i8, ptr %1, align 4
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = zext i8 %88 to i32
  %92 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %1, i32 0, i32 6
  br label %99

93:                                               ; preds = %99, %87
  %94 = phi i32 [ 0, %87 ], [ %108, %99 ]
  %95 = call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 16) #13
  %96 = xor i32 %95, %80
  %97 = load i32, ptr %15, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %111, label %110

99:                                               ; preds = %99, %90
  %100 = phi i32 [ %108, %99 ], [ 0, %90 ]
  %101 = phi i32 [ %103, %99 ], [ %91, %90 ]
  %102 = phi ptr [ %105, %99 ], [ %92, %90 ]
  %103 = add nsw i32 %101, -1
  %104 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 5) #13
  %105 = getelementptr i8, ptr %102, i32 1
  %106 = load i8, ptr %102, align 1
  %107 = zext i8 %106 to i32
  %108 = xor i32 %104, %107
  %109 = icmp eq i32 %103, 0
  br i1 %109, label %93, label %99

110:                                              ; preds = %93, %79
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %21, ptr noundef nonnull @__func__.ext4_xattr_inode_get, i32 noundef 499, ptr noundef nonnull @.str.10) #13
  br label %118

111:                                              ; preds = %93, %85
  %112 = icmp eq ptr %12, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = call i32 @mb_cache_entry_create(ptr noundef nonnull %12, i32 noundef 3136, i32 noundef %80, i64 noundef %116, i1 noundef zeroext true) #13
  br label %118

118:                                              ; preds = %113, %111, %110, %57, %54, %53, %19
  %119 = phi ptr [ null, %19 ], [ %21, %53 ], [ %21, %54 ], [ %21, %57 ], [ %21, %110 ], [ %21, %113 ], [ %21, %111 ]
  %120 = phi i32 [ %17, %19 ], [ -117, %53 ], [ %55, %54 ], [ 0, %57 ], [ -117, %110 ], [ 0, %113 ], [ 0, %111 ]
  call void @iput(ptr noundef %119) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %120
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 48
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122, !prof !14

14:                                               ; preds = %5
  %15 = tail call i32 @strlen(ptr noundef %2)
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %122, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_read(ptr noundef %18) #13
  %19 = tail call i32 @ext4_xattr_ibody_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %20 = icmp eq i32 %19, -61
  br i1 %20, label %21, label %120

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 125
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %0, i32 -144
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %21
  %31 = tail call ptr @ext4_sb_bread(ptr noundef %22, i64 noundef %28, i32 noundef 8192) #13
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = ptrtoint ptr %31 to i32
  br label %120

35:                                               ; preds = %30
  %36 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %0, ptr noundef %31, ptr noundef nonnull @__func__.ext4_xattr_block_get, i32 noundef 536) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %116

38:                                               ; preds = %35
  %39 = icmp eq ptr %26, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_xattr_header, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, 1024
  %46 = getelementptr inbounds %struct.ext4_xattr_header, ptr %42, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 3
  %49 = load i64, ptr %48, align 8
  %50 = tail call i32 @mb_cache_entry_create(ptr noundef nonnull %26, i32 noundef 3136, i32 noundef %47, i64 noundef %49, i1 noundef zeroext %45) #13
  br label %51

51:                                               ; preds = %40, %38
  %52 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = icmp eq ptr %2, null
  br i1 %57, label %116, label %58

58:                                               ; preds = %51
  %59 = getelementptr %struct.ext4_xattr_header, ptr %53, i32 1
  %60 = tail call i32 @strlen(ptr noundef nonnull %2) #13
  %61 = load i32, ptr %59, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %116, label %63

63:                                               ; preds = %87, %58
  %64 = phi i32 [ %88, %87 ], [ %61, %58 ]
  %65 = phi ptr [ %69, %87 ], [ %59, %58 ]
  %66 = and i32 %64, 255
  %67 = add nuw nsw i32 %66, 19
  %68 = and i32 %67, 508
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = icmp ult ptr %69, %56
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8) #13
  br label %116

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %65, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = sub i32 %1, %75
  %77 = icmp eq i32 %75, %1
  %78 = sub i32 %60, %66
  %79 = select i1 %77, i32 %78, i32 %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %65, i32 0, i32 6
  %83 = tail call i32 @memcmp(ptr noundef nonnull %2, ptr noundef %82, i32 noundef %60) #13
  br label %84

84:                                               ; preds = %81, %72
  %85 = phi i32 [ %79, %72 ], [ %83, %81 ]
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %69, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %116, label %63

90:                                               ; preds = %84
  %91 = icmp eq i32 %85, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %65, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp ugt i32 %94, 16777216
  br i1 %95, label %116, label %96, !prof !9

96:                                               ; preds = %92
  %97 = icmp eq ptr %3, null
  br i1 %97, label %115, label %98

98:                                               ; preds = %96
  %99 = icmp ugt i32 %94, %4
  br i1 %99, label %116, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %65, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call fastcc i32 @ext4_xattr_inode_get(ptr noundef %0, ptr noundef %65, ptr noundef nonnull %3, i32 noundef %94) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %115, label %116

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %65, i32 0, i32 2
  %109 = load i16, ptr %108, align 2
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %53, i32 %110
  %112 = getelementptr i8, ptr %111, i32 %94
  %113 = icmp ugt ptr %112, %56
  br i1 %113, label %116, label %114, !prof !9

114:                                              ; preds = %107
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 1 %111, i32 %94, i1 false) #13
  br label %115

115:                                              ; preds = %114, %104, %96
  br label %116

116:                                              ; preds = %115, %107, %104, %98, %92, %90, %87, %71, %58, %51, %35
  %117 = phi i32 [ %36, %35 ], [ -34, %92 ], [ -34, %98 ], [ %105, %104 ], [ %94, %115 ], [ -34, %107 ], [ -61, %90 ], [ -61, %58 ], [ -22, %51 ], [ -117, %71 ], [ -61, %87 ]
  %118 = icmp eq ptr %31, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call void @__brelse(ptr noundef nonnull %31) #13
  br label %120

120:                                              ; preds = %119, %116, %33, %21, %17
  %121 = phi i32 [ %19, %17 ], [ %34, %33 ], [ -61, %21 ], [ %117, %116 ], [ %117, %119 ]
  tail call void @up_read(ptr noundef %18) #13
  br label %122

122:                                              ; preds = %120, %14, %5
  %123 = phi i32 [ %121, %120 ], [ -5, %5 ], [ -34, %14 ]
  ret i32 %123
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_listxattr(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -120
  tail call void @down_read(ptr noundef %7) #13
  %8 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #13, !annotation !8
  %9 = getelementptr i8, ptr %8, i32 -128
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %114

14:                                               ; preds = %3
  %15 = call i32 @ext4_get_inode_loc(ptr noundef %8, ptr noundef nonnull %4) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %109

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_iloc, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = getelementptr i8, ptr %23, i32 128
  %25 = getelementptr i8, ptr %8, i32 476
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 29
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %23, i32 %34
  %36 = call fastcc i32 @__xattr_check_inode(ptr noundef %8, ptr noundef %28, ptr noundef %35, ptr noundef nonnull @__func__.ext4_xattr_ibody_list, i32 noundef 738) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %17
  %39 = getelementptr %struct.ext4_xattr_ibody_header, ptr %28, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %101, label %42

42:                                               ; preds = %91, %38
  %43 = phi i32 [ %93, %91 ], [ %2, %38 ]
  %44 = phi ptr [ %92, %91 ], [ %1, %38 ]
  %45 = phi ptr [ %98, %91 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %45, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, -1
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %91

51:                                               ; preds = %42
  %52 = getelementptr [11 x ptr], ptr @ext4_xattr_handler_map, i32 0, i32 %48
  %53 = load ptr, ptr %52, align 4
  %54 = lshr i32 1005, %48
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.xattr_handler, ptr %53, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call zeroext i1 %59(ptr noundef %0) #13
  br i1 %62, label %63, label %91

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.xattr_handler, ptr %53, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %53, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %71 = call i32 @strlen(ptr noundef %70) #13
  %72 = load i8, ptr %45, align 4
  %73 = zext i8 %72 to i32
  %74 = add i32 %71, 1
  %75 = add i32 %74, %73
  %76 = icmp eq ptr %44, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %69
  %78 = icmp ult i32 %43, %75
  br i1 %78, label %104, label %79

79:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %44, ptr align 1 %70, i32 %71, i1 false) #13
  %80 = getelementptr i8, ptr %44, i32 %71
  %81 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %45, i32 0, i32 6
  %82 = load i8, ptr %45, align 4
  %83 = zext i8 %82 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %80, ptr align 4 %81, i32 %83, i1 false) #13
  %84 = load i8, ptr %45, align 4
  %85 = zext i8 %84 to i32
  %86 = getelementptr i8, ptr %80, i32 %85
  %87 = getelementptr i8, ptr %86, i32 1
  store i8 0, ptr %86, align 1
  br label %88

88:                                               ; preds = %79, %69
  %89 = phi ptr [ %87, %79 ], [ null, %69 ]
  %90 = sub i32 %43, %75
  br label %91

91:                                               ; preds = %88, %61, %51, %42
  %92 = phi ptr [ %89, %88 ], [ %44, %51 ], [ %44, %61 ], [ %44, %42 ]
  %93 = phi i32 [ %90, %88 ], [ %43, %51 ], [ %43, %61 ], [ %43, %42 ]
  %94 = load i8, ptr %45, align 4
  %95 = zext i8 %94 to i32
  %96 = add nuw nsw i32 %95, 19
  %97 = and i32 %96, 508
  %98 = getelementptr i8, ptr %45, i32 %97
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %42

101:                                              ; preds = %91, %38
  %102 = phi i32 [ %2, %38 ], [ %93, %91 ]
  %103 = sub i32 %2, %102
  br label %104

104:                                              ; preds = %101, %77, %17
  %105 = phi i32 [ %36, %17 ], [ %103, %101 ], [ -34, %77 ]
  %106 = load ptr, ptr %4, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @__brelse(ptr noundef nonnull %106) #13
  br label %109

109:                                              ; preds = %108, %104, %14
  %110 = phi i32 [ %15, %14 ], [ %105, %104 ], [ %105, %108 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %230, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %5, align 8
  br label %114

114:                                              ; preds = %112, %13
  %115 = phi ptr [ %8, %13 ], [ %113, %112 ]
  %116 = phi i32 [ 0, %13 ], [ %110, %112 ]
  %117 = icmp eq ptr %1, null
  %118 = getelementptr i8, ptr %1, i32 %116
  %119 = select i1 %117, ptr null, ptr %118
  %120 = select i1 %117, i32 0, i32 %116
  %121 = sub i32 %2, %120
  %122 = getelementptr i8, ptr %115, i32 -144
  %123 = load i64, ptr %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %230, label %125

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  %128 = call ptr @ext4_sb_bread(ptr noundef %127, i64 noundef %123, i32 noundef 8192) #13
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = ptrtoint ptr %128 to i32
  br label %225

132:                                              ; preds = %125
  %133 = call fastcc i32 @__ext4_xattr_check_block(ptr noundef %115, ptr noundef %128, ptr noundef nonnull @__func__.ext4_xattr_block_list, i32 noundef 709) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %221

135:                                              ; preds = %132
  %136 = load ptr, ptr %126, align 4
  %137 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 27
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 125
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %153, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.ext4_xattr_header, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp ult i32 %146, 1024
  %148 = getelementptr inbounds %struct.ext4_xattr_header, ptr %144, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 3
  %151 = load i64, ptr %150, align 8
  %152 = call i32 @mb_cache_entry_create(ptr noundef nonnull %140, i32 noundef 3136, i32 noundef %149, i64 noundef %151, i1 noundef zeroext %147) #13
  br label %153

153:                                              ; preds = %142, %135
  %154 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 5
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr %struct.ext4_xattr_header, ptr %155, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %218, label %159

159:                                              ; preds = %208, %153
  %160 = phi i32 [ %210, %208 ], [ %121, %153 ]
  %161 = phi ptr [ %209, %208 ], [ %119, %153 ]
  %162 = phi ptr [ %215, %208 ], [ %156, %153 ]
  %163 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %162, i32 0, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = add nsw i32 %165, -1
  %167 = icmp ult i32 %166, 10
  br i1 %167, label %168, label %208

168:                                              ; preds = %159
  %169 = getelementptr [11 x ptr], ptr @ext4_xattr_handler_map, i32 0, i32 %165
  %170 = load ptr, ptr %169, align 4
  %171 = lshr i32 1005, %165
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %208

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.xattr_handler, ptr %170, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = call zeroext i1 %176(ptr noundef %0) #13
  br i1 %179, label %180, label %208

180:                                              ; preds = %178, %174
  %181 = getelementptr inbounds %struct.xattr_handler, ptr %170, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load ptr, ptr %170, align 4
  br label %186

186:                                              ; preds = %184, %180
  %187 = phi ptr [ %185, %184 ], [ %182, %180 ]
  %188 = call i32 @strlen(ptr noundef %187) #13
  %189 = load i8, ptr %162, align 4
  %190 = zext i8 %189 to i32
  %191 = add i32 %188, 1
  %192 = add i32 %191, %190
  %193 = icmp eq ptr %161, null
  br i1 %193, label %205, label %194

194:                                              ; preds = %186
  %195 = icmp ult i32 %160, %192
  br i1 %195, label %221, label %196

196:                                              ; preds = %194
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %161, ptr align 1 %187, i32 %188, i1 false) #13
  %197 = getelementptr i8, ptr %161, i32 %188
  %198 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %162, i32 0, i32 6
  %199 = load i8, ptr %162, align 4
  %200 = zext i8 %199 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %197, ptr align 4 %198, i32 %200, i1 false) #13
  %201 = load i8, ptr %162, align 4
  %202 = zext i8 %201 to i32
  %203 = getelementptr i8, ptr %197, i32 %202
  %204 = getelementptr i8, ptr %203, i32 1
  store i8 0, ptr %203, align 1
  br label %205

205:                                              ; preds = %196, %186
  %206 = phi ptr [ %204, %196 ], [ null, %186 ]
  %207 = sub i32 %160, %192
  br label %208

208:                                              ; preds = %205, %178, %168, %159
  %209 = phi ptr [ %206, %205 ], [ %161, %168 ], [ %161, %178 ], [ %161, %159 ]
  %210 = phi i32 [ %207, %205 ], [ %160, %168 ], [ %160, %178 ], [ %160, %159 ]
  %211 = load i8, ptr %162, align 4
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %212, 19
  %214 = and i32 %213, 508
  %215 = getelementptr i8, ptr %162, i32 %214
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %159

218:                                              ; preds = %208, %153
  %219 = phi i32 [ %121, %153 ], [ %210, %208 ]
  %220 = sub i32 %121, %219
  br label %221

221:                                              ; preds = %218, %194, %132
  %222 = phi i32 [ %133, %132 ], [ %220, %218 ], [ -34, %194 ]
  %223 = icmp eq ptr %128, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call void @__brelse(ptr noundef nonnull %128) #13
  br label %225

225:                                              ; preds = %224, %221, %130
  %226 = phi i32 [ %131, %130 ], [ %222, %221 ], [ %222, %224 ]
  %227 = icmp slt i32 %226, 0
  %228 = select i1 %227, i32 0, i32 %116
  %229 = add i32 %228, %226
  br label %230

230:                                              ; preds = %225, %114, %109
  %231 = phi i32 [ %110, %109 ], [ %116, %114 ], [ %229, %225 ]
  %232 = load ptr, ptr %5, align 8
  %233 = getelementptr i8, ptr %232, i32 -120
  call void @up_read(ptr noundef %233) #13
  ret i32 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_inode_usage(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %3) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_iloc, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = getelementptr i8, ptr %17, i32 128
  %19 = getelementptr i8, ptr %0, i32 476
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 29
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %17, i32 %28
  %30 = call fastcc i32 @__xattr_check_inode(ptr noundef %0, ptr noundef %22, ptr noundef %29, ptr noundef nonnull @__func__.ext4_get_inode_usage, i32 noundef 824)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %11
  %33 = getelementptr %struct.ext4_xattr_ibody_header, ptr %22, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %49, %36 ], [ %34, %32 ]
  %38 = phi i64 [ %44, %36 ], [ 0, %32 ]
  %39 = phi ptr [ %48, %36 ], [ %33, %32 ]
  %40 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = add i64 %38, %43
  %45 = and i32 %37, 255
  %46 = add nuw nsw i32 %45, 19
  %47 = and i32 %46, 508
  %48 = getelementptr i8, ptr %39, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %36

51:                                               ; preds = %36, %32, %2
  %52 = phi i64 [ 0, %2 ], [ 0, %32 ], [ %44, %36 ]
  %53 = getelementptr i8, ptr %0, i32 -144
  %54 = load i64, ptr %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = call ptr @ext4_sb_bread(ptr noundef %58, i64 noundef %54, i32 noundef 8192) #13
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = ptrtoint ptr %59 to i32
  br label %91

63:                                               ; preds = %56
  %64 = call fastcc i32 @__ext4_xattr_check_block(ptr noundef %0, ptr noundef %59, ptr noundef nonnull @__func__.ext4_get_inode_usage, i32 noundef 842)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.ext4_xattr_header, ptr %68, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %72, %66
  %73 = phi i32 [ %85, %72 ], [ %70, %66 ]
  %74 = phi i64 [ %80, %72 ], [ %52, %66 ]
  %75 = phi ptr [ %84, %72 ], [ %69, %66 ]
  %76 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %75, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = add i64 %74, %79
  %81 = and i32 %73, 255
  %82 = add nuw nsw i32 %81, 19
  %83 = and i32 %82, 508
  %84 = getelementptr i8, ptr %75, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %72

87:                                               ; preds = %72, %66, %51
  %88 = phi ptr [ null, %51 ], [ %59, %66 ], [ %59, %72 ]
  %89 = phi i64 [ %52, %51 ], [ %52, %66 ], [ %80, %72 ]
  %90 = add i64 %89, 1
  store i64 %90, ptr %1, align 8
  br label %91

91:                                               ; preds = %87, %63, %61, %11, %8
  %92 = phi ptr [ null, %8 ], [ null, %11 ], [ null, %61 ], [ %59, %63 ], [ %88, %87 ]
  %93 = phi i32 [ %9, %8 ], [ %30, %11 ], [ %62, %61 ], [ %64, %63 ], [ 0, %87 ]
  %94 = load ptr, ptr %3, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  call void @__brelse(ptr noundef nonnull %94) #13
  br label %97

97:                                               ; preds = %96, %91
  %98 = icmp eq ptr %92, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  call void @__brelse(ptr noundef nonnull %92) #13
  br label %100

100:                                              ; preds = %99, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ext4_xattr_check_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -368967680
  br i1 %8, label %9, label %127

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ext4_xattr_header, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %127

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 16777216
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %137

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 119
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %46, !prof !9

35:                                               ; preds = %28
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 30
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 119
  %45 = load ptr, ptr %44, align 8
  br label %46

46:                                               ; preds = %43, %28
  %47 = phi ptr [ %45, %43 ], [ %30, %28 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = load volatile i32, ptr %1, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #13, !srcloc !17
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 4, ptr elementtype(i32) %1) #13, !srcloc !18
  %55 = extractvalue { i32, i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %49
  tail call void @__lock_buffer(ptr noundef %1) #13
  br label %59

59:                                               ; preds = %58, %53
  %60 = getelementptr inbounds %struct.ext4_xattr_header, ptr %6, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %63 = load i64, ptr %62, align 8
  %64 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %0, i64 noundef %63, ptr noundef %6) #13
  %65 = icmp eq i32 %61, %64
  tail call void @unlock_buffer(ptr noundef %1) #13
  br i1 %65, label %66, label %127

66:                                               ; preds = %59, %46, %35, %17
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr %struct.ext4_xattr_header, ptr %67, i32 1
  %69 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr i8, ptr %67, i32 %70
  br label %72

72:                                               ; preds = %88, %66
  %73 = phi ptr [ %68, %66 ], [ %86, %88 ]
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, ptr %68, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %132, label %79

79:                                               ; preds = %76
  %80 = ptrtoint ptr %71 to i32
  %81 = getelementptr i8, ptr %73, i32 4
  br label %92

82:                                               ; preds = %72
  %83 = and i32 %74, 255
  %84 = add nuw nsw i32 %83, 19
  %85 = and i32 %84, 508
  %86 = getelementptr i8, ptr %73, i32 %85
  %87 = icmp ult ptr %86, %71
  br i1 %87, label %88, label %127

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %73, i32 0, i32 6
  %90 = tail call i32 @strnlen(ptr noundef %89, i32 noundef %83) #13
  %91 = icmp eq i32 %90, %83
  br i1 %91, label %72, label %127

92:                                               ; preds = %120, %79
  %93 = phi i32 [ %77, %79 ], [ %125, %120 ]
  %94 = phi ptr [ %68, %79 ], [ %124, %120 ]
  %95 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %94, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, 16777216
  br i1 %97, label %127, label %98

98:                                               ; preds = %92
  %99 = icmp eq i32 %96, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %94, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %94, i32 0, i32 2
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp slt i32 %70, %107
  br i1 %108, label %127, label %109

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %67, i32 %107
  %111 = icmp ult ptr %110, %81
  br i1 %111, label %127, label %112

112:                                              ; preds = %109
  %113 = ptrtoint ptr %110 to i32
  %114 = sub i32 %80, %113
  %115 = icmp ugt i32 %96, %114
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = add nuw nsw i32 %96, 3
  %118 = and i32 %117, -4
  %119 = icmp ugt i32 %118, %114
  br i1 %119, label %127, label %120

120:                                              ; preds = %116, %100, %98
  %121 = and i32 %93, 255
  %122 = add nuw nsw i32 %121, 19
  %123 = and i32 %122, 508
  %124 = getelementptr i8, ptr %94, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %92

127:                                              ; preds = %116, %112, %109, %104, %92, %88, %82, %59, %9, %4
  %128 = phi i32 [ -74, %59 ], [ -117, %9 ], [ -117, %4 ], [ -117, %104 ], [ -117, %116 ], [ -117, %112 ], [ -117, %109 ], [ -117, %92 ], [ -117, %82 ], [ -117, %88 ]
  %129 = sub nsw i32 0, %128
  %130 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %131 = load i64, ptr %130, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %129, ptr noundef nonnull @.str.11, i64 noundef %131) #13
  br label %137

132:                                              ; preds = %120, %76
  %133 = load volatile i32, ptr %1, align 4
  %134 = and i32 %133, 16777216
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  tail call void @_set_bit(i32 noundef 24, ptr noundef %1) #13
  br label %137

137:                                              ; preds = %136, %132, %127, %13
  %138 = phi i32 [ 0, %13 ], [ %128, %127 ], [ 0, %132 ], [ 0, %136 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_xattr_set_credits(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %1, i32 -124
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 268435456
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %1, i32 478
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef nonnull %1) #13
  %18 = add i32 %17, 8
  br label %19

19:                                               ; preds = %16, %12, %7, %5
  %20 = phi i32 [ %18, %16 ], [ 7, %12 ], [ 7, %5 ], [ 7, %7 ]
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %24, i32 0, i32 29
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %19
  %30 = add i32 %20, 4
  %31 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 16
  %33 = add i32 %3, -1
  %34 = add i32 %33, %32
  %35 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %34, %37
  %39 = add i32 %38, 1
  %40 = shl i32 %39, 1
  %41 = add i32 %30, %39
  %42 = add i32 %41, %40
  %43 = lshr i32 65536, %37
  %44 = shl nuw nsw i32 %43, 1
  %45 = add nuw nsw i32 %44, 6
  %46 = select i1 %4, i32 0, i32 %45
  %47 = add i32 %42, %46
  %48 = icmp eq ptr %2, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.ext4_xattr_header, ptr %51, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %55, %49
  %56 = phi i32 [ %68, %55 ], [ %53, %49 ]
  %57 = phi ptr [ %67, %55 ], [ %52, %49 ]
  %58 = phi i32 [ %63, %55 ], [ %47, %49 ]
  %59 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %57, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = add i32 %58, %62
  %64 = and i32 %56, 255
  %65 = add nuw nsw i32 %64, 19
  %66 = and i32 %65, 508
  %67 = getelementptr i8, ptr %57, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %55

70:                                               ; preds = %55, %49, %29, %19
  %71 = phi i32 [ %20, %19 ], [ %47, %29 ], [ %47, %49 ], [ %63, %55 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_ibody_find(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %2, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 128
  %16 = zext i16 %5 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr %struct.ext4_xattr_ibody_header, ptr %17, i32 1
  store ptr %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 3
  store ptr %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 29
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %14, i32 %26
  %28 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 -128
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %7
  %34 = tail call fastcc i32 @__xattr_check_inode(ptr noundef %0, ptr noundef %17, ptr noundef %27, ptr noundef nonnull @__func__.ext4_xattr_ibody_find, i32 noundef 2187)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %33
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr inbounds %struct.ext4_xattr_info, ptr %1, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %1, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %78, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @strlen(ptr noundef nonnull %40) #13
  %44 = load ptr, ptr %20, align 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %69, %42
  %48 = phi i32 [ %70, %69 ], [ %45, %42 ]
  %49 = phi ptr [ %53, %69 ], [ %44, %42 ]
  %50 = and i32 %48, 255
  %51 = add nuw nsw i32 %50, 19
  %52 = and i32 %51, 508
  %53 = getelementptr i8, ptr %49, i32 %52
  %54 = icmp ult ptr %53, %37
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8) #13
  br label %78

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %49, i32 0, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = sub i32 %39, %59
  %61 = icmp eq i32 %39, %59
  %62 = sub i32 %43, %50
  %63 = select i1 %61, i32 %62, i32 %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %49, i32 0, i32 6
  %67 = tail call i32 @bcmp(ptr nonnull %40, ptr %66, i32 %43)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65, %56
  %70 = load i32, ptr %53, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %47

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %49, %65 ], [ %53, %69 ]
  %74 = phi i32 [ 0, %65 ], [ -61, %69 ]
  store ptr %73, ptr %20, align 4
  br label %75

75:                                               ; preds = %72, %42
  %76 = phi i32 [ -61, %42 ], [ %74, %72 ]
  %77 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 4
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %55, %36, %33, %7, %3
  %79 = phi i32 [ 0, %3 ], [ %34, %33 ], [ 0, %75 ], [ 0, %7 ], [ -117, %55 ], [ -22, %36 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 476
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @ext4_xattr_set_entry(ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr i8, ptr %18, i32 128
  %20 = load i16, ptr %5, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %11
  store i32 -368967680, ptr %22, align 4
  %27 = getelementptr i8, ptr %1, i32 -128
  tail call void @_set_bit(i32 noundef 2, ptr noundef %27) #13
  br label %30

28:                                               ; preds = %11
  store i32 0, ptr %22, align 4
  %29 = getelementptr i8, ptr %1, i32 -128
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %28, %26, %8, %4
  %31 = phi i32 [ -28, %4 ], [ %9, %8 ], [ 0, %28 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_set_entry(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_map_blocks, align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca %struct.anon.87, align 8
  %10 = alloca %struct.anon.87, align 8
  %11 = alloca ptr, align 4
  %12 = getelementptr inbounds %struct.ext4_xattr_search, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_xattr_search, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_xattr_search, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %15 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 @strlen(ptr noundef %21)
  %23 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store ptr null, ptr %11, align 4
  %25 = getelementptr inbounds %struct.ext4_xattr_search, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 3
  %36 = and i32 %35, -4
  br label %37

37:                                               ; preds = %32, %28, %5
  %38 = phi i32 [ %36, %32 ], [ 0, %28 ], [ 0, %5 ]
  %39 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = icmp ne i32 %24, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 3
  %48 = and i32 %47, -4
  %49 = icmp ne i32 %48, 0
  %50 = icmp eq i32 %48, %38
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 2
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %17, i32 %55
  %57 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 4
  store i32 %46, ptr %57, align 4
  %58 = load ptr, ptr %39, align 4
  %59 = icmp eq ptr %58, inttoptr (i32 -1 to ptr)
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  tail call void @llvm.memset.p0.i32(ptr align 1 %56, i8 0, i32 %38, i1 false)
  br label %684

61:                                               ; preds = %52
  %62 = load i32, ptr %45, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %58, i32 %62, i1 false)
  %63 = load i32, ptr %45, align 4
  %64 = getelementptr i8, ptr %56, i32 %63
  %65 = sub i32 %38, %63
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 0, i32 %65, i1 false)
  br label %684

66:                                               ; preds = %44, %37
  %67 = phi i1 [ %49, %44 ], [ false, %37 ]
  %68 = phi i32 [ %48, %44 ], [ 0, %37 ]
  %69 = sub i32 0, %68
  %70 = load ptr, ptr %1, align 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %96, %66
  %74 = phi i32 [ %98, %96 ], [ %71, %66 ]
  %75 = phi ptr [ %80, %96 ], [ %70, %66 ]
  %76 = phi i32 [ %97, %96 ], [ %20, %66 ]
  %77 = and i32 %74, 255
  %78 = add nuw nsw i32 %77, 19
  %79 = and i32 %78, 508
  %80 = getelementptr i8, ptr %75, i32 %79
  %81 = icmp ult ptr %80, %15
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %3, ptr noundef nonnull @__func__.ext4_xattr_set_entry, i32 noundef 1596, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8) #13
  br label %780

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %75, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %75, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %75, i32 0, i32 2
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = tail call i32 @llvm.umin.i32(i32 %76, i32 %94)
  br label %96

96:                                               ; preds = %91, %87, %83
  %97 = phi i32 [ %76, %83 ], [ %95, %91 ], [ %76, %87 ]
  %98 = load i32, ptr %80, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %73

100:                                              ; preds = %96, %66
  %101 = phi i32 [ %20, %66 ], [ %97, %96 ]
  %102 = phi ptr [ %70, %66 ], [ %80, %96 ]
  br i1 %41, label %138, label %103

103:                                              ; preds = %100
  %104 = ptrtoint ptr %102 to i32
  %105 = add i32 %22, 19
  %106 = and i32 %105, -4
  %107 = add i32 %38, %106
  %108 = select i1 %27, i32 %107, i32 0
  %109 = add i32 %19, -4
  %110 = add i32 %109, %108
  %111 = add i32 %110, %101
  %112 = sub i32 %111, %104
  %113 = add i32 %68, %106
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %780, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.super_block, ptr %117, i32 0, i32 27
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %119, i32 0, i32 15
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ext4_super_block, ptr %121, i32 0, i32 29
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 1024
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %125, i1 %67, i1 false
  %127 = and i1 %126, %4
  br i1 %127, label %128, label %138

128:                                              ; preds = %115
  %129 = add i32 %101, %38
  %130 = sub i32 %129, %68
  %131 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 19
  %132 = load i8, ptr %131, align 2
  %133 = zext i8 %132 to i32
  %134 = shl nuw i32 1, %133
  %135 = lshr i32 %134, 3
  %136 = tail call i32 @llvm.umin.i32(i32 %135, i32 1024)
  %137 = icmp ult i32 %130, %136
  br i1 %137, label %780, label %138

138:                                              ; preds = %128, %115, %100
  br i1 %27, label %139, label %151

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %3, i32 noundef %141, i32 noundef %145, ptr noundef nonnull %11)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load ptr, ptr %39, align 4
  br label %151

150:                                              ; preds = %143
  store ptr null, ptr %11, align 4
  br label %780

151:                                              ; preds = %148, %139, %138
  %152 = phi ptr [ %149, %148 ], [ %40, %139 ], [ %40, %138 ]
  %153 = icmp ne ptr %152, null
  %154 = select i1 %153, i1 %42, i1 false
  br i1 %154, label %155, label %504

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  %159 = load i1, ptr @ext4_xattr_set_entry.__already_done, align 1
  %160 = xor i1 %159, true
  %161 = select i1 %158, i1 %160, i1 false
  br i1 %161, label %162, label %164, !prof !9

162:                                              ; preds = %155
  store i1 true, ptr @ext4_xattr_set_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1650, i32 noundef 9, ptr noundef null) #13
  %163 = load i32, ptr %156, align 4
  br label %164

164:                                              ; preds = %162, %155
  %165 = phi i32 [ %163, %162 ], [ %157, %155 ]
  %166 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.super_block, ptr %167, i32 0, i32 27
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ext4_sb_info, ptr %169, i32 0, i32 12
  %171 = load i32, ptr %170, align 16
  %172 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 19
  %173 = load i8, ptr %172, align 2
  %174 = zext i8 %173 to i32
  %175 = add i32 %171, %174
  %176 = shl nuw i32 1, %175
  %177 = sub i32 0, %176
  %178 = add i32 %165, -1
  %179 = add i32 %178, %176
  %180 = and i32 %179, %177
  %181 = zext i32 %180 to i64
  tail call void @inode_add_bytes(ptr noundef %3, i64 noundef %181) #13
  %182 = load ptr, ptr %39, align 4
  %183 = load i32, ptr %156, align 4
  %184 = load ptr, ptr %166, align 4
  %185 = getelementptr inbounds %struct.super_block, ptr %184, i32 0, i32 27
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.ext4_sb_info, ptr %186, i32 0, i32 120
  %188 = load i32, ptr %187, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false) #13, !annotation !8
  %189 = getelementptr inbounds %struct.ext4_sb_info, ptr %186, i32 0, i32 119
  %190 = load ptr, ptr %189, align 8
  %191 = load i32, ptr %190, align 64
  %192 = icmp eq i32 %191, 4
  br i1 %192, label %194, label %193, !prof !14

193:                                              ; preds = %164
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

194:                                              ; preds = %164
  store ptr %190, ptr %10, align 8
  %195 = getelementptr inbounds %struct.anon.87, ptr %10, i32 0, i32 1
  store i32 %188, ptr %195, align 8
  %196 = call i32 @crypto_shash_update(ptr noundef nonnull %10, ptr noundef %182, i32 noundef %183) #13
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198, !prof !14

198:                                              ; preds = %194
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

199:                                              ; preds = %194
  %200 = load i32, ptr %195, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  %201 = load ptr, ptr %166, align 4
  %202 = getelementptr inbounds %struct.super_block, ptr %201, i32 0, i32 27
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.ext4_sb_info, ptr %203, i32 0, i32 126
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %308, label %207

207:                                              ; preds = %199
  %208 = call ptr @mb_cache_entry_find_first(ptr noundef nonnull %205, i32 noundef %200) #13
  %209 = icmp eq ptr %208, null
  br i1 %209, label %308, label %210

210:                                              ; preds = %207
  %211 = tail call ptr @llvm.thread.pointer() #13
  %212 = getelementptr inbounds %struct.task_struct, ptr %211, i32 0, i32 113
  %213 = load ptr, ptr %212, align 4
  %214 = icmp ult ptr %213, inttoptr (i32 4096 to ptr)
  br i1 %214, label %224, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.task_struct, ptr %211, i32 0, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 262144
  %219 = icmp eq i32 %218, 0
  %220 = load i1, ptr @ext4_xattr_inode_cache_find.__already_done, align 1
  %221 = xor i1 %220, true
  %222 = select i1 %219, i1 %221, i1 false
  br i1 %222, label %223, label %224, !prof !9

223:                                              ; preds = %215
  store i1 true, ptr @ext4_xattr_inode_cache_find.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1470, i32 noundef 9, ptr noundef null) #13
  br label %224

224:                                              ; preds = %223, %215, %210
  %225 = call noalias ptr @kvmalloc_node(i32 noundef %183, i32 noundef 3264, i32 noundef -1) #14
  %226 = icmp eq ptr %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = zext i32 %183 to i64
  %229 = getelementptr inbounds %struct.anon.87, ptr %9, i32 0, i32 1
  br label %236

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.mb_cache_entry, ptr %208, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %231) #13, !srcloc !17
  %232 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %231, ptr %231, i32 1, ptr elementtype(i32) %231) #13, !srcloc !21
  %233 = extractvalue { i32, i32 } %232, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %308

235:                                              ; preds = %230
  call void @__mb_cache_entry_free(ptr noundef nonnull %208) #13
  br label %308

236:                                              ; preds = %298, %227
  %237 = phi ptr [ %208, %227 ], [ %299, %298 ]
  %238 = load ptr, ptr %166, align 4
  %239 = getelementptr inbounds %struct.mb_cache_entry, ptr %237, i32 0, i32 5
  %240 = load i64, ptr %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = call ptr @__ext4_iget(ptr noundef %238, i32 noundef %241, i32 noundef 0, ptr noundef nonnull @__func__.ext4_xattr_inode_cache_find, i32 noundef 1480) #13
  %243 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  br i1 %243, label %298, label %244

244:                                              ; preds = %236
  %245 = call zeroext i1 @is_bad_inode(ptr noundef %242) #13
  br i1 %245, label %297, label %246

246:                                              ; preds = %244
  %247 = getelementptr i8, ptr %242, i32 -124
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 2097152
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %297, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.inode, ptr %242, i32 0, i32 22
  %253 = getelementptr inbounds %struct.inode, ptr %242, i32 0, i32 13
  br label %254

254:                                              ; preds = %262, %251
  %255 = load volatile i32, ptr %252, align 4
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %258, %254
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !11
  %259 = load volatile i32, ptr %252, align 4
  %260 = and i32 %259, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %258

262:                                              ; preds = %258, %254
  %263 = phi i32 [ %255, %254 ], [ %259, %258 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %264 = load i64, ptr %253, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %265 = load volatile i32, ptr %252, align 4
  %266 = icmp eq i32 %265, %263
  br i1 %266, label %267, label %254

267:                                              ; preds = %262
  %268 = icmp eq i64 %264, %228
  br i1 %268, label %269, label %297

269:                                              ; preds = %267
  %270 = call fastcc i32 @ext4_xattr_inode_read(ptr noundef %242, ptr noundef nonnull %225, i32 noundef %183) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %297

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.inode, ptr %242, i32 0, i32 8
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.super_block, ptr %274, i32 0, i32 27
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.ext4_sb_info, ptr %276, i32 0, i32 120
  %278 = load i32, ptr %277, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #13, !annotation !8
  %279 = getelementptr inbounds %struct.ext4_sb_info, ptr %276, i32 0, i32 119
  %280 = load ptr, ptr %279, align 8
  %281 = load i32, ptr %280, align 64
  %282 = icmp eq i32 %281, 4
  br i1 %282, label %284, label %283, !prof !14

283:                                              ; preds = %272
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

284:                                              ; preds = %272
  store ptr %280, ptr %9, align 8
  store i32 %278, ptr %229, align 8
  %285 = call i32 @crypto_shash_update(ptr noundef nonnull %9, ptr noundef nonnull %225, i32 noundef %183) #13
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287, !prof !14

287:                                              ; preds = %284
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

288:                                              ; preds = %284
  %289 = load i32, ptr %229, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  %290 = getelementptr inbounds %struct.inode, ptr %242, i32 0, i32 14
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i32
  %293 = icmp eq i32 %289, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = call i32 @bcmp(ptr %182, ptr nonnull %225, i32 %183) #13
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %294, %288, %269, %267, %246, %244
  call void @iput(ptr noundef %242) #13
  br label %298

298:                                              ; preds = %297, %236
  %299 = call ptr @mb_cache_entry_find_next(ptr noundef nonnull %205, ptr noundef nonnull %237) #13
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %236

301:                                              ; preds = %298
  call void @kvfree(ptr noundef nonnull %225) #13
  br label %308

302:                                              ; preds = %294
  call void @mb_cache_entry_touch(ptr noundef nonnull %205, ptr noundef nonnull %237) #13
  call fastcc void @mb_cache_entry_put(ptr noundef nonnull %237) #13
  call void @kvfree(ptr noundef nonnull %225) #13
  %303 = icmp eq ptr %242, null
  br i1 %303, label %308, label %304

304:                                              ; preds = %302
  %305 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %2, ptr noundef nonnull %242, i32 noundef 1) #13
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %504, label %307

307:                                              ; preds = %304
  call void @iput(ptr noundef nonnull %242) #13
  br label %487

308:                                              ; preds = %302, %301, %235, %230, %207, %199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %309 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %310 = load i32, ptr %309, align 4
  store i32 %310, ptr %8, align 8
  %311 = getelementptr inbounds i32, ptr %8, i32 1
  %312 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 3
  %313 = load i32, ptr %312, align 8
  store i32 %313, ptr %311, align 4
  %314 = load ptr, ptr %166, align 4
  %315 = getelementptr inbounds %struct.super_block, ptr %314, i32 0, i32 13
  %316 = load ptr, ptr %315, align 64
  %317 = getelementptr inbounds %struct.dentry, ptr %316, i32 0, i32 5
  %318 = load ptr, ptr %317, align 8
  %319 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %320, 1
  %322 = call ptr @__ext4_new_inode(ptr noundef nonnull @init_user_ns, ptr noundef %2, ptr noundef %318, i16 noundef zeroext -32384, ptr noundef null, i32 noundef %321, ptr noundef nonnull %8, i32 noundef 2097152, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %323 = icmp ugt ptr %322, inttoptr (i32 -4096 to ptr)
  br i1 %323, label %345, label %324

324:                                              ; preds = %308
  %325 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 7
  store ptr @ext4_file_inode_operations, ptr %325, align 8
  %326 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 39
  store ptr @ext4_file_operations, ptr %326, align 8
  call void @ext4_set_aops(ptr noundef %322) #13
  call void @unlock_new_inode(ptr noundef %322) #13
  %327 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 16
  store i64 0, ptr %327, align 8
  %328 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %328) #13, !srcloc !17
  %329 = call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %328, ptr %328, i64 1) #13, !srcloc !23
  %330 = zext i32 %200 to i64
  %331 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 14
  store i64 %330, ptr %331, align 8
  %332 = call i32 @__ext4_mark_inode_dirty(ptr noundef %2, ptr noundef %322, ptr noundef nonnull @__func__.ext4_xattr_inode_create, i32 noundef 1431) #13
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %324
  %335 = call i32 @ext4_inode_attach_jinode(ptr noundef %322) #13
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334, %324
  %338 = phi i32 [ %335, %334 ], [ %332, %324 ]
  call void @iput(ptr noundef %322) #13
  %339 = inttoptr i32 %338 to ptr
  br label %345

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 24
  call void @down_write(ptr noundef %341) #13
  %342 = getelementptr inbounds %struct.inode, ptr %322, i32 0, i32 4
  %343 = load i32, ptr %342, align 4
  %344 = or i32 %343, 32
  store i32 %344, ptr %342, align 4
  call void @up_write(ptr noundef %341) #13
  br label %345

345:                                              ; preds = %340, %337, %308
  %346 = phi ptr [ %339, %337 ], [ %322, %340 ], [ %322, %308 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  %347 = icmp ugt ptr %346, inttoptr (i32 -4096 to ptr)
  br i1 %347, label %484, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 8
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.super_block, ptr %350, i32 0, i32 3
  %352 = load i32, ptr %351, align 16
  %353 = add i32 %183, -1
  %354 = add i32 %353, %352
  %355 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 19
  %356 = load i8, ptr %355, align 2
  %357 = zext i8 %356 to i32
  %358 = ashr i32 %354, %357
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %359 = getelementptr inbounds %struct.ext4_map_blocks, ptr %7, i32 0, i32 1
  %360 = getelementptr inbounds %struct.ext4_map_blocks, ptr %7, i32 0, i32 2
  br label %361

361:                                              ; preds = %376, %348
  %362 = phi i32 [ 0, %348 ], [ %369, %376 ]
  %363 = phi i32 [ %358, %348 ], [ %370, %376 ]
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %384

365:                                              ; preds = %380, %361
  %366 = phi i32 [ %371, %380 ], [ 0, %361 ]
  %367 = phi i32 [ %370, %380 ], [ %363, %361 ]
  %368 = phi i32 [ %369, %380 ], [ %362, %361 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #13, !annotation !8
  %369 = add i32 %368, %366
  store i32 %369, ptr %359, align 8
  %370 = sub i32 %367, %366
  store i32 %370, ptr %360, align 4
  %371 = call i32 @ext4_map_blocks(ptr noundef %2, ptr noundef %346, ptr noundef nonnull %7, i32 noundef 1) #13
  %372 = icmp slt i32 %371, 1
  br i1 %372, label %373, label %380

373:                                              ; preds = %365
  %374 = call i32 @__ext4_mark_inode_dirty(ptr noundef %2, ptr noundef %346, ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1350) #13
  %375 = icmp eq i32 %371, -28
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = load ptr, ptr %349, align 4
  %378 = call i32 @ext4_should_retry_alloc(ptr noundef %377, ptr noundef nonnull %6) #13
  %379 = icmp eq i32 %378, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br i1 %379, label %464, label %361

380:                                              ; preds = %365
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %381 = icmp sgt i32 %370, %371
  br i1 %381, label %365, label %384

382:                                              ; preds = %373
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %383 = icmp slt i32 %371, 0
  br i1 %383, label %464, label %384

384:                                              ; preds = %382, %380, %361
  %385 = phi i32 [ 0, %382 ], [ %371, %380 ], [ 0, %361 ]
  %386 = icmp sgt i32 %183, 0
  br i1 %386, label %387, label %424

387:                                              ; preds = %418, %384
  %388 = phi ptr [ %420, %418 ], [ %182, %384 ]
  %389 = phi i32 [ %421, %418 ], [ 0, %384 ]
  %390 = phi i32 [ %422, %418 ], [ 0, %384 ]
  %391 = phi ptr [ %397, %418 ], [ null, %384 ]
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %387
  call void @__brelse(ptr noundef nonnull %391) #13
  br label %394

394:                                              ; preds = %393, %387
  %395 = sub i32 %183, %389
  %396 = call i32 @llvm.smin.i32(i32 %395, i32 %352) #13
  %397 = call ptr @ext4_getblk(ptr noundef %2, ptr noundef %346, i32 noundef %390, i32 noundef 0) #13
  %398 = icmp ugt ptr %397, inttoptr (i32 -4096 to ptr)
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = ptrtoint ptr %397 to i32
  br label %466

401:                                              ; preds = %394
  %402 = icmp eq ptr %397, null
  br i1 %402, label %403, label %407

403:                                              ; preds = %401
  %404 = load i1, ptr @ext4_xattr_inode_write.__already_done, align 1
  br i1 %404, label %406, label %405, !prof !14

405:                                              ; preds = %403
  store i1 true, ptr @ext4_xattr_inode_write.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1372, i32 noundef 9, ptr noundef null) #13
  br label %406

406:                                              ; preds = %405, %403
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %346, ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1374, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %464

407:                                              ; preds = %401
  %408 = load ptr, ptr %349, align 4
  %409 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1378, ptr noundef %2, ptr noundef %408, ptr noundef nonnull %397, i32 noundef 1) #13
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %461

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.buffer_head, ptr %397, i32 0, i32 5
  %413 = load ptr, ptr %412, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %413, ptr align 1 %388, i32 %396, i1 false) #13
  %414 = load volatile i32, ptr %397, align 4
  %415 = and i32 %414, 1
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %411
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %397) #13
  br label %418

418:                                              ; preds = %417, %411
  %419 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1384, ptr noundef %2, ptr noundef %346, ptr noundef nonnull %397) #13
  %420 = getelementptr i8, ptr %388, i32 %396
  %421 = add i32 %396, %389
  %422 = add i32 %390, 1
  %423 = icmp slt i32 %421, %183
  br i1 %423, label %387, label %424

424:                                              ; preds = %418, %384
  %425 = phi ptr [ null, %384 ], [ %397, %418 ]
  %426 = phi i32 [ 0, %384 ], [ %421, %418 ]
  %427 = phi i32 [ %385, %384 ], [ 0, %418 ]
  %428 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 24
  call void @down_write(ptr noundef %428) #13
  %429 = sext i32 %426 to i64
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %430 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 22
  %431 = load i32, ptr %430, align 4
  %432 = add i32 %431, 1
  store i32 %432, ptr %430, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %433 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 13
  store i64 %429, ptr %433, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !26
  %434 = load i32, ptr %430, align 4
  %435 = add i32 %434, 1
  store i32 %435, ptr %430, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %436 = load i16, ptr %346, align 8
  %437 = and i16 %436, -4096
  %438 = icmp eq i16 %437, -32768
  br i1 %438, label %439, label %446

439:                                              ; preds = %424
  %440 = load volatile i32, ptr %428, align 4
  %441 = icmp eq i32 %440, 0
  %442 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %443 = xor i1 %442, true
  %444 = select i1 %441, i1 %443, i1 false
  br i1 %444, label %445, label %446, !prof !9

445:                                              ; preds = %439
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3415, i32 noundef 9, ptr noundef null) #13
  br label %446

446:                                              ; preds = %445, %439, %424
  %447 = getelementptr i8, ptr %346, i32 -24
  call void @down_write(ptr noundef %447) #13
  %448 = getelementptr i8, ptr %346, i32 -32
  %449 = load i64, ptr %448, align 8
  %450 = icmp slt i64 %449, %429
  br i1 %450, label %451, label %452

451:                                              ; preds = %446
  store volatile i64 %429, ptr %448, align 8
  br label %452

452:                                              ; preds = %451, %446
  call void @up_write(ptr noundef %447) #13
  call void @up_write(ptr noundef %428) #13
  %453 = call i32 @__ext4_mark_inode_dirty(ptr noundef %2, ptr noundef %346, ptr noundef nonnull @__func__.ext4_xattr_inode_write, i32 noundef 1396) #13
  %454 = icmp ne i32 %453, 0
  %455 = icmp eq i32 %427, 0
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %457, label %458, !prof !9

457:                                              ; preds = %452
  br label %458

458:                                              ; preds = %457, %452
  %459 = phi i32 [ %453, %457 ], [ %427, %452 ]
  %460 = icmp eq ptr %425, null
  br i1 %460, label %466, label %461

461:                                              ; preds = %458, %407
  %462 = phi i32 [ %459, %458 ], [ %409, %407 ]
  %463 = phi ptr [ %425, %458 ], [ %397, %407 ]
  call void @__brelse(ptr noundef nonnull %463) #13
  br label %466

464:                                              ; preds = %406, %382, %376
  %465 = phi i32 [ %371, %382 ], [ -117, %406 ], [ -28, %376 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %469

466:                                              ; preds = %461, %458, %399
  %467 = phi i32 [ %400, %399 ], [ %459, %458 ], [ %462, %461 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %466, %464
  %470 = phi i32 [ %465, %464 ], [ %467, %466 ]
  %471 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %2, ptr noundef %346, i32 noundef -1) #13
  call void @iput(ptr noundef %346) #13
  br label %487

472:                                              ; preds = %466
  %473 = load ptr, ptr %166, align 4
  %474 = getelementptr inbounds %struct.super_block, ptr %473, i32 0, i32 27
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr inbounds %struct.ext4_sb_info, ptr %475, i32 0, i32 126
  %477 = load ptr, ptr %476, align 4
  %478 = icmp eq ptr %477, null
  br i1 %478, label %504, label %479

479:                                              ; preds = %472
  %480 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 10
  %481 = load i32, ptr %480, align 4
  %482 = zext i32 %481 to i64
  %483 = call i32 @mb_cache_entry_create(ptr noundef nonnull %477, i32 noundef 3136, i32 noundef %200, i64 noundef %482, i1 noundef zeroext true) #13
  br label %504

484:                                              ; preds = %345
  %485 = ptrtoint ptr %346 to i32
  %486 = icmp eq ptr %346, null
  br i1 %486, label %504, label %487

487:                                              ; preds = %484, %469, %307
  %488 = phi i32 [ %485, %484 ], [ %470, %469 ], [ %305, %307 ]
  %489 = load i32, ptr %156, align 4
  %490 = load ptr, ptr %166, align 4
  %491 = getelementptr inbounds %struct.super_block, ptr %490, i32 0, i32 27
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.ext4_sb_info, ptr %492, i32 0, i32 12
  %494 = load i32, ptr %493, align 16
  %495 = load i8, ptr %172, align 2
  %496 = zext i8 %495 to i32
  %497 = add i32 %494, %496
  %498 = shl nuw i32 1, %497
  %499 = sub i32 0, %498
  %500 = add i32 %489, -1
  %501 = add i32 %500, %498
  %502 = and i32 %501, %499
  %503 = zext i32 %502 to i64
  call void @inode_sub_bytes(ptr noundef %3, i64 noundef %503) #13
  br label %780

504:                                              ; preds = %484, %479, %472, %304, %151
  %505 = phi ptr [ null, %484 ], [ null, %151 ], [ %346, %472 ], [ %346, %479 ], [ %242, %304 ]
  %506 = load ptr, ptr %11, align 4
  %507 = icmp eq ptr %506, null
  br i1 %507, label %565, label %508

508:                                              ; preds = %504
  %509 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %2, ptr noundef nonnull %506, i32 noundef -1) #13
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %541, label %511

511:                                              ; preds = %508
  %512 = icmp eq ptr %505, null
  br i1 %512, label %780, label %513

513:                                              ; preds = %511
  %514 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %2, ptr noundef nonnull %505, i32 noundef -1) #13
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %517, label %516

516:                                              ; preds = %513
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef nonnull %505, ptr noundef nonnull @__func__.ext4_xattr_set_entry, i32 noundef 1679, ptr noundef nonnull @.str.13, i32 noundef %514) #13
  br label %517

517:                                              ; preds = %516, %513
  %518 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 2
  %519 = load i32, ptr %518, align 4
  %520 = getelementptr i8, ptr %505, i32 -128
  %521 = load volatile i32, ptr %520, align 4
  %522 = and i32 %521, 512
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %780

524:                                              ; preds = %517
  %525 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %526 = load ptr, ptr %525, align 4
  %527 = getelementptr inbounds %struct.super_block, ptr %526, i32 0, i32 27
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr inbounds %struct.ext4_sb_info, ptr %528, i32 0, i32 12
  %530 = load i32, ptr %529, align 16
  %531 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 19
  %532 = load i8, ptr %531, align 2
  %533 = zext i8 %532 to i32
  %534 = add i32 %530, %533
  %535 = shl nuw i32 1, %534
  %536 = sub i32 0, %535
  %537 = add i32 %519, -1
  %538 = add i32 %537, %535
  %539 = and i32 %538, %536
  %540 = zext i32 %539 to i64
  call void @inode_sub_bytes(ptr noundef %3, i64 noundef %540) #13
  br label %780

541:                                              ; preds = %508
  %542 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 4
  %543 = load i32, ptr %542, align 4
  %544 = getelementptr i8, ptr %506, i32 -128
  %545 = load volatile i32, ptr %544, align 4
  %546 = and i32 %545, 512
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %565

548:                                              ; preds = %541
  %549 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %550 = load ptr, ptr %549, align 4
  %551 = getelementptr inbounds %struct.super_block, ptr %550, i32 0, i32 27
  %552 = load ptr, ptr %551, align 4
  %553 = getelementptr inbounds %struct.ext4_sb_info, ptr %552, i32 0, i32 12
  %554 = load i32, ptr %553, align 16
  %555 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 19
  %556 = load i8, ptr %555, align 2
  %557 = zext i8 %556 to i32
  %558 = add i32 %554, %557
  %559 = shl nuw i32 1, %558
  %560 = sub i32 0, %559
  %561 = add i32 %543, -1
  %562 = add i32 %561, %559
  %563 = and i32 %562, %560
  %564 = zext i32 %563 to i64
  call void @inode_sub_bytes(ptr noundef %3, i64 noundef %564) #13
  br label %565

565:                                              ; preds = %548, %541, %504
  %566 = load i32, ptr %25, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %616

568:                                              ; preds = %565
  %569 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 4
  %570 = load i32, ptr %569, align 4
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %616, label %572

572:                                              ; preds = %568
  %573 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 3
  %574 = load i32, ptr %573, align 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %616

576:                                              ; preds = %572
  %577 = load ptr, ptr %16, align 4
  %578 = getelementptr i8, ptr %577, i32 %101
  %579 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 2
  %580 = load i16, ptr %579, align 2
  %581 = zext i16 %580 to i32
  %582 = getelementptr i8, ptr %577, i32 %581
  %583 = getelementptr i8, ptr %578, i32 %38
  %584 = ptrtoint ptr %582 to i32
  %585 = ptrtoint ptr %578 to i32
  %586 = sub i32 %584, %585
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %583, ptr align 1 %578, i32 %586, i1 false)
  call void @llvm.memset.p0.i32(ptr align 1 %578, i8 0, i32 %38, i1 false)
  %587 = add i32 %101, %38
  %588 = load ptr, ptr %1, align 4
  %589 = load i32, ptr %588, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %616, label %591

591:                                              ; preds = %576
  %592 = trunc i32 %38 to i16
  br label %593

593:                                              ; preds = %609, %591
  %594 = phi i32 [ %589, %591 ], [ %614, %609 ]
  %595 = phi ptr [ %588, %591 ], [ %613, %609 ]
  %596 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %595, i32 0, i32 2
  %597 = load i16, ptr %596, align 2
  %598 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %595, i32 0, i32 3
  %599 = load i32, ptr %598, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %609

601:                                              ; preds = %593
  %602 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %595, i32 0, i32 4
  %603 = load i32, ptr %602, align 4
  %604 = icmp ne i32 %603, 0
  %605 = icmp ult i16 %597, %580
  %606 = select i1 %604, i1 %605, i1 false
  br i1 %606, label %607, label %609

607:                                              ; preds = %601
  %608 = add i16 %597, %592
  store i16 %608, ptr %596, align 2
  br label %609

609:                                              ; preds = %607, %601, %593
  %610 = and i32 %594, 255
  %611 = add nuw nsw i32 %610, 19
  %612 = and i32 %611, 508
  %613 = getelementptr i8, ptr %595, i32 %612
  %614 = load i32, ptr %613, align 4
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %593

616:                                              ; preds = %609, %576, %572, %568, %565
  %617 = phi i32 [ %101, %565 ], [ %101, %572 ], [ %101, %568 ], [ %587, %576 ], [ %587, %609 ]
  %618 = phi ptr [ %102, %565 ], [ %102, %572 ], [ %102, %568 ], [ %588, %576 ], [ %613, %609 ]
  %619 = load ptr, ptr %39, align 4
  %620 = icmp eq ptr %619, null
  br i1 %620, label %621, label %631

621:                                              ; preds = %616
  %622 = add i32 %22, 19
  %623 = and i32 %622, -4
  %624 = sub i32 0, %623
  %625 = getelementptr i8, ptr %618, i32 %624
  %626 = getelementptr i8, ptr %13, i32 %623
  %627 = ptrtoint ptr %625 to i32
  %628 = ptrtoint ptr %13 to i32
  %629 = sub i32 4, %628
  %630 = add i32 %629, %627
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %13, ptr align 1 %626, i32 %630, i1 false)
  call void @llvm.memset.p0.i32(ptr align 4 %625, i8 0, i32 %623, i1 false)
  br label %653

631:                                              ; preds = %616
  %632 = load i32, ptr %25, align 4
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %649, label %634

634:                                              ; preds = %631
  %635 = add i32 %22, 19
  %636 = and i32 %635, -4
  %637 = ptrtoint ptr %618 to i32
  %638 = ptrtoint ptr %13 to i32
  %639 = sub i32 4, %638
  %640 = add i32 %639, %637
  %641 = getelementptr i8, ptr %13, i32 %636
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %641, ptr align 4 %13, i32 %640, i1 false)
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 %636, i1 false)
  %642 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 3
  %643 = load i32, ptr %642, align 4
  %644 = trunc i32 %643 to i8
  %645 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 1
  store i8 %644, ptr %645, align 1
  %646 = trunc i32 %22 to i8
  store i8 %646, ptr %13, align 4
  %647 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 6
  %648 = load ptr, ptr %0, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %647, ptr align 1 %648, i32 %22, i1 false)
  br label %653

649:                                              ; preds = %631
  %650 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 3
  store i32 0, ptr %650, align 4
  %651 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 2
  store i16 0, ptr %651, align 2
  %652 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 4
  store i32 0, ptr %652, align 4
  br label %653

653:                                              ; preds = %649, %634, %621
  %654 = load ptr, ptr %39, align 4
  %655 = icmp eq ptr %654, null
  br i1 %655, label %754, label %656

656:                                              ; preds = %653
  br i1 %42, label %657, label %661

657:                                              ; preds = %656
  %658 = getelementptr inbounds %struct.inode, ptr %505, i32 0, i32 10
  %659 = load i32, ptr %658, align 4
  %660 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 3
  store i32 %659, ptr %660, align 4
  br label %680

661:                                              ; preds = %656
  %662 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 2
  %663 = load i32, ptr %662, align 4
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %680, label %665

665:                                              ; preds = %661
  %666 = load ptr, ptr %16, align 4
  %667 = getelementptr i8, ptr %666, i32 %617
  %668 = getelementptr i8, ptr %667, i32 %69
  %669 = sub i32 %617, %68
  %670 = trunc i32 %669 to i16
  %671 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 2
  store i16 %670, ptr %671, align 2
  %672 = load ptr, ptr %39, align 4
  %673 = icmp eq ptr %672, inttoptr (i32 -1 to ptr)
  br i1 %673, label %674, label %675

674:                                              ; preds = %665
  call void @llvm.memset.p0.i32(ptr align 1 %668, i8 0, i32 %68, i1 false)
  br label %680

675:                                              ; preds = %665
  %676 = load i32, ptr %662, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %668, ptr align 1 %672, i32 %676, i1 false)
  %677 = load i32, ptr %662, align 4
  %678 = getelementptr i8, ptr %668, i32 %677
  %679 = sub i32 %68, %677
  call void @llvm.memset.p0.i32(ptr align 1 %678, i8 0, i32 %679, i1 false)
  br label %680

680:                                              ; preds = %675, %674, %661, %657
  %681 = getelementptr inbounds %struct.ext4_xattr_info, ptr %0, i32 0, i32 2
  %682 = load i32, ptr %681, align 4
  %683 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 4
  store i32 %682, ptr %683, align 4
  br label %684

684:                                              ; preds = %680, %61, %60
  %685 = phi i32 [ %68, %680 ], [ %38, %61 ], [ %38, %60 ]
  %686 = phi ptr [ %505, %680 ], [ null, %61 ], [ null, %60 ]
  %687 = load ptr, ptr %39, align 4
  %688 = icmp eq ptr %687, null
  br i1 %688, label %754, label %689

689:                                              ; preds = %684
  br i1 %42, label %690, label %714

690:                                              ; preds = %689
  %691 = getelementptr inbounds %struct.inode, ptr %686, i32 0, i32 14
  %692 = load i64, ptr %691, align 8
  %693 = trunc i64 %692 to i32
  %694 = load i8, ptr %13, align 4
  %695 = icmp eq i8 %694, 0
  br i1 %695, label %699, label %696

696:                                              ; preds = %690
  %697 = zext i8 %694 to i32
  %698 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 6
  br label %703

699:                                              ; preds = %703, %690
  %700 = phi i32 [ 0, %690 ], [ %712, %703 ]
  %701 = call i32 @llvm.fshl.i32(i32 %700, i32 %700, i32 16) #13
  %702 = xor i32 %701, %693
  br label %751

703:                                              ; preds = %703, %696
  %704 = phi i32 [ %712, %703 ], [ 0, %696 ]
  %705 = phi i32 [ %707, %703 ], [ %697, %696 ]
  %706 = phi ptr [ %709, %703 ], [ %698, %696 ]
  %707 = add nsw i32 %705, -1
  %708 = call i32 @llvm.fshl.i32(i32 %704, i32 %704, i32 5) #13
  %709 = getelementptr i8, ptr %706, i32 1
  %710 = load i8, ptr %706, align 1
  %711 = zext i8 %710 to i32
  %712 = xor i32 %708, %711
  %713 = icmp eq i32 %707, 0
  br i1 %713, label %699, label %703

714:                                              ; preds = %689
  br i1 %4, label %715, label %751

715:                                              ; preds = %714
  %716 = load ptr, ptr %16, align 4
  %717 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 2
  %718 = load i16, ptr %717, align 2
  %719 = zext i16 %718 to i32
  %720 = getelementptr i8, ptr %716, i32 %719
  %721 = load i8, ptr %13, align 4
  %722 = lshr exact i32 %685, 2
  %723 = icmp eq i8 %721, 0
  br i1 %723, label %727, label %724

724:                                              ; preds = %715
  %725 = zext i8 %721 to i32
  %726 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 6
  br label %730

727:                                              ; preds = %730, %715
  %728 = phi i32 [ 0, %715 ], [ %739, %730 ]
  %729 = icmp eq i32 %685, 0
  br i1 %729, label %751, label %741

730:                                              ; preds = %730, %724
  %731 = phi i32 [ %739, %730 ], [ 0, %724 ]
  %732 = phi i32 [ %734, %730 ], [ %725, %724 ]
  %733 = phi ptr [ %736, %730 ], [ %726, %724 ]
  %734 = add nsw i32 %732, -1
  %735 = call i32 @llvm.fshl.i32(i32 %731, i32 %731, i32 5) #13
  %736 = getelementptr i8, ptr %733, i32 1
  %737 = load i8, ptr %733, align 1
  %738 = zext i8 %737 to i32
  %739 = xor i32 %735, %738
  %740 = icmp eq i32 %734, 0
  br i1 %740, label %727, label %730

741:                                              ; preds = %741, %727
  %742 = phi i32 [ %749, %741 ], [ %728, %727 ]
  %743 = phi i32 [ %745, %741 ], [ %722, %727 ]
  %744 = phi ptr [ %747, %741 ], [ %720, %727 ]
  %745 = add i32 %743, -1
  %746 = call i32 @llvm.fshl.i32(i32 %742, i32 %742, i32 16) #13
  %747 = getelementptr i32, ptr %744, i32 1
  %748 = load i32, ptr %744, align 4
  %749 = xor i32 %748, %746
  %750 = icmp eq i32 %745, 0
  br i1 %750, label %751, label %741

751:                                              ; preds = %741, %727, %714, %699
  %752 = phi i32 [ %702, %699 ], [ 0, %714 ], [ %728, %727 ], [ %749, %741 ]
  %753 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %13, i32 0, i32 5
  store i32 %752, ptr %753, align 4
  br label %754

754:                                              ; preds = %751, %684, %653
  %755 = phi ptr [ %686, %751 ], [ %686, %684 ], [ %505, %653 ]
  br i1 %4, label %756, label %780

756:                                              ; preds = %754
  %757 = load ptr, ptr %16, align 4
  %758 = getelementptr %struct.ext4_xattr_header, ptr %757, i32 1
  %759 = load i32, ptr %758, align 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %777, label %761

761:                                              ; preds = %768, %756
  %762 = phi i32 [ %775, %768 ], [ %759, %756 ]
  %763 = phi i32 [ %770, %768 ], [ 0, %756 ]
  %764 = phi ptr [ %774, %768 ], [ %758, %756 ]
  %765 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %764, i32 0, i32 5
  %766 = load i32, ptr %765, align 4
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %777, label %768

768:                                              ; preds = %761
  %769 = call i32 @llvm.fshl.i32(i32 %763, i32 %763, i32 16) #13
  %770 = xor i32 %766, %769
  %771 = and i32 %762, 255
  %772 = add nuw nsw i32 %771, 19
  %773 = and i32 %772, 508
  %774 = getelementptr i8, ptr %764, i32 %773
  %775 = load i32, ptr %774, align 4
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %761

777:                                              ; preds = %768, %761, %756
  %778 = phi i32 [ 0, %756 ], [ %770, %768 ], [ 0, %761 ]
  %779 = getelementptr inbounds %struct.ext4_xattr_header, ptr %757, i32 0, i32 3
  store i32 %778, ptr %779, align 4
  br label %780

780:                                              ; preds = %777, %754, %524, %517, %511, %487, %150, %128, %103, %82
  %781 = phi ptr [ %755, %777 ], [ %755, %754 ], [ null, %511 ], [ null, %487 ], [ null, %150 ], [ null, %82 ], [ %505, %517 ], [ %505, %524 ], [ null, %103 ], [ null, %128 ]
  %782 = phi i32 [ 0, %777 ], [ 0, %754 ], [ %509, %511 ], [ %488, %487 ], [ %146, %150 ], [ -117, %82 ], [ %509, %517 ], [ %509, %524 ], [ -28, %103 ], [ -28, %128 ]
  %783 = load ptr, ptr %11, align 4
  call void @iput(ptr noundef %783) #13
  call void @iput(ptr noundef %781) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  ret i32 %782
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_set_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ext4_xattr_info, align 4
  %9 = alloca %struct.ext4_xattr_ibody_find, align 4
  %10 = alloca %struct.ext4_xattr_block_find, align 4
  %11 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #13
  store ptr %3, ptr %8, align 4
  %12 = getelementptr inbounds %struct.ext4_xattr_info, ptr %8, i32 0, i32 1
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ext4_xattr_info, ptr %8, i32 0, i32 2
  store i32 %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ext4_xattr_info, ptr %8, i32 0, i32 3
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ext4_xattr_info, ptr %8, i32 0, i32 4
  store i32 0, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) @__const.ext4_xattr_set_handle.is, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) @__const.ext4_xattr_set_handle.bs, i32 24, i1 false)
  %16 = icmp eq ptr %3, null
  br i1 %16, label %353, label %17

17:                                               ; preds = %7
  %18 = tail call i32 @strlen(ptr noundef nonnull %3)
  %19 = icmp ugt i32 %18, 255
  br i1 %19, label %353, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %1, i32 -120
  tail call void @down_write(ptr noundef %21) #13
  %22 = getelementptr i8, ptr %1, i32 -128
  %23 = load volatile i32, ptr %22, align 4
  %24 = lshr i32 %23, 3
  %25 = and i32 %24, 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %22) #13
  %26 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %26, label %156, label %27

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %1, i32 -144
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @ext4_sb_bread(ptr noundef %33, i64 noundef %29, i32 noundef 8192) #13
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %1, ptr noundef %34, ptr noundef nonnull @__func__.ext4_xattr_get_block, i32 noundef 2248) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = icmp eq ptr %34, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void @__brelse(ptr noundef nonnull %34) #13
  br label %42

42:                                               ; preds = %41, %39
  %43 = inttoptr i32 %37 to ptr
  br label %44

44:                                               ; preds = %42, %36, %31
  %45 = phi ptr [ %43, %42 ], [ %34, %31 ], [ %34, %36 ]
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = ptrtoint ptr %45 to i32
  br label %337

49:                                               ; preds = %44, %27
  %50 = phi ptr [ %45, %44 ], [ null, %27 ]
  %51 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = and i32 %6, 1
  %54 = icmp eq i32 %53, 0
  %55 = icmp eq ptr %1, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %49
  %57 = getelementptr i8, ptr %1, i32 -124
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 268435456
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %1, i32 478
  %63 = load i16, ptr %62, align 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef nonnull %1) #13
  %67 = add i32 %66, 8
  br label %68

68:                                               ; preds = %65, %61, %56, %49
  %69 = phi i32 [ %67, %65 ], [ 7, %61 ], [ 7, %49 ], [ 7, %56 ]
  %70 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ext4_super_block, ptr %73, i32 0, i32 29
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %119, label %78

78:                                               ; preds = %68
  %79 = add i32 %69, 4
  %80 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 3
  %81 = load i32, ptr %80, align 16
  %82 = add i32 %5, -1
  %83 = add i32 %82, %81
  %84 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 2
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i32
  %87 = lshr i32 %83, %86
  %88 = add i32 %87, 1
  %89 = shl i32 %88, 1
  %90 = add i32 %79, %88
  %91 = add i32 %90, %89
  %92 = lshr i32 65536, %86
  %93 = shl nuw nsw i32 %92, 1
  %94 = add nuw nsw i32 %93, 6
  %95 = select i1 %54, i32 %94, i32 0
  %96 = add i32 %91, %95
  %97 = icmp eq ptr %50, null
  br i1 %97, label %124, label %98

98:                                               ; preds = %78
  %99 = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr %struct.ext4_xattr_header, ptr %100, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %104, %98
  %105 = phi i32 [ %117, %104 ], [ %102, %98 ]
  %106 = phi ptr [ %116, %104 ], [ %101, %98 ]
  %107 = phi i32 [ %112, %104 ], [ %96, %98 ]
  %108 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %106, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = add i32 %107, %111
  %113 = and i32 %105, 255
  %114 = add nuw nsw i32 %113, 19
  %115 = and i32 %114, 508
  %116 = getelementptr i8, ptr %106, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %104

119:                                              ; preds = %104, %68
  %120 = phi i32 [ %69, %68 ], [ %112, %104 ]
  %121 = icmp eq ptr %50, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119, %98
  %123 = phi i32 [ %120, %119 ], [ %96, %98 ]
  tail call void @__brelse(ptr noundef nonnull %50) #13
  br label %124

124:                                              ; preds = %122, %119, %78
  %125 = phi i32 [ %120, %119 ], [ %123, %122 ], [ %96, %78 ]
  %126 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load ptr, ptr %0, align 4
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi ptr [ %131, %130 ], [ %0, %124 ]
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.journal_s, ptr %134, i32 0, i32 48
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %138, -1
  %142 = add i32 %141, %140
  %143 = sdiv i32 %142, %140
  %144 = sub i32 %136, %143
  %145 = icmp slt i32 %144, %125
  br i1 %145, label %337, label %146

146:                                              ; preds = %132
  %147 = tail call ptr @llvm.thread.pointer() #13
  %148 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 262144
  %151 = icmp eq i32 %150, 0
  %152 = load i1, ptr @ext4_xattr_set_handle.__already_done, align 1
  %153 = xor i1 %152, true
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %156, !prof !9

155:                                              ; preds = %146
  store i1 true, ptr @ext4_xattr_set_handle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2316, i32 noundef 9, ptr noundef null) #13
  br label %156

156:                                              ; preds = %155, %146, %20
  %157 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %9, i32 0, i32 1
  %158 = call i32 @ext4_reserve_inode_write(ptr noundef %0, ptr noundef %1, ptr noundef %157) #13
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %337

160:                                              ; preds = %156
  %161 = load volatile i32, ptr %22, align 4
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %157, align 4
  %166 = getelementptr inbounds %struct.buffer_head, ptr %165, i32 0, i32 5
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %9, i32 0, i32 1, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr i8, ptr %167, i32 %169
  %171 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.super_block, ptr %172, i32 0, i32 27
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ext4_sb_info, ptr %174, i32 0, i32 29
  %176 = load i32, ptr %175, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %170, i8 0, i32 %176, i1 false)
  call void @_clear_bit(i32 noundef 1, ptr noundef %22) #13
  br label %177

177:                                              ; preds = %164, %160
  %178 = call i32 @ext4_xattr_ibody_find(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %337

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.ext4_xattr_search, ptr %9, i32 0, i32 4
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ext4_xattr_search, ptr %10, i32 0, i32 4
  br label %201

186:                                              ; preds = %180
  %187 = call fastcc i32 @ext4_xattr_block_find(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %337

189:                                              ; preds = %186
  %190 = load i32, ptr %181, align 4
  %191 = icmp ne i32 %190, 0
  %192 = getelementptr inbounds %struct.ext4_xattr_search, ptr %10, i32 0, i32 4
  %193 = load i32, ptr %192, align 4
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %191, i1 %194, i1 false
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = and i32 %6, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %337

199:                                              ; preds = %196
  %200 = icmp eq ptr %4, null
  br i1 %200, label %337, label %226

201:                                              ; preds = %189, %184
  %202 = phi i32 [ -61, %184 ], [ %193, %189 ]
  %203 = phi ptr [ %185, %184 ], [ %192, %189 ]
  %204 = phi i32 [ 0, %184 ], [ %190, %189 ]
  %205 = and i32 %6, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %337

207:                                              ; preds = %201
  %208 = icmp eq ptr %4, null
  %209 = icmp eq i32 %204, 0
  br i1 %208, label %210, label %217

210:                                              ; preds = %207
  br i1 %209, label %211, label %213

211:                                              ; preds = %210
  %212 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %306

213:                                              ; preds = %210
  %214 = icmp eq i32 %202, 0
  br i1 %214, label %215, label %332

215:                                              ; preds = %213
  %216 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10)
  br label %306

217:                                              ; preds = %207
  br i1 %209, label %218, label %221

218:                                              ; preds = %217
  %219 = call fastcc i32 @ext4_xattr_value_same(ptr noundef nonnull %9, ptr noundef nonnull %8)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %337

221:                                              ; preds = %218, %217
  %222 = icmp eq i32 %202, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = call fastcc i32 @ext4_xattr_value_same(ptr noundef nonnull %10, ptr noundef nonnull %8)
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %337

226:                                              ; preds = %223, %221, %199
  %227 = phi ptr [ %203, %223 ], [ %203, %221 ], [ %192, %199 ]
  %228 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.super_block, ptr %229, i32 0, i32 27
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.ext4_sb_info, ptr %231, i32 0, i32 15
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.ext4_super_block, ptr %233, i32 0, i32 29
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 1024
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %226
  %239 = add i32 %5, 3
  %240 = and i32 %239, -4
  %241 = getelementptr inbounds %struct.super_block, ptr %229, i32 0, i32 3
  %242 = load i32, ptr %241, align 16
  %243 = add i32 %242, -56
  %244 = icmp ugt i32 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  store i32 1, ptr %15, align 4
  br label %246

246:                                              ; preds = %245, %238, %226
  %247 = phi i32 [ 1, %245 ], [ 0, %238 ], [ 0, %226 ]
  %248 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %249 = icmp ne i32 %248, 0
  %250 = load i32, ptr %227, align 4
  %251 = icmp ne i32 %250, 0
  %252 = select i1 %249, i1 true, i1 %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %246
  %254 = getelementptr i8, ptr %1, i32 -144
  %255 = getelementptr inbounds %struct.ext4_xattr_search, ptr %10, i32 0, i32 1
  %256 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %10, i32 0, i32 1
  %257 = icmp eq i32 %5, 0
  br label %260

258:                                              ; preds = %300, %246
  store ptr null, ptr %12, align 4
  %259 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10)
  br label %306

260:                                              ; preds = %300, %253
  %261 = phi i32 [ %247, %253 ], [ 1, %300 ]
  %262 = phi i32 [ %248, %253 ], [ %301, %300 ]
  %263 = icmp eq i32 %262, -28
  br i1 %263, label %264, label %306

264:                                              ; preds = %260
  %265 = load i64, ptr %254, align 8
  %266 = icmp eq i64 %265, 0
  %267 = load ptr, ptr %255, align 4
  %268 = icmp ne ptr %267, null
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %277, label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr %256, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  call void @__brelse(ptr noundef nonnull %271) #13
  br label %274

274:                                              ; preds = %273, %270
  store ptr null, ptr %256, align 4
  %275 = call fastcc i32 @ext4_xattr_block_find(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %337

277:                                              ; preds = %274, %264
  %278 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %279 = icmp ne i32 %278, 0
  %280 = load i32, ptr %181, align 4
  %281 = icmp ne i32 %280, 0
  %282 = select i1 %279, i1 true, i1 %281
  br i1 %282, label %285, label %283

283:                                              ; preds = %277
  store ptr null, ptr %12, align 4
  %284 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %306

285:                                              ; preds = %277
  %286 = icmp eq i32 %278, -28
  br i1 %286, label %287, label %306

287:                                              ; preds = %285
  %288 = load ptr, ptr %228, align 4
  %289 = getelementptr inbounds %struct.super_block, ptr %288, i32 0, i32 27
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 15
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.ext4_super_block, ptr %292, i32 0, i32 29
  %294 = load i32, ptr %293, align 8
  %295 = and i32 %294, 1024
  %296 = icmp eq i32 %295, 0
  %297 = or i1 %257, %296
  %298 = icmp ne i32 %261, 0
  %299 = or i1 %297, %298
  br i1 %299, label %332, label %300

300:                                              ; preds = %287
  store i32 1, ptr %15, align 4
  %301 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %302 = icmp ne i32 %301, 0
  %303 = load i32, ptr %227, align 4
  %304 = icmp ne i32 %303, 0
  %305 = select i1 %302, i1 true, i1 %304
  br i1 %305, label %260, label %258

306:                                              ; preds = %285, %283, %260, %258, %215, %211
  %307 = phi i1 [ false, %283 ], [ false, %258 ], [ true, %215 ], [ true, %211 ], [ false, %260 ], [ false, %285 ]
  %308 = phi i32 [ %284, %283 ], [ %259, %258 ], [ %216, %215 ], [ %212, %211 ], [ %278, %285 ], [ %262, %260 ]
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %332

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %312 = load ptr, ptr %311, align 4
  call fastcc void @ext4_xattr_update_super_block(ptr noundef %0, ptr noundef %312)
  %313 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %11, ptr noundef %1) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %313, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  %314 = select i1 %307, i32 0, i32 %25
  %315 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef %157) #13
  store ptr null, ptr %157, align 4
  %316 = load ptr, ptr %311, align 4
  %317 = getelementptr inbounds %struct.super_block, ptr %316, i32 0, i32 10
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, 16
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %310
  %322 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %323 = load i32, ptr %322, align 4
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  %326 = or i1 %26, %325
  br i1 %326, label %332, label %328

327:                                              ; preds = %310
  br i1 %26, label %332, label %328

328:                                              ; preds = %327, %321
  %329 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %330 = load i32, ptr %329, align 4
  %331 = or i32 %330, 1
  store i32 %331, ptr %329, align 4
  br label %332

332:                                              ; preds = %328, %327, %321, %306, %287, %213
  %333 = phi i32 [ %314, %321 ], [ %25, %306 ], [ %314, %327 ], [ %314, %328 ], [ %25, %213 ], [ %25, %287 ]
  %334 = phi i32 [ %315, %321 ], [ %308, %306 ], [ %315, %327 ], [ %315, %328 ], [ -17, %213 ], [ -28, %287 ]
  %335 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %336 = load ptr, ptr %335, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %336, i32 noundef 0, ptr noundef %0) #13
  br label %337

337:                                              ; preds = %332, %274, %223, %218, %201, %199, %196, %186, %177, %156, %132, %47
  %338 = phi i32 [ %25, %199 ], [ %333, %332 ], [ %25, %223 ], [ %25, %218 ], [ %25, %196 ], [ %25, %201 ], [ %25, %186 ], [ %25, %177 ], [ %25, %156 ], [ %25, %132 ], [ %25, %47 ], [ %25, %274 ]
  %339 = phi i32 [ 0, %199 ], [ %334, %332 ], [ 0, %223 ], [ 0, %218 ], [ -61, %196 ], [ -17, %201 ], [ %187, %186 ], [ %178, %177 ], [ %158, %156 ], [ -28, %132 ], [ %48, %47 ], [ %275, %274 ]
  %340 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %9, i32 0, i32 1
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %337
  call void @__brelse(ptr noundef nonnull %341) #13
  br label %344

344:                                              ; preds = %343, %337
  %345 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %10, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %349, label %348

348:                                              ; preds = %344
  call void @__brelse(ptr noundef nonnull %346) #13
  br label %349

349:                                              ; preds = %348, %344
  %350 = icmp eq i32 %338, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %349
  call void @_clear_bit(i32 noundef 3, ptr noundef %22) #13
  br label %352

352:                                              ; preds = %351, %349
  call void @up_write(ptr noundef %21) #13
  br label %353

353:                                              ; preds = %352, %17, %7
  %354 = phi i32 [ %339, %352 ], [ -22, %7 ], [ -34, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  ret i32 %354
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_block_find(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -144
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @ext4_sb_bread(ptr noundef %9, i64 noundef %5, i32 noundef 8192) #13
  %11 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %2, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = ptrtoint ptr %10 to i32
  store ptr null, ptr %11, align 4
  br label %73

15:                                               ; preds = %7
  %16 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @__func__.ext4_xattr_block_find, i32 noundef 1824)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %15
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr %struct.ext4_xattr_header, ptr %23, i32 1
  store ptr %24, ptr %2, align 4
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 3
  store ptr %24, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ext4_xattr_info, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %1, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %73, label %35

35:                                               ; preds = %18
  %36 = tail call i32 @strlen(ptr noundef nonnull %33) #13
  %37 = load i32, ptr %24, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %63, %35
  %40 = phi i32 [ %64, %63 ], [ %37, %35 ]
  %41 = phi ptr [ %45, %63 ], [ %24, %35 ]
  %42 = and i32 %40, 255
  %43 = add nuw nsw i32 %42, 19
  %44 = and i32 %43, 508
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = icmp ult ptr %45, %28
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.xattr_find_entry, i32 noundef 296, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8) #13
  br label %73

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %41, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sub i32 %32, %51
  %53 = icmp eq i32 %32, %51
  %54 = sub i32 %36, %42
  %55 = select i1 %53, i32 %54, i32 %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %41, i32 0, i32 6
  %59 = tail call i32 @memcmp(ptr noundef nonnull %33, ptr noundef %58, i32 noundef %36) #13
  br label %60

60:                                               ; preds = %57, %48
  %61 = phi i32 [ %55, %48 ], [ %59, %57 ]
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %45, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %39

66:                                               ; preds = %63
  store ptr %45, ptr %30, align 4
  br label %70

67:                                               ; preds = %60
  store ptr %41, ptr %30, align 4
  %68 = icmp eq i32 %61, 0
  %69 = select i1 %68, i32 0, i32 -61
  br label %70

70:                                               ; preds = %67, %66, %35
  %71 = phi i32 [ -61, %35 ], [ -61, %66 ], [ %69, %67 ]
  %72 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 4
  store i32 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %70, %47, %18, %15, %13, %3
  %74 = phi i32 [ %14, %13 ], [ %16, %15 ], [ 0, %70 ], [ 0, %3 ], [ -117, %47 ], [ -22, %18 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_block_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.ext4_xattr_search, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef align 4 dereferenceable(20) %3, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 125
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %148, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 1863, ptr noundef %0, ptr noundef %11, ptr noundef %21, i32 noundef 1) #13
  store i32 %22, ptr %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %527

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 4
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #13, !srcloc !17
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 4, ptr elementtype(i32) %25) #13, !srcloc !18
  %31 = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  tail call void @__lock_buffer(ptr noundef %25) #13
  br label %35

35:                                               ; preds = %34, %29
  %36 = getelementptr inbounds %struct.ext4_xattr_header, ptr %17, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %96

39:                                               ; preds = %35
  %40 = icmp eq ptr %15, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %20, align 4
  %43 = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ext4_xattr_header, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 3
  %48 = load i64, ptr %47, align 8
  tail call void @mb_cache_entry_delete(ptr noundef nonnull %15, i32 noundef %46, i64 noundef %48) #13
  br label %49

49:                                               ; preds = %41, %39
  %50 = call fastcc i32 @ext4_xattr_set_entry(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  store i32 %50, ptr %6, align 4
  %51 = load ptr, ptr %20, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 27
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 15
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ext4_super_block, ptr %56, i32 0, i32 30
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %90, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 119
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  %65 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %79, !prof !9

68:                                               ; preds = %61
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %69 = load ptr, ptr %53, align 4
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_super_block, ptr %71, i32 0, i32 30
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 119
  %78 = load ptr, ptr %77, align 8
  br label %79

79:                                               ; preds = %76, %61
  %80 = phi ptr [ %78, %76 ], [ %63, %61 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 3
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %1, i64 noundef %84, ptr noundef %86) #13
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr inbounds %struct.ext4_xattr_header, ptr %88, i32 0, i32 4
  store i32 %87, ptr %89, align 4
  br label %90

90:                                               ; preds = %82, %79, %68, %49
  %91 = load ptr, ptr %20, align 4
  tail call void @unlock_buffer(ptr noundef %91) #13
  switch i32 %50, label %527 [
    i32 -117, label %605
    i32 0, label %92
  ]

92:                                               ; preds = %90
  %93 = load ptr, ptr %20, align 4
  %94 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 1889, ptr noundef %0, ptr noundef %1, ptr noundef %93) #13
  store i32 %94, ptr %6, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %179, label %527

96:                                               ; preds = %35
  %97 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %20, align 4
  %100 = getelementptr inbounds %struct.buffer_head, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  tail call void @unlock_buffer(ptr noundef %99) #13
  %102 = load ptr, ptr %20, align 4
  %103 = getelementptr inbounds %struct.buffer_head, ptr %102, i32 0, i32 4
  %104 = load i32, ptr %103, align 8
  %105 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %104, i32 noundef 3136) #14
  store ptr %105, ptr %16, align 4
  store i32 -12, ptr %6, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %527, label %107

107:                                              ; preds = %96
  %108 = load ptr, ptr %20, align 4
  %109 = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  %111 = ptrtoint ptr %98 to i32
  %112 = ptrtoint ptr %101 to i32
  %113 = sub i32 %111, %112
  %114 = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %105, ptr align 4 %115, i32 %110, i1 false)
  %116 = getelementptr %struct.ext4_xattr_header, ptr %105, i32 1
  store ptr %116, ptr %5, align 4
  %117 = getelementptr inbounds %struct.ext4_xattr_header, ptr %105, i32 0, i32 1
  store i32 1, ptr %117, align 4
  %118 = getelementptr i8, ptr %105, i32 %113
  store ptr %118, ptr %97, align 4
  %119 = load ptr, ptr %20, align 4
  %120 = getelementptr inbounds %struct.buffer_head, ptr %119, i32 0, i32 4
  %121 = load i32, ptr %120, align 8
  %122 = getelementptr i8, ptr %105, i32 %121
  %123 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 2
  store ptr %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %107
  %128 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %118, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %161, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %118, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %1, i32 noundef %129, i32 noundef %133, ptr noundef nonnull %8)
  store i32 %134, ptr %6, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %527

136:                                              ; preds = %131
  %137 = load ptr, ptr %8, align 4
  %138 = getelementptr i8, ptr %137, i32 -128
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %139, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %118, i32 0, i32 4
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %136
  %146 = phi i32 [ 0, %136 ], [ %144, %142 ]
  tail call void @iput(ptr noundef %137) #13
  store i32 0, ptr %128, align 4
  %147 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %118, i32 0, i32 4
  store i32 0, ptr %147, align 4
  br label %161

148:                                              ; preds = %4
  %149 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %150 = load i32, ptr %149, align 16
  %151 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %150, i32 noundef 3392) #14
  store ptr %151, ptr %16, align 4
  store i32 -12, ptr %6, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %527, label %153

153:                                              ; preds = %148
  store i32 -368967680, ptr %151, align 64
  %154 = getelementptr inbounds %struct.ext4_xattr_header, ptr %151, i32 0, i32 2
  store i32 1, ptr %154, align 8
  %155 = getelementptr inbounds %struct.ext4_xattr_header, ptr %151, i32 0, i32 1
  store i32 1, ptr %155, align 4
  %156 = getelementptr %struct.ext4_xattr_header, ptr %151, i32 1
  store ptr %156, ptr %5, align 4
  %157 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 3
  store ptr %156, ptr %157, align 4
  %158 = load i32, ptr %149, align 16
  %159 = getelementptr i8, ptr %151, i32 %158
  %160 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 2
  store ptr %159, ptr %160, align 4
  br label %161

161:                                              ; preds = %153, %145, %127, %107
  %162 = phi i32 [ 0, %153 ], [ 0, %127 ], [ %146, %145 ], [ 0, %107 ]
  %163 = call fastcc i32 @ext4_xattr_set_entry(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  store i32 %163, ptr %6, align 4
  switch i32 %163, label %527 [
    i32 -117, label %605
    i32 0, label %164
  ]

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ext4_xattr_info, ptr %2, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %179, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ext4_xattr_search, ptr %5, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %170, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %170, i32 0, i32 5
  %176 = load i32, ptr %175, align 4
  %177 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %1, i32 noundef %172, i32 noundef %176, ptr noundef nonnull %7)
  store i32 %177, ptr %6, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %589

179:                                              ; preds = %174, %168, %164, %92
  %180 = phi i32 [ 0, %92 ], [ %162, %174 ], [ %162, %168 ], [ %162, %164 ]
  %181 = load ptr, ptr %5, align 4
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %478, label %184

184:                                              ; preds = %179
  %185 = load ptr, ptr %16, align 4
  %186 = getelementptr inbounds %struct.ext4_xattr_header, ptr %185, i32 0, i32 3
  %187 = getelementptr %struct.ext4_xattr_header, ptr %185, i32 1
  %188 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %3, i32 0, i32 1
  %189 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  br label %190

190:                                              ; preds = %390, %184
  %191 = load i32, ptr %186, align 4
  %192 = load ptr, ptr %10, align 4
  %193 = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 27
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.ext4_sb_info, ptr %194, i32 0, i32 125
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  %198 = icmp eq i32 %191, 0
  %199 = select i1 %197, i1 true, i1 %198
  br i1 %199, label %399, label %200

200:                                              ; preds = %190
  %201 = tail call ptr @mb_cache_entry_find_first(ptr noundef nonnull %196, i32 noundef %191) #13
  %202 = icmp eq ptr %201, null
  br i1 %202, label %399, label %203

203:                                              ; preds = %286, %200
  %204 = phi ptr [ %287, %286 ], [ %201, %200 ]
  %205 = load ptr, ptr %10, align 4
  %206 = getelementptr inbounds %struct.mb_cache_entry, ptr %204, i32 0, i32 5
  %207 = load i64, ptr %206, align 8
  %208 = tail call ptr @ext4_sb_bread(ptr noundef %205, i64 noundef %207, i32 noundef 8192) #13
  %209 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = icmp eq ptr %208, inttoptr (i32 -12 to ptr)
  br i1 %211, label %399, label %212

212:                                              ; preds = %210
  %213 = load i64, ptr %206, align 8
  %214 = trunc i64 %213 to i32
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_block_cache_find, i32 noundef 3045, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %214) #13
  br label %286

215:                                              ; preds = %203
  %216 = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 5
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr %struct.ext4_xattr_header, ptr %217, i32 1
  %219 = load i32, ptr %187, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %279, label %221

221:                                              ; preds = %272, %215
  %222 = phi i32 [ %277, %272 ], [ %219, %215 ]
  %223 = phi ptr [ %276, %272 ], [ %218, %215 ]
  %224 = phi ptr [ %275, %272 ], [ %187, %215 ]
  %225 = trunc i32 %222 to i8
  %226 = load i32, ptr %223, align 4
  %227 = icmp eq i32 %226, 0
  %228 = lshr i32 %226, 8
  %229 = trunc i32 %228 to i8
  %230 = trunc i32 %226 to i8
  %231 = lshr i32 %226, 16
  br i1 %227, label %283, label %232

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %224, i32 0, i32 5
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %223, i32 0, i32 5
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %283

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %224, i32 0, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = icmp eq i8 %240, %229
  br i1 %241, label %242, label %283

242:                                              ; preds = %238
  %243 = and i32 %222, 255
  %244 = icmp eq i8 %225, %230
  br i1 %244, label %245, label %283

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %224, i32 0, i32 4
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %223, i32 0, i32 4
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %251, label %283

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %224, i32 0, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %223, i32 0, i32 3
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %283

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %224, i32 0, i32 6
  %259 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %223, i32 0, i32 6
  %260 = tail call i32 @bcmp(ptr %258, ptr %259, i32 %243) #13
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %283

262:                                              ; preds = %257
  %263 = icmp eq i32 %253, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %224, i32 0, i32 2
  %266 = load i16, ptr %265, align 2
  %267 = zext i16 %266 to i32
  %268 = getelementptr i8, ptr %185, i32 %267
  %269 = getelementptr i8, ptr %217, i32 %231
  %270 = tail call i32 @bcmp(ptr %268, ptr %269, i32 %247) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %264, %262
  %273 = add nuw nsw i32 %243, 19
  %274 = and i32 %273, 508
  %275 = getelementptr i8, ptr %224, i32 %274
  %276 = getelementptr i8, ptr %223, i32 %274
  %277 = load i32, ptr %275, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %221

279:                                              ; preds = %272, %215
  %280 = phi ptr [ %218, %215 ], [ %276, %272 ]
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %289, label %283

283:                                              ; preds = %279, %264, %257, %251, %245, %242, %238, %232, %221
  %284 = icmp eq ptr %208, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %283
  tail call void @__brelse(ptr noundef nonnull %208) #13
  br label %286

286:                                              ; preds = %285, %283, %212
  %287 = tail call ptr @mb_cache_entry_find_next(ptr noundef nonnull %196, ptr noundef nonnull %204) #13
  %288 = icmp eq ptr %287, null
  br i1 %288, label %399, label %203

289:                                              ; preds = %279
  %290 = icmp eq ptr %208, null
  br i1 %290, label %399, label %291

291:                                              ; preds = %289
  %292 = load ptr, ptr %188, align 4
  %293 = icmp eq ptr %208, %292
  br i1 %293, label %393, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr %12, align 4
  %296 = getelementptr inbounds %struct.ext4_sb_info, ptr %295, i32 0, i32 12
  %297 = load i32, ptr %296, align 16
  %298 = shl nuw i32 1, %297
  %299 = sext i32 %298 to i64
  %300 = load i8, ptr %189, align 2
  %301 = zext i8 %300 to i64
  %302 = shl i64 %299, %301
  tail call void @inode_add_bytes(ptr noundef %1, i64 noundef %302) #13
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #13
  %303 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 1997, ptr noundef %0, ptr noundef %11, ptr noundef nonnull %208, i32 noundef 1) #13
  store i32 %303, ptr %6, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %599

305:                                              ; preds = %294
  %306 = load volatile i32, ptr %208, align 4
  %307 = and i32 %306, 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %208) #13, !srcloc !17
  %310 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %208, ptr nonnull %208, i32 4, ptr nonnull elementtype(i32) %208) #13, !srcloc !18
  %311 = extractvalue { i32, i32, i32 } %310, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %312 = and i32 %311, 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %309, %305
  tail call void @__lock_buffer(ptr noundef nonnull %208) #13
  br label %315

315:                                              ; preds = %314, %309
  %316 = getelementptr inbounds %struct.mb_cache_entry, ptr %204, i32 0, i32 1, i32 1
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.mb_cache_entry, ptr %204, i32 0, i32 4
  %321 = load i8, ptr %320, align 8
  %322 = and i8 %321, 2
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %338

324:                                              ; preds = %319, %315
  tail call void @unlock_buffer(ptr noundef nonnull %208) #13
  %325 = load ptr, ptr %12, align 4
  %326 = getelementptr inbounds %struct.ext4_sb_info, ptr %325, i32 0, i32 12
  %327 = load i32, ptr %326, align 16
  %328 = shl nuw i32 1, %327
  %329 = sext i32 %328 to i64
  %330 = load i8, ptr %189, align 2
  %331 = zext i8 %330 to i64
  %332 = shl i64 %329, %331
  tail call void @inode_sub_bytes(ptr noundef %1, i64 noundef %332) #13
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #13
  tail call void @__brelse(ptr noundef nonnull %208) #13
  %333 = getelementptr inbounds %struct.mb_cache_entry, ptr %204, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %333) #13, !srcloc !17
  %334 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %333, ptr %333, i32 1, ptr elementtype(i32) %333) #13, !srcloc !21
  %335 = extractvalue { i32, i32 } %334, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %390

337:                                              ; preds = %324
  tail call void @__mb_cache_entry_free(ptr noundef %204) #13
  br label %390

338:                                              ; preds = %319
  %339 = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 5
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.ext4_xattr_header, ptr %340, i32 0, i32 1
  %342 = load i32, ptr %341, align 4
  %343 = add i32 %342, 1
  store i32 %343, ptr %341, align 4
  %344 = icmp ugt i32 %343, 1023
  br i1 %344, label %345, label %349

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.mb_cache_entry, ptr %204, i32 0, i32 4
  %347 = load i8, ptr %346, align 8
  %348 = and i8 %347, -3
  store i8 %348, ptr %346, align 8
  br label %349

349:                                              ; preds = %345, %338
  %350 = load ptr, ptr %10, align 4
  %351 = getelementptr inbounds %struct.super_block, ptr %350, i32 0, i32 27
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr inbounds %struct.ext4_sb_info, ptr %352, i32 0, i32 15
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.ext4_super_block, ptr %354, i32 0, i32 30
  %356 = load i32, ptr %355, align 4
  %357 = and i32 %356, 1024
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %387, label %359

359:                                              ; preds = %349
  %360 = getelementptr inbounds %struct.ext4_sb_info, ptr %352, i32 0, i32 119
  %361 = load ptr, ptr %360, align 8
  %362 = icmp eq ptr %361, null
  %363 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %364 = xor i1 %363, true
  %365 = select i1 %362, i1 %364, i1 false
  br i1 %365, label %366, label %377, !prof !9

366:                                              ; preds = %359
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %367 = load ptr, ptr %351, align 4
  %368 = getelementptr inbounds %struct.ext4_sb_info, ptr %367, i32 0, i32 15
  %369 = load ptr, ptr %368, align 4
  %370 = getelementptr inbounds %struct.ext4_super_block, ptr %369, i32 0, i32 30
  %371 = load i32, ptr %370, align 4
  %372 = and i32 %371, 1024
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %387, label %374

374:                                              ; preds = %366
  %375 = getelementptr inbounds %struct.ext4_sb_info, ptr %367, i32 0, i32 119
  %376 = load ptr, ptr %375, align 8
  br label %377

377:                                              ; preds = %374, %359
  %378 = phi ptr [ %376, %374 ], [ %361, %359 ]
  %379 = icmp eq ptr %378, null
  br i1 %379, label %387, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 3
  %382 = load i64, ptr %381, align 8
  %383 = load ptr, ptr %339, align 4
  %384 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %1, i64 noundef %382, ptr noundef %383) #13
  %385 = load ptr, ptr %339, align 4
  %386 = getelementptr inbounds %struct.ext4_xattr_header, ptr %385, i32 0, i32 4
  store i32 %384, ptr %386, align 4
  br label %387

387:                                              ; preds = %380, %377, %366, %349
  tail call void @unlock_buffer(ptr noundef nonnull %208) #13
  %388 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2039, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %208) #13
  store i32 %388, ptr %6, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %599

390:                                              ; preds = %337, %324
  %391 = load i32, ptr %181, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %478, label %190

393:                                              ; preds = %387, %291
  tail call void @mb_cache_entry_touch(ptr noundef %15, ptr noundef %204) #13
  %394 = getelementptr inbounds %struct.mb_cache_entry, ptr %204, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %394) #13, !srcloc !17
  %395 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %394, ptr %394, i32 1, ptr elementtype(i32) %394) #13, !srcloc !21
  %396 = extractvalue { i32, i32 } %395, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %478

398:                                              ; preds = %393
  tail call void @__mb_cache_entry_free(ptr noundef %204) #13
  br label %478

399:                                              ; preds = %289, %286, %210, %200, %190
  %400 = phi ptr [ null, %210 ], [ null, %286 ], [ null, %200 ], [ null, %190 ], [ %204, %289 ]
  %401 = load ptr, ptr %188, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %411, label %403

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.buffer_head, ptr %401, i32 0, i32 5
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %185, %405
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  tail call fastcc void @ext4_xattr_block_cache_insert(ptr noundef %15, ptr noundef nonnull %401)
  %408 = load ptr, ptr %188, align 4
  %409 = getelementptr inbounds %struct.buffer_head, ptr %408, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %409) #13, !srcloc !17
  %410 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %409, ptr %409, i32 1, ptr elementtype(i32) %409) #13, !srcloc !28
  br label %478

411:                                              ; preds = %403, %399
  %412 = getelementptr i8, ptr %1, i32 -136
  %413 = load i32, ptr %412, align 8
  %414 = zext i32 %413 to i64
  %415 = load ptr, ptr %12, align 4
  %416 = getelementptr inbounds %struct.ext4_sb_info, ptr %415, i32 0, i32 2
  %417 = load i32, ptr %416, align 8
  %418 = zext i32 %417 to i64
  %419 = mul nuw i64 %418, %414
  %420 = getelementptr inbounds %struct.ext4_sb_info, ptr %415, i32 0, i32 15
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr inbounds %struct.ext4_super_block, ptr %421, i32 0, i32 5
  %423 = load i32, ptr %422, align 4
  %424 = zext i32 %423 to i64
  %425 = add nuw i64 %419, %424
  %426 = getelementptr i8, ptr %1, i32 -124
  %427 = load volatile i32, ptr %426, align 4
  %428 = and i32 %427, 524288
  %429 = icmp eq i32 %428, 0
  %430 = and i64 %425, 4294967295
  %431 = select i1 %429, i64 %430, i64 %425
  %432 = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %431, i32 noundef 0, ptr noundef null, ptr noundef nonnull %6) #13
  %433 = load i32, ptr %6, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %527

435:                                              ; preds = %411
  %436 = load volatile i32, ptr %426, align 4
  %437 = and i32 %436, 524288
  %438 = icmp eq i32 %437, 0
  %439 = icmp ugt i64 %432, 4294967295
  %440 = select i1 %438, i1 %439, i1 false
  br i1 %440, label %441, label %442, !prof !29

441:                                              ; preds = %435
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2071, 0\0A.popsection", ""() #13, !srcloc !30
  unreachable

442:                                              ; preds = %435
  %443 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 20
  %444 = load ptr, ptr %443, align 4
  %445 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %446 = load i32, ptr %445, align 16
  %447 = call ptr @__getblk_gfp(ptr noundef %444, i64 noundef %432, i32 noundef %446, i32 noundef 8) #13
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %451, !prof !9

449:                                              ; preds = %442
  store i32 -12, ptr %6, align 4
  br label %450

450:                                              ; preds = %465, %451, %449
  call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %432, i32 noundef 1, i32 noundef 1) #13
  br label %527

451:                                              ; preds = %442
  %452 = call fastcc i32 @ext4_xattr_inode_inc_ref_all(ptr noundef %0, ptr noundef %1, ptr noundef %187)
  store i32 %452, ptr %6, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %450

454:                                              ; preds = %451
  %455 = load ptr, ptr %7, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %462, label %457

457:                                              ; preds = %454
  %458 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %0, ptr noundef nonnull %455, i32 noundef -1) #13
  store i32 %458, ptr %6, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %461, label %460

460:                                              ; preds = %457
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef nonnull %455, ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2095, ptr noundef nonnull @.str.22, i32 noundef %458) #13
  br label %461

461:                                              ; preds = %460, %457
  call void @iput(ptr noundef nonnull %455) #13
  store ptr null, ptr %7, align 4
  br label %462

462:                                              ; preds = %461, %454
  call fastcc void @lock_buffer(ptr noundef nonnull %447)
  %463 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2102, ptr noundef %0, ptr noundef %11, ptr noundef nonnull %447, i32 noundef 1) #13
  store i32 %463, ptr %6, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %462
  call void @unlock_buffer(ptr noundef nonnull %447) #13
  store i32 -5, ptr %6, align 4
  br label %450

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.buffer_head, ptr %447, i32 0, i32 5
  %468 = load ptr, ptr %467, align 4
  %469 = getelementptr inbounds %struct.buffer_head, ptr %447, i32 0, i32 4
  %470 = load i32, ptr %469, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %468, ptr align 1 %185, i32 %470, i1 false)
  call fastcc void @ext4_xattr_block_csum_set(ptr noundef %1, ptr noundef nonnull %447)
  %471 = load volatile i32, ptr %447, align 4
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %466
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %447) #13
  br label %475

475:                                              ; preds = %474, %466
  call void @unlock_buffer(ptr noundef nonnull %447) #13
  call fastcc void @ext4_xattr_block_cache_insert(ptr noundef %15, ptr noundef nonnull %447)
  %476 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2114, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %447) #13
  store i32 %476, ptr %6, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %527

478:                                              ; preds = %475, %407, %398, %393, %390, %179
  %479 = phi ptr [ %400, %407 ], [ null, %393 ], [ null, %398 ], [ %400, %475 ], [ null, %179 ], [ null, %390 ]
  %480 = phi ptr [ %408, %407 ], [ %208, %393 ], [ %208, %398 ], [ %447, %475 ], [ null, %179 ], [ null, %390 ]
  %481 = icmp eq i32 %180, 0
  br i1 %481, label %498, label %482

482:                                              ; preds = %478
  %483 = load ptr, ptr %10, align 4
  %484 = getelementptr inbounds %struct.super_block, ptr %483, i32 0, i32 27
  %485 = load ptr, ptr %484, align 4
  %486 = getelementptr inbounds %struct.ext4_sb_info, ptr %485, i32 0, i32 12
  %487 = load i32, ptr %486, align 16
  %488 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %489 = load i8, ptr %488, align 2
  %490 = zext i8 %489 to i32
  %491 = add i32 %487, %490
  %492 = shl nuw i32 1, %491
  %493 = sub i32 0, %492
  %494 = add i32 %180, -1
  %495 = add i32 %494, %492
  %496 = and i32 %495, %493
  %497 = zext i32 %496 to i64
  call void @inode_sub_bytes(ptr noundef %1, i64 noundef %497) #13
  br label %498

498:                                              ; preds = %482, %478
  %499 = icmp eq ptr %480, null
  br i1 %499, label %503, label %500

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.buffer_head, ptr %480, i32 0, i32 3
  %502 = load i64, ptr %501, align 8
  br label %503

503:                                              ; preds = %500, %498
  %504 = phi i64 [ %502, %500 ], [ 0, %498 ]
  %505 = getelementptr i8, ptr %1, i32 -144
  store i64 %504, ptr %505, align 8
  %506 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %3, i32 0, i32 1
  %507 = load ptr, ptr %506, align 4
  %508 = icmp eq ptr %507, null
  %509 = icmp eq ptr %507, %480
  %510 = select i1 %508, i1 true, i1 %509
  br i1 %510, label %526, label %511

511:                                              ; preds = %503
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4
  call fastcc void @ext4_xattr_release_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %507, ptr noundef nonnull %9, i32 noundef 0)
  %512 = load ptr, ptr %9, align 4
  %513 = icmp eq ptr %512, null
  br i1 %513, label %525, label %514

514:                                              ; preds = %511
  %515 = load i32, ptr %512, align 4
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %524, label %517

517:                                              ; preds = %517, %514
  %518 = phi i32 [ %521, %517 ], [ 0, %514 ]
  %519 = getelementptr %struct.ext4_xattr_inode_array, ptr %512, i32 0, i32 1, i32 %518
  %520 = load ptr, ptr %519, align 4
  call void @iput(ptr noundef %520) #13
  %521 = add nuw i32 %518, 1
  %522 = load i32, ptr %512, align 4
  %523 = icmp ult i32 %521, %522
  br i1 %523, label %517, label %524

524:                                              ; preds = %517, %514
  call void @kfree(ptr noundef nonnull %512) #13
  br label %525

525:                                              ; preds = %524, %511
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %526

526:                                              ; preds = %525, %503
  store i32 0, ptr %6, align 4
  br label %527

527:                                              ; preds = %605, %599, %526, %475, %450, %411, %161, %148, %131, %96, %92, %90, %19
  %528 = phi ptr [ null, %96 ], [ null, %131 ], [ null, %19 ], [ null, %605 ], [ %204, %599 ], [ %479, %526 ], [ null, %161 ], [ null, %148 ], [ null, %92 ], [ %400, %450 ], [ %400, %411 ], [ %400, %475 ], [ null, %90 ]
  %529 = phi ptr [ null, %96 ], [ null, %131 ], [ null, %19 ], [ null, %605 ], [ %208, %599 ], [ %480, %526 ], [ null, %161 ], [ null, %148 ], [ null, %92 ], [ %447, %450 ], [ null, %411 ], [ %447, %475 ], [ null, %90 ]
  %530 = load ptr, ptr %7, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %578, label %532

532:                                              ; preds = %527
  %533 = call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %0, ptr noundef nonnull %530, i32 noundef -1) #13
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %536, label %535

535:                                              ; preds = %532
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef nonnull %530, ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2144, ptr noundef nonnull @.str.22, i32 noundef %533) #13
  br label %536

536:                                              ; preds = %535, %532
  %537 = load i32, ptr %6, align 4
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %577, label %539

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.inode, ptr %530, i32 0, i32 22
  %541 = getelementptr inbounds %struct.inode, ptr %530, i32 0, i32 13
  br label %542

542:                                              ; preds = %550, %539
  %543 = load volatile i32, ptr %540, align 4
  %544 = and i32 %543, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %550, label %546

546:                                              ; preds = %546, %542
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !11
  %547 = load volatile i32, ptr %540, align 4
  %548 = and i32 %547, 1
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %546

550:                                              ; preds = %546, %542
  %551 = phi i32 [ %543, %542 ], [ %547, %546 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %552 = load i64, ptr %541, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %553 = load volatile i32, ptr %540, align 4
  %554 = icmp eq i32 %553, %551
  br i1 %554, label %555, label %542

555:                                              ; preds = %550
  %556 = getelementptr i8, ptr %530, i32 -128
  %557 = load volatile i32, ptr %556, align 4
  %558 = and i32 %557, 512
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %577

560:                                              ; preds = %555
  %561 = trunc i64 %552 to i32
  %562 = load ptr, ptr %10, align 4
  %563 = getelementptr inbounds %struct.super_block, ptr %562, i32 0, i32 27
  %564 = load ptr, ptr %563, align 4
  %565 = getelementptr inbounds %struct.ext4_sb_info, ptr %564, i32 0, i32 12
  %566 = load i32, ptr %565, align 16
  %567 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %568 = load i8, ptr %567, align 2
  %569 = zext i8 %568 to i32
  %570 = add i32 %566, %569
  %571 = shl nuw i32 1, %570
  %572 = sub i32 0, %571
  %573 = add i32 %561, -1
  %574 = add i32 %573, %571
  %575 = and i32 %574, %572
  %576 = zext i32 %575 to i64
  call void @inode_sub_bytes(ptr noundef %1, i64 noundef %576) #13
  br label %577

577:                                              ; preds = %560, %555, %536
  call void @iput(ptr noundef nonnull %530) #13
  br label %578

578:                                              ; preds = %577, %527
  %579 = icmp eq ptr %528, null
  br i1 %579, label %586, label %580

580:                                              ; preds = %578
  %581 = getelementptr inbounds %struct.mb_cache_entry, ptr %528, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %581) #13, !srcloc !17
  %582 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %581, ptr %581, i32 1, ptr elementtype(i32) %581) #13, !srcloc !21
  %583 = extractvalue { i32, i32 } %582, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %580
  call void @__mb_cache_entry_free(ptr noundef nonnull %528) #13
  br label %586

586:                                              ; preds = %585, %580, %578
  %587 = icmp eq ptr %529, null
  br i1 %587, label %589, label %588

588:                                              ; preds = %586
  call void @__brelse(ptr noundef nonnull %529) #13
  br label %589

589:                                              ; preds = %588, %586, %174
  %590 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %3, i32 0, i32 1
  %591 = load ptr, ptr %590, align 4
  %592 = icmp eq ptr %591, null
  %593 = load ptr, ptr %16, align 4
  br i1 %592, label %598, label %594

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.buffer_head, ptr %591, i32 0, i32 5
  %596 = load ptr, ptr %595, align 4
  %597 = icmp eq ptr %593, %596
  br i1 %597, label %608, label %598

598:                                              ; preds = %594, %589
  call void @kfree(ptr noundef %593) #13
  br label %608

599:                                              ; preds = %387, %294
  %600 = load ptr, ptr %12, align 4
  %601 = getelementptr inbounds %struct.ext4_sb_info, ptr %600, i32 0, i32 12
  %602 = load i32, ptr %601, align 16
  %603 = shl nuw i32 1, %602
  %604 = sext i32 %603 to i64
  tail call fastcc void @dquot_free_block(ptr noundef %1, i64 noundef %604)
  br label %527

605:                                              ; preds = %161, %90
  %606 = getelementptr i8, ptr %1, i32 -144
  %607 = load i64, ptr %606, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_block_set, i32 noundef 2166, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.23, i64 noundef %607) #13
  br label %527

608:                                              ; preds = %598, %594
  %609 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  ret i32 %609
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ext4_xattr_value_same(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ext4_xattr_search, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_xattr_info, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ext4_xattr_search, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %4, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = getelementptr inbounds %struct.ext4_xattr_info, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @bcmp(ptr %20, ptr %22, i32 %10)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %14, %8, %2
  %27 = phi i32 [ %25, %14 ], [ 0, %2 ], [ 0, %8 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_update_super_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 14
  %13 = load ptr, ptr %12, align 64
  %14 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_update_super_block, i32 noundef 795, ptr noundef %0, ptr noundef %1, ptr noundef %13, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 14
  %19 = load ptr, ptr %18, align 64
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #13, !srcloc !17
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 4, ptr elementtype(i32) %19) #13, !srcloc !18
  %25 = extractvalue { i32, i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %16
  tail call void @__lock_buffer(ptr noundef %19) #13
  br label %29

29:                                               ; preds = %28, %23
  tail call void @ext4_update_dynamic_rev(ptr noundef %1) #13
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ext4_super_block, ptr %32, i32 0, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 8
  store i32 %35, ptr %33, align 4
  tail call void @ext4_superblock_csum_set(ptr noundef %1) #13
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 14
  %38 = load ptr, ptr %37, align 64
  tail call void @unlock_buffer(ptr noundef %38) #13
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 14
  %41 = load ptr, ptr %40, align 64
  %42 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_update_super_block, i32 noundef 800, ptr noundef %0, ptr noundef null, ptr noundef %41) #13
  br label %43

43:                                               ; preds = %29, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_set_credits(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  store i32 0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %109, label %12

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_read(ptr noundef %13) #13
  %14 = getelementptr i8, ptr %0, i32 -144
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 4
  %19 = tail call ptr @ext4_sb_bread(ptr noundef %18, i64 noundef %15, i32 noundef 8192) #13
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %0, ptr noundef %19, ptr noundef nonnull @__func__.ext4_xattr_get_block, i32 noundef 2248) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %19, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @__brelse(ptr noundef nonnull %19) #13
  br label %27

27:                                               ; preds = %26, %24
  %28 = inttoptr i32 %22 to ptr
  br label %29

29:                                               ; preds = %27, %21, %17
  %30 = phi ptr [ %28, %27 ], [ %19, %17 ], [ %19, %21 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  br label %107

34:                                               ; preds = %29, %12
  %35 = phi ptr [ %30, %29 ], [ null, %12 ]
  %36 = load ptr, ptr %5, align 4
  %37 = icmp eq ptr %0, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 -124
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 268435456
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %0, i32 478
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef nonnull %0) #13
  %49 = add i32 %48, 8
  br label %50

50:                                               ; preds = %47, %43, %38, %34
  %51 = phi i32 [ %49, %47 ], [ 7, %43 ], [ 7, %34 ], [ 7, %38 ]
  %52 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ext4_super_block, ptr %55, i32 0, i32 29
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %50
  %61 = add i32 %51, 4
  %62 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 3
  %63 = load i32, ptr %62, align 16
  %64 = add i32 %1, -1
  %65 = add i32 %64, %63
  %66 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 2
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = lshr i32 %65, %68
  %70 = add i32 %69, 1
  %71 = shl i32 %70, 1
  %72 = add i32 %61, %70
  %73 = add i32 %72, %71
  %74 = lshr i32 65536, %68
  %75 = shl nuw nsw i32 %74, 1
  %76 = add nuw nsw i32 %75, 6
  %77 = select i1 %2, i32 0, i32 %76
  %78 = add i32 %73, %77
  %79 = icmp eq ptr %35, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  store i32 %78, ptr %3, align 4
  br label %107

81:                                               ; preds = %60
  %82 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr %struct.ext4_xattr_header, ptr %83, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 %78, ptr %3, align 4
  br label %106

88:                                               ; preds = %88, %81
  %89 = phi i32 [ %101, %88 ], [ %85, %81 ]
  %90 = phi ptr [ %100, %88 ], [ %84, %81 ]
  %91 = phi i32 [ %96, %88 ], [ %78, %81 ]
  %92 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %90, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = add i32 %91, %95
  %97 = and i32 %89, 255
  %98 = add nuw nsw i32 %97, 19
  %99 = and i32 %98, 508
  %100 = getelementptr i8, ptr %90, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %88

103:                                              ; preds = %88, %50
  %104 = phi i32 [ %51, %50 ], [ %96, %88 ]
  store i32 %104, ptr %3, align 4
  %105 = icmp eq ptr %35, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %103, %87
  tail call void @__brelse(ptr noundef nonnull %35) #13
  br label %107

107:                                              ; preds = %106, %103, %80, %32
  %108 = phi i32 [ %33, %32 ], [ 0, %80 ], [ 0, %103 ], [ 0, %106 ]
  tail call void @up_read(ptr noundef %13) #13
  br label %109

109:                                              ; preds = %107, %4
  %110 = phi i32 [ %108, %107 ], [ 0, %4 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_set(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !8
  %11 = and i32 %5, 1
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %31, %6
  %14 = call i32 @ext4_xattr_set_credits(ptr noundef %0, i32 noundef %4, i1 noundef zeroext %12, ptr noundef nonnull %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 3
  %24 = call ptr @__ext4_journal_start_sb(ptr noundef %18, i32 noundef 2474, i32 noundef 10, i32 noundef %17, i32 noundef 0, i32 noundef %23) #13
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = ptrtoint ptr %24 to i32
  br label %36

28:                                               ; preds = %16
  %29 = call i32 @ext4_xattr_set_handle(ptr noundef %24, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %30 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_xattr_set, i32 noundef 2482, ptr noundef %24) #13
  switch i32 %29, label %34 [
    i32 -28, label %31
    i32 0, label %36
  ]

31:                                               ; preds = %28
  %32 = call i32 @ext4_should_retry_alloc(ptr noundef %10, ptr noundef nonnull %7) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %13

34:                                               ; preds = %31, %28
  %35 = phi i32 [ -28, %31 ], [ %29, %28 ]
  br label %36

36:                                               ; preds = %34, %28, %26
  %37 = phi i32 [ %27, %26 ], [ %35, %34 ], [ %30, %28 ]
  %38 = load ptr, ptr %9, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %38, i32 noundef 0, ptr noundef null) #13
  br label %39

39:                                               ; preds = %36, %13
  %40 = phi i32 [ %37, %36 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_expand_extra_isize_ea(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_xattr_info, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 53
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %0, i32 476
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %19, label %398

19:                                               ; preds = %4
  %20 = getelementptr i8, ptr %2, i32 128
  %21 = getelementptr i8, ptr %0, i32 -144
  %22 = icmp ne i16 %13, 0
  %23 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 3
  %26 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 4
  %27 = getelementptr i8, ptr %0, i32 -128
  %28 = getelementptr i8, ptr %20, i32 %17
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 29
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %2, i32 %30
  %32 = tail call fastcc i32 @__xattr_check_inode(ptr noundef %0, ptr noundef %28, ptr noundef %31, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2705)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %382

34:                                               ; preds = %19
  %35 = sub i32 %1, %17
  br label %36

36:                                               ; preds = %149, %34
  %37 = phi ptr [ %31, %34 ], [ %158, %149 ]
  %38 = phi ptr [ %28, %34 ], [ %155, %149 ]
  %39 = phi i32 [ %1, %34 ], [ %14, %149 ]
  %40 = phi i1 [ true, %34 ], [ false, %149 ]
  %41 = phi i32 [ %35, %34 ], [ %151, %149 ]
  %42 = getelementptr %struct.ext4_xattr_ibody_header, ptr %38, i32 1
  %43 = ptrtoint ptr %42 to i32
  %44 = ptrtoint ptr %37 to i32
  %45 = sub i32 %44, %43
  %46 = load i32, ptr %42, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %65, %36
  %49 = phi i32 [ %72, %65 ], [ %46, %36 ]
  %50 = phi i32 [ %66, %65 ], [ %45, %36 ]
  %51 = phi i32 [ %70, %65 ], [ 8, %36 ]
  %52 = phi ptr [ %71, %65 ], [ %42, %36 ]
  %53 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %52, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %52, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %52, i32 0, i32 2
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = tail call i32 @llvm.umin.i32(i32 %50, i32 %63)
  br label %65

65:                                               ; preds = %60, %56, %48
  %66 = phi i32 [ %50, %56 ], [ %50, %48 ], [ %64, %60 ]
  %67 = and i32 %49, 255
  %68 = add nuw nsw i32 %67, 19
  %69 = and i32 %68, 508
  %70 = add i32 %69, %51
  %71 = getelementptr i8, ptr %52, i32 %69
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %48

74:                                               ; preds = %65
  %75 = ptrtoint ptr %71 to i32
  br label %76

76:                                               ; preds = %74, %36
  %77 = phi i32 [ %75, %74 ], [ %43, %36 ]
  %78 = phi i32 [ %66, %74 ], [ %45, %36 ]
  %79 = phi i32 [ %70, %74 ], [ 8, %36 ]
  %80 = add i32 %43, -4
  %81 = add i32 %80, %78
  %82 = sub i32 %81, %77
  %83 = icmp ult i32 %82, %41
  br i1 %83, label %84, label %346

84:                                               ; preds = %76
  %85 = load i64, ptr %21, align 8
  %86 = icmp eq i64 %85, 0
  %87 = load ptr, ptr %6, align 4
  br i1 %86, label %161, label %88

88:                                               ; preds = %84
  %89 = tail call ptr @ext4_sb_bread(ptr noundef %87, i64 noundef %85, i32 noundef 8192) #13
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = ptrtoint ptr %89 to i32
  br label %382

93:                                               ; preds = %88
  %94 = tail call fastcc i32 @__ext4_xattr_check_block(ptr noundef %0, ptr noundef %89, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2725)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = icmp eq ptr %89, null
  br i1 %97, label %382, label %98

98:                                               ; preds = %96
  tail call void @__brelse(ptr noundef nonnull %89) #13
  br label %382

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr %struct.ext4_xattr_header, ptr %101, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %123, %99
  %108 = phi i32 [ %129, %123 ], [ %105, %99 ]
  %109 = phi i32 [ %124, %123 ], [ %103, %99 ]
  %110 = phi ptr [ %128, %123 ], [ %104, %99 ]
  %111 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %110, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %110, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %110, i32 0, i32 2
  %120 = load i16, ptr %119, align 2
  %121 = zext i16 %120 to i32
  %122 = tail call i32 @llvm.umin.i32(i32 %109, i32 %121)
  br label %123

123:                                              ; preds = %118, %114, %107
  %124 = phi i32 [ %109, %114 ], [ %109, %107 ], [ %122, %118 ]
  %125 = and i32 %108, 255
  %126 = add nuw nsw i32 %125, 19
  %127 = and i32 %126, 508
  %128 = getelementptr i8, ptr %110, i32 %127
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %107

131:                                              ; preds = %123, %99
  %132 = phi i32 [ %103, %99 ], [ %124, %123 ]
  %133 = phi ptr [ %104, %99 ], [ %128, %123 ]
  %134 = ptrtoint ptr %133 to i32
  %135 = ptrtoint ptr %101 to i32
  %136 = add i32 %135, -4
  %137 = add i32 %136, %132
  %138 = sub i32 %137, %134
  %139 = icmp eq ptr %89, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  tail call void @__brelse(ptr noundef nonnull %89) #13
  br label %141

141:                                              ; preds = %140, %131
  %142 = add i32 %138, %82
  %143 = icmp ult i32 %142, %41
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = select i1 %40, i1 %22, i1 false
  br i1 %145, label %146, label %382

146:                                              ; preds = %341, %144
  %147 = load i16, ptr %15, align 4
  %148 = icmp ugt i16 %13, %147
  br i1 %148, label %149, label %398

149:                                              ; preds = %146
  %150 = zext i16 %147 to i32
  %151 = sub nsw i32 %14, %150
  %152 = load ptr, ptr %6, align 4
  %153 = getelementptr inbounds %struct.super_block, ptr %152, i32 0, i32 27
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %20, i32 %150
  %156 = getelementptr inbounds %struct.ext4_sb_info, ptr %154, i32 0, i32 29
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr i8, ptr %2, i32 %157
  %159 = tail call fastcc i32 @__xattr_check_inode(ptr noundef %0, ptr noundef %155, ptr noundef %158, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2705)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %36, label %382

161:                                              ; preds = %84
  %162 = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 3
  %163 = load i32, ptr %162, align 16
  br label %164

164:                                              ; preds = %161, %141
  %165 = phi i32 [ %163, %161 ], [ %138, %141 ]
  %166 = load i16, ptr %15, align 4
  %167 = zext i16 %166 to i32
  %168 = getelementptr i8, ptr %20, i32 %167
  %169 = getelementptr %struct.ext4_xattr_ibody_header, ptr %168, i32 1
  br label %170

170:                                              ; preds = %336, %164
  %171 = phi i32 [ %79, %164 ], [ %337, %336 ]
  %172 = phi i32 [ %165, %164 ], [ %339, %336 ]
  %173 = phi i32 [ %82, %164 ], [ %338, %336 ]
  %174 = load i32, ptr %169, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %341, label %176

176:                                              ; preds = %216, %170
  %177 = phi i32 [ %222, %216 ], [ %174, %170 ]
  %178 = phi i32 [ %220, %216 ], [ -1, %170 ]
  %179 = phi ptr [ %221, %216 ], [ %169, %170 ]
  %180 = phi ptr [ %219, %216 ], [ null, %170 ]
  %181 = phi ptr [ %218, %216 ], [ null, %170 ]
  %182 = trunc i32 %177 to i8
  %183 = icmp eq i8 %182, 4
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %179, i32 0, i32 1
  %186 = load i8, ptr %185, align 1
  %187 = icmp eq i8 %186, 7
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %179, i32 0, i32 6
  %190 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %189, ptr noundef nonnull dereferenceable(4) @.str.28, i32 4) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %216, label %192

192:                                              ; preds = %188, %184, %176
  %193 = and i32 %177, 255
  %194 = add nuw nsw i32 %193, 19
  %195 = and i32 %194, 508
  %196 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %179, i32 0, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %179, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, 3
  %203 = and i32 %202, -4
  %204 = add i32 %203, %195
  br label %205

205:                                              ; preds = %199, %192
  %206 = phi i32 [ %195, %192 ], [ %204, %199 ]
  %207 = icmp ule i32 %206, %172
  %208 = icmp ult i32 %206, %178
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = add i32 %206, %173
  %212 = icmp ult i32 %211, %41
  %213 = select i1 %212, ptr %179, ptr %181
  %214 = select i1 %212, ptr %180, ptr %179
  %215 = select i1 %212, i32 %178, i32 %206
  br label %216

216:                                              ; preds = %210, %205, %188
  %217 = phi i32 [ %195, %210 ], [ %195, %205 ], [ 20, %188 ]
  %218 = phi ptr [ %213, %210 ], [ %181, %205 ], [ %181, %188 ]
  %219 = phi ptr [ %214, %210 ], [ %180, %205 ], [ %180, %188 ]
  %220 = phi i32 [ %215, %210 ], [ %178, %205 ], [ %178, %188 ]
  %221 = getelementptr i8, ptr %179, i32 %217
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %176

224:                                              ; preds = %216
  %225 = icmp eq ptr %219, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = icmp eq ptr %218, null
  br i1 %227, label %341, label %228

228:                                              ; preds = %226, %224
  %229 = phi ptr [ %219, %224 ], [ %218, %226 ]
  %230 = load i8, ptr %229, align 4
  %231 = zext i8 %230 to i32
  %232 = add nuw nsw i32 %231, 19
  %233 = and i32 %232, 508
  %234 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %229, i32 0, i32 3
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 0
  %237 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %229, i32 0, i32 4
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 3
  %240 = and i32 %239, -4
  %241 = select i1 %236, i32 %240, i32 0
  %242 = add i32 %241, %233
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  %243 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %229, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false) #13
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  store i32 %245, ptr %25, align 4
  %246 = load i32, ptr %234, align 4
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i32
  store i32 %248, ptr %26, align 4
  %249 = load i16, ptr %15, align 4
  %250 = zext i16 %249 to i32
  %251 = getelementptr i8, ptr %20, i32 %250
  %252 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %253 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %252, i32 noundef 3392, i32 noundef 32) #15
  %254 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %255 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %254, i32 noundef 3392, i32 noundef 24) #15
  %256 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %238, i32 noundef 3136) #14
  %257 = load i8, ptr %229, align 4
  %258 = zext i8 %257 to i32
  %259 = add nuw nsw i32 %258, 1
  %260 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %259, i32 noundef 3136) #14
  %261 = icmp ne ptr %253, null
  %262 = icmp ne ptr %255, null
  %263 = select i1 %261, i1 %262, i1 false
  %264 = icmp ne ptr %256, null
  %265 = select i1 %263, i1 %264, i1 false
  %266 = icmp ne ptr %260, null
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %321

268:                                              ; preds = %228
  %269 = getelementptr inbounds %struct.ext4_xattr_search, ptr %253, i32 0, i32 4
  store i32 -61, ptr %269, align 8
  %270 = getelementptr inbounds %struct.ext4_xattr_search, ptr %255, i32 0, i32 4
  store i32 -61, ptr %270, align 8
  %271 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %253, i32 0, i32 1
  store ptr null, ptr %271, align 4
  %272 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %255, i32 0, i32 1
  store ptr null, ptr %272, align 4
  %273 = load i32, ptr %234, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %268
  %276 = tail call fastcc i32 @ext4_xattr_inode_get(ptr noundef %0, ptr noundef nonnull %229, ptr noundef nonnull %256, i32 noundef %238) #13
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %284, label %321

278:                                              ; preds = %268
  %279 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %229, i32 0, i32 2
  %280 = load i16, ptr %279, align 2
  %281 = zext i16 %280 to i32
  %282 = getelementptr %struct.ext4_xattr_ibody_header, ptr %251, i32 1
  %283 = getelementptr i8, ptr %282, i32 %281
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %256, ptr align 1 %283, i32 %238, i1 false) #13
  br label %284

284:                                              ; preds = %278, %275
  %285 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %229, i32 0, i32 6
  %286 = load i8, ptr %229, align 4
  %287 = zext i8 %286 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %260, ptr align 4 %285, i32 %287, i1 false) #13
  %288 = getelementptr i8, ptr %260, i32 %287
  store i8 0, ptr %288, align 1
  store ptr %260, ptr %5, align 4
  %289 = tail call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef %271) #13
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %321

291:                                              ; preds = %284
  %292 = call i32 @ext4_xattr_ibody_find(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %253) #13
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %321

294:                                              ; preds = %291
  %295 = load i16, ptr %15, align 4
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %321, label %297

297:                                              ; preds = %294
  %298 = call fastcc i32 @ext4_xattr_set_entry(ptr noundef nonnull %5, ptr noundef nonnull %253, ptr noundef %3, ptr noundef %0, i1 noundef zeroext false) #13
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %321

300:                                              ; preds = %297
  %301 = load ptr, ptr %271, align 4
  %302 = getelementptr inbounds %struct.buffer_head, ptr %301, i32 0, i32 5
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %253, i32 0, i32 1, i32 1
  %305 = load i32, ptr %304, align 8
  %306 = getelementptr i8, ptr %303, i32 128
  %307 = getelementptr i8, ptr %306, i32 %305
  %308 = load i16, ptr %15, align 4
  %309 = zext i16 %308 to i32
  %310 = getelementptr i8, ptr %307, i32 %309
  %311 = load ptr, ptr %253, align 8
  %312 = load i32, ptr %311, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %300
  store i32 -368967680, ptr %310, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %27) #13
  br label %316

315:                                              ; preds = %300
  store i32 0, ptr %310, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %27) #13
  br label %316

316:                                              ; preds = %315, %314
  store ptr %256, ptr %23, align 4
  store i32 %238, ptr %24, align 4
  %317 = call fastcc i32 @ext4_xattr_block_find(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %255) #13
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = call fastcc i32 @ext4_xattr_block_set(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %255) #13
  br label %321

321:                                              ; preds = %319, %316, %297, %294, %291, %284, %275, %228
  %322 = phi i32 [ %276, %275 ], [ %289, %284 ], [ %292, %291 ], [ %317, %316 ], [ %320, %319 ], [ -12, %228 ], [ -28, %294 ], [ %298, %297 ]
  tail call void @kfree(ptr noundef %260) #13
  tail call void @kfree(ptr noundef %256) #13
  br i1 %261, label %323, label %328

323:                                              ; preds = %321
  %324 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %253, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %328, label %327

327:                                              ; preds = %323
  tail call void @__brelse(ptr noundef nonnull %325) #13
  br label %328

328:                                              ; preds = %327, %323, %321
  br i1 %262, label %329, label %334

329:                                              ; preds = %328
  %330 = getelementptr inbounds %struct.ext4_xattr_block_find, ptr %255, i32 0, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %329
  tail call void @__brelse(ptr noundef nonnull %331) #13
  br label %334

334:                                              ; preds = %333, %329, %328
  tail call void @kfree(ptr noundef %253) #13
  tail call void @kfree(ptr noundef %255) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  %335 = icmp eq i32 %322, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %334
  %337 = sub i32 %171, %233
  %338 = add i32 %242, %173
  %339 = sub i32 %172, %242
  %340 = icmp ult i32 %338, %41
  br i1 %340, label %170, label %346

341:                                              ; preds = %334, %226, %170
  %342 = phi i32 [ -28, %226 ], [ %322, %334 ], [ -28, %170 ]
  %343 = icmp eq i32 %342, -28
  %344 = and i1 %40, %343
  %345 = select i1 %344, i1 %22, i1 false
  br i1 %345, label %146, label %382

346:                                              ; preds = %336, %76
  %347 = phi i32 [ %337, %336 ], [ %79, %76 ]
  %348 = load i16, ptr %15, align 4
  %349 = zext i16 %348 to i32
  %350 = sub i32 %349, %39
  %351 = getelementptr i8, ptr %20, i32 %39
  %352 = icmp sgt i32 %350, 0
  br i1 %352, label %358, label %353, !prof !9

353:                                              ; preds = %346
  %354 = load i32, ptr %42, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %380, label %356

356:                                              ; preds = %353
  %357 = trunc i32 %350 to i16
  br label %359

358:                                              ; preds = %346
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2506, 0\0A.popsection", ""() #13, !srcloc !31
  unreachable

359:                                              ; preds = %373, %356
  %360 = phi i32 [ %354, %356 ], [ %378, %373 ]
  %361 = phi ptr [ %42, %356 ], [ %377, %373 ]
  %362 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %361, i32 0, i32 3
  %363 = load i32, ptr %362, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %361, i32 0, i32 4
  %367 = load i32, ptr %366, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %361, i32 0, i32 2
  %371 = load i16, ptr %370, align 2
  %372 = add i16 %371, %357
  store i16 %372, ptr %370, align 2
  br label %373

373:                                              ; preds = %369, %365, %359
  %374 = and i32 %360, 255
  %375 = add nuw nsw i32 %374, 19
  %376 = and i32 %375, 508
  %377 = getelementptr i8, ptr %361, i32 %376
  %378 = load i32, ptr %377, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %359

380:                                              ; preds = %373, %353
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %351, ptr align 1 %38, i32 %347, i1 false) #13
  %381 = trunc i32 %39 to i16
  store i16 %381, ptr %15, align 4
  br label %398

382:                                              ; preds = %341, %149, %144, %98, %96, %91, %19
  %383 = phi i32 [ %94, %98 ], [ %94, %96 ], [ %92, %91 ], [ %32, %19 ], [ -28, %144 ], [ %342, %341 ], [ %159, %149 ]
  %384 = load i32, ptr @ext4_expand_extra_isize_ea.mnt_count, align 4
  %385 = load ptr, ptr %10, align 4
  %386 = getelementptr inbounds %struct.ext4_super_block, ptr %385, i32 0, i32 13
  %387 = load i16, ptr %386, align 4
  %388 = zext i16 %387 to i32
  %389 = icmp eq i32 %384, %388
  br i1 %389, label %398, label %390

390:                                              ; preds = %382
  %391 = load ptr, ptr %6, align 4
  %392 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %393 = load i32, ptr %392, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %391, ptr noundef nonnull @__func__.ext4_expand_extra_isize_ea, i32 noundef 2772, ptr noundef nonnull @.str.1, i32 noundef %393) #13
  %394 = load ptr, ptr %10, align 4
  %395 = getelementptr inbounds %struct.ext4_super_block, ptr %394, i32 0, i32 13
  %396 = load i16, ptr %395, align 4
  %397 = zext i16 %396 to i32
  store i32 %397, ptr @ext4_expand_extra_isize_ea.mnt_count, align 4
  br label %398

398:                                              ; preds = %390, %382, %380, %146, %4
  %399 = phi i32 [ %383, %390 ], [ %383, %382 ], [ 0, %380 ], [ 0, %4 ], [ 0, %146 ]
  ret i32 %399
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_xattr_delete_inode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_iloc, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef %3, i32 noundef %3, i32 noundef %12) #13
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %3, i32 noundef %12, i32 noundef 3136) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %4
  %21 = phi i32 [ %13, %4 ], [ %18, %17 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2845, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %21) #13
  br label %149

24:                                               ; preds = %20, %17, %15
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ext4_super_block, ptr %29, i32 0, i32 29
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 1024
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %24
  %35 = getelementptr i8, ptr %1, i32 -128
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %34
  %40 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %5) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2854, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %40) #13
  br label %149

43:                                               ; preds = %39
  %44 = load ptr, ptr %7, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2859, ptr noundef %0, ptr noundef %44, ptr noundef %45, i32 noundef 1) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2862, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %46) #13
  br label %149

49:                                               ; preds = %43
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ext4_iloc, ptr %5, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = getelementptr i8, ptr %55, i32 128
  %57 = getelementptr i8, ptr %1, i32 476
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %56, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, -368967680
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = getelementptr %struct.ext4_xattr_ibody_header, ptr %60, i32 1
  call fastcc void @ext4_xattr_inode_dec_ref_all(ptr noundef %0, ptr noundef %1, ptr noundef %50, ptr noundef %64, i1 noundef zeroext false, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %65

65:                                               ; preds = %63, %49, %34, %24
  %66 = getelementptr i8, ptr %1, i32 -144
  %67 = load i64, ptr %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %149, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %7, align 4
  %71 = call ptr @ext4_sb_bread(ptr noundef %70, i64 noundef %67, i32 noundef 8192) #13
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = ptrtoint ptr %71 to i32
  %75 = icmp eq ptr %71, inttoptr (i32 -5 to ptr)
  br i1 %75, label %76, label %149

76:                                               ; preds = %73
  %77 = load i64, ptr %66, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2883, i64 noundef 0, i32 noundef 5, ptr noundef nonnull @.str.5, i64 noundef %77) #13
  br label %149

78:                                               ; preds = %69
  %79 = call fastcc i32 @__ext4_xattr_check_block(ptr noundef %1, ptr noundef %71, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2888)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %78
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 27
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ext4_super_block, ptr %86, i32 0, i32 29
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 1024
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %143, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr %struct.ext4_xattr_header, ptr %93, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %143, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  br label %99

99:                                               ; preds = %135, %97
  %100 = phi ptr [ %94, %97 ], [ %140, %135 ]
  %101 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %100, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %135, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %100, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %1, i32 noundef %102, i32 noundef %106, ptr noundef nonnull %6)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %104
  %110 = load ptr, ptr %6, align 4
  %111 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %100, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq ptr %110, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = getelementptr i8, ptr %110, i32 -128
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %116, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114, %109
  %120 = load ptr, ptr %7, align 4
  %121 = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 27
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 12
  %124 = load i32, ptr %123, align 16
  %125 = load i8, ptr %98, align 2
  %126 = zext i8 %125 to i32
  %127 = add i32 %124, %126
  %128 = shl nuw i32 1, %127
  %129 = sub i32 0, %128
  %130 = add i32 %112, -1
  %131 = add i32 %130, %128
  %132 = and i32 %131, %129
  %133 = zext i32 %132 to i64
  call void @inode_sub_bytes(ptr noundef %1, i64 noundef %133) #13
  br label %134

134:                                              ; preds = %119, %114
  call void @iput(ptr noundef %110) #13
  br label %135

135:                                              ; preds = %134, %104, %99
  %136 = load i8, ptr %100, align 4
  %137 = zext i8 %136 to i32
  %138 = add nuw nsw i32 %137, 19
  %139 = and i32 %138, 508
  %140 = getelementptr i8, ptr %100, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %99

143:                                              ; preds = %135, %91, %81
  call fastcc void @ext4_xattr_release_block(ptr noundef %0, ptr noundef %1, ptr noundef %71, ptr noundef %2, i32 noundef %3)
  store i64 0, ptr %66, align 8
  %144 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2917) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_delete_inode, i32 noundef 2920, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %144) #13
  br label %149

147:                                              ; preds = %143
  %148 = load ptr, ptr %7, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %148, i32 noundef 0, ptr noundef %0) #13
  br label %149

149:                                              ; preds = %147, %146, %78, %76, %73, %65, %48, %42, %23
  %150 = phi ptr [ null, %23 ], [ null, %42 ], [ null, %48 ], [ %71, %78 ], [ %71, %146 ], [ null, %76 ], [ null, %73 ], [ %71, %147 ], [ null, %65 ]
  %151 = phi i32 [ %21, %23 ], [ %40, %42 ], [ %46, %48 ], [ %79, %78 ], [ %144, %146 ], [ -5, %76 ], [ %74, %73 ], [ 0, %147 ], [ 0, %65 ]
  %152 = load ptr, ptr %5, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  call void @__brelse(ptr noundef nonnull %152) #13
  br label %155

155:                                              ; preds = %154, %149
  %156 = icmp eq ptr %150, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %155
  call void @__brelse(ptr noundef nonnull %150) #13
  br label %158

158:                                              ; preds = %157, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_inode_dec_ref_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i1 noundef zeroext %4, ptr nocapture noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #0 {
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !8
  %10 = add i32 %6, 2
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %190, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %15 = icmp ne ptr %2, null
  %16 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %17 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %18 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  br label %20

20:                                               ; preds = %176, %13
  %21 = phi ptr [ %182, %176 ], [ %3, %13 ]
  %22 = phi i1 [ true, %176 ], [ false, %13 ]
  %23 = and i1 %15, %22
  br label %24

24:                                               ; preds = %168, %20
  %25 = phi ptr [ %173, %168 ], [ %21, %20 ]
  %26 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %168, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %25, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %1, i32 noundef %27, i32 noundef %31, ptr noundef nonnull %9)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %168

34:                                               ; preds = %29
  %35 = load ptr, ptr %9, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3136, i32 noundef 64) #15
  store ptr %40, ptr %5, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  store i32 0, ptr %40, align 8
  br label %57

43:                                               ; preds = %34
  %44 = load i32, ptr %36, align 4
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 15
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = shl i32 %44, 2
  %49 = add i32 %48, 68
  %50 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %49, i32 noundef 3136) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 4
  %54 = add i32 %48, 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %50, ptr align 4 %53, i32 %54, i1 false) #13
  tail call void @kfree(ptr noundef %53) #13
  store ptr %50, ptr %5, align 4
  %55 = load i32, ptr %50, align 64
  br label %57

56:                                               ; preds = %47, %38
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %35, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1158, ptr noundef nonnull @.str.29, i32 noundef -12) #13
  tail call void @iput(ptr noundef %35) #13
  br label %168

57:                                               ; preds = %52, %43, %42
  %58 = phi i32 [ %55, %52 ], [ %44, %43 ], [ 0, %42 ]
  %59 = phi ptr [ %50, %52 ], [ %36, %43 ], [ %40, %42 ]
  %60 = add i32 %58, 1
  store i32 %60, ptr %59, align 4
  %61 = getelementptr %struct.ext4_xattr_inode_array, ptr %59, i32 0, i32 1, i32 %58
  store ptr %35, ptr %61, align 4
  %62 = load ptr, ptr %14, align 4
  %63 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 27
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ext4_sb_info, ptr %64, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef %10, i32 noundef %10, i32 noundef %66) #13
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %123, label %69

69:                                               ; preds = %57
  br i1 %23, label %70, label %114

70:                                               ; preds = %69
  br i1 %4, label %71, label %108

71:                                               ; preds = %70
  %72 = load ptr, ptr %14, align 4
  %73 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 27
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 30
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1024
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 119
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  %85 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %99, !prof !9

88:                                               ; preds = %81
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %89 = load ptr, ptr %73, align 4
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ext4_super_block, ptr %91, i32 0, i32 30
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1024
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 119
  %98 = load ptr, ptr %97, align 8
  br label %99

99:                                               ; preds = %96, %81
  %100 = phi ptr [ %98, %96 ], [ %83, %81 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i64, ptr %16, align 8
  %104 = load ptr, ptr %17, align 4
  %105 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %1, i64 noundef %103, ptr noundef %104) #13
  %106 = load ptr, ptr %17, align 4
  %107 = getelementptr inbounds %struct.ext4_xattr_header, ptr %106, i32 0, i32 4
  store i32 %105, ptr %107, align 4
  br label %108

108:                                              ; preds = %102, %99, %88, %71, %70
  %109 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_restart_fn, i32 noundef 1117, ptr noundef %0, ptr noundef null, ptr noundef nonnull %2) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %112, ptr noundef nonnull @__func__.ext4_xattr_restart_fn, i32 noundef 1120, ptr noundef nonnull @.str.34, i32 noundef %109) #13
  %113 = icmp slt i32 %109, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %111, %108, %69
  br i1 %18, label %131, label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %14, align 4
  %117 = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 27
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %118, i32 0, i32 11
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %10, i32 noundef %120, i32 noundef 3136) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %115, %57
  %124 = phi i32 [ %67, %57 ], [ %121, %115 ]
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123, %111
  %127 = phi i32 [ %124, %123 ], [ %109, %111 ]
  %128 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %128, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1169, ptr noundef nonnull @.str.30, i32 noundef %127) #13
  br label %168

129:                                              ; preds = %123
  %130 = icmp eq i32 %124, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %129, %115, %114
  %132 = load ptr, ptr %14, align 4
  %133 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1174, ptr noundef %0, ptr noundef %132, ptr noundef %2, i32 noundef 1) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %136, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1178, ptr noundef nonnull @.str.31, i32 noundef %133) #13
  br label %168

137:                                              ; preds = %131, %129
  %138 = load ptr, ptr %9, align 4
  %139 = tail call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %0, ptr noundef %138, i32 noundef -1) #13
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %138, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1186, ptr noundef nonnull @.str.32, i32 noundef %139) #13
  br label %168

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %25, i32 0, i32 3
  br i1 %7, label %176, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %25, i32 0, i32 4
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq ptr %138, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = getelementptr i8, ptr %138, i32 -128
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %150, 512
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %148, %144
  %154 = load ptr, ptr %14, align 4
  %155 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 27
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.ext4_sb_info, ptr %156, i32 0, i32 12
  %158 = load i32, ptr %157, align 16
  %159 = load i8, ptr %19, align 2
  %160 = zext i8 %159 to i32
  %161 = add i32 %158, %160
  %162 = shl nuw i32 1, %161
  %163 = sub i32 0, %162
  %164 = add i32 %146, -1
  %165 = add i32 %164, %162
  %166 = and i32 %165, %163
  %167 = zext i32 %166 to i64
  tail call void @inode_sub_bytes(ptr noundef %1, i64 noundef %167) #13
  br label %176

168:                                              ; preds = %141, %135, %126, %56, %29, %24
  %169 = load i8, ptr %25, align 4
  %170 = zext i8 %169 to i32
  %171 = add nuw nsw i32 %170, 19
  %172 = and i32 %171, 508
  %173 = getelementptr i8, ptr %25, i32 %172
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %185, label %24

176:                                              ; preds = %153, %148, %142
  store i32 0, ptr %143, align 4
  %177 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %25, i32 0, i32 4
  store i32 0, ptr %177, align 4
  %178 = load i8, ptr %25, align 4
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %179, 19
  %181 = and i32 %180, 508
  %182 = getelementptr i8, ptr %25, i32 %181
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %20

185:                                              ; preds = %168
  br i1 %22, label %186, label %190

186:                                              ; preds = %185, %176
  %187 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1213, ptr noundef %0, ptr noundef null, ptr noundef %2) #13
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_inode_dec_ref_all, i32 noundef 1216, ptr noundef nonnull @.str.33, i32 noundef %187) #13
  br label %190

190:                                              ; preds = %189, %186, %185, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_iget(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @__ext4_iget(ptr noundef %6, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 389) #13
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = ptrtoint ptr %7 to i32
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %11, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 394, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef %10) #13
  br label %54

12:                                               ; preds = %4
  %13 = tail call zeroext i1 @is_bad_inode(ptr noundef %7) #13
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %15, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 401, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %1) #13
  br label %52

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %7, i32 -124
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %22, ptr noundef nonnull @__func__.ext4_xattr_inode_iget, i32 noundef 409, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.37, i32 noundef %1) #13
  br label %52

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 44
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %7, i32 -128
  tail call void @_set_bit(i32 noundef 9, ptr noundef %42) #13
  %43 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  store i64 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #13, !srcloc !17
  %45 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %44, ptr %44, i64 1) #13, !srcloc !23
  br label %51

46:                                               ; preds = %35, %28, %23
  %47 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %47) #13
  %48 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 32
  store i32 %50, ptr %48, align 4
  tail call void @up_write(ptr noundef %47) #13
  br label %51

51:                                               ; preds = %46, %41
  store ptr %7, ptr %3, align 4
  br label %54

52:                                               ; preds = %21, %14
  %53 = phi i32 [ -5, %14 ], [ -22, %21 ]
  tail call void @iput(ptr noundef %7) #13
  br label %54

54:                                               ; preds = %52, %51, %9
  %55 = phi i32 [ %10, %9 ], [ %53, %52 ], [ 0, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_release_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 125
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1236, ptr noundef %0, ptr noundef %7, ptr noundef %2, i32 noundef 1) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %148

14:                                               ; preds = %5
  %15 = load volatile i32, ptr %2, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !17
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 4, ptr elementtype(i32) %2) #13, !srcloc !18
  %20 = extractvalue { i32, i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %14
  tail call void @__lock_buffer(ptr noundef %2) #13
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_xattr_header, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_xattr_header, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = icmp eq ptr %11, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  tail call void @mb_cache_entry_delete(ptr noundef nonnull %11, i32 noundef %28, i64 noundef %36) #13
  br label %37

37:                                               ; preds = %34, %32
  %38 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #13, !srcloc !17
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #13, !srcloc !28
  tail call void @unlock_buffer(ptr noundef %2) #13
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ext4_super_block, ptr %44, i32 0, i32 29
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load ptr, ptr %25, align 4
  %51 = getelementptr %struct.ext4_xattr_header, ptr %50, i32 1
  tail call fastcc void @ext4_xattr_inode_dec_ref_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %51, i1 noundef zeroext true, ptr noundef %3, i32 noundef %4, i1 noundef zeroext true)
  br label %52

52:                                               ; preds = %49, %37
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 0, i32 noundef 1, i32 noundef 3) #13
  br label %151

53:                                               ; preds = %24
  %54 = add i32 %30, -1
  store i32 %54, ptr %29, align 4
  %55 = icmp ne i32 %54, 1023
  %56 = icmp eq ptr %11, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %60 = load i64, ptr %59, align 8
  %61 = tail call ptr @mb_cache_entry_get(ptr noundef nonnull %11, i32 noundef %28, i64 noundef %60) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.mb_cache_entry, ptr %61, i32 0, i32 4
  %65 = load i8, ptr %64, align 8
  %66 = or i8 %65, 2
  store i8 %66, ptr %64, align 8
  %67 = getelementptr inbounds %struct.mb_cache_entry, ptr %61, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #13, !srcloc !17
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #13, !srcloc !21
  %69 = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  tail call void @__mb_cache_entry_free(ptr noundef nonnull %61) #13
  br label %72

72:                                               ; preds = %71, %63, %58, %53
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 27
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ext4_super_block, ptr %77, i32 0, i32 30
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 1024
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %110, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 119
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %100, !prof !9

89:                                               ; preds = %82
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %90 = load ptr, ptr %74, align 4
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ext4_super_block, ptr %92, i32 0, i32 30
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 1024
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 119
  %99 = load ptr, ptr %98, align 8
  br label %100

100:                                              ; preds = %97, %82
  %101 = phi ptr [ %99, %97 ], [ %84, %82 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %25, align 4
  %107 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %1, i64 noundef %105, ptr noundef %106) #13
  %108 = load ptr, ptr %25, align 4
  %109 = getelementptr inbounds %struct.ext4_xattr_header, ptr %108, i32 0, i32 4
  store i32 %107, ptr %109, align 4
  br label %110

110:                                              ; preds = %103, %100, %89, %72
  %111 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %111, label %112, label %114

112:                                              ; preds = %110
  tail call void @unlock_buffer(ptr noundef %2) #13
  %113 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1296, ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %131

114:                                              ; preds = %110
  %115 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1293, ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  tail call void @unlock_buffer(ptr noundef %2) #13
  %116 = load ptr, ptr %6, align 4
  %117 = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  %126 = or i1 %111, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %121, %114
  %128 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %129 = load i32, ptr %128, align 4
  %130 = or i32 %129, 1
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %127, %112
  %132 = phi i32 [ %113, %112 ], [ %115, %127 ]
  %133 = load ptr, ptr %6, align 4
  br label %134

134:                                              ; preds = %131, %121
  %135 = phi i32 [ %115, %121 ], [ %132, %131 ]
  %136 = phi ptr [ %116, %121 ], [ %133, %131 ]
  %137 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 27
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 12
  %140 = load i32, ptr %139, align 16
  %141 = shl nuw i32 1, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %144 = load i8, ptr %143, align 2
  %145 = zext i8 %144 to i64
  %146 = shl i64 %142, %145
  tail call void @inode_sub_bytes(ptr noundef %1, i64 noundef %146) #13
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #13
  %147 = icmp eq i32 %135, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %134, %5
  %149 = phi i32 [ %135, %134 ], [ %12, %5 ]
  %150 = load ptr, ptr %6, align 4
  tail call void @__ext4_std_error(ptr noundef %150, ptr noundef nonnull @__func__.ext4_xattr_release_block, i32 noundef 1304, i32 noundef %149) #13
  br label %151

151:                                              ; preds = %148, %134, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_xattr_inode_array_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %8 = getelementptr %struct.ext4_xattr_inode_array, ptr %0, i32 0, i32 1, i32 %7
  %9 = load ptr, ptr %8, align 4
  tail call void @iput(ptr noundef %9) #13
  %10 = add nuw i32 %7, 1
  %11 = load i32, ptr %0, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %3
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_xattr_create_cache() local_unnamed_addr #0 {
  %1 = tail call ptr @mb_cache_create(i32 noundef 10) #13
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_xattr_destroy_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @mb_cache_destroy(ptr noundef nonnull %0) #13
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_read(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [8 x ptr], align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = add i32 %8, -1
  %10 = add i32 %9, %2
  %11 = lshr i32 %10, %7
  %12 = and i32 %9, %2
  %13 = icmp eq i32 %12, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %14 = icmp ugt i32 %11, 8
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #13
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %60, label %18, !prof !9

18:                                               ; preds = %15
  %19 = extractvalue { i32, i1 } %16, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3136) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %18, %3
  %23 = phi ptr [ %20, %18 ], [ %4, %3 ]
  %24 = call i32 @ext4_bread_batch(ptr noundef %0, i32 noundef 0, i32 noundef %11, i1 noundef zeroext true, ptr noundef nonnull %23) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = icmp eq i32 %11, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %26
  %29 = add nsw i32 %11, -1
  br label %30

30:                                               ; preds = %35, %28
  %31 = phi i32 [ 0, %28 ], [ %43, %35 ]
  %32 = getelementptr ptr, ptr %23, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = shl i32 %31, %7
  %37 = getelementptr i8, ptr %1, i32 %36
  %38 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp slt i32 %31, %29
  %41 = select i1 %40, i1 true, i1 %13
  %42 = select i1 %41, i32 %8, i32 %12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %39, i32 %42, i1 false)
  %43 = add nuw nsw i32 %31, 1
  %44 = icmp eq i32 %43, %11
  br i1 %44, label %45, label %30

45:                                               ; preds = %35, %30
  %46 = phi i32 [ -117, %30 ], [ 0, %35 ]
  br i1 %27, label %56, label %47

47:                                               ; preds = %53, %45
  %48 = phi i32 [ %54, %53 ], [ 0, %45 ]
  %49 = getelementptr ptr, ptr %23, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call void @__brelse(ptr noundef nonnull %50) #13
  br label %53

53:                                               ; preds = %52, %47
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, %11
  br i1 %55, label %56, label %47

56:                                               ; preds = %53, %45, %26, %22
  %57 = phi i32 [ %24, %22 ], [ %46, %45 ], [ 0, %26 ], [ %46, %53 ]
  %58 = icmp eq ptr %23, %4
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void @kfree(ptr noundef %23) #13
  br label %60

60:                                               ; preds = %59, %56, %18, %15
  %61 = phi i32 [ -12, %18 ], [ %57, %59 ], [ %57, %56 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mb_cache_entry_create(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bread_batch(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_block_cache_insert(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_xattr_header, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 1024
  %10 = getelementptr inbounds %struct.ext4_xattr_header, ptr %6, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = tail call i32 @mb_cache_entry_create(ptr noundef nonnull %0, i32 noundef 3136, i32 noundef %11, i64 noundef %13, i1 noundef zeroext %9) #13
  br label %15

15:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %0) unnamed_addr #6 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !18
  %7 = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @__lock_buffer(ptr noundef %0) #13
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_block_csum(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.anon.87, align 8
  %5 = alloca %struct.anon.87, align 8
  %6 = alloca %struct.anon.87, align 8
  %7 = alloca %struct.anon.87, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 120
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #13, !annotation !8
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 119
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %17, align 64
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %21, label %20, !prof !14

20:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

21:                                               ; preds = %3
  store ptr %17, ptr %7, align 8
  %22 = getelementptr inbounds %struct.anon.87, ptr %7, i32 0, i32 1
  store i32 %15, ptr %22, align 8
  %23 = call i32 @crypto_shash_update(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 8) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !14

25:                                               ; preds = %21
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

26:                                               ; preds = %21
  %27 = load i32, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !8
  %28 = load ptr, ptr %16, align 8
  %29 = load i32, ptr %28, align 64
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %32, label %31, !prof !14

31:                                               ; preds = %26
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

32:                                               ; preds = %26
  store ptr %28, ptr %6, align 8
  %33 = getelementptr inbounds %struct.anon.87, ptr %6, i32 0, i32 1
  store i32 %27, ptr %33, align 8
  %34 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 16) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !14

36:                                               ; preds = %32
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

37:                                               ; preds = %32
  %38 = load i32, ptr %33, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !8
  %39 = load ptr, ptr %16, align 8
  %40 = load i32, ptr %39, align 64
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %43, label %42, !prof !14

42:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

43:                                               ; preds = %37
  store ptr %39, ptr %5, align 8
  %44 = getelementptr inbounds %struct.anon.87, ptr %5, i32 0, i32 1
  store i32 %38, ptr %44, align 8
  %45 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef 4) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !14

47:                                               ; preds = %43
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

48:                                               ; preds = %43
  %49 = load i32, ptr %44, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #13, !annotation !8
  %53 = load ptr, ptr %16, align 8
  %54 = load i32, ptr %53, align 64
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %57, label %56, !prof !14

56:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

57:                                               ; preds = %48
  %58 = add i32 %52, -20
  %59 = getelementptr i8, ptr %2, i32 20
  store ptr %53, ptr %4, align 8
  %60 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 1
  store i32 %49, ptr %60, align 8
  %61 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %59, i32 noundef %58) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63, !prof !14

63:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

64:                                               ; preds = %57
  %65 = load i32, ptr %60, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_find_first(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mb_cache_entry_put(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.mb_cache_entry, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !17
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !21
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @__mb_cache_entry_free(ptr noundef %0) #13
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_entry_touch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_find_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mb_cache_entry_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 126
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @down_write(ptr noundef %11) #13
  %12 = call i32 @ext4_reserve_inode_write(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %93

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %16 = load i64, ptr %15, align 8
  %17 = shl i64 %16, 32
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 33
  %19 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %18, ptr elementtype(i64) %18) #13, !srcloc !32
  %20 = and i64 %19, 4294967295
  %21 = sext i32 %2 to i64
  %22 = add i64 %17, %21
  %23 = add i64 %22, %20
  %24 = lshr i64 %23, 32
  store i64 %24, ptr %15, align 8
  %25 = and i64 %23, 4294967295
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #13, !srcloc !17
  %26 = call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %18, ptr %18, i64 %25) #13, !srcloc !23
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %14
  %29 = icmp slt i64 %23, 1
  %30 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %36, !prof !9

33:                                               ; preds = %28
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done, align 1
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %35, i64 noundef %23) #13
  br label %89

36:                                               ; preds = %28
  %37 = icmp eq i64 %23, 1
  br i1 %37, label %38, label %89

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %40 = load i32, ptr %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done.15, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %48, !prof !9

45:                                               ; preds = %38
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done.15, align 1
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %47, i32 noundef %40) #13
  br label %48

48:                                               ; preds = %45, %38
  call void @set_nlink(ptr noundef %1, i32 noundef 1) #13
  %49 = call i32 @ext4_orphan_del(ptr noundef %0, ptr noundef %1) #13
  %50 = icmp eq ptr %10, null
  br i1 %50, label %89, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = call i32 @mb_cache_entry_create(ptr noundef nonnull %10, i32 noundef 3136, i32 noundef %54, i64 noundef %57, i1 noundef zeroext true) #13
  br label %89

59:                                               ; preds = %14
  %60 = icmp slt i64 %23, 0
  %61 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done.17, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %67, !prof !9

64:                                               ; preds = %59
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done.17, align 1
  %65 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %66, i64 noundef %23) #13
  br label %89

67:                                               ; preds = %59
  %68 = icmp eq i64 %23, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %71 = load i32, ptr %70, align 8
  %72 = icmp ne i32 %71, 1
  %73 = load i1, ptr @ext4_xattr_inode_update_ref.__already_done.18, align 1
  %74 = xor i1 %73, true
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %79, !prof !9

76:                                               ; preds = %69
  store i1 true, ptr @ext4_xattr_inode_update_ref.__already_done.18, align 1
  %77 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %78 = load i32, ptr %77, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1021, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %78, i32 noundef %71) #13
  br label %79

79:                                               ; preds = %76, %69
  call void @clear_nlink(ptr noundef %1) #13
  %80 = call i32 @ext4_orphan_add(ptr noundef %0, ptr noundef %1) #13
  %81 = icmp eq ptr %10, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %87 = load i32, ptr %86, align 4
  %88 = zext i32 %87 to i64
  call void @mb_cache_entry_delete(ptr noundef nonnull %10, i32 noundef %85, i64 noundef %88) #13
  br label %89

89:                                               ; preds = %82, %79, %67, %64, %51, %48, %36, %33
  %90 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_xattr_inode_update_ref, i32 noundef 1037, ptr noundef nonnull @.str.19, i32 noundef %90) #13
  br label %93

93:                                               ; preds = %92, %89, %3
  %94 = phi i32 [ %12, %3 ], [ %90, %92 ], [ 0, %89 ]
  call void @up_write(ptr noundef %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_entry_delete(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_new_inode(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_aops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_attach_jinode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_getblk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_xattr_block_csum_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 119
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %31, !prof !9

20:                                               ; preds = %13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 119
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %28, %13
  %32 = phi ptr [ %30, %28 ], [ %15, %13 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = tail call fastcc i32 @ext4_xattr_block_csum(ptr noundef %0, i64 noundef %36, ptr noundef %38)
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.ext4_xattr_header, ptr %40, i32 0, i32 4
  store i32 %39, ptr %41, align 4
  br label %42

42:                                               ; preds = %34, %31, %20, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dquot_free_block(ptr noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i64
  %6 = shl i64 %1, %5
  tail call void @inode_sub_bytes(ptr noundef %0, i64 noundef %6) #13
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_new_meta_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_xattr_inode_inc_ref_all(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %64, label %7

7:                                                ; preds = %26, %3
  %8 = phi i32 [ %32, %26 ], [ %5, %3 ]
  %9 = phi ptr [ %31, %26 ], [ %2, %3 ]
  %10 = trunc i32 %8 to i8
  %11 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %9, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %9, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %1, i32 noundef %12, i32 noundef %16, ptr noundef nonnull %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 4
  %21 = tail call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %0, ptr noundef %20, i32 noundef 1) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %20, ptr noundef nonnull @__func__.ext4_xattr_inode_inc_ref_all, i32 noundef 1074, ptr noundef nonnull @.str.25, i32 noundef %21) #13
  tail call void @iput(ptr noundef %20) #13
  br label %34

24:                                               ; preds = %19
  tail call void @iput(ptr noundef %20) #13
  %25 = load i8, ptr %9, align 4
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i8 [ %10, %7 ], [ %25, %24 ]
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, 19
  %30 = and i32 %29, 508
  %31 = getelementptr i8, ptr %9, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %64, label %7

34:                                               ; preds = %23, %14
  %35 = phi i32 [ %21, %23 ], [ %17, %14 ]
  %36 = icmp eq ptr %9, %2
  br i1 %36, label %64, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %39

39:                                               ; preds = %57, %37
  %40 = phi ptr [ %2, %37 ], [ %62, %57 ]
  %41 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %40, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = call fastcc i32 @ext4_xattr_inode_iget(ptr noundef %1, i32 noundef %42, i32 noundef %46, ptr noundef nonnull %4)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %50, ptr noundef nonnull @__func__.ext4_xattr_inode_inc_ref_all, i32 noundef 1097, ptr noundef nonnull @.str.26, i32 noundef %42, i32 noundef %47) #13
  br label %57

51:                                               ; preds = %44
  %52 = load ptr, ptr %4, align 4
  %53 = tail call fastcc i32 @ext4_xattr_inode_update_ref(ptr noundef %0, ptr noundef %52, i32 noundef -1) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %52, ptr noundef nonnull @__func__.ext4_xattr_inode_inc_ref_all, i32 noundef 1103, ptr noundef nonnull @.str.27, i32 noundef %53) #13
  br label %56

56:                                               ; preds = %55, %51
  tail call void @iput(ptr noundef %52) #13
  br label %57

57:                                               ; preds = %56, %49, %39
  %58 = load i8, ptr %40, align 4
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %59, 19
  %61 = and i32 %60, 508
  %62 = getelementptr i8, ptr %40, i32 %61
  %63 = icmp eq ptr %62, %9
  br i1 %63, label %64, label %39

64:                                               ; preds = %57, %34, %26, %3
  %65 = phi i32 [ %35, %34 ], [ 0, %3 ], [ %35, %57 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_update_dynamic_rev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_get(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151361749}
!11 = !{i64 2151361591}
!12 = !{i64 2151361893}
!13 = !{i64 2149556136}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153855515, i64 2153855995, i64 2153855552, i64 2153855608, i64 2153855642, i64 2153855666, i64 2153855707, i64 2153855728, i64 2153855756, i64 2153855790}
!16 = !{i64 2153856593, i64 2153857073, i64 2153856630, i64 2153856686, i64 2153856720, i64 2153856744, i64 2153856785, i64 2153856806, i64 2153856834, i64 2153856868}
!17 = !{i64 909108, i64 2148399079, i64 2148399105, i64 2148399152, i64 2148399174, i64 2148399202, i64 2148399222}
!18 = !{i64 2148418956, i64 2148418988, i64 2148419017, i64 2148419051, i64 2148419082, i64 2148419105}
!19 = !{i64 2148520296}
!20 = !{i64 2148511173}
!21 = !{i64 2148413535, i64 2148413567, i64 2148413596, i64 2148413630, i64 2148413661, i64 2148413684}
!22 = !{i64 2148511376}
!23 = !{i64 898967, i64 898987, i64 899015, i64 899045, i64 899061}
!24 = !{i64 2151363531}
!25 = !{i64 2149556435}
!26 = !{i64 2149556736}
!27 = !{i64 2151371089}
!28 = !{i64 2148410494, i64 2148410520, i64 2148410549, i64 2148410583, i64 2148410614, i64 2148410637}
!29 = !{!"branch_weights", i32 1, i32 4001}
!30 = !{i64 2153984478, i64 2153984959, i64 2153984515, i64 2153984571, i64 2153984605, i64 2153984629, i64 2153984670, i64 2153984691, i64 2153984719, i64 2153984753}
!31 = !{i64 2153989768, i64 2153990249, i64 2153989805, i64 2153989861, i64 2153989895, i64 2153989919, i64 2153989960, i64 2153989981, i64 2153990009, i64 2153990043}
!32 = !{i64 898722, i64 898743}
